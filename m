Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3675A9E7E7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBFC460B95;
	Mon, 28 Apr 2025 06:03:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qL7lCOjzGy8; Mon, 28 Apr 2025 06:03:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C757160B8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820227;
	bh=YPv4Lx+oDA8DLrd0i9KpffI71hO4Y/al1wGXY61sr0E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ijF6xk4BzczzGcAMRDxj7I+Bw7IP+4TsNcULZOZaZBVjsvMh+se49wBFDOBveWwq/
	 Cw0+5NCVr2KepMIyfvJz5sOGeOfr9Ho64O30SBoSG3cRLjoHUytT8XWrZvtb10HSy2
	 d9I7soLyfm2NiHkm+Jt/0mHaPwZZ4Dr5Ovu3ZBIqRr8QOZUHuHZggXz0mBC61udFLM
	 I1Xc4vSAmBhhishRcbwL5mSDAeXS9aJjZEFq36fGWhuxmSzqifT/V8dr069Wq1pITf
	 N/6DFnesOkmky7Vsku+SDr4tGw3sZvTNS1cqRhOHzs3kF0KXTjE9DYIAWM9ZDT77SO
	 nHB68PjwFeiHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C757160B8C;
	Mon, 28 Apr 2025 06:03:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 27EFDC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DA5F60B83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8jITe0o_pcSU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1E45B60B8D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E45B60B8D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E45B60B8D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:44 +0000 (UTC)
X-CSE-ConnectionGUID: B4xWgUpRR6i5mlReg0ixCw==
X-CSE-MsgGUID: k+i9mWq3RryQHJVODEdImw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064653"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064653"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:44 -0700
X-CSE-ConnectionGUID: S+TFwbhzSx2Y8XF6osNaSw==
X-CSE-MsgGUID: cJx9j4iyRhGf1vlemeMyWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340830"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:41 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 28 Apr 2025 02:02:23 -0400
Message-Id: <20250428060225.1306986-7-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820225; x=1777356225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=moWNX6UE38Hc4cHIFjHrk1cd/nokI5aLzMKEKF6Ycg8=;
 b=BbK9wYhDbkfidGwZ+0tQCPElimrnx9BomWk55yFJ4xn7KCCopcH/pO6Z
 YANhJGomJQ5wpqtAf290fHkk7d62/I1zTJYAbIW+6fV1a7OGBY8dz/kK4
 mOzriE3CiDuWuqJKGQL0Cu5K8VEYZJrdgYwbYjtEsrKbP54v6GQyMgbPf
 zb6h1VG7/Pyv+DyBIPeOyxDW1Py7wczVOX3uPJMXt3K/M98xMFvH2yzk/
 Uxp1fMRQLvbjG1Ets2cNGAQQ2Tpj+Emj3fyDLxDWfrUnS2hReSFTHv4eA
 6krqFkY6lM/QufVeODAM0RuK++i17LNczlt5scxKgU/HkFckkhb4NWnfh
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BbK9wYhD
Subject: [Intel-wired-lan] [PATCH iwl-next v1 6/8] igc: add preemptible
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

igc already supports enabling MAC Merge for FPE. This patch adds
support for preemptible queues in taprio.

Changes:
1. Introduce tx_enabled flag to control preemptible queue. tx_enabled
   is set via mmsv module based on multiple factors, including link
   up/down status, to determine if FPE is active or inactive.
2. Add priority field to TXDCTL for express queue to improve data
   fetch performance.
3. Block preemptible queue setup in taprio unless reverse-tsn-txq-prio
   private flag is set. Encourages adoption of standard queue priority
   scheme for new features.

Tested preemption with taprio by:
1. Enable FPE:
   ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled on
2. Enable private flag to reverse TX queue priority:
   ethtool --set-priv-flags enp1s0 reverse-txq-prio on
3. Enable preemptible queue in taprio:
   taprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
   queues 1@0 1@1 1@2 1@3 \
   fp P P P E

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  5 ++
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 12 +++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 71 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  4 ++
 5 files changed, 90 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 684a11df445c..39444e61003d 100644
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
@@ -495,6 +497,7 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
 #define IGC_TXDCTL_WTHRESH_MASK		GENMASK(20, 16)
 #define IGC_TXDCTL_QUEUE_ENABLE_MASK	GENMASK(25, 25)
 #define IGC_TXDCTL_SWFLUSH_MASK		GENMASK(26, 26)
+#define IGC_TXDCTL_PRIORITY_MASK	GENMASK(27, 27)
 
 #define IGC_TXDCTL_PTHRESH(x)		FIELD_PREP(IGC_TXDCTL_PTHRESH_MASK, (x))
 #define IGC_TXDCTL_HTHRESH(x)		FIELD_PREP(IGC_TXDCTL_HTHRESH_MASK, (x))
@@ -504,6 +507,8 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
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
index 8562565842b1..c6e2cfd630df 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6419,6 +6419,7 @@ static int igc_qbv_clear_schedule(struct igc_adapter *adapter)
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
 		ring->max_sdu = 0;
+		ring->preemptible = false;
 	}
 
 	spin_lock_irqsave(&adapter->qbv_tx_lock, flags);
@@ -6484,9 +6485,12 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
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
 
@@ -6579,6 +6583,8 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 			ring->max_sdu = 0;
 	}
 
+	igc_fpe_save_preempt_queue(adapter, &qopt->mqprio);
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 5dc05b42f53f..897813eb2175 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -115,6 +115,18 @@ static int igc_fpe_xmit_smd_frame(struct igc_adapter *adapter,
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
@@ -136,15 +148,50 @@ static void igc_fpe_send_mpacket(struct ethtool_mmsv *mmsv,
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
@@ -317,9 +364,16 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
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
@@ -400,6 +454,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
 		struct igc_ring *ring = adapter->tx_ring[i];
+		u32 txdctl = rd32(IGC_TXDCTL(ring->reg_idx));
 		u32 txqctl = 0;
 		u16 cbs_value;
 		u32 tqavcc;
@@ -433,6 +488,22 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
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

