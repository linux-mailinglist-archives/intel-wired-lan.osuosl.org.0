Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6623EB1EC96
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 17:57:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EE4960DD8;
	Fri,  8 Aug 2025 15:57:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PZ44Xu3rFzdu; Fri,  8 Aug 2025 15:57:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 522AA60DD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754668645;
	bh=Ljo3FfXs4tFd87xBxbaxqRrubOOt8eQksjTtV/CIgqI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YeMoA075kF5Ej5WjXDBCNZHH25EOYl2chfsIiB8ycZXdGLPSkm9PcfjOp92wlWlab
	 F1nyEb3hBNgoFftETNHxs3uPJh8COOcvwFAdLVltwy9YkWcESv4NeAJbU+Dxd51LJ4
	 mSL3GZqZzBxcRNVlP37bvy+l75YKkC9oXQTvZsO+RbGU+VX/ffzUxiLp3WT1jRvYjH
	 5uALa6aVH+NugKQ4zb+44DRtZLbBoD3ZxbOc++wbVczTYeordIjQ5oE3lcCT7A70jU
	 JKBeVOss1DY18XkJAsE+qAkdU8olKKHNeYU7ATMoio4tjSaNOYDyvr4n+h/aLgDUJO
	 oAT1jJwnbr6Cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 522AA60DD5;
	Fri,  8 Aug 2025 15:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 639A331
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55A6040593
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o8EaLoaIfarc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 15:57:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 463574072A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 463574072A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 463574072A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 15:57:22 +0000 (UTC)
X-CSE-ConnectionGUID: /taxkEjZTZeIUvFuPzJMpA==
X-CSE-MsgGUID: 35nDwSnVTcCnp5b5HxvcVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="68099712"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="68099712"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 08:57:22 -0700
X-CSE-ConnectionGUID: eZ8ry1czSnqRjxkgXZ5++g==
X-CSE-MsgGUID: ki0dvCrhS/uuELt/wOseiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="169559897"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 08:57:19 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 jacob.e.keller@intel.com, larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, pmenzel@molgen.mpg.de,
 anthony.l.nguyen@intel.com, Michal Kubiak <michal.kubiak@intel.com>
Date: Fri,  8 Aug 2025 17:56:57 +0200
Message-ID: <20250808155659.1053560-2-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250808155659.1053560-1-michal.kubiak@intel.com>
References: <20250808155659.1053560-1-michal.kubiak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754668642; x=1786204642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9WhpwqiCq4FLWD6WNmGFHCXxJN0t8ioaK2+aEb0Sc9k=;
 b=CCHhpbmJIDW8Hz7PHswkEUPHFnvyKLcOE5XXh9HKDEBNqmtHQ4wdkh2H
 TMC2rSsZMTiINACPj8sdrSl6GdN65Sb34z0XXhP3X7MFCdvSY3ZqGP+f8
 WCpuTsVgu96yEJWEv1xSJjeLvLSkMy/3eqJkS8bBp2Xw3RQJmzfO5Ctlk
 /TcyMfNTI22Wby2imshqLOEJrk6b5QxiPXrAb89mvkhaadIb5e9XpHeBE
 CNyy3xvPsP/crd3RJVVUePOWLX702GGWSglQhAxT4zzMktiA1k8UVl6vy
 afRWEMP9WIV5u/3Yi4QaSDhZz6BLe559+0fyLiXcvflSW4YxVY54MSa8Z
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CCHhpbmJ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: remove legacy Rx and
 construct SKB
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

The commit 53844673d555 ("iavf: kill 'legacy-rx' for good") removed
the legacy Rx path in the iavf driver. This change applies the same
rationale to the ice driver.

The legacy Rx path relied on manual skb allocation and header copying,
which has become increasingly inefficient and difficult to maintain.
With the stabilization of build_skb() and the growing adoption of
features like XDP, page_pool, and multi-buffer support, the legacy
approach is no longer viable.

Key drawbacks of the legacy path included:
- Higher memory pressure due to direct page allocations and splitting;
- Redundant memcpy() operations for packet headers;
- CPU overhead from eth_get_headlen() and Flow Dissector usage;
- Compatibility issues with XDP, which imposes strict headroom and
  tailroom requirements.

The ice driver, like iavf, does not benefit from the minimal headroom
savings that legacy Rx once offered, as it already splits pages into
fixed halves. Removing this path simplifies the Rx logic, eliminates
unnecessary branches in the hotpath, and prepares the driver for
upcoming enhancements.

In addition to removing the legacy Rx path, this change also eliminates
the custom construct_skb() functions from both the standard and
zero-copy (ZC) Rx paths. These are replaced with the build_skb()
and standarized xdp_build_skb_from_zc() helpers, aligning the driver
with the modern XDP infrastructure and reducing code duplication.

This cleanup also reduces code complexity and improves maintainability
as we move toward a more unified and modern Rx model across drivers.

Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 -
 drivers/net/ethernet/intel/ice/ice_base.c    | 23 +-----
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 --
 drivers/net/ethernet/intel/ice/ice_main.c    | 11 +--
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 86 +-------------------
 drivers/net/ethernet/intel/ice/ice_xsk.c     | 72 +---------------
 6 files changed, 6 insertions(+), 192 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e952d67388bf..d67dc2f02acf 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -504,7 +504,6 @@ enum ice_pf_flags {
 	ICE_FLAG_MOD_POWER_UNSUPPORTED,
 	ICE_FLAG_PHY_FW_LOAD_FAILED,
 	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds RTNL lock */
-	ICE_FLAG_LEGACY_RX,
 	ICE_FLAG_VF_TRUE_PROMISC_ENA,
 	ICE_FLAG_MDD_AUTO_RESET_VF,
 	ICE_FLAG_VF_VLAN_PRUNING,
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index c5da8e9cc0a0..db2fa4a6bc67 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -357,19 +357,6 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 	tlan_ctx->legacy_int = ICE_TX_LEGACY;
 }
 
-/**
- * ice_rx_offset - Return expected offset into page to access data
- * @rx_ring: Ring we are requesting offset of
- *
- * Returns the offset value for ring into the data buffer.
- */
-static unsigned int ice_rx_offset(struct ice_rx_ring *rx_ring)
-{
-	if (ice_ring_uses_build_skb(rx_ring))
-		return ICE_SKB_PAD;
-	return 0;
-}
-
 /**
  * ice_setup_rx_ctx - Configure a receive ring context
  * @ring: The Rx ring to configure
@@ -482,13 +469,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	if (vsi->type == ICE_VSI_VF)
 		return 0;
 
-	/* configure Rx buffer alignment */
-	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags))
-		ice_clear_ring_build_skb_ena(ring);
-	else
-		ice_set_ring_build_skb_ena(ring);
-
-	ring->rx_offset = ice_rx_offset(ring);
+	ring->rx_offset = ICE_SKB_PAD;
 
 	/* init queue specific tail register */
 	ring->tail = hw->hw_addr + QRX_TAIL(pf_q);
@@ -649,7 +630,7 @@ int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
  */
 static void ice_vsi_cfg_frame_size(struct ice_vsi *vsi, struct ice_rx_ring *ring)
 {
-	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
+	if (!vsi->netdev) {
 		ring->max_frame = ICE_MAX_FRAME_LEGACY_RX;
 		ring->rx_buf_len = ICE_RXBUF_1664;
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 55e0f2c6af9e..804fe474a41f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -340,7 +340,6 @@ static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 		      ICE_FLAG_VF_TRUE_PROMISC_ENA),
 	ICE_PRIV_FLAG("mdd-auto-reset-vf", ICE_FLAG_MDD_AUTO_RESET_VF),
 	ICE_PRIV_FLAG("vf-vlan-pruning", ICE_FLAG_VF_VLAN_PRUNING),
-	ICE_PRIV_FLAG("legacy-rx", ICE_FLAG_LEGACY_RX),
 };
 
 #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
@@ -1869,10 +1868,6 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			ice_nway_reset(netdev);
 		}
 	}
-	if (test_bit(ICE_FLAG_LEGACY_RX, change_flags)) {
-		/* down and up VSI so that changes of Rx cfg are reflected. */
-		ice_down_up(vsi);
-	}
 	/* don't allow modification of this flag when a single VF is in
 	 * promiscuous mode because it's not supported
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1528edeae24..f68d28be4d9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2981,10 +2981,7 @@ int ice_vsi_determine_xdp_res(struct ice_vsi *vsi)
  */
 static int ice_max_xdp_frame_size(struct ice_vsi *vsi)
 {
-	if (test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags))
-		return ICE_RXBUF_1664;
-	else
-		return ICE_RXBUF_3072;
+	return ICE_RXBUF_3072;
 }
 
 /**
@@ -7878,12 +7875,6 @@ int ice_change_mtu(struct net_device *netdev, int new_mtu)
 				   frame_size - ICE_ETH_PKT_HDR_PAD);
 			return -EINVAL;
 		}
-	} else if (test_bit(ICE_FLAG_LEGACY_RX, pf->flags)) {
-		if (new_mtu + ICE_ETH_PKT_HDR_PAD > ICE_MAX_FRAME_LEGACY_RX) {
-			netdev_err(netdev, "Too big MTU for legacy-rx; Max is %d\n",
-				   ICE_MAX_FRAME_LEGACY_RX - ICE_ETH_PKT_HDR_PAD);
-			return -EINVAL;
-		}
 	}
 
 	/* if a reset is in progress, wait for some time for it to complete */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 93907ab2eac7..fb1d14bd20d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1039,87 +1039,6 @@ ice_build_skb(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
 	return skb;
 }
 
-/**
- * ice_construct_skb - Allocate skb and populate it
- * @rx_ring: Rx descriptor ring to transact packets on
- * @xdp: xdp_buff pointing to the data
- *
- * This function allocates an skb. It then populates it with the page
- * data from the current receive descriptor, taking care to set up the
- * skb correctly.
- */
-static struct sk_buff *
-ice_construct_skb(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
-{
-	unsigned int size = xdp->data_end - xdp->data;
-	struct skb_shared_info *sinfo = NULL;
-	struct ice_rx_buf *rx_buf;
-	unsigned int nr_frags = 0;
-	unsigned int headlen;
-	struct sk_buff *skb;
-
-	/* prefetch first cache line of first page */
-	net_prefetch(xdp->data);
-
-	if (unlikely(xdp_buff_has_frags(xdp))) {
-		sinfo = xdp_get_shared_info_from_buff(xdp);
-		nr_frags = sinfo->nr_frags;
-	}
-
-	/* allocate a skb to store the frags */
-	skb = napi_alloc_skb(&rx_ring->q_vector->napi, ICE_RX_HDR_SIZE);
-	if (unlikely(!skb))
-		return NULL;
-
-	rx_buf = &rx_ring->rx_buf[rx_ring->first_desc];
-	skb_record_rx_queue(skb, rx_ring->q_index);
-	/* Determine available headroom for copy */
-	headlen = size;
-	if (headlen > ICE_RX_HDR_SIZE)
-		headlen = eth_get_headlen(skb->dev, xdp->data, ICE_RX_HDR_SIZE);
-
-	/* align pull length to size of long to optimize memcpy performance */
-	memcpy(__skb_put(skb, headlen), xdp->data, ALIGN(headlen,
-							 sizeof(long)));
-
-	/* if we exhaust the linear part then add what is left as a frag */
-	size -= headlen;
-	if (size) {
-		/* besides adding here a partial frag, we are going to add
-		 * frags from xdp_buff, make sure there is enough space for
-		 * them
-		 */
-		if (unlikely(nr_frags >= MAX_SKB_FRAGS - 1)) {
-			dev_kfree_skb(skb);
-			return NULL;
-		}
-		skb_add_rx_frag(skb, 0, rx_buf->page,
-				rx_buf->page_offset + headlen, size,
-				xdp->frame_sz);
-	} else {
-		/* buffer is unused, restore biased page count in Rx buffer;
-		 * data was copied onto skb's linear part so there's no
-		 * need for adjusting page offset and we can reuse this buffer
-		 * as-is
-		 */
-		rx_buf->pagecnt_bias++;
-	}
-
-	if (unlikely(xdp_buff_has_frags(xdp))) {
-		struct skb_shared_info *skinfo = skb_shinfo(skb);
-
-		memcpy(&skinfo->frags[skinfo->nr_frags], &sinfo->frags[0],
-		       sizeof(skb_frag_t) * nr_frags);
-
-		xdp_update_skb_shared_info(skb, skinfo->nr_frags + nr_frags,
-					   sinfo->xdp_frags_size,
-					   nr_frags * xdp->frame_sz,
-					   xdp_buff_is_frag_pfmemalloc(xdp));
-	}
-
-	return skb;
-}
-
 /**
  * ice_put_rx_buf - Clean up used buffer and either recycle or free
  * @rx_ring: Rx descriptor ring to transact packets on
@@ -1331,10 +1250,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 
 		continue;
 construct_skb:
-		if (likely(ice_ring_uses_build_skb(rx_ring)))
-			skb = ice_build_skb(rx_ring, xdp);
-		else
-			skb = ice_construct_skb(rx_ring, xdp);
+		skb = ice_build_skb(rx_ring, xdp);
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a3a4eaa17739..eecbc08a491a 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -537,69 +537,6 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring,
 	return __ice_alloc_rx_bufs_zc(rx_ring, xsk_pool, leftover);
 }
 
-/**
- * ice_construct_skb_zc - Create an sk_buff from zero-copy buffer
- * @rx_ring: Rx ring
- * @xdp: Pointer to XDP buffer
- *
- * This function allocates a new skb from a zero-copy Rx buffer.
- *
- * Returns the skb on success, NULL on failure.
- */
-static struct sk_buff *
-ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
-{
-	unsigned int totalsize = xdp->data_end - xdp->data_meta;
-	unsigned int metasize = xdp->data - xdp->data_meta;
-	struct skb_shared_info *sinfo = NULL;
-	struct sk_buff *skb;
-	u32 nr_frags = 0;
-
-	if (unlikely(xdp_buff_has_frags(xdp))) {
-		sinfo = xdp_get_shared_info_from_buff(xdp);
-		nr_frags = sinfo->nr_frags;
-	}
-	net_prefetch(xdp->data_meta);
-
-	skb = napi_alloc_skb(&rx_ring->q_vector->napi, totalsize);
-	if (unlikely(!skb))
-		return NULL;
-
-	memcpy(__skb_put(skb, totalsize), xdp->data_meta,
-	       ALIGN(totalsize, sizeof(long)));
-
-	if (metasize) {
-		skb_metadata_set(skb, metasize);
-		__skb_pull(skb, metasize);
-	}
-
-	if (likely(!xdp_buff_has_frags(xdp)))
-		goto out;
-
-	for (int i = 0; i < nr_frags; i++) {
-		struct skb_shared_info *skinfo = skb_shinfo(skb);
-		skb_frag_t *frag = &sinfo->frags[i];
-		struct page *page;
-		void *addr;
-
-		page = dev_alloc_page();
-		if (!page) {
-			dev_kfree_skb(skb);
-			return NULL;
-		}
-		addr = page_to_virt(page);
-
-		memcpy(addr, skb_frag_page(frag), skb_frag_size(frag));
-
-		__skb_fill_page_desc_noacc(skinfo, skinfo->nr_frags++,
-					   addr, 0, skb_frag_size(frag));
-	}
-
-out:
-	xsk_buff_free(xdp);
-	return skb;
-}
-
 /**
  * ice_clean_xdp_irq_zc - produce AF_XDP descriptors to CQ
  * @xdp_ring: XDP Tx ring
@@ -902,20 +839,15 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring,
 
 construct_skb:
 		/* XDP_PASS path */
-		skb = ice_construct_skb_zc(rx_ring, first);
+		skb = xdp_build_skb_from_zc(first);
 		if (!skb) {
+			xsk_buff_free(first);
 			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
 			break;
 		}
 
 		first = NULL;
 		rx_ring->first_desc = ntc;
-
-		if (eth_skb_pad(skb)) {
-			skb = NULL;
-			continue;
-		}
-
 		total_rx_bytes += skb->len;
 		total_rx_packets++;
 
-- 
2.45.2

