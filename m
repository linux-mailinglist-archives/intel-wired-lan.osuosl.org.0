Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E08CE57D5FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:30:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B048418FC;
	Thu, 21 Jul 2022 21:30:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B048418FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658439051;
	bh=AHdrDUz3apYu16XtPvqSwZOOgjEdCbh61DWk8jsfOMA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PsCRe1VPROtmWyj4Cpaf4kMuGiHbJkj0ixjLHgE7DbIhje5zOt6xYT+NYunKkoRcu
	 jC2mPpyYZQxr8Nd2h8PjPxrkPo/Cf9Hy0HGZkAXFaiIkwAI9O9cKKeMQaXs6AXSntZ
	 VfHMlypXPiVhQD8Chu/SCN7MQppzRoTGxFpbdQIBhQ1Xlq2b3y6U8XsMsQF3Sw1vEA
	 i7toxEttLe8N1gLTKTu5jDBJn819Knh6c/BPgLYMKf0YPXN5hBvZfxgTJg9YKSOGms
	 TEk1Z2C+F9l/ZNt5q0XHSLWIqNSvt4mIhfKGXgsezPBqn/sUDmHYKWHMQLLcuL0klo
	 jlmpWnba1/zlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hdSc-qnhpK8c; Thu, 21 Jul 2022 21:30:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB408418AD;
	Thu, 21 Jul 2022 21:30:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB408418AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6F7A1BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8035C60BEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8035C60BEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wNLqsn8fxDU2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BE4360C05
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BE4360C05
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274029235"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="274029235"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="740833159"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 21 Jul 2022 14:30:00 -0700
Message-Id: <20220721213001.2483596-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721213001.2483596-1-jacob.e.keller@intel.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658439010; x=1689975010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iPIrupZKCGLodHWKIENzFahTpb1c4Uv9MCiNQ2Fc9Rk=;
 b=NnLP7u6Q2zQL06LrdXj67IoWXTCUvdAIs7yukVMov9g1+kKNFR8eA9kX
 PNdBfjMG2kZNsdEPTgy+o82D4flDaOvVZjnUBV5hAAgOgayv2pKXPXh1s
 GV7OzXIC1+3vYRrOEHIngK+RFho7/1K7AJ6+Jfx6K89Y+bqurKwc8kRDU
 5AgvvAoz2dyWqqn6MSLzi/i0HaDums+365yVVO861eqVp5E+PEVs0AlbX
 8oIOf1Yk3iqaCUhCM+qbNIr8YP0UMMVacZXUHQrURfZ2Cm3jaGwAx0BdO
 jiWjwnYKeIRhtNbWzUrLXOEnL4AVpBQ4jTlSYCJLyncjQOooyTVZbJ2Ra
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NnLP7u6Q
Subject: [Intel-wired-lan] [net-next PATCH 6/7] ixgbe: convert .adjfreq to
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

Convert the ixgbe PTP frequency adjustment implementations from .adjfreq to
.adjfine. This allows using the scaled parts per million adjustment from
the PTP core and results in a more precise adjustment for small
corrections.

To avoid overflow, use mul_u64_u64_div_u64 to perform the calculation. On
X86 platforms, this will use instructions that perform the operations with
128bit intermediate values. For other architectures, the implementation
will limit the loss of precision as much as possible.

This change slightly improves the precision of frequency adjustments for
all ixgbe based devices, and gets us one driver closer to being able to
remove the older .adjfreq implementation from the kernel.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 73 +++++++++++---------
 1 file changed, 40 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 27a71fa26d3c..9f06896a049b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -113,12 +113,16 @@
  * the sign bit. This register enables software to calculate frequency
  * adjustments and apply them directly to the clock rate.
  *
- * The math for converting ppb into TIMINCA values is fairly straightforward.
- *   TIMINCA value = ( Base_Frequency * ppb ) / 1000000000ULL
+ * The math for converting scaled_ppm into TIMINCA values is fairly
+ * straightforward.
  *
- * This assumes that ppb is never high enough to create a value bigger than
- * TIMINCA's 31 bits can store. This is ensured by the stack. Calculating this
- * value is also simple.
+ *   TIMINCA value = ( Base_Frequency * scaled_ppm ) / 1000000ULL << 16
+ *
+ * To avoid overflow, we simply use mul_u64_u64_div_u64.
+ *
+ * This assumes that scaled_ppm is never high enough to create a value bigger
+ * than TIMINCA's 31 bits can store. This is ensured by the stack, and is
+ * measured in parts per billion. Calculating this value is also simple.
  *   Max ppb = ( Max Adjustment / Base Frequency ) / 1000000000ULL
  *
  * For the X550, the Max adjustment is +/- 0.5 ns, and the base frequency is
@@ -433,45 +437,45 @@ static void ixgbe_ptp_convert_to_hwtstamp(struct ixgbe_adapter *adapter,
 }
 
 /**
- * ixgbe_ptp_adjfreq_82599
+ * ixgbe_ptp_adjfine_82599
  * @ptp: the ptp clock structure
- * @ppb: parts per billion adjustment from base
+ * @scaled_ppm: scaled parts per million adjustment from base
  *
- * adjust the frequency of the ptp cycle counter by the
- * indicated ppb from the base frequency.
+ * Adjust the frequency of the ptp cycle counter by the
+ * indicated scaled_ppm from the base frequency.
+ *
+ * Scaled parts per million is ppm with a 16-bit binary fractional field.
  */
-static int ixgbe_ptp_adjfreq_82599(struct ptp_clock_info *ptp, s32 ppb)
+static int ixgbe_ptp_adjfine_82599(struct ptp_clock_info *ptp, long scaled_ppm)
 {
 	struct ixgbe_adapter *adapter =
 		container_of(ptp, struct ixgbe_adapter, ptp_caps);
 	struct ixgbe_hw *hw = &adapter->hw;
-	u64 freq, incval;
-	u32 diff;
+	u64 incval, diff;
 	int neg_adj = 0;
 
-	if (ppb < 0) {
+	if (scaled_ppm < 0) {
 		neg_adj = 1;
-		ppb = -ppb;
+		scaled_ppm = -scaled_ppm;
 	}
 
 	smp_mb();
 	incval = READ_ONCE(adapter->base_incval);
 
-	freq = incval;
-	freq *= ppb;
-	diff = div_u64(freq, 1000000000ULL);
+	diff = mul_u64_u64_div_u64(incval, scaled_ppm,
+				   1000000ULL << 16);
 
 	incval = neg_adj ? (incval - diff) : (incval + diff);
 
 	switch (hw->mac.type) {
 	case ixgbe_mac_X540:
 		if (incval > 0xFFFFFFFFULL)
-			e_dev_warn("PTP ppb adjusted SYSTIME rate overflowed!\n");
+			e_dev_warn("PTP scaled_ppm adjusted SYSTIME rate overflowed!\n");
 		IXGBE_WRITE_REG(hw, IXGBE_TIMINCA, (u32)incval);
 		break;
 	case ixgbe_mac_82599EB:
 		if (incval > 0x00FFFFFFULL)
-			e_dev_warn("PTP ppb adjusted SYSTIME rate overflowed!\n");
+			e_dev_warn("PTP scaled_ppm adjusted SYSTIME rate overflowed!\n");
 		IXGBE_WRITE_REG(hw, IXGBE_TIMINCA,
 				BIT(IXGBE_INCPER_SHIFT_82599) |
 				((u32)incval & 0x00FFFFFFUL));
@@ -484,32 +488,35 @@ static int ixgbe_ptp_adjfreq_82599(struct ptp_clock_info *ptp, s32 ppb)
 }
 
 /**
- * ixgbe_ptp_adjfreq_X550
+ * ixgbe_ptp_adjfine_X550
  * @ptp: the ptp clock structure
- * @ppb: parts per billion adjustment from base
+ * @scaled_ppm: scaled parts per million adjustment from base
  *
- * adjust the frequency of the SYSTIME registers by the indicated ppb from base
- * frequency
+ * Adjust the frequency of the SYSTIME registers by the indicated scaled_ppm
+ * from base frequency.
+ *
+ * Scaled parts per million is ppm with a 16-bit binary fractional field.
  */
-static int ixgbe_ptp_adjfreq_X550(struct ptp_clock_info *ptp, s32 ppb)
+static int ixgbe_ptp_adjfine_X550(struct ptp_clock_info *ptp, long scaled_ppm)
 {
 	struct ixgbe_adapter *adapter =
 			container_of(ptp, struct ixgbe_adapter, ptp_caps);
 	struct ixgbe_hw *hw = &adapter->hw;
 	int neg_adj = 0;
-	u64 rate = IXGBE_X550_BASE_PERIOD;
+	u64 rate;
 	u32 inca;
 
-	if (ppb < 0) {
+	if (scaled_ppm < 0) {
 		neg_adj = 1;
-		ppb = -ppb;
+		scaled_ppm = -scaled_ppm;
 	}
-	rate *= ppb;
-	rate = div_u64(rate, 1000000000ULL);
+
+	rate = mul_u64_u64_div_u64(IXGBE_X550_BASE_PERIOD, scaled_ppm,
+				   1000000ULL << 16);
 
 	/* warn if rate is too large */
 	if (rate >= INCVALUE_MASK)
-		e_dev_warn("PTP ppb adjusted SYSTIME rate overflowed!\n");
+		e_dev_warn("PTP scaled_ppm adjusted SYSTIME rate overflowed!\n");
 
 	inca = rate & INCVALUE_MASK;
 	if (neg_adj)
@@ -1355,7 +1362,7 @@ static long ixgbe_ptp_create_clock(struct ixgbe_adapter *adapter)
 		adapter->ptp_caps.n_ext_ts = 0;
 		adapter->ptp_caps.n_per_out = 0;
 		adapter->ptp_caps.pps = 1;
-		adapter->ptp_caps.adjfreq = ixgbe_ptp_adjfreq_82599;
+		adapter->ptp_caps.adjfine = ixgbe_ptp_adjfine_82599;
 		adapter->ptp_caps.adjtime = ixgbe_ptp_adjtime;
 		adapter->ptp_caps.gettimex64 = ixgbe_ptp_gettimex;
 		adapter->ptp_caps.settime64 = ixgbe_ptp_settime;
@@ -1372,7 +1379,7 @@ static long ixgbe_ptp_create_clock(struct ixgbe_adapter *adapter)
 		adapter->ptp_caps.n_ext_ts = 0;
 		adapter->ptp_caps.n_per_out = 0;
 		adapter->ptp_caps.pps = 0;
-		adapter->ptp_caps.adjfreq = ixgbe_ptp_adjfreq_82599;
+		adapter->ptp_caps.adjfine = ixgbe_ptp_adjfine_82599;
 		adapter->ptp_caps.adjtime = ixgbe_ptp_adjtime;
 		adapter->ptp_caps.gettimex64 = ixgbe_ptp_gettimex;
 		adapter->ptp_caps.settime64 = ixgbe_ptp_settime;
@@ -1388,7 +1395,7 @@ static long ixgbe_ptp_create_clock(struct ixgbe_adapter *adapter)
 		adapter->ptp_caps.n_ext_ts = 0;
 		adapter->ptp_caps.n_per_out = 0;
 		adapter->ptp_caps.pps = 1;
-		adapter->ptp_caps.adjfreq = ixgbe_ptp_adjfreq_X550;
+		adapter->ptp_caps.adjfine = ixgbe_ptp_adjfine_X550;
 		adapter->ptp_caps.adjtime = ixgbe_ptp_adjtime;
 		adapter->ptp_caps.gettimex64 = ixgbe_ptp_gettimex;
 		adapter->ptp_caps.settime64 = ixgbe_ptp_settime;
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
