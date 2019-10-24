Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F270E3862
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2019 18:42:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 34B78230BD;
	Thu, 24 Oct 2019 16:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1-wjExhtqXml; Thu, 24 Oct 2019 16:42:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ADA3323086;
	Thu, 24 Oct 2019 16:42:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3D271BF860
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2019 16:41:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B0D4586DE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2019 16:41:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cmpfleg3-IGR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2019 16:41:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D763870C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2019 16:41:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 09:41:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="210438731"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 24 Oct 2019 09:41:53 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Oct 2019 01:11:22 -0700
Message-Id: <20191024081125.6711-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024081125.6711-1-anthony.l.nguyen@intel.com>
References: <20191024081125.6711-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S30 v3 6/9] ice: introduce legacy Rx flag
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

Add an ethtool "legacy-rx" priv flag for toggling the Rx path. This
control knob will be mainly used for build_skb usage as well as buffer
size/MTU manipulation.

In preparation for adding build_skb support in a way that it takes
care of how we set the values of max_frame and rx_buf_len fields of
struct ice_vsi. Specifically, in this patch mentioned fields are set to
values that will allow us to provide headroom and tailroom in-place.

This can be mostly broken down onto following:
- for legacy-rx "on" ethtool control knob, old behaviour is kept;
- for standard 1500 MTU size configure the buffer of size 1536, as
  network stack is expecting the NET_SKB_PAD to be provided and
  NET_IP_ALIGN can have a non-zero value (these can be typically equal
  to 32 and 2, respectively);
- for larger MTUs go with max_frame set to 9k and configure the 3k
  buffer in case when PAGE_SIZE of underlying arch is less than 8k; 3k
  buffer is implying the need for order 1 page, so that our page
  recycling scheme can still be applied;

With that said, substitute the hardcoded ICE_RXBUF_2048 and PAGE_SIZE
values in DMA API that we're making use of with rx_ring->rx_buf_len and
ice_rx_pg_size(rx_ring). The latter is an introduced helper for
determining the page size based on its order (which was figured out via
ice_rx_pg_order). Last but not least, take care of truesize calculation.

In the followup patch the headroom/tailroom computation logic will be
introduced.

This change aligns the buffer and frame configuration with other Intel
drivers, most importantly with iavf.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 +++
 drivers/net/ethernet/intel/ice/ice_lib.c     | 22 +++++++---
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 46 ++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 13 ++++++
 5 files changed, 63 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b78ac65fa935..f48c3ab28ded 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -337,6 +337,7 @@ enum ice_pf_flags {
 	ICE_FLAG_NO_MEDIA,
 	ICE_FLAG_FW_LLDP_AGENT,
 	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds RTNL lock */
+	ICE_FLAG_LEGACY_RX,
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 42b032620f66..c1737625bbc2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -156,6 +156,7 @@ struct ice_priv_flag {
 static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 	ICE_PRIV_FLAG("link-down-on-close", ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA),
 	ICE_PRIV_FLAG("fw-lldp-agent", ICE_FLAG_FW_LLDP_AGENT),
+	ICE_PRIV_FLAG("legacy-rx", ICE_FLAG_LEGACY_RX),
 };
 
 #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
@@ -1256,6 +1257,11 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 					"Fail to enable MIB change events\n");
 		}
 	}
+	if (test_bit(ICE_FLAG_LEGACY_RX, change_flags)) {
+		/* down and up VSI so that changes of Rx cfg are reflected. */
+		ice_down(vsi);
+		ice_up(vsi);
+	}
 	clear_bit(ICE_FLAG_ETHTOOL_CTXT, pf->flags);
 	return ret;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 056ab8d3d052..d54ba4bbebf8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1225,12 +1225,22 @@ int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
  */
 void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
 {
-	if (vsi->netdev && vsi->netdev->mtu > ETH_DATA_LEN)
-		vsi->max_frame = vsi->netdev->mtu + ICE_ETH_PKT_HDR_PAD;
-	else
-		vsi->max_frame = ICE_RXBUF_2048;
-
-	vsi->rx_buf_len = ICE_RXBUF_2048;
+	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
+		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
+		vsi->rx_buf_len = ICE_RXBUF_2048;
+#if (PAGE_SIZE < 8192)
+	} else if (vsi->netdev->mtu <= ETH_DATA_LEN) {
+		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
+		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
+#endif
+	} else {
+		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
+#if (PAGE_SIZE < 8192)
+		vsi->rx_buf_len = ICE_RXBUF_3072;
+#else
+		vsi->rx_buf_len = ICE_RXBUF_2048;
+#endif
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index acf834a7130a..63fe73c5097c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -310,10 +310,11 @@ void ice_clean_rx_ring(struct ice_ring *rx_ring)
 		 */
 		dma_sync_single_range_for_cpu(dev, rx_buf->dma,
 					      rx_buf->page_offset,
-					      ICE_RXBUF_2048, DMA_FROM_DEVICE);
+					      rx_ring->rx_buf_len,
+					      DMA_FROM_DEVICE);
 
 		/* free resources associated with mapping */
-		dma_unmap_page_attrs(dev, rx_buf->dma, PAGE_SIZE,
+		dma_unmap_page_attrs(dev, rx_buf->dma, ice_rx_pg_size(rx_ring),
 				     DMA_FROM_DEVICE, ICE_RX_DMA_ATTR);
 		__page_frag_cache_drain(rx_buf->page, rx_buf->pagecnt_bias);
 
@@ -529,21 +530,21 @@ ice_alloc_mapped_page(struct ice_ring *rx_ring, struct ice_rx_buf *bi)
 	}
 
 	/* alloc new page for storage */
-	page = alloc_page(GFP_ATOMIC | __GFP_NOWARN);
+	page = dev_alloc_pages(ice_rx_pg_order(rx_ring));
 	if (unlikely(!page)) {
 		rx_ring->rx_stats.alloc_page_failed++;
 		return false;
 	}
 
 	/* map page for use */
-	dma = dma_map_page_attrs(rx_ring->dev, page, 0, PAGE_SIZE,
+	dma = dma_map_page_attrs(rx_ring->dev, page, 0, ice_rx_pg_size(rx_ring),
 				 DMA_FROM_DEVICE, ICE_RX_DMA_ATTR);
 
 	/* if mapping failed free memory back to system since
 	 * there isn't much point in holding memory we can't use
 	 */
 	if (dma_mapping_error(rx_ring->dev, dma)) {
-		__free_pages(page, 0);
+		__free_pages(page, ice_rx_pg_order(rx_ring));
 		rx_ring->rx_stats.alloc_page_failed++;
 		return false;
 	}
@@ -592,7 +593,7 @@ bool ice_alloc_rx_bufs(struct ice_ring *rx_ring, u16 cleaned_count)
 		/* sync the buffer for use by the device */
 		dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
 						 bi->page_offset,
-						 ICE_RXBUF_2048,
+						 rx_ring->rx_buf_len,
 						 DMA_FROM_DEVICE);
 
 		/* Refresh the desc even if buffer_addrs didn't change
@@ -663,9 +664,6 @@ ice_rx_buf_adjust_pg_offset(struct ice_rx_buf *rx_buf, unsigned int size)
  */
 static bool ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
 {
-#if (PAGE_SIZE >= 8192)
-	unsigned int last_offset = PAGE_SIZE - ICE_RXBUF_2048;
-#endif
 	unsigned int pagecnt_bias = rx_buf->pagecnt_bias;
 	struct page *page = rx_buf->page;
 
@@ -678,7 +676,9 @@ static bool ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
 	if (unlikely((page_count(page) - pagecnt_bias) > 1))
 		return false;
 #else
-	if (rx_buf->page_offset > last_offset)
+#define ICE_LAST_OFFSET \
+	(SKB_WITH_OVERHEAD(PAGE_SIZE) - ICE_RXBUF_2048)
+	if (rx_buf->page_offset > ICE_LAST_OFFSET)
 		return false;
 #endif /* PAGE_SIZE < 8192) */
 
@@ -696,6 +696,7 @@ static bool ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
 
 /**
  * ice_add_rx_frag - Add contents of Rx buffer to sk_buff as a frag
+ * @rx_ring: Rx descriptor ring to transact packets on
  * @rx_buf: buffer containing page to add
  * @skb: sk_buff to place the data into
  * @size: packet length from rx_desc
@@ -705,13 +706,13 @@ static bool ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
  * The function will then update the page offset.
  */
 static void
-ice_add_rx_frag(struct ice_rx_buf *rx_buf, struct sk_buff *skb,
-		unsigned int size)
+ice_add_rx_frag(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
+		struct sk_buff *skb, unsigned int size)
 {
 #if (PAGE_SIZE >= 8192)
 	unsigned int truesize = SKB_DATA_ALIGN(size);
 #else
-	unsigned int truesize = ICE_RXBUF_2048;
+	unsigned int truesize = ice_rx_pg_size(rx_ring) / 2;
 #endif
 
 	if (!size)
@@ -830,7 +831,7 @@ ice_construct_skb(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
 #if (PAGE_SIZE >= 8192)
 		unsigned int truesize = SKB_DATA_ALIGN(size);
 #else
-		unsigned int truesize = ICE_RXBUF_2048;
+		unsigned int truesize = ice_rx_pg_size(rx_ring) / 2;
 #endif
 		skb_add_rx_frag(skb, 0, rx_buf->page,
 				rx_buf->page_offset + headlen, size, truesize);
@@ -873,8 +874,9 @@ static void ice_put_rx_buf(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
 		rx_ring->rx_stats.page_reuse_count++;
 	} else {
 		/* we are not reusing the buffer so unmap it */
-		dma_unmap_page_attrs(rx_ring->dev, rx_buf->dma, PAGE_SIZE,
-				     DMA_FROM_DEVICE, ICE_RX_DMA_ATTR);
+		dma_unmap_page_attrs(rx_ring->dev, rx_buf->dma,
+				     ice_rx_pg_size(rx_ring), DMA_FROM_DEVICE,
+				     ICE_RX_DMA_ATTR);
 		__page_frag_cache_drain(rx_buf->page, rx_buf->pagecnt_bias);
 	}
 
@@ -1008,9 +1010,15 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		rcu_read_unlock();
 		if (xdp_res) {
 			if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR)) {
+				unsigned int truesize;
+
+#if (PAGE_SIZE < 8192)
+				truesize = ice_rx_pg_size(rx_ring) / 2;
+#else
+				truesize = SKB_DATA_ALIGN(size);
+#endif
 				xdp_xmit |= xdp_res;
-				ice_rx_buf_adjust_pg_offset(rx_buf,
-							    ICE_RXBUF_2048);
+				ice_rx_buf_adjust_pg_offset(rx_buf, truesize);
 			} else {
 				rx_buf->pagecnt_bias++;
 			}
@@ -1023,7 +1031,7 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		}
 construct_skb:
 		if (skb)
-			ice_add_rx_frag(rx_buf, skb, size);
+			ice_add_rx_frag(rx_ring, rx_buf, skb, size);
 		else
 			skb = ice_construct_skb(rx_ring, rx_buf, &xdp);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index d5d243b8e69f..6a6e3d2339ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -7,7 +7,9 @@
 #include "ice_type.h"
 
 #define ICE_DFLT_IRQ_WORK	256
+#define ICE_RXBUF_3072		3072
 #define ICE_RXBUF_2048		2048
+#define ICE_RXBUF_1536		1536
 #define ICE_MAX_CHAINED_RX_BUFS	5
 #define ICE_MAX_BUF_TXD		8
 #define ICE_MIN_TX_LEN		17
@@ -262,6 +264,17 @@ struct ice_ring_container {
 #define ice_for_each_ring(pos, head) \
 	for (pos = (head).ring; pos; pos = pos->next)
 
+static inline unsigned int ice_rx_pg_order(struct ice_ring *ring)
+{
+#if (PAGE_SIZE < 8192)
+	if (ring->rx_buf_len > (PAGE_SIZE / 2))
+		return 1;
+#endif
+	return 0;
+}
+
+#define ice_rx_pg_size(_ring) (PAGE_SIZE << ice_rx_pg_order(_ring))
+
 union ice_32b_rx_flex_desc;
 
 bool ice_alloc_rx_bufs(struct ice_ring *rxr, u16 cleaned_count);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
