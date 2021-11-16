Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC8C4531C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 13:07:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02B8A4047E;
	Tue, 16 Nov 2021 12:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7JcnZiThzXkU; Tue, 16 Nov 2021 12:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 198554047C;
	Tue, 16 Nov 2021 12:07:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 726D81BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 12:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D8B04047C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 12:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z2HCKxll6TVB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 12:07:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E15E4047A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 12:07:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="233514977"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="233514977"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 04:07:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="454227434"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga003.jf.intel.com with ESMTP; 16 Nov 2021 04:07:22 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 Nov 2021 13:07:14 +0100
Message-Id: <20211116120714.310539-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Subject: [Intel-wired-lan] [PATCH intel-next] ice: Don't put stale
 timestamps in the skb
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver has to check if it does not accidentally put the timestamp in
the SKB before previous timestamp gets overwritten.
Timestamp values in the PHY are read only and do not get cleared except
at hardware reset or when a new timestamp value is captured.
The cached_tstamp field is used to detect the case where a new timestamp
has not yet been captured, ensuring that we avoid sending stale
timestamp data to the stack.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 11 ++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  6 ++++++
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 2149595cc632..df846b66a9a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2069,19 +2069,16 @@ static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
 		if (err)
 			continue;
 
-		/* Check if the timestamp is valid */
-		if (!(raw_tstamp & ICE_PTP_TS_VALID))
+		/* Check if the timestamp is invalid or stale */
+		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
+		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
 			continue;
 
-		/* clear the timestamp register, so that it won't show valid
-		 * again when re-used.
-		 */
-		ice_clear_phy_tstamp(hw, tx->quad, phy_idx);
-
 		/* The timestamp is valid, so we'll go ahead and clear this
 		 * index and then send the timestamp up to the stack.
 		 */
 		spin_lock(&tx->lock);
+		tx->tstamps[idx].cached_tstamp = raw_tstamp;
 		clear_bit(idx, tx->in_use);
 		skb = tx->tstamps[idx].skb;
 		tx->tstamps[idx].skb = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 92b202ef3c15..eef8ec894871 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -55,15 +55,21 @@ struct ice_perout_channel {
  * struct ice_tx_tstamp - Tracking for a single Tx timestamp
  * @skb: pointer to the SKB for this timestamp request
  * @start: jiffies when the timestamp was first requested
+ * @cached_tstamp: last read timestamp
  *
  * This structure tracks a single timestamp request. The SKB pointer is
  * provided when initiating a request. The start time is used to ensure that
  * we discard old requests that were not fulfilled within a 2 second time
  * window.
+ * Timestamp values in the PHY are read only and do not get cleared except at
+ * hardware reset or when a new timestamp value is captured. The cached_tstamp
+ * field is used to detect the case where a new timestamp has not yet been
+ * captured, ensuring that we avoid sending stale timestamp data to the stack.
  */
 struct ice_tx_tstamp {
 	struct sk_buff *skb;
 	unsigned long start;
+	u64 cached_tstamp;
 };
 
 /**
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
