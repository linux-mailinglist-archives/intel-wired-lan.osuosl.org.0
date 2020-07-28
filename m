Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB8D231648
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jul 2020 01:38:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5D7B82001C;
	Tue, 28 Jul 2020 23:38:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2R0rFIqbJwJ3; Tue, 28 Jul 2020 23:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAA8A2047A;
	Tue, 28 Jul 2020 23:38:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BEE91BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 84EAD883A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4z54VU0mOitB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A0574882C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
IronPort-SDR: L/41MofTpfPdpAyK8neKnjh9g+fLsyo5gO1ecfdj8vqne2p7aBURbABYrNuY65ggYeKjFgmnG4
 86ZP8XEjhyJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="150501222"
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="150501222"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 16:38:16 -0700
IronPort-SDR: 566QQbOtjsmm6awbpuZN3BfFRk3iFK1YvaUF0DP0SPdHJCYqYzvhBFWkJea5uT/ZZGuxmbIC2M
 Z/Eaa8ZAGtqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="328484700"
Received: from dpavlopo-mobl2.amr.corp.intel.com ([10.251.22.240])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2020 16:38:16 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jul 2020 16:37:54 -0700
Message-Id: <20200728233754.65747-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728233754.65747-1-andre.guedes@intel.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in PTP tx code
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

Currently, the igc driver supports timestamping only one tx packet at a
time. During the transmission flow, the skb that requires hardware
timestamping is saved in adapter->ptp_tx_skb. Once hardware has the
timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
scheduled. In igc_ptp_tx_work(), we read the timestamp register, update
adapter->ptp_tx_skb, and notify the network stack.

While the thread executing the transmission flow (the user process
running in kernel mode) and the thread executing ptp_tx_work don't
access adapter->ptp_tx_skb concurrently, there are two other places
where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
igc_ptp_suspend().

igc_ptp_tx_hang() is executed by the adapter->watchdog_task worker
thread which runs periodically so it is possible we have two threads
accessing ptp_tx_skb at the same time. Consider the following scenario:
right after __IGC_PTP_TX_IN_PROGRESS is set in igc_xmit_frame_ring(),
igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't been
written yet, this is considered a timeout and adapter->ptp_tx_skb is
cleaned up.

This patch fixes the issue described above by adding the ptp_tx_lock to
protect access to ptp_tx_skb and ptp_tx_start fields from igc_adapter.
Since igc_xmit_frame_ring() called in atomic context by the networking
stack, ptp_tx_lock is defined as a spinlock.

With the introduction of the ptp_tx_lock, the __IGC_PTP_TX_IN_PROGRESS
flag doesn't provide much of a use anymore so this patch gets rid of it.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  5 ++-
 drivers/net/ethernet/intel/igc/igc_main.c |  7 +++-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 49 ++++++++++++++---------
 3 files changed, 40 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 3070dfdb7eb4..19f88f705ec3 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -207,6 +207,10 @@ struct igc_adapter {
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
 	struct work_struct ptp_tx_work;
+	/* Access to ptp_tx_skb and ptp_tx_start is protected by the
+	 * ptp_tx_lock.
+	 */
+	spinlock_t ptp_tx_lock;
 	struct sk_buff *ptp_tx_skb;
 	struct hwtstamp_config tstamp_config;
 	unsigned long ptp_tx_start;
@@ -361,7 +365,6 @@ enum igc_state_t {
 	__IGC_TESTING,
 	__IGC_RESETTING,
 	__IGC_DOWN,
-	__IGC_PTP_TX_IN_PROGRESS,
 };
 
 enum igc_tx_flags {
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ab5b302d6655..d6b37d91cad9 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1347,13 +1347,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
 		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
 
+		spin_lock(&adapter->ptp_tx_lock);
+
 		/* FIXME: add support for retrieving timestamps from
 		 * the other timer registers before skipping the
 		 * timestamping request.
 		 */
 		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
-		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
-					   &adapter->state)) {
+		    !adapter->ptp_tx_skb) {
 			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
 			tx_flags |= IGC_TX_FLAGS_TSTAMP;
 
@@ -1362,6 +1363,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
+
+		spin_unlock(&adapter->ptp_tx_lock);
 	}
 
 	/* record initial flags and protocol */
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 22b2cf80b22f..3dda5bd05cc6 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -320,35 +320,35 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	return 0;
 }
 
+/* Requires adapter->ptp_tx_lock held by caller. */
 static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 
 	dev_kfree_skb_any(adapter->ptp_tx_skb);
 	adapter->ptp_tx_skb = NULL;
+	adapter->ptp_tx_start = 0;
 	adapter->tx_hwtstamp_timeouts++;
-	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
 	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
 	rd32(IGC_TXSTMPH);
+
 	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
 }
 
 void igc_ptp_tx_hang(struct igc_adapter *adapter)
 {
-	bool timeout = time_is_before_jiffies(adapter->ptp_tx_start +
-					      IGC_PTP_TX_TIMEOUT);
+	spin_lock(&adapter->ptp_tx_lock);
 
-	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
-		return;
+	if (!adapter->ptp_tx_skb)
+		goto unlock;
 
-	/* If we haven't received a timestamp within the timeout, it is
-	 * reasonable to assume that it will never occur, so we can unlock the
-	 * timestamp bit when this occurs.
-	 */
-	if (timeout) {
-		cancel_work_sync(&adapter->ptp_tx_work);
-		igc_ptp_tx_timeout(adapter);
-	}
+	if (time_is_after_jiffies(adapter->ptp_tx_start + IGC_PTP_TX_TIMEOUT))
+		goto unlock;
+
+	igc_ptp_tx_timeout(adapter);
+
+unlock:
+	spin_unlock(&adapter->ptp_tx_lock);
 }
 
 /**
@@ -358,6 +358,8 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
  * If we were asked to do hardware stamping and such a time stamp is
  * available, then it must have been for this skb here because we only
  * allow only one such packet into the queue.
+ *
+ * Context: Expects adapter->ptp_tx_lock to be held by caller.
  */
 static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 {
@@ -379,7 +381,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 	 * while we're notifying the stack.
 	 */
 	adapter->ptp_tx_skb = NULL;
-	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+	adapter->ptp_tx_start = 0;
 
 	/* Notify the stack and free the skb after we've unlocked */
 	skb_tstamp_tx(skb, &shhwtstamps);
@@ -400,14 +402,19 @@ static void igc_ptp_tx_work(struct work_struct *work)
 	struct igc_hw *hw = &adapter->hw;
 	u32 tsynctxctl;
 
-	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
-		return;
+	spin_lock(&adapter->ptp_tx_lock);
+
+	if (!adapter->ptp_tx_skb)
+		goto unlock;
 
 	tsynctxctl = rd32(IGC_TSYNCTXCTL);
 	if (WARN_ON_ONCE(!(tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)))
-		return;
+		goto unlock;
 
 	igc_ptp_tx_hwtstamp(adapter);
+
+unlock:
+	spin_unlock(&adapter->ptp_tx_lock);
 }
 
 /**
@@ -484,6 +491,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 	}
 
 	spin_lock_init(&adapter->tmreg_lock);
+	spin_lock_init(&adapter->ptp_tx_lock);
 	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
 
 	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
@@ -515,9 +523,14 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 		return;
 
 	cancel_work_sync(&adapter->ptp_tx_work);
+
+	spin_lock(&adapter->ptp_tx_lock);
+
 	dev_kfree_skb_any(adapter->ptp_tx_skb);
 	adapter->ptp_tx_skb = NULL;
-	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+	adapter->ptp_tx_start = 0;
+
+	spin_unlock(&adapter->ptp_tx_lock);
 }
 
 /**
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
