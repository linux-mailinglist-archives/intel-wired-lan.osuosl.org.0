Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B53DBF933E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 01:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68B1582CE5;
	Tue, 21 Oct 2025 23:20:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XltFKXY8SSYz; Tue, 21 Oct 2025 23:20:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 649F382951
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761088817;
	bh=stiQZbxAeq0e7irUbgg6ig9L9m5+p6FBhSEcLLyS7S4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=angtkE97w1+woFnfqPXZgJ6/S1O1VZWMXK0nM07DVv8WgBF64SWF4p1cod7RqwjN5
	 sipBhiDwet1+pzNOaQdDi0dxRjdZzTiYMd+J8VPLBRGEVJRlRZy+ZK2lq0Q4Oauv4Q
	 z5Ux8etW5a/JnboCb//59b7I7L+pZ4/ek/7qe+w9y7PZkUpNnHamK3/OVmTonMChFi
	 yMw7/7R8JVrveIKWAGoUcQAF3oZUjthYA7hkKLKyu/cCrEeReFnxEfSBLMXZ/lMtLn
	 4R6SqBAki28kObmXJZrTWrk5dGdBvJpvyowjPoE5/vRMk76nAJKWdEj4oDtflhVtpn
	 VJYb91w1K2G0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 649F382951;
	Tue, 21 Oct 2025 23:20:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 45EB043F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 437DF40D9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZL5ka5vxm2mu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 23:20:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 78D4E40D94
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78D4E40D94
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78D4E40D94
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 23:20:12 +0000 (UTC)
X-CSE-ConnectionGUID: 5qFVpxWuQ1yiw4EYlsuHOw==
X-CSE-MsgGUID: X7IKsAeWQMO2WYT+skd0UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74665328"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="74665328"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 16:20:12 -0700
X-CSE-ConnectionGUID: oLV6SBkKTNyQGLvkhN/0Gw==
X-CSE-MsgGUID: R3zZa6SiQJ2ACai/XRI9Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214352304"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa002.jf.intel.com with ESMTP; 21 Oct 2025 16:20:11 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue, 21 Oct 2025 16:30:50 -0700
Message-Id: <20251021233056.1320108-5-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20251021233056.1320108-1-joshua.a.hay@intel.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761088813; x=1792624813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KrVPwOYMtDH2Q8UZHRREBsKYa8gcykUgJ8xKnVRoPC4=;
 b=JQQLAfRsv8Z4y1MQQiaDpbb/EO0TyUnwQ8vfdroTyt9O9RQxBMnSEvN0
 GSWVF9YC7wk/5cQSgzynHrKnhagZ8ocYSbsPvDdm7yK2cQw+Hh5gb909g
 MwOUB+EsMX5eERWdtdQg6hllC0r2FCTkOrK3bOpDER1EnE8tuUCugSgYq
 3Yev0fL/HTay1nxSDR+nY/6Y8Vcd83o67y3e5cdHxbpyLNOsnLqp0EupT
 Nu0So5LvKsBGVD+a5AVe+bPBqQbd8Wojt6sDa/xX2nvKFWoHN7H7kLeby
 JBDBwbWhRsE5Y/061DAW2JYrEs6FWvtMLucXsH5g93f/IIhQFLBC+ox1V
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JQQLAfRs
Subject: [Intel-wired-lan] [PATCH iwl-next v9 04/10] idpf: move some
 iterator declarations inside for loops
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

Move some iterator declarations to their respective for loops; use more
appropriate unsigned type.

Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 28 +++---
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  8 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 96 ++++++++-----------
 3 files changed, 57 insertions(+), 75 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index f12c35c6f5ec..564fb25bc309 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -649,7 +649,7 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	u32 new_rx_count, new_tx_count;
 	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
-	int i, err = 0;
+	int err = 0;
 	u16 idx;
 
 	idpf_vport_ctrl_lock(netdev);
@@ -704,7 +704,7 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	/* Since we adjusted the RX completion queue count, the RX buffer queue
 	 * descriptor count needs to be adjusted as well
 	 */
-	for (i = 0; i < rsrc->num_bufqs_per_qgrp; i++)
+	for (unsigned int i = 0; i < rsrc->num_bufqs_per_qgrp; i++)
 		rsrc->bufq_desc_count[i] =
 			IDPF_RX_BUFQ_DESC_COUNT(new_rx_count,
 						rsrc->num_bufqs_per_qgrp);
@@ -1085,7 +1085,6 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 {
 	struct idpf_port_stats *pstats = &vport->port_stats;
 	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
-	int i, j;
 
 	/* zero out port stats since they're actually tracked in per
 	 * queue stats; this is only for reporting
@@ -1101,7 +1100,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 	u64_stats_set(&pstats->tx_dma_map_errs, 0);
 	u64_stats_update_end(&pstats->stats_sync);
 
-	for (i = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rxq_grp = &rsrc->rxq_grps[i];
 		u16 num_rxq;
 
@@ -1110,7 +1109,7 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 		else
 			num_rxq = rxq_grp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++) {
+		for (unsigned int j = 0; j < num_rxq; j++) {
 			u64 hw_csum_err, hsplit, hsplit_hbo, bad_descs;
 			struct idpf_rx_queue_stats *stats;
 			struct idpf_rx_queue *rxq;
@@ -1143,10 +1142,10 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 		}
 	}
 
-	for (i = 0; i < rsrc->num_txq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_txq_grp; i++) {
 		struct idpf_txq_group *txq_grp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < txq_grp->num_txq; j++) {
+		for (unsigned int j = 0; j < txq_grp->num_txq; j++) {
 			u64 linearize, qbusy, skb_drops, dma_map_errs;
 			struct idpf_tx_queue *txq = txq_grp->txqs[j];
 			struct idpf_tx_queue_stats *stats;
@@ -1192,7 +1191,6 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
 	unsigned int total = 0;
-	unsigned int i, j;
 	bool is_splitq;
 	u16 qtype;
 
@@ -1211,12 +1209,12 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 	idpf_add_port_stats(vport, &data);
 
 	rsrc = &vport->dflt_qv_rsrc;
-	for (i = 0; i < rsrc->num_txq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_txq_grp; i++) {
 		struct idpf_txq_group *txq_grp = &rsrc->txq_grps[i];
 
 		qtype = VIRTCHNL2_QUEUE_TYPE_TX;
 
-		for (j = 0; j < txq_grp->num_txq; j++, total++) {
+		for (unsigned int j = 0; j < txq_grp->num_txq; j++, total++) {
 			struct idpf_tx_queue *txq = txq_grp->txqs[j];
 
 			if (!txq)
@@ -1238,7 +1236,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 
 	is_splitq = idpf_is_queue_model_split(rsrc->rxq_model);
 
-	for (i = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rxq_grp = &rsrc->rxq_grps[i];
 		u16 num_rxq;
 
@@ -1249,7 +1247,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 		else
 			num_rxq = rxq_grp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++, total++) {
+		for (unsigned int j = 0; j < num_rxq; j++, total++) {
 			struct idpf_rx_queue *rxq;
 
 			if (is_splitq)
@@ -1538,7 +1536,7 @@ static int idpf_set_coalesce(struct net_device *netdev,
 	struct idpf_q_coalesce *q_coal;
 	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
-	int i, err = 0;
+	int err = 0;
 
 	user_config = &np->adapter->vport_config[np->vport_idx]->user_config;
 
@@ -1549,14 +1547,14 @@ static int idpf_set_coalesce(struct net_device *netdev,
 		goto unlock_mutex;
 
 	rsrc = &vport->dflt_qv_rsrc;
-	for (i = 0; i < rsrc->num_txq; i++) {
+	for (unsigned int i = 0; i < rsrc->num_txq; i++) {
 		q_coal = &user_config->q_coalesce[i];
 		err = idpf_set_q_coalesce(vport, q_coal, ec, i, false);
 		if (err)
 			goto unlock_mutex;
 	}
 
-	for (i = 0; i < rsrc->num_rxq; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq; i++) {
 		q_coal = &user_config->q_coalesce[i];
 		err = idpf_set_q_coalesce(vport, q_coal, ec, i, true);
 		if (err)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index c84e5b85ed1e..244868307e81 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1393,20 +1393,18 @@ static int idpf_up_complete(struct idpf_vport *vport)
  */
 static void idpf_rx_init_buf_tail(struct idpf_q_vec_rsrc *rsrc)
 {
-	int i, j;
-
-	for (i = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq_grp; i++) {
 		struct idpf_rxq_group *grp = &rsrc->rxq_grps[i];
 
 		if (idpf_is_queue_model_split(rsrc->rxq_model)) {
-			for (j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
+			for (unsigned int j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 				const struct idpf_buf_queue *q =
 					&grp->splitq.bufq_sets[j].bufq;
 
 				writel(q->next_to_alloc, q->tail);
 			}
 		} else {
-			for (j = 0; j < grp->singleq.num_rxq; j++) {
+			for (unsigned int j = 0; j < grp->singleq.num_rxq; j++) {
 				const struct idpf_rx_queue *q =
 					grp->singleq.rxqs[j];
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 92cd25923ed9..d1ceedfb0a5c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -152,15 +152,13 @@ static void idpf_compl_desc_rel(struct idpf_compl_queue *complq)
  */
 static void idpf_tx_desc_rel_all(struct idpf_q_vec_rsrc *rsrc)
 {
-	int i, j;
-
 	if (!rsrc->txq_grps)
 		return;
 
-	for (i = 0; i < rsrc->num_txq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_txq_grp; i++) {
 		struct idpf_txq_group *txq_grp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < txq_grp->num_txq; j++)
+		for (unsigned int j = 0; j < txq_grp->num_txq; j++)
 			idpf_tx_desc_rel(txq_grp->txqs[j]);
 
 		if (idpf_is_queue_model_split(rsrc->txq_model))
@@ -304,13 +302,12 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport,
 				  struct idpf_q_vec_rsrc *rsrc)
 {
 	int err = 0;
-	int i, j;
 
 	/* Setup buffer queues. In single queue model buffer queues and
 	 * completion queues will be same
 	 */
-	for (i = 0; i < rsrc->num_txq_grp; i++) {
-		for (j = 0; j < rsrc->txq_grps[i].num_txq; j++) {
+	for (unsigned int i = 0; i < rsrc->num_txq_grp; i++) {
+		for (unsigned int j = 0; j < rsrc->txq_grps[i].num_txq; j++) {
 			struct idpf_tx_queue *txq = rsrc->txq_grps[i].txqs[j];
 
 			err = idpf_tx_desc_alloc(vport, txq);
@@ -502,30 +499,29 @@ static void idpf_rx_desc_rel_all(struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_rxq_group *rx_qgrp;
 	u16 num_rxq;
-	int i, j;
 
 	if (!rsrc->rxq_grps)
 		return;
 
-	for (i = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq_grp; i++) {
 		rx_qgrp = &rsrc->rxq_grps[i];
 
 		if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
-			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
+			for (unsigned int j = 0; j < rx_qgrp->singleq.num_rxq; j++)
 				idpf_rx_desc_rel(rx_qgrp->singleq.rxqs[j],
 						 VIRTCHNL2_QUEUE_MODEL_SINGLE);
 			continue;
 		}
 
 		num_rxq = rx_qgrp->splitq.num_rxq_sets;
-		for (j = 0; j < num_rxq; j++)
+		for (unsigned int j = 0; j < num_rxq; j++)
 			idpf_rx_desc_rel(&rx_qgrp->splitq.rxq_sets[j]->rxq,
 					 VIRTCHNL2_QUEUE_MODEL_SPLIT);
 
 		if (!rx_qgrp->splitq.bufq_sets)
 			continue;
 
-		for (j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
+		for (unsigned int j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 			struct idpf_bufq_set *bufq_set =
 				&rx_qgrp->splitq.bufq_sets[j];
 
@@ -792,11 +788,11 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport,
 			  struct idpf_q_vec_rsrc *rsrc)
 {
 	bool split = idpf_is_queue_model_split(rsrc->rxq_model);
-	int i, j, err;
+	int err;
 
 	idpf_xdp_copy_prog_to_rqs(rsrc, vport->xdp_prog);
 
-	for (i = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 		u32 truesize = 0;
 
@@ -804,7 +800,7 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport,
 		if (!split) {
 			int num_rxq = rx_qgrp->singleq.num_rxq;
 
-			for (j = 0; j < num_rxq; j++) {
+			for (unsigned int j = 0; j < num_rxq; j++) {
 				struct idpf_rx_queue *q;
 
 				q = rx_qgrp->singleq.rxqs[j];
@@ -817,7 +813,7 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport,
 		}
 
 		/* Otherwise, allocate bufs for the buffer queues */
-		for (j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
+		for (unsigned int j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 			enum libeth_fqe_type type;
 			struct idpf_buf_queue *q;
 
@@ -911,17 +907,17 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport,
 				  struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_rxq_group *rx_qgrp;
-	int i, j, err;
 	u16 num_rxq;
+	int err;
 
-	for (i = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq_grp; i++) {
 		rx_qgrp = &rsrc->rxq_grps[i];
 		if (idpf_is_queue_model_split(rsrc->rxq_model))
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		else
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++) {
+		for (unsigned int j = 0; j < num_rxq; j++) {
 			struct idpf_rx_queue *q;
 
 			if (idpf_is_queue_model_split(rsrc->rxq_model))
@@ -941,7 +937,7 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport,
 		if (!idpf_is_queue_model_split(rsrc->rxq_model))
 			continue;
 
-		for (j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
+		for (unsigned int j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 			struct idpf_buf_queue *q;
 
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
@@ -1306,17 +1302,16 @@ int idpf_qp_switch(struct idpf_vport *vport, u32 qid, bool en)
 static void idpf_txq_group_rel(struct idpf_q_vec_rsrc *rsrc)
 {
 	bool split;
-	int i, j;
 
 	if (!rsrc->txq_grps)
 		return;
 
 	split = idpf_is_queue_model_split(rsrc->txq_model);
 
-	for (i = 0; i < rsrc->num_txq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_txq_grp; i++) {
 		struct idpf_txq_group *txq_grp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < txq_grp->num_txq; j++) {
+		for (unsigned int j = 0; j < txq_grp->num_txq; j++) {
 			if (idpf_queue_has(FLOW_SCH_EN, txq_grp->txqs[j])) {
 				kfree(txq_grp->txqs[j]->refillq);
 				txq_grp->txqs[j]->refillq = NULL;
@@ -1342,12 +1337,10 @@ static void idpf_txq_group_rel(struct idpf_q_vec_rsrc *rsrc)
  */
 static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
 {
-	int i, j;
-
-	for (i = 0; i < rx_qgrp->splitq.num_bufq_sets; i++) {
+	for (unsigned int i = 0; i < rx_qgrp->splitq.num_bufq_sets; i++) {
 		struct idpf_bufq_set *bufq_set = &rx_qgrp->splitq.bufq_sets[i];
 
-		for (j = 0; j < bufq_set->num_refillqs; j++) {
+		for (unsigned int j = 0; j < bufq_set->num_refillqs; j++) {
 			kfree(bufq_set->refillqs[j].ring);
 			bufq_set->refillqs[j].ring = NULL;
 		}
@@ -1362,19 +1355,16 @@ static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
  */
 static void idpf_rxq_group_rel(struct idpf_q_vec_rsrc *rsrc)
 {
-	int i;
-
 	if (!rsrc->rxq_grps)
 		return;
 
-	for (i = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 		u16 num_rxq;
-		int j;
 
 		if (idpf_is_queue_model_split(rsrc->rxq_model)) {
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
-			for (j = 0; j < num_rxq; j++) {
+			for (unsigned int j = 0; j < num_rxq; j++) {
 				kfree(rx_qgrp->splitq.rxq_sets[j]);
 				rx_qgrp->splitq.rxq_sets[j] = NULL;
 			}
@@ -1384,7 +1374,7 @@ static void idpf_rxq_group_rel(struct idpf_q_vec_rsrc *rsrc)
 			rx_qgrp->splitq.bufq_sets = NULL;
 		} else {
 			num_rxq = rx_qgrp->singleq.num_rxq;
-			for (j = 0; j < num_rxq; j++) {
+			for (unsigned int j = 0; j < num_rxq; j++) {
 				kfree(rx_qgrp->singleq.rxqs[j]);
 				rx_qgrp->singleq.rxqs[j] = NULL;
 			}
@@ -1443,7 +1433,7 @@ static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport,
 {
 	struct idpf_ptp_vport_tx_tstamp_caps *caps = vport->tx_tstamp_caps;
 	struct work_struct *tstamp_task = &vport->tstamp_task;
-	int i, j, k = 0;
+	int k = 0;
 
 	vport->txqs = kcalloc(rsrc->num_txq, sizeof(*vport->txqs),
 			      GFP_KERNEL);
@@ -1451,10 +1441,10 @@ static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport,
 		return -ENOMEM;
 
 	vport->num_txq = rsrc->num_txq;
-	for (i = 0; i < rsrc->num_txq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_txq_grp; i++) {
 		struct idpf_txq_group *tx_grp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < tx_grp->num_txq; j++, k++) {
+		for (unsigned int j = 0; j < tx_grp->num_txq; j++, k++) {
 			vport->txqs[k] = tx_grp->txqs[j];
 			vport->txqs[k]->idx = k;
 
@@ -1532,7 +1522,6 @@ void idpf_vport_calc_num_q_desc(struct idpf_vport *vport,
 	u8 num_bufqs = rsrc->num_bufqs_per_qgrp;
 	u32 num_req_txq_desc, num_req_rxq_desc;
 	u16 idx = vport->idx;
-	int i;
 
 	config_data =  &vport->adapter->vport_config[idx]->user_config;
 	num_req_txq_desc = config_data->num_req_txq_desc;
@@ -1559,7 +1548,7 @@ void idpf_vport_calc_num_q_desc(struct idpf_vport *vport,
 	else
 		rsrc->rxq_desc_count = IDPF_DFLT_RX_Q_DESC_COUNT;
 
-	for (i = 0; i < num_bufqs; i++) {
+	for (unsigned int i = 0; i < num_bufqs; i++) {
 		if (!rsrc->bufq_desc_count[i])
 			rsrc->bufq_desc_count[i] =
 				IDPF_RX_BUFQ_DESC_COUNT(rsrc->rxq_desc_count,
@@ -1717,7 +1706,6 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport,
 				u16 num_txq)
 {
 	bool split, flow_sch_en;
-	int i;
 
 	rsrc->txq_grps = kcalloc(rsrc->num_txq_grp,
 				 sizeof(*rsrc->txq_grps), GFP_KERNEL);
@@ -1728,22 +1716,21 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport,
 	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
 				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
 
-	for (i = 0; i < rsrc->num_txq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_txq_grp; i++) {
 		struct idpf_txq_group *tx_qgrp = &rsrc->txq_grps[i];
 		struct idpf_adapter *adapter = vport->adapter;
-		int j;
 
 		tx_qgrp->vport = vport;
 		tx_qgrp->num_txq = num_txq;
 
-		for (j = 0; j < tx_qgrp->num_txq; j++) {
+		for (unsigned int j = 0; j < tx_qgrp->num_txq; j++) {
 			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
 						   GFP_KERNEL);
 			if (!tx_qgrp->txqs[j])
 				goto err_alloc;
 		}
 
-		for (j = 0; j < tx_qgrp->num_txq; j++) {
+		for (unsigned int j = 0; j < tx_qgrp->num_txq; j++) {
 			struct idpf_tx_queue *q = tx_qgrp->txqs[j];
 
 			q->dev = &adapter->pdev->dev;
@@ -1811,8 +1798,8 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 				struct idpf_q_vec_rsrc *rsrc,
 				u16 num_rxq)
 {
-	int i, k, err = 0;
 	bool hs, rsc;
+	int err = 0;
 
 	rsrc->rxq_grps = kcalloc(rsrc->num_rxq_grp,
 				 sizeof(struct idpf_rxq_group), GFP_KERNEL);
@@ -1822,14 +1809,13 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 	hs = idpf_vport_get_hsplit(vport) == ETHTOOL_TCP_DATA_SPLIT_ENABLED;
 	rsc = idpf_is_feature_ena(vport, NETIF_F_GRO_HW);
 
-	for (i = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0; i < rsrc->num_rxq_grp; i++) {
 		struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
-		int j;
 
 		rx_qgrp->vport = vport;
 		if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
 			rx_qgrp->singleq.num_rxq = num_rxq;
-			for (j = 0; j < num_rxq; j++) {
+			for (unsigned int j = 0; j < num_rxq; j++) {
 				rx_qgrp->singleq.rxqs[j] =
 						kzalloc(sizeof(*rx_qgrp->singleq.rxqs[j]),
 							GFP_KERNEL);
@@ -1842,7 +1828,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 		}
 		rx_qgrp->splitq.num_rxq_sets = num_rxq;
 
-		for (j = 0; j < num_rxq; j++) {
+		for (unsigned int j = 0; j < num_rxq; j++) {
 			rx_qgrp->splitq.rxq_sets[j] =
 				kzalloc(sizeof(struct idpf_rxq_set),
 					GFP_KERNEL);
@@ -1861,7 +1847,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 		}
 		rx_qgrp->splitq.num_bufq_sets = rsrc->num_bufqs_per_qgrp;
 
-		for (j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
+		for (unsigned int j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 			struct idpf_bufq_set *bufq_set =
 				&rx_qgrp->splitq.bufq_sets[j];
 			int swq_size = sizeof(struct idpf_sw_queue);
@@ -1881,7 +1867,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 				err = -ENOMEM;
 				goto err_alloc;
 			}
-			for (k = 0; k < bufq_set->num_refillqs; k++) {
+			for (unsigned int k = 0; k < bufq_set->num_refillqs; k++) {
 				struct idpf_sw_queue *refillq =
 					&bufq_set->refillqs[k];
 
@@ -1900,7 +1886,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 		}
 
 skip_splitq_rx_init:
-		for (j = 0; j < num_rxq; j++) {
+		for (unsigned int j = 0; j < num_rxq; j++) {
 			struct idpf_rx_queue *q;
 
 			if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
@@ -4368,9 +4354,9 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
 	bool split = idpf_is_queue_model_split(rsrc->rxq_model);
 	struct idpf_rxq_group *rx_qgrp;
 	struct idpf_txq_group *tx_qgrp;
-	u32 i, qv_idx, q_index;
+	u32 q_index;
 
-	for (i = 0, qv_idx = 0; i < rsrc->num_rxq_grp; i++) {
+	for (unsigned int i = 0, qv_idx = 0; i < rsrc->num_rxq_grp; i++) {
 		u16 num_rxq;
 
 		if (qv_idx >= rsrc->num_q_vectors)
@@ -4415,7 +4401,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
 
 	split = idpf_is_queue_model_split(rsrc->txq_model);
 
-	for (i = 0, qv_idx = 0; i < num_txq_grp; i++) {
+	for (unsigned int i = 0, qv_idx = 0; i < num_txq_grp; i++) {
 		u16 num_txq;
 
 		if (qv_idx >= rsrc->num_q_vectors)
@@ -4442,7 +4428,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
 		qv_idx++;
 	}
 
-	for (i = 0; i < vport->num_xdp_txq; i++) {
+	for (unsigned int i = 0; i < vport->num_xdp_txq; i++) {
 		struct idpf_tx_queue *xdpsq;
 		struct idpf_q_vector *qv;
 
-- 
2.39.2

