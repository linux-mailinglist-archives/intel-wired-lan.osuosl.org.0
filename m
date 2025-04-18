Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5249CA93F16
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 22:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 034ED4080F;
	Fri, 18 Apr 2025 20:49:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 02u9fxe-7-xM; Fri, 18 Apr 2025 20:49:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8E1B40805
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745009383;
	bh=I6yDunx3+EcEOaJjSDK06vOVTG0y2rfIs140z2VjA7I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dttWm9apGe8p2Mw0b/AkgBXtwbW3XIFbom9zNj8m1rcatJu5QrIlHFiCW7TiVVixq
	 N3Ph//2cOSBwvLmpj2U04XI8oVpt6z3hI7EnlKWt3rNSTvk2fMw2A+67kUQO2mQuem
	 y0qxnckvGzAbfAbACCI4pF1vB0ynOtnNRaL6Zh4BZUR6DNmIeGerAq0pDhBqQmsDb2
	 a58tsK4ALygbJI/F4MSkfgoMhEo5iaBt6eQ5Hn69OdJUhmlLHWCqr8E7Zw0p8+pQCe
	 jPXUcuDH6URP6HM1rSfykuX1uEjyi3YbGfAyQHbJaR7vmFvSvP1QVTMXpdy5TnE2BI
	 iC2RuxAMooWWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8E1B40805;
	Fri, 18 Apr 2025 20:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2DA0322F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 127C76070A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7AjI8o_WHOgY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Apr 2025 20:49:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7621160686
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7621160686
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7621160686
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:37 +0000 (UTC)
X-CSE-ConnectionGUID: vYv2hx5bTgCLbuLO0d4NtQ==
X-CSE-MsgGUID: PkKU0UMUQk+dJB3SvvSQ4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="46814311"
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="46814311"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 13:49:36 -0700
X-CSE-ConnectionGUID: kuWp9FePSu+dnaUOut2izw==
X-CSE-MsgGUID: ty3JkbacRPe7lFBkEm970g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="168406310"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa001.jf.intel.com with ESMTP; 18 Apr 2025 13:49:36 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Fri, 18 Apr 2025 13:49:13 -0700
Message-ID: <20250418204919.5875-4-pavan.kumar.linga@intel.com>
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
 bh=PBhDQ+Us2aKKFOebpY+KwZg3yfoxNT9IlbecAT3bqGk=;
 b=hH0j5mXJCrDE8abfWLiE7QFO6vsR3rktA9YxRKcA/i7bfq/rsKdA4/I9
 gCVsXA7MaMSAl5llQw8VlXC3TCNj0THTwDlg9zbsQ++0l2e98AhDh6S6s
 IajnPXEUx+t7/rj6xIdZs5SR6ZadDVNyOx60n6ECFTtvSSMZ8SLd3EBq8
 F5nZ372mA06szaAVWbiic1etS+bJ0zJc3p3MKidZkpNG55ZGbdy1eqYFP
 K/zvEVVkuzgr3PbinSJbrDlcrBN5WI/DQEyMxhVmm9Sy1H+dwh3vDp4pE
 JxzQMMbdAyDwGZnTmd1Afgtbqk+r2aw96icyGjWqviOWqMg0A5N7pDYib
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hH0j5mXJ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/9] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
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

To group all the vector and queue resources, introduce idpf_q_vec_rsrc
structure. This helps to reuse the same config path functions by
other features. For example, PTP implementation can use the
existing config infrastructure to configure secondary mailbox
by passing its queue and vector info. It also helps to avoid any
duplication of code.

Existing queue and vector resources are grouped as default
resources. This patch moves vector info to the newly introduced
structure. Following patch moves the queue resources.

While at it, declare the loop iterator for 'num_q_vectors'
in loop and use the correct type.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  24 ++-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  10 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  40 ++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 187 +++++++++---------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  14 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  10 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  27 +--
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   4 +-
 8 files changed, 177 insertions(+), 139 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 662d9a04b5f6..c5a3edb9b2d6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -8,6 +8,7 @@
 struct idpf_adapter;
 struct idpf_vport;
 struct idpf_vport_max_q;
+struct idpf_q_vec_rsrc;
 
 #include <net/pkt_sched.h>
 #include <linux/aer.h>
@@ -195,7 +196,8 @@ struct idpf_vport_max_q {
  */
 struct idpf_reg_ops {
 	void (*ctlq_reg_init)(struct idpf_ctlq_create_info *cq);
-	int (*intr_reg_init)(struct idpf_vport *vport);
+	int (*intr_reg_init)(struct idpf_vport *vport,
+			     struct idpf_q_vec_rsrc *rsrc);
 	void (*mb_intr_reg_init)(struct idpf_adapter *adapter);
 	void (*reset_reg_init)(struct idpf_adapter *adapter);
 	void (*trigger_reset)(struct idpf_adapter *adapter,
@@ -265,8 +267,21 @@ struct idpf_tx_tstamp_stats {
 	u32 tx_hwtstamp_flushed;
 };
 
+/**
+ * struct idpf_q_vec_rsrc - handle for queue and vector resources
+ * @q_vectors: array of queue vectors
+ * @q_vector_idxs: starting index of queue vectors
+ * @num_q_vectors: number of IRQ vectors allocated
+ */
+struct idpf_q_vec_rsrc {
+	struct idpf_q_vector	*q_vectors;
+	u16			*q_vector_idxs;
+	u16			num_q_vectors;
+};
+
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
+ * @dflt_qv_rsrc: contains default queue and vector resources
  * @num_txq: Number of allocated TX queues
  * @num_complq: Number of allocated completion queues
  * @txq_desc_count: TX queue descriptor count
@@ -298,9 +313,6 @@ struct idpf_tx_tstamp_stats {
  * @idx: Software index in adapter vports struct
  * @default_vport: Use this vport if one isn't specified
  * @base_rxd: True if the driver should use base descriptors instead of flex
- * @num_q_vectors: Number of IRQ vectors allocated
- * @q_vectors: Array of queue vectors
- * @q_vector_idxs: Starting index of queue vectors
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
@@ -314,6 +326,7 @@ struct idpf_tx_tstamp_stats {
  * @tstamp_stats: Tx timestamping statistics
  */
 struct idpf_vport {
+	struct idpf_q_vec_rsrc dflt_qv_rsrc;
 	u16 num_txq;
 	u16 num_complq;
 	u32 txq_desc_count;
@@ -344,9 +357,6 @@ struct idpf_vport {
 	bool default_vport;
 	bool base_rxd;
 
-	u16 num_q_vectors;
-	struct idpf_q_vector *q_vectors;
-	u16 *q_vector_idxs;
 	u16 max_mtu;
 	u8 default_mac_addr[ETH_ALEN];
 	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 3fae81f1f988..3d358030b809 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -67,11 +67,13 @@ static void idpf_mb_intr_reg_init(struct idpf_adapter *adapter)
 /**
  * idpf_intr_reg_init - Initialize interrupt registers
  * @vport: virtual port structure
+ * @rsrc: pointer to queue and vector resources
  */
-static int idpf_intr_reg_init(struct idpf_vport *vport)
+static int idpf_intr_reg_init(struct idpf_vport *vport,
+			      struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_adapter *adapter = vport->adapter;
-	int num_vecs = vport->num_q_vectors;
+	u16 num_vecs = rsrc->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
 	int num_regs, i, err = 0;
 	u32 rx_itr, tx_itr;
@@ -90,8 +92,8 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 	}
 
 	for (i = 0; i < num_vecs; i++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
-		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[i];
+		u16 vec_id = rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
 		u32 spacing;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index c75c4c661aeb..c36f5a3f4f26 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -834,6 +834,7 @@ static void idpf_remove_features(struct idpf_vport *vport)
 static void idpf_vport_stop(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_queue_id_reg_info *chunks;
 
 	if (np->state <= __IDPF_VPORT_DOWN)
@@ -845,7 +846,7 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	chunks = &vport->adapter->vport_config[vport->idx]->qid_reg_info;
 
 	idpf_send_disable_vport_msg(vport);
-	idpf_send_disable_queues_msg(vport, chunks);
+	idpf_send_disable_queues_msg(vport, rsrc, chunks);
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 	/* Normally we ask for queues in create_vport, but if the number of
 	 * initially requested queues have changed, for example via ethtool
@@ -858,9 +859,9 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	idpf_remove_features(vport);
 
 	vport->link_up = false;
-	idpf_vport_intr_deinit(vport);
+	idpf_vport_intr_deinit(vport, rsrc);
 	idpf_vport_queues_rel(vport);
-	idpf_vport_intr_rel(vport);
+	idpf_vport_intr_rel(rsrc);
 	np->state = __IDPF_VPORT_DOWN;
 }
 
@@ -920,6 +921,7 @@ static void idpf_decfg_netdev(struct idpf_vport *vport)
  */
 static void idpf_vport_rel(struct idpf_vport *vport)
 {
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_vector_info vec_info;
@@ -944,13 +946,13 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 
 	/* Release all the allocated vectors on the stack */
 	vec_info.num_req_vecs = 0;
-	vec_info.num_curr_vecs = vport->num_q_vectors;
+	vec_info.num_curr_vecs = rsrc->num_q_vectors;
 	vec_info.default_vport = vport->default_vport;
 
-	idpf_req_rel_vector_indexes(adapter, vport->q_vector_idxs, &vec_info);
+	idpf_req_rel_vector_indexes(adapter, rsrc->q_vector_idxs, &vec_info);
 
-	kfree(vport->q_vector_idxs);
-	vport->q_vector_idxs = NULL;
+	kfree(rsrc->q_vector_idxs);
+	rsrc->q_vector_idxs = NULL;
 	kfree(vport_config->qid_reg_info.queue_chunks);
 	vport_config->qid_reg_info.queue_chunks = NULL;
 
@@ -1071,6 +1073,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 {
 	struct idpf_rss_data *rss_data;
 	u16 idx = adapter->next_vport;
+	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
 	u16 num_max_q;
 	int err;
@@ -1102,8 +1105,10 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 			       idpf_get_default_vports(adapter);
 
 	num_max_q = max(max_q->max_txq, max_q->max_rxq);
-	vport->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
-	if (!vport->q_vector_idxs)
+
+	rsrc = &vport->dflt_qv_rsrc;
+	rsrc->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
+	if (!rsrc->q_vector_idxs)
 		goto free_vport;
 
 	err = idpf_vport_init(vport, max_q);
@@ -1136,7 +1141,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 free_qreg_chunks:
 	kfree(adapter->vport_config[idx]->qid_reg_info.queue_chunks);
 free_vector_idxs:
-	kfree(vport->q_vector_idxs);
+	kfree(rsrc->q_vector_idxs);
 free_vport:
 	kfree(vport);
 
@@ -1309,6 +1314,7 @@ static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
 static int idpf_vport_open(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_queue_id_reg_info *chunks;
@@ -1320,7 +1326,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	/* we do not allow interface up just yet */
 	netif_carrier_off(vport->netdev);
 
-	err = idpf_vport_intr_alloc(vport);
+	err = idpf_vport_intr_alloc(vport, rsrc);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to allocate interrupts for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1341,7 +1347,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto queues_rel;
 	}
 
-	err = idpf_vport_intr_init(vport);
+	err = idpf_vport_intr_init(vport, rsrc);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize interrupts for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1363,7 +1369,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	}
 
 	idpf_rx_init_buf_tail(vport);
-	idpf_vport_intr_ena(vport);
+	idpf_vport_intr_ena(vport, rsrc);
 
 	err = idpf_send_config_queues_msg(vport);
 	if (err) {
@@ -1420,15 +1426,15 @@ static int idpf_vport_open(struct idpf_vport *vport)
 disable_vport:
 	idpf_send_disable_vport_msg(vport);
 disable_queues:
-	idpf_send_disable_queues_msg(vport, chunks);
+	idpf_send_disable_queues_msg(vport, rsrc, chunks);
 unmap_queue_vectors:
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 intr_deinit:
-	idpf_vport_intr_deinit(vport);
+	idpf_vport_intr_deinit(vport, rsrc);
 queues_rel:
 	idpf_vport_queues_rel(vport);
 intr_rel:
-	idpf_vport_intr_rel(vport);
+	idpf_vport_intr_rel(rsrc);
 
 	return err;
 }
@@ -1908,7 +1914,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	memcpy(vport, new_vport, offsetof(struct idpf_vport, link_up));
 
 	if (reset_cause == IDPF_SR_Q_CHANGE)
-		idpf_vport_alloc_vec_indexes(vport);
+		idpf_vport_alloc_vec_indexes(vport, &vport->dflt_qv_rsrc);
 
 	err = idpf_set_real_num_queues(vport);
 	if (err)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 127560bebded..abd6cbf0acbd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3665,39 +3665,34 @@ static irqreturn_t idpf_vport_intr_clean_queues(int __always_unused irq,
 
 /**
  * idpf_vport_intr_napi_del_all - Unregister napi for all q_vectors in vport
- * @vport: virtual port structure
- *
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_vport_intr_napi_del_all(struct idpf_vport *vport)
+static void idpf_vport_intr_napi_del_all(struct idpf_q_vec_rsrc *rsrc)
 {
-	u16 v_idx;
-
-	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++)
-		netif_napi_del(&vport->q_vectors[v_idx].napi);
+	for (u16 v_idx = 0; v_idx < rsrc->num_q_vectors; v_idx++)
+		netif_napi_del(&rsrc->q_vectors[v_idx].napi);
 }
 
 /**
  * idpf_vport_intr_napi_dis_all - Disable NAPI for all q_vectors in the vport
- * @vport: main vport structure
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_vport_intr_napi_dis_all(struct idpf_vport *vport)
+static void idpf_vport_intr_napi_dis_all(struct idpf_q_vec_rsrc *rsrc)
 {
-	int v_idx;
-
-	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++)
-		napi_disable(&vport->q_vectors[v_idx].napi);
+	for (u16 v_idx = 0; v_idx < rsrc->num_q_vectors; v_idx++)
+		napi_disable(&rsrc->q_vectors[v_idx].napi);
 }
 
 /**
  * idpf_vport_intr_rel - Free memory allocated for interrupt vectors
- * @vport: virtual port
+ * @rsrc: pointer to queue and vector resources
  *
  * Free the memory allocated for interrupt vectors  associated to a vport
  */
-void idpf_vport_intr_rel(struct idpf_vport *vport)
+void idpf_vport_intr_rel(struct idpf_q_vec_rsrc *rsrc)
 {
-	for (u32 v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
+	for (u16 v_idx = 0; v_idx < rsrc->num_q_vectors; v_idx++) {
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[v_idx];
 
 		kfree(q_vector->complq);
 		q_vector->complq = NULL;
@@ -3709,28 +3704,29 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 		q_vector->rx = NULL;
 	}
 
-	kfree(vport->q_vectors);
-	vport->q_vectors = NULL;
+	kfree(rsrc->q_vectors);
+	rsrc->q_vectors = NULL;
 }
 
 /**
  * idpf_vport_intr_rel_irq - Free the IRQ association with the OS
  * @vport: main vport structure
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
+static void idpf_vport_intr_rel_irq(struct idpf_vport *vport,
+				    struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_adapter *adapter = vport->adapter;
-	int vector;
 
-	for (vector = 0; vector < vport->num_q_vectors; vector++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
+	for (u16 vector = 0; vector < rsrc->num_q_vectors; vector++) {
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[vector];
 		int irq_num, vidx;
 
 		/* free only the irqs that were actually requested */
 		if (!q_vector)
 			continue;
 
-		vidx = vport->q_vector_idxs[vector];
+		vidx = rsrc->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
 
 		kfree(free_irq(irq_num, q_vector));
@@ -3739,14 +3735,13 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 
 /**
  * idpf_vport_intr_dis_irq_all - Disable all interrupt
- * @vport: main vport structure
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
+static void idpf_vport_intr_dis_irq_all(struct idpf_q_vec_rsrc *rsrc)
 {
-	struct idpf_q_vector *q_vector = vport->q_vectors;
-	int q_idx;
+	struct idpf_q_vector *q_vector = rsrc->q_vectors;
 
-	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++)
+	for (u16 q_idx = 0; q_idx < rsrc->num_q_vectors; q_idx++)
 		writel(0, q_vector[q_idx].intr_reg.dyn_ctl);
 }
 
@@ -3884,8 +3879,10 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 /**
  * idpf_vport_intr_req_irq - get MSI-X vectors from the OS for the vport
  * @vport: main vport structure
+ * @rsrc: pointer to queue and vector resources
  */
-static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
+static int idpf_vport_intr_req_irq(struct idpf_vport *vport,
+				   struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 	const char *drv_name, *if_name, *vec_name;
@@ -3894,11 +3891,11 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 	drv_name = dev_driver_string(&adapter->pdev->dev);
 	if_name = netdev_name(vport->netdev);
 
-	for (vector = 0; vector < vport->num_q_vectors; vector++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
+	for (vector = 0; vector < rsrc->num_q_vectors; vector++) {
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[vector];
 		char *name;
 
-		vidx = vport->q_vector_idxs[vector];
+		vidx = rsrc->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
 
 		if (q_vector->num_rxq && q_vector->num_txq)
@@ -3926,9 +3923,9 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 
 free_q_irqs:
 	while (--vector >= 0) {
-		vidx = vport->q_vector_idxs[vector];
+		vidx = rsrc->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
-		kfree(free_irq(irq_num, &vport->q_vectors[vector]));
+		kfree(free_irq(irq_num, &rsrc->q_vectors[vector]));
 	}
 
 	return err;
@@ -3957,15 +3954,16 @@ void idpf_vport_intr_write_itr(struct idpf_q_vector *q_vector, u16 itr, bool tx)
 /**
  * idpf_vport_intr_ena_irq_all - Enable IRQ for the given vport
  * @vport: main vport structure
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
+static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport,
+					struct idpf_q_vec_rsrc *rsrc)
 {
 	bool dynamic;
-	int q_idx;
 	u16 itr;
 
-	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
-		struct idpf_q_vector *qv = &vport->q_vectors[q_idx];
+	for (u16 q_idx = 0; q_idx < rsrc->num_q_vectors; q_idx++) {
+		struct idpf_q_vector *qv = &rsrc->q_vectors[q_idx];
 
 		/* Set the initial ITR values */
 		if (qv->num_txq) {
@@ -3992,13 +3990,15 @@ static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
 /**
  * idpf_vport_intr_deinit - Release all vector associations for the vport
  * @vport: main vport structure
+ * @rsrc: pointer to queue and vector resources
  */
-void idpf_vport_intr_deinit(struct idpf_vport *vport)
+void idpf_vport_intr_deinit(struct idpf_vport *vport,
+			    struct idpf_q_vec_rsrc *rsrc)
 {
-	idpf_vport_intr_dis_irq_all(vport);
-	idpf_vport_intr_napi_dis_all(vport);
-	idpf_vport_intr_napi_del_all(vport);
-	idpf_vport_intr_rel_irq(vport);
+	idpf_vport_intr_dis_irq_all(rsrc);
+	idpf_vport_intr_napi_dis_all(rsrc);
+	idpf_vport_intr_napi_del_all(rsrc);
+	idpf_vport_intr_rel_irq(vport, rsrc);
 }
 
 /**
@@ -4070,14 +4070,12 @@ static void idpf_init_dim(struct idpf_q_vector *qv)
 
 /**
  * idpf_vport_intr_napi_ena_all - Enable NAPI for all q_vectors in the vport
- * @vport: main vport structure
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_vport_intr_napi_ena_all(struct idpf_vport *vport)
+static void idpf_vport_intr_napi_ena_all(struct idpf_q_vec_rsrc *rsrc)
 {
-	int q_idx;
-
-	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[q_idx];
+	for (u16 q_idx = 0; q_idx < rsrc->num_q_vectors; q_idx++) {
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[q_idx];
 
 		idpf_init_dim(q_vector);
 		napi_enable(&q_vector->napi);
@@ -4204,10 +4202,12 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
 /**
  * idpf_vport_intr_map_vector_to_qs - Map vectors to queues
  * @vport: virtual port
+ * @rsrc: pointer to queue and vector resources
  *
  * Mapping for vectors to queues
  */
-static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
+static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport,
+					     struct idpf_q_vec_rsrc *rsrc)
 {
 	bool split = idpf_is_queue_model_split(vport->rxq_model);
 	u16 num_txq_grp = vport->num_txq_grp;
@@ -4218,7 +4218,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 	for (i = 0, qv_idx = 0; i < vport->num_rxq_grp; i++) {
 		u16 num_rxq;
 
-		if (qv_idx >= vport->num_q_vectors)
+		if (qv_idx >= rsrc->num_q_vectors)
 			qv_idx = 0;
 
 		rx_qgrp = &vport->rxq_grps[i];
@@ -4234,7 +4234,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
 				q = rx_qgrp->singleq.rxqs[j];
-			q->q_vector = &vport->q_vectors[qv_idx];
+			q->q_vector = &rsrc->q_vectors[qv_idx];
 			q_index = q->q_vector->num_rxq;
 			q->q_vector->rx[q_index] = q;
 			q->q_vector->num_rxq++;
@@ -4248,7 +4248,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 				struct idpf_buf_queue *bufq;
 
 				bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
-				bufq->q_vector = &vport->q_vectors[qv_idx];
+				bufq->q_vector = &rsrc->q_vectors[qv_idx];
 				q_index = bufq->q_vector->num_bufq;
 				bufq->q_vector->bufq[q_index] = bufq;
 				bufq->q_vector->num_bufq++;
@@ -4263,7 +4263,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 	for (i = 0, qv_idx = 0; i < num_txq_grp; i++) {
 		u16 num_txq;
 
-		if (qv_idx >= vport->num_q_vectors)
+		if (qv_idx >= rsrc->num_q_vectors)
 			qv_idx = 0;
 
 		tx_qgrp = &vport->txq_grps[i];
@@ -4273,14 +4273,14 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 			struct idpf_tx_queue *q;
 
 			q = tx_qgrp->txqs[j];
-			q->q_vector = &vport->q_vectors[qv_idx];
+			q->q_vector = &rsrc->q_vectors[qv_idx];
 			q->q_vector->tx[q->q_vector->num_txq++] = q;
 		}
 
 		if (split) {
 			struct idpf_compl_queue *q = tx_qgrp->complq;
 
-			q->q_vector = &vport->q_vectors[qv_idx];
+			q->q_vector = &rsrc->q_vectors[qv_idx];
 			q->q_vector->complq[q->q_vector->num_complq++] = q;
 		}
 
@@ -4291,20 +4291,21 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 /**
  * idpf_vport_intr_init_vec_idx - Initialize the vector indexes
  * @vport: virtual port
+ * @rsrc: pointer to queue and vector resources
  *
  * Initialize vector indexes with values returened over mailbox
  */
-static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
+static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport,
+					struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_alloc_vectors *ac;
 	u16 *vecids, total_vecs;
-	int i;
 
 	ac = adapter->req_vec_chunks;
 	if (!ac) {
-		for (i = 0; i < vport->num_q_vectors; i++)
-			vport->q_vectors[i].v_idx = vport->q_vector_idxs[i];
+		for (u16 i = 0; i < rsrc->num_q_vectors; i++)
+			rsrc->q_vectors[i].v_idx = rsrc->q_vector_idxs[i];
 
 		return 0;
 	}
@@ -4316,8 +4317,8 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 
 	idpf_get_vec_ids(adapter, vecids, total_vecs, &ac->vchunks);
 
-	for (i = 0; i < vport->num_q_vectors; i++)
-		vport->q_vectors[i].v_idx = vecids[vport->q_vector_idxs[i]];
+	for (u16 i = 0; i < rsrc->num_q_vectors; i++)
+		rsrc->q_vectors[i].v_idx = vecids[rsrc->q_vector_idxs[i]];
 
 	kfree(vecids);
 
@@ -4327,21 +4328,24 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 /**
  * idpf_vport_intr_napi_add_all- Register napi handler for all qvectors
  * @vport: virtual port structure
+ * @rsrc: pointer to queue and vector resources
  */
-static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
+static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport,
+					 struct idpf_q_vec_rsrc *rsrc)
 {
 	int (*napi_poll)(struct napi_struct *napi, int budget);
-	u16 v_idx, qv_idx;
 	int irq_num;
+	u16 qv_idx;
 
 	if (idpf_is_queue_model_split(vport->txq_model))
 		napi_poll = idpf_vport_splitq_napi_poll;
 	else
 		napi_poll = idpf_vport_singleq_napi_poll;
 
-	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
-		qv_idx = vport->q_vector_idxs[v_idx];
+	for (u16 v_idx = 0; v_idx < rsrc->num_q_vectors; v_idx++) {
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[v_idx];
+
+		qv_idx = rsrc->q_vector_idxs[v_idx];
 		irq_num = vport->adapter->msix_entries[qv_idx].vector;
 
 		netif_napi_add_config(vport->netdev, &q_vector->napi,
@@ -4353,33 +4357,35 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
 /**
  * idpf_vport_intr_alloc - Allocate memory for interrupt vectors
  * @vport: virtual port
+ * @rsrc: pointer to queue and vector resources
  *
  * We allocate one q_vector per queue interrupt. If allocation fails we
  * return -ENOMEM.
  */
-int idpf_vport_intr_alloc(struct idpf_vport *vport)
+int idpf_vport_intr_alloc(struct idpf_vport *vport,
+			  struct idpf_q_vec_rsrc *rsrc)
 {
 	u16 txqs_per_vector, rxqs_per_vector, bufqs_per_vector;
 	struct idpf_q_vector *q_vector;
-	u32 complqs_per_vector, v_idx;
+	u32 complqs_per_vector;
 
-	vport->q_vectors = kcalloc(vport->num_q_vectors,
-				   sizeof(struct idpf_q_vector), GFP_KERNEL);
-	if (!vport->q_vectors)
+	rsrc->q_vectors = kcalloc(rsrc->num_q_vectors,
+				  sizeof(struct idpf_q_vector), GFP_KERNEL);
+	if (!rsrc->q_vectors)
 		return -ENOMEM;
 
 	txqs_per_vector = DIV_ROUND_UP(vport->num_txq_grp,
-				       vport->num_q_vectors);
+				       rsrc->num_q_vectors);
 	rxqs_per_vector = DIV_ROUND_UP(vport->num_rxq_grp,
-				       vport->num_q_vectors);
+				       rsrc->num_q_vectors);
 	bufqs_per_vector = vport->num_bufqs_per_qgrp *
 			   DIV_ROUND_UP(vport->num_rxq_grp,
-					vport->num_q_vectors);
+					rsrc->num_q_vectors);
 	complqs_per_vector = DIV_ROUND_UP(vport->num_txq_grp,
-					  vport->num_q_vectors);
+					  rsrc->num_q_vectors);
 
-	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
-		q_vector = &vport->q_vectors[v_idx];
+	for (u16 v_idx = 0; v_idx < rsrc->num_q_vectors; v_idx++) {
+		q_vector = &rsrc->q_vectors[v_idx];
 		q_vector->vport = vport;
 
 		q_vector->tx_itr_value = IDPF_ITR_TX_DEF;
@@ -4419,7 +4425,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 	return 0;
 
 error:
-	idpf_vport_intr_rel(vport);
+	idpf_vport_intr_rel(rsrc);
 
 	return -ENOMEM;
 }
@@ -4427,40 +4433,41 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 /**
  * idpf_vport_intr_init - Setup all vectors for the given vport
  * @vport: virtual port
+ * @rsrc: pointer to queue and vector resources
  *
  * Returns 0 on success or negative on failure
  */
-int idpf_vport_intr_init(struct idpf_vport *vport)
+int idpf_vport_intr_init(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
 {
 	int err;
 
-	err = idpf_vport_intr_init_vec_idx(vport);
+	err = idpf_vport_intr_init_vec_idx(vport, rsrc);
 	if (err)
 		return err;
 
-	idpf_vport_intr_map_vector_to_qs(vport);
-	idpf_vport_intr_napi_add_all(vport);
+	idpf_vport_intr_map_vector_to_qs(vport, rsrc);
+	idpf_vport_intr_napi_add_all(vport, rsrc);
 
-	err = vport->adapter->dev_ops.reg_ops.intr_reg_init(vport);
+	err = vport->adapter->dev_ops.reg_ops.intr_reg_init(vport, rsrc);
 	if (err)
 		goto unroll_vectors_alloc;
 
-	err = idpf_vport_intr_req_irq(vport);
+	err = idpf_vport_intr_req_irq(vport, rsrc);
 	if (err)
 		goto unroll_vectors_alloc;
 
 	return 0;
 
 unroll_vectors_alloc:
-	idpf_vport_intr_napi_del_all(vport);
+	idpf_vport_intr_napi_del_all(rsrc);
 
 	return err;
 }
 
-void idpf_vport_intr_ena(struct idpf_vport *vport)
+void idpf_vport_intr_ena(struct idpf_vport *vport, struct idpf_q_vec_rsrc *rsrc)
 {
-	idpf_vport_intr_napi_ena_all(vport);
-	idpf_vport_intr_ena_irq_all(vport);
+	idpf_vport_intr_napi_ena_all(rsrc);
+	idpf_vport_intr_ena_irq_all(vport, rsrc);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index c779fe71df99..a034afb06b77 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1020,12 +1020,16 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
 void idpf_vport_calc_num_q_groups(struct idpf_vport *vport);
 int idpf_vport_queues_alloc(struct idpf_vport *vport);
 void idpf_vport_queues_rel(struct idpf_vport *vport);
-void idpf_vport_intr_rel(struct idpf_vport *vport);
-int idpf_vport_intr_alloc(struct idpf_vport *vport);
+void idpf_vport_intr_rel(struct idpf_q_vec_rsrc *rsrc);
+int idpf_vport_intr_alloc(struct idpf_vport *vport,
+			  struct idpf_q_vec_rsrc *rsrc);
 void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector);
-void idpf_vport_intr_deinit(struct idpf_vport *vport);
-int idpf_vport_intr_init(struct idpf_vport *vport);
-void idpf_vport_intr_ena(struct idpf_vport *vport);
+void idpf_vport_intr_deinit(struct idpf_vport *vport,
+			    struct idpf_q_vec_rsrc *rsrc);
+int idpf_vport_intr_init(struct idpf_vport *vport,
+			 struct idpf_q_vec_rsrc *rsrc);
+void idpf_vport_intr_ena(struct idpf_vport *vport,
+			 struct idpf_q_vec_rsrc *rsrc);
 int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss(struct idpf_vport *vport);
 void idpf_deinit_rss(struct idpf_vport *vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index aba828abcb17..61d6f774e2f6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -66,11 +66,13 @@ static void idpf_vf_mb_intr_reg_init(struct idpf_adapter *adapter)
 /**
  * idpf_vf_intr_reg_init - Initialize interrupt registers
  * @vport: virtual port structure
+ * @rsrc: pointer to queue and vector resources
  */
-static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
+static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
+				 struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_adapter *adapter = vport->adapter;
-	int num_vecs = vport->num_q_vectors;
+	u16 num_vecs = rsrc->num_q_vectors;
 	struct idpf_vec_regs *reg_vals;
 	int num_regs, i, err = 0;
 	u32 rx_itr, tx_itr;
@@ -89,8 +91,8 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 	}
 
 	for (i = 0; i < num_vecs; i++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
-		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[i];
+		u16 vec_id = rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
 		u32 spacing;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 92ac01a90a91..cf99952607be 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1888,7 +1888,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
 /**
  * idpf_send_enable_queues_msg - send enable queues virtchnl message
- * @vport: Virtual port private data structure
+ * @vport: virtual port private data structure
  * @chunks: queue ids received over mailbox
  *
  * Will send enable queues virtchnl message.  Returns 0 on success, negative on
@@ -1902,16 +1902,18 @@ int idpf_send_enable_queues_msg(struct idpf_vport *vport,
 
 /**
  * idpf_send_disable_queues_msg - send disable queues virtchnl message
- * @vport: Virtual port private data structure
+ * @vport: virtual port private data structure
+ * @rsrc: pointer to queue and vector resources
  * @chunks: queue ids received over mailbox
  *
  * Will send disable queues virtchnl message.  Returns 0 on success, negative
  * on failure.
  */
 int idpf_send_disable_queues_msg(struct idpf_vport *vport,
+				 struct idpf_q_vec_rsrc *rsrc,
 				 struct idpf_queue_id_reg_info *chunks)
 {
-	int err, i;
+	int err;
 
 	err = idpf_send_ena_dis_queues_msg(vport, chunks, false);
 	if (err)
@@ -1920,13 +1922,13 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport,
 	/* switch to poll mode as interrupts will be disabled after disable
 	 * queues virtchnl message is sent
 	 */
-	for (i = 0; i < vport->num_txq; i++)
+	for (u16 i = 0; i < vport->num_txq; i++)
 		idpf_queue_set(POLL_MODE, vport->txqs[i]);
 
 	/* schedule the napi to receive all the marker packets */
 	local_bh_disable();
-	for (i = 0; i < vport->num_q_vectors; i++)
-		napi_schedule(&vport->q_vectors[i].napi);
+	for (u16 i = 0; i < rsrc->num_q_vectors; i++)
+		napi_schedule(&rsrc->q_vectors[i].napi);
 	local_bh_enable();
 
 	return idpf_wait_for_marker_event(vport);
@@ -2998,6 +3000,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 /**
  * idpf_vport_alloc_vec_indexes - Get relative vector indexes
  * @vport: virtual port data struct
+ * @rsrc: pointer to queue and vector resources
  *
  * This function requests the vector information required for the vport and
  * stores the vector indexes received from the 'global vector distribution'
@@ -3005,18 +3008,19 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
  *
  * Return 0 on success, error on failure
  */
-int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
+int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport,
+				 struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_vector_info vec_info;
 	int num_alloc_vecs;
 
-	vec_info.num_curr_vecs = vport->num_q_vectors;
+	vec_info.num_curr_vecs = rsrc->num_q_vectors;
 	vec_info.num_req_vecs = max(vport->num_txq, vport->num_rxq);
 	vec_info.default_vport = vport->default_vport;
 	vec_info.index = vport->idx;
 
 	num_alloc_vecs = idpf_req_rel_vector_indexes(vport->adapter,
-						     vport->q_vector_idxs,
+						     rsrc->q_vector_idxs,
 						     &vec_info);
 	if (num_alloc_vecs <= 0) {
 		dev_err(&vport->adapter->pdev->dev, "Vector distribution failed: %d\n",
@@ -3024,7 +3028,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 		return -EINVAL;
 	}
 
-	vport->num_q_vectors = num_alloc_vecs;
+	rsrc->num_q_vectors = num_alloc_vecs;
 
 	return 0;
 }
@@ -3040,6 +3044,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
  */
 int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 {
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_msg;
 	struct idpf_vport_config *vport_config;
@@ -3084,7 +3089,7 @@ int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	idpf_vport_init_num_qs(vport, vport_msg);
 	idpf_vport_calc_num_q_desc(vport);
 	idpf_vport_calc_num_q_groups(vport);
-	idpf_vport_alloc_vec_indexes(vport);
+	idpf_vport_alloc_vec_indexes(vport, rsrc);
 
 	vport->crc_enable = adapter->crc_enable;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 1623d974b725..b3849af0d5c9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -131,10 +131,12 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport,
 int idpf_send_enable_queues_msg(struct idpf_vport *vport,
 				struct idpf_queue_id_reg_info *chunks);
 int idpf_send_disable_queues_msg(struct idpf_vport *vport,
+				 struct idpf_q_vec_rsrc *rsrc,
 				 struct idpf_queue_id_reg_info *chunks);
 int idpf_send_config_queues_msg(struct idpf_vport *vport);
 
-int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport);
+int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport,
+				 struct idpf_q_vec_rsrc *rsrc);
 int idpf_get_vec_ids(struct idpf_adapter *adapter,
 		     u16 *vecids, int num_vecids,
 		     struct virtchnl2_vector_chunks *chunks);
-- 
2.43.0

