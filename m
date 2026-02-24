Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IWEJanknWlDSgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:49:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFCD18ABA7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:49:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85BA860DD4;
	Tue, 24 Feb 2026 17:49:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nhu-J_CthEU6; Tue, 24 Feb 2026 17:49:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E1F260ECA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771955365;
	bh=HOc2JfptGAeRtDCRA1ys2jEowRGUv6kEnqk9uulqbPM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KAu+VNe93x4f+ra/i8871Qd79vLwODMcx0TE42XNYxEy7m3hMRvo4zeWkG6ti8awy
	 yEKAbYDJqOfgCUUv1HKdvdxnRYMOf6XFVgWv0K20+AglBVWvw8Tmdvir9y68e7DU7n
	 bz54tSv9jfO8zF1zgHj+6wq7NViacOf+Ivile1rvyDvSwJSS3ryQ87DKihPCWLrJvg
	 bQN8e11ny8xXRWELE2hPlQRl//yxN417DfPli5qXD3EUXGpyT+Dj3KF9E1Qv/0pk4h
	 8ZIoK6BmJ0s4wM2Ih+b93sX7Q4wTOaaa6HCYt4AsPwAI0beNaz9mophtdGeqAP4zjs
	 eibniMiRAIhbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E1F260ECA;
	Tue, 24 Feb 2026 17:49:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B77253A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DF7A60DFE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ovKdh5oM5lJC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 17:49:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A556060E17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A556060E17
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A556060E17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:49:22 +0000 (UTC)
X-CSE-ConnectionGUID: h36AfaVLS0eEXFf6qLulqA==
X-CSE-MsgGUID: cwYnpJFSTCaRHf7ntFLtFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="98444574"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="98444574"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:49:22 -0800
X-CSE-ConnectionGUID: ffhgAYBFT2Krq7yNTvrKGw==
X-CSE-MsgGUID: +8BQuztZS0KJzVOqwyOagg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="220088546"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa003.jf.intel.com with ESMTP; 24 Feb 2026 09:49:18 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Kohei Enju <kohei@enjuk.jp>, Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 24 Feb 2026 18:46:17 +0100
Message-ID: <20260224174618.2780516-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260224174618.2780516-1-aleksander.lobakin@intel.com>
References: <20260224174618.2780516-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771955362; x=1803491362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PxobCKd/x49YKEQDHqr6byiJmTxwt5IjLLEzW59T2ok=;
 b=Dzkb3iuXD1OprkxlFrFUlDKsvevpgaQ6wZOeLLcS3Gkxz59zIx3JDesf
 ld5981t/K8iO2fbKBLk7phy2Ru8CjPlKumTkNRm0LBOuOYXk6EwCCg0/T
 90B3Stlb0DyfcwymMoKOIzQGuDoGUNI/rvSBea9XeB9WSqK6lvTFNjBzj
 Z+PFG7bml/HUoLDSw9GLk1CMEqSiNF7IjtZsLINk7lQIFiTkPGM/tKJAX
 IqdWh55memnn4z+No1taTepRc+UkJjEAsd0b5D9PGx71Nzh97xihsBGbC
 7oXyjMPqd9kPWFbmBvpS8vuD8bKp9GKnqOmkQqvn0tAxtUO2h6DFjXoFR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dzkb3iuX
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/5] ice: implement Rx queue
 management ops
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:mid,intel.com:email,enjuk.jp:email];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.986];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CEFCD18ABA7
X-Rspamd-Action: no action

Now ice is ready to get queue_mgmt_ops support. It already has API
to disable/reconfig/enable one particular queue (for XSk). Reuse as
much of its code as possible to implement Rx queue management
callbacks and vice versa -- ice_queue_mem_{alloc,free}() can be
reused during ifup/ifdown to elide code duplication.
With this, ice passes the io_uring zcrx selftests, meaning the Rx
part of netmem/MP support is done.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Co-developed-by: Kohei Enju <kohei@enjuk.jp> # ice_set_ringparam()
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_txrx.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_base.c    | 194 +++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ethtool.c |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_sf_eth.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  26 ++-
 7 files changed, 166 insertions(+), 66 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 0565374b58a5..f27415b50d8c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -4,6 +4,8 @@
 #ifndef _ICE_LIB_H_
 #define _ICE_LIB_H_
 
+#include <net/netdev_queues.h>
+
 #include "ice.h"
 #include "ice_vlan.h"
 
@@ -134,4 +136,7 @@ void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
 bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi);
 void ice_vsi_update_l2tsel(struct ice_vsi *vsi, enum ice_l2tsel l2tsel);
+
+extern const struct netdev_queue_mgmt_ops ice_queue_mgmt_ops;
+
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index b6547e1b7c42..557b5e656bb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -458,6 +458,8 @@ u16
 ice_select_queue(struct net_device *dev, struct sk_buff *skb,
 		 struct net_device *sb_dev);
 void ice_clean_tx_ring(struct ice_tx_ring *tx_ring);
+void ice_queue_mem_free(struct net_device *dev, void *per_queue_mem);
+void ice_zero_rx_ring(struct ice_rx_ring *rx_ring);
 void ice_clean_rx_ring(struct ice_rx_ring *rx_ring);
 int ice_setup_tx_ring(struct ice_tx_ring *tx_ring);
 int ice_setup_rx_ring(struct ice_rx_ring *rx_ring);
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index f084b1c48e5d..052a6fae50fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -651,6 +651,43 @@ static int ice_rxq_pp_create(struct ice_rx_ring *rq)
 	return err;
 }
 
+static int ice_queue_mem_alloc(struct net_device *dev,
+			       struct netdev_queue_config *qcfg,
+			       void *per_queue_mem, int idx)
+{
+	const struct ice_netdev_priv *priv = netdev_priv(dev);
+	const struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
+	struct ice_rx_ring *new = per_queue_mem;
+	int ret;
+
+	new->count = real->count;
+	new->netdev = real->netdev;
+	new->q_index = real->q_index;
+	new->q_vector = real->q_vector;
+	new->vsi = real->vsi;
+
+	ret = ice_rxq_pp_create(new);
+	if (ret)
+		return ret;
+
+	if (!netif_running(dev))
+		return 0;
+
+	ret = __xdp_rxq_info_reg(&new->xdp_rxq, new->netdev, new->q_index,
+				 new->q_vector->napi.napi_id, new->rx_buf_len);
+	if (ret)
+		goto err_destroy_fq;
+
+	xdp_rxq_info_attach_page_pool(&new->xdp_rxq, new->pp);
+
+	return 0;
+
+err_destroy_fq:
+	ice_rxq_pp_destroy(new);
+
+	return ret;
+}
+
 /**
  * ice_vsi_cfg_rxq - Configure an Rx queue
  * @ring: the ring being configured
@@ -665,23 +702,12 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 	int err;
 
 	if (ring->vsi->type == ICE_VSI_PF || ring->vsi->type == ICE_VSI_SF) {
-		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
-			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
-						 ring->q_index,
-						 ring->q_vector->napi.napi_id,
-						 ring->rx_buf_len);
-			if (err)
-				return err;
-		}
-
 		ice_rx_xsk_pool(ring);
 		err = ice_realloc_rx_xdp_bufs(ring, ring->xsk_pool);
 		if (err)
 			return err;
 
 		if (ring->xsk_pool) {
-			xdp_rxq_info_unreg(&ring->xdp_rxq);
-
 			rx_buf_len =
 				xsk_pool_get_rx_frame_size(ring->xsk_pool);
 			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
@@ -700,20 +726,10 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			dev_info(dev, "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
 				 ring->q_index);
 		} else {
-			err = ice_rxq_pp_create(ring);
+			err = ice_queue_mem_alloc(ring->netdev, NULL, ring,
+						  ring->q_index);
 			if (err)
 				return err;
-
-			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
-				err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
-							 ring->q_index,
-							 ring->q_vector->napi.napi_id,
-							 ring->rx_buf_len);
-				if (err)
-					goto err_destroy_fq;
-			}
-			xdp_rxq_info_attach_page_pool(&ring->xdp_rxq,
-						      ring->pp);
 		}
 	}
 
@@ -722,7 +738,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 	if (err) {
 		dev_err(dev, "ice_setup_rx_ctx failed for RxQ %d, err %d\n",
 			ring->q_index, err);
-		goto err_destroy_fq;
+		goto err_clean_rq;
 	}
 
 	if (ring->xsk_pool) {
@@ -753,12 +769,12 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 		err = ice_alloc_rx_bufs(ring, num_bufs);
 
 	if (err)
-		goto err_destroy_fq;
+		goto err_clean_rq;
 
 	return 0;
 
-err_destroy_fq:
-	ice_rxq_pp_destroy(ring);
+err_clean_rq:
+	ice_clean_rx_ring(ring);
 
 	return err;
 }
@@ -1470,27 +1486,7 @@ static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
 		       sizeof(vsi->xdp_rings[q_idx]->ring_stats->stats));
 }
 
-/**
- * ice_qp_clean_rings - Cleans all the rings of a given index
- * @vsi: VSI that contains rings of interest
- * @q_idx: ring index in array
- */
-static void ice_qp_clean_rings(struct ice_vsi *vsi, u16 q_idx)
-{
-	ice_clean_tx_ring(vsi->tx_rings[q_idx]);
-	if (vsi->xdp_rings)
-		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
-	ice_clean_rx_ring(vsi->rx_rings[q_idx]);
-}
-
-/**
- * ice_qp_dis - Disables a queue pair
- * @vsi: VSI of interest
- * @q_idx: ring index in array
- *
- * Returns 0 on success, negative on failure.
- */
-int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
+static int __ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 {
 	struct ice_txq_meta txq_meta = { };
 	struct ice_q_vector *q_vector;
@@ -1529,23 +1525,35 @@ int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	}
 
 	ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, false);
-	ice_qp_clean_rings(vsi, q_idx);
 	ice_qp_reset_stats(vsi, q_idx);
 
+	ice_clean_tx_ring(vsi->tx_rings[q_idx]);
+	if (vsi->xdp_rings)
+		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
+
 	return fail;
 }
 
 /**
- * ice_qp_ena - Enables a queue pair
+ * ice_qp_dis - Disables a queue pair
  * @vsi: VSI of interest
  * @q_idx: ring index in array
  *
  * Returns 0 on success, negative on failure.
  */
-int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
+int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
+{
+	int ret;
+
+	ret = __ice_qp_dis(vsi, q_idx);
+	ice_clean_rx_ring(vsi->rx_rings[q_idx]);
+
+	return ret;
+}
+
+static int __ice_qp_ena(struct ice_vsi *vsi, u16 q_idx, int fail)
 {
 	struct ice_q_vector *q_vector;
-	int fail = 0;
 	bool link_up;
 	int err;
 
@@ -1563,10 +1571,6 @@ int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		ice_tx_xsk_pool(vsi, q_idx);
 	}
 
-	err = ice_vsi_cfg_single_rxq(vsi, q_idx);
-	if (!fail)
-		fail = err;
-
 	q_vector = vsi->rx_rings[q_idx]->q_vector;
 	ice_qvec_cfg_msix(vsi, q_vector, q_idx);
 
@@ -1587,3 +1591,81 @@ int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 
 	return fail;
 }
+
+/**
+ * ice_qp_ena - Enables a queue pair
+ * @vsi: VSI of interest
+ * @q_idx: ring index in array
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
+{
+	return __ice_qp_ena(vsi, q_idx, ice_vsi_cfg_single_rxq(vsi, q_idx));
+}
+
+static int ice_queue_start(struct net_device *dev,
+			   struct netdev_queue_config *qcfg,
+			   void *per_queue_mem, int idx)
+{
+	const struct ice_netdev_priv *priv = netdev_priv(dev);
+	struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
+	struct ice_rx_ring *new = per_queue_mem;
+	struct napi_struct *napi;
+	int ret;
+
+	real->pp = new->pp;
+	real->rx_fqes = new->rx_fqes;
+	real->hdr_fqes = new->hdr_fqes;
+	real->hdr_pp = new->hdr_pp;
+
+	real->hdr_truesize = new->hdr_truesize;
+	real->truesize = new->truesize;
+	real->rx_hdr_len = new->rx_hdr_len;
+	real->rx_buf_len = new->rx_buf_len;
+
+	memcpy(&real->xdp_rxq, &new->xdp_rxq, sizeof(new->xdp_rxq));
+
+	ret = ice_setup_rx_ctx(real);
+	if (ret)
+		return ret;
+
+	napi = &real->q_vector->napi;
+
+	page_pool_enable_direct_recycling(real->pp, napi);
+	if (real->hdr_pp)
+		page_pool_enable_direct_recycling(real->hdr_pp, napi);
+
+	ret = ice_alloc_rx_bufs(real, ICE_DESC_UNUSED(real));
+
+	return __ice_qp_ena(priv->vsi, idx, ret);
+}
+
+static int ice_queue_stop(struct net_device *dev, void *per_queue_mem,
+			  int idx)
+{
+	const struct ice_netdev_priv *priv = netdev_priv(dev);
+	struct ice_rx_ring *real = priv->vsi->rx_rings[idx];
+	int ret;
+
+	ret = __ice_qp_dis(priv->vsi, idx);
+	if (ret)
+		return ret;
+
+	page_pool_disable_direct_recycling(real->pp);
+	if (real->hdr_pp)
+		page_pool_disable_direct_recycling(real->hdr_pp);
+
+	ice_zero_rx_ring(real);
+	memcpy(per_queue_mem, real, sizeof(*real));
+
+	return 0;
+}
+
+const struct netdev_queue_mgmt_ops ice_queue_mgmt_ops = {
+	.ndo_queue_mem_alloc	= ice_queue_mem_alloc,
+	.ndo_queue_mem_free	= ice_queue_mem_free,
+	.ndo_queue_mem_size	= sizeof(struct ice_rx_ring),
+	.ndo_queue_start	= ice_queue_start,
+	.ndo_queue_stop		= ice_queue_stop,
+};
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c6bc29cfb8e6..8df07e92187f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3338,6 +3338,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		rx_rings[i].cached_phctime = pf->ptp.cached_phc_time;
 		rx_rings[i].desc = NULL;
 		rx_rings[i].xdp_buf = NULL;
+		memset(&rx_rings[i].xdp_rxq, 0, sizeof(rx_rings[i].xdp_rxq));
 
 		/* this is to allow wr32 to have something to write to
 		 * during early allocation of Rx buffers
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ae7e9b332d72..d16a7013470d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3524,7 +3524,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
 	}
 
 	netdev->netdev_ops = &ice_netdev_ops;
-	netdev->request_ops_lock = true;
+	netdev->queue_mgmt_ops = &ice_queue_mgmt_ops;
 	netdev->udp_tunnel_nic_info = &pf->hw.udp_tunnel_nic;
 	netdev->xdp_metadata_ops = &ice_xdp_md_ops;
 	ice_set_ethtool_ops(netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 4f11b008fea5..b1f3783a8fad 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -58,7 +58,7 @@ static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port,
 	eth_hw_addr_set(netdev, dyn_port->hw_addr);
 	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
 	netdev->netdev_ops = &ice_sf_netdev_ops;
-	netdev->request_ops_lock = true;
+	netdev->queue_mgmt_ops = &ice_queue_mgmt_ops;
 	SET_NETDEV_DEVLINK_PORT(netdev, devlink_port);
 
 	err = register_netdev(netdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 6fa201a14f51..8e2cbddb146d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -530,17 +530,13 @@ void ice_rxq_pp_destroy(struct ice_rx_ring *rq)
 	rq->hdr_pp = NULL;
 }
 
-/**
- * ice_clean_rx_ring - Free Rx buffers
- * @rx_ring: ring to be cleaned
- */
-void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
+void ice_queue_mem_free(struct net_device *dev, void *per_queue_mem)
 {
-	u32 size;
+	struct ice_rx_ring *rx_ring = per_queue_mem;
 
 	if (rx_ring->xsk_pool) {
 		ice_xsk_clean_rx_ring(rx_ring);
-		goto rx_skip_free;
+		return;
 	}
 
 	/* ring already cleared, nothing to do */
@@ -567,8 +563,12 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 	}
 
 	ice_rxq_pp_destroy(rx_ring);
+}
+
+void ice_zero_rx_ring(struct ice_rx_ring *rx_ring)
+{
+	size_t size;
 
-rx_skip_free:
 	/* Zero out the descriptor ring */
 	size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
 		     PAGE_SIZE);
@@ -578,6 +578,16 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 	rx_ring->next_to_use = 0;
 }
 
+/**
+ * ice_clean_rx_ring - Free Rx buffers
+ * @rx_ring: ring to be cleaned
+ */
+void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
+{
+	ice_queue_mem_free(rx_ring->netdev, rx_ring);
+	ice_zero_rx_ring(rx_ring);
+}
+
 /**
  * ice_free_rx_ring - Free Rx resources
  * @rx_ring: ring to clean the resources from
-- 
2.53.0

