Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A58A3770C55
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Aug 2023 01:21:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 337E441EDA;
	Fri,  4 Aug 2023 23:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 337E441EDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691191306;
	bh=z1RWrOJBTHKMpHqp4o6rbYoHYh71lbRxwLlSIHT+dxo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MhMS2U/NR6TMZLW9GVONyqLJ01OkktxX7GKaESJbaIqtsqVFd7Xc8KwU456OOyv+z
	 tQDJSAdbqiDou5f3nVjNk+S8pUr0DQOduQjIkGoPLHeLRwZtNMOcFVgz/TwN21k8V2
	 qdal1FvyhBWpFPD6CxWTEoOtut16XIrtUdXza876+/cZPS05YyR7F6v4Wx+fociX9O
	 CQs5ga8RI6vX3thDCeAzLGHNZkNHtvdVlvPenVtYoMC/Iq/DlfeCNfKSD5CuO37d8M
	 MELVo0WLCufr0sGkGcf1aJlufIn8vwbiu6VVzvgzP0rPG4EtuDnJhjmaOJy1N/8lEw
	 xBagOQqfG021Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id teDlSJ2axcbc; Fri,  4 Aug 2023 23:21:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EE1B40228;
	Fri,  4 Aug 2023 23:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EE1B40228
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BD1E1BF327
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 23:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8236404EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 23:20:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8236404EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z_C3lz1tqFfG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 23:20:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBFE240900
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 23:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBFE240900
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="401226428"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="401226428"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 16:20:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="853984349"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="853984349"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2023 16:20:24 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Aug 2023 16:19:22 -0700
Message-Id: <20230804231929.168064-10-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230804231929.168064-1-pavan.kumar.linga@intel.com>
References: <20230804231929.168064-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691191225; x=1722727225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0z2McBI4zK7OSS57xPiEsWtUo8ivZwkgtFLRhXlGmeY=;
 b=eHuXRBAblJ6ppRZ57mYPVwZFLHu4bMsdc7oS1RnNjYxSXSPj5dM0a5Di
 gphhxaRRrrNB0gTOHnGPzUQw8e76NAICxt13E1Mlz6esF2ZUwhLK0gMn3
 2u70BDB6wE17X2oSg7TN0NoONY9DEyfamSSgtDeYLB/VtXvE6905x+ShF
 eSxZvgh5PUC7UG+PiUhpPL+Mv0Hgt8J2+Y1ASVOHQDrviTkdQx3AOizJs
 TiwKfGrffcbr47HTlbUPmR0/aMbVWuphFjz6+22e4AsknWlXKPP01URl5
 iX7yuGpQS06ZBXvP/i/J1TPGAMShoPk0Mpwu+4XY2O641QZidcQSBHiAW
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eHuXRBAb
Subject: [Intel-wired-lan] [PATCH iwl-next v9 09/15] idpf: initialize
 interrupts and enable vport
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
Cc: willemb@google.com, Phani Burra <phani.r.burra@intel.com>, decot@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To further continue 'vport open', initialize all the resources
required for the interrupts. To start with, initialize the
queue vector indices with the ones received from the device
Control Plane. Now that all the TX and RX queues are initialized,
map the RX descriptor and buffer queues as well as TX completion
queues to the allocated vectors. Initialize and enable the napi
handler for the napi polling. Finally, request the IRQs for the
interrupt vectors from the stack and setup the interrupt handler.

Once the interrupt init is done, send 'map queue vector', 'enable
queues' and 'enable vport' virtchnl messages to the CP to complete
the 'vport open' flow.

Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  45 ++
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  58 ++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  11 +
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  25 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 295 +++++++++-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  11 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 361 +++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  33 ++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  57 ++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 527 ++++++++++++++++++
 10 files changed, 1420 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index ae0dc602d2c7..6bb4bd8abf0b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -156,12 +156,14 @@ struct idpf_vport_max_q {
 /**
  * struct idpf_reg_ops - Device specific register operation function pointers
  * @ctlq_reg_init: Mailbox control queue register initialization
+ * @intr_reg_init: Traffic interrupt register initialization
  * @mb_intr_reg_init: Mailbox interrupt register initialization
  * @reset_reg_init: Reset register initialization
  * @trigger_reset: Trigger a reset to occur
  */
 struct idpf_reg_ops {
 	void (*ctlq_reg_init)(struct idpf_ctlq_create_info *cq);
+	int (*intr_reg_init)(struct idpf_vport *vport);
 	void (*mb_intr_reg_init)(struct idpf_adapter *adapter);
 	void (*reset_reg_init)(struct idpf_adapter *adapter);
 	void (*trigger_reset)(struct idpf_adapter *adapter,
@@ -184,12 +186,24 @@ struct idpf_dev_ops {
 #define IDPF_FOREACH_VPORT_VC_STATE(STATE)	\
 	STATE(IDPF_VC_CREATE_VPORT)		\
 	STATE(IDPF_VC_CREATE_VPORT_ERR)		\
+	STATE(IDPF_VC_ENA_VPORT)		\
+	STATE(IDPF_VC_ENA_VPORT_ERR)		\
+	STATE(IDPF_VC_DIS_VPORT)		\
+	STATE(IDPF_VC_DIS_VPORT_ERR)		\
 	STATE(IDPF_VC_DESTROY_VPORT)		\
 	STATE(IDPF_VC_DESTROY_VPORT_ERR)	\
 	STATE(IDPF_VC_CONFIG_TXQ)		\
 	STATE(IDPF_VC_CONFIG_TXQ_ERR)		\
 	STATE(IDPF_VC_CONFIG_RXQ)		\
 	STATE(IDPF_VC_CONFIG_RXQ_ERR)		\
+	STATE(IDPF_VC_ENA_QUEUES)		\
+	STATE(IDPF_VC_ENA_QUEUES_ERR)		\
+	STATE(IDPF_VC_DIS_QUEUES)		\
+	STATE(IDPF_VC_DIS_QUEUES_ERR)		\
+	STATE(IDPF_VC_MAP_IRQ)			\
+	STATE(IDPF_VC_MAP_IRQ_ERR)		\
+	STATE(IDPF_VC_UNMAP_IRQ)		\
+	STATE(IDPF_VC_UNMAP_IRQ_ERR)		\
 	STATE(IDPF_VC_ALLOC_VECTORS)		\
 	STATE(IDPF_VC_ALLOC_VECTORS_ERR)	\
 	STATE(IDPF_VC_DEALLOC_VECTORS)		\
@@ -277,8 +291,10 @@ enum idpf_vport_state {
  * @base_rxd: True if the driver should use base descriptors instead of flex
  * @num_q_vectors: Number of IRQ vectors allocated
  * @q_vectors: Array of queue vectors
+ * @q_vector_idxs: Starting index of queue vectors
  * @max_mtu: device given max possible MTU
  * @default_mac_addr: device will give a default MAC to use
+ * @link_up: True if link is up
  * @vc_msg: Virtchnl message buffer
  * @vc_state: Virtchnl message state
  * @state: See enum idpf_vport_state
@@ -321,9 +337,12 @@ struct idpf_vport {
 
 	u16 num_q_vectors;
 	struct idpf_q_vector *q_vectors;
+	u16 *q_vector_idxs;
 	u16 max_mtu;
 	u8 default_mac_addr[ETH_ALEN];
 
+	bool link_up;
+
 	char vc_msg[IDPF_CTLQ_MAX_BUF_LEN];
 	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
 
@@ -400,6 +419,22 @@ struct idpf_avail_queue_info {
 	u16 avail_complq;
 };
 
+/**
+ * struct idpf_vector_info - Utility structure to pass function arguments as a
+ *			     structure
+ * @num_req_vecs: Vectors required based on the number of queues updated by the
+ *		  user via ethtool
+ * @num_curr_vecs: Current number of vectors, must be >= @num_req_vecs
+ * @index: Relative starting index for vectors
+ * @default_vport: Vectors are for default vport
+ */
+struct idpf_vector_info {
+	u16 num_req_vecs;
+	u16 num_curr_vecs;
+	u16 index;
+	bool default_vport;
+};
+
 /**
  * struct idpf_vector_lifo - Stack to maintain vector indexes used for vector
  *			     distribution algorithm
@@ -735,6 +770,10 @@ int idpf_vc_core_init(struct idpf_adapter *adapter);
 void idpf_vc_core_deinit(struct idpf_adapter *adapter);
 int idpf_intr_req(struct idpf_adapter *adapter);
 void idpf_intr_rel(struct idpf_adapter *adapter);
+int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
+			   struct idpf_vec_regs *reg_vals);
+int idpf_send_enable_vport_msg(struct idpf_vport *vport);
+int idpf_send_disable_vport_msg(struct idpf_vport *vport);
 int idpf_send_destroy_vport_msg(struct idpf_vport *vport);
 int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
 int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get);
@@ -742,6 +781,9 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get);
 int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter);
 int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors);
 void idpf_deinit_task(struct idpf_adapter *adapter);
+int idpf_req_rel_vector_indexes(struct idpf_adapter *adapter,
+				u16 *q_vector_idxs,
+				struct idpf_vector_info *vec_info);
 int idpf_get_vec_ids(struct idpf_adapter *adapter,
 		     u16 *vecids, int num_vecids,
 		     struct virtchnl2_vector_chunks *chunks);
@@ -754,13 +796,16 @@ int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
 void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
 int idpf_add_del_mac_filters(struct idpf_vport *vport, bool add, bool async);
+int idpf_send_disable_queues_msg(struct idpf_vport *vport);
 void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
 u32 idpf_get_vport_id(struct idpf_vport *vport);
 int idpf_vport_queue_ids_init(struct idpf_vport *vport);
 int idpf_queue_reg_init(struct idpf_vport *vport);
 int idpf_send_config_queues_msg(struct idpf_vport *vport);
+int idpf_send_enable_queues_msg(struct idpf_vport *vport);
 int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 			       struct idpf_vport_max_q *max_q);
 int idpf_check_supported_desc_ids(struct idpf_vport *vport);
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 11cc33eb0b44..4e3a554abf02 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -4,6 +4,8 @@
 #include "idpf.h"
 #include "idpf_lan_pf_regs.h"
 
+#define IDPF_PF_ITR_IDX_SPACING		0x4
+
 /**
  * idpf_ctlq_reg_init - initialize default mailbox registers
  * @cq: pointer to the array of create control queues
@@ -60,6 +62,61 @@ static void idpf_mb_intr_reg_init(struct idpf_adapter *adapter)
 	intr->icr_ena_ctlq_m = PF_INT_DIR_OICR_ENA_M;
 }
 
+/**
+ * idpf_intr_reg_init - Initialize interrupt registers
+ * @vport: virtual port structure
+ */
+static int idpf_intr_reg_init(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int num_vecs = vport->num_q_vectors;
+	struct idpf_vec_regs *reg_vals;
+	int num_regs, i, err = 0;
+	u32 rx_itr, tx_itr;
+	u16 total_vecs;
+
+	total_vecs = idpf_get_reserved_vecs(vport->adapter);
+	reg_vals = kcalloc(total_vecs, sizeof(struct idpf_vec_regs),
+			   GFP_KERNEL);
+	if (!reg_vals)
+		return -ENOMEM;
+
+	num_regs = idpf_get_reg_intr_vecs(vport, reg_vals);
+	if (num_regs < num_vecs) {
+		err = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	for (i = 0; i < num_vecs; i++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
+		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		struct idpf_intr_reg *intr = &q_vector->intr_reg;
+		u32 spacing;
+
+		intr->dyn_ctl = idpf_get_reg_addr(adapter,
+						  reg_vals[vec_id].dyn_ctl_reg);
+		intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
+		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
+		intr->dyn_ctl_intrvl_s = PF_GLINT_DYN_CTL_INTERVAL_S;
+
+		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
+					       IDPF_PF_ITR_IDX_SPACING);
+		rx_itr = PF_GLINT_ITR_ADDR(VIRTCHNL2_ITR_IDX_0,
+					   reg_vals[vec_id].itrn_reg,
+					   spacing);
+		tx_itr = PF_GLINT_ITR_ADDR(VIRTCHNL2_ITR_IDX_1,
+					   reg_vals[vec_id].itrn_reg,
+					   spacing);
+		intr->rx_itr = idpf_get_reg_addr(adapter, rx_itr);
+		intr->tx_itr = idpf_get_reg_addr(adapter, tx_itr);
+	}
+
+free_reg_vals:
+	kfree(reg_vals);
+
+	return err;
+}
+
 /**
  * idpf_reset_reg_init - Initialize reset registers
  * @adapter: Driver specific private structure
@@ -91,6 +148,7 @@ static void idpf_trigger_reset(struct idpf_adapter *adapter,
 static void idpf_reg_ops_init(struct idpf_adapter *adapter)
 {
 	adapter->dev_ops.reg_ops.ctlq_reg_init = idpf_ctlq_reg_init;
+	adapter->dev_ops.reg_ops.intr_reg_init = idpf_intr_reg_init;
 	adapter->dev_ops.reg_ops.mb_intr_reg_init = idpf_mb_intr_reg_init;
 	adapter->dev_ops.reg_ops.reset_reg_init = idpf_reset_reg_init;
 	adapter->dev_ops.reg_ops.trigger_reset = idpf_trigger_reset;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
index a832319f535c..24edb8a6ec2e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
@@ -74,6 +74,17 @@
 #define PF_GLINT_DYN_CTL_WB_ON_ITR_M	BIT(PF_GLINT_DYN_CTL_WB_ON_ITR_S)
 #define PF_GLINT_DYN_CTL_INTENA_MSK_S	31
 #define PF_GLINT_DYN_CTL_INTENA_MSK_M	BIT(PF_GLINT_DYN_CTL_INTENA_MSK_S)
+/* _ITR is ITR index, _INT is interrupt index, _itrn_indx_spacing is
+ * spacing b/w itrn registers of the same vector.
+ */
+#define PF_GLINT_ITR_ADDR(_ITR, _reg_start, _itrn_indx_spacing)	\
+	((_reg_start) + ((_ITR) * (_itrn_indx_spacing)))
+/* For PF, itrn_indx_spacing is 4 and itrn_reg_spacing is 0x1000 */
+#define PF_GLINT_ITR(_ITR, _INT)	\
+	(PF_GLINT_BASE + (((_ITR) + 1) * 4) + ((_INT) * 0x1000))
+#define PF_GLINT_ITR_MAX_INDEX		2
+#define PF_GLINT_ITR_INTERVAL_S		0
+#define PF_GLINT_ITR_INTERVAL_M		GENMASK(11, 0)
 
 /* Generic registers */
 #define PF_INT_DIR_OICR_ENA		0x08406000
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h b/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
index d1bff18e2a7d..3d73b6c76863 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
@@ -88,6 +88,31 @@
 #define VF_INT_DYN_CTLN_WB_ON_ITR_M	BIT(VF_INT_DYN_CTLN_WB_ON_ITR_S)
 #define VF_INT_DYN_CTLN_INTENA_MSK_S	31
 #define VF_INT_DYN_CTLN_INTENA_MSK_M	BIT(VF_INT_DYN_CTLN_INTENA_MSK_S)
+/* _ITR is ITR index, _INT is interrupt index, _itrn_indx_spacing is spacing
+ * b/w itrn registers of the same vector
+ */
+#define VF_INT_ITR0(_ITR)		(0x00004C00 + ((_ITR) * 4))
+#define VF_INT_ITRN_ADDR(_ITR, _reg_start, _itrn_indx_spacing)	\
+	((_reg_start) + ((_ITR) * (_itrn_indx_spacing)))
+/* For VF with 16 vector support, itrn_reg_spacing is 0x4, itrn_indx_spacing
+ * is 0x40 and base register offset is 0x00002800
+ */
+#define VF_INT_ITRN(_INT, _ITR)		\
+	(0x00002800 + ((_INT) * 4) + ((_ITR) * 0x40))
+/* For VF with 64 vector support, itrn_reg_spacing is 0x4, itrn_indx_spacing
+ * is 0x100 and base register offset is 0x00002C00
+ */
+#define VF_INT_ITRN_64(_INT, _ITR)	\
+	(0x00002C00 + ((_INT) * 4) + ((_ITR) * 0x100))
+/* For VF with 2k vector support, itrn_reg_spacing is 0x4, itrn_indx_spacing
+ * is 0x2000 and base register offset is 0x00072000
+ */
+#define VF_INT_ITRN_2K(_INT, _ITR)	\
+	(0x00072000 + ((_INT) * 4) + ((_ITR) * 0x2000))
+#define VF_INT_ITRN_MAX_INDEX		2
+#define VF_INT_ITRN_INTERVAL_S		0
+#define VF_INT_ITRN_INTERVAL_M		GENMASK(11, 0)
+#define VF_INT_PBA_CLEAR		0x00008900
 
 #define VF_INT_ICR0_ENA1		0x00005000
 #define VF_INT_ICR0_ENA1_ADMINQ_S	30
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 7ab1f589dd69..82628d8a67b1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -183,6 +183,140 @@ static int idpf_mb_intr_init(struct idpf_adapter *adapter)
 	return idpf_mb_intr_req_irq(adapter);
 }
 
+/**
+ * idpf_vector_lifo_push - push MSIX vector index onto stack
+ * @adapter: private data struct
+ * @vec_idx: vector index to store
+ */
+static int idpf_vector_lifo_push(struct idpf_adapter *adapter, u16 vec_idx)
+{
+	struct idpf_vector_lifo *stack = &adapter->vector_stack;
+
+	lockdep_assert_held(&adapter->vector_lock);
+
+	if (stack->top == stack->base) {
+		dev_err(&adapter->pdev->dev, "Exceeded the vector stack limit: %d\n",
+			stack->top);
+		return -EINVAL;
+	}
+
+	stack->vec_idx[--stack->top] = vec_idx;
+
+	return 0;
+}
+
+/**
+ * idpf_vector_lifo_pop - pop MSIX vector index from stack
+ * @adapter: private data struct
+ */
+static int idpf_vector_lifo_pop(struct idpf_adapter *adapter)
+{
+	struct idpf_vector_lifo *stack = &adapter->vector_stack;
+
+	lockdep_assert_held(&adapter->vector_lock);
+
+	if (stack->top == stack->size) {
+		dev_err(&adapter->pdev->dev, "No interrupt vectors are available to distribute!\n");
+
+		return -EINVAL;
+	}
+
+	return stack->vec_idx[stack->top++];
+}
+
+/**
+ * idpf_vector_stash - Store the vector indexes onto the stack
+ * @adapter: private data struct
+ * @q_vector_idxs: vector index array
+ * @vec_info: info related to the number of vectors
+ *
+ * This function is a no-op if there are no vectors indexes to be stashed
+ */
+static void idpf_vector_stash(struct idpf_adapter *adapter, u16 *q_vector_idxs,
+			      struct idpf_vector_info *vec_info)
+{
+	int i, base = 0;
+	u16 vec_idx;
+
+	lockdep_assert_held(&adapter->vector_lock);
+
+	if (!vec_info->num_curr_vecs)
+		return;
+
+	/* For default vports, no need to stash vector allocated from the
+	 * default pool onto the stack
+	 */
+	if (vec_info->default_vport)
+		base = IDPF_MIN_Q_VEC;
+
+	for (i = vec_info->num_curr_vecs - 1; i >= base ; i--) {
+		vec_idx = q_vector_idxs[i];
+		idpf_vector_lifo_push(adapter, vec_idx);
+		adapter->num_avail_msix++;
+	}
+}
+
+/**
+ * idpf_req_rel_vector_indexes - Request or release MSIX vector indexes
+ * @adapter: driver specific private structure
+ * @q_vector_idxs: vector index array
+ * @vec_info: info related to the number of vectors
+ *
+ * This is the core function to distribute the MSIX vectors acquired from the
+ * OS. It expects the caller to pass the number of vectors required and
+ * also previously allocated. First, it stashes previously allocated vector
+ * indexes on to the stack and then figures out if it can allocate requested
+ * vectors. It can wait on acquiring the mutex lock. If the caller passes 0 as
+ * requested vectors, then this function just stashes the already allocated
+ * vectors and returns 0.
+ *
+ * Returns actual number of vectors allocated on success, error value on failure
+ * If 0 is returned, implies the stack has no vectors to allocate which is also
+ * a failure case for the caller
+ */
+int idpf_req_rel_vector_indexes(struct idpf_adapter *adapter, u16 *q_vector_idxs,
+				struct idpf_vector_info *vec_info)
+{
+	u16 num_req_vecs, num_alloc_vecs = 0, max_vecs;
+	struct idpf_vector_lifo *stack;
+	int i, j, vecid;
+
+	mutex_lock(&adapter->vector_lock);
+	stack = &adapter->vector_stack;
+	num_req_vecs = vec_info->num_req_vecs;
+
+	/* Stash interrupt vector indexes onto the stack if required */
+	idpf_vector_stash(adapter, q_vector_idxs, vec_info);
+
+	if (!num_req_vecs)
+		goto rel_lock;
+
+	if (vec_info->default_vport) {
+		/* As IDPF_MIN_Q_VEC per default vport is put aside in the
+		 * default pool of the stack, use them for default vports
+		 */
+		j = vec_info->index * IDPF_MIN_Q_VEC + IDPF_MBX_Q_VEC;
+		for (i = 0; i < IDPF_MIN_Q_VEC; i++) {
+			q_vector_idxs[num_alloc_vecs++] = stack->vec_idx[j++];
+			num_req_vecs--;
+		}
+	}
+
+	/* Find if stack has enough vector to allocate */
+	max_vecs = min(adapter->num_avail_msix, num_req_vecs);
+
+	for (j = 0; j < max_vecs; j++) {
+		vecid = idpf_vector_lifo_pop(adapter);
+		q_vector_idxs[num_alloc_vecs++] = vecid;
+	}
+	adapter->num_avail_msix -= max_vecs;
+
+rel_lock:
+	mutex_unlock(&adapter->vector_lock);
+
+	return num_alloc_vecs;
+}
+
 /**
  * idpf_intr_req - Request interrupt capabilities
  * @adapter: adapter to enable interrupts on
@@ -602,7 +736,14 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	mutex_lock(&vport->stop_mutex);
 
 	netif_carrier_off(vport->netdev);
+	netif_tx_disable(vport->netdev);
 
+	idpf_send_disable_vport_msg(vport);
+	idpf_send_disable_queues_msg(vport);
+	idpf_send_map_unmap_queue_vector_msg(vport, false);
+
+	vport->link_up = false;
+	idpf_vport_intr_deinit(vport);
 	idpf_vport_intr_rel(vport);
 	idpf_vport_queues_rel(vport);
 	vport->state = __IDPF_VPORT_DOWN;
@@ -655,6 +796,7 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
+	struct idpf_vector_info vec_info;
 	struct idpf_rss_data *rss_data;
 	struct idpf_vport_max_q max_q;
 	u16 idx = vport->idx;
@@ -690,6 +832,16 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 	max_q.max_complq = vport_config->max_q.max_complq;
 	idpf_vport_dealloc_max_qs(adapter, &max_q);
 
+	/* Release all the allocated vectors on the stack */
+	vec_info.num_req_vecs = 0;
+	vec_info.num_curr_vecs = vport->num_q_vectors;
+	vec_info.default_vport = vport->default_vport;
+
+	idpf_req_rel_vector_indexes(adapter, vport->q_vector_idxs, &vec_info);
+
+	kfree(vport->q_vector_idxs);
+	vport->q_vector_idxs = NULL;
+
 	kfree(adapter->vport_params_recvd[idx]);
 	adapter->vport_params_recvd[idx] = NULL;
 	kfree(adapter->vport_params_reqd[idx]);
@@ -710,6 +862,7 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 	unsigned int i = vport->idx;
 
 	idpf_deinit_mac_addr(vport);
+	idpf_vport_stop(vport);
 
 	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
 		idpf_decfg_netdev(vport);
@@ -739,6 +892,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	struct idpf_rss_data *rss_data;
 	u16 idx = adapter->next_vport;
 	struct idpf_vport *vport;
+	u16 num_max_q;
 
 	if (idx == IDPF_NO_FREE_SLOT)
 		return NULL;
@@ -765,6 +919,13 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	vport->default_vport = adapter->num_alloc_vports <
 			       idpf_get_default_vports(adapter);
 
+	num_max_q = max(max_q->max_txq, max_q->max_rxq);
+	vport->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
+	if (!vport->q_vector_idxs) {
+		kfree(vport);
+
+		return NULL;
+	}
 	idpf_vport_init(vport, max_q);
 
 	/* This alloc is done separate from the LUT because it's not strictly
@@ -837,6 +998,88 @@ void idpf_service_task(struct work_struct *work)
 			   msecs_to_jiffies(300));
 }
 
+/**
+ * idpf_set_real_num_queues - set number of queues for netdev
+ * @vport: virtual port structure
+ *
+ * Returns 0 on success, negative on failure.
+ */
+static int idpf_set_real_num_queues(struct idpf_vport *vport)
+{
+	bool reset = test_bit(IDPF_HR_RESET_IN_PROG, vport->adapter->flags);
+	int err;
+
+	/* If we're in normal up path, the stack already takes the rtnl_lock
+	 * for us, however, if we're doing up as a part of a hard reset, we'll
+	 * need to take the lock ourself before touching the netdev.
+	 */
+	if (reset)
+		rtnl_lock();
+	err = netif_set_real_num_rx_queues(vport->netdev, vport->num_rxq);
+	if (err)
+		goto error;
+	err = netif_set_real_num_tx_queues(vport->netdev, vport->num_txq);
+
+error:
+	if (reset)
+		rtnl_unlock();
+
+	return err;
+}
+
+/**
+ * idpf_up_complete - Complete interface up sequence
+ * @vport: virtual port structure
+ *
+ * Returns 0 on success, negative on failure.
+ */
+static int idpf_up_complete(struct idpf_vport *vport)
+{
+	int err;
+
+	err = idpf_set_real_num_queues(vport);
+	if (err)
+		return err;
+
+	if (vport->link_up && !netif_carrier_ok(vport->netdev)) {
+		netif_carrier_on(vport->netdev);
+		netif_tx_start_all_queues(vport->netdev);
+	}
+
+	vport->state = __IDPF_VPORT_UP;
+
+	return 0;
+}
+
+/**
+ * idpf_rx_init_buf_tail - Write initial buffer ring tail value
+ * @vport: virtual port struct
+ */
+static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
+{
+	int i, j;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *grp = &vport->rxq_grps[i];
+
+		if (idpf_is_queue_model_split(vport->rxq_model)) {
+			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+				struct idpf_queue *q =
+					&grp->splitq.bufq_sets[j].bufq;
+
+				writel(q->next_to_alloc, q->tail);
+			}
+		} else {
+			for (j = 0; j < grp->singleq.num_rxq; j++) {
+				struct idpf_queue *q =
+					grp->singleq.rxqs[j];
+
+				writel(q->next_to_alloc, q->tail);
+			}
+		}
+	}
+}
+
 /**
  * idpf_vport_open - Bring up a vport
  * @vport: vport to bring up
@@ -874,6 +1117,13 @@ static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 		goto intr_rel;
 	}
 
+	err = idpf_vport_intr_init(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to initialize interrupts for vport %u: %d\n",
+			vport->vport_id, err);
+		goto intr_rel;
+	}
+
 	err = idpf_rx_bufs_init_all(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize RX buffers for vport %u: %d\n",
@@ -888,11 +1138,35 @@ static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 		goto intr_rel;
 	}
 
+	idpf_rx_init_buf_tail(vport);
+
 	err = idpf_send_config_queues_msg(vport);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to configure queues for vport %u, %d\n",
 			vport->vport_id, err);
-		goto intr_rel;
+		goto intr_deinit;
+	}
+
+	err = idpf_send_map_unmap_queue_vector_msg(vport, true);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to map queue vectors for vport %u: %d\n",
+			vport->vport_id, err);
+		goto intr_deinit;
+	}
+
+	err = idpf_send_enable_queues_msg(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to enable queues for vport %u: %d\n",
+			vport->vport_id, err);
+		goto unmap_queue_vectors;
+	}
+
+	err = idpf_send_enable_vport_msg(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to enable vport %u: %d\n",
+			vport->vport_id, err);
+		err = -EAGAIN;
+		goto disable_queues;
 	}
 
 	vport_config = adapter->vport_config[vport->idx];
@@ -903,11 +1177,28 @@ static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to initialize RSS for vport %u: %d\n",
 			vport->vport_id, err);
-		goto intr_rel;
+		goto disable_vport;
+	}
+
+	err = idpf_up_complete(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to complete interface up for vport %u: %d\n",
+			vport->vport_id, err);
+		goto deinit_rss;
 	}
 
 	return 0;
 
+deinit_rss:
+	idpf_deinit_rss(vport);
+disable_vport:
+	idpf_send_disable_vport_msg(vport);
+disable_queues:
+	idpf_send_disable_queues_msg(vport);
+unmap_queue_vectors:
+	idpf_send_map_unmap_queue_vector_msg(vport, false);
+intr_deinit:
+	idpf_vport_intr_deinit(vport);
 intr_rel:
 	idpf_vport_intr_rel(vport);
 queues_rel:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 138ceb31f556..7f30ee604b40 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -55,3 +55,14 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
 
 	return !!cleaned_count;
 }
+
+/**
+ * idpf_vport_singleq_napi_poll - NAPI handler
+ * @napi: struct from which you get q_vector
+ * @budget: budget provided by stack
+ */
+int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
+{
+	/* stub */
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index f2a333af39ed..e0ae2a5cef98 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1345,6 +1345,44 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
 	return err;
 }
 
+/**
+ * idpf_vport_intr_clean_queues - MSIX mode Interrupt Handler
+ * @irq: interrupt number
+ * @data: pointer to a q_vector
+ *
+ */
+static irqreturn_t idpf_vport_intr_clean_queues(int __always_unused irq,
+						void *data)
+{
+	/* stub */
+	return IRQ_HANDLED;
+}
+
+/**
+ * idpf_vport_intr_napi_del_all - Unregister napi for all q_vectors in vport
+ * @vport: virtual port structure
+ *
+ */
+static void idpf_vport_intr_napi_del_all(struct idpf_vport *vport)
+{
+	u16 v_idx;
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++)
+		netif_napi_del(&vport->q_vectors[v_idx].napi);
+}
+
+/**
+ * idpf_vport_intr_napi_dis_all - Disable NAPI for all q_vectors in the vport
+ * @vport: main vport structure
+ */
+static void idpf_vport_intr_napi_dis_all(struct idpf_vport *vport)
+{
+	int v_idx;
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++)
+		napi_disable(&vport->q_vectors[v_idx].napi);
+}
+
 /**
  * idpf_vport_intr_rel - Free memory allocated for interrupt vectors
  * @vport: virtual port
@@ -1353,7 +1391,7 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport)
  */
 void idpf_vport_intr_rel(struct idpf_vport *vport)
 {
-	int v_idx;
+	int i, j, v_idx;
 
 	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
@@ -1366,10 +1404,291 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 		q_vector->rx = NULL;
 	}
 
+	/* Clean up the mapping of queues to vectors */
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			for (j = 0; j < rx_qgrp->splitq.num_rxq_sets; j++)
+				rx_qgrp->splitq.rxq_sets[j]->rxq.q_vector = NULL;
+		else
+			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
+				rx_qgrp->singleq.rxqs[j]->q_vector = NULL;
+	}
+
+	if (idpf_is_queue_model_split(vport->txq_model))
+		for (i = 0; i < vport->num_txq_grp; i++)
+			vport->txq_grps[i].complq->q_vector = NULL;
+	else
+		for (i = 0; i < vport->num_txq_grp; i++)
+			for (j = 0; j < vport->txq_grps[i].num_txq; j++)
+				vport->txq_grps[i].txqs[j]->q_vector = NULL;
+
 	kfree(vport->q_vectors);
 	vport->q_vectors = NULL;
 }
 
+/**
+ * idpf_vport_intr_rel_irq - Free the IRQ association with the OS
+ * @vport: main vport structure
+ */
+static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int vector;
+
+	for (vector = 0; vector < vport->num_q_vectors; vector++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
+		int irq_num, vidx;
+
+		/* free only the irqs that were actually requested */
+		if (!q_vector)
+			continue;
+
+		vidx = vport->q_vector_idxs[vector];
+		irq_num = adapter->msix_entries[vidx].vector;
+
+		/* clear the affinity_mask in the IRQ descriptor */
+		irq_set_affinity_hint(irq_num, NULL);
+		free_irq(irq_num, q_vector);
+	}
+}
+
+/**
+ * idpf_vport_intr_req_irq - get MSI-X vectors from the OS for the vport
+ * @vport: main vport structure
+ * @basename: name for the vector
+ */
+static int idpf_vport_intr_req_irq(struct idpf_vport *vport, char *basename)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int vector, err, irq_num, vidx;
+	const char *vec_name;
+
+	for (vector = 0; vector < vport->num_q_vectors; vector++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
+
+		vidx = vport->q_vector_idxs[vector];
+		irq_num = adapter->msix_entries[vidx].vector;
+
+		if (q_vector->num_rxq && q_vector->num_txq)
+			vec_name = "TxRx";
+		else if (q_vector->num_rxq)
+			vec_name = "Rx";
+		else if (q_vector->num_txq)
+			vec_name = "Tx";
+		else
+			continue;
+
+		snprintf(q_vector->name, sizeof(q_vector->name) - 1,
+			 "%s-%s-%d", basename, vec_name, vidx);
+
+		err = request_irq(irq_num, idpf_vport_intr_clean_queues, 0,
+				  q_vector->name, q_vector);
+		if (err) {
+			netdev_err(vport->netdev,
+				   "Request_irq failed, error: %d\n", err);
+			goto free_q_irqs;
+		}
+		/* assign the mask for this irq */
+		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
+	}
+
+	return 0;
+
+free_q_irqs:
+	while (--vector >= 0) {
+		vidx = vport->q_vector_idxs[vector];
+		irq_num = adapter->msix_entries[vidx].vector;
+		free_irq(irq_num, &vport->q_vectors[vector]);
+	}
+
+	return err;
+}
+
+/**
+ * idpf_vport_intr_deinit - Release all vector associations for the vport
+ * @vport: main vport structure
+ */
+void idpf_vport_intr_deinit(struct idpf_vport *vport)
+{
+	idpf_vport_intr_napi_dis_all(vport);
+	idpf_vport_intr_napi_del_all(vport);
+	idpf_vport_intr_rel_irq(vport);
+}
+
+/**
+ * idpf_vport_intr_napi_ena_all - Enable NAPI for all q_vectors in the vport
+ * @vport: main vport structure
+ */
+static void idpf_vport_intr_napi_ena_all(struct idpf_vport *vport)
+{
+	int q_idx;
+
+	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[q_idx];
+
+		napi_enable(&q_vector->napi);
+	}
+}
+
+/**
+ * idpf_vport_splitq_napi_poll - NAPI handler
+ * @napi: struct from which you get q_vector
+ * @budget: budget provided by stack
+ */
+static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
+{
+	/* stub */
+	return 0;
+}
+
+/**
+ * idpf_vport_intr_map_vector_to_qs - Map vectors to queues
+ * @vport: virtual port
+ *
+ * Mapping for vectors to queues
+ */
+static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
+{
+	u16 num_txq_grp = vport->num_txq_grp;
+	int i, j, qv_idx, bufq_vidx = 0;
+	struct idpf_rxq_group *rx_qgrp;
+	struct idpf_txq_group *tx_qgrp;
+	struct idpf_queue *q, *bufq;
+	u16 q_index;
+
+	for (i = 0, qv_idx = 0; i < vport->num_rxq_grp; i++) {
+		u16 num_rxq;
+
+		rx_qgrp = &vport->rxq_grps[i];
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			if (qv_idx >= vport->num_q_vectors)
+				qv_idx = 0;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				q = rx_qgrp->singleq.rxqs[j];
+			q->q_vector = &vport->q_vectors[qv_idx];
+			q_index = q->q_vector->num_rxq;
+			q->q_vector->rx[q_index] = q;
+			q->q_vector->num_rxq++;
+			qv_idx++;
+		}
+
+		if (idpf_is_queue_model_split(vport->rxq_model)) {
+			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+				bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
+				bufq->q_vector = &vport->q_vectors[bufq_vidx];
+				q_index = bufq->q_vector->num_bufq;
+				bufq->q_vector->bufq[q_index] = bufq;
+				bufq->q_vector->num_bufq++;
+			}
+			if (++bufq_vidx >= vport->num_q_vectors)
+				bufq_vidx = 0;
+		}
+	}
+
+	for (i = 0, qv_idx = 0; i < num_txq_grp; i++) {
+		u16 num_txq;
+
+		tx_qgrp = &vport->txq_grps[i];
+		num_txq = tx_qgrp->num_txq;
+
+		if (idpf_is_queue_model_split(vport->txq_model)) {
+			if (qv_idx >= vport->num_q_vectors)
+				qv_idx = 0;
+
+			q = tx_qgrp->complq;
+			q->q_vector = &vport->q_vectors[qv_idx];
+			q_index = q->q_vector->num_txq;
+			q->q_vector->tx[q_index] = q;
+			q->q_vector->num_txq++;
+			qv_idx++;
+		} else {
+			for (j = 0; j < num_txq; j++) {
+				if (qv_idx >= vport->num_q_vectors)
+					qv_idx = 0;
+
+				q = tx_qgrp->txqs[j];
+				q->q_vector = &vport->q_vectors[qv_idx];
+				q_index = q->q_vector->num_txq;
+				q->q_vector->tx[q_index] = q;
+				q->q_vector->num_txq++;
+
+				qv_idx++;
+			}
+		}
+	}
+}
+
+/**
+ * idpf_vport_intr_init_vec_idx - Initialize the vector indexes
+ * @vport: virtual port
+ *
+ * Initialize vector indexes with values returened over mailbox
+ */
+static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_alloc_vectors *ac;
+	u16 *vecids, total_vecs;
+	int i;
+
+	ac = adapter->req_vec_chunks;
+	if (!ac) {
+		for (i = 0; i < vport->num_q_vectors; i++)
+			vport->q_vectors[i].v_idx = vport->q_vector_idxs[i];
+
+		return 0;
+	}
+
+	total_vecs = idpf_get_reserved_vecs(adapter);
+	vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
+	if (!vecids)
+		return -ENOMEM;
+
+	idpf_get_vec_ids(adapter, vecids, total_vecs, &ac->vchunks);
+
+	for (i = 0; i < vport->num_q_vectors; i++)
+		vport->q_vectors[i].v_idx = vecids[vport->q_vector_idxs[i]];
+
+	kfree(vecids);
+
+	return 0;
+}
+
+/**
+ * idpf_vport_intr_napi_add_all- Register napi handler for all qvectors
+ * @vport: virtual port structure
+ */
+static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
+{
+	int (*napi_poll)(struct napi_struct *napi, int budget);
+	u16 v_idx;
+
+	if (idpf_is_queue_model_split(vport->txq_model))
+		napi_poll = idpf_vport_splitq_napi_poll;
+	else
+		napi_poll = idpf_vport_singleq_napi_poll;
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
+
+		netif_napi_add(vport->netdev, &q_vector->napi, napi_poll);
+
+		/* only set affinity_mask if the CPU is online */
+		if (cpu_online(v_idx))
+			cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
+	}
+}
+
 /**
  * idpf_vport_intr_alloc - Allocate memory for interrupt vectors
  * @vport: virtual port
@@ -1441,6 +1760,46 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 	return err;
 }
 
+/**
+ * idpf_vport_intr_init - Setup all vectors for the given vport
+ * @vport: virtual port
+ *
+ * Returns 0 on success or negative on failure
+ */
+int idpf_vport_intr_init(struct idpf_vport *vport)
+{
+	char int_name[IDPF_INT_NAME_STR_LEN];
+	int err;
+
+	err = idpf_vport_intr_init_vec_idx(vport);
+	if (err)
+		return err;
+
+	idpf_vport_intr_map_vector_to_qs(vport);
+	idpf_vport_intr_napi_add_all(vport);
+	idpf_vport_intr_napi_ena_all(vport);
+
+	err = vport->adapter->dev_ops.reg_ops.intr_reg_init(vport);
+	if (err)
+		goto unroll_vectors_alloc;
+
+	snprintf(int_name, sizeof(int_name) - 1, "%s-%s",
+		 dev_driver_string(&vport->adapter->pdev->dev),
+		 vport->netdev->name);
+
+	err = idpf_vport_intr_req_irq(vport, int_name);
+	if (err)
+		goto unroll_vectors_alloc;
+
+	return 0;
+
+unroll_vectors_alloc:
+	idpf_vport_intr_napi_dis_all(vport);
+	idpf_vport_intr_napi_del_all(vport);
+
+	return err;
+}
+
 /**
  * idpf_config_rss - Send virtchnl messages to configure RSS
  * @vport: virtual port
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index fab8c0a1ca49..7e3d5cdfb39f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -24,6 +24,7 @@
 #define IDPF_SINGLE_BUFQ_PER_RXQ_GRP		1
 #define IDPF_MAX_BUFQS_PER_RXQ_GRP		2
 #define IDPF_BUFQ2_ENA				1
+#define IDPF_NUMQ_PER_CHUNK			1
 
 #define IDPF_DFLT_SPLITQ_TXQ_PER_GROUP		1
 #define IDPF_DFLT_SPLITQ_RXQ_PER_GROUP		1
@@ -260,18 +261,38 @@ enum idpf_queue_flags_t {
 	__IDPF_Q_FLAGS_NBITS,
 };
 
+/**
+ * struct idpf_vec_regs
+ * @dyn_ctl_reg: Dynamic control interrupt register offset
+ * @itrn_reg: Interrupt Throttling Rate register offset
+ * @itrn_index_spacing: Register spacing between ITR registers of the same vector
+ */
+struct idpf_vec_regs {
+	u32 dyn_ctl_reg;
+	u32 itrn_reg;
+	u32 itrn_index_spacing;
+};
+
 /**
  * struct idpf_intr_reg
  * @dyn_ctl: Dynamic control interrupt register
  * @dyn_ctl_intena_m: Mask for dyn_ctl interrupt enable
+ * @dyn_ctl_itridx_s: Register bit offset for ITR index
  * @dyn_ctl_itridx_m: Mask for ITR index
+ * @dyn_ctl_intrvl_s: Register bit offset for ITR interval
+ * @rx_itr: RX ITR register
+ * @tx_itr: TX ITR register
  * @icr_ena: Interrupt cause register offset
  * @icr_ena_ctlq_m: Mask for ICR
  */
 struct idpf_intr_reg {
 	void __iomem *dyn_ctl;
 	u32 dyn_ctl_intena_m;
+	u32 dyn_ctl_itridx_s;
 	u32 dyn_ctl_itridx_m;
+	u32 dyn_ctl_intrvl_s;
+	void __iomem *rx_itr;
+	void __iomem *tx_itr;
 	void __iomem *icr_ena;
 	u32 icr_ena_ctlq_m;
 };
@@ -279,36 +300,44 @@ struct idpf_intr_reg {
 /**
  * struct idpf_q_vector
  * @vport: Vport back pointer
+ * @affinity_mask: CPU affinity mask
  * @napi: napi handler
  * @v_idx: Vector index
  * @intr_reg: See struct idpf_intr_reg
+ * @num_txq: Number of TX queues
  * @tx: Array of TX queues to service
  * @tx_itr_value: TX interrupt throttling rate
  * @tx_intr_mode: Dynamic ITR or not
  * @tx_itr_idx: TX ITR index
+ * @num_rxq: Number of RX queues
  * @rx: Array of RX queues to service
  * @rx_itr_value: RX interrupt throttling rate
  * @rx_intr_mode: Dynamic ITR or not
  * @rx_itr_idx: RX ITR index
+ * @num_bufq: Number of buffer queues
  * @bufq: Array of buffer queues to service
  * @name: Queue vector name
  */
 struct idpf_q_vector {
 	struct idpf_vport *vport;
+	cpumask_t affinity_mask;
 	struct napi_struct napi;
 	u16 v_idx;
 	struct idpf_intr_reg intr_reg;
 
+	u16 num_txq;
 	struct idpf_queue **tx;
 	u16 tx_itr_value;
 	bool tx_intr_mode;
 	u32 tx_itr_idx;
 
+	u16 num_rxq;
 	struct idpf_queue **rx;
 	u16 rx_itr_value;
 	bool rx_intr_mode;
 	u32 rx_itr_idx;
 
+	u16 num_bufq;
 	struct idpf_queue **bufq;
 
 	char name[IDPF_INT_NAME_STR_LEN];
@@ -318,6 +347,7 @@ struct idpf_q_vector {
 #define IDPF_ITR_20K		0x0032
 #define IDPF_ITR_TX_DEF		IDPF_ITR_20K
 #define IDPF_ITR_RX_DEF		IDPF_ITR_20K
+#define IDPF_ITR_IDX_SPACING(spacing, dflt)	(spacing ? spacing : dflt)
 
 /**
  * struct idpf_queue
@@ -588,6 +618,7 @@ static inline dma_addr_t idpf_alloc_page(struct page_pool *pool,
 	       pool->p.offset;
 }
 
+int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
 void idpf_vport_init_num_qs(struct idpf_vport *vport,
 			    struct virtchnl2_create_vport *vport_msg);
 void idpf_vport_calc_num_q_desc(struct idpf_vport *vport);
@@ -599,6 +630,8 @@ int idpf_vport_queues_alloc(struct idpf_vport *vport);
 void idpf_vport_queues_rel(struct idpf_vport *vport);
 void idpf_vport_intr_rel(struct idpf_vport *vport);
 int idpf_vport_intr_alloc(struct idpf_vport *vport);
+void idpf_vport_intr_deinit(struct idpf_vport *vport);
+int idpf_vport_intr_init(struct idpf_vport *vport);
 int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss(struct idpf_vport *vport);
 void idpf_deinit_rss(struct idpf_vport *vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index cfaddeff5742..8ade4e3a9fe1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -4,6 +4,8 @@
 #include "idpf.h"
 #include "idpf_lan_vf_regs.h"
 
+#define IDPF_VF_ITR_IDX_SPACING		0x40
+
 /**
  * idpf_vf_ctlq_reg_init - initialize default mailbox registers
  * @cq: pointer to the array of create control queues
@@ -60,6 +62,60 @@ static void idpf_vf_mb_intr_reg_init(struct idpf_adapter *adapter)
 	intr->icr_ena_ctlq_m = VF_INT_ICR0_ENA1_ADMINQ_M;
 }
 
+/**
+ * idpf_vf_intr_reg_init - Initialize interrupt registers
+ * @vport: virtual port structure
+ */
+static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int num_vecs = vport->num_q_vectors;
+	struct idpf_vec_regs *reg_vals;
+	int num_regs, i, err = 0;
+	u32 rx_itr, tx_itr;
+	u16 total_vecs;
+
+	total_vecs = idpf_get_reserved_vecs(vport->adapter);
+	reg_vals = kcalloc(total_vecs, sizeof(struct idpf_vec_regs),
+			   GFP_KERNEL);
+	if (!reg_vals)
+		return -ENOMEM;
+
+	num_regs = idpf_get_reg_intr_vecs(vport, reg_vals);
+	if (num_regs < num_vecs) {
+		err = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	for (i = 0; i < num_vecs; i++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
+		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		struct idpf_intr_reg *intr = &q_vector->intr_reg;
+		u32 spacing;
+
+		intr->dyn_ctl = idpf_get_reg_addr(adapter,
+						  reg_vals[vec_id].dyn_ctl_reg);
+		intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
+		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
+
+		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
+					       IDPF_VF_ITR_IDX_SPACING);
+		rx_itr = VF_INT_ITRN_ADDR(VIRTCHNL2_ITR_IDX_0,
+					  reg_vals[vec_id].itrn_reg,
+					  spacing);
+		tx_itr = VF_INT_ITRN_ADDR(VIRTCHNL2_ITR_IDX_1,
+					  reg_vals[vec_id].itrn_reg,
+					  spacing);
+		intr->rx_itr = idpf_get_reg_addr(adapter, rx_itr);
+		intr->tx_itr = idpf_get_reg_addr(adapter, tx_itr);
+	}
+
+free_reg_vals:
+	kfree(reg_vals);
+
+	return err;
+}
+
 /**
  * idpf_vf_reset_reg_init - Initialize reset registers
  * @adapter: Driver specific private structure
@@ -91,6 +147,7 @@ static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
 static void idpf_vf_reg_ops_init(struct idpf_adapter *adapter)
 {
 	adapter->dev_ops.reg_ops.ctlq_reg_init = idpf_vf_ctlq_reg_init;
+	adapter->dev_ops.reg_ops.intr_reg_init = idpf_vf_intr_reg_init;
 	adapter->dev_ops.reg_ops.mb_intr_reg_init = idpf_vf_mb_intr_reg_init;
 	adapter->dev_ops.reg_ops.reset_reg_init = idpf_vf_reset_reg_init;
 	adapter->dev_ops.reg_ops.trigger_reset = idpf_vf_trigger_reset;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 018061a86a71..414ec279e2e9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -160,6 +160,8 @@ static int idpf_find_vport(struct idpf_adapter *adapter,
 	case VIRTCHNL2_OP_DEALLOC_VECTORS:
 	case VIRTCHNL2_OP_GET_PTYPE_INFO:
 		goto free_vc_msg;
+	case VIRTCHNL2_OP_ENABLE_VPORT:
+	case VIRTCHNL2_OP_DISABLE_VPORT:
 	case VIRTCHNL2_OP_DESTROY_VPORT:
 		v_id = le32_to_cpu(((struct virtchnl2_vport *)vc_msg)->vport_id);
 		break;
@@ -169,6 +171,14 @@ static int idpf_find_vport(struct idpf_adapter *adapter,
 	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
 		v_id = le32_to_cpu(((struct virtchnl2_config_rx_queues *)vc_msg)->vport_id);
 		break;
+	case VIRTCHNL2_OP_ENABLE_QUEUES:
+	case VIRTCHNL2_OP_DISABLE_QUEUES:
+		v_id = le32_to_cpu(((struct virtchnl2_del_ena_dis_queues *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
+	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
+		v_id = le32_to_cpu(((struct virtchnl2_queue_vector_maps *)vc_msg)->vport_id);
+		break;
 	case VIRTCHNL2_OP_GET_RSS_LUT:
 	case VIRTCHNL2_OP_SET_RSS_LUT:
 		v_id = le32_to_cpu(((struct virtchnl2_rss_lut *)vc_msg)->vport_id);
@@ -372,6 +382,16 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 					   IDPF_VC_CREATE_VPORT,
 					   IDPF_VC_CREATE_VPORT_ERR);
 			break;
+		case VIRTCHNL2_OP_ENABLE_VPORT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_ENA_VPORT,
+					   IDPF_VC_ENA_VPORT_ERR);
+			break;
+		case VIRTCHNL2_OP_DISABLE_VPORT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_DIS_VPORT,
+					   IDPF_VC_DIS_VPORT_ERR);
+			break;
 		case VIRTCHNL2_OP_DESTROY_VPORT:
 			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
 					   IDPF_VC_DESTROY_VPORT,
@@ -387,6 +407,26 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 					   IDPF_VC_CONFIG_RXQ,
 					   IDPF_VC_CONFIG_RXQ_ERR);
 			break;
+		case VIRTCHNL2_OP_ENABLE_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_ENA_QUEUES,
+					   IDPF_VC_ENA_QUEUES_ERR);
+			break;
+		case VIRTCHNL2_OP_DISABLE_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_DIS_QUEUES,
+					   IDPF_VC_DIS_QUEUES_ERR);
+			break;
+		case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_MAP_IRQ,
+					   IDPF_VC_MAP_IRQ_ERR);
+			break;
+		case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_UNMAP_IRQ,
+					   IDPF_VC_UNMAP_IRQ_ERR);
+			break;
 		case VIRTCHNL2_OP_GET_RSS_LUT:
 			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
 					   IDPF_VC_GET_RSS_LUT,
@@ -832,6 +872,53 @@ static void idpf_init_avail_queues(struct idpf_adapter *adapter)
 	avail_queues->avail_complq = le16_to_cpu(caps->max_tx_complq);
 }
 
+/**
+ * idpf_get_reg_intr_vecs - Get vector queue register offset
+ * @vport: virtual port structure
+ * @reg_vals: Register offsets to store in
+ *
+ * Returns number of registers that got populated
+ */
+int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
+			   struct idpf_vec_regs *reg_vals)
+{
+	struct virtchnl2_vector_chunks *chunks;
+	struct idpf_vec_regs reg_val;
+	u16 num_vchunks, num_vec;
+	int num_regs = 0, i, j;
+
+	chunks = &vport->adapter->req_vec_chunks->vchunks;
+	num_vchunks = le16_to_cpu(chunks->num_vchunks);
+
+	for (j = 0; j < num_vchunks; j++) {
+		struct virtchnl2_vector_chunk *chunk;
+		u32 dynctl_reg_spacing;
+		u32 itrn_reg_spacing;
+
+		chunk = &chunks->vchunks[j];
+		num_vec = le16_to_cpu(chunk->num_vectors);
+		reg_val.dyn_ctl_reg = le32_to_cpu(chunk->dynctl_reg_start);
+		reg_val.itrn_reg = le32_to_cpu(chunk->itrn_reg_start);
+		reg_val.itrn_index_spacing = le32_to_cpu(chunk->itrn_index_spacing);
+
+		dynctl_reg_spacing = le32_to_cpu(chunk->dynctl_reg_spacing);
+		itrn_reg_spacing = le32_to_cpu(chunk->itrn_reg_spacing);
+
+		for (i = 0; i < num_vec; i++) {
+			reg_vals[num_regs].dyn_ctl_reg = reg_val.dyn_ctl_reg;
+			reg_vals[num_regs].itrn_reg = reg_val.itrn_reg;
+			reg_vals[num_regs].itrn_index_spacing =
+						reg_val.itrn_index_spacing;
+
+			reg_val.dyn_ctl_reg += dynctl_reg_spacing;
+			reg_val.itrn_reg += itrn_reg_spacing;
+			num_regs++;
+		}
+	}
+
+	return num_regs;
+}
+
 /**
  * idpf_vport_get_q_reg - Get the queue registers for the vport
  * @reg_vals: register values needing to be set
@@ -1161,6 +1248,68 @@ int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
 	return err;
 }
 
+/**
+ * idpf_send_enable_vport_msg - Send virtchnl enable vport message
+ * @vport: virtual port data structure
+ *
+ * Send enable vport virtchnl message.  Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_enable_vport_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_vport v_id;
+	int err;
+
+	v_id.vport_id = cpu_to_le32(vport->vport_id);
+
+	mutex_lock(&vport->vc_buf_lock);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ENABLE_VPORT,
+			       sizeof(v_id), (u8 *)&v_id);
+	if (err)
+		goto rel_lock;
+
+	err = idpf_wait_for_event(adapter, vport, IDPF_VC_ENA_VPORT,
+				  IDPF_VC_ENA_VPORT_ERR);
+
+rel_lock:
+	mutex_unlock(&vport->vc_buf_lock);
+
+	return err;
+}
+
+/**
+ * idpf_send_disable_vport_msg - Send virtchnl disable vport message
+ * @vport: virtual port data structure
+ *
+ * Send disable vport virtchnl message.  Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_disable_vport_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_vport v_id;
+	int err;
+
+	v_id.vport_id = cpu_to_le32(vport->vport_id);
+
+	mutex_lock(&vport->vc_buf_lock);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DISABLE_VPORT,
+			       sizeof(v_id), (u8 *)&v_id);
+	if (err)
+		goto rel_lock;
+
+	err = idpf_min_wait_for_event(adapter, vport, IDPF_VC_DIS_VPORT,
+				      IDPF_VC_DIS_VPORT_ERR);
+
+rel_lock:
+	mutex_unlock(&vport->vc_buf_lock);
+
+	return err;
+}
+
 /**
  * idpf_send_config_tx_queues_msg - Send virtchnl config tx queues message
  * @vport: virtual port data structure
@@ -1437,6 +1586,349 @@ static int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
 	return err;
 }
 
+/**
+ * idpf_send_ena_dis_queues_msg - Send virtchnl enable or disable
+ * queues message
+ * @vport: virtual port data structure
+ * @vc_op: virtchnl op code to send
+ *
+ * Send enable or disable queues virtchnl message. Returns 0 on success,
+ * negative on failure.
+ */
+static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
+{
+	u32 num_msgs, num_chunks, num_txq, num_rxq, num_q;
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_del_ena_dis_queues *eq;
+	struct virtchnl2_queue_chunks *qcs;
+	struct virtchnl2_queue_chunk *qc;
+	u32 config_sz, chunk_sz, buf_sz;
+	int i, j, k = 0, err = 0;
+
+	/* validate virtchnl op */
+	switch (vc_op) {
+	case VIRTCHNL2_OP_ENABLE_QUEUES:
+	case VIRTCHNL2_OP_DISABLE_QUEUES:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	num_txq = vport->num_txq + vport->num_complq;
+	num_rxq = vport->num_rxq + vport->num_bufq;
+	num_q = num_txq + num_rxq;
+	buf_sz = sizeof(struct virtchnl2_queue_chunk) * num_q;
+	qc = kzalloc(buf_sz, GFP_KERNEL);
+	if (!qc)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+			qc[k].type = cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+			qc[k].start_queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
+			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
+		}
+	}
+	if (vport->num_txq != k) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	if (!idpf_is_queue_model_split(vport->txq_model))
+		goto setup_rx;
+
+	for (i = 0; i < vport->num_txq_grp; i++, k++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+		qc[k].type = cpu_to_le32(tx_qgrp->complq->q_type);
+		qc[k].start_queue_id = cpu_to_le32(tx_qgrp->complq->q_id);
+		qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
+	}
+	if (vport->num_complq != (k - vport->num_txq)) {
+		err = -EINVAL;
+		goto error;
+	}
+
+setup_rx:
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++, k++) {
+			if (idpf_is_queue_model_split(vport->rxq_model)) {
+				qc[k].start_queue_id =
+				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]->rxq.q_id);
+				qc[k].type =
+				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]->rxq.q_type);
+			} else {
+				qc[k].start_queue_id =
+				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_id);
+				qc[k].type =
+				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_type);
+			}
+			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
+		}
+	}
+	if (vport->num_rxq != k - (vport->num_txq + vport->num_complq)) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	if (!idpf_is_queue_model_split(vport->rxq_model))
+		goto send_msg;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
+			struct idpf_queue *q;
+
+			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+			qc[k].type = cpu_to_le32(q->q_type);
+			qc[k].start_queue_id = cpu_to_le32(q->q_id);
+			qc[k].num_queues = cpu_to_le32(IDPF_NUMQ_PER_CHUNK);
+		}
+	}
+	if (vport->num_bufq != k - (vport->num_txq +
+				    vport->num_complq +
+				    vport->num_rxq)) {
+		err = -EINVAL;
+		goto error;
+	}
+
+send_msg:
+	/* Chunk up the queue info into multiple messages */
+	config_sz = sizeof(struct virtchnl2_del_ena_dis_queues);
+	chunk_sz = sizeof(struct virtchnl2_queue_chunk);
+
+	num_chunks = min_t(u32, IDPF_NUM_CHUNKS_PER_MSG(config_sz, chunk_sz),
+			   num_q);
+	num_msgs = DIV_ROUND_UP(num_q, num_chunks);
+
+	buf_sz = struct_size(eq, chunks.chunks, num_chunks);
+	eq = kzalloc(buf_sz, GFP_KERNEL);
+	if (!eq) {
+		err = -ENOMEM;
+		goto error;
+	}
+
+	mutex_lock(&vport->vc_buf_lock);
+
+	for (i = 0, k = 0; i < num_msgs; i++) {
+		memset(eq, 0, buf_sz);
+		eq->vport_id = cpu_to_le32(vport->vport_id);
+		eq->chunks.num_chunks = cpu_to_le16(num_chunks);
+		qcs = &eq->chunks;
+		memcpy(qcs->chunks, &qc[k], chunk_sz * num_chunks);
+
+		err = idpf_send_mb_msg(adapter, vc_op, buf_sz, (u8 *)eq);
+		if (err)
+			goto mbx_error;
+
+		if (vc_op == VIRTCHNL2_OP_ENABLE_QUEUES)
+			err = idpf_wait_for_event(adapter, vport,
+						  IDPF_VC_ENA_QUEUES,
+						  IDPF_VC_ENA_QUEUES_ERR);
+		else
+			err = idpf_min_wait_for_event(adapter, vport,
+						      IDPF_VC_DIS_QUEUES,
+						      IDPF_VC_DIS_QUEUES_ERR);
+		if (err)
+			goto mbx_error;
+
+		k += num_chunks;
+		num_q -= num_chunks;
+		num_chunks = min(num_chunks, num_q);
+		/* Recalculate buffer size */
+		buf_sz = struct_size(eq, chunks.chunks, num_chunks);
+	}
+
+mbx_error:
+	mutex_unlock(&vport->vc_buf_lock);
+	kfree(eq);
+error:
+	kfree(qc);
+
+	return err;
+}
+
+/**
+ * idpf_send_map_unmap_queue_vector_msg - Send virtchnl map or unmap queue
+ * vector message
+ * @vport: virtual port data structure
+ * @map: true for map and false for unmap
+ *
+ * Send map or unmap queue vector virtchnl message.  Returns 0 on success,
+ * negative on failure.
+ */
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_queue_vector_maps *vqvm;
+	struct virtchnl2_queue_vector *vqv;
+	u32 config_sz, chunk_sz, buf_sz;
+	u32 num_msgs, num_chunks, num_q;
+	int i, j, k = 0, err = 0;
+
+	num_q = vport->num_txq + vport->num_rxq;
+
+	buf_sz = sizeof(struct virtchnl2_queue_vector) * num_q;
+	vqv = kzalloc(buf_sz, GFP_KERNEL);
+	if (!vqv)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+			vqv[k].queue_type = cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+			vqv[k].queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
+
+			if (idpf_is_queue_model_split(vport->txq_model)) {
+				vqv[k].vector_id =
+				cpu_to_le16(tx_qgrp->complq->q_vector->v_idx);
+				vqv[k].itr_idx =
+				cpu_to_le32(tx_qgrp->complq->q_vector->tx_itr_idx);
+			} else {
+				vqv[k].vector_id =
+				cpu_to_le16(tx_qgrp->txqs[j]->q_vector->v_idx);
+				vqv[k].itr_idx =
+				cpu_to_le32(tx_qgrp->txqs[j]->q_vector->tx_itr_idx);
+			}
+		}
+	}
+
+	if (vport->num_txq != k) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		u16 num_rxq;
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++, k++) {
+			struct idpf_queue *rxq;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				rxq = rx_qgrp->singleq.rxqs[j];
+
+			vqv[k].queue_type = cpu_to_le32(rxq->q_type);
+			vqv[k].queue_id = cpu_to_le32(rxq->q_id);
+			vqv[k].vector_id = cpu_to_le16(rxq->q_vector->v_idx);
+			vqv[k].itr_idx = cpu_to_le32(rxq->q_vector->rx_itr_idx);
+		}
+	}
+
+	if (idpf_is_queue_model_split(vport->txq_model)) {
+		if (vport->num_rxq != k - vport->num_complq) {
+			err = -EINVAL;
+			goto error;
+		}
+	} else {
+		if (vport->num_rxq != k - vport->num_txq) {
+			err = -EINVAL;
+			goto error;
+		}
+	}
+
+	/* Chunk up the vector info into multiple messages */
+	config_sz = sizeof(struct virtchnl2_queue_vector_maps);
+	chunk_sz = sizeof(struct virtchnl2_queue_vector);
+
+	num_chunks = min_t(u32, IDPF_NUM_CHUNKS_PER_MSG(config_sz, chunk_sz),
+			   num_q);
+	num_msgs = DIV_ROUND_UP(num_q, num_chunks);
+
+	buf_sz = struct_size(vqvm, qv_maps, num_chunks);
+	vqvm = kzalloc(buf_sz, GFP_KERNEL);
+	if (!vqvm) {
+		err = -ENOMEM;
+		goto error;
+	}
+
+	mutex_lock(&vport->vc_buf_lock);
+
+	for (i = 0, k = 0; i < num_msgs; i++) {
+		memset(vqvm, 0, buf_sz);
+		vqvm->vport_id = cpu_to_le32(vport->vport_id);
+		vqvm->num_qv_maps = cpu_to_le16(num_chunks);
+		memcpy(vqvm->qv_maps, &vqv[k], chunk_sz * num_chunks);
+
+		if (map) {
+			err = idpf_send_mb_msg(adapter,
+					       VIRTCHNL2_OP_MAP_QUEUE_VECTOR,
+					       buf_sz, (u8 *)vqvm);
+			if (!err)
+				err = idpf_wait_for_event(adapter, vport,
+							  IDPF_VC_MAP_IRQ,
+							  IDPF_VC_MAP_IRQ_ERR);
+		} else {
+			err = idpf_send_mb_msg(adapter,
+					       VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
+					       buf_sz, (u8 *)vqvm);
+			if (!err)
+				err =
+				idpf_min_wait_for_event(adapter, vport,
+							IDPF_VC_UNMAP_IRQ,
+							IDPF_VC_UNMAP_IRQ_ERR);
+		}
+		if (err)
+			goto mbx_error;
+
+		k += num_chunks;
+		num_q -= num_chunks;
+		num_chunks = min(num_chunks, num_q);
+		/* Recalculate buffer size */
+		buf_sz = struct_size(vqvm, qv_maps, num_chunks);
+	}
+
+mbx_error:
+	mutex_unlock(&vport->vc_buf_lock);
+	kfree(vqvm);
+error:
+	kfree(vqv);
+
+	return err;
+}
+
+/**
+ * idpf_send_enable_queues_msg - send enable queues virtchnl message
+ * @vport: Virtual port private data structure
+ *
+ * Will send enable queues virtchnl message.  Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_enable_queues_msg(struct idpf_vport *vport)
+{
+	return idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_ENABLE_QUEUES);
+}
+
+/**
+ * idpf_send_disable_queues_msg - send disable queues virtchnl message
+ * @vport: Virtual port private data structure
+ *
+ * Will send disable queues virtchnl message.  Returns 0 on success, negative
+ * on failure.
+ */
+int idpf_send_disable_queues_msg(struct idpf_vport *vport)
+{
+	return idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_DISABLE_QUEUES);
+}
+
 /**
  * idpf_send_config_queues_msg - Send config queues virtchnl message
  * @vport: Virtual port private data structure
@@ -2265,6 +2757,40 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 	adapter->vports = NULL;
 }
 
+/**
+ * idpf_vport_alloc_vec_indexes - Get relative vector indexes
+ * @vport: virtual port data struct
+ *
+ * This function requests the vector information required for the vport and
+ * stores the vector indexes received from the 'global vector distribution'
+ * in the vport's queue vectors array.
+ *
+ * Return 0 on success, error on failure
+ */
+static int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
+{
+	struct idpf_vector_info vec_info;
+	int num_alloc_vecs;
+
+	vec_info.num_curr_vecs = vport->num_q_vectors;
+	vec_info.num_req_vecs = max(vport->num_txq, vport->num_rxq);
+	vec_info.default_vport = vport->default_vport;
+	vec_info.index = vport->idx;
+
+	num_alloc_vecs = idpf_req_rel_vector_indexes(vport->adapter,
+						     vport->q_vector_idxs,
+						     &vec_info);
+	if (num_alloc_vecs <= 0) {
+		dev_err(&vport->adapter->pdev->dev, "Vector distribution failed: %d\n",
+			num_alloc_vecs);
+		return -EINVAL;
+	}
+
+	vport->num_q_vectors = num_alloc_vecs;
+
+	return 0;
+}
+
 /**
  * idpf_vport_init - Initialize virtual port
  * @vport: virtual port to be initialized
@@ -2304,6 +2830,7 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
 	idpf_vport_init_num_qs(vport, vport_msg);
 	idpf_vport_calc_num_q_desc(vport);
 	idpf_vport_calc_num_q_groups(vport);
+	idpf_vport_alloc_vec_indexes(vport);
 
 	mutex_init(&vport->stop_mutex);
 }
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
