Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8D56A52B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 06:46:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A141B610DB;
	Tue, 28 Feb 2023 05:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A141B610DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677563178;
	bh=MLH1dL9mu2hCMD4XiuFE2otSllhNi/IwihRBV8mO/Nk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rMThnYjyMlfHfLzKnh3kG9id/E9A0CmNQCGN+6aVwCI02xoWQ4+C1jpKW3nP3G9tC
	 fr1LENetO2iNSZOn5+Be+23BPZVI6rsbuc2auYW+ca8P4WVafCx6VWZvNkI+6TenJw
	 MCWlGUKbPnV+b7GDeyUNnHjQGw0dlDwopC9UY9j+06nKVozSJQh+RYS+CJ6sJxiI/4
	 PZPVRYSnN9iwT1DZ+jxihpEtJIJf2n75giZGUOImguT6gapwAPix8SYZGkdAib3EwB
	 b5POiNcvkuYEkn3rEw5puh2mPcdqauZ+LYsHpyCBb3eyhZ0LyxobBLgIRkJwmXoZGg
	 VRJ2c2NpUwCgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vaS6Cc--bhED; Tue, 28 Feb 2023 05:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58412610BA;
	Tue, 28 Feb 2023 05:46:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58412610BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34FC61BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C46D610C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C46D610C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vmtv6v3aCrJz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 05:46:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14085610BE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14085610BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="313729845"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="313729845"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:46:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="676183307"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="676183307"
Received: from keverson-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.84.181])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:46:06 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Feb 2023 21:45:32 -0800
Message-Id: <20230228054534.1093483-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230228054534.1093483-1-vinicius.gomes@intel.com>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677563168; x=1709099168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tgAsbfBuU8XDF1wa35uvLyD57nYbbQMKKCE2e5lUUU4=;
 b=MRRWfs+qcf/Uwp34p+54qkerWkLv2nQtlYf7ThsCoYvhQRJe6S8ZdXcS
 fDGEkbWEyS4whvLGiJW8Mp8Z2MG+A4ObBdYjurlncFxkPVU/KKCcjR2Vg
 JJyGSTVWiIrEw1114ul4hG+Efle2kVRQYHvLrSgaDgqrJti/FFQEDIXP3
 Nw6aALwXOm6OCCAlbl3jwAATl/rcUvJxP0RZwcXJLAsmovy5YOkrQ5XnA
 tnaoUdC89z5jJXXqGeGs++hJpC+AfF/d9CNk72inqRk14/ZIHE2mPXukw
 8EWAO8J+1HL+WJC6MVB4K6JF9Yb00d8MiVryjzH/vB5CX2lgXkp1u+Pmr
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MRRWfs+q
Subject: [Intel-wired-lan] [PATCH next-queue v1 1/3] igc: Fix race condition
 in PTP tx code
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

From: Andre Guedes <andre.guedes@intel.com>

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
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  5 +-
 drivers/net/ethernet/intel/igc/igc_main.c |  8 +++-
 drivers/net/ethernet/intel/igc/igc_ptp.c  | 57 +++++++++++++++--------
 3 files changed, 47 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index df3e26c0cf01..e804a566bdd3 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -227,6 +227,10 @@ struct igc_adapter {
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
@@ -401,7 +405,6 @@ enum igc_state_t {
 	__IGC_TESTING,
 	__IGC_RESETTING,
 	__IGC_DOWN,
-	__IGC_PTP_TX_IN_PROGRESS,
 };
 
 enum igc_tx_flags {
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 2928a6c73692..84c9c6e09054 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1565,14 +1565,16 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 
 	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
 		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
+		unsigned long flags;
+
+		spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
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
 
@@ -1581,6 +1583,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
+
+		spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 	}
 
 	if (skb_vlan_tag_present(skb)) {
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 4e10ced736db..9247395911c9 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -603,14 +603,15 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
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
 	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
@@ -618,20 +619,20 @@ static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
 
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
@@ -641,6 +642,8 @@ void igc_ptp_tx_hang(struct igc_adapter *adapter)
  * If we were asked to do hardware stamping and such a time stamp is
  * available, then it must have been for this skb here because we only
  * allow only one such packet into the queue.
+ *
+ * Context: Expects adapter->ptp_tx_lock to be held by caller.
  */
 static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 {
@@ -682,7 +685,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 	 * while we're notifying the stack.
 	 */
 	adapter->ptp_tx_skb = NULL;
-	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+	adapter->ptp_tx_start = 0;
 
 	/* Notify the stack and free the skb after we've unlocked */
 	skb_tstamp_tx(skb, &shhwtstamps);
@@ -701,16 +704,22 @@ static void igc_ptp_tx_work(struct work_struct *work)
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
 	if (WARN_ON_ONCE(!(tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)))
-		return;
+		goto unlock;
 
 	igc_ptp_tx_hwtstamp(adapter);
+
+unlock:
+	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 }
 
 /**
@@ -960,6 +969,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 	}
 
 	spin_lock_init(&adapter->tmreg_lock);
+	spin_lock_init(&adapter->ptp_tx_lock);
 	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
 
 	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
@@ -1017,13 +1027,20 @@ static void igc_ptm_stop(struct igc_adapter *adapter)
  */
 void igc_ptp_suspend(struct igc_adapter *adapter)
 {
+	unsigned long flags;
+
 	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
 		return;
 
 	cancel_work_sync(&adapter->ptp_tx_work);
+
+	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
+
 	dev_kfree_skb_any(adapter->ptp_tx_skb);
 	adapter->ptp_tx_skb = NULL;
-	clear_bit_unlock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state);
+	adapter->ptp_tx_start = 0;
+
+	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 
 	if (pci_device_is_present(adapter->pdev)) {
 		igc_ptp_time_save(adapter);
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
