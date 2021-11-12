Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 393B744E7FC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Nov 2021 14:54:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDE33606E8;
	Fri, 12 Nov 2021 13:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfT0CdIfnIK5; Fri, 12 Nov 2021 13:54:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6DCB60658;
	Fri, 12 Nov 2021 13:54:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B8491BF405
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 13:54:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA86560658
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 13:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kf2e8sU7Ssz8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Nov 2021 13:54:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41A3560755
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Nov 2021 13:54:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="233377770"
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="233377770"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 05:54:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="453155928"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga006.jf.intel.com with ESMTP; 12 Nov 2021 05:54:06 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Nov 2021 14:53:59 +0100
Message-Id: <20211112135359.155502-1-karol.kolacinski@intel.com>
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
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 11 ++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  6 ++++++
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 2b3b2060b504..9a1a09661c78 100644
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
