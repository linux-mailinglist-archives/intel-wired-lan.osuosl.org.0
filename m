Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C46FE6F79DC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 01:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5870E402A5;
	Thu,  4 May 2023 23:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5870E402A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683244395;
	bh=q1tvP+UnaDiCVxWvtcFiKrgC4++xsQHis4itxHCe/JQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H4NSZSVc8CCEzyr8jz0HDnOcdcv9u1vaHRulOkHU8FEfnxj9/WvysufB+vnD6yfKH
	 LUZ2vDdod++DR8mpxxIOkbqQQwQjsqBtbBeKbVujk1Cbl4gbwMKom9KK1fz9DfrP51
	 GLPkHl6Irz245TYI/1yW8ULMw215tMNOsJl6mzJ6aQweDcFw6dlJmEcPr4EdHjP1JY
	 YTHmTOugpn1zKDq9OJWxECMzoI5GSQpzZ2f8UX02HCJJAqbaSHnMpnB0zG7DBbR2E4
	 hK25Tde9rCxxvi5dQgnkdrkn2e5Zrav/aI6wqs5EeHZ0H+mtAp/mdGt1aYheZA2O3u
	 7wiNTI69HlkqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 628ooSt9JwyY; Thu,  4 May 2023 23:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9836E40341;
	Thu,  4 May 2023 23:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9836E40341
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 768931BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56141400EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56141400EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YsXln-xKbDdL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 23:52:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24EA141C78
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24EA141C78
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="412301470"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="412301470"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:52:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841423494"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="841423494"
Received: from haitianc-mobl2.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.47.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:52:42 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 May 2023 16:52:30 -0700
Message-Id: <20230504235233.1850428-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230504235233.1850428-1-vinicius.gomes@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683244365; x=1714780365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dQMUH1ypFe7c0mP/BlUzOFZJtII+PMCess3Sb34SmgA=;
 b=a/Tl1K3eJ8mVE2VpSP3xh2PfwfTPuwkCm41HmvCyf4cWMqRjyzNr/xu5
 I4rQT0qVm/83dw9H8WqfxzARq2MrhiUale1LIBDKPn7i0gB2qT0F9mHVq
 7G7Ltt9W2lTytPU0ngWThZwRbeVohb1ENEpy913n0W8fZ7+8KgxqPjpCm
 1YHsF6OXJKFnhumjhxq7a/KCKgCnlXj9cDaJWLik9n25RdPF3EI5NvWTh
 i1rwVWAOSr/FICzMwN5vJ6RTj+FqbQjHRgjcbTSZ+3LbxF75QGGzMSibW
 UVAaskKSdyCCGvZcjfp8Z7zrIaVt6OGqhzEwDliibOTzx445FgpB9BKXW
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a/Tl1K3e
Subject: [Intel-wired-lan] [PATCH iwl v1 2/5] igc: Fix race condition in PTP
 tx code
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
Cc: Andre Guedes <andre.guedes@intel.com>, vladimir.oltean@nxp.com,
 kurt@linutronix.de, anthony.l.nguyen@intel.com
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

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  5 +-
 drivers/net/ethernet/intel/igc/igc_main.c |  8 ++-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 61 ++++++++++++-----------
 3 files changed, 43 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 34aebf00a512..7da0657ea48f 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -229,6 +229,10 @@ struct igc_adapter {
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
 	struct work_struct ptp_tx_work;
+	/* Access to ptp_tx_skb and ptp_tx_start are protected by the
+	 * ptp_tx_lock.
+	 */
+	spinlock_t ptp_tx_lock;
 	struct sk_buff *ptp_tx_skb;
 	struct hwtstamp_config tstamp_config;
 	unsigned long ptp_tx_start;
@@ -401,7 +405,6 @@ enum igc_state_t {
 	__IGC_TESTING,
 	__IGC_RESETTING,
 	__IGC_DOWN,
-	__IGC_PTP_TX_IN_PROGRESS,
 };
 
 enum igc_tx_flags {
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0d029041a102..b383352651a5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1584,8 +1584,10 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		 * the other timer registers before skipping the
 		 * timestamping request.
 		 */
-		if (!test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
-					   &adapter->state)) {
+		unsigned long flags;
+
+		spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
+		if (!adapter->ptp_tx_skb) {
 			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
 			tx_flags |= IGC_TX_FLAGS_TSTAMP;
 
@@ -1594,6 +1596,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
+
+		spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 	}
 
 	if (skb_vlan_tag_present(skb)) {
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 4e10ced736db..56128e55f5c0 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -603,6 +603,7 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	return 0;
 }
 
+/* Requires adapter->ptp_tx_lock held by caller. */
 static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
@@ -610,7 +611,6 @@ static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
 	dev_kfree_skb_any(adapter->ptp_tx_skb);
 	adapter->ptp_tx_skb = NULL;
 	adapter->tx_hwtstamp_timeouts++;
-	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
 	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
 	rd32(IGC_TXSTMPH);
 	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
@@ -618,20 +618,20 @@ static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
 
 void igc_ptp_tx_hang(struct igc_adapter *adapter)
 {
-	bool timeout = time_is_before_jiffies(adapter->ptp_tx_start +
-					      IGC_PTP_TX_TIMEOUT);
-
-	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
-		return;
-
-	/* If we haven't received a timestamp within the timeout, it is
-	 * reasonable to assume that it will never occur, so we can unlock the
-	 * timestamp bit when this occurs.
-	 */
-	if (timeout) {
-		cancel_work_sync(&adapter->ptp_tx_work);
-		igc_ptp_tx_timeout(adapter);
-	}
+	unsigned long flags;
+
+	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
+
+	if (!adapter->ptp_tx_skb)
+		goto unlock;
+
+	if (time_is_after_jiffies(adapter->ptp_tx_start + IGC_PTP_TX_TIMEOUT))
+		goto unlock;
+
+	igc_ptp_tx_timeout(adapter);
+
+unlock:
+	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 }
 
 /**
@@ -641,6 +641,8 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
  * If we were asked to do hardware stamping and such a time stamp is
  * available, then it must have been for this skb here because we only
  * allow only one such packet into the queue.
+ *
+ * Context: Expects adapter->ptp_tx_lock to be held by caller.
  */
 static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 {
@@ -676,13 +678,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 	shhwtstamps.hwtstamp =
 		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
 
-	/* Clear the lock early before calling skb_tstamp_tx so that
-	 * applications are not woken up before the lock bit is clear. We use
-	 * a copy of the skb pointer to ensure other threads can't change it
-	 * while we're notifying the stack.
-	 */
 	adapter->ptp_tx_skb = NULL;
-	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
 
 	/* Notify the stack and free the skb after we've unlocked */
 	skb_tstamp_tx(skb, &shhwtstamps);
@@ -693,24 +689,33 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
  * igc_ptp_tx_work
  * @work: pointer to work struct
  *
- * This work function polls the TSYNCTXCTL valid bit to determine when a
- * timestamp has been taken for the current stored skb.
+ * This work function checks the TSYNCTXCTL valid bit to determine when
+ * a timestamp has been taken for the current stored skb.
  */
 static void igc_ptp_tx_work(struct work_struct *work)
 {
 	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
 						   ptp_tx_work);
 	struct igc_hw *hw = &adapter->hw;
+	unsigned long flags;
 	u32 tsynctxctl;
 
-	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
-		return;
+	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
+
+	if (!adapter->ptp_tx_skb)
+		goto unlock;
 
 	tsynctxctl = rd32(IGC_TSYNCTXCTL);
-	if (WARN_ON_ONCE(!(tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)))
-		return;
+	tsynctxctl &= IGC_TSYNCTXCTL_TXTT_0;
+	if (!tsynctxctl) {
+		WARN_ONCE(1, "Received a TSTAMP interrupt but no TSTAMP is ready.\n");
+		goto unlock;
+	}
 
 	igc_ptp_tx_hwtstamp(adapter);
+
+unlock:
+	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 }
 
 /**
@@ -959,6 +964,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 		return;
 	}
 
+	spin_lock_init(&adapter->ptp_tx_lock);
 	spin_lock_init(&adapter->tmreg_lock);
 	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
 
@@ -1023,7 +1029,6 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 	cancel_work_sync(&adapter->ptp_tx_work);
 	dev_kfree_skb_any(adapter->ptp_tx_skb);
 	adapter->ptp_tx_skb = NULL;
-	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
 
 	if (pci_device_is_present(adapter->pdev)) {
 		igc_ptp_time_save(adapter);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
