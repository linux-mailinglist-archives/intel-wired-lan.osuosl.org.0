Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1191F8C6A35
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 18:09:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7FBF819D2;
	Wed, 15 May 2024 16:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0v1a3XdwAqZ; Wed, 15 May 2024 16:09:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A18BD816F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715789366;
	bh=k2uOmkvvQx3p/sIopksRG/mSluWr7oGfeDmMWCj8p+c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RoumbEq35pyo3RWV78hJsuY0V9+e0xiVstKD1L0545ldyp8fTtaW/Xj8ykhoTg/ua
	 aYjt99RVLKl5az38gJ/yGPtMmQbLaOOqNC7fIWKlOoZFWzEKVN67MBy7nh6T4zh+g3
	 wydYxeLTgD0XkD93yHZ097zDOD43Eh8MdIzOCLj1GKi7Qt2SvEhFG6Q9rbOxh7btqs
	 HAO3L/NO0tBPEUMM5CgLV53sn03eT53YdwwPopL8fxwj7OWnWtsiy7SeiYkADIDA11
	 UXQmb3AWQ67MbhmAO2VbYpX0Zsze080FMxnk0Mal5p2Kw2RsAetPN8oRg/9Sg7uwjf
	 LgIDcmS1ZgPXQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A18BD816F5;
	Wed, 15 May 2024 16:09:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B50491BF396
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A156D41B15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hbiZC4TPBBVU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 16:09:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 974E141B09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 974E141B09
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 974E141B09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:23 +0000 (UTC)
X-CSE-ConnectionGUID: wgiU9E+nQFGe8/f2YXan6Q==
X-CSE-MsgGUID: qkkyapIPR7Wp5Q7Y9JEEUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11666377"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="11666377"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 09:09:22 -0700
X-CSE-ConnectionGUID: 5lqvZ+JqTWmpf2WdtEdxJQ==
X-CSE-MsgGUID: c4+sj1fMRVGbWkrrr0RDvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="62297336"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 15 May 2024 09:09:17 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 73EB72878E;
 Wed, 15 May 2024 17:09:11 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 15 May 2024 18:02:14 +0200
Message-ID: <20240515160246.5181-2-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240515160246.5181-1-larysa.zaremba@intel.com>
References: <20240515160246.5181-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715789363; x=1747325363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O+tfDMoXmeRpSYY+cqgQrvesO5RmeB3V1Oxo9Zb/W7w=;
 b=FH1bWrhxpmoBI2/aRf6Mk8OAqr7hUDT9Bk4Js4sZoXlXEwLynp6Rgq43
 Lv+FNMn1KKyrhC6ZJLnwZ6v9cBGihF+dmF0C3TPrjaYdw3d3Q76rZsKgQ
 BlgzZ0DpPmEzrQ3fqn1FH8UBlqaz4JrNoXFdfwysUNUQo3aEs5coQXr+p
 GxLKXCwFpebzZK0lIOw/Ki0JUknchgqO8cIK3qE4kf/lK7dg6bu47oQz9
 YFXUYNvnm+WSVRJeKVQV0R8GABNxfIf5EqWmiVZsEbrr2IHAW85apTiLY
 rik9Emf8gOlkHnX5JrROdaVKZXLHQmVfLqY/Ow5z341uvTWmN+GO1xqQe
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FH1bWrhx
Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: remove af_xdp_zc_qps
 bitmap
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
Cc: maciej.fijalkowski@intel.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Magnus Karlsson <magnus.karlsson@gmail.com>,
 igor.bagnucki@intel.com, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Referenced commit has introduced a bitmap to distinguish between ZC and
copy-mode AF_XDP queues, because xsk_get_pool_from_qid() does not do this
for us.

The bitmap would be especially useful when restoring previous state after
rebuild, if only it was not reallocated in the process. This leads to e.g.
xdpsock dying after changing number of queues.

Instead of preserving the bitmap during the rebuild, remove it completely
and distinguish between ZC and copy-mode queues based on the presence of
a device associated with the pool.

Fixes: e102db780e1c ("ice: track AF_XDP ZC enabled queues in bitmap")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h     | 32 ++++++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_lib.c |  8 ------
 drivers/net/ethernet/intel/ice/ice_xsk.c | 13 +++++-----
 3 files changed, 27 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 6ad8002b22e1..d4d840729bda 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -409,7 +409,6 @@ struct ice_vsi {
 	struct ice_tc_cfg tc_cfg;
 	struct bpf_prog *xdp_prog;
 	struct ice_tx_ring **xdp_rings;	 /* XDP ring array */
-	unsigned long *af_xdp_zc_qps;	 /* tracks AF_XDP ZC enabled qps */
 	u16 num_xdp_txq;		 /* Used XDP queues */
 	u8 xdp_mapping_mode;		 /* ICE_MAP_MODE_[CONTIG|SCATTER] */
 
@@ -746,6 +745,25 @@ static inline void ice_set_ring_xdp(struct ice_tx_ring *ring)
 	ring->flags |= ICE_TX_FLAGS_RING_XDP;
 }
 
+/**
+ * ice_get_xp_from_qid - get ZC XSK buffer pool bound to a queue ID
+ * @vsi: pointer to VSI
+ * @qid: index of a queue to look at XSK buff pool presence
+ *
+ * Returns a pointer to xsk_buff_pool structure if there is a buffer pool
+ * attached and configured as zero-copy, NULL otherwise.
+ */
+static inline struct xsk_buff_pool *ice_get_xp_from_qid(struct ice_vsi *vsi,
+							u16 qid)
+{
+	struct xsk_buff_pool *pool = xsk_get_pool_from_qid(vsi->netdev, qid);
+
+	if (!ice_is_xdp_ena_vsi(vsi))
+		return NULL;
+
+	return (pool && pool->dev) ? pool : NULL;
+}
+
 /**
  * ice_xsk_pool - get XSK buffer pool bound to a ring
  * @ring: Rx ring to use
@@ -758,10 +776,7 @@ static inline struct xsk_buff_pool *ice_xsk_pool(struct ice_rx_ring *ring)
 	struct ice_vsi *vsi = ring->vsi;
 	u16 qid = ring->q_index;
 
-	if (!ice_is_xdp_ena_vsi(vsi) || !test_bit(qid, vsi->af_xdp_zc_qps))
-		return NULL;
-
-	return xsk_get_pool_from_qid(vsi->netdev, qid);
+	return ice_get_xp_from_qid(vsi, qid);
 }
 
 /**
@@ -786,12 +801,7 @@ static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
 	if (!ring)
 		return;
 
-	if (!ice_is_xdp_ena_vsi(vsi) || !test_bit(qid, vsi->af_xdp_zc_qps)) {
-		ring->xsk_pool = NULL;
-		return;
-	}
-
-	ring->xsk_pool = xsk_get_pool_from_qid(vsi->netdev, qid);
+	ring->xsk_pool = ice_get_xp_from_qid(vsi, qid);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5371e91f6bbb..c0a7ff6c7e87 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -114,14 +114,8 @@ static int ice_vsi_alloc_arrays(struct ice_vsi *vsi)
 	if (!vsi->q_vectors)
 		goto err_vectors;
 
-	vsi->af_xdp_zc_qps = bitmap_zalloc(max_t(int, vsi->alloc_txq, vsi->alloc_rxq), GFP_KERNEL);
-	if (!vsi->af_xdp_zc_qps)
-		goto err_zc_qps;
-
 	return 0;
 
-err_zc_qps:
-	devm_kfree(dev, vsi->q_vectors);
 err_vectors:
 	devm_kfree(dev, vsi->rxq_map);
 err_rxq_map:
@@ -309,8 +303,6 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
 
 	dev = ice_pf_to_dev(pf);
 
-	bitmap_free(vsi->af_xdp_zc_qps);
-	vsi->af_xdp_zc_qps = NULL;
 	/* free the ring and vector containers */
 	devm_kfree(dev, vsi->q_vectors);
 	vsi->q_vectors = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index aa81d1162b81..2015f66b0cf9 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -269,7 +269,6 @@ static int ice_xsk_pool_disable(struct ice_vsi *vsi, u16 qid)
 	if (!pool)
 		return -EINVAL;
 
-	clear_bit(qid, vsi->af_xdp_zc_qps);
 	xsk_pool_dma_unmap(pool, ICE_RX_DMA_ATTR);
 
 	return 0;
@@ -300,8 +299,6 @@ ice_xsk_pool_enable(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 	if (err)
 		return err;
 
-	set_bit(qid, vsi->af_xdp_zc_qps);
-
 	return 0;
 }
 
@@ -349,11 +346,13 @@ ice_realloc_rx_xdp_bufs(struct ice_rx_ring *rx_ring, bool pool_present)
 int ice_realloc_zc_buf(struct ice_vsi *vsi, bool zc)
 {
 	struct ice_rx_ring *rx_ring;
-	unsigned long q;
+	uint i;
+
+	ice_for_each_rxq(vsi, i) {
+		rx_ring = vsi->rx_rings[i];
+		if (!rx_ring->xsk_pool)
+			continue;
 
-	for_each_set_bit(q, vsi->af_xdp_zc_qps,
-			 max_t(int, vsi->alloc_txq, vsi->alloc_rxq)) {
-		rx_ring = vsi->rx_rings[q];
 		if (ice_realloc_rx_xdp_bufs(rx_ring, zc))
 			return -ENOMEM;
 	}
-- 
2.43.0

