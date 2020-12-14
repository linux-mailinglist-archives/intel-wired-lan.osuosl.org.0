Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B332D9ACF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 16:23:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CF0D8744F;
	Mon, 14 Dec 2020 15:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AL0PArKHA72T; Mon, 14 Dec 2020 15:23:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74D9C87482;
	Mon, 14 Dec 2020 15:23:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A75401BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A2BFE8747B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QZzRTxdZ66DF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 15:23:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E3F5E8744F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:04 +0000 (UTC)
IronPort-SDR: cchk6CwFXltJn0hDcKpqP0+UjbGAztHOwzSx25N372NV504gDObWW45wZGCLT6dVucSIFAGjrj
 11xD3imjkTQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="236308504"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="236308504"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:23:04 -0800
IronPort-SDR: LqhIPoA+gUwfUZLbCGMDKM/OzA/rWsF/ebAxKGYPvr72IC5bpKm/58hT9H6KaEdflrcnKKeBZE
 k2PSrXleQpRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="411285733"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2020 07:23:02 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Dec 2020 16:13:05 +0100
Message-Id: <20201214151308.15275-6-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
References: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 5/8] ice: move skb pointer
 from rx_buf to rx_ring
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Similar thing has been done in i40e, as there is no real need for having
the sk_buff pointer in each rx_buf. Non-eop frames can be simply handled
on that pointer moved upwards to rx_ring.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 29 ++++++++++-------------
 drivers/net/ethernet/intel/ice/ice_txrx.h |  2 +-
 2 files changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8b5d23436904..0ad89ee48c09 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -375,6 +375,11 @@ void ice_clean_rx_ring(struct ice_ring *rx_ring)
 	if (!rx_ring->rx_buf)
 		return;
 
+	if (rx_ring->skb) {
+		dev_kfree_skb(rx_ring->skb);
+		rx_ring->skb = NULL;
+	}
+
 	if (rx_ring->xsk_pool) {
 		ice_xsk_clean_rx_ring(rx_ring);
 		goto rx_skip_free;
@@ -384,10 +389,6 @@ void ice_clean_rx_ring(struct ice_ring *rx_ring)
 	for (i = 0; i < rx_ring->count; i++) {
 		struct ice_rx_buf *rx_buf = &rx_ring->rx_buf[i];
 
-		if (rx_buf->skb) {
-			dev_kfree_skb(rx_buf->skb);
-			rx_buf->skb = NULL;
-		}
 		if (!rx_buf->page)
 			continue;
 
@@ -857,21 +858,18 @@ ice_reuse_rx_page(struct ice_ring *rx_ring, struct ice_rx_buf *old_buf)
 /**
  * ice_get_rx_buf - Fetch Rx buffer and synchronize data for use
  * @rx_ring: Rx descriptor ring to transact packets on
- * @skb: skb to be used
  * @size: size of buffer to add to skb
  *
  * This function will pull an Rx buffer from the ring and synchronize it
  * for use by the CPU.
  */
 static struct ice_rx_buf *
-ice_get_rx_buf(struct ice_ring *rx_ring, struct sk_buff **skb,
-	       const unsigned int size)
+ice_get_rx_buf(struct ice_ring *rx_ring, const unsigned int size)
 {
 	struct ice_rx_buf *rx_buf;
 
 	rx_buf = &rx_ring->rx_buf[rx_ring->next_to_clean];
 	prefetchw(rx_buf->page);
-	*skb = rx_buf->skb;
 
 	if (!size)
 		return rx_buf;
@@ -1030,29 +1028,24 @@ static void ice_put_rx_buf(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
 
 	/* clear contents of buffer_info */
 	rx_buf->page = NULL;
-	rx_buf->skb = NULL;
 }
 
 /**
  * ice_is_non_eop - process handling of non-EOP buffers
  * @rx_ring: Rx ring being processed
  * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
  *
  * If the buffer is an EOP buffer, this function exits returning false,
  * otherwise return true indicating that this is in fact a non-EOP buffer.
  */
 static bool
-ice_is_non_eop(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
-	       struct sk_buff *skb)
+ice_is_non_eop(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc)
 {
 	/* if we are the last buffer then there is nothing else to do */
 #define ICE_RXD_EOF BIT(ICE_RX_FLEX_DESC_STATUS0_EOF_S)
 	if (likely(ice_test_staterr(rx_desc, ICE_RXD_EOF)))
 		return false;
 
-	/* place skb in next buffer to be received */
-	rx_ring->rx_buf[rx_ring->next_to_clean].skb = skb;
 	rx_ring->rx_stats.non_eop_descs++;
 
 	return true;
@@ -1075,6 +1068,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
 	u16 cleaned_count = ICE_DESC_UNUSED(rx_ring);
 	unsigned int xdp_res, xdp_xmit = 0;
+	struct sk_buff *skb = rx_ring->skb;
 	struct bpf_prog *xdp_prog = NULL;
 	struct xdp_buff xdp;
 	bool failure;
@@ -1089,7 +1083,6 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 	while (likely(total_rx_pkts < (unsigned int)budget)) {
 		union ice_32b_rx_flex_desc *rx_desc;
 		struct ice_rx_buf *rx_buf;
-		struct sk_buff *skb;
 		unsigned int size;
 		u16 stat_err_bits;
 		u16 vlan_tag = 0;
@@ -1123,7 +1116,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 			ICE_RX_FLX_DESC_PKT_LEN_M;
 
 		/* retrieve a buffer from the ring */
-		rx_buf = ice_get_rx_buf(rx_ring, &skb, size);
+		rx_buf = ice_get_rx_buf(rx_ring, size);
 
 		if (!size) {
 			xdp.data = NULL;
@@ -1186,7 +1179,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		cleaned_count++;
 
 		/* skip if it is NOP desc */
-		if (ice_is_non_eop(rx_ring, rx_desc, skb))
+		if (ice_is_non_eop(rx_ring, rx_desc))
 			continue;
 
 		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
@@ -1216,6 +1209,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 
 		/* send completed skb up the stack */
 		ice_receive_skb(rx_ring, skb, vlan_tag);
+		skb = NULL;
 
 		/* update budget accounting */
 		total_rx_pkts++;
@@ -1226,6 +1220,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 
 	if (xdp_prog)
 		ice_finalize_xdp_rx(rx_ring, xdp_xmit);
+	rx_ring->skb = skb;
 
 	ice_update_rx_ring_stats(rx_ring, total_rx_pkts, total_rx_bytes);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index ff1a1cbd078e..c77dbbb760cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -165,7 +165,6 @@ struct ice_tx_offload_params {
 struct ice_rx_buf {
 	union {
 		struct {
-			struct sk_buff *skb;
 			dma_addr_t dma;
 			struct page *page;
 			unsigned int page_offset;
@@ -298,6 +297,7 @@ struct ice_ring {
 	struct xsk_buff_pool *xsk_pool;
 	/* CL3 - 3rd cacheline starts here */
 	struct xdp_rxq_info xdp_rxq;
+	struct sk_buff *skb;
 	/* CLX - the below items are only accessed infrequently and should be
 	 * in their own cache line if possible
 	 */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
