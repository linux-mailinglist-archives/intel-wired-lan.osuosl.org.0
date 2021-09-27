Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 194034194EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 15:17:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90E3F405C9;
	Mon, 27 Sep 2021 13:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V0mfb_wxYuD0; Mon, 27 Sep 2021 13:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2FEE40568;
	Mon, 27 Sep 2021 13:17:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D58421BF286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 13:17:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D098C40568
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 13:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id evqWnfNkS-Gx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 13:17:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B52340563
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 13:17:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 350CE60FED;
 Mon, 27 Sep 2021 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632748655;
 bh=42QBDntERyc+aM/df+V25KL01A6wcdArOVewCg/bvEI=;
 h=From:To:Cc:Subject:Date:From;
 b=ZMT4sHluyoDMXrByXz8jEqUKG17f655yYSujAhmrAfe/ohZ+EHa4vZst23ImLwYo8
 GGqvR8GVDb2G28tEx1/b+h10WqaEsONV4nj4p9ZcNwD492uFE6vP6tgDajlr1XngWc
 O1eICLm0hWAtaDDqiW9VXwLVeLOItBaWUZ5/+9BHI/o91i+MA3gv+RuD8gLPVh7tqi
 JJ7lMbJduHH3blDAvs00GtXpFIIps8skGinxVpSbNj/eGJIjI0WL1IAOiqRpief4jG
 QQHuQd4sM3WhRQyk+prGv2e2belJYTJ60rNHoGgY+rcWk+YHQjtbsKzdDmqwENNRVb
 AoXKwGlZ54DVg==
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Mon, 27 Sep 2021 15:17:19 +0200
Message-Id: <20210927131730.1587671-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] igc: fix PTP dependency
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
Cc: Arnd Bergmann <arnd@arndb.de>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Shannon Nelson <snelson@pensando.io>, Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

The igc driver was accidentally left out of the Kconfig rework for PTP,
it needs the same dependency as the others:

arm-linux-gnueabi-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_tsync_interrupt':
igc_main.c:(.text+0x1b288): undefined reference to `ptp_clock_event'
arm-linux-gnueabi-ld: igc_main.c:(.text+0x1b308): undefined reference to `ptp_clock_event'
arm-linux-gnueabi-ld: igc_main.c:(.text+0x1b8cc): undefined reference to `ptp_clock_event'
arm-linux-gnueabi-ld: drivers/net/ethernet/intel/igc/igc_ethtool.o: in function `igc_ethtool_get_ts_info':

Fixes: e5f31552674e ("ethernet: fix PTP_1588_CLOCK dependencies")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index b0b6f90deb7d..ed8ea63bb172 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -335,6 +335,7 @@ config IGC
 	tristate "Intel(R) Ethernet Controller I225-LM/I225-V support"
 	default n
 	depends on PCI
+	depends on PTP_1588_CLOCK_OPTIONAL
 	help
 	  This driver supports Intel(R) Ethernet Controller I225-LM/I225-V
 	  family of adapters.
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
