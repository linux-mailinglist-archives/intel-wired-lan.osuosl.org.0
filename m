Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 917843D5A6B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jul 2021 15:35:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C095340309;
	Mon, 26 Jul 2021 13:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4IN7Pehiy2mw; Mon, 26 Jul 2021 13:35:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89898402C5;
	Mon, 26 Jul 2021 13:35:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 867551BF293
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jul 2021 08:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7085740355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jul 2021 08:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jXN3qe_sJ_6j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jul 2021 08:45:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A891940332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jul 2021 08:45:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4789C60D07;
 Mon, 26 Jul 2021 08:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627289145;
 bh=UvIqcR/5sOkqsoKMxw4QEv6b6bSp88sNJfd1oC/roqc=;
 h=From:To:Cc:Subject:Date:From;
 b=kYpJsXleNmOtVQ0uWUya5Pw3EEQEVzXH4RoK/wNp6/cohipSy2WNDcuZ/wfiSoqqi
 57vyw/+BnBG6zwcCrcmNNI+QwM1HM0fGVXblk7bgT1Tmy8BP2uydYnHUCzA7rKrzyR
 WDGYOek4ce1akgJxnmA8vfWqrAkGknUlzf/sxv3siAMF1KiiooNPmatyToaQcWDkFe
 nTtcYmGgSmXV3exweKhW2MmCoKIDOYkv4c0stqfiuYD31Xo9F48uCdgBCxJab9eJiw
 ZtJLeolvG0lq9VRzbIhHAJC3pDASrAYz5ndk2O4lj7EJ/UOEmYJG2IFL7cfJHjJWvX
 osta3o9KWjIlQ==
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 26 Jul 2021 10:45:27 +0200
Message-Id: <20210726084540.3282344-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 26 Jul 2021 13:35:41 +0000
Subject: [Intel-wired-lan] [PATCH] ethernet/intel: fix PTP_1588_CLOCK
 dependencies
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 Kurt Kanzenbach <kurt@linutronix.de>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

The 'imply' keyword does not do what most people think it does, it only
politely asks Kconfig to turn on another symbol, but does not prevent
it from being disabled manually or built as a loadable module when the
user is built-in. In the ICE driver, the latter now causes a link failure:

aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_eth_ioctl':
ice_main.c:(.text+0x13b0): undefined reference to `ice_ptp_get_ts_config'
ice_main.c:(.text+0x13b0): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_get_ts_config'
aarch64-linux-ld: ice_main.c:(.text+0x13bc): undefined reference to `ice_ptp_set_ts_config'
ice_main.c:(.text+0x13bc): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_set_ts_config'
aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_prepare_for_reset':
ice_main.c:(.text+0x31fc): undefined reference to `ice_ptp_release'
ice_main.c:(.text+0x31fc): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `ice_ptp_release'
aarch64-linux-ld: drivers/net/ethernet/intel/ice/ice_main.o: in function `ice_rebuild':

For the other Intel network drivers, there is no link error when the
drivers are built-in and PTP is a loadable module, because
linux/ptp_clock_kernel.h contains an IS_REACHABLE() check, but this
just changes the compile-time failure to a runtime failure, which is
arguably worse.

Change all the Intel drivers to use the 'depends on PTP_1588_CLOCK ||
!PTP_1588_CLOCK' trick to prevent the broken configuration, as we
already do for several other drivers. To avoid circular dependencies,
this also requires changing the IGB driver back to using the normal
'depends on I2C' instead of 'select I2C'.

Fixes: 06c16d89d2cb ("ice: register 1588 PTP clock device object for E810 devices")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/Kconfig | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 2aa84bd97287..ab75cde0c4ec 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -58,8 +58,8 @@ config E1000
 config E1000E
 	tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
 	depends on PCI && (!SPARC32 || BROKEN)
+	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
 	select CRC32
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports the PCI-Express Intel(R) PRO/1000 gigabit
 	  ethernet family of adapters. For PCI or PCI-X e1000 adapters,
@@ -87,7 +87,7 @@ config E1000E_HWTS
 config IGB
 	tristate "Intel(R) 82575/82576 PCI-Express Gigabit Ethernet support"
 	depends on PCI
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
 	select I2C
 	select I2C_ALGOBIT
 	help
@@ -159,9 +159,9 @@ config IXGB
 config IXGBE
 	tristate "Intel(R) 10GbE PCI Express adapters support"
 	depends on PCI
+	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
 	select MDIO
 	select PHYLIB
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports Intel(R) 10GbE PCI Express family of
 	  adapters.  For more information on how to identify your adapter, go
@@ -239,7 +239,7 @@ config IXGBEVF_IPSEC
 
 config I40E
 	tristate "Intel(R) Ethernet Controller XL710 Family support"
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
 	depends on PCI
 	select AUXILIARY_BUS
 	help
@@ -295,11 +295,11 @@ config ICE
 	tristate "Intel(R) Ethernet Connection E800 Series Support"
 	default n
 	depends on PCI_MSI
+	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
 	select AUXILIARY_BUS
 	select DIMLIB
 	select NET_DEVLINK
 	select PLDMFW
-	imply PTP_1588_CLOCK
 	help
 	  This driver supports Intel(R) Ethernet Connection E800 Series of
 	  devices.  For more information on how to identify your adapter, go
@@ -317,7 +317,7 @@ config FM10K
 	tristate "Intel(R) FM10000 Ethernet Switch Host Interface Support"
 	default n
 	depends on PCI_MSI
-	imply PTP_1588_CLOCK
+	depends on PTP_1588_CLOCK || !PTP_1588_CLOCK
 	help
 	  This driver supports Intel(R) FM10000 Ethernet Switch Host
 	  Interface.  For more information on how to identify your adapter,
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
