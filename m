Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 779E2BBE9EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 18:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37C6A4129B;
	Mon,  6 Oct 2025 16:21:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMXr3TyGw-_H; Mon,  6 Oct 2025 16:21:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A24C41297
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759767680;
	bh=iPvhq/ksasUaBuVRSdawNdFXfwAa4h4HDTm9eXo2t1c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SIdzGdgD1gLbQXhMRSYgKSdSf6kSxCv11YNM7YEq3qdJipVWpI8KcKa7i0WKxN/De
	 Q+ZRVKJNSWNkgegoMyZLLy3G9P/tE95aXW7EvPaKu0QzSNAwhi+1gtpeUYeGS1SmuH
	 wwCe44DLlTFRk6ZapdIc+eCCrjpGuNoUJQQlH03iwVrGfZzsVlcuViDpIuK8SX8SH0
	 0bHfUJsvvKrV4Xf/LRrNOrwi6HbA8EpSmy448xHiP2b73aBDxQ/6upQZdyRUaZ88lb
	 4X155hwYv/6xh+P5U4RrOq8RzRQBsXMmUdd5+iG7S3zN8KUQ14LCsJWUjdc4UtgRJ4
	 wLipTzf/ZcFEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A24C41297;
	Mon,  6 Oct 2025 16:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ABEDF272
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 16:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C68761340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 16:21:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4H7YKlTAw5cL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 16:21:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 84CD36135A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84CD36135A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84CD36135A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 16:21:17 +0000 (UTC)
X-CSE-ConnectionGUID: q3E7K2qsTTeAWW2W1mzyaQ==
X-CSE-MsgGUID: adpwfVOZSceiD902qsI7gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="64563577"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="64563577"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:21:17 -0700
X-CSE-ConnectionGUID: MsEbhJ8IQeCQiZq3OXK8pg==
X-CSE-MsgGUID: LIcNvD0dSyWZUZGk3Jtl+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179735915"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa007.jf.intel.com with ESMTP; 06 Oct 2025 09:21:14 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon,  6 Oct 2025 18:20:53 +0200
Message-ID: <20251006162053.3550824-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759767677; x=1791303677;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Bmm5wu76HOCowD6jqTKgibPCHslvR9/yMgW+lWCeWZ4=;
 b=c+LxwfVpotASU1GdA+fVzt1FIvYocG3i9hizccd9BuikqwUTrLv6iEz0
 gpRGx+q0YdDzgxbxSFAhYsP0Oqj+ss5frEkH5v4Pfkc28oqOdWceLMkkt
 b3wToKNC3OVx29pcwalL89Uvojo9HJQ3QIFhHLqPszSsih6uNsBpoxf/n
 MYSxe9+MuIC6dzhVEZERU/mR3Q9kxOfSETjvmzEu7aQwBv6VtlrbcGOWE
 7pzH44Q1k41AyMLOa1Ar3xYtTjorK78sAkT37hsRv0zY6Gst+Ge6ZmgJK
 KTjchD+eFMdeANSZKgBEG+kH22WrquHdTZz80lQQhqYLYdl6H83uKhRqL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c+LxwfVp
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
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

Add second page_pool for header buffers to each Rx queue and ability
to toggle the header split on/off using Ethtool (default to off to
match the current behaviour).
Unlike idpf, all HW backed up by ice doesn't require any W/As and
correctly splits all types of packets as configured: after L4 headers
for TCP/UDP/SCTP, after L3 headers for other IPv4/IPv6 frames, after
the Ethernet header otherwise (in case of tunneling, same as above,
but after innermost headers).
This doesn't affect the XSk path as there are no benefits of having
it there.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
Applies on top of Tony's next-queue, depends on Michał's Page Pool
conversion series.

Sending for review and validation purposes.

Testing hints: traffic testing with and without header split enabled.
The header split can be turned on/off using Ethtool:

sudo ethtool -G <iface> tcp-data-split on (or off)
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  3 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  7 ++
 drivers/net/ethernet/intel/ice/ice_base.c     | 89 +++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 15 +++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 89 +++++++++++++++----
 6 files changed, 168 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d46ff9c97c86..bef3d6d8d491 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -351,6 +351,7 @@ struct ice_vsi {
 	u16 num_q_vectors;
 	/* tell if only dynamic irq allocation is allowed */
 	bool irq_dyn_alloc;
+	bool hsplit:1;
 
 	u16 vsi_num;			/* HW (absolute) index of this VSI */
 	u16 idx;			/* software index in pf->vsi[] */
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 10c312d49e05..185672c7e17d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -342,6 +342,9 @@ enum ice_flg64_bits {
 /* for ice_32byte_rx_flex_desc.pkt_length member */
 #define ICE_RX_FLX_DESC_PKT_LEN_M	(0x3FFF) /* 14-bits */
 
+/* ice_32byte_rx_flex_desc::hdr_len_sph_flex_flags1 */
+#define ICE_RX_FLEX_DESC_HDR_LEN_M	GENMASK(10, 0)
+
 enum ice_rx_flex_desc_status_error_0_bits {
 	/* Note: These are predefined bit offsets */
 	ICE_RX_FLEX_DESC_STATUS0_DD_S = 0,
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index e97a38ef3fe7..e440c55d9e9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -255,6 +255,9 @@ struct ice_rx_ring {
 	};
 
 	/* CL2 - 2nd cacheline starts here */
+	struct libeth_fqe *hdr_fqes;
+	struct page_pool *hdr_pp;
+
 	union {
 		struct libeth_xdp_buff_stash xdp;
 		struct libeth_xdp_buff *xsk;
@@ -273,6 +276,8 @@ struct ice_rx_ring {
 	/* used in interrupt processing */
 	u16 next_to_use;
 	u16 next_to_clean;
+
+	u32 hdr_truesize;
 	u32 truesize;
 
 	/* stats structs */
@@ -284,6 +289,7 @@ struct ice_rx_ring {
 	struct ice_tx_ring *xdp_ring;
 	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
 	struct xsk_buff_pool *xsk_pool;
+	u16 rx_hdr_len;
 	u16 rx_buf_len;
 	dma_addr_t dma;			/* physical address of ring */
 	u8 dcb_tc;			/* Traffic class of ring */
@@ -396,6 +402,7 @@ static inline unsigned int ice_rx_pg_order(struct ice_rx_ring *ring)
 union ice_32b_rx_flex_desc;
 
 void ice_init_ctrl_rx_descs(struct ice_rx_ring *rx_ring, u32 num_descs);
+void ice_rxq_pp_destroy(struct ice_rx_ring *rq);
 bool ice_alloc_rx_bufs(struct ice_rx_ring *rxr, unsigned int cleaned_count);
 netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 u16
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index eabab50fab33..eadb1e3d12b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -524,8 +524,29 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	else
 		rlan_ctx.l2tsel = 1;
 
-	rlan_ctx.dtype = ICE_RX_DTYPE_NO_SPLIT;
-	rlan_ctx.hsplit_0 = ICE_RLAN_RX_HSPLIT_0_NO_SPLIT;
+	if (ring->hdr_pp) {
+		rlan_ctx.hbuf = ring->rx_hdr_len >> ICE_RLAN_CTX_HBUF_S;
+		rlan_ctx.dtype = ICE_RX_DTYPE_HEADER_SPLIT;
+
+		/*
+		 * If the frame is TCP/UDP/SCTP, it will be split by the
+		 * payload.
+		 * If not, but it's an IPv4/IPv6 frame, it will be split by
+		 * the IP header.
+		 * If not IP, it will be split by the Ethernet header.
+		 *
+		 * In any case, the header buffer will never be left empty.
+		 */
+		rlan_ctx.hsplit_0 = ICE_RLAN_RX_HSPLIT_0_SPLIT_L2 |
+				    ICE_RLAN_RX_HSPLIT_0_SPLIT_IP |
+				    ICE_RLAN_RX_HSPLIT_0_SPLIT_TCP_UDP |
+				    ICE_RLAN_RX_HSPLIT_0_SPLIT_SCTP;
+	} else {
+		rlan_ctx.hbuf = 0;
+		rlan_ctx.dtype = ICE_RX_DTYPE_NO_SPLIT;
+		rlan_ctx.hsplit_0 = ICE_RLAN_RX_HSPLIT_0_NO_SPLIT;
+	}
+
 	rlan_ctx.hsplit_1 = ICE_RLAN_RX_HSPLIT_1_NO_SPLIT;
 
 	/* This controls whether VLAN is stripped from inner headers
@@ -581,6 +602,53 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	return 0;
 }
 
+static int ice_rxq_pp_create(struct ice_rx_ring *rq)
+{
+	struct libeth_fq fq = {
+		.count		= rq->count,
+		.nid		= NUMA_NO_NODE,
+		.hsplit		= rq->vsi->hsplit,
+		.xdp		= ice_is_xdp_ena_vsi(rq->vsi),
+		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
+	};
+	int err;
+
+	err = libeth_rx_fq_create(&fq, &rq->q_vector->napi);
+	if (err)
+		return err;
+
+	rq->pp = fq.pp;
+	rq->rx_fqes = fq.fqes;
+	rq->truesize = fq.truesize;
+	rq->rx_buf_len = fq.buf_len;
+
+	if (!fq.hsplit)
+		return 0;
+
+	fq = (struct libeth_fq){
+		.count		= rq->count,
+		.type		= LIBETH_FQE_HDR,
+		.nid		= NUMA_NO_NODE,
+		.xdp		= ice_is_xdp_ena_vsi(rq->vsi),
+	};
+
+	err = libeth_rx_fq_create(&fq, &rq->q_vector->napi);
+	if (err)
+		goto destroy;
+
+	rq->hdr_pp = fq.pp;
+	rq->hdr_fqes = fq.fqes;
+	rq->hdr_truesize = fq.truesize;
+	rq->rx_hdr_len = fq.buf_len;
+
+	return 0;
+
+destroy:
+	ice_rxq_pp_destroy(rq);
+
+	return err;
+}
+
 /**
  * ice_vsi_cfg_rxq - Configure an Rx queue
  * @ring: the ring being configured
@@ -589,12 +657,6 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
  */
 static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 {
-	struct libeth_fq fq = {
-		.count		= ring->count,
-		.nid		= NUMA_NO_NODE,
-		.xdp		= ice_is_xdp_ena_vsi(ring->vsi),
-		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
-	};
 	struct device *dev = ice_pf_to_dev(ring->vsi->back);
 	u32 num_bufs = ICE_DESC_UNUSED(ring);
 	u32 rx_buf_len;
@@ -636,15 +698,10 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			dev_info(dev, "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
 				 ring->q_index);
 		} else {
-			err = libeth_rx_fq_create(&fq, &ring->q_vector->napi);
+			err = ice_rxq_pp_create(ring);
 			if (err)
 				return err;
 
-			ring->pp = fq.pp;
-			ring->rx_fqes = fq.fqes;
-			ring->truesize = fq.truesize;
-			ring->rx_buf_len = fq.buf_len;
-
 			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
 				err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 							 ring->q_index,
@@ -699,9 +756,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 	return 0;
 
 err_destroy_fq:
-	libeth_rx_fq_destroy(&fq);
-	ring->rx_fqes = NULL;
-	ring->pp = NULL;
+	ice_rxq_pp_destroy(ring);
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 9204fa719a8e..b08a28dc5599 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3164,6 +3164,10 @@ ice_get_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 	ring->rx_jumbo_max_pending = 0;
 	ring->rx_mini_pending = 0;
 	ring->rx_jumbo_pending = 0;
+
+	kernel_ring->tcp_data_split = vsi->hsplit ?
+				      ETHTOOL_TCP_DATA_SPLIT_ENABLED :
+				      ETHTOOL_TCP_DATA_SPLIT_DISABLED;
 }
 
 static int
@@ -3180,6 +3184,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 	int i, timeout = 50, err = 0;
 	struct ice_hw *hw = &pf->hw;
 	u16 new_rx_cnt, new_tx_cnt;
+	bool hsplit;
 
 	if (ring->tx_pending > ICE_MAX_NUM_DESC_BY_MAC(hw) ||
 	    ring->tx_pending < ICE_MIN_NUM_DESC ||
@@ -3205,9 +3210,12 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		netdev_info(netdev, "Requested Rx descriptor count rounded up to %d\n",
 			    new_rx_cnt);
 
+	hsplit = kernel_ring->tcp_data_split == ETHTOOL_TCP_DATA_SPLIT_ENABLED;
+
 	/* if nothing to do return success */
 	if (new_tx_cnt == vsi->tx_rings[0]->count &&
-	    new_rx_cnt == vsi->rx_rings[0]->count) {
+	    new_rx_cnt == vsi->rx_rings[0]->count &&
+	    hsplit == vsi->hsplit) {
 		netdev_dbg(netdev, "Nothing to change, descriptor count is same as requested\n");
 		return 0;
 	}
@@ -3237,6 +3245,8 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 				vsi->xdp_rings[i]->count = new_tx_cnt;
 		vsi->num_tx_desc = (u16)new_tx_cnt;
 		vsi->num_rx_desc = (u16)new_rx_cnt;
+		vsi->hsplit = hsplit;
+
 		netdev_dbg(netdev, "Link is down, descriptor count change happens when link is brought up\n");
 		goto done;
 	}
@@ -3343,6 +3353,8 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 	}
 
 process_link:
+	vsi->hsplit = hsplit;
+
 	/* Bring interface down, copy in the new ring info, then restore the
 	 * interface. if VSI is up, bring it down and then back up
 	 */
@@ -4737,6 +4749,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 				     ETHTOOL_COALESCE_USE_ADAPTIVE |
 				     ETHTOOL_COALESCE_RX_USECS_HIGH,
 	.supported_input_xfrm	= RXH_XFRM_SYM_XOR,
+	.supported_ring_params	= ETHTOOL_RING_USE_TCP_DATA_SPLIT,
 	.get_link_ksettings	= ice_get_link_ksettings,
 	.set_link_ksettings	= ice_set_link_ksettings,
 	.get_fec_stats		= ice_get_fec_stats,
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 5a966138eacf..ad76768a4232 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -508,16 +508,34 @@ int ice_setup_tx_ring(struct ice_tx_ring *tx_ring)
 	return -ENOMEM;
 }
 
+void ice_rxq_pp_destroy(struct ice_rx_ring *rq)
+{
+	struct libeth_fq fq = {
+		.fqes	= rq->rx_fqes,
+		.pp	= rq->pp,
+	};
+
+	libeth_rx_fq_destroy(&fq);
+	rq->rx_fqes = NULL;
+	rq->pp = NULL;
+
+	if (!rq->hdr_pp)
+		return;
+
+	fq.fqes = rq->hdr_fqes;
+	fq.pp = rq->hdr_pp;
+
+	libeth_rx_fq_destroy(&fq);
+	rq->hdr_fqes = NULL;
+	rq->hdr_pp = NULL;
+}
+
 /**
  * ice_clean_rx_ring - Free Rx buffers
  * @rx_ring: ring to be cleaned
  */
 void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 {
-	struct libeth_fq fq = {
-		.fqes	= rx_ring->rx_fqes,
-		.pp	= rx_ring->pp,
-	};
 	u32 size;
 
 	if (rx_ring->xsk_pool) {
@@ -533,9 +551,10 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 
 	/* Free all the Rx ring sk_buffs */
 	for (u32 i = rx_ring->next_to_clean; i != rx_ring->next_to_use; ) {
-		const struct libeth_fqe *rx_fqes = &rx_ring->rx_fqes[i];
+		libeth_rx_recycle_slow(rx_ring->rx_fqes[i].netmem);
 
-		libeth_rx_recycle_slow(rx_fqes->netmem);
+		if (rx_ring->hdr_pp)
+			libeth_rx_recycle_slow(rx_ring->hdr_fqes[i].netmem);
 
 		if (unlikely(++i == rx_ring->count))
 			i = 0;
@@ -547,12 +566,9 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	}
 
-	libeth_rx_fq_destroy(&fq);
-	rx_ring->rx_fqes = NULL;
-	rx_ring->pp = NULL;
+	ice_rxq_pp_destroy(rx_ring);
 
 rx_skip_free:
-
 	/* Zero out the descriptor ring */
 	size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
 		     PAGE_SIZE);
@@ -806,6 +822,12 @@ void ice_init_ctrl_rx_descs(struct ice_rx_ring *rx_ring, u32 count)
  */
 bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 {
+	const struct libeth_fq_fp hdr_fq = {
+		.pp		= rx_ring->hdr_pp,
+		.fqes		= rx_ring->hdr_fqes,
+		.truesize	= rx_ring->hdr_truesize,
+		.count		= rx_ring->count,
+	};
 	const struct libeth_fq_fp fq = {
 		.pp		= rx_ring->pp,
 		.fqes		= rx_ring->rx_fqes,
@@ -836,6 +858,20 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
 		 */
 		rx_desc->read.pkt_addr = cpu_to_le64(addr);
 
+		if (!hdr_fq.pp)
+			goto next;
+
+		addr = libeth_rx_alloc(&hdr_fq, ntu);
+		if (addr == DMA_MAPPING_ERROR) {
+			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
+
+			libeth_rx_recycle_slow(fq.fqes[ntu].netmem);
+			break;
+		}
+
+		rx_desc->read.hdr_addr = cpu_to_le64(addr);
+
+next:
 		rx_desc++;
 		ntu++;
 		if (unlikely(ntu == rx_ring->count)) {
@@ -933,14 +969,16 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		unsigned int size;
 		u16 stat_err_bits;
 		u16 vlan_tci;
+		bool rxe;
 
 		/* get the Rx desc from Rx ring based on 'next_to_clean' */
 		rx_desc = ICE_RX_DESC(rx_ring, ntc);
 
-		/* status_error_len will always be zero for unused descriptors
-		 * because it's cleared in cleanup, and overlaps with hdr_addr
-		 * which is always zero because packet split isn't used, if the
-		 * hardware wrote DD then it will be non-zero
+		/*
+		 * The DD bit will always be zero for unused descriptors
+		 * because it's cleared in cleanup or when setting the DMA
+		 * address of the header buffer, which never uses the DD bit.
+		 * If the hardware wrote the descriptor, it will be non-zero.
 		 */
 		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_DD_S);
 		if (!ice_test_staterr(rx_desc->wb.status_error0, stat_err_bits))
@@ -954,12 +992,27 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 
 		ice_trace(clean_rx_irq, rx_ring, rx_desc);
 
+		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_HBO_S) |
+				BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
+		rxe = ice_test_staterr(rx_desc->wb.status_error0,
+				       stat_err_bits);
+
+		if (!rx_ring->hdr_pp)
+			goto payload;
+
+		size = le16_get_bits(rx_desc->wb.hdr_len_sph_flex_flags1,
+				     ICE_RX_FLEX_DESC_HDR_LEN_M);
+		if (unlikely(rxe))
+			size = 0;
+
+		rx_buf = &rx_ring->hdr_fqes[ntc];
+		libeth_xdp_process_buff(xdp, rx_buf, size);
+		rx_buf->netmem = 0;
+
+payload:
 		size = le16_to_cpu(rx_desc->wb.pkt_len) &
 			ICE_RX_FLX_DESC_PKT_LEN_M;
-
-		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
-		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
-					      stat_err_bits)))
+		if (unlikely(rxe))
 			size = 0;
 
 		/* retrieve a buffer from the ring */
-- 
2.51.0

