Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C035874C7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 02:24:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59AB08140A;
	Tue,  2 Aug 2022 00:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59AB08140A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659399877;
	bh=ujjnXHUshoIYc1IaghmaiaAFD4tviz/qO20fv6v+3DY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XYZtOwbYjs02L8z8sBloCocGt2SilTyzqBVvBkGusgEPjuHezRPjR8xivc5snjx8j
	 /ih3ALextFK8DM5ci1+4z6HtkHETd5kFKHvINHr/TmPKpE4XLBK6dKojiciyv43pn+
	 rhTqsWkuWrvgBzdGX3lFTs/pnEXWPlwxHjlVFRlexXhVurI19Dol2JTwiNnlDXXnqw
	 s9wmZQbeY3KiQl8SAvERm/Tkb3test7PocEQwWTOhdTF1f1CLKyKbT5A8vlUnb0S8l
	 mmu1l9kD4XjfNzXxDQfFoGGh0vhOlF82zm8u1bteB7puQXBT8Z3+ZXKUuo61rf5BFp
	 l6iL35Xiorr5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9bqn8WFFarUX; Tue,  2 Aug 2022 00:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48303813E7;
	Tue,  2 Aug 2022 00:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48303813E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 218121BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 00:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8AED81400
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 00:24:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8AED81400
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FI_l8C3Iw41G for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 00:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05E93813E7
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05E93813E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 00:24:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="375583000"
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="375583000"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 17:24:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="599118642"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 17:24:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  1 Aug 2022 17:24:19 -0700
Message-Id: <20220802002419.401813-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659399870; x=1690935870;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nST/xWUoXJMegf0/zWjc2YCUDyjecTc3j49QQGy+oZQ=;
 b=I4eY6yYu2Ra6hxBC41XA3vDgQ7So6jwNGfdBFh5ir3JsOZK5owAChdC8
 3BVgkxhz5g8H6/mKlMVSRVDGGxk7WTjSTLsHCRKAdOrsG9slepjz5nR45
 cj8SdupTqIUWqaagQAcC8JYRRafON0uxqqqOgtJlkZej2k4wWu0kadDUF
 H+NyGHmB3nA9hU694wxqKeKzFtLPNsCfJJzVA/WUumPAeS3R7egcyLFjS
 Tkl9ncObnEo/cRDA+ReSPSeQVAAhmk9ej9Eq5lvYYXPioKk0OL+kjxn6B
 phUwE4K3bOw+SqLNPhWmFlaGq64JkPGSBNlh6s8OmTvosEvm/MFNaVXQI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I4eY6yYu
Subject: [Intel-wired-lan] [PATCH net] ixgbe: stop resetting SYSTIME in
 ixgbe_ptp_start_cyclecounter
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
Cc: Steve Payne <spayne@aurora.tech>, Ilya Evenbach <ievenbach@aurora.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ixgbe_ptp_start_cyclecounter is intended to be called whenever the
cyclecounter parameters need to be changed.

Since commit a9763f3cb54c ("ixgbe: Update PTP to support X550EM_x
devices"), this function has cleared the SYSTIME registers and reset the
TSAUXC DISABLE_SYSTIME bit.

While these need to be cleared during ixgbe_ptp_reset, it is wrong to clear
them during ixtbe_ptp_start_cyclecounter. This function may be called
during both reset and link status change. When link changes, the SYSTIME
counter is still operating normally, but the cyclecounter should be updated
to account for the possibly changed parameters.

Clearing SYSTIME when link changes causes the timecounter to jump because
the cycle counter now reads zero.

Extract the SYSTIME initialization out to a new function and call this
during ixgbe_ptp_reset. This prevents the timecounter adjustment and avoids
an unnecessary reset of the current time.

This also restores the original SYSTIME clearing that occurred during
ixgbe_ptp_reset before the commit above.

Reported-by: Steve Payne <spayne@aurora.tech>
Reported-by: Ilya Evenbach <ievenbach@aurora.tech>
Fixes: a9763f3cb54c ("ixgbe: Update PTP to support X550EM_x devices")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 59 +++++++++++++++-----
 1 file changed, 46 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 336426a67ac1..38cda659f65f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -1208,7 +1208,6 @@ void ixgbe_ptp_start_cyclecounter(struct ixgbe_adapter *adapter)
 	struct cyclecounter cc;
 	unsigned long flags;
 	u32 incval = 0;
-	u32 tsauxc = 0;
 	u32 fuse0 = 0;
 
 	/* For some of the boards below this mask is technically incorrect.
@@ -1243,18 +1242,6 @@ void ixgbe_ptp_start_cyclecounter(struct ixgbe_adapter *adapter)
 	case ixgbe_mac_x550em_a:
 	case ixgbe_mac_X550:
 		cc.read = ixgbe_ptp_read_X550;
-
-		/* enable SYSTIME counter */
-		IXGBE_WRITE_REG(hw, IXGBE_SYSTIMR, 0);
-		IXGBE_WRITE_REG(hw, IXGBE_SYSTIML, 0);
-		IXGBE_WRITE_REG(hw, IXGBE_SYSTIMH, 0);
-		tsauxc = IXGBE_READ_REG(hw, IXGBE_TSAUXC);
-		IXGBE_WRITE_REG(hw, IXGBE_TSAUXC,
-				tsauxc & ~IXGBE_TSAUXC_DISABLE_SYSTIME);
-		IXGBE_WRITE_REG(hw, IXGBE_TSIM, IXGBE_TSIM_TXTS);
-		IXGBE_WRITE_REG(hw, IXGBE_EIMS, IXGBE_EIMS_TIMESYNC);
-
-		IXGBE_WRITE_FLUSH(hw);
 		break;
 	case ixgbe_mac_X540:
 		cc.read = ixgbe_ptp_read_82599;
@@ -1286,6 +1273,50 @@ void ixgbe_ptp_start_cyclecounter(struct ixgbe_adapter *adapter)
 	spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
 }
 
+/**
+ * ixgbe_ptp_init_systime - Initialize SYSTIME registers
+ * @adapter: the ixgbe private board structure
+ *
+ * Initialize and start the SYSTIME registers.
+ */
+static void ixgbe_ptp_init_systime(struct ixgbe_adapter *adapter)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 tsauxc;
+
+	switch (hw->mac.type) {
+	case ixgbe_mac_X550EM_x:
+	case ixgbe_mac_x550em_a:
+	case ixgbe_mac_X550:
+		tsauxc = IXGBE_READ_REG(hw, IXGBE_TSAUXC);
+
+		/* Reset SYSTIME registers to 0 */
+		IXGBE_WRITE_REG(hw, IXGBE_SYSTIMR, 0);
+		IXGBE_WRITE_REG(hw, IXGBE_SYSTIML, 0);
+		IXGBE_WRITE_REG(hw, IXGBE_SYSTIMH, 0);
+
+		/* Reset interrupt settings */
+		IXGBE_WRITE_REG(hw, IXGBE_TSIM, IXGBE_TSIM_TXTS);
+		IXGBE_WRITE_REG(hw, IXGBE_EIMS, IXGBE_EIMS_TIMESYNC);
+
+		/* Activate the SYSTIME counter */
+		IXGBE_WRITE_REG(hw, IXGBE_TSAUXC,
+				tsauxc & ~IXGBE_TSAUXC_DISABLE_SYSTIME);
+		break;
+	case ixgbe_mac_X540:
+	case ixgbe_mac_82599EB:
+		/* Reset SYSTIME registers to 0 */
+		IXGBE_WRITE_REG(hw, IXGBE_SYSTIML, 0);
+		IXGBE_WRITE_REG(hw, IXGBE_SYSTIMH, 0);
+		break;
+	default:
+		/* Other devices aren't supported */
+		return;
+	};
+
+	IXGBE_WRITE_FLUSH(hw);
+}
+
 /**
  * ixgbe_ptp_reset
  * @adapter: the ixgbe private board structure
@@ -1312,6 +1343,8 @@ void ixgbe_ptp_reset(struct ixgbe_adapter *adapter)
 
 	ixgbe_ptp_start_cyclecounter(adapter);
 
+	ixgbe_ptp_init_systime(adapter);
+
 	spin_lock_irqsave(&adapter->tmreg_lock, flags);
 	timecounter_init(&adapter->hw_tc, &adapter->hw_cc,
 			 ktime_to_ns(ktime_get_real()));

base-commit: a41b17ff9dacd22f5f118ee53d82da0f3e52d5e3
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
