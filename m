Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C65E6837C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:46:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6CA1416D5;
	Tue, 31 Jan 2023 20:46:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6CA1416D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197998;
	bh=mCWTHhXd15iGGv6JxM5HC6+o9jI/p5s8HIusgDSx3+Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WCPmYpdpEjMPM0CZLGN/8RXbFv1ydcj/M63gkegbGeWe+2hPzfJIS28cjOAIKGfHt
	 qxNpWoqh+D3ywu5l13iXa99coVp56vl1P3+hxA3YluDA9S3LQhOq2Idd8eFstT+COd
	 IOL9DC1Co+Qetv5jFeW1awUOk4DeFJY/rTS6ZccgAvJnXHwB5KtTt32p7zdP9PEb5a
	 I9vvh9lkT5AmQPvrUkY7rLo4lOGoiDSRntE97jNfJC9epFvRZvZ6PXb5ryI+7eXvVz
	 huthEzexLnlMBt9QpeuRPt+Frtr5uDQ6W7zDFFIQ8cjk4yb/CmO9hmmDvOkIT0MwE7
	 QBRW4qLyET28Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id foSFjWizJEwV; Tue, 31 Jan 2023 20:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D1C140324;
	Tue, 31 Jan 2023 20:46:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D1C140324
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C22D91BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99DED60BCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99DED60BCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSYj7_WoW60B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6585A60BA8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6585A60BA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167503"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167503"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:46:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595468"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595468"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:38 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:45:04 +0100
Message-Id: <20230131204506.219292-12-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197984; x=1706733984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M6H0f1Rtt+98m9elm8SWHGThzcFqiBpBBq0RtqOnZI0=;
 b=nQkPT/opODfmiDf0aPd5CbpPQaIeWq4FPYl5u/x11DJcYpWMO1t8ln96
 ehxYb/uS2irPu3CJz7rfTds0027lSs+/E0hvs2jYVzYAuPGZJGfMAjvFz
 5HatQjQS+yjj6g1XIoErWSjbeEtVflKaqLLd0upReX2h9HQdII8km4RLA
 M5ZvWWyoq8nPd/uVK8MrSpDNjY7dLySOQ6YBdF0UfB8iw/z6hPfpgNk+x
 UJbIqsfmKtUG+jEGyQD7n1Dt1XQ8JtCmXJ4DXos5d9DXJiwIQME7ChAYl
 yLh3CAPllW04g2OcT4mCBAieJNg2FrLK+umgkyFa+wBTpyaS4GAwQlGrS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nQkPT/op
Subject: [Intel-wired-lan] [PATCH bpf-next 11/13] ice: add support for XDP
 multi-buffer on Tx side
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Similarly as for Rx side in previous patch, logic on XDP Tx in ice
driver needs to be adjusted for multi-buffer support. Specifically, the
way how HW Tx descriptors are produced and cleaned.

Currently, XDP_TX works on strict ring boundaries, meaning it sets RS
bit (on producer side) / looks up DD bit (on consumer/cleaning side)
every quarter of the ring. It means that if for example multi buffer
frame would span across the ring quarter boundary (say that frame
consists of 4 frames and we start from 62 descriptor where ring is sized
to 256 entries), RS bit would be produced in the middle of multi buffer
frame, which would be a broken behavior as it needs to be set on the
last descriptor of the frame.

To make it work, set RS bit at the last descriptor from the batch of
frames that XDP_TX action was used on and make the first entry remember
the index of last descriptor with RS bit set. This way, cleaning side
can take the index of descriptor with RS bit, look up DD bit's presence
and clean from first entry to last.

In order to clean up the code base introduce the common ice_set_rs_bit()
which will return index of descriptor that got RS bit produced on so
that standard driver can store this within proper ice_tx_buf and ZC
driver can simply ignore return value.

Co-developed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  14 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  12 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 230 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  23 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  16 +-
 5 files changed, 199 insertions(+), 96 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 98f42b20636a..38c6bd615127 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -578,7 +578,7 @@ ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	case XDP_TX:
 		if (static_branch_unlikely(&ice_xdp_locking_key))
 			spin_lock(&xdp_ring->tx_lock);
-		ret = ice_xmit_xdp_ring(xdp->data, xdp->data_end - xdp->data, xdp_ring);
+		ret = __ice_xmit_xdp_ring(xdp, xdp_ring);
 		if (static_branch_unlikely(&ice_xdp_locking_key))
 			spin_unlock(&xdp_ring->tx_lock);
 		if (ret == ICE_XDP_CONSUMED)
@@ -625,6 +625,7 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	unsigned int queue_index = smp_processor_id();
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_tx_ring *xdp_ring;
+	struct ice_tx_buf *tx_buf;
 	int nxmit = 0, i;
 
 	if (test_bit(ICE_VSI_DOWN, vsi->state))
@@ -647,16 +648,18 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 		xdp_ring = vsi->xdp_rings[queue_index];
 	}
 
+	tx_buf = &xdp_ring->tx_buf[xdp_ring->next_to_use];
 	for (i = 0; i < n; i++) {
 		struct xdp_frame *xdpf = frames[i];
 		int err;
 
-		err = ice_xmit_xdp_ring(xdpf->data, xdpf->len, xdp_ring);
+		err = ice_xmit_xdp_ring(xdpf, xdp_ring);
 		if (err != ICE_XDP_TX)
 			break;
 		nxmit++;
 	}
 
+	tx_buf->rs_idx = ice_set_rs_bit(xdp_ring);
 	if (unlikely(flags & XDP_XMIT_FLUSH))
 		ice_xdp_ring_update_tail(xdp_ring);
 
@@ -1136,6 +1139,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	u32 cnt = rx_ring->count;
 	u32 cached_ntc = ntc;
 	u32 xdp_xmit = 0;
+	u32 cached_ntu;
 	bool failure;
 	u32 first;
 
@@ -1145,8 +1149,10 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 #endif
 
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
-	if (xdp_prog)
+	if (xdp_prog) {
 		xdp_ring = rx_ring->xdp_ring;
+		cached_ntu = xdp_ring->next_to_use;
+	}
 
 	/* start the loop to process Rx packets bounded by 'budget' */
 	while (likely(total_rx_pkts < (unsigned int)budget)) {
@@ -1295,7 +1301,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	failure = ice_alloc_rx_bufs(rx_ring, ICE_RX_DESC_UNUSED(rx_ring));
 
 	if (xdp_xmit)
-		ice_finalize_xdp_rx(xdp_ring, xdp_xmit);
+		ice_finalize_xdp_rx(xdp_ring, xdp_xmit, cached_ntu);
 
 	if (rx_ring->ring_stats)
 		ice_update_rx_ring_stats(rx_ring, total_rx_pkts,
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 26624723352b..55f47c560981 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -150,13 +150,19 @@ static inline int ice_skb_pad(void)
 #define ICE_TXD_LAST_DESC_CMD (ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS)
 
 struct ice_tx_buf {
-	struct ice_tx_desc *next_to_watch;
+	union {
+		struct ice_tx_desc *next_to_watch;
+		u32 rs_idx;
+	};
 	union {
 		struct sk_buff *skb;
 		void *raw_buf; /* used for XDP */
 	};
 	unsigned int bytecount;
-	unsigned short gso_segs;
+	union {
+		unsigned int gso_segs;
+		unsigned int nr_frags; /* used for mbuf XDP */
+	};
 	u32 tx_flags;
 	DEFINE_DMA_UNMAP_LEN(len);
 	DEFINE_DMA_UNMAP_ADDR(dma);
@@ -343,6 +349,7 @@ struct ice_tx_ring {
 	u16 reg_idx;			/* HW register index of the ring */
 	u16 count;			/* Number of descriptors */
 	u16 q_index;			/* Queue number of ring */
+	u16 xdp_tx_active;
 	/* stats structs */
 	struct ice_ring_stats *ring_stats;
 	/* CL3 - 3rd cacheline starts here */
@@ -353,7 +360,6 @@ struct ice_tx_ring {
 	spinlock_t tx_lock;
 	u32 txq_teid;			/* Added Tx queue TEID */
 	/* CL4 - 4th cacheline starts here */
-	u16 xdp_tx_active;
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 25f04266c668..3dcc40b96b58 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -220,112 +220,191 @@ ice_receive_skb(struct ice_rx_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
 	napi_gro_receive(&rx_ring->q_vector->napi, skb);
 }
 
+/**
+ * ice_clean_xdp_tx_buf - Free and unmap XDP Tx buffer
+ * @xdp_ring: XDP Tx ring
+ * @tx_buf: Tx buffer to clean
+ */
+static void
+ice_clean_xdp_tx_buf(struct ice_tx_ring *xdp_ring, struct ice_tx_buf *tx_buf)
+{
+	dma_unmap_single(xdp_ring->dev, dma_unmap_addr(tx_buf, dma),
+			 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
+	dma_unmap_len_set(tx_buf, len, 0);
+	xdp_ring->xdp_tx_active--;
+	page_frag_free(tx_buf->raw_buf);
+	tx_buf->raw_buf = NULL;
+}
+
 /**
  * ice_clean_xdp_irq - Reclaim resources after transmit completes on XDP ring
  * @xdp_ring: XDP ring to clean
  */
-static void ice_clean_xdp_irq(struct ice_tx_ring *xdp_ring)
+static u32 ice_clean_xdp_irq(struct ice_tx_ring *xdp_ring)
 {
-	unsigned int total_bytes = 0, total_pkts = 0;
-	u16 tx_thresh = ICE_RING_QUARTER(xdp_ring);
-	u16 ntc = xdp_ring->next_to_clean;
-	struct ice_tx_desc *next_dd_desc;
-	u16 next_dd = xdp_ring->next_dd;
-	struct ice_tx_buf *tx_buf;
-	int i;
+	int total_bytes = 0, total_pkts = 0;
+	u32 ntc = xdp_ring->next_to_clean;
+	struct ice_tx_desc *tx_desc;
+	u32 cnt = xdp_ring->count;
+	u32 ready_frames = 0;
+	u32 frags;
+	u32 idx;
+	u32 ret;
+
+	idx = xdp_ring->tx_buf[ntc].rs_idx;
+	tx_desc = ICE_TX_DESC(xdp_ring, idx);
+	if (tx_desc->cmd_type_offset_bsz &
+	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE)) {
+		if (idx >= ntc)
+			ready_frames = idx - ntc + 1;
+		else
+			ready_frames = idx + cnt - ntc + 1;
+	}
 
-	next_dd_desc = ICE_TX_DESC(xdp_ring, next_dd);
-	if (!(next_dd_desc->cmd_type_offset_bsz &
-	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE)))
-		return;
+	if (!ready_frames)
+		return 0;
+	ret = ready_frames;
 
-	for (i = 0; i < tx_thresh; i++) {
-		tx_buf = &xdp_ring->tx_buf[ntc];
+	while (ready_frames) {
+		struct ice_tx_buf *tx_buf = &xdp_ring->tx_buf[ntc];
 
+		/* bytecount holds size of head + frags */
 		total_bytes += tx_buf->bytecount;
-		/* normally tx_buf->gso_segs was taken but at this point
-		 * it's always 1 for us
-		 */
+		frags = tx_buf->nr_frags;
 		total_pkts++;
+		/* count head + frags */
+		ready_frames -= frags + 1;
 
-		page_frag_free(tx_buf->raw_buf);
-		dma_unmap_single(xdp_ring->dev, dma_unmap_addr(tx_buf, dma),
-				 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
-		dma_unmap_len_set(tx_buf, len, 0);
-		tx_buf->raw_buf = NULL;
-
+		ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
 		ntc++;
-		if (ntc >= xdp_ring->count)
+		if (ntc == cnt)
 			ntc = 0;
+
+		for (int i = 0; i < frags; i++) {
+			tx_buf = &xdp_ring->tx_buf[ntc];
+
+			ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
+			ntc++;
+			if (ntc == cnt)
+				ntc = 0;
+		}
 	}
 
-	next_dd_desc->cmd_type_offset_bsz = 0;
-	xdp_ring->next_dd = xdp_ring->next_dd + tx_thresh;
-	if (xdp_ring->next_dd > xdp_ring->count)
-		xdp_ring->next_dd = tx_thresh - 1;
+	tx_desc->cmd_type_offset_bsz = 0;
 	xdp_ring->next_to_clean = ntc;
 	ice_update_tx_ring_stats(xdp_ring, total_pkts, total_bytes);
+
+	return ret;
 }
 
 /**
- * ice_xmit_xdp_ring - submit single packet to XDP ring for transmission
- * @data: packet data pointer
- * @size: packet data size
+ * __ice_xmit_xdp_ring - submit frame to XDP ring for transmission
+ * @xdp: XDP buffer to be placed onto Tx descriptors
  * @xdp_ring: XDP ring for transmission
  */
-int ice_xmit_xdp_ring(void *data, u16 size, struct ice_tx_ring *xdp_ring)
+int __ice_xmit_xdp_ring(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring)
 {
-	u16 tx_thresh = ICE_RING_QUARTER(xdp_ring);
-	u16 i = xdp_ring->next_to_use;
+	struct skb_shared_info *sinfo = NULL;
+	u32 size = xdp->data_end - xdp->data;
+	struct device *dev = xdp_ring->dev;
+	u32 ntu = xdp_ring->next_to_use;
 	struct ice_tx_desc *tx_desc;
+	struct ice_tx_buf *tx_head;
 	struct ice_tx_buf *tx_buf;
-	dma_addr_t dma;
+	u32 cnt = xdp_ring->count;
+	void *data = xdp->data;
+	u32 nr_frags = 0;
+	u32 free_space;
+	u32 frag = 0;
+
+	free_space = ICE_DESC_UNUSED(xdp_ring);
+
+	if (ICE_DESC_UNUSED(xdp_ring) < ICE_RING_QUARTER(xdp_ring))
+		free_space += ice_clean_xdp_irq(xdp_ring);
+
+	if (unlikely(xdp_buff_has_frags(xdp))) {
+		sinfo = xdp_get_shared_info_from_buff(xdp);
+		nr_frags = sinfo->nr_frags;
+		if (free_space < nr_frags + 1) {
+			xdp_ring->ring_stats->tx_stats.tx_busy++;
+			return ICE_XDP_CONSUMED;
+		}
+	}
 
-	if (ICE_DESC_UNUSED(xdp_ring) < tx_thresh)
-		ice_clean_xdp_irq(xdp_ring);
+	tx_desc = ICE_TX_DESC(xdp_ring, ntu);
+	tx_head = &xdp_ring->tx_buf[ntu];
+	tx_buf = tx_head;
 
-	if (!unlikely(ICE_DESC_UNUSED(xdp_ring))) {
-		xdp_ring->ring_stats->tx_stats.tx_busy++;
-		return ICE_XDP_CONSUMED;
-	}
+	for (;;) {
+		dma_addr_t dma;
 
-	dma = dma_map_single(xdp_ring->dev, data, size, DMA_TO_DEVICE);
-	if (dma_mapping_error(xdp_ring->dev, dma))
-		return ICE_XDP_CONSUMED;
+		dma = dma_map_single(dev, data, size, DMA_TO_DEVICE);
+		if (dma_mapping_error(dev, dma))
+			goto dma_unmap;
 
-	tx_buf = &xdp_ring->tx_buf[i];
-	tx_buf->bytecount = size;
-	tx_buf->gso_segs = 1;
-	tx_buf->raw_buf = data;
+		/* record length, and DMA address */
+		dma_unmap_len_set(tx_buf, len, size);
+		dma_unmap_addr_set(tx_buf, dma, dma);
 
-	/* record length, and DMA address */
-	dma_unmap_len_set(tx_buf, len, size);
-	dma_unmap_addr_set(tx_buf, dma, dma);
+		tx_desc->buf_addr = cpu_to_le64(dma);
+		tx_desc->cmd_type_offset_bsz = ice_build_ctob(0, 0, size, 0);
+		tx_buf->raw_buf = data;
 
-	tx_desc = ICE_TX_DESC(xdp_ring, i);
-	tx_desc->buf_addr = cpu_to_le64(dma);
-	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TX_DESC_CMD_EOP, 0,
-						      size, 0);
+		ntu++;
+		if (ntu == cnt)
+			ntu = 0;
 
-	xdp_ring->xdp_tx_active++;
-	i++;
-	if (i == xdp_ring->count) {
-		i = 0;
-		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_rs);
-		tx_desc->cmd_type_offset_bsz |=
-			cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
-		xdp_ring->next_rs = tx_thresh - 1;
-	}
-	xdp_ring->next_to_use = i;
+		if (frag == nr_frags)
+			break;
+
+		tx_desc = ICE_TX_DESC(xdp_ring, ntu);
+		tx_buf = &xdp_ring->tx_buf[ntu];
 
-	if (i > xdp_ring->next_rs) {
-		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_rs);
-		tx_desc->cmd_type_offset_bsz |=
-			cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
-		xdp_ring->next_rs += tx_thresh;
+		data = skb_frag_address(&sinfo->frags[frag]);
+		size = skb_frag_size(&sinfo->frags[frag]);
+		frag++;
 	}
 
+	/* store info about bytecount and frag count in first desc */
+	tx_head->bytecount = xdp_get_buff_len(xdp);
+	tx_head->nr_frags = nr_frags;
+
+	/* update last descriptor from a frame with EOP */
+	tx_desc->cmd_type_offset_bsz |=
+		cpu_to_le64(ICE_TX_DESC_CMD_EOP << ICE_TXD_QW1_CMD_S);
+
+	xdp_ring->xdp_tx_active++;
+	xdp_ring->next_to_use = ntu;
+
 	return ICE_XDP_TX;
+
+dma_unmap:
+	for (;;) {
+		tx_buf = &xdp_ring->tx_buf[ntu];
+		dma_unmap_page(dev, dma_unmap_addr(tx_buf, dma),
+			       dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
+		dma_unmap_len_set(tx_buf, len, 0);
+		if (tx_buf == tx_head)
+			break;
+
+		if (!ntu)
+			ntu += cnt;
+		ntu--;
+	}
+	return ICE_XDP_CONSUMED;
+}
+
+/**
+ * ice_xmit_xdp_ring - submit frame to XDP ring for transmission
+ * @xdpf: XDP frame that will be converted to XDP buff
+ * @xdp_ring: XDP ring for transmission
+ */
+int ice_xmit_xdp_ring(struct xdp_frame *xdpf, struct ice_tx_ring *xdp_ring)
+{
+	struct xdp_buff xdp;
+
+	xdp_convert_frame_to_buff(xdpf, &xdp);
+	return __ice_xmit_xdp_ring(&xdp, xdp_ring);
 }
 
 /**
@@ -342,7 +421,7 @@ int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring)
 	if (unlikely(!xdpf))
 		return ICE_XDP_CONSUMED;
 
-	return ice_xmit_xdp_ring(xdpf->data, xdpf->len, xdp_ring);
+	return ice_xmit_xdp_ring(xdpf, xdp_ring);
 }
 
 /**
@@ -354,14 +433,21 @@ int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring)
  * should be called when a batch of packets has been processed in the
  * napi loop.
  */
-void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res)
+void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res,
+			 u32 first_idx)
 {
+	struct ice_tx_buf *tx_buf = &xdp_ring->tx_buf[first_idx];
+
 	if (xdp_res & ICE_XDP_REDIR)
 		xdp_do_flush_map();
 
 	if (xdp_res & ICE_XDP_TX) {
 		if (static_branch_unlikely(&ice_xdp_locking_key))
 			spin_lock(&xdp_ring->tx_lock);
+		/* store index of descriptor with RS bit set in the first
+		 * ice_tx_buf of given NAPI batch
+		 */
+		tx_buf->rs_idx = ice_set_rs_bit(xdp_ring);
 		ice_xdp_ring_update_tail(xdp_ring);
 		if (static_branch_unlikely(&ice_xdp_locking_key))
 			spin_unlock(&xdp_ring->tx_lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index 1fdc37095767..ea977f283c22 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -122,9 +122,28 @@ static inline void ice_xdp_ring_update_tail(struct ice_tx_ring *xdp_ring)
 	writel_relaxed(xdp_ring->next_to_use, xdp_ring->tail);
 }
 
-void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res);
+/**
+ * ice_set_rs_bit - set RS bit on last produced descriptor (one behind current NTU)
+ * @xdp_ring: XDP ring to produce the HW Tx descriptors on
+ *
+ * returns index of descriptor that had RS bit produced on
+ */
+static inline u32 ice_set_rs_bit(const struct ice_tx_ring *xdp_ring)
+{
+	u32 rs_idx = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : xdp_ring->count - 1;
+	struct ice_tx_desc *tx_desc;
+
+	tx_desc = ICE_TX_DESC(xdp_ring, rs_idx);
+	tx_desc->cmd_type_offset_bsz |=
+		cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
+
+	return rs_idx;
+}
+
+void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res, u32 first_idx);
 int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring);
-int ice_xmit_xdp_ring(void *data, u16 size, struct ice_tx_ring *xdp_ring);
+int ice_xmit_xdp_ring(struct xdp_frame *xdpf, struct ice_tx_ring *xdp_ring);
+int __ice_xmit_xdp_ring(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring);
 void ice_release_rx_desc(struct ice_rx_ring *rx_ring, u16 val);
 void
 ice_process_skb_fields(struct ice_rx_ring *rx_ring,
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 7105de6fb344..b1b419cdadd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -760,7 +760,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 	if (entries_to_alloc > ICE_RING_QUARTER(rx_ring))
 		failure |= !ice_alloc_rx_bufs_zc(rx_ring, entries_to_alloc);
 
-	ice_finalize_xdp_rx(xdp_ring, xdp_xmit);
+	ice_finalize_xdp_rx(xdp_ring, xdp_xmit, 0);
 	ice_update_rx_ring_stats(rx_ring, total_rx_packets, total_rx_bytes);
 
 	if (xsk_uses_need_wakeup(rx_ring->xsk_pool)) {
@@ -917,20 +917,6 @@ static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *d
 		ice_xmit_pkt(xdp_ring, &descs[i], total_bytes);
 }
 
-/**
- * ice_set_rs_bit - set RS bit on last produced descriptor (one behind current NTU)
- * @xdp_ring: XDP ring to produce the HW Tx descriptors on
- */
-static void ice_set_rs_bit(struct ice_tx_ring *xdp_ring)
-{
-	u16 ntu = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : xdp_ring->count - 1;
-	struct ice_tx_desc *tx_desc;
-
-	tx_desc = ICE_TX_DESC(xdp_ring, ntu);
-	tx_desc->cmd_type_offset_bsz |=
-		cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
-}
-
 /**
  * ice_xmit_zc - take entries from XSK Tx ring and place them onto HW Tx ring
  * @xdp_ring: XDP ring to produce the HW Tx descriptors on
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
