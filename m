Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D93D2D1BD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:39:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A5B8848AA;
	Wed,  9 Oct 2019 22:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hdXwlGcCVUkC; Wed,  9 Oct 2019 22:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD8D68450D;
	Wed,  9 Oct 2019 22:39:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C9BA1BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 09457883D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iM4bZyus3xwS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:39:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2C588835E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:39:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="184218359"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 09 Oct 2019 15:39:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:23 -0700
Message-Id: <20191009140925.13997-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140925.13997-1-anthony.l.nguyen@intel.com>
References: <20191009140925.13997-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S30 7/9] ice: introduce frame padding
 computation logic
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Take into account the underlying architecture specific settings and
based on that calculate the possible padding that can be supplied.
Typically, for x86 and standard MTU size we will end up with 192 bytes
of headroom. This is the same behavior as our other drivers have and we
can dedicate it for XDP purposes.

Furthermore, introduce the Rx ring flag for indicating whether build_skb
is used on particular. Based on that invoke the routines for padding
calculation.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    |  6 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  3 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 42 +++++-----
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 81 ++++++++++++++++++++
 5 files changed, 114 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 4db042e88476..afc70515bff0 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -406,6 +406,12 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	if (vsi->type == ICE_VSI_VF)
 		return 0;
 
+	/* configure Rx buffer alignment */
+	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags))
+		ice_clear_ring_build_skb_ena(ring);
+	else
+		ice_set_ring_build_skb_ena(ring);
+
 	/* init queue specific tail register */
 	ring->tail = hw->hw_addr + QRX_TAIL(pf_q);
 	writel(0, ring->tail);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c1737625bbc2..7e779060069c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -624,7 +624,7 @@ static int ice_lbtest_receive_frames(struct ice_ring *rx_ring)
 			continue;
 
 		rx_buf = &rx_ring->rx_buf[i];
-		received_buf = page_address(rx_buf->page);
+		received_buf = page_address(rx_buf->page) + rx_buf->page_offset;
 
 		if (ice_lbtest_check_frame(received_buf))
 			valid_frames++;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d54ba4bbebf8..f69a1a59d70e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1229,7 +1229,8 @@ void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
 		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
 		vsi->rx_buf_len = ICE_RXBUF_2048;
 #if (PAGE_SIZE < 8192)
-	} else if (vsi->netdev->mtu <= ETH_DATA_LEN) {
+	} else if (!ICE_2K_TOO_SMALL_WITH_PADDING &&
+		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
 		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
 		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 63fe73c5097c..71c4464934af 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -415,7 +415,12 @@ int ice_setup_rx_ring(struct ice_ring *rx_ring)
  */
 static unsigned int ice_rx_offset(struct ice_ring *rx_ring)
 {
-	return ice_is_xdp_ena_vsi(rx_ring->vsi) ? XDP_PACKET_HEADROOM : 0;
+	if (ice_ring_uses_build_skb(rx_ring))
+		return ICE_SKB_PAD;
+	else if (ice_is_xdp_ena_vsi(rx_ring->vsi))
+		return XDP_PACKET_HEADROOM;
+
+	return 0;
 }
 
 /**
@@ -710,7 +715,7 @@ ice_add_rx_frag(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
 		struct sk_buff *skb, unsigned int size)
 {
 #if (PAGE_SIZE >= 8192)
-	unsigned int truesize = SKB_DATA_ALIGN(size);
+	unsigned int truesize = SKB_DATA_ALIGN(size + ice_rx_offset(rx_ring));
 #else
 	unsigned int truesize = ice_rx_pg_size(rx_ring) / 2;
 #endif
@@ -1008,27 +1013,28 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 
 		xdp_res = ice_run_xdp(rx_ring, &xdp, xdp_prog);
 		rcu_read_unlock();
-		if (xdp_res) {
-			if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR)) {
-				unsigned int truesize;
+		if (!xdp_res)
+			goto construct_skb;
+		if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR)) {
+			unsigned int truesize;
 
 #if (PAGE_SIZE < 8192)
-				truesize = ice_rx_pg_size(rx_ring) / 2;
+			truesize = ice_rx_pg_size(rx_ring) / 2;
 #else
-				truesize = SKB_DATA_ALIGN(size);
+			truesize = SKB_DATA_ALIGN(ice_rx_offset(rx_ring) +
+						  size);
 #endif
-				xdp_xmit |= xdp_res;
-				ice_rx_buf_adjust_pg_offset(rx_buf, truesize);
-			} else {
-				rx_buf->pagecnt_bias++;
-			}
-			total_rx_bytes += size;
-			total_rx_pkts++;
-
-			cleaned_count++;
-			ice_put_rx_buf(rx_ring, rx_buf);
-			continue;
+			xdp_xmit |= xdp_res;
+			ice_rx_buf_adjust_pg_offset(rx_buf, truesize);
+		} else {
+			rx_buf->pagecnt_bias++;
 		}
+		total_rx_bytes += size;
+		total_rx_pkts++;
+
+		cleaned_count++;
+		ice_put_rx_buf(rx_ring, rx_buf);
+		continue;
 construct_skb:
 		if (skb)
 			ice_add_rx_frag(rx_ring, rx_buf, skb, size);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index b37154c577fc..63cc3f764911 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -26,6 +26,20 @@
 #define ICE_RX_BUF_WRITE	16	/* Must be power of 2 */
 #define ICE_MAX_TXQ_PER_TXQG	128
 
+/* Attempt to maximize the headroom available for incoming frames. We use a 2K
+ * buffer for MTUs <= 1500 and need 1536/1534 to store the data for the frame.
+ * This leaves us with 512 bytes of room.  From that we need to deduct the
+ * space needed for the shared info and the padding needed to IP align the
+ * frame.
+ *
+ * Note: For cache line sizes 256 or larger this value is going to end
+ *	 up negative.  In these cases we should fall back to the legacy
+ *	 receive path.
+ */
+#if (PAGE_SIZE < 8192)
+#define ICE_2K_TOO_SMALL_WITH_PADDING \
+((NET_SKB_PAD + ICE_RXBUF_1536) > SKB_WITH_OVERHEAD(ICE_RXBUF_2048))
+
 static inline __le64
 ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
 {
@@ -36,6 +50,57 @@ ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
 			   (td_tag    << ICE_TXD_QW1_L2TAG1_S));
 }
 
+/**
+ * ice_compute_pad - compute the padding
+ * rx_buf_len: buffer length
+ *
+ * Figure out the size of half page based on given buffer length and
+ * then subtract the skb_shared_info followed by subtraction of the
+ * actual buffer length; this in turn results in the actual space that
+ * is left for padding usage
+ */
+static inline int ice_compute_pad(int rx_buf_len)
+{
+	int half_page_size;
+
+	half_page_size = ALIGN(rx_buf_len, PAGE_SIZE / 2);
+	return SKB_WITH_OVERHEAD(half_page_size) - rx_buf_len;
+}
+
+/**
+ * ice_skb_pad - determine the padding that we can supply
+ *
+ * Figure out the right Rx buffer size and based on that calculate the
+ * padding
+ */
+static inline int ice_skb_pad(void)
+{
+	int rx_buf_len;
+
+	/* If a 2K buffer cannot handle a standard Ethernet frame then
+	 * optimize padding for a 3K buffer instead of a 1.5K buffer.
+	 *
+	 * For a 3K buffer we need to add enough padding to allow for
+	 * tailroom due to NET_IP_ALIGN possibly shifting us out of
+	 * cache-line alignment.
+	 */
+	if (ICE_2K_TOO_SMALL_WITH_PADDING)
+		rx_buf_len = ICE_RXBUF_3072 + SKB_DATA_ALIGN(NET_IP_ALIGN);
+	else
+		rx_buf_len = ICE_RXBUF_1536;
+
+	/* if needed make room for NET_IP_ALIGN */
+	rx_buf_len -= NET_IP_ALIGN;
+
+	return ice_compute_pad(rx_buf_len);
+}
+
+#define ICE_SKB_PAD ice_skb_pad()
+#else
+#define ICE_2K_TOO_SMALL_WITH_PADDING false
+#define ICE_SKB_PAD (NET_SKB_PAD + NET_IP_ALIGN)
+#endif
+
 /* We are assuming that the cache line is always 64 Bytes here for ice.
  * In order to make sure that is a correct assumption there is a check in probe
  * to print a warning if the read from GLPCI_CNF2 tells us that the cache line
@@ -241,6 +306,7 @@ struct ice_ring {
 	 * in their own cache line if possible
 	 */
 #define ICE_TX_FLAGS_RING_XDP		BIT(0)
+#define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
 	u8 flags;
 	dma_addr_t dma;			/* physical address of ring */
 	unsigned int size;		/* length of descriptor ring in bytes */
@@ -249,6 +315,21 @@ struct ice_ring {
 	u8 dcb_tc;			/* Traffic class of ring */
 } ____cacheline_internodealigned_in_smp;
 
+static inline bool ice_ring_uses_build_skb(struct ice_ring *ring)
+{
+	return !!(ring->flags & ICE_RX_FLAGS_RING_BUILD_SKB);
+}
+
+static inline void ice_set_ring_build_skb_ena(struct ice_ring *ring)
+{
+	ring->flags |= ICE_RX_FLAGS_RING_BUILD_SKB;
+}
+
+static inline void ice_clear_ring_build_skb_ena(struct ice_ring *ring)
+{
+	ring->flags &= ~ICE_RX_FLAGS_RING_BUILD_SKB;
+}
+
 static inline bool ice_ring_is_xdp(struct ice_ring *ring)
 {
 	return !!(ring->flags & ICE_TX_FLAGS_RING_XDP);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
