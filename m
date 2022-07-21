Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D9457D5F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC25B40577;
	Thu, 21 Jul 2022 21:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC25B40577
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658439020;
	bh=kCDCWoMh4y8/+hCY5DdERESO6EyZQAaMDm3ehHQ+Z24=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TiX/hCjwtGzfa/axDDfRFDrYs8ItgZRPlVkqIWP9+LNbWpqHCax4XVc3W7RjBbIXX
	 lkHJOYJ3Qlb51xQmmj3kUNHOqboCQ96iw7d3UB6F6YZnas+W57KzJstdYcLrnKE62M
	 7esMS9HuDmsj9HAOxoomcYHlnr68foNVMY3u6sgHgP5QM01R5IKunCgEoacWSA0H1B
	 6KaWdsqhLDQTFSYX01QF5wJE4I+tcGZjJdAnE93WnYQcqGTz1dy8TEAOrpGOsjhGnR
	 mTVQQp6e6HGAXxZwsFEWvVxG5gVONkfUqEtOzb7Gei0bFvNy1QI68rHUCZ03P5G66L
	 LXkkXBk2zmgZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OU90Ev5HVk61; Thu, 21 Jul 2022 21:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A3E44056F;
	Thu, 21 Jul 2022 21:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A3E44056F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27D331BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2DBB84044
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2DBB84044
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8uji-pUeKz8o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C25D83F1E
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C25D83F1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274029230"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="274029230"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="740833147"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:08 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 21 Jul 2022 14:29:57 -0700
Message-Id: <20220721213001.2483596-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721213001.2483596-1-jacob.e.keller@intel.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658439010; x=1689975010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5UkeEYUJlYEi4z9dlawX0Ec83t4TmIgYRVEgtPY22rU=;
 b=XswjgbV6zxfA0uM+lJcxwu/QoBPrDWrJV6c6SCdsJlFUcXbU2mHRyUlI
 7rYQHHgC9xiswgWlYRy8AQj88SdovAuvzHoDqLMuYhnh5rr9oWIwub5Dn
 69MvWiF7jD6473Kde9AYOscthm81zFPbvncGWTFwLvbzGNAap3aoREgDd
 bf3BDdUne5dAz8HPDHXOE/+wAYx7weLDvjPGn833iEGrxE3EGy2qeXhnr
 txlJ99J8CsY72VyH66uQs/7NJL6E6um/nWsKF6sgWp7SyXaeffN+WCmL+
 LhVokjobSqUVhcDdXbt6IZWLxfFvV1IcmQyIGtARW5W8ODrLnUfKZyz0s
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XswjgbV6
Subject: [Intel-wired-lan] [net-next PATCH 3/7] e1000e: convert .adjfreq to
 .adjfine
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The PTP implementation for the e1000e driver uses the older .adjfreq
method. This method takes an adjustment in parts per billion. The newer
.adjfine implementation uses scaled_ppm. The use of scaled_ppm allows for
finer grained adjustments and is preferred over using the older
implementation.

Make use of mul_u64_u64_div_u64 in order to handle possible overflow of the
multiplication used to calculate the desired adjustment to the hardware
increment value.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c |  4 ++--
 drivers/net/ethernet/intel/e1000e/ptp.c    | 15 ++++++++-------
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 8d06c9d8ff8b..e8a9a9610ac6 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -329,7 +329,7 @@ struct e1000_adapter {
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_clock_info;
 	struct pm_qos_request pm_qos_req;
-	s32 ptp_delta;
+	long ptp_delta;
 
 	u16 eee_advert;
 };
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 70d933f52e93..321f2a95ae3a 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3922,9 +3922,9 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
 		return;
 
-	if (info->adjfreq) {
+	if (info->adjfine) {
 		/* restore the previous ptp frequency delta */
-		ret_val = info->adjfreq(info, adapter->ptp_delta);
+		ret_val = info->adjfine(info, adapter->ptp_delta);
 	} else {
 		/* set the default base frequency if no adjustment possible */
 		ret_val = e1000e_get_base_timinca(adapter, &timinca);
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 432e04ce8c4e..0e488e4fa5c1 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -15,14 +15,16 @@
 #endif
 
 /**
- * e1000e_phc_adjfreq - adjust the frequency of the hardware clock
+ * e1000e_phc_adjfine - adjust the frequency of the hardware clock
  * @ptp: ptp clock structure
- * @delta: Desired frequency change in parts per billion
+ * @delta: Desired frequency chance in scaled parts per million
  *
  * Adjust the frequency of the PHC cycle counter by the indicated delta from
  * the base frequency.
+ *
+ * Scaled parts per million is ppm but with a 16 bit binary fractional field.
  **/
-static int e1000e_phc_adjfreq(struct ptp_clock_info *ptp, s32 delta)
+static int e1000e_phc_adjfine(struct ptp_clock_info *ptp, long delta)
 {
 	struct e1000_adapter *adapter = container_of(ptp, struct e1000_adapter,
 						     ptp_clock_info);
@@ -47,9 +49,8 @@ static int e1000e_phc_adjfreq(struct ptp_clock_info *ptp, s32 delta)
 
 	incvalue = timinca & E1000_TIMINCA_INCVALUE_MASK;
 
-	adjustment = incvalue;
-	adjustment *= delta;
-	adjustment = div_u64(adjustment, 1000000000);
+	adjustment = mul_u64_u64_div_u64(incvalue, (u64)delta,
+					 1000000ULL << 16);
 
 	incvalue = neg_adj ? (incvalue - adjustment) : (incvalue + adjustment);
 
@@ -257,7 +258,7 @@ static const struct ptp_clock_info e1000e_ptp_clock_info = {
 	.n_per_out	= 0,
 	.n_pins		= 0,
 	.pps		= 0,
-	.adjfreq	= e1000e_phc_adjfreq,
+	.adjfine	= e1000e_phc_adjfine,
 	.adjtime	= e1000e_phc_adjtime,
 	.gettimex64	= e1000e_phc_gettimex,
 	.settime64	= e1000e_phc_settime,
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
