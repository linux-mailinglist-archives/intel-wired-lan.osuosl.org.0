Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4978EAFBF9B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 02:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDC5C419F4;
	Tue,  8 Jul 2025 00:59:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K3wTF12nbBYS; Tue,  8 Jul 2025 00:59:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87E6E419E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751936341;
	bh=9Crz7LOtjTnFdgcYEuaK6uimhECDToHsCC8hEU3I7B8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eTFjMUO7esiqnYo1xm+qegDoTgYauP0W+joW3J/DU3sipSk2OEYjFrojsBkF6ske3
	 OBnfIxCPztDNnOJE+Qoq6Bc/F+TtLhEHme1KUGrc+QOyalbe7VDLXfPEKQ6odoQ1vL
	 gJRiy+CREbx675tTtHZeMhB/6ig9TiCgwlPaEqjxy/8hm7tB++RUw8RcCwymz6g2sJ
	 97sPn5U1WJYqcfppW5y7H8+kXsL7GQSXvEzl1qwBP2OlPYmqlaOz0rgNS3Mjwbf9Fa
	 r+C6+ahdky+cPbLP8vJqPQmdOk+UH8PKXSSaMUQRhygT70Y4uFqizjcf8Yr1/vx7Yi
	 rJiED0TrFSyEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87E6E419E5;
	Tue,  8 Jul 2025 00:59:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0925B12E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE87441951
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w-Bjv3ySr6Et for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 00:58:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B1CAE418DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1CAE418DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1CAE418DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 00:58:50 +0000 (UTC)
X-CSE-ConnectionGUID: WaIRC0+yTOaONVSON3mrgg==
X-CSE-MsgGUID: 51p9xZrfSdKvoKt0+g6x7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54307578"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="54307578"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 17:58:47 -0700
X-CSE-ConnectionGUID: RCPXdRTJSJuNdKYQ5GdtKQ==
X-CSE-MsgGUID: xWF5zbwtTZ+BxQgL4DJyPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="159695496"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa003.jf.intel.com with ESMTP; 07 Jul 2025 17:58:47 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Mon,  7 Jul 2025 17:58:31 -0700
Message-ID: <20250708005837.18510-4-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
References: <20250708005837.18510-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751936330; x=1783472330;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sHCNyvwJpwvZcXpPrWl2r4AYyuV80Kvx2Gn0V9Jwe1Y=;
 b=g2tjfxjkycVEeCDcfzwBPV2dE9NRf86AdigxDVksEaPyC1og91wz0hIx
 BPjE8U02mdXPynj7hwkPJpT0XEdXyFhN7vLhbw2Tpqx++rIhcy8wLdrMo
 P7s7bgs9hT6+/TMqbB2PReq/pgsglKbOhpmSh53apsZ4RPyZyt3x1e0wh
 EvR1w0lKm3ay1dNQ68WlCKN45pMdI8ObM+2prvYPmZea0Ws17uo0/e6F/
 ugRb26XY6mRA/nwL3oPGi3xyczO4/d87i0Z1a3ruG/6KGpgkud9EoxGZi
 SIziKfVJyM4Cb0Ldr8Hg0prLRdqxdhsSjfe3L63RQ9DPvAG8woGJHE0AH
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g2tjfxjk
Subject: [Intel-wired-lan] [PATCH net-next v6 3/9] idpf: introduce
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
structure. This helps to reuse the same config path functions by other
features. For example, PTP implementation can use the existing config
infrastructure to configure secondary mailbox by passing its queue and
vector info. It also helps to avoid any duplication of code.

Existing queue and vector resources are grouped as default resources.
This patch moves vector info to the newly introduced structure.
Following patch moves the queue resources.

While at it, declare the loop iterator for 'num_q_vectors' in loop and
use the correct type.

Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  39 ++--
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  16 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  39 ++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 195 +++++++++---------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  14 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  16 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  24 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   4 +-
 8 files changed, 193 insertions(+), 154 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 1be111d04467..ccc872441908 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -8,6 +8,7 @@
 struct idpf_adapter;
 struct idpf_vport;
 struct idpf_vport_max_q;
+struct idpf_q_vec_rsrc;
 
 #include <net/pkt_sched.h>
 #include <linux/aer.h>
@@ -196,7 +197,8 @@ struct idpf_vport_max_q {
  */
 struct idpf_reg_ops {
 	void (*ctlq_reg_init)(struct idpf_ctlq_create_info *cq);
-	int (*intr_reg_init)(struct idpf_vport *vport);
+	int (*intr_reg_init)(struct idpf_vport *vport,
+			     struct idpf_q_vec_rsrc *rsrc);
 	void (*mb_intr_reg_init)(struct idpf_adapter *adapter);
 	void (*reset_reg_init)(struct idpf_adapter *adapter);
 	void (*trigger_reset)(struct idpf_adapter *adapter,
@@ -255,8 +257,28 @@ struct idpf_fsteer_fltr {
 	u32 q_index;
 };
 
+/**
+ * struct idpf_q_vec_rsrc - handle for queue and vector resources
+ * @q_vectors: array of queue vectors
+ * @q_vector_idxs: starting index of queue vectors
+ * @num_q_vectors: number of IRQ vectors allocated
+ * @noirq_v_idx: ID of the NOIRQ vector
+ * @noirq_dyn_ctl_ena: value to write to the above to enable it
+ * @noirq_dyn_ctl: register to enable/disable the vector for NOIRQ queues
+ */
+struct idpf_q_vec_rsrc {
+	struct idpf_q_vector	*q_vectors;
+	u16			*q_vector_idxs;
+	u16			num_q_vectors;
+	u16			noirq_v_idx;
+	u32			noirq_dyn_ctl_ena;
+	void __iomem		*noirq_dyn_ctl;
+
+};
+
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
+ * @dflt_qv_rsrc: contains default queue and vector resources
  * @num_txq: Number of allocated TX queues
  * @num_complq: Number of allocated completion queues
  * @txq_desc_count: TX queue descriptor count
@@ -292,12 +314,6 @@ struct idpf_fsteer_fltr {
  * @idx: Software index in adapter vports struct
  * @default_vport: Use this vport if one isn't specified
  * @base_rxd: True if the driver should use base descriptors instead of flex
- * @num_q_vectors: Number of IRQ vectors allocated
- * @q_vectors: Array of queue vectors
- * @q_vector_idxs: Starting index of queue vectors
- * @noirq_dyn_ctl: register to enable/disable the vector for NOIRQ queues
- * @noirq_dyn_ctl_ena: value to write to the above to enable it
- * @noirq_v_idx: ID of the NOIRQ vector
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
@@ -309,6 +325,7 @@ struct idpf_fsteer_fltr {
  * @tstamp_task: Tx timestamping task
  */
 struct idpf_vport {
+	struct idpf_q_vec_rsrc dflt_qv_rsrc;
 	u16 num_txq;
 	u16 num_complq;
 	u32 txq_desc_count;
@@ -344,14 +361,6 @@ struct idpf_vport {
 	bool default_vport;
 	bool base_rxd;
 
-	u16 num_q_vectors;
-	struct idpf_q_vector *q_vectors;
-	u16 *q_vector_idxs;
-
-	void __iomem *noirq_dyn_ctl;
-	u32 noirq_dyn_ctl_ena;
-	u16 noirq_v_idx;
-
 	u16 max_mtu;
 	u8 default_mac_addr[ETH_ALEN];
 	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 1aad22903b9d..457fb314926c 100644
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
 	u32 rx_itr, tx_itr, val;
@@ -90,8 +92,8 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 	}
 
 	for (i = 0; i < num_vecs; i++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
-		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[i];
+		u16 vec_id = rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
 		u32 spacing;
 
@@ -120,12 +122,12 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 
 	/* Data vector for NOIRQ queues */
 
-	val = reg_vals[vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC].dyn_ctl_reg;
-	vport->noirq_dyn_ctl = idpf_get_reg_addr(adapter, val);
+	val = reg_vals[rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC].dyn_ctl_reg;
+	rsrc->noirq_dyn_ctl = idpf_get_reg_addr(adapter, val);
 
 	val = PF_GLINT_DYN_CTL_WB_ON_ITR_M | PF_GLINT_DYN_CTL_INTENA_MSK_M |
 	      FIELD_PREP(PF_GLINT_DYN_CTL_ITR_INDX_M, IDPF_NO_ITR_UPDATE_IDX);
-	vport->noirq_dyn_ctl_ena = val;
+	rsrc->noirq_dyn_ctl_ena = val;
 
 free_reg_vals:
 	kfree(reg_vals);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 6d9be0b69f45..c4ec081a9917 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -841,6 +841,7 @@ static void idpf_remove_features(struct idpf_vport *vport)
 static void idpf_vport_stop(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_queue_id_reg_info *chunks;
 
 	if (np->state <= __IDPF_VPORT_DOWN)
@@ -852,7 +853,7 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	chunks = &vport->adapter->vport_config[vport->idx]->qid_reg_info;
 
 	idpf_send_disable_vport_msg(vport);
-	idpf_send_disable_queues_msg(vport, chunks);
+	idpf_send_disable_queues_msg(vport, rsrc, chunks);
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 	/* Normally we ask for queues in create_vport, but if the number of
 	 * initially requested queues have changed, for example via ethtool
@@ -865,10 +866,10 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	idpf_remove_features(vport);
 
 	vport->link_up = false;
-	idpf_vport_intr_deinit(vport);
+	idpf_vport_intr_deinit(vport, rsrc);
 	idpf_xdp_rxq_info_deinit_all(vport);
 	idpf_vport_queues_rel(vport);
-	idpf_vport_intr_rel(vport);
+	idpf_vport_intr_rel(rsrc);
 	np->state = __IDPF_VPORT_DOWN;
 }
 
@@ -928,6 +929,7 @@ static void idpf_decfg_netdev(struct idpf_vport *vport)
  */
 static void idpf_vport_rel(struct idpf_vport *vport)
 {
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_vector_info vec_info;
@@ -952,13 +954,13 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 
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
 
@@ -1081,6 +1083,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 {
 	struct idpf_rss_data *rss_data;
 	u16 idx = adapter->next_vport;
+	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
 	u16 num_max_q;
 	int err;
@@ -1128,8 +1131,9 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	vport->default_vport = adapter->num_alloc_vports <
 			       idpf_get_default_vports(adapter);
 
-	vport->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
-	if (!vport->q_vector_idxs)
+	rsrc = &vport->dflt_qv_rsrc;
+	rsrc->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
+	if (!rsrc->q_vector_idxs)
 		goto free_vport;
 
 	err = idpf_vport_init(vport, max_q);
@@ -1162,7 +1166,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 free_qreg_chunks:
 	kfree(adapter->vport_config[idx]->qid_reg_info.queue_chunks);
 free_vector_idxs:
-	kfree(vport->q_vector_idxs);
+	kfree(rsrc->q_vector_idxs);
 free_vport:
 	kfree(vport);
 
@@ -1335,6 +1339,7 @@ static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
 static int idpf_vport_open(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_queue_id_reg_info *chunks;
@@ -1346,7 +1351,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	/* we do not allow interface up just yet */
 	netif_carrier_off(vport->netdev);
 
-	err = idpf_vport_intr_alloc(vport);
+	err = idpf_vport_intr_alloc(vport, rsrc);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to allocate interrupts for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1367,7 +1372,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto queues_rel;
 	}
 
-	err = idpf_vport_intr_init(vport);
+	err = idpf_vport_intr_init(vport, rsrc);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize interrupts for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1398,7 +1403,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto intr_deinit;
 	}
 
-	idpf_vport_intr_ena(vport);
+	idpf_vport_intr_ena(vport, rsrc);
 
 	err = idpf_send_config_queues_msg(vport);
 	if (err) {
@@ -1455,17 +1460,17 @@ static int idpf_vport_open(struct idpf_vport *vport)
 disable_vport:
 	idpf_send_disable_vport_msg(vport);
 disable_queues:
-	idpf_send_disable_queues_msg(vport, chunks);
+	idpf_send_disable_queues_msg(vport, rsrc, chunks);
 unmap_queue_vectors:
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 rxq_deinit:
 	idpf_xdp_rxq_info_deinit_all(vport);
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
@@ -1952,7 +1957,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	memcpy(vport, new_vport, offsetof(struct idpf_vport, link_up));
 
 	if (reset_cause == IDPF_SR_Q_CHANGE)
-		idpf_vport_alloc_vec_indexes(vport);
+		idpf_vport_alloc_vec_indexes(vport, &vport->dflt_qv_rsrc);
 
 	err = idpf_set_real_num_queues(vport);
 	if (err)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index b63203963cb4..7bd6a8e9ef42 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3672,39 +3672,34 @@ static irqreturn_t idpf_vport_intr_clean_queues(int __always_unused irq,
 
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
@@ -3716,8 +3711,8 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 		q_vector->rx = NULL;
 	}
 
-	kfree(vport->q_vectors);
-	vport->q_vectors = NULL;
+	kfree(rsrc->q_vectors);
+	rsrc->q_vectors = NULL;
 }
 
 static void idpf_q_vector_set_napi(struct idpf_q_vector *q_vector, bool link)
@@ -3737,21 +3732,22 @@ static void idpf_q_vector_set_napi(struct idpf_q_vector *q_vector, bool link)
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
 
 		idpf_q_vector_set_napi(q_vector, false);
@@ -3761,16 +3757,15 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 
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
 
-	writel(0, vport->noirq_dyn_ctl);
+	writel(0, rsrc->noirq_dyn_ctl);
 
-	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++)
+	for (u16 q_idx = 0; q_idx < rsrc->num_q_vectors; q_idx++)
 		writel(0, q_vector[q_idx].intr_reg.dyn_ctl);
 }
 
@@ -3908,8 +3903,10 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
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
@@ -3918,11 +3915,11 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
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
@@ -3952,9 +3949,9 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 
 free_q_irqs:
 	while (--vector >= 0) {
-		vidx = vport->q_vector_idxs[vector];
+		vidx = rsrc->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
-		kfree(free_irq(irq_num, &vport->q_vectors[vector]));
+		kfree(free_irq(irq_num, &rsrc->q_vectors[vector]));
 	}
 
 	return err;
@@ -3983,15 +3980,16 @@ void idpf_vport_intr_write_itr(struct idpf_q_vector *q_vector, u16 itr, bool tx)
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
@@ -4014,19 +4012,21 @@ static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
 			idpf_vport_intr_update_itr_ena_irq(qv);
 	}
 
-	writel(vport->noirq_dyn_ctl_ena, vport->noirq_dyn_ctl);
+	writel(rsrc->noirq_dyn_ctl_ena, rsrc->noirq_dyn_ctl);
 }
 
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
@@ -4098,14 +4098,12 @@ static void idpf_init_dim(struct idpf_q_vector *qv)
 
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
@@ -4224,10 +4222,12 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
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
 	u16 num_txq_grp = vport->num_txq_grp - vport->num_xdp_txq;
 	bool split = idpf_is_queue_model_split(vport->rxq_model);
@@ -4238,7 +4238,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 	for (i = 0, qv_idx = 0; i < vport->num_rxq_grp; i++) {
 		u16 num_rxq;
 
-		if (qv_idx >= vport->num_q_vectors)
+		if (qv_idx >= rsrc->num_q_vectors)
 			qv_idx = 0;
 
 		rx_qgrp = &vport->rxq_grps[i];
@@ -4254,7 +4254,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
 				q = rx_qgrp->singleq.rxqs[j];
-			q->q_vector = &vport->q_vectors[qv_idx];
+			q->q_vector = &rsrc->q_vectors[qv_idx];
 			q_index = q->q_vector->num_rxq;
 			q->q_vector->rx[q_index] = q;
 			q->q_vector->num_rxq++;
@@ -4268,7 +4268,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 				struct idpf_buf_queue *bufq;
 
 				bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
-				bufq->q_vector = &vport->q_vectors[qv_idx];
+				bufq->q_vector = &rsrc->q_vectors[qv_idx];
 				q_index = bufq->q_vector->num_bufq;
 				bufq->q_vector->bufq[q_index] = bufq;
 				bufq->q_vector->num_bufq++;
@@ -4283,7 +4283,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 	for (i = 0, qv_idx = 0; i < num_txq_grp; i++) {
 		u16 num_txq;
 
-		if (qv_idx >= vport->num_q_vectors)
+		if (qv_idx >= rsrc->num_q_vectors)
 			qv_idx = 0;
 
 		tx_qgrp = &vport->txq_grps[i];
@@ -4293,14 +4293,14 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
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
 
@@ -4311,10 +4311,12 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
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
@@ -4323,10 +4325,10 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 
 	ac = adapter->req_vec_chunks;
 	if (!ac) {
-		for (i = 0; i < vport->num_q_vectors; i++)
-			vport->q_vectors[i].v_idx = vport->q_vector_idxs[i];
+		for (i = 0; i < rsrc->num_q_vectors; i++)
+			rsrc->q_vectors[i].v_idx = rsrc->q_vector_idxs[i];
 
-		vport->noirq_v_idx = vport->q_vector_idxs[i];
+		rsrc->noirq_v_idx = rsrc->q_vector_idxs[i];
 
 		return 0;
 	}
@@ -4338,10 +4340,10 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 
 	idpf_get_vec_ids(adapter, vecids, total_vecs, &ac->vchunks);
 
-	for (i = 0; i < vport->num_q_vectors; i++)
-		vport->q_vectors[i].v_idx = vecids[vport->q_vector_idxs[i]];
+	for (i = 0; i < rsrc->num_q_vectors; i++)
+		rsrc->q_vectors[i].v_idx = vecids[rsrc->q_vector_idxs[i]];
 
-	vport->noirq_v_idx = vecids[vport->q_vector_idxs[i]];
+	rsrc->noirq_v_idx = vecids[rsrc->q_vector_idxs[i]];
 
 	kfree(vecids);
 
@@ -4351,21 +4353,24 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
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
@@ -4377,37 +4382,40 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
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
 	struct idpf_vport_user_config_data *user_config;
 	struct idpf_q_vector *q_vector;
 	struct idpf_q_coalesce *q_coal;
-	u32 complqs_per_vector, v_idx;
+	u32 complqs_per_vector;
 	u16 idx = vport->idx;
 
 	user_config = &vport->adapter->vport_config[idx]->user_config;
-	vport->q_vectors = kcalloc(vport->num_q_vectors,
-				   sizeof(struct idpf_q_vector), GFP_KERNEL);
-	if (!vport->q_vectors)
+
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
 		q_coal = &user_config->q_coalesce[v_idx];
 		q_vector->vport = vport;
 
@@ -4448,7 +4456,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 	return 0;
 
 error:
-	idpf_vport_intr_rel(vport);
+	idpf_vport_intr_rel(rsrc);
 
 	return -ENOMEM;
 }
@@ -4456,40 +4464,41 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
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
index 0f87e4de02cd..675d9e1ed561 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1076,12 +1076,16 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
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
index a6993a01a9b0..574dadc6e190 100644
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
 	u32 rx_itr, tx_itr, val;
@@ -89,8 +91,8 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 	}
 
 	for (i = 0; i < num_vecs; i++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
-		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[i];
+		u16 vec_id = rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
 		u32 spacing;
 
@@ -119,12 +121,12 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 
 	/* Data vector for NOIRQ queues */
 
-	val = reg_vals[vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC].dyn_ctl_reg;
-	vport->noirq_dyn_ctl = idpf_get_reg_addr(adapter, val);
+	val = reg_vals[rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC].dyn_ctl_reg;
+	rsrc->noirq_dyn_ctl = idpf_get_reg_addr(adapter, val);
 
 	val = VF_INT_DYN_CTLN_WB_ON_ITR_M | VF_INT_DYN_CTLN_INTENA_MSK_M |
 	      FIELD_PREP(VF_INT_DYN_CTLN_ITR_INDX_M, IDPF_NO_ITR_UPDATE_IDX);
-	vport->noirq_dyn_ctl_ena = val;
+	rsrc->noirq_dyn_ctl_ena = val;
 
 free_reg_vals:
 	kfree(reg_vals);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 1b3f9296dd93..65516fb77b20 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1808,6 +1808,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 {
 	struct virtchnl2_queue_vector_maps *vqvm __free(kfree) = NULL;
 	struct virtchnl2_queue_vector *vqv __free(kfree) = NULL;
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_vc_xn_params xn_params = {};
 	u32 config_sz, chunk_sz, buf_sz;
 	u32 num_msgs, num_chunks, num_q;
@@ -1846,7 +1847,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 				v_idx = vec->v_idx;
 				tx_itr_idx = vec->tx_itr_idx;
 			} else {
-				v_idx = vport->noirq_v_idx;
+				v_idx = rsrc->noirq_v_idx;
 				tx_itr_idx = VIRTCHNL2_ITR_IDX_1;
 			}
 
@@ -1878,7 +1879,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 			vqv[k].queue_id = cpu_to_le32(rxq->q_id);
 
 			if (idpf_queue_has(NOIRQ, rxq)) {
-				v_idx = vport->noirq_v_idx;
+				v_idx = rsrc->noirq_v_idx;
 				rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
 			} else {
 				v_idx = rxq->q_vector->v_idx;
@@ -1938,7 +1939,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
 /**
  * idpf_send_enable_queues_msg - send enable queues virtchnl message
- * @vport: Virtual port private data structure
+ * @vport: virtual port private data structure
  * @chunks: queue ids received over mailbox
  *
  * Will send enable queues virtchnl message.  Returns 0 on success, negative on
@@ -1952,13 +1953,15 @@ int idpf_send_enable_queues_msg(struct idpf_vport *vport,
 
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
 	int err;
@@ -3037,6 +3040,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 /**
  * idpf_vport_alloc_vec_indexes - Get relative vector indexes
  * @vport: virtual port data struct
+ * @rsrc: pointer to queue and vector resources
  *
  * This function requests the vector information required for the vport and
  * stores the vector indexes received from the 'global vector distribution'
@@ -3044,13 +3048,14 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
  *
  * Return 0 on success, error on failure
  */
-int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
+int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport,
+				 struct idpf_q_vec_rsrc *rsrc)
 {
 	struct idpf_vector_info vec_info;
 	int num_alloc_vecs;
 	u32 req;
 
-	vec_info.num_curr_vecs = vport->num_q_vectors;
+	vec_info.num_curr_vecs = rsrc->num_q_vectors;
 	if (vec_info.num_curr_vecs)
 		vec_info.num_curr_vecs += IDPF_RESERVED_VECS;
 
@@ -3063,7 +3068,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 	vec_info.index = vport->idx;
 
 	num_alloc_vecs = idpf_req_rel_vector_indexes(vport->adapter,
-						     vport->q_vector_idxs,
+						     rsrc->q_vector_idxs,
 						     &vec_info);
 	if (num_alloc_vecs <= 0) {
 		dev_err(&vport->adapter->pdev->dev, "Vector distribution failed: %d\n",
@@ -3071,7 +3076,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 		return -EINVAL;
 	}
 
-	vport->num_q_vectors = num_alloc_vecs - IDPF_RESERVED_VECS;
+	rsrc->num_q_vectors = num_alloc_vecs - IDPF_RESERVED_VECS;
 
 	return 0;
 }
@@ -3087,6 +3092,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
  */
 int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 {
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_msg;
 	struct idpf_vport_config *vport_config;
@@ -3131,7 +3137,7 @@ int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	idpf_vport_init_num_qs(vport, vport_msg);
 	idpf_vport_calc_num_q_desc(vport);
 	idpf_vport_calc_num_q_groups(vport);
-	idpf_vport_alloc_vec_indexes(vport);
+	idpf_vport_alloc_vec_indexes(vport, rsrc);
 
 	vport->crc_enable = adapter->crc_enable;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 3f7e5e6b235d..0b53c7e8a539 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -137,10 +137,12 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport,
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

