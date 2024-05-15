Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FA68C6A38
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 18:09:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 084E381BCF;
	Wed, 15 May 2024 16:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GBmnRBmomG0C; Wed, 15 May 2024 16:09:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6210981769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715789374;
	bh=9RWUilM5GVUU67c6evo9ysg9OQlhaYKHILe4w/IeeK0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ejUsIHQcCezuDD00WxwFa+Rg0FaOH8MH8HzslMsKstgoeBypGhf65PFlYmbrkOKOf
	 GYMTDNG6w7tbp4LqP/hOHwgBD3qJHAqfSXt+T1BvdCRU5cWQMDpLvfiEKtCCauBelG
	 oG9wQt/HbS+BgTOFHBssTQhEUtbZ5y/dvhiZ64GVGCYLVxqePROLMVNwfwomomas2j
	 hyCPo65BrfSjgPj0WGeYdN3ESvzql2gwxEv6FogPyQ+C9AAO9X6jBJau/fo0ZSdvIv
	 X59lJfCVu1I0v9P1AwVUG1ueDhGR0xePcpDoLRchLXWWh1AHTm9sdo08qFnqo8+Yxx
	 1FG2XMct4B9yA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6210981769;
	Wed, 15 May 2024 16:09:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1707B1BF396
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02F51406BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sMShiTwFFZVI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 16:09:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9AC63404BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AC63404BF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AC63404BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:30 +0000 (UTC)
X-CSE-ConnectionGUID: ge5I/OI0RRChmRzrtXhqfg==
X-CSE-MsgGUID: fsd46wW9SsGIwoOhLiujmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11666433"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="11666433"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 09:09:29 -0700
X-CSE-ConnectionGUID: bSWvqI+dTiKMut9rTiuTkQ==
X-CSE-MsgGUID: e4Dcc9b9QvKflhi2hAP4VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="62297407"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 15 May 2024 09:09:23 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 379272878C;
 Wed, 15 May 2024 17:09:21 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 15 May 2024 18:02:16 +0200
Message-ID: <20240515160246.5181-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240515160246.5181-1-larysa.zaremba@intel.com>
References: <20240515160246.5181-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715789370; x=1747325370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Gxh05ckxxnfeE930PbMRic5ZCzGMuBXl35TtGgHFPU=;
 b=aIFrNLd0mfUvyRyyvSVs0hIRVGSt26W4OfXX41oLSybKKqp6OTtPbfv+
 DI1P76EUJ76C9/1Pw87bYVf7CF7yLwSLlcNbnrv/PavWKOjVUrMEr999k
 v194AvnPQtzS0OIpcF20tueoM2lJ8y0HPsjXFqLmw7vNdwW6eCqBE0Y6D
 X7M9ndWe0vEJSsxPAQ6CccsS0P7Or7JUOZhcYJRYZnZ2Z3jyiienAG67E
 PqRY4im38/hdeTUm4QFrBay+oYjA0YJ53XZfL6RO4Pvbar956DKDE8YQa
 xirKh3LITXaHu1rkzI0Qdo6B6a0QNf88687DoqRnzMpxhJ3ZO01ZoeFa3
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aIFrNLd0
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: map XDP queues to
 vectors in ice_vsi_map_rings_to_vectors()
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

ice_pf_dcb_recfg() re-maps queues to vectors with
ice_vsi_map_rings_to_vectors(), which does not restore the previous
state for XDP queues. This leads to no AF_XDP traffic after rebuild.

Map XDP queues to vectors in ice_vsi_map_rings_to_vectors().
Also, move the code around, so XDP queues are mapped independently only
through .ndo_bpf().

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_base.c |  3 +
 drivers/net/ethernet/intel/ice/ice_lib.c  | 14 ++--
 drivers/net/ethernet/intel/ice/ice_main.c | 96 ++++++++++++++---------
 4 files changed, 68 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b91b2594b29d..da8c8afebc93 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -940,6 +940,7 @@ int ice_vsi_determine_xdp_res(struct ice_vsi *vsi);
 int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
 			  enum ice_xdp_cfg cfg_type);
 int ice_destroy_xdp_rings(struct ice_vsi *vsi, enum ice_xdp_cfg cfg_type);
+void ice_map_xdp_rings(struct ice_vsi *vsi);
 int
 ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	     u32 flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 687f6cb2b917..5d396c1a7731 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -842,6 +842,9 @@ void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi)
 		}
 		rx_rings_rem -= rx_rings_per_v;
 	}
+
+	if (ice_is_xdp_ena_vsi(vsi))
+		ice_map_xdp_rings(vsi);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index dd8b374823ee..7629b0190578 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2274,13 +2274,6 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 		if (ret)
 			goto unroll_vector_base;
 
-		ice_vsi_map_rings_to_vectors(vsi);
-
-		/* Associate q_vector rings to napi */
-		ice_vsi_set_napi_queues(vsi);
-
-		vsi->stat_offsets_loaded = false;
-
 		if (ice_is_xdp_ena_vsi(vsi)) {
 			ret = ice_vsi_determine_xdp_res(vsi);
 			if (ret)
@@ -2291,6 +2284,13 @@ static int ice_vsi_cfg_def(struct ice_vsi *vsi)
 				goto unroll_vector_base;
 		}
 
+		ice_vsi_map_rings_to_vectors(vsi);
+
+		/* Associate q_vector rings to napi */
+		ice_vsi_set_napi_queues(vsi);
+
+		vsi->stat_offsets_loaded = false;
+
 		/* ICE_VSI_CTRL does not need RSS so skip RSS processing */
 		if (vsi->type != ICE_VSI_CTRL)
 			/* Do not exit if configuring RSS had an issue, at
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2a270aacd24a..1b61ca3a6eb6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2707,6 +2707,60 @@ static void ice_vsi_assign_bpf_prog(struct ice_vsi *vsi, struct bpf_prog *prog)
 		bpf_prog_put(old_prog);
 }
 
+static struct ice_tx_ring *ice_xdp_ring_from_qid(struct ice_vsi *vsi, int qid)
+{
+	struct ice_q_vector *q_vector;
+	struct ice_tx_ring *ring;
+
+	if (static_key_enabled(&ice_xdp_locking_key))
+		return vsi->xdp_rings[qid % vsi->num_xdp_txq];
+
+	q_vector = vsi->rx_rings[qid]->q_vector;
+	ice_for_each_tx_ring(ring, q_vector->tx)
+		if (ice_ring_is_xdp(ring))
+			return ring;
+
+	return NULL;
+}
+
+/**
+ * ice_map_xdp_rings - Map XDP rings to interrupt vectors
+ * @vsi: the VSI with XDP rings being configured
+ *
+ * Map XDP rings to interrupt vectors and perform the configuration steps
+ * dependent on the mapping.
+ */
+void ice_map_xdp_rings(struct ice_vsi *vsi)
+{
+	int xdp_rings_rem = vsi->num_xdp_txq;
+	int v_idx, q_idx;
+
+	/* follow the logic from ice_vsi_map_rings_to_vectors */
+	ice_for_each_q_vector(vsi, v_idx) {
+		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
+		int xdp_rings_per_v, q_id, q_base;
+
+		xdp_rings_per_v = DIV_ROUND_UP(xdp_rings_rem,
+					       vsi->num_q_vectors - v_idx);
+		q_base = vsi->num_xdp_txq - xdp_rings_rem;
+
+		for (q_id = q_base; q_id < (q_base + xdp_rings_per_v); q_id++) {
+			struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_id];
+
+			xdp_ring->q_vector = q_vector;
+			xdp_ring->next = q_vector->tx.tx_ring;
+			q_vector->tx.tx_ring = xdp_ring;
+		}
+		xdp_rings_rem -= xdp_rings_per_v;
+	}
+
+	ice_for_each_rxq(vsi, q_idx) {
+		vsi->rx_rings[q_idx]->xdp_ring = ice_xdp_ring_from_qid(vsi,
+								       q_idx);
+		ice_tx_xsk_pool(vsi, q_idx);
+	}
+}
+
 /**
  * ice_prepare_xdp_rings - Allocate, configure and setup Tx rings for XDP
  * @vsi: VSI to bring up Tx rings used by XDP
@@ -2719,7 +2773,6 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
 			  enum ice_xdp_cfg cfg_type)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
-	int xdp_rings_rem = vsi->num_xdp_txq;
 	struct ice_pf *pf = vsi->back;
 	struct ice_qs_cfg xdp_qs_cfg = {
 		.qs_mutex = &pf->avail_q_mutex,
@@ -2732,8 +2785,7 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
 		.mapping_mode = ICE_VSI_MAP_CONTIG
 	};
 	struct device *dev;
-	int i, v_idx;
-	int status;
+	int status, i;
 
 	dev = ice_pf_to_dev(pf);
 	vsi->xdp_rings = devm_kcalloc(dev, vsi->num_xdp_txq,
@@ -2752,42 +2804,6 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
 	if (ice_xdp_alloc_setup_rings(vsi))
 		goto clear_xdp_rings;
 
-	/* follow the logic from ice_vsi_map_rings_to_vectors */
-	ice_for_each_q_vector(vsi, v_idx) {
-		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
-		int xdp_rings_per_v, q_id, q_base;
-
-		xdp_rings_per_v = DIV_ROUND_UP(xdp_rings_rem,
-					       vsi->num_q_vectors - v_idx);
-		q_base = vsi->num_xdp_txq - xdp_rings_rem;
-
-		for (q_id = q_base; q_id < (q_base + xdp_rings_per_v); q_id++) {
-			struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_id];
-
-			xdp_ring->q_vector = q_vector;
-			xdp_ring->next = q_vector->tx.tx_ring;
-			q_vector->tx.tx_ring = xdp_ring;
-		}
-		xdp_rings_rem -= xdp_rings_per_v;
-	}
-
-	ice_for_each_rxq(vsi, i) {
-		if (static_key_enabled(&ice_xdp_locking_key)) {
-			vsi->rx_rings[i]->xdp_ring = vsi->xdp_rings[i % vsi->num_xdp_txq];
-		} else {
-			struct ice_q_vector *q_vector = vsi->rx_rings[i]->q_vector;
-			struct ice_tx_ring *ring;
-
-			ice_for_each_tx_ring(ring, q_vector->tx) {
-				if (ice_ring_is_xdp(ring)) {
-					vsi->rx_rings[i]->xdp_ring = ring;
-					break;
-				}
-			}
-		}
-		ice_tx_xsk_pool(vsi, i);
-	}
-
 	/* omit the scheduler update if in reset path; XDP queues will be
 	 * taken into account at the end of ice_vsi_rebuild, where
 	 * ice_cfg_vsi_lan is being called
@@ -2795,6 +2811,8 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
 	if (cfg_type == ICE_XDP_CFG_PART)
 		return 0;
 
+	ice_map_xdp_rings(vsi);
+
 	/* tell the Tx scheduler that right now we have
 	 * additional queues
 	 */
-- 
2.43.0

