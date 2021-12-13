Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DCD473088
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 16:31:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF55E42373;
	Mon, 13 Dec 2021 15:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aD7OxBlp_vr9; Mon, 13 Dec 2021 15:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E5DD400D8;
	Mon, 13 Dec 2021 15:31:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 572141BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4437F6F482
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSM5aIOgR-Ul for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 15:31:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65CE06F47C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639409488; x=1670945488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+lHQLv9K2BG28Gkoc4NjRolilUJSzHIHRIgA5CyHiXs=;
 b=U536jOFVc1xo3IYi56Fukhih2wiNAYcsRoxdRweQ/fc061UuJTAe3s/8
 hCgeg3RNO0nrG31cpznB/nMW9NjHQZOJUPtouuq/b9MrbCehX1M0AR8xE
 L240F65gIjZFJaSY/gnoDZJ0fO0ue+LKtiIrhs4C/Y4M4hD9JjvfkFfHq
 nCvnT+8knBfCfi5fCtn9hDx+muLSWA2C1nZ4IIOIpF2PlVfb1rDdj1Ya0
 NTRc1FzfP7flUdWeE0v0+2ezUKFxnS9sY/iLAaO/dSggxgqK9chVkyxOC
 2/ZMjzIBVi7F7axFSupT8Zbp5PegktssHjaZD6d+G2uLhCDwuJreII464 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="236286836"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="236286836"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 07:31:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="613864732"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2021 07:31:25 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Dec 2021 16:31:07 +0100
Message-Id: <20211213153111.110877-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
References: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-net 2/6] ice: xsk: allocate
 separate memory for XDP SW ring
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
Cc: elza.mathew@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, the zero-copy data path is reusing the memory region that was
initially allocated for an array of struct ice_rx_buf for its own
purposes. This is error prone as it is based on the ice_rx_buf struct
always being the same size or bigger than what the zero-copy path needs.
There can also be old values present in that array giving rise to errors
when the zero-copy path uses it.

Fix this by freeing the ice_rx_buf region and allocating a new array for
the zero-copy path that has the right length and is initialized to zero.

Fixes: 57f7f8b6bc0b ("ice: Use xdp_buf instead of rx_buf for xsk zero-copy")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 17 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++++++-----
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 33 ++++++++++++-----------
 3 files changed, 47 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1efc635cc0f5..fafe020e46ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -6,6 +6,18 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
+static bool ice_alloc_rx_buf_zc(struct ice_rx_ring *rx_ring)
+{
+	rx_ring->xdp_buf = kcalloc(rx_ring->count, sizeof(*rx_ring->xdp_buf), GFP_KERNEL);
+	return !!rx_ring->xdp_buf;
+}
+
+static bool ice_alloc_rx_buf(struct ice_rx_ring *rx_ring)
+{
+	rx_ring->rx_buf = kcalloc(rx_ring->count, sizeof(*rx_ring->rx_buf), GFP_KERNEL);
+	return !!rx_ring->rx_buf;
+}
+
 /**
  * __ice_vsi_get_qs_contig - Assign a contiguous chunk of queues to VSI
  * @qs_cfg: gathered variables needed for PF->VSI queues assignment
@@ -492,8 +504,11 @@ int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 					 ring->q_index, ring->q_vector->napi.napi_id);
 
+		kfree(ring->rx_buf);
 		ring->xsk_pool = ice_xsk_pool(ring);
 		if (ring->xsk_pool) {
+			if (!ice_alloc_rx_buf_zc(ring))
+				return -ENOMEM;
 			xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
 
 			ring->rx_buf_len =
@@ -508,6 +523,8 @@ int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			dev_info(dev, "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
 				 ring->q_index);
 		} else {
+			if (!ice_alloc_rx_buf(ring))
+				return -ENOMEM;
 			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq))
 				/* coverity[check_return] */
 				xdp_rxq_info_reg(&ring->xdp_rxq,
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index bc3ba19dc88f..dccf09eefc75 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -419,7 +419,10 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 	}
 
 rx_skip_free:
-	memset(rx_ring->rx_buf, 0, sizeof(*rx_ring->rx_buf) * rx_ring->count);
+	if (rx_ring->xsk_pool)
+		memset(rx_ring->xdp_buf, 0, array_size(rx_ring->count, sizeof(*rx_ring->xdp_buf)));
+	else
+		memset(rx_ring->rx_buf, 0, array_size(rx_ring->count, sizeof(*rx_ring->rx_buf)));
 
 	/* Zero out the descriptor ring */
 	size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
@@ -446,8 +449,13 @@ void ice_free_rx_ring(struct ice_rx_ring *rx_ring)
 		if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
 			xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	rx_ring->xdp_prog = NULL;
-	devm_kfree(rx_ring->dev, rx_ring->rx_buf);
-	rx_ring->rx_buf = NULL;
+	if (rx_ring->xsk_pool) {
+		kfree(rx_ring->xdp_buf);
+		rx_ring->xdp_buf = NULL;
+	} else {
+		kfree(rx_ring->rx_buf);
+		rx_ring->rx_buf = NULL;
+	}
 
 	if (rx_ring->desc) {
 		size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
@@ -475,8 +483,7 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
 	/* warn if we are about to overwrite the pointer */
 	WARN_ON(rx_ring->rx_buf);
 	rx_ring->rx_buf =
-		devm_kcalloc(dev, sizeof(*rx_ring->rx_buf), rx_ring->count,
-			     GFP_KERNEL);
+		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_buf), GFP_KERNEL);
 	if (!rx_ring->rx_buf)
 		return -ENOMEM;
 
@@ -505,7 +512,7 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
 	return 0;
 
 err:
-	devm_kfree(dev, rx_ring->rx_buf);
+	kfree(rx_ring->rx_buf);
 	rx_ring->rx_buf = NULL;
 	return -ENOMEM;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 8593717a755e..c124229d98fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -12,6 +12,11 @@
 #include "ice_txrx_lib.h"
 #include "ice_lib.h"
 
+static struct xdp_buff **ice_xdp_buf(struct ice_rx_ring *rx_ring, u32 idx)
+{
+	return &rx_ring->xdp_buf[idx];
+}
+
 /**
  * ice_qp_reset_stats - Resets all stats for rings of given index
  * @vsi: VSI that contains rings of interest
@@ -372,7 +377,7 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 	dma_addr_t dma;
 
 	rx_desc = ICE_RX_DESC(rx_ring, ntu);
-	xdp = &rx_ring->xdp_buf[ntu];
+	xdp = ice_xdp_buf(rx_ring, ntu);
 
 	nb_buffs = min_t(u16, count, rx_ring->count - ntu);
 	nb_buffs = xsk_buff_alloc_batch(rx_ring->xsk_pool, xdp, nb_buffs);
@@ -419,19 +424,18 @@ static void ice_bump_ntc(struct ice_rx_ring *rx_ring)
 /**
  * ice_construct_skb_zc - Create an sk_buff from zero-copy buffer
  * @rx_ring: Rx ring
- * @xdp_arr: Pointer to the SW ring of xdp_buff pointers
+ * @xdp: Pointer to XDP buffer
  *
  * This function allocates a new skb from a zero-copy Rx buffer.
  *
  * Returns the skb on success, NULL on failure.
  */
 static struct sk_buff *
-ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff **xdp_arr)
+ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
 {
-	struct xdp_buff *xdp = *xdp_arr;
+	unsigned int datasize_hard = xdp->data_end - xdp->data_hard_start;
 	unsigned int metasize = xdp->data - xdp->data_meta;
 	unsigned int datasize = xdp->data_end - xdp->data;
-	unsigned int datasize_hard = xdp->data_end - xdp->data_hard_start;
 	struct sk_buff *skb;
 
 	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, datasize_hard,
@@ -445,7 +449,6 @@ ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff **xdp_arr)
 		skb_metadata_set(skb, metasize);
 
 	xsk_buff_free(xdp);
-	*xdp_arr = NULL;
 	return skb;
 }
 
@@ -522,7 +525,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		union ice_32b_rx_flex_desc *rx_desc;
 		unsigned int size, xdp_res = 0;
-		struct xdp_buff **xdp;
+		struct xdp_buff *xdp;
 		struct sk_buff *skb;
 		u16 stat_err_bits;
 		u16 vlan_tag = 0;
@@ -545,18 +548,17 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		if (!size)
 			break;
 
-		xdp = &rx_ring->xdp_buf[rx_ring->next_to_clean];
-		xsk_buff_set_size(*xdp, size);
-		xsk_buff_dma_sync_for_cpu(*xdp, rx_ring->xsk_pool);
+		xdp = *ice_xdp_buf(rx_ring, rx_ring->next_to_clean);
+		xsk_buff_set_size(xdp, size);
+		xsk_buff_dma_sync_for_cpu(xdp, rx_ring->xsk_pool);
 
-		xdp_res = ice_run_xdp_zc(rx_ring, *xdp, xdp_prog, xdp_ring);
+		xdp_res = ice_run_xdp_zc(rx_ring, xdp, xdp_prog, xdp_ring);
 		if (xdp_res) {
 			if (xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR))
 				xdp_xmit |= xdp_res;
 			else
-				xsk_buff_free(*xdp);
+				xsk_buff_free(xdp);
 
-			*xdp = NULL;
 			total_rx_bytes += size;
 			total_rx_packets++;
 			cleaned_count++;
@@ -816,10 +818,9 @@ void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring)
 	u16 ntu = rx_ring->next_to_use;
 
 	for ( ; ntc != ntu; ntc = (ntc + 1) & count_mask) {
-		struct xdp_buff **xdp = &rx_ring->xdp_buf[ntc];
+		struct xdp_buff *xdp = *ice_xdp_buf(rx_ring, ntc);
 
-		xsk_buff_free(*xdp);
-		*xdp = NULL;
+		xsk_buff_free(xdp);
 	}
 }
 
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
