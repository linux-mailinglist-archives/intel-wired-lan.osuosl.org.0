Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4396A52B6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 06:46:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BB6C610BA;
	Tue, 28 Feb 2023 05:46:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BB6C610BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677563187;
	bh=2DvRkbMEn8z862bmoIe3yJRSUDmVy9SKaGZ8e365adw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j5OWD1osezfU+tfPgIBGNXTbeOo8dWkKHgH/P+qdUY5tGjMa0Dtyge2/DMX3M0lh9
	 dlGvF2woQWmZ0eb06ysX7LJfuYz/10tBJoQYd0TRS4qpSDO4NSnOFgeqvYBeB2SIfW
	 ndmlOubqOwn9zSuyNBrVYa5miJEO1I47cunfq0dNF6FgLpAuPohC3GJwZSgK61emZo
	 wc7TGLtAmxiSYRcjY1mbjnRIV/z+ai+ZswnOCTtKDzlWFv+FSIbayhSrGlAgNRcog+
	 T/98+4mt2aQx/wrygNUptkQyXdtoF06k3AQX5uVViZUC0u0yA5bBPBp42QOiQoI6El
	 SkQbh2qluRoMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9z11gvbb5W6F; Tue, 28 Feb 2023 05:46:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CDD0610C2;
	Tue, 28 Feb 2023 05:46:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CDD0610C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB881BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0D16610BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0D16610BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GITr38_f3BoY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 05:46:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55DC1610C1
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55DC1610C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:46:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="313729849"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="313729849"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:46:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="676183311"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="676183311"
Received: from keverson-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.84.181])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:46:07 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Feb 2023 21:45:33 -0800
Message-Id: <20230228054534.1093483-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230228054534.1093483-1-vinicius.gomes@intel.com>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677563168; x=1709099168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DHBwYo5UBYayeo6IWbXKfZp8qZZV0YYrHc7OT/xJKm8=;
 b=kcrhKGnpRqQfV8rlmnQIwOOyVXwIqbGS6G0delVRUAi+vdFPm5YMSvyN
 Bp062mD05xtuDRmUWdRSAtJxxqnoIhrCq+2H0/yq/H/8u9NmRNViVdHmF
 Pp0exjMNvWwW4Uyz7XeKoaBbX21E3Kuzu2sBblZIl2txdqToU72sgqvjb
 6wo2w9wipmRB1EKnGU524Kx9vsdpElsHUgdxr1YzOSM1CGswm+EmMmmRO
 aSJs4JP5Kmw77kme8KcnyxVuLJ8/JIBHHx8FhHzfmkHS5sJs9pAPbE8gO
 WZveEc3veXUvhwffk3IY/fowIzSf7O809NaKK4lJ51m77xgGSBfGsYq/o
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kcrhKGnp
Subject: [Intel-wired-lan] [PATCH next-queue v1 2/3] igc: Add support for
 multiple in-flight TX timestamps
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for using the four sets of timestamping registers that
i225/i226 have available for TX.

In some workloads, where multiple applications request hardware
transmission timestamps, it was possible that some of those requests
were denied because the only in use register was already occupied.

This is also in preparation to future support for hardware
timestamping in multiple domains. With multiple domains chances of
multiple TX timestamps being requested at the same time increase.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  18 +-
 drivers/net/ethernet/intel/igc/igc_base.h    |   3 +
 drivers/net/ethernet/intel/igc/igc_defines.h |   7 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  45 +++--
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 171 ++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_regs.h    |  12 ++
 6 files changed, 182 insertions(+), 74 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index e804a566bdd3..f0617838a16a 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -35,6 +35,8 @@ void igc_ethtool_set_ops(struct net_device *);
 
 #define MAX_FLEX_FILTER			32
 
+#define IGC_MAX_TX_TSTAMP_REGS		4
+
 enum igc_mac_filter_type {
 	IGC_MAC_FILTER_TYPE_DST = 0,
 	IGC_MAC_FILTER_TYPE_SRC
@@ -67,6 +69,15 @@ struct igc_rx_packet_stats {
 	u64 other_packets;
 };
 
+struct igc_tx_timestamp_request {
+	struct sk_buff *skb;   /* reference to the packet being timestamped */
+	unsigned long start;   /* when the tstamp request started (jiffies) */
+	u32 mask;              /* _TSYNCTXCTL_TXTT_{X} bit for this request */
+	u32 regl;              /* which TXSTMPL_{X} register should be used */
+	u32 regh;              /* which TXSTMPH_{X} register should be used */
+	u32 flags;             /* flags that should be added to the tx_buffer */
+};
+
 struct igc_ring_container {
 	struct igc_ring *ring;          /* pointer to linked list of rings */
 	unsigned int total_bytes;       /* total bytes processed this int */
@@ -231,9 +242,8 @@ struct igc_adapter {
 	 * ptp_tx_lock.
 	 */
 	spinlock_t ptp_tx_lock;
-	struct sk_buff *ptp_tx_skb;
+	struct igc_tx_timestamp_request tx_tstamp[IGC_MAX_TX_TSTAMP_REGS];
 	struct hwtstamp_config tstamp_config;
-	unsigned long ptp_tx_start;
 	unsigned int ptp_flags;
 	/* System time value lock */
 	spinlock_t tmreg_lock;
@@ -416,6 +426,10 @@ enum igc_tx_flags {
 	/* olinfo flags */
 	IGC_TX_FLAGS_IPV4	= 0x10,
 	IGC_TX_FLAGS_CSUM	= 0x20,
+
+	IGC_TX_FLAGS_TSTAMP_1	= 0x100,
+	IGC_TX_FLAGS_TSTAMP_2	= 0x200,
+	IGC_TX_FLAGS_TSTAMP_3	= 0x400,
 };
 
 enum igc_boards {
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index 7a992befca24..a009703da704 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -34,6 +34,9 @@ struct igc_adv_tx_context_desc {
 
 /* Adv Transmit Descriptor Config Masks */
 #define IGC_ADVTXD_MAC_TSTAMP	0x00080000 /* IEEE1588 Timestamp packet */
+#define IGC_ADVTXD_TSTAMP_REG_1	0x00010000 /* Select register 1 for timestamp */
+#define IGC_ADVTXD_TSTAMP_REG_2	0x00020000 /* Select register 2 for timestamp */
+#define IGC_ADVTXD_TSTAMP_REG_3	0x00030000 /* Select register 3 for timestamp */
 #define IGC_ADVTXD_DTYP_CTXT	0x00200000 /* Advanced Context Descriptor */
 #define IGC_ADVTXD_DTYP_DATA	0x00300000 /* Advanced Data Descriptor */
 #define IGC_ADVTXD_DCMD_EOP	0x01000000 /* End of Packet */
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 9dec3563ce3a..967b24fbb87b 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -454,6 +454,9 @@
 
 /* Time Sync Transmit Control bit definitions */
 #define IGC_TSYNCTXCTL_TXTT_0			0x00000001  /* Tx timestamp reg 0 valid */
+#define IGC_TSYNCTXCTL_TXTT_1			0x00000002  /* Tx timestamp reg 1 valid */
+#define IGC_TSYNCTXCTL_TXTT_2			0x00000004  /* Tx timestamp reg 2 valid */
+#define IGC_TSYNCTXCTL_TXTT_3			0x00000008  /* Tx timestamp reg 3 valid */
 #define IGC_TSYNCTXCTL_ENABLED			0x00000010  /* enable Tx timestamping */
 #define IGC_TSYNCTXCTL_MAX_ALLOWED_DLY_MASK	0x0000F000  /* max delay */
 #define IGC_TSYNCTXCTL_SYNC_COMP_ERR		0x20000000  /* sync err */
@@ -461,6 +464,10 @@
 #define IGC_TSYNCTXCTL_START_SYNC		0x80000000  /* initiate sync */
 #define IGC_TSYNCTXCTL_TXSYNSIG			0x00000020  /* Sample TX tstamp in PHY sop */
 
+#define IGC_TSYNCTXCTL_TXTT_ANY ( \
+		IGC_TSYNCTXCTL_TXTT_0 | IGC_TSYNCTXCTL_TXTT_1 | \
+		IGC_TSYNCTXCTL_TXTT_2 | IGC_TSYNCTXCTL_TXTT_3)
+
 /* Timer selection bits */
 #define IGC_AUX_IO_TIMER_SEL_SYSTIM0	(0u << 30) /* Select SYSTIM0 for auxiliary time stamp */
 #define IGC_AUX_IO_TIMER_SEL_SYSTIM1	(1u << 30) /* Select SYSTIM1 for auxiliary time stamp */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 84c9c6e09054..4861ad0689ed 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1236,10 +1236,21 @@ static u32 igc_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
 	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSO,
 				 (IGC_ADVTXD_DCMD_TSE));
 
-	/* set timestamp bit if present */
+	/* set timestamp bit if present, will select the register set
+	 * based on the _TSTAMP(_X) bit.
+	 */
 	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP,
 				 (IGC_ADVTXD_MAC_TSTAMP));
 
+	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_1,
+				 (IGC_ADVTXD_TSTAMP_REG_1));
+
+	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_2,
+				 (IGC_ADVTXD_TSTAMP_REG_2));
+
+	cmd_type |= IGC_SET_FLAG(tx_flags, IGC_TX_FLAGS_TSTAMP_3,
+				 (IGC_ADVTXD_TSTAMP_REG_3));
+
 	/* insert frame checksum */
 	cmd_type ^= IGC_SET_FLAG(skb->no_fcs, 1, IGC_ADVTXD_DCMD_IFCS);
 
@@ -1498,6 +1509,26 @@ static int igc_tso(struct igc_ring *tx_ring,
 	return 1;
 }
 
+static bool igc_request_tx_tstamp(struct igc_adapter *adapter, struct sk_buff *skb, u32 *flags)
+{
+	int i;
+
+	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
+		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
+
+		if (tstamp->skb)
+			continue;
+
+		tstamp->skb = skb_get(skb);
+		tstamp->start = jiffies;
+		*flags = tstamp->flags;
+
+		return true;
+	}
+
+	return false;
+}
+
 static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 				       struct igc_ring *tx_ring)
 {
@@ -1566,20 +1597,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
 		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
 		unsigned long flags;
+		u32 tstamp_flags;
 
 		spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
-		/* FIXME: add support for retrieving timestamps from
-		 * the other timer registers before skipping the
-		 * timestamping request.
-		 */
 		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
-		    !adapter->ptp_tx_skb) {
+		    igc_request_tx_tstamp(adapter, skb, &tstamp_flags)) {
 			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
-			tx_flags |= IGC_TX_FLAGS_TSTAMP;
-
-			adapter->ptp_tx_skb = skb_get(skb);
-			adapter->ptp_tx_start = jiffies;
+			tx_flags |= IGC_TX_FLAGS_TSTAMP | tstamp_flags;
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 9247395911c9..0cb932b52a7b 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -604,92 +604,109 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 }
 
 /* Requires adapter->ptp_tx_lock held by caller. */
-static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
+static void igc_ptp_tx_timeout(struct igc_adapter *adapter,
+			       struct igc_tx_timestamp_request *tstamp)
 {
 	struct igc_hw *hw = &adapter->hw;
 
-	dev_kfree_skb_any(adapter->ptp_tx_skb);
-	adapter->ptp_tx_skb = NULL;
-	adapter->ptp_tx_start = 0;
+	dev_kfree_skb_any(tstamp->skb);
+	tstamp->skb = NULL;
+	tstamp->start = 0;
 	adapter->tx_hwtstamp_timeouts++;
-	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
-	rd32(IGC_TXSTMPH);
+
+	/* Reading the high register of one of the timestamp registers
+	 * clears the equivalent bit in the TSYNCTXCTL register.
+	 */
+	rd32(tstamp->regh);
+
 	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
 }
 
 void igc_ptp_tx_hang(struct igc_adapter *adapter)
 {
+	struct igc_tx_timestamp_request *tstamp;
 	unsigned long flags;
+	int i;
 
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
-	if (!adapter->ptp_tx_skb)
-		goto unlock;
+	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
+		tstamp = &adapter->tx_tstamp[i];
 
-	if (time_is_after_jiffies(adapter->ptp_tx_start + IGC_PTP_TX_TIMEOUT))
-		goto unlock;
+		if (!tstamp->skb)
+			continue;
 
-	igc_ptp_tx_timeout(adapter);
+		if (time_is_after_jiffies(tstamp->start + IGC_PTP_TX_TIMEOUT))
+			continue;
+
+		igc_ptp_tx_timeout(adapter, tstamp);
+	}
 
-unlock:
 	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 }
 
 /**
  * igc_ptp_tx_hwtstamp - utility function which checks for TX time stamp
  * @adapter: Board private structure
+ * @mask: bitmask of which timestamp registers are ready
  *
- * If we were asked to do hardware stamping and such a time stamp is
- * available, then it must have been for this skb here because we only
- * allow only one such packet into the queue.
+ * Check against the ready mask for which of the timestamp register
+ * sets are ready to be retrieved, then retrieve that and notify the
+ * rest of the stack.
  *
  * Context: Expects adapter->ptp_tx_lock to be held by caller.
  */
-static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
+static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter, u32 mask)
 {
-	struct sk_buff *skb = adapter->ptp_tx_skb;
 	struct skb_shared_hwtstamps shhwtstamps;
 	struct igc_hw *hw = &adapter->hw;
-	int adjust = 0;
-	u64 regval;
+	int i;
 
-	if (WARN_ON_ONCE(!skb))
+	if (!mask)
 		return;
 
-	regval = rd32(IGC_TXSTMPL);
-	regval |= (u64)rd32(IGC_TXSTMPH) << 32;
-	if (igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval))
-		return;
+	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
+		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
+		struct sk_buff *skb;
+		int adjust = 0;
+		u64 regval;
+
+		if (!(mask & tstamp->mask))
+			continue;
+
+		skb = tstamp->skb;
+		if (!skb)
+			continue;
+
+		regval = rd32(tstamp->regl);
+		regval |= (u64)rd32(tstamp->regh) << 32;
+		if (igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval))
+			return;
+
+		switch (adapter->link_speed) {
+		case SPEED_10:
+			adjust = IGC_I225_TX_LATENCY_10;
+			break;
+		case SPEED_100:
+			adjust = IGC_I225_TX_LATENCY_100;
+			break;
+		case SPEED_1000:
+			adjust = IGC_I225_TX_LATENCY_1000;
+			break;
+		case SPEED_2500:
+			adjust = IGC_I225_TX_LATENCY_2500;
+			break;
+		}
+
+		shhwtstamps.hwtstamp =
+			ktime_add_ns(shhwtstamps.hwtstamp, adjust);
+
+		tstamp->skb = NULL;
+		tstamp->start = 0;
 
-	switch (adapter->link_speed) {
-	case SPEED_10:
-		adjust = IGC_I225_TX_LATENCY_10;
-		break;
-	case SPEED_100:
-		adjust = IGC_I225_TX_LATENCY_100;
-		break;
-	case SPEED_1000:
-		adjust = IGC_I225_TX_LATENCY_1000;
-		break;
-	case SPEED_2500:
-		adjust = IGC_I225_TX_LATENCY_2500;
-		break;
+		skb_tstamp_tx(skb, &shhwtstamps);
+		dev_kfree_skb_any(skb);
 	}
-
-	shhwtstamps.hwtstamp =
-		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
-
-	/* Clear the lock early before calling skb_tstamp_tx so that
-	 * applications are not woken up before the lock bit is clear. We use
-	 * a copy of the skb pointer to ensure other threads can't change it
-	 * while we're notifying the stack.
-	 */
-	adapter->ptp_tx_skb = NULL;
-	adapter->ptp_tx_start = 0;
-
-	/* Notify the stack and free the skb after we've unlocked */
-	skb_tstamp_tx(skb, &shhwtstamps);
-	dev_kfree_skb_any(skb);
 }
 
 /**
@@ -709,16 +726,10 @@ static void igc_ptp_tx_work(struct work_struct *work)
 
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
-	if (!adapter->ptp_tx_skb)
-		goto unlock;
-
 	tsynctxctl = rd32(IGC_TSYNCTXCTL);
-	if (WARN_ON_ONCE(!(tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)))
-		goto unlock;
 
-	igc_ptp_tx_hwtstamp(adapter);
+	igc_ptp_tx_hwtstamp(adapter, tsynctxctl & IGC_TSYNCTXCTL_TXTT_ANY);
 
-unlock:
 	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 }
 
@@ -931,9 +942,34 @@ static int igc_ptp_getcrosststamp(struct ptp_clock_info *ptp,
 void igc_ptp_init(struct igc_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
+	struct igc_tx_timestamp_request *tstamp;
 	struct igc_hw *hw = &adapter->hw;
 	int i;
 
+	tstamp = &adapter->tx_tstamp[0];
+	tstamp->mask = IGC_TSYNCTXCTL_TXTT_0;
+	tstamp->regl = IGC_TXSTMPL_0;
+	tstamp->regh = IGC_TXSTMPH_0;
+	tstamp->flags = 0;
+
+	tstamp = &adapter->tx_tstamp[1];
+	tstamp->mask = IGC_TSYNCTXCTL_TXTT_1;
+	tstamp->regl = IGC_TXSTMPL_1;
+	tstamp->regh = IGC_TXSTMPH_1;
+	tstamp->flags = IGC_TX_FLAGS_TSTAMP_1;
+
+	tstamp = &adapter->tx_tstamp[2];
+	tstamp->mask = IGC_TSYNCTXCTL_TXTT_2;
+	tstamp->regl = IGC_TXSTMPL_2;
+	tstamp->regh = IGC_TXSTMPH_2;
+	tstamp->flags = IGC_TX_FLAGS_TSTAMP_2;
+
+	tstamp = &adapter->tx_tstamp[3];
+	tstamp->mask = IGC_TSYNCTXCTL_TXTT_3;
+	tstamp->regl = IGC_TXSTMPL_3;
+	tstamp->regh = IGC_TXSTMPH_3;
+	tstamp->flags = IGC_TX_FLAGS_TSTAMP_3;
+
 	switch (hw->mac.type) {
 	case igc_i225:
 		for (i = 0; i < IGC_N_SDP; i++) {
@@ -1018,6 +1054,19 @@ static void igc_ptm_stop(struct igc_adapter *adapter)
 	wr32(IGC_PTM_CTRL, ctrl);
 }
 
+static void igc_tx_tstamp_clear(struct igc_adapter *adapter)
+{
+	int i;
+
+	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
+		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
+
+		dev_kfree_skb_any(tstamp->skb);
+		tstamp->skb = NULL;
+		tstamp->start = 0;
+	}
+}
+
 /**
  * igc_ptp_suspend - Disable PTP work items and prepare for suspend
  * @adapter: Board private structure
@@ -1036,9 +1085,7 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
 
 	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
 
-	dev_kfree_skb_any(adapter->ptp_tx_skb);
-	adapter->ptp_tx_skb = NULL;
-	adapter->ptp_tx_start = 0;
+	igc_tx_tstamp_clear(adapter);
 
 	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 01c86d36856d..17e0e627679d 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -243,6 +243,18 @@
 #define IGC_SYSTIMR	0x0B6F8  /* System time register Residue */
 #define IGC_TIMINCA	0x0B608  /* Increment attributes register - RW */
 
+/* TX Timestamp Low */
+#define IGC_TXSTMPL_0		0x0B618
+#define IGC_TXSTMPL_1		0x0B698
+#define IGC_TXSTMPL_2		0x0B6B8
+#define IGC_TXSTMPL_3		0x0B6D8
+
+/* TX Timestamp High */
+#define IGC_TXSTMPH_0		0x0B61C
+#define IGC_TXSTMPH_1		0x0B69C
+#define IGC_TXSTMPH_2		0x0B6BC
+#define IGC_TXSTMPH_3		0x0B6DC
+
 #define IGC_TXSTMPL	0x0B618  /* Tx timestamp value Low - RO */
 #define IGC_TXSTMPH	0x0B61C  /* Tx timestamp value High - RO */
 
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
