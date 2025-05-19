Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FF2ABC1F6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 17:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5951B82129;
	Mon, 19 May 2025 15:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JIktgHjS780l; Mon, 19 May 2025 15:15:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 568FD8317B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747667741;
	bh=j1jTR0Ks7u8qja64Hd+ef4o8A9PP5cSPPCo6DdYHYrE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KluFcH8xbzSygHv5ktc4Q7e2jO1hXI9Eat0Pir227krWCU34E0ppF6d0fRBiktl6L
	 /wYKFNa2RN2aPJfqMuwwjWDrsINf/leLv5z1Tbers+zBvIhmxJtHUVGTZNHsxfoV87
	 SlIDMvnaQSR4BfWrBjUBedPywVcpYDmLkq1pkDl4RYSCWnzFc+Z/rH3Vdrm0YAx5up
	 rRjuN0wPieS8tGc/53ki8HTPTHesntub1hNnOje5KShY5HuaKnWAUlq4lkIdRcivl/
	 gI5m7iUK6S2j0RLJSxfQk5RPbLHzFyVQI8YnGJ85Ca9gswQ+j8tkBWlvY9tIEPswsd
	 MeqL9FKqa0UzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 568FD8317B;
	Mon, 19 May 2025 15:15:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BDF66193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2A8580DF0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:21:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rHiBsIpNvD3W for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 07:21:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD0D981DBF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD0D981DBF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD0D981DBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:21:01 +0000 (UTC)
X-CSE-ConnectionGUID: PBPb+5RKSo+uBZnZVXzizA==
X-CSE-MsgGUID: JZeTQi0xSRW+6ZSifCXnyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="72030771"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="72030771"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:21:01 -0700
X-CSE-ConnectionGUID: dJaEGXehSYSNILdfS9rQ/A==
X-CSE-MsgGUID: Cl7GF/IVRgidQeZVg8XN4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139798868"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa007.jf.intel.com with ESMTP; 19 May 2025 00:20:58 -0700
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 19 May 2025 03:19:10 -0400
Message-Id: <20250519071911.2748406-7-faizal.abdul.rahim@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 19 May 2025 15:15:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747639262; x=1779175262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LmjXArvupdTuHXnhn/1zs4O0w3uuisTZpTsTLnD9RnQ=;
 b=UCLV39TYjzHhwibwLLWR8pzioKpuLmOHpFypz6IdW21HLyCLdQhXfSAA
 UO6e20WnZXfDXzIz+wOXcc5CsP3nsG0/3Zsere7bP/hZkYWw12OxWxgp4
 uYSw2rpZah5qLer4d8+BxtSW4iFxnmMAXtd9xCUzc25VTuVQvx+4VMJEE
 YO1HYuuPc7GGea+ZHoC1K/jOIQ0Rema/0AoubduUit8YGNwuPSEPTIIKk
 rNyW0fhpt0sWTUPhlEa7OmRJD015P8xHhZ4Wyn5dTevho3kG/IgvfuX8r
 gQjwmBJhBXZQYV2IXMnvcgYXsBBAwMafjTM1G4GHNT43JY4hMEYhwEufh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UCLV39TY
Subject: [Intel-wired-lan] [PATCH iwl-next v3 6/7] igc: add preemptible
 queue support in taprio
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Changes:
1. Introduce tx_enabled flag to control preemptible queue. tx_enabled
   is set via mmsv module based on multiple factors, including link
   up/down status, to determine if FPE is active or inactive.
2. Add priority field to TXDCTL for express queue to improve data
   fetch performance.
3. Block preemptible queue setup in taprio unless reverse-tsn-txq-prio
   private flag is set. Encourages adoption of standard queue priority
   scheme for new features.
4. Hardware-padded frames from preemptible queues result in incorrect
   mCRC values, as padding bytes are excluded from the computation. Pad
   frames to at least 60 bytes using skb_padto() before transmission to
   ensure the hardware includes padding in the mCRC calculation.

Tested preemption with taprio by:
1. Enable FPE:
   ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled on
2. Enable private flag to reverse TX queue priority:
   ethtool --set-priv-flags enp1s0 reverse-txq-prio on
3. Enable preemptible queue in taprio:
   taprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
   queues 1@0 1@1 1@2 1@3 \
   fp P P P E

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Co-developed-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  6 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 21 +++++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 71 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  4 ++
 5 files changed, 100 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 023ff8a5b285..1525ae25fd3e 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -43,6 +43,7 @@ void igc_ethtool_set_ops(struct net_device *);
 struct igc_fpe_t {
 	struct ethtool_mmsv mmsv;
 	u32 tx_min_frag_size;
+	bool tx_enabled;
 };
 
 enum igc_mac_filter_type {
@@ -163,6 +164,7 @@ struct igc_ring {
 	bool launchtime_enable;         /* true if LaunchTime is enabled */
 	ktime_t last_tx_cycle;          /* end of the cycle with a launchtime transmission */
 	ktime_t last_ff_cycle;          /* Last cycle with an active first flag */
+	bool preemptible;		/* True if preemptible queue, false if express queue */
 
 	u32 start_time;
 	u32 end_time;
@@ -499,6 +501,8 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
 #define IGC_TXDCTL_WTHRESH_MASK		GENMASK(20, 16)
 #define IGC_TXDCTL_QUEUE_ENABLE_MASK	GENMASK(25, 25)
 #define IGC_TXDCTL_SWFLUSH_MASK		GENMASK(26, 26)
+#define IGC_TXDCTL_PRIORITY_MASK	GENMASK(27, 27)
+
 #define IGC_TXDCTL_PTHRESH(x)		FIELD_PREP(IGC_TXDCTL_PTHRESH_MASK, (x))
 #define IGC_TXDCTL_HTHRESH(x)		FIELD_PREP(IGC_TXDCTL_HTHRESH_MASK, (x))
 #define IGC_TXDCTL_WTHRESH(x)		FIELD_PREP(IGC_TXDCTL_WTHRESH_MASK, (x))
@@ -506,6 +510,8 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
 #define IGC_TXDCTL_QUEUE_ENABLE		FIELD_PREP(IGC_TXDCTL_QUEUE_ENABLE_MASK, 1)
 /* Transmit Software Flush */
 #define IGC_TXDCTL_SWFLUSH		FIELD_PREP(IGC_TXDCTL_SWFLUSH_MASK, 1)
+#define IGC_TXDCTL_PRIORITY(x)		FIELD_PREP(IGC_TXDCTL_PRIORITY_MASK, (x))
+#define IGC_TXDCTL_PRIORITY_HIGH	IGC_TXDCTL_PRIORITY(1)
 
 #define IGC_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 7189dfc389ad..86b346687196 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -588,6 +588,7 @@
 #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
 #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
 #define IGC_TXQCTL_STRICT_END		0x00000004
+#define IGC_TXQCTL_PREEMPTIBLE		0x00000008
 #define IGC_TXQCTL_QAV_SEL_MASK		0x000000C0
 #define IGC_TXQCTL_QAV_SEL_CBS0		0x00000080
 #define IGC_TXQCTL_QAV_SEL_CBS1		0x000000C0
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c1cb0e666469..eb68a352840a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1685,6 +1685,15 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	first->tx_flags = tx_flags;
 	first->protocol = protocol;
 
+	/* For preemptible queue, manually pad the skb so that HW includes
+	 * padding bytes in mCRC calculation
+	 */
+	if (tx_ring->preemptible && skb->len < ETH_ZLEN) {
+		if (skb_padto(skb, ETH_ZLEN))
+			goto out_drop;
+		skb_put(skb, ETH_ZLEN - skb->len);
+	}
+
 	tso = igc_tso(tx_ring, first, launch_time, first_flag, &hdr_len);
 	if (tso < 0)
 		goto out_drop;
@@ -6419,6 +6428,7 @@ static int igc_qbv_clear_schedule(struct igc_adapter *adapter)
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
 		ring->max_sdu = 0;
+		ring->preemptible = false;
 	}
 
 	spin_lock_irqsave(&adapter->qbv_tx_lock, flags);
@@ -6484,9 +6494,12 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	if (!validate_schedule(adapter, qopt))
 		return -EINVAL;
 
-	/* preemptible isn't supported yet */
-	if (qopt->mqprio.preemptible_tcs)
-		return -EOPNOTSUPP;
+	if (qopt->mqprio.preemptible_tcs &&
+	    !(adapter->flags & IGC_FLAG_TSN_REVERSE_TXQ_PRIO)) {
+		NL_SET_ERR_MSG_MOD(qopt->extack,
+				   "reverse-tsn-txq-prio private flag must be enabled before setting preemptible tc");
+		return -ENODEV;
+	}
 
 	igc_ptp_read(adapter, &now);
 
@@ -6579,6 +6592,8 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 			ring->max_sdu = 0;
 	}
 
+	igc_fpe_save_preempt_queue(adapter, &qopt->mqprio);
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 43151ab4c1b7..811856d66571 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -116,6 +116,18 @@ static int igc_fpe_xmit_smd_frame(struct igc_adapter *adapter,
 	return err;
 }
 
+static void igc_fpe_configure_tx(struct ethtool_mmsv *mmsv, bool tx_enable)
+{
+	struct igc_fpe_t *fpe = container_of(mmsv, struct igc_fpe_t, mmsv);
+	struct igc_adapter *adapter;
+
+	adapter = container_of(fpe, struct igc_adapter, fpe);
+	adapter->fpe.tx_enabled = tx_enable;
+
+	/* Update config since tx_enabled affects preemptible queue configuration */
+	igc_tsn_offload_apply(adapter);
+}
+
 static void igc_fpe_send_mpacket(struct ethtool_mmsv *mmsv,
 				 enum ethtool_mpacket type)
 {
@@ -137,15 +149,50 @@ static void igc_fpe_send_mpacket(struct ethtool_mmsv *mmsv,
 }
 
 static const struct ethtool_mmsv_ops igc_mmsv_ops = {
+	.configure_tx = igc_fpe_configure_tx,
 	.send_mpacket = igc_fpe_send_mpacket,
 };
 
 void igc_fpe_init(struct igc_adapter *adapter)
 {
 	adapter->fpe.tx_min_frag_size = TX_MIN_FRAG_SIZE;
+	adapter->fpe.tx_enabled = false;
 	ethtool_mmsv_init(&adapter->fpe.mmsv, adapter->netdev, &igc_mmsv_ops);
 }
 
+static u32 igc_fpe_map_preempt_tc_to_queue(const struct igc_adapter *adapter,
+					   unsigned long preemptible_tcs)
+{
+	struct net_device *dev = adapter->netdev;
+	u32 i, queue = 0;
+
+	for (i = 0; i < dev->num_tc; i++) {
+		u32 offset, count;
+
+		if (!(preemptible_tcs & BIT(i)))
+			continue;
+
+		offset = dev->tc_to_txq[i].offset;
+		count = dev->tc_to_txq[i].count;
+		queue |= GENMASK(offset + count - 1, offset);
+	}
+
+	return queue;
+}
+
+void igc_fpe_save_preempt_queue(struct igc_adapter *adapter,
+				const struct tc_mqprio_qopt_offload *mqprio)
+{
+	u32 preemptible_queue = igc_fpe_map_preempt_tc_to_queue(adapter,
+								mqprio->preemptible_tcs);
+
+	for (int i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		tx_ring->preemptible = !!(preemptible_queue & BIT(i));
+	}
+}
+
 static bool is_any_launchtime(struct igc_adapter *adapter)
 {
 	int i;
@@ -321,9 +368,16 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 	wr32(IGC_TQAVCTRL, tqavctrl);
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
+		int reg_idx = adapter->tx_ring[i]->reg_idx;
+		u32 txdctl;
+
 		wr32(IGC_TXQCTL(i), 0);
 		wr32(IGC_STQT(i), 0);
 		wr32(IGC_ENDQT(i), NSEC_PER_SEC);
+
+		txdctl = rd32(IGC_TXDCTL(reg_idx));
+		txdctl &= ~IGC_TXDCTL_PRIORITY_HIGH;
+		wr32(IGC_TXDCTL(reg_idx), txdctl);
 	}
 
 	wr32(IGC_QBVCYCLET_S, 0);
@@ -404,6 +458,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
+		u32 txdctl = rd32(IGC_TXDCTL(ring->reg_idx));
 		u32 txqctl = 0;
 		u16 cbs_value;
 		u32 tqavcc;
@@ -437,6 +492,22 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		if (ring->launchtime_enable)
 			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
 
+		if (!adapter->fpe.tx_enabled) {
+			/* fpe inactive: clear both flags */
+			txqctl &= ~IGC_TXQCTL_PREEMPTIBLE;
+			txdctl &= ~IGC_TXDCTL_PRIORITY_HIGH;
+		} else if (ring->preemptible) {
+			/* fpe active + preemptible: enable preemptible queue + set low priority */
+			txqctl |= IGC_TXQCTL_PREEMPTIBLE;
+			txdctl &= ~IGC_TXDCTL_PRIORITY_HIGH;
+		} else {
+			/* fpe active + express: enable express queue + set high priority */
+			txqctl &= ~IGC_TXQCTL_PREEMPTIBLE;
+			txdctl |= IGC_TXDCTL_PRIORITY_HIGH;
+		}
+
+		wr32(IGC_TXDCTL(ring->reg_idx), txdctl);
+
 		/* Skip configuring CBS for Q2 and Q3 */
 		if (i > 1)
 			goto skip_cbs;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index c2a77229207b..f2e8bfef4871 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -4,6 +4,8 @@
 #ifndef _IGC_TSN_H_
 #define _IGC_TSN_H_
 
+#include <net/pkt_sched.h>
+
 #define IGC_RX_MIN_FRAG_SIZE		60
 #define SMD_FRAME_SIZE			60
 
@@ -15,6 +17,8 @@ enum igc_txd_popts_type {
 DECLARE_STATIC_KEY_FALSE(igc_fpe_enabled);
 
 void igc_fpe_init(struct igc_adapter *adapter);
+void igc_fpe_save_preempt_queue(struct igc_adapter *adapter,
+				const struct tc_mqprio_qopt_offload *mqprio);
 u32 igc_fpe_get_supported_frag_size(u32 frag_size);
 int igc_tsn_offload_apply(struct igc_adapter *adapter);
 int igc_tsn_reset(struct igc_adapter *adapter);
-- 
2.34.1

