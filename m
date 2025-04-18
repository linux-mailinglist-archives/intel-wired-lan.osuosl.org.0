Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 513B8A93F1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 22:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4844860686;
	Fri, 18 Apr 2025 20:49:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lo8dNyLP8Pzg; Fri, 18 Apr 2025 20:49:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 807746071F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745009388;
	bh=pcV5OMYmOlquqEvjcAqfPmbMZ5DlAEhsHzaFEIi+mWE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LdgzYCXsOFIKVhhkE7xFV8dk3lIwS4UG+i3sD7Kh4Jovo6GNH9wKRLoIM3KYI4atY
	 ZNUoNZBDnYpKXXmjhZGOyK/QGDF+7/mC2wSYaHHAl0wkAza/SFg43nPPIZb92/QyIb
	 tPJbecQZpKJM/qvrorIepWKnwhnhrqMGGA5BfLqVPiM23KatiVj8I/3vrBELOs8hHf
	 FIJdWYTrA0/lnSmbycypNBU0KQ5wmHyRSeH05KQcCyjkI0YPEY+jClEPgRmWXiLGki
	 J/Y4tRi9Ub9Gxbjqy0tpKgok7Qsxm9SvSe8s5OGaRnsTGDaIYfWLsmN5QOgHFgcWnh
	 2cBxp2zjc/W4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 807746071F;
	Fri, 18 Apr 2025 20:49:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75C8E61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7DC081E7E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e2xewzbWMKBu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Apr 2025 20:49:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D00C81E7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D00C81E7B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D00C81E7B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:37 +0000 (UTC)
X-CSE-ConnectionGUID: NTVMtQT7RlGk1h1v1gzb6Q==
X-CSE-MsgGUID: Y8zqRN8WSmS+G3uB7P40JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="46814312"
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="46814312"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 13:49:36 -0700
X-CSE-ConnectionGUID: FHeAk/ppRFCwxRx61XxYFA==
X-CSE-MsgGUID: QhF9+ThuTIiec7Mzun74NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="168406313"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa001.jf.intel.com with ESMTP; 18 Apr 2025 13:49:36 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Fri, 18 Apr 2025 13:49:14 -0700
Message-ID: <20250418204919.5875-5-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250418204919.5875-1-pavan.kumar.linga@intel.com>
References: <20250418204919.5875-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745009378; x=1776545378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zYm0Nxj38MQFe8yTTunAihPINDdxQ9KkOf5HSdFLKUU=;
 b=jEn2heG3C34BmOKwTH8RhRXq8hFXeU2+/3mHKa6YhQ2Oza9O7qojExlA
 I6dLaTJ6zwUPk2pi3vweA7FAAzA94856hO03aN0+qTr6CIamEB/LTGnVs
 9B8QP6nn+ZI1KDqnyL0p2HgvrlXCq074B2D9CGCxrZo/CT6NPAc2IoIXD
 aelVpm72PH2CjrR2648mXL5Z8D9IOcZuBxu7rJQEQuPvCOXF0c2jcwG0J
 kNoAt2HTnPzUWJ5RyHovPJHi4tBEmMxIJDp3iMjIMhVxOicz39k+cu4p4
 UbWQ2OiiYkxeeSgAIKBQISmmk87GNBdjcfdmNhTagXHLX4JWPZmpYAb0E
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jEn2heG3
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/9] idpf: move queue
 resources to idpf_q_vec_rsrc structure
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

Move both TX and RX queue resources to the newly introduced
idpf_q_vec_rsrc structure.

While at it, declare the loop iterator in loop and use the
correct type.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  70 +--
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  85 ++--
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  66 +--
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |  17 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 410 +++++++++---------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  16 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 234 +++++-----
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  12 +-
 8 files changed, 486 insertions(+), 424 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index c5a3edb9b2d6..bd95947a9936 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -272,37 +272,57 @@ struct idpf_tx_tstamp_stats {
  * @q_vectors: array of queue vectors
  * @q_vector_idxs: starting index of queue vectors
  * @num_q_vectors: number of IRQ vectors allocated
+ * @num_txq: number of allocated TX queues
+ * @num_complq: number of allocated completion queues
+ * @num_txq_grp: number of TX queue groups
+ * @txq_grps: array of TX queue groups
+ * @txq_desc_count: TX queue descriptor count
+ * @complq_desc_count: nompletion queue descriptor count
+ * @txq_model: split queue or single queue queuing model
+ * @num_rxq: number of allocated RX queues
+ * @num_rxq_grp: number of RX queues in a group
+ * @rxq_grps: total number of RX groups. Number of groups * number of RX per
+ *	      group will yield total number of RX queues.
+ * @rxq_model: splitq queue or single queue queuing model
+ * @rxq_desc_count: RX queue descriptor count. *MUST* have enough descriptors
+ *		    to complete all buffer descriptors for all buffer queues in
+ *		    the worst case.
+ * @bufq_desc_count: buffer queue descriptor count
+ * @num_bufq: number of allocated buffer queues
+ * @num_bufqs_per_qgrp: buffer queues per RX queue in a given grouping
+ * @base_rxd: true if the driver should use base descriptors instead of flex
  */
 struct idpf_q_vec_rsrc {
 	struct idpf_q_vector	*q_vectors;
 	u16			*q_vector_idxs;
 	u16			num_q_vectors;
+
+	u16			num_txq;
+	u16			num_complq;
+	u16			num_txq_grp;
+	struct idpf_txq_group	*txq_grps;
+	u32			txq_desc_count;
+	u32			complq_desc_count;
+	u32			txq_model;
+
+	u16			num_rxq;
+	u16			num_rxq_grp;
+	struct idpf_rxq_group	*rxq_grps;
+	u32			rxq_model;
+	u32			rxq_desc_count;
+	u32			bufq_desc_count[IDPF_MAX_BUFQS_PER_RXQ_GRP];
+	u16			num_bufq;
+	u8			num_bufqs_per_qgrp;
+	bool			base_rxd;
 };
 
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
  * @dflt_qv_rsrc: contains default queue and vector resources
  * @num_txq: Number of allocated TX queues
- * @num_complq: Number of allocated completion queues
- * @txq_desc_count: TX queue descriptor count
- * @complq_desc_count: Completion queue descriptor count
  * @compln_clean_budget: Work budget for completion clean
- * @num_txq_grp: Number of TX queue groups
- * @txq_grps: Array of TX queue groups
- * @txq_model: Split queue or single queue queuing model
  * @txqs: Used only in hotpath to get to the right queue very fast
  * @crc_enable: Enable CRC insertion offload
- * @num_rxq: Number of allocated RX queues
- * @num_bufq: Number of allocated buffer queues
- * @rxq_desc_count: RX queue descriptor count. *MUST* have enough descriptors
- *		    to complete all buffer descriptors for all buffer queues in
- *		    the worst case.
- * @num_bufqs_per_qgrp: Buffer queues per RX queue in a given grouping
- * @bufq_desc_count: Buffer queue descriptor count
- * @num_rxq_grp: Number of RX queues in a group
- * @rxq_grps: Total number of RX groups. Number of groups * number of RX per
- *	      group will yield total number of RX queues.
- * @rxq_model: Splitq queue or single queue queuing model
  * @rx_ptype_lkup: Lookup table for ptypes on RX
  * @adapter: back pointer to associated adapter
  * @netdev: Associated net_device. Each vport should have one and only one
@@ -312,7 +332,6 @@ struct idpf_q_vec_rsrc {
  * @vport_id: Device given vport identifier
  * @idx: Software index in adapter vports struct
  * @default_vport: Use this vport if one isn't specified
- * @base_rxd: True if the driver should use base descriptors instead of flex
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
@@ -328,24 +347,10 @@ struct idpf_q_vec_rsrc {
 struct idpf_vport {
 	struct idpf_q_vec_rsrc dflt_qv_rsrc;
 	u16 num_txq;
-	u16 num_complq;
-	u32 txq_desc_count;
-	u32 complq_desc_count;
 	u32 compln_clean_budget;
-	u16 num_txq_grp;
-	struct idpf_txq_group *txq_grps;
-	u32 txq_model;
 	struct idpf_tx_queue **txqs;
 	bool crc_enable;
 
-	u16 num_rxq;
-	u16 num_bufq;
-	u32 rxq_desc_count;
-	u8 num_bufqs_per_qgrp;
-	u32 bufq_desc_count[IDPF_MAX_BUFQS_PER_RXQ_GRP];
-	u16 num_rxq_grp;
-	struct idpf_rxq_group *rxq_grps;
-	u32 rxq_model;
 	struct libeth_rx_pt *rx_ptype_lkup;
 
 	struct idpf_adapter *adapter;
@@ -355,7 +360,6 @@ struct idpf_vport {
 	u32 vport_id;
 	u16 idx;
 	bool default_vport;
-	bool base_rxd;
 
 	u16 max_mtu;
 	u8 default_mac_addr[ETH_ALEN];
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 7a4793749bc5..4c7ffd34be5d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -22,7 +22,7 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
-		cmd->data = vport->num_rxq;
+		cmd->data = vport->dflt_qv_rsrc.num_rxq;
 		idpf_vport_ctrl_unlock(netdev);
 
 		return 0;
@@ -307,8 +307,8 @@ static void idpf_get_ringparam(struct net_device *netdev,
 
 	ring->rx_max_pending = IDPF_MAX_RXQ_DESC;
 	ring->tx_max_pending = IDPF_MAX_TXQ_DESC;
-	ring->rx_pending = vport->rxq_desc_count;
-	ring->tx_pending = vport->txq_desc_count;
+	ring->rx_pending = vport->dflt_qv_rsrc.rxq_desc_count;
+	ring->tx_pending = vport->dflt_qv_rsrc.txq_desc_count;
 
 	kring->tcp_data_split = idpf_vport_get_hsplit(vport);
 
@@ -332,8 +332,9 @@ static int idpf_set_ringparam(struct net_device *netdev,
 {
 	struct idpf_vport_user_config_data *config_data;
 	u32 new_rx_count, new_tx_count;
+	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
-	int i, err = 0;
+	int err = 0;
 	u16 idx;
 
 	idpf_vport_ctrl_lock(netdev);
@@ -367,8 +368,9 @@ static int idpf_set_ringparam(struct net_device *netdev,
 		netdev_info(netdev, "Requested Tx descriptor count rounded up to %u\n",
 			    new_tx_count);
 
-	if (new_tx_count == vport->txq_desc_count &&
-	    new_rx_count == vport->rxq_desc_count &&
+	rsrc = &vport->dflt_qv_rsrc;
+	if (new_tx_count == rsrc->txq_desc_count &&
+	    new_rx_count == rsrc->rxq_desc_count &&
 	    kring->tcp_data_split == idpf_vport_get_hsplit(vport))
 		goto unlock_mutex;
 
@@ -387,10 +389,10 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	/* Since we adjusted the RX completion queue count, the RX buffer queue
 	 * descriptor count needs to be adjusted as well
 	 */
-	for (i = 0; i < vport->num_bufqs_per_qgrp; i++)
-		vport->bufq_desc_count[i] =
+	for (u8 i = 0; i < rsrc->num_bufqs_per_qgrp; i++)
+		rsrc->bufq_desc_count[i] =
 			IDPF_RX_BUFQ_DESC_COUNT(new_rx_count,
-						vport->num_bufqs_per_qgrp);
+						rsrc->num_bufqs_per_qgrp);
 
 	err = idpf_initiate_soft_reset(vport, IDPF_SR_Q_DESC_CHANGE);
 
@@ -770,7 +772,7 @@ static void idpf_add_port_stats(struct idpf_vport *vport, u64 **data)
 static void idpf_collect_queue_stats(struct idpf_vport *vport)
 {
 	struct idpf_port_stats *pstats = &vport->port_stats;
-	int i, j;
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 
 	/* zero out port stats since they're actually tracked in per
 	 * queue stats; this is only for reporting
@@ -787,22 +789,22 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 	u64_stats_set(&pstats->tx_hwtstamp_skipped, 0);
 	u64_stats_update_end(&pstats->stats_sync);
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rxq_grp = &vport->rxq_grps[i];
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rxq_grp = &rsrc->rxq_grps[i];
 		u16 num_rxq;
 
-		if (idpf_is_queue_model_split(vport->rxq_model))
+		if (idpf_is_queue_model_split(rsrc->rxq_model))
 			num_rxq = rxq_grp->splitq.num_rxq_sets;
 		else
 			num_rxq = rxq_grp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++) {
+		for (u16 j = 0; j < num_rxq; j++) {
 			u64 hw_csum_err, hsplit, hsplit_hbo, bad_descs;
 			struct idpf_rx_queue_stats *stats;
 			struct idpf_rx_queue *rxq;
 			unsigned int start;
 
-			if (idpf_is_queue_model_split(vport->rxq_model))
+			if (idpf_is_queue_model_split(rsrc->rxq_model))
 				rxq = &rxq_grp->splitq.rxq_sets[j]->rxq;
 			else
 				rxq = rxq_grp->singleq.rxqs[j];
@@ -829,10 +831,10 @@ static void idpf_collect_queue_stats(struct idpf_vport *vport)
 		}
 	}
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < txq_grp->num_txq; j++) {
+		for (u16 j = 0; j < txq_grp->num_txq; j++) {
 			u64 linearize, qbusy, skb_drops, dma_map_errs, tstamp;
 			struct idpf_tx_queue *txq = txq_grp->txqs[j];
 			struct idpf_tx_queue_stats *stats;
@@ -877,9 +879,9 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_vport_config *vport_config;
+	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
 	unsigned int total = 0;
-	unsigned int i, j;
 	bool is_splitq;
 	u16 qtype;
 
@@ -897,12 +899,13 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 	idpf_collect_queue_stats(vport);
 	idpf_add_port_stats(vport, &data);
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+	rsrc = &vport->dflt_qv_rsrc;
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &rsrc->txq_grps[i];
 
 		qtype = VIRTCHNL2_QUEUE_TYPE_TX;
 
-		for (j = 0; j < txq_grp->num_txq; j++, total++) {
+		for (u16 j = 0; j < txq_grp->num_txq; j++, total++) {
 			struct idpf_tx_queue *txq = txq_grp->txqs[j];
 
 			if (!txq)
@@ -922,10 +925,10 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 		idpf_add_empty_queue_stats(&data, VIRTCHNL2_QUEUE_TYPE_TX);
 	total = 0;
 
-	is_splitq = idpf_is_queue_model_split(vport->rxq_model);
+	is_splitq = idpf_is_queue_model_split(rsrc->rxq_model);
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rxq_grp = &vport->rxq_grps[i];
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rxq_grp = &rsrc->rxq_grps[i];
 		u16 num_rxq;
 
 		qtype = VIRTCHNL2_QUEUE_TYPE_RX;
@@ -935,7 +938,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 		else
 			num_rxq = rxq_grp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++, total++) {
+		for (u16 j = 0; j < num_rxq; j++, total++) {
 			struct idpf_rx_queue *rxq;
 
 			if (is_splitq)
@@ -967,15 +970,16 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 static struct idpf_q_vector *idpf_find_rxq_vec(const struct idpf_vport *vport,
 					       int q_num)
 {
+	const struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	int q_grp, q_idx;
 
-	if (!idpf_is_queue_model_split(vport->rxq_model))
-		return vport->rxq_grps->singleq.rxqs[q_num]->q_vector;
+	if (!idpf_is_queue_model_split(rsrc->rxq_model))
+		return rsrc->rxq_grps->singleq.rxqs[q_num]->q_vector;
 
 	q_grp = q_num / IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
 	q_idx = q_num % IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
 
-	return vport->rxq_grps[q_grp].splitq.rxq_sets[q_idx]->rxq.q_vector;
+	return rsrc->rxq_grps[q_grp].splitq.rxq_sets[q_idx]->rxq.q_vector;
 }
 
 /**
@@ -988,14 +992,15 @@ static struct idpf_q_vector *idpf_find_rxq_vec(const struct idpf_vport *vport,
 static struct idpf_q_vector *idpf_find_txq_vec(const struct idpf_vport *vport,
 					       int q_num)
 {
+	const struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	int q_grp;
 
-	if (!idpf_is_queue_model_split(vport->txq_model))
+	if (!idpf_is_queue_model_split(rsrc->txq_model))
 		return vport->txqs[q_num]->q_vector;
 
 	q_grp = q_num / IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
 
-	return vport->txq_grps[q_grp].complq->q_vector;
+	return rsrc->txq_grps[q_grp].complq->q_vector;
 }
 
 /**
@@ -1032,7 +1037,8 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 			       u32 q_num)
 {
 	const struct idpf_netdev_priv *np = netdev_priv(netdev);
-	const struct idpf_vport *vport;
+	struct idpf_q_vec_rsrc *rsrc;
+	struct idpf_vport *vport;
 	int err = 0;
 
 	idpf_vport_ctrl_lock(netdev);
@@ -1041,16 +1047,17 @@ static int idpf_get_q_coalesce(struct net_device *netdev,
 	if (np->state != __IDPF_VPORT_UP)
 		goto unlock_mutex;
 
-	if (q_num >= vport->num_rxq && q_num >= vport->num_txq) {
+	rsrc = &vport->dflt_qv_rsrc;
+	if (q_num >= rsrc->num_rxq && q_num >= rsrc->num_txq) {
 		err = -EINVAL;
 		goto unlock_mutex;
 	}
 
-	if (q_num < vport->num_rxq)
+	if (q_num < rsrc->num_rxq)
 		__idpf_get_q_coalesce(ec, idpf_find_rxq_vec(vport, q_num),
 				      VIRTCHNL2_QUEUE_TYPE_RX);
 
-	if (q_num < vport->num_txq)
+	if (q_num < rsrc->num_txq)
 		__idpf_get_q_coalesce(ec, idpf_find_txq_vec(vport, q_num),
 				      VIRTCHNL2_QUEUE_TYPE_TX);
 
@@ -1207,8 +1214,9 @@ static int idpf_set_coalesce(struct net_device *netdev,
 			     struct netlink_ext_ack *extack)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
-	int i, err = 0;
+	int err = 0;
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
@@ -1216,13 +1224,14 @@ static int idpf_set_coalesce(struct net_device *netdev,
 	if (np->state != __IDPF_VPORT_UP)
 		goto unlock_mutex;
 
-	for (i = 0; i < vport->num_txq; i++) {
+	rsrc = &vport->dflt_qv_rsrc;
+	for (u16 i = 0; i < rsrc->num_txq; i++) {
 		err = idpf_set_q_coalesce(vport, ec, i, false);
 		if (err)
 			goto unlock_mutex;
 	}
 
-	for (i = 0; i < vport->num_rxq; i++) {
+	for (u16 i = 0; i < rsrc->num_rxq; i++) {
 		err = idpf_set_q_coalesce(vport, ec, i, true);
 		if (err)
 			goto unlock_mutex;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index c36f5a3f4f26..5ff5db7486b9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -847,7 +847,7 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 
 	idpf_send_disable_vport_msg(vport);
 	idpf_send_disable_queues_msg(vport, rsrc, chunks);
-	idpf_send_map_unmap_queue_vector_msg(vport, false);
+	idpf_send_map_unmap_queue_vector_msg(vport, rsrc, false);
 	/* Normally we ask for queues in create_vport, but if the number of
 	 * initially requested queues have changed, for example via ethtool
 	 * set channels, we do delete queues and then add the queues back
@@ -860,7 +860,7 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 
 	vport->link_up = false;
 	idpf_vport_intr_deinit(vport, rsrc);
-	idpf_vport_queues_rel(vport);
+	idpf_vport_queues_rel(vport, rsrc);
 	idpf_vport_intr_rel(rsrc);
 	np->state = __IDPF_VPORT_DOWN;
 }
@@ -1004,7 +1004,7 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
  */
 static bool idpf_is_hsplit_supported(const struct idpf_vport *vport)
 {
-	return idpf_is_queue_model_split(vport->rxq_model) &&
+	return idpf_is_queue_model_split(vport->dflt_qv_rsrc.rxq_model) &&
 	       idpf_is_cap_ena_all(vport->adapter, IDPF_HSPLIT_CAPS,
 				   IDPF_CAP_HSPLIT);
 }
@@ -1251,11 +1251,13 @@ static int idpf_set_real_num_queues(struct idpf_vport *vport)
 {
 	int err;
 
-	err = netif_set_real_num_rx_queues(vport->netdev, vport->num_rxq);
+	err = netif_set_real_num_rx_queues(vport->netdev,
+					   vport->dflt_qv_rsrc.num_rxq);
 	if (err)
 		return err;
 
-	return netif_set_real_num_tx_queues(vport->netdev, vport->num_txq);
+	return netif_set_real_num_tx_queues(vport->netdev,
+					    vport->dflt_qv_rsrc.num_txq);
 }
 
 /**
@@ -1280,24 +1282,22 @@ static int idpf_up_complete(struct idpf_vport *vport)
 
 /**
  * idpf_rx_init_buf_tail - Write initial buffer ring tail value
- * @vport: virtual port struct
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
+static void idpf_rx_init_buf_tail(struct idpf_q_vec_rsrc *rsrc)
 {
-	int i, j;
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *grp = &rsrc->rxq_grps[i];
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *grp = &vport->rxq_grps[i];
-
-		if (idpf_is_queue_model_split(vport->rxq_model)) {
-			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+		if (idpf_is_queue_model_split(rsrc->rxq_model)) {
+			for (u8 j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 				const struct idpf_buf_queue *q =
 					&grp->splitq.bufq_sets[j].bufq;
 
 				writel(q->next_to_alloc, q->tail);
 			}
 		} else {
-			for (j = 0; j < grp->singleq.num_rxq; j++) {
+			for (u16 j = 0; j < grp->singleq.num_rxq; j++) {
 				const struct idpf_rx_queue *q =
 					grp->singleq.rxqs[j];
 
@@ -1333,14 +1333,14 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		return err;
 	}
 
-	err = idpf_vport_queues_alloc(vport);
+	err = idpf_vport_queues_alloc(vport, rsrc);
 	if (err)
 		goto intr_rel;
 
 	vport_config = adapter->vport_config[vport->idx];
 	chunks = &vport_config->qid_reg_info;
 
-	err = idpf_vport_queue_ids_init(vport, chunks);
+	err = idpf_vport_queue_ids_init(vport, rsrc, chunks);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize queue ids for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1354,31 +1354,31 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto queues_rel;
 	}
 
-	err = idpf_rx_bufs_init_all(vport);
+	err = idpf_rx_bufs_init_all(rsrc);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize RX buffers for vport %u: %d\n",
 			vport->vport_id, err);
 		goto queues_rel;
 	}
 
-	err = idpf_queue_reg_init(vport, chunks);
+	err = idpf_queue_reg_init(vport, rsrc, chunks);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize queue registers for vport %u: %d\n",
 			vport->vport_id, err);
 		goto queues_rel;
 	}
 
-	idpf_rx_init_buf_tail(vport);
+	idpf_rx_init_buf_tail(rsrc);
 	idpf_vport_intr_ena(vport, rsrc);
 
-	err = idpf_send_config_queues_msg(vport);
+	err = idpf_send_config_queues_msg(vport, rsrc);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to configure queues for vport %u, %d\n",
 			vport->vport_id, err);
 		goto intr_deinit;
 	}
 
-	err = idpf_send_map_unmap_queue_vector_msg(vport, true);
+	err = idpf_send_map_unmap_queue_vector_msg(vport, rsrc, true);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to map queue vectors for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1428,11 +1428,11 @@ static int idpf_vport_open(struct idpf_vport *vport)
 disable_queues:
 	idpf_send_disable_queues_msg(vport, rsrc, chunks);
 unmap_queue_vectors:
-	idpf_send_map_unmap_queue_vector_msg(vport, false);
+	idpf_send_map_unmap_queue_vector_msg(vport, rsrc, false);
 intr_deinit:
 	idpf_vport_intr_deinit(vport, rsrc);
 queues_rel:
-	idpf_vport_queues_rel(vport);
+	idpf_vport_queues_rel(vport, rsrc);
 intr_rel:
 	idpf_vport_intr_rel(rsrc);
 
@@ -1836,9 +1836,11 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 			     enum idpf_vport_reset_cause reset_cause)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	enum idpf_vport_state current_state = np->state;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
+	struct idpf_q_vec_rsrc *new_rsrc;
 	struct idpf_vport *new_vport;
 	int err;
 
@@ -1865,16 +1867,18 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	 */
 	memcpy(new_vport, vport, offsetof(struct idpf_vport, link_up));
 
+	new_rsrc = &new_vport->dflt_qv_rsrc;
+
 	/* Adjust resource parameters prior to reallocating resources */
 	switch (reset_cause) {
 	case IDPF_SR_Q_CHANGE:
-		err = idpf_vport_adjust_qs(new_vport);
+		err = idpf_vport_adjust_qs(new_vport, new_rsrc);
 		if (err)
 			goto free_vport;
 		break;
 	case IDPF_SR_Q_DESC_CHANGE:
 		/* Update queue parameters before allocating resources */
-		idpf_vport_calc_num_q_desc(new_vport);
+		idpf_vport_calc_num_q_desc(new_vport, new_rsrc);
 		break;
 	case IDPF_SR_MTU_CHANGE:
 	case IDPF_SR_RSC_CHANGE:
@@ -1901,10 +1905,10 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	 * to add code to add_queues to change the vport config within
 	 * vport itself as it will be wiped with a memcpy later.
 	 */
-	err = idpf_send_add_queues_msg(vport, new_vport->num_txq,
-				       new_vport->num_complq,
-				       new_vport->num_rxq,
-				       new_vport->num_bufq);
+	err = idpf_send_add_queues_msg(vport, new_rsrc->num_txq,
+				       new_rsrc->num_complq,
+				       new_rsrc->num_rxq,
+				       new_rsrc->num_bufq);
 	if (err)
 		goto err_reset;
 
@@ -1928,8 +1932,8 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	return err;
 
 err_reset:
-	idpf_send_add_queues_msg(vport, vport->num_txq, vport->num_complq,
-				 vport->num_rxq, vport->num_bufq);
+	idpf_send_add_queues_msg(vport, rsrc->num_txq, rsrc->num_complq,
+				 rsrc->num_rxq, rsrc->num_bufq);
 
 err_open:
 	if (current_state == __IDPF_VPORT_UP)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index ba05709cda24..945ef949aad1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -386,15 +386,17 @@ static int idpf_ptp_update_cached_phctime(struct idpf_adapter *adapter)
 	WRITE_ONCE(adapter->ptp->cached_phc_jiffies, jiffies);
 
 	idpf_for_each_vport(adapter, vport) {
+		struct idpf_q_vec_rsrc *rsrc;
 		bool split;
 
-		if (!vport || !vport->rxq_grps)
+		if (!vport || !vport->dflt_qv_rsrc.rxq_grps)
 			continue;
 
-		split = idpf_is_queue_model_split(vport->rxq_model);
+		rsrc = &vport->dflt_qv_rsrc;
+		split = idpf_is_queue_model_split(rsrc->rxq_model);
 
-		for (u16 i = 0; i < vport->num_rxq_grp; i++) {
-			struct idpf_rxq_group *grp = &vport->rxq_grps[i];
+		for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+			struct idpf_rxq_group *grp = &rsrc->rxq_grps[i];
 
 			idpf_ptp_update_phctime_rxq_grp(grp, split, systime);
 		}
@@ -680,9 +682,10 @@ int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *skb,
  */
 static void idpf_ptp_set_rx_tstamp(struct idpf_vport *vport, int rx_filter)
 {
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	bool enable = true, splitq;
 
-	splitq = idpf_is_queue_model_split(vport->rxq_model);
+	splitq = idpf_is_queue_model_split(rsrc->rxq_model);
 
 	if (rx_filter == HWTSTAMP_FILTER_NONE) {
 		enable = false;
@@ -691,8 +694,8 @@ static void idpf_ptp_set_rx_tstamp(struct idpf_vport *vport, int rx_filter)
 		vport->tstamp_config.rx_filter = HWTSTAMP_FILTER_ALL;
 	}
 
-	for (u16 i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *grp = &vport->rxq_grps[i];
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *grp = &rsrc->rxq_grps[i];
 		struct idpf_rx_queue *rx_queue;
 		u16 j, num_rxq;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index abd6cbf0acbd..9413d7b304fa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -165,24 +165,22 @@ static void idpf_compl_desc_rel(struct idpf_compl_queue *complq)
 
 /**
  * idpf_tx_desc_rel_all - Free Tx Resources for All Queues
- * @vport: virtual port structure
+ * @rsrc: pointer to queue and vector resources
  *
  * Free all transmit software resources
  */
-static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
+static void idpf_tx_desc_rel_all(struct idpf_q_vec_rsrc *rsrc)
 {
-	int i, j;
-
-	if (!vport->txq_grps)
+	if (!rsrc->txq_grps)
 		return;
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < txq_grp->num_txq; j++)
+		for (u16 j = 0; j < txq_grp->num_txq; j++)
 			idpf_tx_desc_rel(txq_grp->txqs[j]);
 
-		if (idpf_is_queue_model_split(vport->txq_model))
+		if (idpf_is_queue_model_split(rsrc->txq_model))
 			idpf_compl_desc_rel(txq_grp->complq);
 	}
 }
@@ -235,13 +233,11 @@ static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
 
 /**
  * idpf_tx_desc_alloc - Allocate the Tx descriptors
- * @vport: vport to allocate resources for
  * @tx_q: the tx ring to set up
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
-			      struct idpf_tx_queue *tx_q)
+static int idpf_tx_desc_alloc(struct idpf_tx_queue *tx_q)
 {
 	struct device *dev = tx_q->dev;
 	int err;
@@ -277,13 +273,11 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 
 /**
  * idpf_compl_desc_alloc - allocate completion descriptors
- * @vport: vport to allocate resources for
  * @complq: completion queue to set up
  *
  * Return: 0 on success, -errno on failure.
  */
-static int idpf_compl_desc_alloc(const struct idpf_vport *vport,
-				 struct idpf_compl_queue *complq)
+static int idpf_compl_desc_alloc(struct idpf_compl_queue *complq)
 {
 	complq->size = array_size(complq->desc_count, sizeof(*complq->comp));
 
@@ -303,24 +297,25 @@ static int idpf_compl_desc_alloc(const struct idpf_vport *vport,
 /**
  * idpf_tx_desc_alloc_all - allocate all queues Tx resources
  * @vport: virtual port private structure
+ * @rsrc: pointer to queue and vector resources
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
+static int idpf_tx_desc_alloc_all(struct idpf_vport *vport,
+				  struct idpf_q_vec_rsrc *rsrc)
 {
 	int err = 0;
-	int i, j;
 
 	/* Setup buffer queues. In single queue model buffer queues and
 	 * completion queues will be same
 	 */
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		for (j = 0; j < vport->txq_grps[i].num_txq; j++) {
-			struct idpf_tx_queue *txq = vport->txq_grps[i].txqs[j];
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		for (u16 j = 0; j < rsrc->txq_grps[i].num_txq; j++) {
+			struct idpf_tx_queue *txq = rsrc->txq_grps[i].txqs[j];
 			u8 gen_bits = 0;
 			u16 bufidx_mask;
 
-			err = idpf_tx_desc_alloc(vport, txq);
+			err = idpf_tx_desc_alloc(txq);
 			if (err) {
 				pci_err(vport->adapter->pdev,
 					"Allocation for Tx Queue %u failed\n",
@@ -328,7 +323,7 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 				goto err_out;
 			}
 
-			if (!idpf_is_queue_model_split(vport->txq_model))
+			if (!idpf_is_queue_model_split(rsrc->txq_model))
 				continue;
 
 			txq->compl_tag_cur_gen = 0;
@@ -357,11 +352,11 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 				GETMAXVAL(txq->compl_tag_gen_s);
 		}
 
-		if (!idpf_is_queue_model_split(vport->txq_model))
+		if (!idpf_is_queue_model_split(rsrc->txq_model))
 			continue;
 
 		/* Setup completion queues */
-		err = idpf_compl_desc_alloc(vport, vport->txq_grps[i].complq);
+		err = idpf_compl_desc_alloc(rsrc->txq_grps[i].complq);
 		if (err) {
 			pci_err(vport->adapter->pdev,
 				"Allocation for Tx Completion Queue %u failed\n",
@@ -372,7 +367,7 @@ static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
 
 err_out:
 	if (err)
-		idpf_tx_desc_rel_all(vport);
+		idpf_tx_desc_rel_all(rsrc);
 
 	return err;
 }
@@ -519,38 +514,39 @@ static void idpf_rx_desc_rel_bufq(struct idpf_buf_queue *bufq,
 /**
  * idpf_rx_desc_rel_all - Free Rx Resources for All Queues
  * @vport: virtual port structure
+ * @rsrc: pointer to queue and vector resources
  *
  * Free all rx queues resources
  */
-static void idpf_rx_desc_rel_all(struct idpf_vport *vport)
+static void idpf_rx_desc_rel_all(struct idpf_vport *vport,
+				 struct idpf_q_vec_rsrc *rsrc)
 {
 	struct device *dev = &vport->adapter->pdev->dev;
 	struct idpf_rxq_group *rx_qgrp;
 	u16 num_rxq;
-	int i, j;
 
-	if (!vport->rxq_grps)
+	if (!rsrc->rxq_grps)
 		return;
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		rx_qgrp = &vport->rxq_grps[i];
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		rx_qgrp = &rsrc->rxq_grps[i];
 
-		if (!idpf_is_queue_model_split(vport->rxq_model)) {
-			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
+		if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
+			for (u16 j = 0; j < rx_qgrp->singleq.num_rxq; j++)
 				idpf_rx_desc_rel(rx_qgrp->singleq.rxqs[j], dev,
 						 VIRTCHNL2_QUEUE_MODEL_SINGLE);
 			continue;
 		}
 
 		num_rxq = rx_qgrp->splitq.num_rxq_sets;
-		for (j = 0; j < num_rxq; j++)
+		for (u16 j = 0; j < num_rxq; j++)
 			idpf_rx_desc_rel(&rx_qgrp->splitq.rxq_sets[j]->rxq,
 					 dev, VIRTCHNL2_QUEUE_MODEL_SPLIT);
 
 		if (!rx_qgrp->splitq.bufq_sets)
 			continue;
 
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+		for (u8 j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 			struct idpf_bufq_set *bufq_set =
 				&rx_qgrp->splitq.bufq_sets[j];
 
@@ -803,24 +799,24 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
 
 /**
  * idpf_rx_bufs_init_all - Initialize all RX bufs
- * @vport: virtual port struct
+ * @rsrc: pointer to queue and vector resources
  *
  * Returns 0 on success, negative on failure
  */
-int idpf_rx_bufs_init_all(struct idpf_vport *vport)
+int idpf_rx_bufs_init_all(struct idpf_q_vec_rsrc *rsrc)
 {
-	bool split = idpf_is_queue_model_split(vport->rxq_model);
-	int i, j, err;
+	bool split = idpf_is_queue_model_split(rsrc->rxq_model);
+	int err;
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 		u32 truesize = 0;
 
 		/* Allocate bufs for the rxq itself in singleq */
 		if (!split) {
 			int num_rxq = rx_qgrp->singleq.num_rxq;
 
-			for (j = 0; j < num_rxq; j++) {
+			for (u16 j = 0; j < num_rxq; j++) {
 				struct idpf_rx_queue *q;
 
 				q = rx_qgrp->singleq.rxqs[j];
@@ -833,7 +829,7 @@ int idpf_rx_bufs_init_all(struct idpf_vport *vport)
 		}
 
 		/* Otherwise, allocate bufs for the buffer queues */
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+		for (u8 j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 			enum libeth_fqe_type type;
 			struct idpf_buf_queue *q;
 
@@ -916,26 +912,28 @@ static int idpf_bufq_desc_alloc(const struct idpf_vport *vport,
 /**
  * idpf_rx_desc_alloc_all - allocate all RX queues resources
  * @vport: virtual port structure
+ * @rsrc: pointer to queue and vector resources
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
+static int idpf_rx_desc_alloc_all(struct idpf_vport *vport,
+				  struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_rxq_group *rx_qgrp;
-	int i, j, err;
 	u16 num_rxq;
+	int err;
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		rx_qgrp = &vport->rxq_grps[i];
-		if (idpf_is_queue_model_split(vport->rxq_model))
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		rx_qgrp = &rsrc->rxq_grps[i];
+		if (idpf_is_queue_model_split(rsrc->rxq_model))
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		else
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++) {
+		for (u16 j = 0; j < num_rxq; j++) {
 			struct idpf_rx_queue *q;
 
-			if (idpf_is_queue_model_split(vport->rxq_model))
+			if (idpf_is_queue_model_split(rsrc->rxq_model))
 				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
 				q = rx_qgrp->singleq.rxqs[j];
@@ -949,10 +947,10 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 			}
 		}
 
-		if (!idpf_is_queue_model_split(vport->rxq_model))
+		if (!idpf_is_queue_model_split(rsrc->rxq_model))
 			continue;
 
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+		for (u8 j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 			struct idpf_buf_queue *q;
 
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
@@ -970,7 +968,7 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 	return 0;
 
 err_out:
-	idpf_rx_desc_rel_all(vport);
+	idpf_rx_desc_rel_all(vport, rsrc);
 
 	return err;
 }
@@ -978,23 +976,24 @@ static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
 /**
  * idpf_txq_group_rel - Release all resources for txq groups
  * @vport: vport to release txq groups on
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_txq_group_rel(struct idpf_vport *vport)
+static void idpf_txq_group_rel(struct idpf_vport *vport,
+			       struct idpf_q_vec_rsrc *rsrc)
 {
 	bool split, flow_sch_en;
-	int i, j;
 
-	if (!vport->txq_grps)
+	if (!rsrc->txq_grps)
 		return;
 
-	split = idpf_is_queue_model_split(vport->txq_model);
+	split = idpf_is_queue_model_split(rsrc->txq_model);
 	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
 				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < txq_grp->num_txq; j++) {
+		for (u16 j = 0; j < txq_grp->num_txq; j++) {
 			kfree(txq_grp->txqs[j]);
 			txq_grp->txqs[j] = NULL;
 		}
@@ -1008,8 +1007,8 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
 		if (flow_sch_en)
 			kfree(txq_grp->stashes);
 	}
-	kfree(vport->txq_grps);
-	vport->txq_grps = NULL;
+	kfree(rsrc->txq_grps);
+	rsrc->txq_grps = NULL;
 }
 
 /**
@@ -1018,12 +1017,10 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
  */
 static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
 {
-	int i, j;
-
-	for (i = 0; i < rx_qgrp->vport->num_bufqs_per_qgrp; i++) {
+	for (u8 i = 0; i < rx_qgrp->vport->dflt_qv_rsrc.num_bufqs_per_qgrp; i++) {
 		struct idpf_bufq_set *bufq_set = &rx_qgrp->splitq.bufq_sets[i];
 
-		for (j = 0; j < bufq_set->num_refillqs; j++) {
+		for (u16 j = 0; j < bufq_set->num_refillqs; j++) {
 			kfree(bufq_set->refillqs[j].ring);
 			bufq_set->refillqs[j].ring = NULL;
 		}
@@ -1034,23 +1031,20 @@ static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
 
 /**
  * idpf_rxq_group_rel - Release all resources for rxq groups
- * @vport: vport to release rxq groups on
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_rxq_group_rel(struct idpf_vport *vport)
+static void idpf_rxq_group_rel(struct idpf_q_vec_rsrc *rsrc)
 {
-	int i;
-
-	if (!vport->rxq_grps)
+	if (!rsrc->rxq_grps)
 		return;
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 		u16 num_rxq;
-		int j;
 
-		if (idpf_is_queue_model_split(vport->rxq_model)) {
+		if (idpf_is_queue_model_split(rsrc->rxq_model)) {
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
-			for (j = 0; j < num_rxq; j++) {
+			for (u16 j = 0; j < num_rxq; j++) {
 				kfree(rx_qgrp->splitq.rxq_sets[j]);
 				rx_qgrp->splitq.rxq_sets[j] = NULL;
 			}
@@ -1060,37 +1054,41 @@ static void idpf_rxq_group_rel(struct idpf_vport *vport)
 			rx_qgrp->splitq.bufq_sets = NULL;
 		} else {
 			num_rxq = rx_qgrp->singleq.num_rxq;
-			for (j = 0; j < num_rxq; j++) {
+			for (u16 j = 0; j < num_rxq; j++) {
 				kfree(rx_qgrp->singleq.rxqs[j]);
 				rx_qgrp->singleq.rxqs[j] = NULL;
 			}
 		}
 	}
-	kfree(vport->rxq_grps);
-	vport->rxq_grps = NULL;
+	kfree(rsrc->rxq_grps);
+	rsrc->rxq_grps = NULL;
 }
 
 /**
  * idpf_vport_queue_grp_rel_all - Release all queue groups
  * @vport: vport to release queue groups for
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_vport_queue_grp_rel_all(struct idpf_vport *vport)
+static void idpf_vport_queue_grp_rel_all(struct idpf_vport *vport,
+					 struct idpf_q_vec_rsrc *rsrc)
 {
-	idpf_txq_group_rel(vport);
-	idpf_rxq_group_rel(vport);
+	idpf_txq_group_rel(vport, rsrc);
+	idpf_rxq_group_rel(rsrc);
 }
 
 /**
  * idpf_vport_queues_rel - Free memory for all queues
  * @vport: virtual port
+ * @rsrc: pointer to queue and vector resources
  *
  * Free the memory allocated for queues associated to a vport
  */
-void idpf_vport_queues_rel(struct idpf_vport *vport)
+void idpf_vport_queues_rel(struct idpf_vport *vport,
+			   struct idpf_q_vec_rsrc *rsrc)
 {
-	idpf_tx_desc_rel_all(vport);
-	idpf_rx_desc_rel_all(vport);
-	idpf_vport_queue_grp_rel_all(vport);
+	idpf_tx_desc_rel_all(rsrc);
+	idpf_rx_desc_rel_all(vport, rsrc);
+	idpf_vport_queue_grp_rel_all(vport, rsrc);
 
 	kfree(vport->txqs);
 	vport->txqs = NULL;
@@ -1099,6 +1097,7 @@ void idpf_vport_queues_rel(struct idpf_vport *vport)
 /**
  * idpf_vport_init_fast_path_txqs - Initialize fast path txq array
  * @vport: vport to init txqs on
+ * @rsrc: pointer to queue and vector resources
  *
  * We get a queue index from skb->queue_mapping and we need a fast way to
  * dereference the queue from queue groups.  This allows us to quickly pull a
@@ -1106,22 +1105,23 @@ void idpf_vport_queues_rel(struct idpf_vport *vport)
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
+static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport,
+					  struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_ptp_vport_tx_tstamp_caps *caps = vport->tx_tstamp_caps;
 	struct work_struct *tstamp_task = &vport->tstamp_task;
-	int i, j, k = 0;
+	int k = 0;
 
-	vport->txqs = kcalloc(vport->num_txq, sizeof(*vport->txqs),
+	vport->txqs = kcalloc(rsrc->num_txq, sizeof(*vport->txqs),
 			      GFP_KERNEL);
-
 	if (!vport->txqs)
 		return -ENOMEM;
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_grp = &vport->txq_grps[i];
+	vport->num_txq = rsrc->num_txq;
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_grp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < tx_grp->num_txq; j++, k++) {
+		for (u16 j = 0; j < tx_grp->num_txq; j++, k++) {
 			vport->txqs[k] = tx_grp->txqs[j];
 			vport->txqs[k]->idx = k;
 
@@ -1140,16 +1140,18 @@ static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
  * idpf_vport_init_num_qs - Initialize number of queues
  * @vport: vport to initialize queues
  * @vport_msg: data to be filled into vport
+ * @rsrc: pointer to queue and vector resources
  */
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
-			    struct virtchnl2_create_vport *vport_msg)
+			    struct virtchnl2_create_vport *vport_msg,
+			    struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_vport_user_config_data *config_data;
 	u16 idx = vport->idx;
 
 	config_data = &vport->adapter->vport_config[idx]->user_config;
-	vport->num_txq = le16_to_cpu(vport_msg->num_tx_q);
-	vport->num_rxq = le16_to_cpu(vport_msg->num_rx_q);
+	rsrc->num_txq = le16_to_cpu(vport_msg->num_tx_q);
+	rsrc->num_rxq = le16_to_cpu(vport_msg->num_rx_q);
 	/* number of txqs and rxqs in config data will be zeros only in the
 	 * driver load path and we dont update them there after
 	 */
@@ -1158,62 +1160,63 @@ void idpf_vport_init_num_qs(struct idpf_vport *vport,
 		config_data->num_req_rx_qs = le16_to_cpu(vport_msg->num_rx_q);
 	}
 
-	if (idpf_is_queue_model_split(vport->txq_model))
-		vport->num_complq = le16_to_cpu(vport_msg->num_tx_complq);
-	if (idpf_is_queue_model_split(vport->rxq_model))
-		vport->num_bufq = le16_to_cpu(vport_msg->num_rx_bufq);
+	if (idpf_is_queue_model_split(rsrc->txq_model))
+		rsrc->num_complq = le16_to_cpu(vport_msg->num_tx_complq);
+	if (idpf_is_queue_model_split(rsrc->rxq_model))
+		rsrc->num_bufq = le16_to_cpu(vport_msg->num_rx_bufq);
 
 	/* Adjust number of buffer queues per Rx queue group. */
-	if (!idpf_is_queue_model_split(vport->rxq_model)) {
-		vport->num_bufqs_per_qgrp = 0;
+	if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
+		rsrc->num_bufqs_per_qgrp = 0;
 
 		return;
 	}
 
-	vport->num_bufqs_per_qgrp = IDPF_MAX_BUFQS_PER_RXQ_GRP;
+	rsrc->num_bufqs_per_qgrp = IDPF_MAX_BUFQS_PER_RXQ_GRP;
 }
 
 /**
  * idpf_vport_calc_num_q_desc - Calculate number of queue groups
  * @vport: vport to calculate q groups for
+ * @rsrc: pointer to queue and vector resources
  */
-void idpf_vport_calc_num_q_desc(struct idpf_vport *vport)
+void idpf_vport_calc_num_q_desc(struct idpf_vport *vport,
+				struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_vport_user_config_data *config_data;
-	int num_bufqs = vport->num_bufqs_per_qgrp;
+	u8 num_bufqs = rsrc->num_bufqs_per_qgrp;
 	u32 num_req_txq_desc, num_req_rxq_desc;
 	u16 idx = vport->idx;
-	int i;
 
 	config_data =  &vport->adapter->vport_config[idx]->user_config;
 	num_req_txq_desc = config_data->num_req_txq_desc;
 	num_req_rxq_desc = config_data->num_req_rxq_desc;
 
-	vport->complq_desc_count = 0;
+	rsrc->complq_desc_count = 0;
 	if (num_req_txq_desc) {
-		vport->txq_desc_count = num_req_txq_desc;
-		if (idpf_is_queue_model_split(vport->txq_model)) {
-			vport->complq_desc_count = num_req_txq_desc;
-			if (vport->complq_desc_count < IDPF_MIN_TXQ_COMPLQ_DESC)
-				vport->complq_desc_count =
+		rsrc->txq_desc_count = num_req_txq_desc;
+		if (idpf_is_queue_model_split(rsrc->txq_model)) {
+			rsrc->complq_desc_count = num_req_txq_desc;
+			if (rsrc->complq_desc_count < IDPF_MIN_TXQ_COMPLQ_DESC)
+				rsrc->complq_desc_count =
 					IDPF_MIN_TXQ_COMPLQ_DESC;
 		}
 	} else {
-		vport->txq_desc_count =	IDPF_DFLT_TX_Q_DESC_COUNT;
-		if (idpf_is_queue_model_split(vport->txq_model))
-			vport->complq_desc_count =
+		rsrc->txq_desc_count =	IDPF_DFLT_TX_Q_DESC_COUNT;
+		if (idpf_is_queue_model_split(rsrc->txq_model))
+			rsrc->complq_desc_count =
 				IDPF_DFLT_TX_COMPLQ_DESC_COUNT;
 	}
 
 	if (num_req_rxq_desc)
-		vport->rxq_desc_count = num_req_rxq_desc;
+		rsrc->rxq_desc_count = num_req_rxq_desc;
 	else
-		vport->rxq_desc_count = IDPF_DFLT_RX_Q_DESC_COUNT;
+		rsrc->rxq_desc_count = IDPF_DFLT_RX_Q_DESC_COUNT;
 
-	for (i = 0; i < num_bufqs; i++) {
-		if (!vport->bufq_desc_count[i])
-			vport->bufq_desc_count[i] =
-				IDPF_RX_BUFQ_DESC_COUNT(vport->rxq_desc_count,
+	for (u8 i = 0; i < num_bufqs; i++) {
+		if (!rsrc->bufq_desc_count[i])
+			rsrc->bufq_desc_count[i] =
+				IDPF_RX_BUFQ_DESC_COUNT(rsrc->rxq_desc_count,
 							num_bufqs);
 	}
 }
@@ -1289,54 +1292,54 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
 
 /**
  * idpf_vport_calc_num_q_groups - Calculate number of queue groups
- * @vport: vport to calculate q groups for
+ * @rsrc: pointer to queue and vector resources
  */
-void idpf_vport_calc_num_q_groups(struct idpf_vport *vport)
+void idpf_vport_calc_num_q_groups(struct idpf_q_vec_rsrc *rsrc)
 {
-	if (idpf_is_queue_model_split(vport->txq_model))
-		vport->num_txq_grp = vport->num_txq;
+	if (idpf_is_queue_model_split(rsrc->txq_model))
+		rsrc->num_txq_grp = rsrc->num_txq;
 	else
-		vport->num_txq_grp = IDPF_DFLT_SINGLEQ_TX_Q_GROUPS;
+		rsrc->num_txq_grp = IDPF_DFLT_SINGLEQ_TX_Q_GROUPS;
 
-	if (idpf_is_queue_model_split(vport->rxq_model))
-		vport->num_rxq_grp = vport->num_rxq;
+	if (idpf_is_queue_model_split(rsrc->rxq_model))
+		rsrc->num_rxq_grp = rsrc->num_rxq;
 	else
-		vport->num_rxq_grp = IDPF_DFLT_SINGLEQ_RX_Q_GROUPS;
+		rsrc->num_rxq_grp = IDPF_DFLT_SINGLEQ_RX_Q_GROUPS;
 }
 
 /**
  * idpf_vport_calc_numq_per_grp - Calculate number of queues per group
- * @vport: vport to calculate queues for
+ * @rsrc: pointer to queue and vector resources
  * @num_txq: return parameter for number of TX queues
  * @num_rxq: return parameter for number of RX queues
  */
-static void idpf_vport_calc_numq_per_grp(struct idpf_vport *vport,
+static void idpf_vport_calc_numq_per_grp(struct idpf_q_vec_rsrc *rsrc,
 					 u16 *num_txq, u16 *num_rxq)
 {
-	if (idpf_is_queue_model_split(vport->txq_model))
+	if (idpf_is_queue_model_split(rsrc->txq_model))
 		*num_txq = IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
 	else
-		*num_txq = vport->num_txq;
+		*num_txq = rsrc->num_txq;
 
-	if (idpf_is_queue_model_split(vport->rxq_model))
+	if (idpf_is_queue_model_split(rsrc->rxq_model))
 		*num_rxq = IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
 	else
-		*num_rxq = vport->num_rxq;
+		*num_rxq = rsrc->num_rxq;
 }
 
 /**
  * idpf_rxq_set_descids - set the descids supported by this queue
- * @vport: virtual port data structure
+ * @rsrc: pointer to queue and vector resources
  * @q: rx queue for which descids are set
  *
  */
-static void idpf_rxq_set_descids(const struct idpf_vport *vport,
+static void idpf_rxq_set_descids(struct idpf_q_vec_rsrc *rsrc,
 				 struct idpf_rx_queue *q)
 {
-	if (idpf_is_queue_model_split(vport->rxq_model)) {
+	if (idpf_is_queue_model_split(rsrc->rxq_model)) {
 		q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
 	} else {
-		if (vport->base_rxd)
+		if (rsrc->base_rxd)
 			q->rxdids = VIRTCHNL2_RXDID_1_32B_BASE_M;
 		else
 			q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M;
@@ -1346,34 +1349,35 @@ static void idpf_rxq_set_descids(const struct idpf_vport *vport,
 /**
  * idpf_txq_group_alloc - Allocate all txq group resources
  * @vport: vport to allocate txq groups for
+ * @rsrc: pointer to queue and vector resources
  * @num_txq: number of txqs to allocate for each group
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
+static int idpf_txq_group_alloc(struct idpf_vport *vport,
+				struct idpf_q_vec_rsrc *rsrc,
+				u16 num_txq)
 {
 	bool split, flow_sch_en;
-	int i;
 
-	vport->txq_grps = kcalloc(vport->num_txq_grp,
-				  sizeof(*vport->txq_grps), GFP_KERNEL);
-	if (!vport->txq_grps)
+	rsrc->txq_grps = kcalloc(rsrc->num_txq_grp,
+				 sizeof(*rsrc->txq_grps), GFP_KERNEL);
+	if (!rsrc->txq_grps)
 		return -ENOMEM;
 
-	split = idpf_is_queue_model_split(vport->txq_model);
+	split = idpf_is_queue_model_split(rsrc->txq_model);
 	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
 				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &rsrc->txq_grps[i];
 		struct idpf_adapter *adapter = vport->adapter;
 		struct idpf_txq_stash *stashes;
-		int j;
 
 		tx_qgrp->vport = vport;
 		tx_qgrp->num_txq = num_txq;
 
-		for (j = 0; j < tx_qgrp->num_txq; j++) {
+		for (u16 j = 0; j < tx_qgrp->num_txq; j++) {
 			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
 						   GFP_KERNEL);
 			if (!tx_qgrp->txqs[j])
@@ -1389,11 +1393,11 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 			tx_qgrp->stashes = stashes;
 		}
 
-		for (j = 0; j < tx_qgrp->num_txq; j++) {
+		for (u16 j = 0; j < tx_qgrp->num_txq; j++) {
 			struct idpf_tx_queue *q = tx_qgrp->txqs[j];
 
 			q->dev = &adapter->pdev->dev;
-			q->desc_count = vport->txq_desc_count;
+			q->desc_count = rsrc->txq_desc_count;
 			q->tx_max_bufs = idpf_get_max_tx_bufs(adapter);
 			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
 			q->netdev = vport->netdev;
@@ -1425,7 +1429,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 		if (!tx_qgrp->complq)
 			goto err_alloc;
 
-		tx_qgrp->complq->desc_count = vport->complq_desc_count;
+		tx_qgrp->complq->desc_count = rsrc->complq_desc_count;
 		tx_qgrp->complq->txq_grp = tx_qgrp;
 		tx_qgrp->complq->netdev = vport->netdev;
 		tx_qgrp->complq->clean_budget = vport->compln_clean_budget;
@@ -1437,7 +1441,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 	return 0;
 
 err_alloc:
-	idpf_txq_group_rel(vport);
+	idpf_txq_group_rel(vport, rsrc);
 
 	return -ENOMEM;
 }
@@ -1445,30 +1449,32 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 /**
  * idpf_rxq_group_alloc - Allocate all rxq group resources
  * @vport: vport to allocate rxq groups for
+ * @rsrc: pointer to queue and vector resources
  * @num_rxq: number of rxqs to allocate for each group
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
+static int idpf_rxq_group_alloc(struct idpf_vport *vport,
+				struct idpf_q_vec_rsrc *rsrc,
+				u16 num_rxq)
 {
-	int i, k, err = 0;
+	int k, err = 0;
 	bool hs;
 
-	vport->rxq_grps = kcalloc(vport->num_rxq_grp,
-				  sizeof(struct idpf_rxq_group), GFP_KERNEL);
-	if (!vport->rxq_grps)
+	rsrc->rxq_grps = kcalloc(rsrc->num_rxq_grp,
+				 sizeof(struct idpf_rxq_group), GFP_KERNEL);
+	if (!rsrc->rxq_grps)
 		return -ENOMEM;
 
 	hs = idpf_vport_get_hsplit(vport) == ETHTOOL_TCP_DATA_SPLIT_ENABLED;
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-		int j;
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 
 		rx_qgrp->vport = vport;
-		if (!idpf_is_queue_model_split(vport->rxq_model)) {
+		if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
 			rx_qgrp->singleq.num_rxq = num_rxq;
-			for (j = 0; j < num_rxq; j++) {
+			for (u16 j = 0; j < num_rxq; j++) {
 				rx_qgrp->singleq.rxqs[j] =
 						kzalloc(sizeof(*rx_qgrp->singleq.rxqs[j]),
 							GFP_KERNEL);
@@ -1481,7 +1487,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 		}
 		rx_qgrp->splitq.num_rxq_sets = num_rxq;
 
-		for (j = 0; j < num_rxq; j++) {
+		for (u16 j = 0; j < num_rxq; j++) {
 			rx_qgrp->splitq.rxq_sets[j] =
 				kzalloc(sizeof(struct idpf_rxq_set),
 					GFP_KERNEL);
@@ -1491,7 +1497,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 			}
 		}
 
-		rx_qgrp->splitq.bufq_sets = kcalloc(vport->num_bufqs_per_qgrp,
+		rx_qgrp->splitq.bufq_sets = kcalloc(rsrc->num_bufqs_per_qgrp,
 						    sizeof(struct idpf_bufq_set),
 						    GFP_KERNEL);
 		if (!rx_qgrp->splitq.bufq_sets) {
@@ -1499,14 +1505,14 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 			goto err_alloc;
 		}
 
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+		for (u8 j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 			struct idpf_bufq_set *bufq_set =
 				&rx_qgrp->splitq.bufq_sets[j];
 			int swq_size = sizeof(struct idpf_sw_queue);
 			struct idpf_buf_queue *q;
 
 			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
-			q->desc_count = vport->bufq_desc_count[j];
+			q->desc_count = rsrc->bufq_desc_count[j];
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
@@ -1523,7 +1529,7 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 					&bufq_set->refillqs[k];
 
 				refillq->desc_count =
-					vport->bufq_desc_count[j];
+					rsrc->bufq_desc_count[j];
 				idpf_queue_set(GEN_CHK, refillq);
 				idpf_queue_set(RFL_GEN_CHK, refillq);
 				refillq->ring = kcalloc(refillq->desc_count,
@@ -1537,24 +1543,24 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 		}
 
 skip_splitq_rx_init:
-		for (j = 0; j < num_rxq; j++) {
+		for (u16 j = 0; j < num_rxq; j++) {
 			struct idpf_rx_queue *q;
 
-			if (!idpf_is_queue_model_split(vport->rxq_model)) {
+			if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
 				q = rx_qgrp->singleq.rxqs[j];
 				goto setup_rxq;
 			}
 			q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			rx_qgrp->splitq.rxq_sets[j]->refillq[0] =
 			      &rx_qgrp->splitq.bufq_sets[0].refillqs[j];
-			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP)
+			if (rsrc->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP)
 				rx_qgrp->splitq.rxq_sets[j]->refillq[1] =
 				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
 
 			idpf_queue_assign(HSPLIT_EN, q, hs);
 
 setup_rxq:
-			q->desc_count = vport->rxq_desc_count;
+			q->desc_count = rsrc->rxq_desc_count;
 			q->rx_ptype_lkup = vport->rx_ptype_lkup;
 			q->netdev = vport->netdev;
 			q->bufq_sets = rx_qgrp->splitq.bufq_sets;
@@ -1562,13 +1568,13 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
 			q->rx_max_pkt_size = vport->netdev->mtu +
 							LIBETH_RX_LL_LEN;
-			idpf_rxq_set_descids(vport, q);
+			idpf_rxq_set_descids(rsrc, q);
 		}
 	}
 
 err_alloc:
 	if (err)
-		idpf_rxq_group_rel(vport);
+		idpf_rxq_group_rel(rsrc);
 
 	return err;
 }
@@ -1576,28 +1582,30 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport, u16 num_rxq)
 /**
  * idpf_vport_queue_grp_alloc_all - Allocate all queue groups/resources
  * @vport: vport with qgrps to allocate
+ * @rsrc: pointer to queue and vector resources
  *
  * Returns 0 on success, negative on failure
  */
-static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
+static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport,
+					  struct idpf_q_vec_rsrc *rsrc)
 {
 	u16 num_txq, num_rxq;
 	int err;
 
-	idpf_vport_calc_numq_per_grp(vport, &num_txq, &num_rxq);
+	idpf_vport_calc_numq_per_grp(rsrc, &num_txq, &num_rxq);
 
-	err = idpf_txq_group_alloc(vport, num_txq);
+	err = idpf_txq_group_alloc(vport, rsrc, num_txq);
 	if (err)
 		goto err_out;
 
-	err = idpf_rxq_group_alloc(vport, num_rxq);
+	err = idpf_rxq_group_alloc(vport, rsrc, num_rxq);
 	if (err)
 		goto err_out;
 
 	return 0;
 
 err_out:
-	idpf_vport_queue_grp_rel_all(vport);
+	idpf_vport_queue_grp_rel_all(vport, rsrc);
 
 	return err;
 }
@@ -1605,34 +1613,36 @@ static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
 /**
  * idpf_vport_queues_alloc - Allocate memory for all queues
  * @vport: virtual port
+ * @rsrc: pointer to queue and vector resources
  *
  * Allocate memory for queues associated with a vport.  Returns 0 on success,
  * negative on failure.
  */
-int idpf_vport_queues_alloc(struct idpf_vport *vport)
+int idpf_vport_queues_alloc(struct idpf_vport *vport,
+			    struct idpf_q_vec_rsrc *rsrc)
 {
 	int err;
 
-	err = idpf_vport_queue_grp_alloc_all(vport);
+	err = idpf_vport_queue_grp_alloc_all(vport, rsrc);
 	if (err)
 		goto err_out;
 
-	err = idpf_tx_desc_alloc_all(vport);
+	err = idpf_tx_desc_alloc_all(vport, rsrc);
 	if (err)
 		goto err_out;
 
-	err = idpf_rx_desc_alloc_all(vport);
+	err = idpf_rx_desc_alloc_all(vport, rsrc);
 	if (err)
 		goto err_out;
 
-	err = idpf_vport_init_fast_path_txqs(vport);
+	err = idpf_vport_init_fast_path_txqs(vport, rsrc);
 	if (err)
 		goto err_out;
 
 	return 0;
 
 err_out:
-	idpf_vport_queues_rel(vport);
+	idpf_vport_queues_rel(vport, rsrc);
 
 	return err;
 }
@@ -2980,7 +2990,7 @@ netdev_tx_t idpf_tx_start(struct sk_buff *skb, struct net_device *netdev)
 		return NETDEV_TX_OK;
 	}
 
-	if (idpf_is_queue_model_split(vport->txq_model))
+	if (idpf_is_queue_model_split(vport->dflt_qv_rsrc.txq_model))
 		return idpf_tx_splitq_frame(skb, tx_q);
 	else
 		return idpf_tx_singleq_frame(skb, tx_q);
@@ -4209,19 +4219,19 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
 					     struct idpf_q_vec_rsrc *rsrc)
 {
-	bool split = idpf_is_queue_model_split(vport->rxq_model);
-	u16 num_txq_grp = vport->num_txq_grp;
+	bool split = idpf_is_queue_model_split(rsrc->rxq_model);
+	u16 num_txq_grp = rsrc->num_txq_grp;
 	struct idpf_rxq_group *rx_qgrp;
 	struct idpf_txq_group *tx_qgrp;
 	u32 i, qv_idx, q_index;
 
-	for (i = 0, qv_idx = 0; i < vport->num_rxq_grp; i++) {
+	for (i = 0, qv_idx = 0; i < rsrc->num_rxq_grp; i++) {
 		u16 num_rxq;
 
 		if (qv_idx >= rsrc->num_q_vectors)
 			qv_idx = 0;
 
-		rx_qgrp = &vport->rxq_grps[i];
+		rx_qgrp = &rsrc->rxq_grps[i];
 		if (split)
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		else
@@ -4244,7 +4254,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
 		}
 
 		if (split) {
-			for (u32 j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			for (u32 j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
 				struct idpf_buf_queue *bufq;
 
 				bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
@@ -4258,7 +4268,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
 		qv_idx++;
 	}
 
-	split = idpf_is_queue_model_split(vport->txq_model);
+	split = idpf_is_queue_model_split(rsrc->txq_model);
 
 	for (i = 0, qv_idx = 0; i < num_txq_grp; i++) {
 		u16 num_txq;
@@ -4266,7 +4276,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
 		if (qv_idx >= rsrc->num_q_vectors)
 			qv_idx = 0;
 
-		tx_qgrp = &vport->txq_grps[i];
+		tx_qgrp = &rsrc->txq_grps[i];
 		num_txq = tx_qgrp->num_txq;
 
 		for (u32 j = 0; j < num_txq; j++) {
@@ -4337,7 +4347,7 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport,
 	int irq_num;
 	u16 qv_idx;
 
-	if (idpf_is_queue_model_split(vport->txq_model))
+	if (idpf_is_queue_model_split(rsrc->txq_model))
 		napi_poll = idpf_vport_splitq_napi_poll;
 	else
 		napi_poll = idpf_vport_singleq_napi_poll;
@@ -4374,14 +4384,14 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport,
 	if (!rsrc->q_vectors)
 		return -ENOMEM;
 
-	txqs_per_vector = DIV_ROUND_UP(vport->num_txq_grp,
+	txqs_per_vector = DIV_ROUND_UP(rsrc->num_txq_grp,
 				       rsrc->num_q_vectors);
-	rxqs_per_vector = DIV_ROUND_UP(vport->num_rxq_grp,
+	rxqs_per_vector = DIV_ROUND_UP(rsrc->num_rxq_grp,
 				       rsrc->num_q_vectors);
-	bufqs_per_vector = vport->num_bufqs_per_qgrp *
-			   DIV_ROUND_UP(vport->num_rxq_grp,
+	bufqs_per_vector = rsrc->num_bufqs_per_qgrp *
+			   DIV_ROUND_UP(rsrc->num_rxq_grp,
 					rsrc->num_q_vectors);
-	complqs_per_vector = DIV_ROUND_UP(vport->num_txq_grp,
+	complqs_per_vector = DIV_ROUND_UP(rsrc->num_txq_grp,
 					  rsrc->num_q_vectors);
 
 	for (u16 v_idx = 0; v_idx < rsrc->num_q_vectors; v_idx++) {
@@ -4406,7 +4416,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport,
 		if (!q_vector->rx)
 			goto error;
 
-		if (!idpf_is_queue_model_split(vport->rxq_model))
+		if (!idpf_is_queue_model_split(rsrc->rxq_model))
 			continue;
 
 		q_vector->bufq = kcalloc(bufqs_per_vector,
@@ -4493,8 +4503,8 @@ int idpf_config_rss(struct idpf_vport *vport)
  */
 static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
 {
+	u16 num_active_rxq = vport->dflt_qv_rsrc.num_rxq;
 	struct idpf_adapter *adapter = vport->adapter;
-	u16 num_active_rxq = vport->num_rxq;
 	struct idpf_rss_data *rss_data;
 	int i;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index a034afb06b77..60547aa77e62 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1012,14 +1012,18 @@ static inline void idpf_vport_intr_set_wb_on_itr(struct idpf_q_vector *q_vector)
 
 int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
-			    struct virtchnl2_create_vport *vport_msg);
-void idpf_vport_calc_num_q_desc(struct idpf_vport *vport);
+			    struct virtchnl2_create_vport *vport_msg,
+			    struct idpf_q_vec_rsrc *rsrc);
+void idpf_vport_calc_num_q_desc(struct idpf_vport *vport,
+				struct idpf_q_vec_rsrc *rsrc);
 int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
 			     struct virtchnl2_create_vport *vport_msg,
 			     struct idpf_vport_max_q *max_q);
-void idpf_vport_calc_num_q_groups(struct idpf_vport *vport);
-int idpf_vport_queues_alloc(struct idpf_vport *vport);
-void idpf_vport_queues_rel(struct idpf_vport *vport);
+void idpf_vport_calc_num_q_groups(struct idpf_q_vec_rsrc *rsrc);
+int idpf_vport_queues_alloc(struct idpf_vport *vport,
+			    struct idpf_q_vec_rsrc *rsrc);
+void idpf_vport_queues_rel(struct idpf_vport *vport,
+			   struct idpf_q_vec_rsrc *rsrc);
 void idpf_vport_intr_rel(struct idpf_q_vec_rsrc *rsrc);
 int idpf_vport_intr_alloc(struct idpf_vport *vport,
 			  struct idpf_q_vec_rsrc *rsrc);
@@ -1033,7 +1037,7 @@ void idpf_vport_intr_ena(struct idpf_vport *vport,
 int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss(struct idpf_vport *vport);
 void idpf_deinit_rss(struct idpf_vport *vport);
-int idpf_rx_bufs_init_all(struct idpf_vport *vport);
+int idpf_rx_bufs_init_all(struct idpf_q_vec_rsrc *rsrc);
 void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
 		      unsigned int size);
 struct sk_buff *idpf_rx_build_skb(const struct libeth_fqe *buf, u32 size);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index cf99952607be..6178338b018e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1114,13 +1114,15 @@ static int idpf_vport_get_q_reg(u32 *reg_vals, int num_regs, u32 q_type,
 /**
  * __idpf_queue_reg_init - initialize queue registers
  * @vport: virtual port structure
+ * @rsrc: pointer to queue and vector resources
  * @reg_vals: registers we are initializing
  * @num_regs: how many registers there are in total
  * @q_type: queue model
  *
  * Return number of queues that are initialized
  */
-static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
+static int __idpf_queue_reg_init(struct idpf_vport *vport,
+				 struct idpf_q_vec_rsrc *rsrc, u32 *reg_vals,
 				 int num_regs, u32 q_type)
 {
 	struct idpf_adapter *adapter = vport->adapter;
@@ -1128,8 +1130,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 
 	switch (q_type) {
 	case VIRTCHNL2_QUEUE_TYPE_TX:
-		for (i = 0; i < vport->num_txq_grp; i++) {
-			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		for (i = 0; i < rsrc->num_txq_grp; i++) {
+			struct idpf_txq_group *tx_qgrp = &rsrc->txq_grps[i];
 
 			for (j = 0; j < tx_qgrp->num_txq && k < num_regs; j++, k++)
 				tx_qgrp->txqs[j]->tail =
@@ -1137,8 +1139,8 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX:
-		for (i = 0; i < vport->num_rxq_grp; i++) {
-			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		for (i = 0; i < rsrc->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 			u16 num_rxq = rx_qgrp->singleq.num_rxq;
 
 			for (j = 0; j < num_rxq && k < num_regs; j++, k++) {
@@ -1151,9 +1153,9 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
-		for (i = 0; i < vport->num_rxq_grp; i++) {
-			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-			u8 num_bufqs = vport->num_bufqs_per_qgrp;
+		for (i = 0; i < rsrc->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
+			u8 num_bufqs = rsrc->num_bufqs_per_qgrp;
 
 			for (j = 0; j < num_bufqs && k < num_regs; j++, k++) {
 				struct idpf_buf_queue *q;
@@ -1174,11 +1176,13 @@ static int __idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
 /**
  * idpf_queue_reg_init - initialize queue registers
  * @vport: virtual port structure
+ * @rsrc: pointer to queue and vector resources
  * @chunks: queue registers received over mailbox
  *
  * Return 0 on success, negative on failure
  */
 int idpf_queue_reg_init(struct idpf_vport *vport,
+			struct idpf_q_vec_rsrc *rsrc,
 			struct idpf_queue_id_reg_info *chunks)
 {
 	int num_regs, ret = 0;
@@ -1193,14 +1197,14 @@ int idpf_queue_reg_init(struct idpf_vport *vport,
 	num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
 					VIRTCHNL2_QUEUE_TYPE_TX,
 					chunks);
-	if (num_regs < vport->num_txq) {
+	if (num_regs < rsrc->num_txq) {
 		ret = -EINVAL;
 		goto free_reg_vals;
 	}
 
-	num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+	num_regs = __idpf_queue_reg_init(vport, rsrc, reg_vals, num_regs,
 					 VIRTCHNL2_QUEUE_TYPE_TX);
-	if (num_regs < vport->num_txq) {
+	if (num_regs < rsrc->num_txq) {
 		ret = -EINVAL;
 		goto free_reg_vals;
 	}
@@ -1208,18 +1212,18 @@ int idpf_queue_reg_init(struct idpf_vport *vport,
 	/* Initialize Rx/buffer queue tail register address based on Rx queue
 	 * model
 	 */
-	if (idpf_is_queue_model_split(vport->rxq_model)) {
+	if (idpf_is_queue_model_split(rsrc->rxq_model)) {
 		num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
 						VIRTCHNL2_QUEUE_TYPE_RX_BUFFER,
 						chunks);
-		if (num_regs < vport->num_bufq) {
+		if (num_regs < rsrc->num_bufq) {
 			ret = -EINVAL;
 			goto free_reg_vals;
 		}
 
-		num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+		num_regs = __idpf_queue_reg_init(vport, rsrc, reg_vals, num_regs,
 						 VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
-		if (num_regs < vport->num_bufq) {
+		if (num_regs < rsrc->num_bufq) {
 			ret = -EINVAL;
 			goto free_reg_vals;
 		}
@@ -1227,14 +1231,14 @@ int idpf_queue_reg_init(struct idpf_vport *vport,
 		num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
 						VIRTCHNL2_QUEUE_TYPE_RX,
 						chunks);
-		if (num_regs < vport->num_rxq) {
+		if (num_regs < rsrc->num_rxq) {
 			ret = -EINVAL;
 			goto free_reg_vals;
 		}
 
-		num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+		num_regs = __idpf_queue_reg_init(vport, rsrc, reg_vals, num_regs,
 						 VIRTCHNL2_QUEUE_TYPE_RX);
-		if (num_regs < vport->num_rxq) {
+		if (num_regs < rsrc->num_rxq) {
 			ret = -EINVAL;
 			goto free_reg_vals;
 		}
@@ -1333,6 +1337,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
  */
 int idpf_check_supported_desc_ids(struct idpf_vport *vport)
 {
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_msg;
 	u64 rx_desc_ids, tx_desc_ids;
@@ -1349,17 +1354,17 @@ int idpf_check_supported_desc_ids(struct idpf_vport *vport)
 	rx_desc_ids = le64_to_cpu(vport_msg->rx_desc_ids);
 	tx_desc_ids = le64_to_cpu(vport_msg->tx_desc_ids);
 
-	if (idpf_is_queue_model_split(vport->rxq_model)) {
+	if (idpf_is_queue_model_split(rsrc->rxq_model)) {
 		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M)) {
 			dev_info(&adapter->pdev->dev, "Minimum RX descriptor support not provided, using the default\n");
 			vport_msg->rx_desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
 		}
 	} else {
 		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M))
-			vport->base_rxd = true;
+			rsrc->base_rxd = true;
 	}
 
-	if (!idpf_is_queue_model_split(vport->txq_model))
+	if (!idpf_is_queue_model_split(rsrc->txq_model))
 		return 0;
 
 	if ((tx_desc_ids & MIN_SUPPORT_TXDID) != MIN_SUPPORT_TXDID) {
@@ -1445,11 +1450,13 @@ int idpf_send_disable_vport_msg(struct idpf_vport *vport)
 /**
  * idpf_send_config_tx_queues_msg - Send virtchnl config tx queues message
  * @vport: virtual port data structure
+ * @rsrc: pointer to queue and vector resources
  *
  * Send config tx queues virtchnl message. Returns 0 on success, negative on
  * failure.
  */
-static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
+static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport,
+					  struct idpf_q_vec_rsrc *rsrc)
 {
 	struct virtchnl2_config_tx_queues *ctq __free(kfree) = NULL;
 	struct virtchnl2_txq_info *qi __free(kfree) = NULL;
@@ -1457,30 +1464,30 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 	u32 config_sz, chunk_sz, buf_sz;
 	int totqs, num_msgs, num_chunks;
 	ssize_t reply_sz;
-	int i, k = 0;
+	int k = 0;
 
-	totqs = vport->num_txq + vport->num_complq;
+	totqs = rsrc->num_txq + rsrc->num_complq;
 	qi = kcalloc(totqs, sizeof(struct virtchnl2_txq_info), GFP_KERNEL);
 	if (!qi)
 		return -ENOMEM;
 
 	/* Populate the queue info buffer with all queue context info */
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
-		int j, sched_mode;
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &rsrc->txq_grps[i];
+		int sched_mode;
 
-		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+		for (u16 j = 0; j < tx_qgrp->num_txq; j++, k++) {
 			qi[k].queue_id =
 				cpu_to_le32(tx_qgrp->txqs[j]->q_id);
 			qi[k].model =
-				cpu_to_le16(vport->txq_model);
+				cpu_to_le16(rsrc->txq_model);
 			qi[k].type =
 				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
 			qi[k].ring_len =
 				cpu_to_le16(tx_qgrp->txqs[j]->desc_count);
 			qi[k].dma_ring_addr =
 				cpu_to_le64(tx_qgrp->txqs[j]->dma);
-			if (idpf_is_queue_model_split(vport->txq_model)) {
+			if (idpf_is_queue_model_split(rsrc->txq_model)) {
 				struct idpf_tx_queue *q = tx_qgrp->txqs[j];
 
 				qi[k].tx_compl_queue_id =
@@ -1499,11 +1506,11 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 			}
 		}
 
-		if (!idpf_is_queue_model_split(vport->txq_model))
+		if (!idpf_is_queue_model_split(rsrc->txq_model))
 			continue;
 
 		qi[k].queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
-		qi[k].model = cpu_to_le16(vport->txq_model);
+		qi[k].model = cpu_to_le16(rsrc->txq_model);
 		qi[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
 		qi[k].ring_len = cpu_to_le16(tx_qgrp->complq->desc_count);
 		qi[k].dma_ring_addr = cpu_to_le64(tx_qgrp->complq->dma);
@@ -1539,7 +1546,7 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_TX_QUEUES;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
-	for (i = 0, k = 0; i < num_msgs; i++) {
+	for (u16 i = 0, k = 0; i < num_msgs; i++) {
 		memset(ctq, 0, buf_sz);
 		ctq->vport_id = cpu_to_le32(vport->vport_id);
 		ctq->num_qinfo = cpu_to_le16(num_chunks);
@@ -1564,11 +1571,13 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 /**
  * idpf_send_config_rx_queues_msg - Send virtchnl config rx queues message
  * @vport: virtual port data structure
+ * @rsrc: pointer to queue and vector resources
  *
  * Send config rx queues virtchnl message.  Returns 0 on success, negative on
  * failure.
  */
-static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
+static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport,
+					  struct idpf_q_vec_rsrc *rsrc)
 {
 	struct virtchnl2_config_rx_queues *crq __free(kfree) = NULL;
 	struct virtchnl2_rxq_info *qi __free(kfree) = NULL;
@@ -1576,28 +1585,27 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 	u32 config_sz, chunk_sz, buf_sz;
 	int totqs, num_msgs, num_chunks;
 	ssize_t reply_sz;
-	int i, k = 0;
+	int k = 0;
 
-	totqs = vport->num_rxq + vport->num_bufq;
+	totqs = rsrc->num_rxq + rsrc->num_bufq;
 	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
 	if (!qi)
 		return -ENOMEM;
 
 	/* Populate the queue info buffer with all queue context info */
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 		u16 num_rxq;
-		int j;
 
-		if (!idpf_is_queue_model_split(vport->rxq_model))
+		if (!idpf_is_queue_model_split(rsrc->rxq_model))
 			goto setup_rxqs;
 
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
+		for (u8 j = 0; j < rsrc->num_bufqs_per_qgrp; j++, k++) {
 			struct idpf_buf_queue *bufq =
 				&rx_qgrp->splitq.bufq_sets[j].bufq;
 
 			qi[k].queue_id = cpu_to_le32(bufq->q_id);
-			qi[k].model = cpu_to_le16(vport->rxq_model);
+			qi[k].model = cpu_to_le16(rsrc->rxq_model);
 			qi[k].type =
 				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
 			qi[k].desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
@@ -1612,16 +1620,16 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 		}
 
 setup_rxqs:
-		if (idpf_is_queue_model_split(vport->rxq_model))
+		if (idpf_is_queue_model_split(rsrc->rxq_model))
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		else
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++, k++) {
+		for (u16 j = 0; j < num_rxq; j++, k++) {
 			const struct idpf_bufq_set *sets;
 			struct idpf_rx_queue *rxq;
 
-			if (!idpf_is_queue_model_split(vport->rxq_model)) {
+			if (!idpf_is_queue_model_split(rsrc->rxq_model)) {
 				rxq = rx_qgrp->singleq.rxqs[j];
 				goto common_qi_fields;
 			}
@@ -1636,7 +1644,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 			rxq->rx_buf_size = sets[0].bufq.rx_buf_size;
 
 			qi[k].rx_bufq1_id = cpu_to_le16(sets[0].bufq.q_id);
-			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
+			if (rsrc->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
 				qi[k].bufq2_ena = IDPF_BUFQ2_ENA;
 				qi[k].rx_bufq2_id =
 					cpu_to_le16(sets[1].bufq.q_id);
@@ -1657,7 +1665,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 
 common_qi_fields:
 			qi[k].queue_id = cpu_to_le32(rxq->q_id);
-			qi[k].model = cpu_to_le16(vport->rxq_model);
+			qi[k].model = cpu_to_le16(rsrc->rxq_model);
 			qi[k].type = cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_RX);
 			qi[k].ring_len = cpu_to_le16(rxq->desc_count);
 			qi[k].dma_ring_addr = cpu_to_le64(rxq->dma);
@@ -1691,7 +1699,7 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 	xn_params.vc_op = VIRTCHNL2_OP_CONFIG_RX_QUEUES;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
-	for (i = 0, k = 0; i < num_msgs; i++) {
+	for (u16 i = 0, k = 0; i < num_msgs; i++) {
 		memset(crq, 0, buf_sz);
 		crq->vport_id = cpu_to_le32(vport->vport_id);
 		crq->num_qinfo = cpu_to_le16(num_chunks);
@@ -1763,12 +1771,15 @@ static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport,
  * idpf_send_map_unmap_queue_vector_msg - Send virtchnl map or unmap queue
  * vector message
  * @vport: virtual port data structure
+ * @rsrc: pointer to queue and vector resources
  * @map: true for map and false for unmap
  *
  * Send map or unmap queue vector virtchnl message.  Returns 0 on success,
  * negative on failure.
  */
-int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
+					 struct idpf_q_vec_rsrc *rsrc,
+					 bool map)
 {
 	struct virtchnl2_queue_vector_maps *vqvm __free(kfree) = NULL;
 	struct virtchnl2_queue_vector *vqv __free(kfree) = NULL;
@@ -1776,24 +1787,24 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 	u32 config_sz, chunk_sz, buf_sz;
 	u32 num_msgs, num_chunks, num_q;
 	ssize_t reply_sz;
-	int i, j, k = 0;
+	int k = 0;
 
-	num_q = vport->num_txq + vport->num_rxq;
+	num_q = rsrc->num_txq + rsrc->num_rxq;
 
 	buf_sz = sizeof(struct virtchnl2_queue_vector) * num_q;
 	vqv = kzalloc(buf_sz, GFP_KERNEL);
 	if (!vqv)
 		return -ENOMEM;
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+	for (u16 i = 0; i < rsrc->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &rsrc->txq_grps[i];
 
-		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+		for (u16 j = 0; j < tx_qgrp->num_txq; j++, k++) {
 			vqv[k].queue_type =
 				cpu_to_le32(VIRTCHNL2_QUEUE_TYPE_TX);
 			vqv[k].queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
 
-			if (idpf_is_queue_model_split(vport->txq_model)) {
+			if (idpf_is_queue_model_split(rsrc->txq_model)) {
 				vqv[k].vector_id =
 				cpu_to_le16(tx_qgrp->complq->q_vector->v_idx);
 				vqv[k].itr_idx =
@@ -1807,22 +1818,22 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		}
 	}
 
-	if (vport->num_txq != k)
+	if (rsrc->num_txq != k)
 		return -EINVAL;
 
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+	for (u16 i = 0; i < rsrc->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 		u16 num_rxq;
 
-		if (idpf_is_queue_model_split(vport->rxq_model))
+		if (idpf_is_queue_model_split(rsrc->rxq_model))
 			num_rxq = rx_qgrp->splitq.num_rxq_sets;
 		else
 			num_rxq = rx_qgrp->singleq.num_rxq;
 
-		for (j = 0; j < num_rxq; j++, k++) {
+		for (u16 j = 0; j < num_rxq; j++, k++) {
 			struct idpf_rx_queue *rxq;
 
-			if (idpf_is_queue_model_split(vport->rxq_model))
+			if (idpf_is_queue_model_split(rsrc->rxq_model))
 				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
 				rxq = rx_qgrp->singleq.rxqs[j];
@@ -1835,11 +1846,11 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		}
 	}
 
-	if (idpf_is_queue_model_split(vport->txq_model)) {
-		if (vport->num_rxq != k - vport->num_complq)
+	if (idpf_is_queue_model_split(rsrc->txq_model)) {
+		if (rsrc->num_rxq != k - rsrc->num_complq)
 			return -EINVAL;
 	} else {
-		if (vport->num_rxq != k - vport->num_txq)
+		if (rsrc->num_rxq != k - rsrc->num_txq)
 			return -EINVAL;
 	}
 
@@ -1864,7 +1875,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 		xn_params.timeout_ms = IDPF_VC_XN_MIN_TIMEOUT_MSEC;
 	}
 
-	for (i = 0, k = 0; i < num_msgs; i++) {
+	for (u16 i = 0, k = 0; i < num_msgs; i++) {
 		memset(vqvm, 0, buf_sz);
 		xn_params.send_buf.iov_base = vqvm;
 		xn_params.send_buf.iov_len = buf_sz;
@@ -1976,19 +1987,21 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport,
 /**
  * idpf_send_config_queues_msg - Send config queues virtchnl message
  * @vport: Virtual port private data structure
+ * @rsrc: pointer to queue and vector resources
  *
  * Will send config queues virtchnl message. Returns 0 on success, negative on
  * failure.
  */
-int idpf_send_config_queues_msg(struct idpf_vport *vport)
+int idpf_send_config_queues_msg(struct idpf_vport *vport,
+				struct idpf_q_vec_rsrc *rsrc)
 {
 	int err;
 
-	err = idpf_send_config_tx_queues_msg(vport);
+	err = idpf_send_config_tx_queues_msg(vport, rsrc);
 	if (err)
 		return err;
 
-	return idpf_send_config_rx_queues_msg(vport);
+	return idpf_send_config_rx_queues_msg(vport, rsrc);
 }
 
 /**
@@ -2443,12 +2456,14 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 	struct idpf_vc_xn_params xn_params = {};
 	u16 next_ptype_id = 0;
 	ssize_t reply_sz;
+	bool is_splitq;
 	int i, j, k;
 
 	if (vport->rx_ptype_lkup)
 		return 0;
 
-	if (idpf_is_queue_model_split(vport->rxq_model))
+	is_splitq = idpf_is_queue_model_split(vport->dflt_qv_rsrc.rxq_model);
+	if (is_splitq)
 		max_ptype = IDPF_RX_MAX_PTYPE;
 	else
 		max_ptype = IDPF_RX_MAX_BASE_PTYPE;
@@ -2512,7 +2527,7 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
 							IDPF_INVALID_PTYPE_ID)
 				goto out;
 
-			if (idpf_is_queue_model_split(vport->rxq_model))
+			if (is_splitq)
 				k = le16_to_cpu(ptype->ptype_id_10);
 			else
 				k = ptype->ptype_id_8;
@@ -3015,7 +3030,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport,
 	int num_alloc_vecs;
 
 	vec_info.num_curr_vecs = rsrc->num_q_vectors;
-	vec_info.num_req_vecs = max(vport->num_txq, vport->num_rxq);
+	vec_info.num_req_vecs = max(rsrc->num_txq, rsrc->num_rxq);
 	vec_info.default_vport = vport->default_vport;
 	vec_info.index = vport->idx;
 
@@ -3068,8 +3083,8 @@ int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	vport_config->max_q.max_complq = max_q->max_complq;
 	vport_config->max_q.max_bufq = max_q->max_bufq;
 
-	vport->txq_model = le16_to_cpu(vport_msg->txq_model);
-	vport->rxq_model = le16_to_cpu(vport_msg->rxq_model);
+	rsrc->txq_model = le16_to_cpu(vport_msg->txq_model);
+	rsrc->rxq_model = le16_to_cpu(vport_msg->rxq_model);
 	vport->vport_type = le16_to_cpu(vport_msg->vport_type);
 	vport->vport_id = le32_to_cpu(vport_msg->vport_id);
 
@@ -3086,9 +3101,9 @@ int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 
 	idpf_vport_set_hsplit(vport, ETHTOOL_TCP_DATA_SPLIT_ENABLED);
 
-	idpf_vport_init_num_qs(vport, vport_msg);
-	idpf_vport_calc_num_q_desc(vport);
-	idpf_vport_calc_num_q_groups(vport);
+	idpf_vport_init_num_qs(vport, vport_msg, rsrc);
+	idpf_vport_calc_num_q_desc(vport, rsrc);
+	idpf_vport_calc_num_q_groups(rsrc);
 	idpf_vport_alloc_vec_indexes(vport, rsrc);
 
 	vport->crc_enable = adapter->crc_enable;
@@ -3197,6 +3212,7 @@ static int idpf_vport_get_queue_ids(u32 *qids, int num_qids, u16 q_type,
 /**
  * __idpf_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
  * @vport: virtual port for which the queues ids are initialized
+ * @rsrc: pointer to queue and vector resources
  * @qids: queue ids
  * @num_qids: number of queue ids
  * @q_type: type of queue
@@ -3205,6 +3221,7 @@ static int idpf_vport_get_queue_ids(u32 *qids, int num_qids, u16 q_type,
  * parameters. Returns number of queue ids initialized.
  */
 static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
+				       struct idpf_q_vec_rsrc *rsrc,
 				       const u32 *qids,
 				       int num_qids,
 				       u32 q_type)
@@ -3213,19 +3230,19 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 
 	switch (q_type) {
 	case VIRTCHNL2_QUEUE_TYPE_TX:
-		for (i = 0; i < vport->num_txq_grp; i++) {
-			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		for (i = 0; i < rsrc->num_txq_grp; i++) {
+			struct idpf_txq_group *tx_qgrp = &rsrc->txq_grps[i];
 
 			for (j = 0; j < tx_qgrp->num_txq && k < num_qids; j++, k++)
 				tx_qgrp->txqs[j]->q_id = qids[k];
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX:
-		for (i = 0; i < vport->num_rxq_grp; i++) {
-			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		for (i = 0; i < rsrc->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
 			u16 num_rxq;
 
-			if (idpf_is_queue_model_split(vport->rxq_model))
+			if (idpf_is_queue_model_split(rsrc->rxq_model))
 				num_rxq = rx_qgrp->splitq.num_rxq_sets;
 			else
 				num_rxq = rx_qgrp->singleq.num_rxq;
@@ -3233,7 +3250,7 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 			for (j = 0; j < num_rxq && k < num_qids; j++, k++) {
 				struct idpf_rx_queue *q;
 
-				if (idpf_is_queue_model_split(vport->rxq_model))
+				if (idpf_is_queue_model_split(rsrc->rxq_model))
 					q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 				else
 					q = rx_qgrp->singleq.rxqs[j];
@@ -3242,16 +3259,16 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION:
-		for (i = 0; i < vport->num_txq_grp && k < num_qids; i++, k++) {
-			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		for (i = 0; i < rsrc->num_txq_grp && k < num_qids; i++, k++) {
+			struct idpf_txq_group *tx_qgrp = &rsrc->txq_grps[i];
 
 			tx_qgrp->complq->q_id = qids[k];
 		}
 		break;
 	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
-		for (i = 0; i < vport->num_rxq_grp; i++) {
-			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
-			u8 num_bufqs = vport->num_bufqs_per_qgrp;
+		for (i = 0; i < rsrc->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &rsrc->rxq_grps[i];
+			u8 num_bufqs = rsrc->num_bufqs_per_qgrp;
 
 			for (j = 0; j < num_bufqs && k < num_qids; j++, k++) {
 				struct idpf_buf_queue *q;
@@ -3271,12 +3288,14 @@ static int __idpf_vport_queue_ids_init(struct idpf_vport *vport,
 /**
  * idpf_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
  * @vport: virtual port for which the queues ids are initialized
+ * @rsrc: pointer to queue and vector resources
  * @chunks: queue ids received over mailbox
  *
  * Will initialize all queue ids with ids received as mailbox parameters.
  * Returns 0 on success, negative if all the queues are not initialized.
  */
 int idpf_vport_queue_ids_init(struct idpf_vport *vport,
+			      struct idpf_q_vec_rsrc *rsrc,
 			      struct idpf_queue_id_reg_info *chunks)
 {
 	int num_ids, err = 0;
@@ -3290,13 +3309,13 @@ int idpf_vport_queue_ids_init(struct idpf_vport *vport,
 	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS,
 					   VIRTCHNL2_QUEUE_TYPE_TX,
 					   chunks);
-	if (num_ids < vport->num_txq) {
+	if (num_ids < rsrc->num_txq) {
 		err = -EINVAL;
 		goto mem_rel;
 	}
-	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids,
+	num_ids = __idpf_vport_queue_ids_init(vport, rsrc, qids, num_ids,
 					      VIRTCHNL2_QUEUE_TYPE_TX);
-	if (num_ids < vport->num_txq) {
+	if (num_ids < rsrc->num_txq) {
 		err = -EINVAL;
 		goto mem_rel;
 	}
@@ -3304,44 +3323,46 @@ int idpf_vport_queue_ids_init(struct idpf_vport *vport,
 	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS,
 					   VIRTCHNL2_QUEUE_TYPE_RX,
 					   chunks);
-	if (num_ids < vport->num_rxq) {
+	if (num_ids < rsrc->num_rxq) {
 		err = -EINVAL;
 		goto mem_rel;
 	}
-	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids,
+	num_ids = __idpf_vport_queue_ids_init(vport, rsrc, qids, num_ids,
 					      VIRTCHNL2_QUEUE_TYPE_RX);
-	if (num_ids < vport->num_rxq) {
+	if (num_ids < rsrc->num_rxq) {
 		err = -EINVAL;
 		goto mem_rel;
 	}
 
-	if (!idpf_is_queue_model_split(vport->txq_model))
+	if (!idpf_is_queue_model_split(rsrc->txq_model))
 		goto check_rxq;
 
 	q_type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
 	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS, q_type, chunks);
-	if (num_ids < vport->num_complq) {
+	if (num_ids < rsrc->num_complq) {
 		err = -EINVAL;
 		goto mem_rel;
 	}
-	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids, q_type);
-	if (num_ids < vport->num_complq) {
+	num_ids = __idpf_vport_queue_ids_init(vport, rsrc, qids,
+					      num_ids, q_type);
+	if (num_ids < rsrc->num_complq) {
 		err = -EINVAL;
 		goto mem_rel;
 	}
 
 check_rxq:
-	if (!idpf_is_queue_model_split(vport->rxq_model))
+	if (!idpf_is_queue_model_split(rsrc->rxq_model))
 		goto mem_rel;
 
 	q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
 	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS, q_type, chunks);
-	if (num_ids < vport->num_bufq) {
+	if (num_ids < rsrc->num_bufq) {
 		err = -EINVAL;
 		goto mem_rel;
 	}
-	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids, q_type);
-	if (num_ids < vport->num_bufq)
+	num_ids = __idpf_vport_queue_ids_init(vport, rsrc, qids,
+					      num_ids, q_type);
+	if (num_ids < rsrc->num_bufq)
 		err = -EINVAL;
 
 mem_rel:
@@ -3353,23 +3374,24 @@ int idpf_vport_queue_ids_init(struct idpf_vport *vport,
 /**
  * idpf_vport_adjust_qs - Adjust to new requested queues
  * @vport: virtual port data struct
+ * @rsrc: pointer to queue and vector resources
  *
  * Renegotiate queues.  Returns 0 on success, negative on failure.
  */
-int idpf_vport_adjust_qs(struct idpf_vport *vport)
+int idpf_vport_adjust_qs(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
 {
 	struct virtchnl2_create_vport vport_msg;
 	int err;
 
-	vport_msg.txq_model = cpu_to_le16(vport->txq_model);
-	vport_msg.rxq_model = cpu_to_le16(vport->rxq_model);
+	vport_msg.txq_model = cpu_to_le16(rsrc->txq_model);
+	vport_msg.rxq_model = cpu_to_le16(rsrc->rxq_model);
 	err = idpf_vport_calc_total_qs(vport->adapter, vport->idx, &vport_msg,
 				       NULL);
 	if (err)
 		return err;
 
-	idpf_vport_init_num_qs(vport, &vport_msg);
-	idpf_vport_calc_num_q_groups(vport);
+	idpf_vport_init_num_qs(vport, &vport_msg, rsrc);
+	idpf_vport_calc_num_q_groups(rsrc);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index b3849af0d5c9..2dfb9c0f09f0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -103,8 +103,10 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter);
 int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
 			   struct idpf_vec_regs *reg_vals);
 int idpf_queue_reg_init(struct idpf_vport *vport,
+			struct idpf_q_vec_rsrc *rsrc,
 			struct idpf_queue_id_reg_info *chunks);
 int idpf_vport_queue_ids_init(struct idpf_vport *vport,
+			      struct idpf_q_vec_rsrc *rsrc,
 			      struct idpf_queue_id_reg_info *chunks);
 
 int idpf_recv_mb_msg(struct idpf_adapter *adapter);
@@ -119,7 +121,8 @@ int idpf_send_destroy_vport_msg(struct idpf_vport *vport);
 int idpf_send_enable_vport_msg(struct idpf_vport *vport);
 int idpf_send_disable_vport_msg(struct idpf_vport *vport);
 
-int idpf_vport_adjust_qs(struct idpf_vport *vport);
+int idpf_vport_adjust_qs(struct idpf_vport *vport,
+			 struct idpf_q_vec_rsrc *rsrc);
 int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
 			    struct idpf_vport_max_q *max_q);
 void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
@@ -133,7 +136,8 @@ int idpf_send_enable_queues_msg(struct idpf_vport *vport,
 int idpf_send_disable_queues_msg(struct idpf_vport *vport,
 				 struct idpf_q_vec_rsrc *rsrc,
 				 struct idpf_queue_id_reg_info *chunks);
-int idpf_send_config_queues_msg(struct idpf_vport *vport);
+int idpf_send_config_queues_msg(struct idpf_vport *vport,
+				struct idpf_q_vec_rsrc *rsrc);
 
 int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport,
 				 struct idpf_q_vec_rsrc *rsrc);
@@ -142,7 +146,9 @@ int idpf_get_vec_ids(struct idpf_adapter *adapter,
 		     struct virtchnl2_vector_chunks *chunks);
 int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors);
 int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter);
-int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map);
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport,
+					 struct idpf_q_vec_rsrc *rsrc,
+					 bool map);
 
 int idpf_add_del_mac_filters(struct idpf_vport *vport,
 			     struct idpf_netdev_priv *np,
-- 
2.43.0

