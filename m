Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A3B7ADC71
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 17:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E777382011;
	Mon, 25 Sep 2023 15:55:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E777382011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695657357;
	bh=AQNsB2DtttNKbxQKNtkJZP/llmwU1/WaAQZXsVWyRlY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mqgBQQWVXu8DHOI5z4SfUx7f0pv89jV2PFksvcT0+ODZJfobFKCJoNuBHAGf7x5Fc
	 EZsAZElE8fM8rhN8GmBZITPB4yWl2i0lWTwToElvU6C3whFt3V+2HYkAUsigmDOuSX
	 U63L452dk/LoMijQBspQx3eZPmUeyfmMhFAYMApjAWa4730jvJDsxL4vycgr7d9EWg
	 WGb3r7y4zFX+04MUuuN0OxK7lbyjgkFLYFyuRf6rkac2F91L6yKi/0t3+/GnI1K+C9
	 jT3x1tyjtl6laUbJR9W33t3UbihHjjoNF+Dvy91K04Dcig4/T4+SJxSukmjwXsdB1w
	 1DH0UNsic2z4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xvo5KmPyY858; Mon, 25 Sep 2023 15:55:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B241080F0F;
	Mon, 25 Sep 2023 15:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B241080F0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AB0B1BF408
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 15:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68CC541A2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 15:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68CC541A2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8YCqFhAjhADn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 15:55:50 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D615F419D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 15:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D615F419D6
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id DBFC0CE0F58;
 Mon, 25 Sep 2023 15:55:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE9A6C433C8;
 Mon, 25 Sep 2023 15:55:41 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 25 Sep 2023 17:55:24 +0200
Message-Id: <20230925155538.526317-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1695657345;
 bh=rN0uGksTsjjZcDvJoDF3ojsWN3x8dp/ouj45xZwSJk0=;
 h=From:To:Cc:Subject:Date:From;
 b=ZeSxKHD8awdCQpyc+AmXEnCINpiHWRHmuxMjQHRNleoNgUimp12V6NimZJ5leP2Dl
 VigvkgTW4Z4na1THj7U3QaABkK7I5SMzHdb3EK6rm7R/6/EDXS/GIGMn2QS/hRtDl0
 JLVSRoBLUooPh6JdJpwCXonRKeNCtnO/qXVjAP5QFzVvL+cgMD2JD3X1ugwDCLciYF
 XPKTF9DSiXymyKdPKn8pskySFsg1hlX96ZJsKpsczl0LwtB9DZcPLJZgsoedO6eqYY
 lFZP4DpxMe0Zr3itYNaBICeggTRwyqEVDvs+MZFrHon2+XX4JJLZPx/hZ1t8DCnwB4
 ah8irPdxmaw7g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZeSxKHD8
Subject: [Intel-wired-lan] [PATCH] ice: require PTP clock for building
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jiri Pirko <jiri@resnulli.us>,
 Michal Michalik <michal.michalik@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

A previous fix added PTP as an optional dependency, which was correct as
of commit 87758511075ec ("igc: fix build errors for PTP"), but this
has recently changed with the PTP code getting more deeply integrated
into the ICE driver.

Trying to build ICE when PTP is disabled results in this internal link failure
as the local functions are left out of the driver:

ERROR: modpost: "ice_is_clock_mux_present_e810t" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_is_phy_rclk_present" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_cgu_get_pin_name" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_get_cgu_state" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_is_cgu_present" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_get_cgu_rclk_pin_info" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_cgu_get_pin_type" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_cgu_get_pin_freq_supp" [drivers/net/ethernet/intel/ice/ice.ko] undefined!

I tried rearranging the code to allow building it again, but this was getting
too complicated for an outsider, so just enforce the dependency to fix randconfig
builds again, until someone wants to clean this up again.

In practice, any configuration that includes this driver is also going to
want PTP clocks anyway.

Fixes: 8a3a565ff210a ("ice: add admin commands to access cgu configuration")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index e6684f3cc0ce0..c452ecf89b984 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -278,7 +278,7 @@ config ICE
 	tristate "Intel(R) Ethernet Connection E800 Series Support"
 	default n
 	depends on PCI_MSI
-	depends on PTP_1588_CLOCK_OPTIONAL
+	depends on PTP_1588_CLOCK
 	depends on GNSS || GNSS = n
 	select AUXILIARY_BUS
 	select DIMLIB
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
