Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 951D8B9E588
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 11:30:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FD8941152;
	Thu, 25 Sep 2025 09:30:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OzuCdNKb05ZZ; Thu, 25 Sep 2025 09:30:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D77CF41155
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758792634;
	bh=zfU0he8UMUAMX16N4eiPKO/8Sy/3Oa6r+sG0TUUPyc4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pbI7N7m29mG4yZbJ15UvYrGr5cfQ+/BE1vx+XVmUpjoRZrJZMpj8A40DXOu9BoTXw
	 TIm4jB73AVhXvA/+Cn1xx+GgrW9LTtt3d23DV2yaMFz/ACJY+rVg6z+23byPjG3/eu
	 gSvnrlm/djV050lW4tIHb4SqDxyy96PHKTZUZ9/YoDeorMcIwfWnJ9W4NEpeN8lNg/
	 NustRPcYaBAKCEhdhUQ3o8j9xwOOwC7qGc3lGjuKhirEtR8yuhyz3nDFMdPBfX+vqs
	 s+BCLEhJAUlPQMzwhfbblybBhIrja8lEXx3qAG+Hqx30Xz1UGuo3vznSyr6qaa12uH
	 8KJPixov+OJ3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D77CF41155;
	Thu, 25 Sep 2025 09:30:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2135512D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0781940BFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FDBJkk3CT3zl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 09:30:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFEDE40BE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFEDE40BE3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFEDE40BE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:30 +0000 (UTC)
X-CSE-ConnectionGUID: 8R5J5KprRvOBHS8TE1l6MA==
X-CSE-MsgGUID: 2iLYmoXrQTGFZjOvHDEswA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71724572"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="71724572"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 02:23:26 -0700
X-CSE-ConnectionGUID: pCSTnN1mRdGIKpXunp/M9w==
X-CSE-MsgGUID: 4lTyxJJYR7KprUYlsBIlxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="214411820"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 02:23:24 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 jacob.e.keller@intel.com, larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, pmenzel@molgen.mpg.de,
 anthony.l.nguyen@intel.com, Michal Kubiak <michal.kubiak@intel.com>
Date: Thu, 25 Sep 2025 11:22:53 +0200
Message-ID: <20250925092253.1306476-4-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250925092253.1306476-1-michal.kubiak@intel.com>
References: <20250925092253.1306476-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758792630; x=1790328630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zO9cjd63OuH3yjQjZ95qHefGzQuxjBZa/rMLWq1NUII=;
 b=RoscuZoyt9Z9afzzhj4gLkerZNBjxtdXSCUSW1PZ/B/AlXJ+lC1iS6nZ
 kXM5AECQZN4D+HMItVm8MjhOZaaHvnlo0CG3uDOa/IlIRDhbWNmePHqFx
 EObPvBzN7eoEWr7H5VDh6AoA5ctSfWNhFmCh8RmhW5xmryzNYovlfbLCr
 NzMW7waUfR4kjpYr4KaaTBHkDGRTtJz2oZaX0pOBlGCJzF4NmFfdncIk9
 mf4YDtgoNN56AeMbElUM8CKBmP/BKHfRF1OqrmzMB14RmJxzlHthnhI6c
 IGqZl3PEadlfEHzcO6l4AgZdMgkmFvBiX3kqKFY8lfiFO5tNqlxNwU83X
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RoscuZoy
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: switch to Page Pool
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

This patch completes the transition of the ice driver to use the Page Pool
and libeth APIs, following the same direction as commit 5fa4caff59f2
("iavf: switch to Page Pool"). With the legacy page splitting and recycling
logic already removed, the driver is now in a clean state to adopt the
modern memory model.

The Page Pool integration simplifies buffer management by offloading
DMA mapping and recycling to the core infrastructure. This eliminates
the need for driver-specific handling of headroom, buffer sizing, and
page order. The libeth helper is used for CPU-side processing, while
DMA-for-device is handled by the Page Pool core.

Additionally, this patch extends the conversion to cover XDP support.
The driver now uses libeth_xdp helpers for Rx buffer processing,
and optimizes XDP_TX by skipping per-frame DMA mapping. Instead, all
buffers are mapped as bi-directional up front, leveraging Page Pool's
lifecycle management. This significantly reduces overhead in virtualized
environments.

Performance observations:
- In typical scenarios (netperf, XDP_PASS, XDP_DROP), performance remains
  on par with the previous implementation.
- In XDP_TX mode:
  * With IOMMU enabled, performance improves dramatically - over 5x
    increase - due to reduced DMA mapping overhead and better memory reuse.
  * With IOMMU disabled, performance remains comparable to the previous
    implementation, with no significant changes observed.
- In XDP_DROP mode:
  * For small MTUs, (where multiple buffers can be allocated on a single
    memory page), a performance drop of approximately 20% is observed.
    According to 'perf top' analysis, the bottleneck is caused by atomic
    reference counter increments in the Page Pool.
  * For normal MTUs, (where only one buffer can be allocated within a
    single memory page), performance remains comparable to baseline
    levels.

This change is also a step toward a more modular and unified XDP
implementation across Intel Ethernet drivers, aligning with ongoing
efforts to consolidate and streamline feature support.

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/ice/ice_base.c     |  91 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 442 ++++--------------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  37 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 ++-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   9 -
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  76 +--
 drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-
 11 files changed, 203 insertions(+), 552 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index a563a94e2780..7c6ee1e604aa 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -296,6 +296,7 @@ config ICE
 	depends on GNSS || GNSS = n
 	select AUXILIARY_BUS
 	select DIMLIB
+	select LIBETH_XDP
 	select LIBIE
 	select LIBIE_ADMINQ
 	select LIBIE_FWLOG
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index fee58f879d9e..eabab50fab33 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -2,6 +2,7 @@
 /* Copyright (c) 2019, Intel Corporation. */
 
 #include <net/xdp_sock_drv.h>
+#include <linux/net/intel/libie/rx.h>
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
@@ -495,7 +496,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	/* Receive Packet Data Buffer Size.
 	 * The Packet Data Buffer Size is defined in 128 byte units.
 	 */
-	rlan_ctx.dbuf = DIV_ROUND_UP(ICE_RXBUF_3072,
+	rlan_ctx.dbuf = DIV_ROUND_UP(ring->rx_buf_len,
 				     BIT_ULL(ICE_RLAN_CTX_DBUF_S));
 
 	/* use 32 byte descriptors */
@@ -537,7 +538,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	 * than 5 x DBUF
 	 */
 	rlan_ctx.rxmax = min_t(u32, vsi->max_frame,
-			       ICE_MAX_CHAINED_RX_BUFS * ICE_RXBUF_3072);
+			       ICE_MAX_CHAINED_RX_BUFS * ring->rx_buf_len);
 
 	/* Rx queue threshold in units of 64 */
 	rlan_ctx.lrxqthresh = 1;
@@ -573,8 +574,6 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	if (vsi->type == ICE_VSI_VF)
 		return 0;
 
-	ring->rx_offset = ICE_SKB_PAD;
-
 	/* init queue specific tail register */
 	ring->tail = hw->hw_addr + QRX_TAIL(pf_q);
 	writel(0, ring->tail);
@@ -582,38 +581,6 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	return 0;
 }
 
-static void ice_xsk_pool_fill_cb(struct ice_rx_ring *ring)
-{
-	void *ctx_ptr = &ring->pkt_ctx;
-	struct xsk_cb_desc desc = {};
-
-	XSK_CHECK_PRIV_TYPE(struct ice_xdp_buff);
-	desc.src = &ctx_ptr;
-	desc.off = offsetof(struct ice_xdp_buff, pkt_ctx) -
-		   sizeof(struct xdp_buff);
-	desc.bytes = sizeof(ctx_ptr);
-	xsk_pool_fill_cb(ring->xsk_pool, &desc);
-}
-
-/**
- * ice_get_frame_sz - calculate xdp_buff::frame_sz
- * @rx_ring: the ring being configured
- *
- * Return frame size based on underlying PAGE_SIZE
- */
-static unsigned int ice_get_frame_sz(struct ice_rx_ring *rx_ring)
-{
-	unsigned int frame_sz;
-
-#if (PAGE_SIZE >= 8192)
-	frame_sz = rx_ring->rx_buf_len;
-#else
-	frame_sz = PAGE_SIZE;
-#endif
-
-	return frame_sz;
-}
-
 /**
  * ice_vsi_cfg_rxq - Configure an Rx queue
  * @ring: the ring being configured
@@ -622,8 +589,14 @@ static unsigned int ice_get_frame_sz(struct ice_rx_ring *rx_ring)
  */
 static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 {
+	struct libeth_fq fq = {
+		.count		= ring->count,
+		.nid		= NUMA_NO_NODE,
+		.xdp		= ice_is_xdp_ena_vsi(ring->vsi),
+		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
+	};
 	struct device *dev = ice_pf_to_dev(ring->vsi->back);
-	u32 num_bufs = ICE_RX_DESC_UNUSED(ring);
+	u32 num_bufs = ICE_DESC_UNUSED(ring);
 	u32 rx_buf_len;
 	int err;
 
@@ -632,12 +605,16 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 						 ring->q_index,
 						 ring->q_vector->napi.napi_id,
-						 ICE_RXBUF_3072);
+						 ring->rx_buf_len);
 			if (err)
 				return err;
 		}
 
 		ice_rx_xsk_pool(ring);
+		err = ice_realloc_rx_xdp_bufs(ring, ring->xsk_pool);
+		if (err)
+			return err;
+
 		if (ring->xsk_pool) {
 			xdp_rxq_info_unreg(&ring->xdp_rxq);
 
@@ -655,36 +632,38 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			if (err)
 				return err;
 			xsk_pool_set_rxq_info(ring->xsk_pool, &ring->xdp_rxq);
-			ice_xsk_pool_fill_cb(ring);
 
 			dev_info(dev, "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
 				 ring->q_index);
 		} else {
+			err = libeth_rx_fq_create(&fq, &ring->q_vector->napi);
+			if (err)
+				return err;
+
+			ring->pp = fq.pp;
+			ring->rx_fqes = fq.fqes;
+			ring->truesize = fq.truesize;
+			ring->rx_buf_len = fq.buf_len;
+
 			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
 				err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 							 ring->q_index,
 							 ring->q_vector->napi.napi_id,
-							 ICE_RXBUF_3072);
+							 ring->rx_buf_len);
 				if (err)
-					return err;
+					goto err_destroy_fq;
 			}
-
-			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
-							 MEM_TYPE_PAGE_SHARED,
-							 NULL);
-			if (err)
-				return err;
+			xdp_rxq_info_attach_page_pool(&ring->xdp_rxq,
+						      ring->pp);
 		}
 	}
 
-	xdp_init_buff(&ring->xdp, ice_get_frame_sz(ring), &ring->xdp_rxq);
 	ring->xdp.data = NULL;
-	ring->xdp_ext.pkt_ctx = &ring->pkt_ctx;
 	err = ice_setup_rx_ctx(ring);
 	if (err) {
 		dev_err(dev, "ice_setup_rx_ctx failed for RxQ %d, err %d\n",
 			ring->q_index, err);
-		return err;
+		goto err_destroy_fq;
 	}
 
 	if (ring->xsk_pool) {
@@ -712,9 +691,19 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 	if (ring->vsi->type == ICE_VSI_CTRL)
 		ice_init_ctrl_rx_descs(ring, num_bufs);
 	else
-		ice_alloc_rx_bufs(ring, num_bufs);
+		err = ice_alloc_rx_bufs(ring, num_bufs);
+
+	if (err)
+		goto err_destroy_fq;
 
 	return 0;
+
+err_destroy_fq:
+	libeth_rx_fq_destroy(&fq);
+	ring->rx_fqes = NULL;
+	ring->pp = NULL;
+
+	return err;
 }
 
 int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 7155e161530b..0b99a7b863d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -10,6 +10,7 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 #include <net/dcbnl.h>
+#include <net/libeth/rx.h>
 
 struct ice_stats {
 	char stat_string[ETH_GSTRING_LEN];
@@ -1230,8 +1231,9 @@ static int ice_diag_send(struct ice_tx_ring *tx_ring, u8 *data, u16 size)
  */
 static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
 {
-	struct ice_rx_buf *rx_buf;
+	struct libeth_fqe *rx_buf;
 	int valid_frames, i;
+	struct page *page;
 	u8 *received_buf;
 
 	valid_frames = 0;
@@ -1246,8 +1248,10 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
 		     cpu_to_le16(BIT(ICE_RX_FLEX_DESC_STATUS0_EOF_S)))))
 			continue;
 
-		rx_buf = &rx_ring->rx_buf[i];
-		received_buf = page_address(rx_buf->page) + rx_buf->page_offset;
+		rx_buf = &rx_ring->rx_fqes[i];
+		page = __netmem_to_page(rx_buf->netmem);
+		received_buf = page_address(page) + rx_buf->offset +
+			       page->pp->p.offset;
 
 		if (ice_lbtest_check_frame(received_buf))
 			valid_frames++;
@@ -3303,7 +3307,8 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		rx_rings[i].count = new_rx_cnt;
 		rx_rings[i].cached_phctime = pf->ptp.cached_phc_time;
 		rx_rings[i].desc = NULL;
-		rx_rings[i].rx_buf = NULL;
+		rx_rings[i].xdp_buf = NULL;
+
 		/* this is to allow wr32 to have something to write to
 		 * during early allocation of Rx buffers
 		 */
@@ -3312,10 +3317,6 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		err = ice_setup_rx_ring(&rx_rings[i]);
 		if (err)
 			goto rx_unwind;
-
-		/* allocate Rx buffers */
-		err = ice_alloc_rx_bufs(&rx_rings[i],
-					ICE_RX_DESC_UNUSED(&rx_rings[i]));
 rx_unwind:
 		if (err) {
 			while (i) {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b5079de028cd..bac481e8140d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1427,7 +1427,6 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->reg_idx = vsi->rxq_map[i];
 		ring->vsi = vsi;
 		ring->netdev = vsi->netdev;
-		ring->dev = dev;
 		ring->count = vsi->num_rx_desc;
 		ring->cached_phctime = pf->ptp.cached_phc_time;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b877151b45a4..0b6175ade40d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -37,6 +37,8 @@ static const char ice_copyright[] = "Copyright (c) 2018, Intel Corporation.";
 #define ICE_DDP_PKG_FILE	ICE_DDP_PKG_PATH "ice.pkg"
 
 MODULE_DESCRIPTION(DRV_SUMMARY);
+MODULE_IMPORT_NS("LIBETH");
+MODULE_IMPORT_NS("LIBETH_XDP");
 MODULE_IMPORT_NS("LIBIE");
 MODULE_IMPORT_NS("LIBIE_ADMINQ");
 MODULE_IMPORT_NS("LIBIE_FWLOG");
@@ -3015,19 +3017,11 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 			}
 		}
 		xdp_features_set_redirect_target(vsi->netdev, true);
-		/* reallocate Rx queues that are used for zero-copy */
-		xdp_ring_err = ice_realloc_zc_buf(vsi, true);
-		if (xdp_ring_err)
-			NL_SET_ERR_MSG_MOD(extack, "Setting up XDP Rx resources failed");
 	} else if (ice_is_xdp_ena_vsi(vsi) && !prog) {
 		xdp_features_clear_redirect_target(vsi->netdev);
 		xdp_ring_err = ice_destroy_xdp_rings(vsi, ICE_XDP_CFG_FULL);
 		if (xdp_ring_err)
 			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Tx resources failed");
-		/* reallocate Rx queues that were used for zero-copy */
-		xdp_ring_err = ice_realloc_zc_buf(vsi, false);
-		if (xdp_ring_err)
-			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Rx resources failed");
 	}
 
 resume_if:
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 2b46e4c8be86..5a966138eacf 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -7,6 +7,8 @@
 #include <linux/netdevice.h>
 #include <linux/prefetch.h>
 #include <linux/bpf_trace.h>
+#include <linux/net/intel/libie/rx.h>
+#include <net/libeth/xdp.h>
 #include <net/dsfield.h>
 #include <net/mpls.h>
 #include <net/xdp.h>
@@ -111,7 +113,7 @@ ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct ice_fltr_desc *fdir_desc,
 static void
 ice_unmap_and_free_tx_buf(struct ice_tx_ring *ring, struct ice_tx_buf *tx_buf)
 {
-	if (dma_unmap_len(tx_buf, len))
+	if (tx_buf->type != ICE_TX_BUF_XDP_TX && dma_unmap_len(tx_buf, len))
 		dma_unmap_page(ring->dev,
 			       dma_unmap_addr(tx_buf, dma),
 			       dma_unmap_len(tx_buf, len),
@@ -125,7 +127,7 @@ ice_unmap_and_free_tx_buf(struct ice_tx_ring *ring, struct ice_tx_buf *tx_buf)
 		dev_kfree_skb_any(tx_buf->skb);
 		break;
 	case ICE_TX_BUF_XDP_TX:
-		page_frag_free(tx_buf->raw_buf);
+		libeth_xdp_return_va(tx_buf->raw_buf, false);
 		break;
 	case ICE_TX_BUF_XDP_XMIT:
 		xdp_return_frame(tx_buf->xdpf);
@@ -512,54 +514,44 @@ int ice_setup_tx_ring(struct ice_tx_ring *tx_ring)
  */
 void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 {
-	struct xdp_buff *xdp = &rx_ring->xdp;
-	struct device *dev = rx_ring->dev;
+	struct libeth_fq fq = {
+		.fqes	= rx_ring->rx_fqes,
+		.pp	= rx_ring->pp,
+	};
 	u32 size;
-	u16 i;
-
-	/* ring already cleared, nothing to do */
-	if (!rx_ring->rx_buf)
-		return;
 
 	if (rx_ring->xsk_pool) {
 		ice_xsk_clean_rx_ring(rx_ring);
 		goto rx_skip_free;
 	}
 
-	if (xdp->data) {
-		xdp_return_buff(xdp);
-		xdp->data = NULL;
-	}
+	/* ring already cleared, nothing to do */
+	if (!rx_ring->rx_fqes)
+		return;
+
+	libeth_xdp_return_stash(&rx_ring->xdp);
 
 	/* Free all the Rx ring sk_buffs */
-	for (i = 0; i < rx_ring->count; i++) {
-		struct ice_rx_buf *rx_buf = &rx_ring->rx_buf[i];
+	for (u32 i = rx_ring->next_to_clean; i != rx_ring->next_to_use; ) {
+		const struct libeth_fqe *rx_fqes = &rx_ring->rx_fqes[i];
 
-		if (!rx_buf->page)
-			continue;
+		libeth_rx_recycle_slow(rx_fqes->netmem);
 
-		/* Invalidate cache lines that may have been written to by
-		 * device so that we avoid corrupting memory.
-		 */
-		dma_sync_single_range_for_cpu(dev, rx_buf->dma,
-					      rx_buf->page_offset,
-					      ICE_RXBUF_3072,
-					      DMA_FROM_DEVICE);
-
-		/* free resources associated with mapping */
-		dma_unmap_page_attrs(dev, rx_buf->dma, PAGE_SIZE,
-				     DMA_FROM_DEVICE, ICE_RX_DMA_ATTR);
-		__free_page(rx_buf->page);
-
-		rx_buf->page = NULL;
-		rx_buf->page_offset = 0;
+		if (unlikely(++i == rx_ring->count))
+			i = 0;
 	}
 
+	if (rx_ring->vsi->type == ICE_VSI_PF &&
+	    xdp_rxq_info_is_reg(&rx_ring->xdp_rxq)) {
+		xdp_rxq_info_detach_mem_model(&rx_ring->xdp_rxq);
+		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
+	}
+
+	libeth_rx_fq_destroy(&fq);
+	rx_ring->rx_fqes = NULL;
+	rx_ring->pp = NULL;
+
 rx_skip_free:
-	if (rx_ring->xsk_pool)
-		memset(rx_ring->xdp_buf, 0, array_size(rx_ring->count, sizeof(*rx_ring->xdp_buf)));
-	else
-		memset(rx_ring->rx_buf, 0, array_size(rx_ring->count, sizeof(*rx_ring->rx_buf)));
 
 	/* Zero out the descriptor ring */
 	size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
@@ -568,7 +560,6 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 
 	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
-	rx_ring->first_desc = 0;
 	rx_ring->next_to_use = 0;
 }
 
@@ -580,26 +571,20 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
  */
 void ice_free_rx_ring(struct ice_rx_ring *rx_ring)
 {
+	struct device *dev = ice_pf_to_dev(rx_ring->vsi->back);
 	u32 size;
 
 	ice_clean_rx_ring(rx_ring);
-	if (rx_ring->vsi->type == ICE_VSI_PF)
-		if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
-			xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	WRITE_ONCE(rx_ring->xdp_prog, NULL);
 	if (rx_ring->xsk_pool) {
 		kfree(rx_ring->xdp_buf);
 		rx_ring->xdp_buf = NULL;
-	} else {
-		kfree(rx_ring->rx_buf);
-		rx_ring->rx_buf = NULL;
 	}
 
 	if (rx_ring->desc) {
 		size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
 			     PAGE_SIZE);
-		dmam_free_coherent(rx_ring->dev, size,
-				   rx_ring->desc, rx_ring->dma);
+		dmam_free_coherent(dev, size, rx_ring->desc, rx_ring->dma);
 		rx_ring->desc = NULL;
 	}
 }
@@ -612,19 +597,9 @@ void ice_free_rx_ring(struct ice_rx_ring *rx_ring)
  */
 int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
 {
-	struct device *dev = rx_ring->dev;
+	struct device *dev = ice_pf_to_dev(rx_ring->vsi->back);
 	u32 size;
 
-	if (!dev)
-		return -ENOMEM;
-
-	/* warn if we are about to overwrite the pointer */
-	WARN_ON(rx_ring->rx_buf);
-	rx_ring->rx_buf =
-		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_buf), GFP_KERNEL);
-	if (!rx_ring->rx_buf)
-		return -ENOMEM;
-
 	/* round up to nearest page */
 	size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
 		     PAGE_SIZE);
@@ -633,22 +608,16 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
 	if (!rx_ring->desc) {
 		dev_err(dev, "Unable to allocate memory for the Rx descriptor ring, size=%d\n",
 			size);
-		goto err;
+		return -ENOMEM;
 	}
 
 	rx_ring->next_to_use = 0;
 	rx_ring->next_to_clean = 0;
-	rx_ring->first_desc = 0;
 
 	if (ice_is_xdp_ena_vsi(rx_ring->vsi))
 		WRITE_ONCE(rx_ring->xdp_prog, rx_ring->vsi->xdp_prog);
 
 	return 0;
-
-err:
-	kfree(rx_ring->rx_buf);
-	rx_ring->rx_buf = NULL;
-	return -ENOMEM;
 }
 
 /**
@@ -662,7 +631,7 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
  * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
  */
 static u32
-ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
+ice_run_xdp(struct ice_rx_ring *rx_ring, struct libeth_xdp_buff *xdp,
 	    struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring,
 	    union ice_32b_rx_flex_desc *eop_desc)
 {
@@ -672,23 +641,23 @@ ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	if (!xdp_prog)
 		goto exit;
 
-	ice_xdp_meta_set_desc(xdp, eop_desc);
+	xdp->desc = eop_desc;
 
-	act = bpf_prog_run_xdp(xdp_prog, xdp);
+	act = bpf_prog_run_xdp(xdp_prog, &xdp->base);
 	switch (act) {
 	case XDP_PASS:
 		break;
 	case XDP_TX:
 		if (static_branch_unlikely(&ice_xdp_locking_key))
 			spin_lock(&xdp_ring->tx_lock);
-		ret = __ice_xmit_xdp_ring(xdp, xdp_ring, false);
+		ret = __ice_xmit_xdp_ring(&xdp->base, xdp_ring, false);
 		if (static_branch_unlikely(&ice_xdp_locking_key))
 			spin_unlock(&xdp_ring->tx_lock);
 		if (ret == ICE_XDP_CONSUMED)
 			goto out_failure;
 		break;
 	case XDP_REDIRECT:
-		if (xdp_do_redirect(rx_ring->netdev, xdp, xdp_prog))
+		if (xdp_do_redirect(rx_ring->netdev, &xdp->base, xdp_prog))
 			goto out_failure;
 		ret = ICE_XDP_REDIR;
 		break;
@@ -700,8 +669,10 @@ ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
 		fallthrough;
 	case XDP_DROP:
+		libeth_xdp_return_buff(xdp);
 		ret = ICE_XDP_CONSUMED;
 	}
+
 exit:
 	return ret;
 }
@@ -789,48 +760,6 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	return nxmit;
 }
 
-/**
- * ice_alloc_mapped_page - recycle or make a new page
- * @rx_ring: ring to use
- * @bi: rx_buf struct to modify
- *
- * Returns true if the page was successfully allocated or
- * reused.
- */
-static bool
-ice_alloc_mapped_page(struct ice_rx_ring *rx_ring, struct ice_rx_buf *bi)
-{
-	struct page *page = bi->page;
-	dma_addr_t dma;
-
-	/* alloc new page for storage */
-	page = dev_alloc_pages(ice_rx_pg_order(rx_ring));
-	if (unlikely(!page)) {
-		rx_ring->ring_stats->rx_stats.alloc_page_failed++;
-		return false;
-	}
-
-	/* map page for use */
-	dma = dma_map_page_attrs(rx_ring->dev, page, 0, PAGE_SIZE,
-				 DMA_FROM_DEVICE, ICE_RX_DMA_ATTR);
-
-	/* if mapping failed free memory back to system since
-	 * there isn't much point in holding memory we can't use
-	 */
-	if (dma_mapping_error(rx_ring->dev, dma)) {
-		__free_pages(page, ice_rx_pg_order(rx_ring));
-		rx_ring->ring_stats->rx_stats.alloc_page_failed++;
-		return false;
-	}
-
-	bi->dma = dma;
-	bi->page = page;
-	bi->page_offset = rx_ring->rx_offset;
-	page_ref_add(page, USHRT_MAX - 1);
-
-	return true;
-}
-
 /**
  * ice_init_ctrl_rx_descs - Initialize Rx descriptors for control vsi.
  * @rx_ring: ring to init descriptors on
@@ -877,9 +806,14 @@ void ice_init_ctrl_rx_descs(struct ice_rx_ring *rx_ring, u32 count)
  */
 bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 {
+	const struct libeth_fq_fp fq = {
+		.pp		= rx_ring->pp,
+		.fqes		= rx_ring->rx_fqes,
+		.truesize	= rx_ring->truesize,
+		.count		= rx_ring->count,
+	};
 	union ice_32b_rx_flex_desc *rx_desc;
 	u16 ntu = rx_ring->next_to_use;
-	struct ice_rx_buf *bi;
 
 	/* do nothing if no valid netdev defined */
 	if (!rx_ring->netdev || !cleaned_count)
@@ -887,30 +821,25 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 
 	/* get the Rx descriptor and buffer based on next_to_use */
 	rx_desc = ICE_RX_DESC(rx_ring, ntu);
-	bi = &rx_ring->rx_buf[ntu];
 
 	do {
-		/* if we fail here, we have work remaining */
-		if (!ice_alloc_mapped_page(rx_ring, bi))
-			break;
+		dma_addr_t addr;
 
-		/* sync the buffer for use by the device */
-		dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
-						 bi->page_offset,
-						 ICE_RXBUF_3072,
-						 DMA_FROM_DEVICE);
+		addr = libeth_rx_alloc(&fq, ntu);
+		if (addr == DMA_MAPPING_ERROR) {
+			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
+			break;
+		}
 
 		/* Refresh the desc even if buffer_addrs didn't change
 		 * because each write-back erases this info.
 		 */
-		rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);
+		rx_desc->read.pkt_addr = cpu_to_le64(addr);
 
 		rx_desc++;
-		bi++;
 		ntu++;
 		if (unlikely(ntu == rx_ring->count)) {
 			rx_desc = ICE_RX_DESC(rx_ring, 0);
-			bi = rx_ring->rx_buf;
 			ntu = 0;
 		}
 
@@ -926,205 +855,6 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 	return !!cleaned_count;
 }
 
-/**
- * ice_add_xdp_frag - Add contents of Rx buffer to xdp buf as a frag
- * @rx_ring: Rx descriptor ring to transact packets on
- * @xdp: xdp buff to place the data into
- * @rx_buf: buffer containing page to add
- * @size: packet length from rx_desc
- *
- * This function will add the data contained in rx_buf->page to the xdp buf.
- * It will just attach the page as a frag.
- */
-static int
-ice_add_xdp_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
-		 struct ice_rx_buf *rx_buf, const unsigned int size)
-{
-	struct skb_shared_info *sinfo = xdp_get_shared_info_from_buff(xdp);
-
-	if (!size)
-		return 0;
-
-	if (!xdp_buff_has_frags(xdp)) {
-		sinfo->nr_frags = 0;
-		sinfo->xdp_frags_size = 0;
-		xdp_buff_set_frags_flag(xdp);
-	}
-
-	if (unlikely(sinfo->nr_frags == MAX_SKB_FRAGS))
-		return -ENOMEM;
-
-	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
-				   rx_buf->page_offset, size);
-	sinfo->xdp_frags_size += size;
-
-	if (page_is_pfmemalloc(rx_buf->page))
-		xdp_buff_set_frag_pfmemalloc(xdp);
-
-	return 0;
-}
-
-/**
- * ice_get_rx_buf - Fetch Rx buffer and synchronize data for use
- * @rx_ring: Rx descriptor ring to transact packets on
- * @size: size of buffer to add to skb
- * @ntc: index of next to clean element
- *
- * This function will pull an Rx buffer from the ring and synchronize it
- * for use by the CPU.
- */
-static struct ice_rx_buf *
-ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
-	       const unsigned int ntc)
-{
-	struct ice_rx_buf *rx_buf;
-
-	rx_buf = &rx_ring->rx_buf[ntc];
-	prefetchw(rx_buf->page);
-
-	if (!size)
-		return rx_buf;
-	/* we are reusing so sync this buffer for CPU use */
-	dma_sync_single_range_for_cpu(rx_ring->dev, rx_buf->dma,
-				      rx_buf->page_offset, size,
-				      DMA_FROM_DEVICE);
-
-	return rx_buf;
-}
-
-/**
- * ice_get_pgcnts - grab page_count() for gathered fragments
- * @rx_ring: Rx descriptor ring to store the page counts on
- * @ntc: the next to clean element (not included in this frame!)
- *
- * This function is intended to be called right before running XDP
- * program so that the page recycling mechanism will be able to take
- * a correct decision regarding underlying pages; this is done in such
- * way as XDP program can change the refcount of page
- */
-static void ice_get_pgcnts(struct ice_rx_ring *rx_ring, unsigned int ntc)
-{
-	u32 idx = rx_ring->first_desc;
-	struct ice_rx_buf *rx_buf;
-	u32 cnt = rx_ring->count;
-
-	while (idx != ntc) {
-		rx_buf = &rx_ring->rx_buf[idx];
-		rx_buf->pgcnt = page_count(rx_buf->page);
-
-		if (++idx == cnt)
-			idx = 0;
-	}
-}
-
-/**
- * ice_build_skb - Build skb around an existing buffer
- * @rx_ring: Rx descriptor ring to transact packets on
- * @xdp: xdp_buff pointing to the data
- *
- * This function builds an skb around an existing XDP buffer, taking care
- * to set up the skb correctly and avoid any memcpy overhead. Driver has
- * already combined frags (if any) to skb_shared_info.
- */
-static struct sk_buff *
-ice_build_skb(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
-{
-	u8 metasize = xdp->data - xdp->data_meta;
-	struct skb_shared_info *sinfo = NULL;
-	unsigned int nr_frags;
-	struct sk_buff *skb;
-
-	if (unlikely(xdp_buff_has_frags(xdp))) {
-		sinfo = xdp_get_shared_info_from_buff(xdp);
-		nr_frags = sinfo->nr_frags;
-	}
-
-	/* Prefetch first cache line of first page. If xdp->data_meta
-	 * is unused, this points exactly as xdp->data, otherwise we
-	 * likely have a consumer accessing first few bytes of meta
-	 * data, and then actual data.
-	 */
-	net_prefetch(xdp->data_meta);
-	/* build an skb around the page buffer */
-	skb = napi_build_skb(xdp->data_hard_start, xdp->frame_sz);
-	if (unlikely(!skb))
-		return NULL;
-
-	/* must to record Rx queue, otherwise OS features such as
-	 * symmetric queue won't work
-	 */
-	skb_record_rx_queue(skb, rx_ring->q_index);
-
-	/* update pointers within the skb to store the data */
-	skb_reserve(skb, xdp->data - xdp->data_hard_start);
-	__skb_put(skb, xdp->data_end - xdp->data);
-	if (metasize)
-		skb_metadata_set(skb, metasize);
-
-	if (unlikely(xdp_buff_has_frags(xdp)))
-		xdp_update_skb_frags_info(skb, nr_frags, sinfo->xdp_frags_size,
-					  nr_frags * xdp->frame_sz,
-					  xdp_buff_get_skb_flags(xdp));
-
-	return skb;
-}
-
-/**
- * ice_put_rx_buf - Clean up used buffer and either recycle or free
- * @rx_ring: Rx descriptor ring to transact packets on
- * @rx_buf: Rx buffer to pull data from
- *
- * This function will clean up the contents of the rx_buf. It will either
- * recycle the buffer or unmap it and free the associated resources.
- */
-static void
-ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
-{
-	if (!rx_buf)
-		return;
-
-	/* we are not reusing the buffer so unmap it */
-	dma_unmap_page_attrs(rx_ring->dev, rx_buf->dma,
-			     PAGE_SIZE, DMA_FROM_DEVICE,
-			     ICE_RX_DMA_ATTR);
-
-	/* clear contents of buffer_info */
-	rx_buf->page = NULL;
-}
-
-/**
- * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all buffers in frame
- * @rx_ring: Rx ring with all the auxiliary data
- * @xdp: XDP buffer carrying linear + frags part
- * @ntc: the next to clean element (not included in this frame!)
- * @verdict: return code from XDP program execution
- *
- * Called after XDP program is completed, or on error with verdict set to
- * ICE_XDP_CONSUMED.
- *
- * Walk through buffers from first_desc to the end of the frame, releasing
- * buffers and satisfying internal page recycle mechanism. The action depends
- * on verdict from XDP program.
- */
-static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
-			    u32 ntc, u32 verdict)
-{
-	u32 idx = rx_ring->first_desc;
-	u32 cnt = rx_ring->count;
-	struct ice_rx_buf *buf;
-
-	while (idx != ntc) {
-		buf = &rx_ring->rx_buf[idx];
-		if (++idx == cnt)
-			idx = 0;
-
-		ice_put_rx_buf(rx_ring, buf);
-	}
-
-	xdp->data = NULL;
-	rx_ring->first_desc = ntc;
-}
-
 /**
  * ice_clean_ctrl_rx_irq - Clean descriptors from flow director Rx ring
  * @rx_ring: Rx descriptor ring for ctrl_vsi to transact packets on
@@ -1159,9 +889,8 @@ void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring)
 		total_rx_pkts++;
 	}
 
-	rx_ring->first_desc = ntc;
 	rx_ring->next_to_clean = ntc;
-	ice_init_ctrl_rx_descs(rx_ring, ICE_RX_DESC_UNUSED(rx_ring));
+	ice_init_ctrl_rx_descs(rx_ring, ICE_DESC_UNUSED(rx_ring));
 }
 
 /**
@@ -1179,16 +908,17 @@ void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring)
 static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 {
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
-	unsigned int offset = rx_ring->rx_offset;
-	struct xdp_buff *xdp = &rx_ring->xdp;
 	struct ice_tx_ring *xdp_ring = NULL;
 	struct bpf_prog *xdp_prog = NULL;
 	u32 ntc = rx_ring->next_to_clean;
+	LIBETH_XDP_ONSTACK_BUFF(xdp);
 	u32 cached_ntu, xdp_verdict;
 	u32 cnt = rx_ring->count;
 	u32 xdp_xmit = 0;
 	bool failure;
 
+	libeth_xdp_init_buff(xdp, &rx_ring->xdp, &rx_ring->xdp_rxq);
+
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	if (xdp_prog) {
 		xdp_ring = rx_ring->xdp_ring;
@@ -1198,7 +928,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	/* start the loop to process Rx packets bounded by 'budget' */
 	while (likely(total_rx_pkts < (unsigned int)budget)) {
 		union ice_32b_rx_flex_desc *rx_desc;
-		struct ice_rx_buf *rx_buf;
+		struct libeth_fqe *rx_buf;
 		struct sk_buff *skb;
 		unsigned int size;
 		u16 stat_err_bits;
@@ -1227,65 +957,47 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		size = le16_to_cpu(rx_desc->wb.pkt_len) &
 			ICE_RX_FLX_DESC_PKT_LEN_M;
 
+		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
+		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
+					      stat_err_bits)))
+			size = 0;
+
 		/* retrieve a buffer from the ring */
-		rx_buf = ice_get_rx_buf(rx_ring, size, ntc);
+		rx_buf = &rx_ring->rx_fqes[ntc];
+		libeth_xdp_process_buff(xdp, rx_buf, size);
 
-		/* Increment ntc before calls to ice_put_rx_mbuf() */
 		if (++ntc == cnt)
 			ntc = 0;
 
-		if (!xdp->data) {
-			void *hard_start;
-
-			hard_start = page_address(rx_buf->page) + rx_buf->page_offset -
-				     offset;
-			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
-			xdp_buff_clear_frags_flag(xdp);
-		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
-			ice_put_rx_mbuf(rx_ring, xdp, ntc, ICE_XDP_CONSUMED);
-			break;
-		}
-
 		/* skip if it is NOP desc */
-		if (ice_is_non_eop(rx_ring, rx_desc))
+		if (ice_is_non_eop(rx_ring, rx_desc) || unlikely(!xdp->data))
 			continue;
 
-		ice_get_pgcnts(rx_ring, ntc);
 		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
 		if (xdp_verdict == ICE_XDP_PASS)
 			goto construct_skb;
-		total_rx_bytes += xdp_get_buff_len(xdp);
-		total_rx_pkts++;
 
-		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
-		xdp_xmit |= xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR);
+		if (xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
+			xdp_xmit |= xdp_verdict;
+		total_rx_bytes += xdp_get_buff_len(&xdp->base);
+		total_rx_pkts++;
 
+		xdp->data = NULL;
 		continue;
+
 construct_skb:
-		skb = ice_build_skb(rx_ring, xdp);
+		skb = xdp_build_skb_from_buff(&xdp->base);
+		xdp->data = NULL;
+
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
+			libeth_xdp_return_buff_slow(xdp);
 			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
-			xdp_verdict = ICE_XDP_CONSUMED;
-		}
-		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
-
-		if (!skb)
-			break;
-
-		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
-		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
-					      stat_err_bits))) {
-			dev_kfree_skb_any(skb);
 			continue;
 		}
 
 		vlan_tci = ice_get_vlan_tci(rx_desc);
 
-		/* pad the skb if needed, to make a valid ethernet frame */
-		if (eth_skb_pad(skb))
-			continue;
-
 		/* probably a little skewed due to removing CRC */
 		total_rx_bytes += skb->len;
 
@@ -1302,11 +1014,13 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 
 	rx_ring->next_to_clean = ntc;
 	/* return up to cleaned_count buffers to hardware */
-	failure = ice_alloc_rx_bufs(rx_ring, ICE_RX_DESC_UNUSED(rx_ring));
+	failure = ice_alloc_rx_bufs(rx_ring, ICE_DESC_UNUSED(rx_ring));
 
 	if (xdp_xmit)
 		ice_finalize_xdp_rx(xdp_ring, xdp_xmit, cached_ntu);
 
+	libeth_xdp_save_buff(&rx_ring->xdp, xdp);
+
 	if (rx_ring->ring_stats)
 		ice_update_rx_ring_stats(rx_ring, total_rx_pkts,
 					 total_rx_bytes);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 3c7830f787de..e97a38ef3fe7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -4,6 +4,8 @@
 #ifndef _ICE_TXRX_H_
 #define _ICE_TXRX_H_
 
+#include <net/libeth/types.h>
+
 #include "ice_type.h"
 
 #define ICE_DFLT_IRQ_WORK	256
@@ -27,8 +29,6 @@
 
 #define ICE_MAX_TXQ_PER_TXQG	128
 
-#define ICE_SKB_PAD (NET_SKB_PAD + NET_IP_ALIGN)
-
 /* We are assuming that the cache line is always 64 Bytes here for ice.
  * In order to make sure that is a correct assumption there is a check in probe
  * to print a warning if the read from GLPCI_CNF2 tells us that the cache line
@@ -48,10 +48,6 @@
 	(u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->count) + \
 	      (R)->next_to_clean - (R)->next_to_use - 1)
 
-#define ICE_RX_DESC_UNUSED(R)	\
-	((((R)->first_desc > (R)->next_to_use) ? 0 : (R)->count) + \
-	      (R)->first_desc - (R)->next_to_use - 1)
-
 #define ICE_RING_QUARTER(R) ((R)->count >> 2)
 
 #define ICE_TX_FLAGS_TSO	BIT(0)
@@ -133,13 +129,6 @@ struct ice_tx_offload_params {
 	u8 header_len;
 };
 
-struct ice_rx_buf {
-	dma_addr_t dma;
-	struct page *page;
-	unsigned int page_offset;
-	unsigned int pgcnt;
-};
-
 struct ice_q_stats {
 	u64 pkts;
 	u64 bytes;
@@ -197,15 +186,6 @@ struct ice_pkt_ctx {
 	__be16 vlan_proto;
 };
 
-struct ice_xdp_buff {
-	struct xdp_buff xdp_buff;
-	const union ice_32b_rx_flex_desc *eop_desc;
-	const struct ice_pkt_ctx *pkt_ctx;
-};
-
-/* Required for compatibility with xdp_buffs from xsk_pool */
-static_assert(offsetof(struct ice_xdp_buff, xdp_buff) == 0);
-
 /* indices into GLINT_ITR registers */
 #define ICE_RX_ITR	ICE_IDX_ITR0
 #define ICE_TX_ITR	ICE_IDX_ITR1
@@ -258,7 +238,7 @@ struct ice_tstamp_ring {
 struct ice_rx_ring {
 	/* CL1 - 1st cacheline starts here */
 	void *desc;			/* Descriptor ring memory */
-	struct device *dev;		/* Used for DMA mapping */
+	struct page_pool *pp;
 	struct net_device *netdev;	/* netdev ring maps to */
 	struct ice_vsi *vsi;		/* Backreference to associated VSI */
 	struct ice_q_vector *q_vector;	/* Backreference to associated vector */
@@ -270,14 +250,16 @@ struct ice_rx_ring {
 	u16 next_to_alloc;
 
 	union {
-		struct ice_rx_buf *rx_buf;
+		struct libeth_fqe *rx_fqes;
 		struct xdp_buff **xdp_buf;
 	};
+
 	/* CL2 - 2nd cacheline starts here */
 	union {
-		struct ice_xdp_buff xdp_ext;
-		struct xdp_buff xdp;
+		struct libeth_xdp_buff_stash xdp;
+		struct libeth_xdp_buff *xsk;
 	};
+
 	/* CL3 - 3rd cacheline starts here */
 	union {
 		struct ice_pkt_ctx pkt_ctx;
@@ -287,12 +269,11 @@ struct ice_rx_ring {
 		};
 	};
 	struct bpf_prog *xdp_prog;
-	u16 rx_offset;
 
 	/* used in interrupt processing */
 	u16 next_to_use;
 	u16 next_to_clean;
-	u16 first_desc;
+	u32 truesize;
 
 	/* stats structs */
 	struct ice_ring_stats *ring_stats;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 45cfaabc41cb..ebef251217ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -3,6 +3,7 @@
 
 #include <linux/filter.h>
 #include <linux/net/intel/libie/rx.h>
+#include <net/libeth/xdp.h>
 
 #include "ice_txrx_lib.h"
 #include "ice_eswitch.h"
@@ -230,9 +231,12 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 
 		if (ice_is_port_repr_netdev(netdev))
 			ice_repr_inc_rx_stats(netdev, skb->len);
+
+		/* __skb_push() is needed because xdp_build_skb_from_buff()
+		   calls eth_type_trans()
+		 */
+		__skb_push(skb, ETH_HLEN);
 		skb->protocol = eth_type_trans(skb, netdev);
-	} else {
-		skb->protocol = eth_type_trans(skb, rx_ring->netdev);
 	}
 
 	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
@@ -270,19 +274,18 @@ static void
 ice_clean_xdp_tx_buf(struct device *dev, struct ice_tx_buf *tx_buf,
 		     struct xdp_frame_bulk *bq)
 {
-	dma_unmap_single(dev, dma_unmap_addr(tx_buf, dma),
-			 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
-	dma_unmap_len_set(tx_buf, len, 0);
-
 	switch (tx_buf->type) {
 	case ICE_TX_BUF_XDP_TX:
-		page_frag_free(tx_buf->raw_buf);
+		libeth_xdp_return_va(tx_buf->raw_buf, true);
 		break;
 	case ICE_TX_BUF_XDP_XMIT:
+		dma_unmap_single(dev, dma_unmap_addr(tx_buf, dma),
+				 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
 		xdp_return_frame_bulk(tx_buf->xdpf, bq);
 		break;
 	}
 
+	dma_unmap_len_set(tx_buf, len, 0);
 	tx_buf->type = ICE_TX_BUF_EMPTY;
 }
 
@@ -377,9 +380,11 @@ int __ice_xmit_xdp_ring(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring,
 	struct ice_tx_buf *tx_buf;
 	u32 cnt = xdp_ring->count;
 	void *data = xdp->data;
+	struct page *page;
 	u32 nr_frags = 0;
 	u32 free_space;
 	u32 frag = 0;
+	u32 offset;
 
 	free_space = ICE_DESC_UNUSED(xdp_ring);
 	if (free_space < ICE_RING_QUARTER(xdp_ring))
@@ -399,24 +404,28 @@ int __ice_xmit_xdp_ring(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring,
 	tx_head = &xdp_ring->tx_buf[ntu];
 	tx_buf = tx_head;
 
+	page = virt_to_page(data);
+	offset = offset_in_page(xdp->data);
+
 	for (;;) {
 		dma_addr_t dma;
 
-		dma = dma_map_single(dev, data, size, DMA_TO_DEVICE);
-		if (dma_mapping_error(dev, dma))
-			goto dma_unmap;
-
-		/* record length, and DMA address */
-		dma_unmap_len_set(tx_buf, len, size);
-		dma_unmap_addr_set(tx_buf, dma, dma);
-
 		if (frame) {
+			dma = dma_map_single(dev, data, size, DMA_TO_DEVICE);
+			if (dma_mapping_error(dev, dma))
+				goto dma_unmap;
 			tx_buf->type = ICE_TX_BUF_FRAG;
 		} else {
+			dma = page_pool_get_dma_addr(page) + offset;
+			dma_sync_single_for_device(dev, dma, size, DMA_BIDIRECTIONAL);
 			tx_buf->type = ICE_TX_BUF_XDP_TX;
 			tx_buf->raw_buf = data;
 		}
 
+		/* record length, and DMA address */
+		dma_unmap_len_set(tx_buf, len, size);
+		dma_unmap_addr_set(tx_buf, dma, dma);
+
 		tx_desc->buf_addr = cpu_to_le64(dma);
 		tx_desc->cmd_type_offset_bsz = ice_build_ctob(0, 0, size, 0);
 
@@ -430,6 +439,8 @@ int __ice_xmit_xdp_ring(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring,
 		tx_desc = ICE_TX_DESC(xdp_ring, ntu);
 		tx_buf = &xdp_ring->tx_buf[ntu];
 
+		page = skb_frag_page(&sinfo->frags[frag]);
+		offset = skb_frag_off(&sinfo->frags[frag]);
 		data = skb_frag_address(&sinfo->frags[frag]);
 		size = skb_frag_size(&sinfo->frags[frag]);
 		frag++;
@@ -514,10 +525,13 @@ void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res,
  */
 static int ice_xdp_rx_hw_ts(const struct xdp_md *ctx, u64 *ts_ns)
 {
-	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+	const struct libeth_xdp_buff *xdp_ext = (void *)ctx;
+	struct ice_rx_ring *rx_ring;
 
-	*ts_ns = ice_ptp_get_rx_hwts(xdp_ext->eop_desc,
-				     xdp_ext->pkt_ctx);
+	rx_ring = libeth_xdp_buff_to_rq(xdp_ext, typeof(*rx_ring), xdp_rxq);
+
+	*ts_ns = ice_ptp_get_rx_hwts(xdp_ext->desc,
+				     &rx_ring->pkt_ctx);
 	if (!*ts_ns)
 		return -ENODATA;
 
@@ -545,10 +559,10 @@ ice_xdp_rx_hash_type(const union ice_32b_rx_flex_desc *eop_desc)
 static int ice_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
 			   enum xdp_rss_hash_type *rss_type)
 {
-	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+	const struct libeth_xdp_buff *xdp_ext = (void *)ctx;
 
-	*hash = ice_get_rx_hash(xdp_ext->eop_desc);
-	*rss_type = ice_xdp_rx_hash_type(xdp_ext->eop_desc);
+	*hash = ice_get_rx_hash(xdp_ext->desc);
+	*rss_type = ice_xdp_rx_hash_type(xdp_ext->desc);
 	if (!likely(*hash))
 		return -ENODATA;
 
@@ -567,13 +581,16 @@ static int ice_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
 static int ice_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 			       u16 *vlan_tci)
 {
-	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+	const struct libeth_xdp_buff *xdp_ext = (void *)ctx;
+	struct ice_rx_ring *rx_ring;
+
+	rx_ring = libeth_xdp_buff_to_rq(xdp_ext, typeof(*rx_ring), xdp_rxq);
 
-	*vlan_proto = xdp_ext->pkt_ctx->vlan_proto;
+	*vlan_proto = rx_ring->pkt_ctx.vlan_proto;
 	if (!*vlan_proto)
 		return -ENODATA;
 
-	*vlan_tci = ice_get_vlan_tci(xdp_ext->eop_desc);
+	*vlan_tci = ice_get_vlan_tci(xdp_ext->desc);
 	if (!*vlan_tci)
 		return -ENODATA;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index 99717730f21a..6a3f10f7a53f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -135,13 +135,4 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 void
 ice_receive_skb(struct ice_rx_ring *rx_ring, struct sk_buff *skb, u16 vlan_tci);
 
-static inline void
-ice_xdp_meta_set_desc(struct xdp_buff *xdp,
-		      union ice_32b_rx_flex_desc *eop_desc)
-{
-	struct ice_xdp_buff *xdp_ext = container_of(xdp, struct ice_xdp_buff,
-						    xdp_buff);
-
-	xdp_ext->eop_desc = eop_desc;
-}
 #endif /* !_ICE_TXRX_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index b25bc5ba40ab..989ff1fd9110 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -3,6 +3,7 @@
 
 #include <linux/bpf_trace.h>
 #include <linux/unroll.h>
+#include <net/libeth/xdp.h>
 #include <net/xdp_sock_drv.h>
 #include <net/xdp.h>
 #include "ice.h"
@@ -169,50 +170,18 @@ ice_xsk_pool_enable(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
  * If allocation was successful, substitute buffer with allocated one.
  * Returns 0 on success, negative on failure
  */
-static int
+int
 ice_realloc_rx_xdp_bufs(struct ice_rx_ring *rx_ring, bool pool_present)
 {
-	size_t elem_size = pool_present ? sizeof(*rx_ring->xdp_buf) :
-					  sizeof(*rx_ring->rx_buf);
-	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);
-
-	if (!sw_ring)
-		return -ENOMEM;
-
 	if (pool_present) {
-		kfree(rx_ring->rx_buf);
-		rx_ring->rx_buf = NULL;
-		rx_ring->xdp_buf = sw_ring;
+		rx_ring->xdp_buf = kcalloc(rx_ring->count,
+					   sizeof(*rx_ring->xdp_buf),
+					   GFP_KERNEL);
+		if (!rx_ring->xdp_buf)
+			return -ENOMEM;
 	} else {
 		kfree(rx_ring->xdp_buf);
 		rx_ring->xdp_buf = NULL;
-		rx_ring->rx_buf = sw_ring;
-	}
-
-	return 0;
-}
-
-/**
- * ice_realloc_zc_buf - reallocate XDP ZC queue pairs
- * @vsi: Current VSI
- * @zc: is zero copy set
- *
- * Reallocate buffer for rx_rings that might be used by XSK.
- * XDP requires more memory, than rx_buf provides.
- * Returns 0 on success, negative on failure
- */
-int ice_realloc_zc_buf(struct ice_vsi *vsi, bool zc)
-{
-	struct ice_rx_ring *rx_ring;
-	uint i;
-
-	ice_for_each_rxq(vsi, i) {
-		rx_ring = vsi->rx_rings[i];
-		if (!rx_ring->xsk_pool)
-			continue;
-
-		if (ice_realloc_rx_xdp_bufs(rx_ring, zc))
-			return -ENOMEM;
 	}
 
 	return 0;
@@ -228,6 +197,7 @@ int ice_realloc_zc_buf(struct ice_vsi *vsi, bool zc)
  */
 int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 {
+	struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
 	bool if_running, pool_present = !!pool;
 	int ret = 0, pool_failure = 0;
 
@@ -241,8 +211,6 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 		     ice_is_xdp_ena_vsi(vsi);
 
 	if (if_running) {
-		struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
-
 		ret = ice_qp_dis(vsi, qid);
 		if (ret) {
 			netdev_err(vsi->netdev, "ice_qp_dis error = %d\n", ret);
@@ -303,11 +271,6 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
 		rx_desc->read.pkt_addr = cpu_to_le64(dma);
 		rx_desc->wb.status_error0 = 0;
 
-		/* Put private info that changes on a per-packet basis
-		 * into xdp_buff_xsk->cb.
-		 */
-		ice_xdp_meta_set_desc(*xdp, rx_desc);
-
 		rx_desc++;
 		xdp++;
 	}
@@ -606,10 +569,10 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 			struct xsk_buff_pool *xsk_pool,
 			int budget)
 {
+	struct xdp_buff *first = (struct xdp_buff *)rx_ring->xsk;
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	u32 ntc = rx_ring->next_to_clean;
 	u32 ntu = rx_ring->next_to_use;
-	struct xdp_buff *first = NULL;
 	struct ice_tx_ring *xdp_ring;
 	unsigned int xdp_xmit = 0;
 	struct bpf_prog *xdp_prog;
@@ -623,9 +586,6 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	xdp_ring = rx_ring->xdp_ring;
 
-	if (ntc != rx_ring->first_desc)
-		first = *ice_xdp_buf(rx_ring, rx_ring->first_desc);
-
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		union ice_32b_rx_flex_desc *rx_desc;
 		unsigned int size, xdp_res = 0;
@@ -661,15 +621,17 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 			first = xdp;
 		} else if (likely(size) && !xsk_buff_add_frag(first, xdp)) {
 			xsk_buff_free(first);
-			break;
+			first = NULL;
 		}
 
 		if (++ntc == cnt)
 			ntc = 0;
 
-		if (ice_is_non_eop(rx_ring, rx_desc))
+		if (ice_is_non_eop(rx_ring, rx_desc) || unlikely(!first))
 			continue;
 
+		((struct libeth_xdp_buff *)first)->desc = rx_desc;
+
 		xdp_res = ice_run_xdp_zc(rx_ring, first, xdp_prog, xdp_ring,
 					 xsk_pool);
 		if (likely(xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR))) {
@@ -677,7 +639,6 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 		} else if (xdp_res == ICE_XDP_EXIT) {
 			failure = true;
 			first = NULL;
-			rx_ring->first_desc = ntc;
 			break;
 		} else if (xdp_res == ICE_XDP_CONSUMED) {
 			xsk_buff_free(first);
@@ -689,7 +650,6 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 		total_rx_packets++;
 
 		first = NULL;
-		rx_ring->first_desc = ntc;
 		continue;
 
 construct_skb:
@@ -697,12 +657,14 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 		skb = xdp_build_skb_from_zc(first);
 		if (!skb) {
 			xsk_buff_free(first);
+			first = NULL;
+
 			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
-			break;
+			continue;
 		}
 
 		first = NULL;
-		rx_ring->first_desc = ntc;
+
 		total_rx_bytes += skb->len;
 		total_rx_packets++;
 
@@ -713,7 +675,9 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 	}
 
 	rx_ring->next_to_clean = ntc;
-	entries_to_alloc = ICE_RX_DESC_UNUSED(rx_ring);
+	rx_ring->xsk = (struct libeth_xdp_buff *)first;
+
+	entries_to_alloc = ICE_DESC_UNUSED(rx_ring);
 	if (entries_to_alloc > ICE_RING_QUARTER(rx_ring))
 		failure |= !ice_alloc_rx_bufs_zc(rx_ring, xsk_pool,
 						 entries_to_alloc);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
index 600cbeeaa203..5275fcedc9e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.h
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
@@ -22,7 +22,7 @@ bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
 void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
 void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
 bool ice_xmit_zc(struct ice_tx_ring *xdp_ring, struct xsk_buff_pool *xsk_pool);
-int ice_realloc_zc_buf(struct ice_vsi *vsi, bool zc);
+int ice_realloc_rx_xdp_bufs(struct ice_rx_ring *rx_ring, bool pool_present);
 void ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
 		       u16 qid);
 void ice_qvec_toggle_napi(struct ice_vsi *vsi, struct ice_q_vector *q_vector,
@@ -77,8 +77,8 @@ static inline void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring) { }
 static inline void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring) { }
 
 static inline int
-ice_realloc_zc_buf(struct ice_vsi __always_unused *vsi,
-		   bool __always_unused zc)
+ice_realloc_rx_xdp_bufs(struct ice_rx_ring *rx_ring,
+			bool __always_unused pool_present)
 {
 	return 0;
 }
-- 
2.45.2

