Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6636EB30F1D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 08:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39FC980B1C;
	Fri, 22 Aug 2025 06:39:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nvAeYZ2qbUN8; Fri, 22 Aug 2025 06:39:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D53380B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755844778;
	bh=oaIcKQ2gqV4rKpzL2E5OuYfuQOSdnMh56GTAXxjbF3Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sJGpzqLhIxt+WbyRLJ5OfWkMNxnom9F1BN5RVW8AdQ2TNx5H/SSDe0R3rB7VZCsz7
	 vBrVAs8VF9XFOOfXDX6+Lmvsvza3JrsOPpWhQ4aho9a5qsqtGENpG+k543B4Iccg+w
	 j2rXkMwsCRi2QXufToggud0i0RrL3e4Ewd/lFs4rMfBzqapsZDhar0DukX8ndl8Sp+
	 d31p4lFtDy1gzb3zIXBBtNrYq7lmhsG9jWXmu99ayyhF/+0juXKmC39q/Xkbgwa+Oq
	 saqNKaP1Va5siLtnkPad62ZAyd1UHTMxoapxxoGdNYKqnOa2Xc4d+Oh8b1DSgIQhYt
	 87L6ug1p1W4hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D53380B30;
	Fri, 22 Aug 2025 06:39:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 164A31C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FCDB80B1C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zKgDZyz9Ibrl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 06:39:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 76CC180B03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76CC180B03
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76CC180B03
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:31 +0000 (UTC)
X-CSE-ConnectionGUID: 53MNApQDSTmPFU1AuzrFJg==
X-CSE-MsgGUID: fFdrr/pCQO+Fo0rPVGej4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="75729044"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="75729044"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 23:32:23 -0700
X-CSE-ConnectionGUID: 17JByWzuRy+2QimQfbD2xg==
X-CSE-MsgGUID: LndgwsUeTJ2si6HfXB9OpQ==
X-ExtLoop1: 1
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa003.fm.intel.com with ESMTP; 21 Aug 2025 23:32:23 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: madhu.chittim@intel.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Thu, 21 Aug 2025 23:32:09 -0700
Message-ID: <20250822063215.3911-4-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755844772; x=1787380772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mQ65+VECVnl9FBKfDqDQcYRBKtuBkgldS44WcR4LOYc=;
 b=am7W/mr21ikS/RaB0gN1ao7rXqNAauVgHhT2h5GAdQphwWKqK3bQii5K
 gT/C01ku9tD25ZOkZl9cGj6IhD7zKpf3U6uc8Go6E7FgVEbZs5XwgSiT2
 99tRnB0mtL4loZF6/7JCLlSSDe1xtFdKHRXTOUqLRm26OjZA8AmYqLfBU
 breO0BUrWAn5nEWID7v+g9czMRQRdPNncIUKUlMVkWzFjGTm3lntJwtjP
 2RRE28qTjp5t1LMd8yOTRmcgUcn5Qawszu8NXj+StHwWdtdyACUE51fF2
 SKLxHp2K17l10dzC2WEAbmzJXCFVJ2amLjNV6Kh2EmnzgsMKRiJ3tYLZ8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=am7W/mr2
Subject: [Intel-wired-lan] [PATCH net-next v7 3/9] idpf: introduce
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
index b4b1940cbe40..1b5e292eb8fb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -8,6 +8,7 @@
 struct idpf_adapter;
 struct idpf_vport;
 struct idpf_vport_max_q;
+struct idpf_q_vec_rsrc;
 
 #include <net/pkt_sched.h>
 #include <linux/aer.h>
@@ -201,7 +202,8 @@ struct idpf_vport_max_q {
 struct idpf_reg_ops {
 	void (*ctlq_reg_init)(struct idpf_adapter *adapter,
 			      struct idpf_ctlq_create_info *cq);
-	int (*intr_reg_init)(struct idpf_vport *vport);
+	int (*intr_reg_init)(struct idpf_vport *vport,
+			     struct idpf_q_vec_rsrc *rsrc);
 	void (*mb_intr_reg_init)(struct idpf_adapter *adapter);
 	void (*reset_reg_init)(struct idpf_adapter *adapter);
 	void (*trigger_reset)(struct idpf_adapter *adapter,
@@ -273,8 +275,28 @@ struct idpf_fsteer_fltr {
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
@@ -311,12 +333,6 @@ struct idpf_fsteer_fltr {
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
@@ -328,6 +344,7 @@ struct idpf_fsteer_fltr {
  * @tstamp_task: Tx timestamping task
  */
 struct idpf_vport {
+	struct idpf_q_vec_rsrc dflt_qv_rsrc;
 	u16 num_txq;
 	u16 num_complq;
 	u32 txq_desc_count;
@@ -365,14 +382,6 @@ struct idpf_vport {
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
index 3a04a6bd0d7c..ee93987f9018 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -70,11 +70,13 @@ static void idpf_mb_intr_reg_init(struct idpf_adapter *adapter)
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
@@ -93,8 +95,8 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 	}
 
 	for (i = 0; i < num_vecs; i++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
-		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[i];
+		u16 vec_id = rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
 		u32 spacing;
 
@@ -123,12 +125,12 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 
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
index aca3ed4cc23b..91490d0bbf8d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -891,6 +891,7 @@ static void idpf_remove_features(struct idpf_vport *vport)
 static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_queue_id_reg_info *chunks;
 
 	if (np->state <= __IDPF_VPORT_DOWN)
@@ -905,7 +906,7 @@ static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 	chunks = &vport->adapter->vport_config[vport->idx]->qid_reg_info;
 
 	idpf_send_disable_vport_msg(vport);
-	idpf_send_disable_queues_msg(vport, chunks);
+	idpf_send_disable_queues_msg(vport, rsrc, chunks);
 	idpf_send_map_unmap_queue_vector_msg(vport, false);
 	/* Normally we ask for queues in create_vport, but if the number of
 	 * initially requested queues have changed, for example via ethtool
@@ -918,10 +919,10 @@ static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 	idpf_remove_features(vport);
 
 	vport->link_up = false;
-	idpf_vport_intr_deinit(vport);
+	idpf_vport_intr_deinit(vport, rsrc);
 	idpf_xdp_rxq_info_deinit_all(vport);
 	idpf_vport_queues_rel(vport);
-	idpf_vport_intr_rel(vport);
+	idpf_vport_intr_rel(rsrc);
 	np->state = __IDPF_VPORT_DOWN;
 
 	if (rtnl)
@@ -984,6 +985,7 @@ static void idpf_decfg_netdev(struct idpf_vport *vport)
  */
 static void idpf_vport_rel(struct idpf_vport *vport)
 {
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_vector_info vec_info;
@@ -1008,13 +1010,13 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 
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
 
@@ -1137,6 +1139,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 {
 	struct idpf_rss_data *rss_data;
 	u16 idx = adapter->next_vport;
+	struct idpf_q_vec_rsrc *rsrc;
 	struct idpf_vport *vport;
 	u16 num_max_q;
 	int err;
@@ -1184,8 +1187,9 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	vport->default_vport = adapter->num_alloc_vports <
 			       idpf_get_default_vports(adapter);
 
-	vport->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
-	if (!vport->q_vector_idxs)
+	rsrc = &vport->dflt_qv_rsrc;
+	rsrc->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
+	if (!rsrc->q_vector_idxs)
 		goto free_vport;
 
 	err = idpf_vport_init(vport, max_q);
@@ -1218,7 +1222,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 free_qreg_chunks:
 	kfree(adapter->vport_config[idx]->qid_reg_info.queue_chunks);
 free_vector_idxs:
-	kfree(vport->q_vector_idxs);
+	kfree(rsrc->q_vector_idxs);
 free_vport:
 	kfree(vport);
 
@@ -1392,6 +1396,7 @@ static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
 static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
 	struct idpf_queue_id_reg_info *chunks;
@@ -1406,7 +1411,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	/* we do not allow interface up just yet */
 	netif_carrier_off(vport->netdev);
 
-	err = idpf_vport_intr_alloc(vport);
+	err = idpf_vport_intr_alloc(vport, rsrc);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to allocate interrupts for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1427,7 +1432,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 		goto queues_rel;
 	}
 
-	err = idpf_vport_intr_init(vport);
+	err = idpf_vport_intr_init(vport, rsrc);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize interrupts for vport %u: %d\n",
 			vport->vport_id, err);
@@ -1458,7 +1463,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 		goto intr_deinit;
 	}
 
-	idpf_vport_intr_ena(vport);
+	idpf_vport_intr_ena(vport, rsrc);
 
 	err = idpf_send_config_queues_msg(vport);
 	if (err) {
@@ -1518,17 +1523,17 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
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
 
 err_rtnl_unlock:
 	if (rtnl)
@@ -2028,7 +2033,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	memcpy(vport, new_vport, offsetof(struct idpf_vport, link_up));
 
 	if (reset_cause == IDPF_SR_Q_CHANGE)
-		idpf_vport_alloc_vec_indexes(vport);
+		idpf_vport_alloc_vec_indexes(vport, &vport->dflt_qv_rsrc);
 
 	err = idpf_set_real_num_queues(vport);
 	if (err)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index f1907aeaf83b..f85618ad1af0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3481,39 +3481,34 @@ static irqreturn_t idpf_vport_intr_clean_queues(int __always_unused irq,
 
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
@@ -3525,8 +3520,8 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 		q_vector->rx = NULL;
 	}
 
-	kfree(vport->q_vectors);
-	vport->q_vectors = NULL;
+	kfree(rsrc->q_vectors);
+	rsrc->q_vectors = NULL;
 }
 
 static void idpf_q_vector_set_napi(struct idpf_q_vector *q_vector, bool link)
@@ -3546,21 +3541,22 @@ static void idpf_q_vector_set_napi(struct idpf_q_vector *q_vector, bool link)
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
@@ -3570,16 +3566,15 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 
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
 
@@ -3717,8 +3712,10 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
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
@@ -3727,11 +3724,11 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
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
@@ -3761,9 +3758,9 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 
 free_q_irqs:
 	while (--vector >= 0) {
-		vidx = vport->q_vector_idxs[vector];
+		vidx = rsrc->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
-		kfree(free_irq(irq_num, &vport->q_vectors[vector]));
+		kfree(free_irq(irq_num, &rsrc->q_vectors[vector]));
 	}
 
 	return err;
@@ -3792,15 +3789,16 @@ void idpf_vport_intr_write_itr(struct idpf_q_vector *q_vector, u16 itr, bool tx)
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
@@ -3823,19 +3821,21 @@ static void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
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
@@ -3907,14 +3907,12 @@ static void idpf_init_dim(struct idpf_q_vector *qv)
 
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
@@ -4033,10 +4031,12 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
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
@@ -4047,7 +4047,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 	for (i = 0, qv_idx = 0; i < vport->num_rxq_grp; i++) {
 		u16 num_rxq;
 
-		if (qv_idx >= vport->num_q_vectors)
+		if (qv_idx >= rsrc->num_q_vectors)
 			qv_idx = 0;
 
 		rx_qgrp = &vport->rxq_grps[i];
@@ -4063,7 +4063,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
 			else
 				q = rx_qgrp->singleq.rxqs[j];
-			q->q_vector = &vport->q_vectors[qv_idx];
+			q->q_vector = &rsrc->q_vectors[qv_idx];
 			q_index = q->q_vector->num_rxq;
 			q->q_vector->rx[q_index] = q;
 			q->q_vector->num_rxq++;
@@ -4077,7 +4077,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 				struct idpf_buf_queue *bufq;
 
 				bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
-				bufq->q_vector = &vport->q_vectors[qv_idx];
+				bufq->q_vector = &rsrc->q_vectors[qv_idx];
 				q_index = bufq->q_vector->num_bufq;
 				bufq->q_vector->bufq[q_index] = bufq;
 				bufq->q_vector->num_bufq++;
@@ -4092,7 +4092,7 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
 	for (i = 0, qv_idx = 0; i < num_txq_grp; i++) {
 		u16 num_txq;
 
-		if (qv_idx >= vport->num_q_vectors)
+		if (qv_idx >= rsrc->num_q_vectors)
 			qv_idx = 0;
 
 		tx_qgrp = &vport->txq_grps[i];
@@ -4102,14 +4102,14 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
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
 
@@ -4120,10 +4120,12 @@ static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
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
@@ -4132,10 +4134,10 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 
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
@@ -4147,10 +4149,10 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 
 	idpf_get_vec_ids(adapter, vecids, total_vecs, &ac->vchunks);
 
-	for (i = 0; i < vport->num_q_vectors; i++)
-		vport->q_vectors[i].v_idx = vecids[vport->q_vector_idxs[i]];
+	for (i = 0; i < rsrc->num_q_vectors; i++)
+		rsrc->q_vectors[i].v_idx = vecids[rsrc->q_vector_idxs[i]];
 
-	vport->noirq_v_idx = vecids[vport->q_vector_idxs[i]];
+	rsrc->noirq_v_idx = vecids[rsrc->q_vector_idxs[i]];
 
 	kfree(vecids);
 
@@ -4160,21 +4162,24 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
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
@@ -4186,37 +4191,40 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
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
 
@@ -4257,7 +4265,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 	return 0;
 
 error:
-	idpf_vport_intr_rel(vport);
+	idpf_vport_intr_rel(rsrc);
 
 	return -ENOMEM;
 }
@@ -4265,40 +4273,41 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
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
index 39a9c6bd6055..e57d14b4369c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1037,12 +1037,16 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
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
index 4cc58c83688c..bc47e194fbd2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -69,11 +69,13 @@ static void idpf_vf_mb_intr_reg_init(struct idpf_adapter *adapter)
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
@@ -92,8 +94,8 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 	}
 
 	for (i = 0; i < num_vecs; i++) {
-		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
-		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		struct idpf_q_vector *q_vector = &rsrc->q_vectors[i];
+		u16 vec_id = rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
 		struct idpf_intr_reg *intr = &q_vector->intr_reg;
 		u32 spacing;
 
@@ -122,12 +124,12 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 
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
index 20721bc65bd0..f339bf9d4c18 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1949,6 +1949,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 	struct idpf_vc_xn_params xn_params = {
 		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
 	};
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	u32 config_sz, chunk_sz, buf_sz;
 	u32 num_msgs, num_chunks, num_q;
 	ssize_t reply_sz;
@@ -1986,7 +1987,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 				v_idx = vec->v_idx;
 				tx_itr_idx = vec->tx_itr_idx;
 			} else {
-				v_idx = vport->noirq_v_idx;
+				v_idx = rsrc->noirq_v_idx;
 				tx_itr_idx = VIRTCHNL2_ITR_IDX_1;
 			}
 
@@ -2018,7 +2019,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 			vqv[k].queue_id = cpu_to_le32(rxq->q_id);
 
 			if (idpf_queue_has(NOIRQ, rxq)) {
-				v_idx = vport->noirq_v_idx;
+				v_idx = rsrc->noirq_v_idx;
 				rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
 			} else {
 				v_idx = rxq->q_vector->v_idx;
@@ -2075,7 +2076,7 @@ int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
 
 /**
  * idpf_send_enable_queues_msg - send enable queues virtchnl message
- * @vport: Virtual port private data structure
+ * @vport: virtual port private data structure
  * @chunks: queue ids received over mailbox
  *
  * Will send enable queues virtchnl message.  Returns 0 on success, negative on
@@ -2089,13 +2090,15 @@ int idpf_send_enable_queues_msg(struct idpf_vport *vport,
 
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
@@ -3199,6 +3202,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 /**
  * idpf_vport_alloc_vec_indexes - Get relative vector indexes
  * @vport: virtual port data struct
+ * @rsrc: pointer to queue and vector resources
  *
  * This function requests the vector information required for the vport and
  * stores the vector indexes received from the 'global vector distribution'
@@ -3206,13 +3210,14 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
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
 
@@ -3225,7 +3230,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 	vec_info.index = vport->idx;
 
 	num_alloc_vecs = idpf_req_rel_vector_indexes(vport->adapter,
-						     vport->q_vector_idxs,
+						     rsrc->q_vector_idxs,
 						     &vec_info);
 	if (num_alloc_vecs <= 0) {
 		dev_err(&vport->adapter->pdev->dev, "Vector distribution failed: %d\n",
@@ -3233,7 +3238,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
 		return -EINVAL;
 	}
 
-	vport->num_q_vectors = num_alloc_vecs - IDPF_RESERVED_VECS;
+	rsrc->num_q_vectors = num_alloc_vecs - IDPF_RESERVED_VECS;
 
 	return 0;
 }
@@ -3249,6 +3254,7 @@ int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
  */
 int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 {
+	struct idpf_q_vec_rsrc *rsrc = &vport->dflt_qv_rsrc;
 	struct idpf_adapter *adapter = vport->adapter;
 	struct virtchnl2_create_vport *vport_msg;
 	struct idpf_vport_config *vport_config;
@@ -3293,7 +3299,7 @@ int idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	idpf_vport_init_num_qs(vport, vport_msg);
 	idpf_vport_calc_num_q_desc(vport);
 	idpf_vport_calc_num_q_groups(vport);
-	idpf_vport_alloc_vec_indexes(vport);
+	idpf_vport_alloc_vec_indexes(vport, rsrc);
 
 	vport->crc_enable = adapter->crc_enable;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 9f183857a097..bc1825b7a1f2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -136,10 +136,12 @@ int idpf_send_delete_queues_msg(struct idpf_vport *vport,
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

