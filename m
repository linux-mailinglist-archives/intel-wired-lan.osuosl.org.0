Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA4696BF4F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 15:58:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E27F81211;
	Wed,  4 Sep 2024 13:58:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SWeYI7pS8ldt; Wed,  4 Sep 2024 13:58:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AACD811FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725458296;
	bh=w+U5AX/I1J73JZG0Vm9/D6lZQ8o1U1RkTcWXnY0tdg4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yTxo8rzs2gezIDMqbC7XQKHaPAaK/xt3pOCAp6Dcl3BPpcVEAvrRkSad0nQsQn87C
	 cx+ymBtCCZPmZ21xPkQa4tlg+IriwfNrE6+S/PQ1bxp/T9KA+mWKqpxVj/276Gozvb
	 LZ9GwstnuwOZ+7PIDi47F9J0IHdr39AqWh179B4CW7AXTi5gvCcjrFwNQMhWYQ2iTP
	 Rn0RPHrKZMA4mAAAwSpHB6r8SRARuXR+ZdmkgMQzZyVCx3cytY+9zt728zPRlcFBC+
	 kXpIob18WkIfdKca6X3C5oNj/7z01cPawGlBhUdpDzWpISGvOvls3qRwKrutDzOQlN
	 84P4BfduPTg4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AACD811FA;
	Wed,  4 Sep 2024 13:58:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 634F91BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:58:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CAF640203
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:58:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id puTFC2LpqMqB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 13:58:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 624FC40189
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 624FC40189
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 624FC40189
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:58:13 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-472-VWhI279vNWy-PvXkGsPCVw-1; Wed,
 04 Sep 2024 09:58:07 -0400
X-MC-Unique: VWhI279vNWy-PvXkGsPCVw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id DF26A195608A; Wed,  4 Sep 2024 13:58:05 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.58])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4407219560B5; Wed,  4 Sep 2024 13:57:56 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  4 Sep 2024 15:53:45 +0200
Message-ID: <5ab74497c18b9739a332e891a05ad2a48a9c1a9a.1725457317.git.pabeni@redhat.com>
In-Reply-To: <cover.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725458292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w+U5AX/I1J73JZG0Vm9/D6lZQ8o1U1RkTcWXnY0tdg4=;
 b=GR3qus3qpZVVhAog0SSYn1Tr0E+j26/C1mteiJOlB7Jw12K4UNq/XAKLnCqK/Fv2RTFRk0
 JM/SWDFGeFPrQZUGkv+U3zxlA9i21ZMx9hk5bJeON6HmuZ7Rl2p7Z9D8Hu17GZZajZpitl
 UorH9UvHFP3xujlImpzTOfcvGZ7TfNE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GR3qus3q
Subject: [Intel-wired-lan] [PATCH v6 net-next 13/15] ice: Support VF queue
 rate limit and quanta size configuration
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wenjun Wu <wenjun1.wu@intel.com>

Add support to configure VF queue rate limit and quanta size.

For quanta size configuration, the quanta profiles are divided evenly
by PF numbers. For each port, the first quanta profile is reserved for
default. When VF is asked to set queue quanta size, PF will search for
an available profile, change the fields and assigned this profile to the
queue.

Signed-off-by: Wenjun Wu <wenjun1.wu@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  21 ++
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 335 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 10 files changed, 395 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index caaa10157909..35ace1907a62 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -659,6 +659,8 @@ struct ice_pf {
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
 	struct ice_dplls dplls;
 	struct device *hwmon_dev;
+
+	u8 num_quanta_prof_used;
 };
 
 extern struct workqueue_struct *ice_lag_wq;
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index f448d3a84564..c238d440a623 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -349,6 +349,8 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 		break;
 	}
 
+	tlan_ctx->quanta_prof_idx = ring->quanta_prof_id;
+
 	tlan_ctx->tso_ena = ICE_TX_LEGACY;
 	tlan_ctx->tso_qnum = pf_q;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..b22e71dc59d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2436,6 +2436,25 @@ ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 	ice_recalc_port_limited_caps(hw, &func_p->common_cap);
 }
 
+/**
+ * ice_func_id_to_logical_id - map from function id to logical pf id
+ * @active_function_bitmap: active function bitmap
+ * @pf_id: function number of device
+ *
+ * Return: logical PF ID.
+ */
+static int ice_func_id_to_logical_id(u32 active_function_bitmap, u8 pf_id)
+{
+	u8 logical_id = 0;
+	u8 i;
+
+	for (i = 0; i < pf_id; i++)
+		if (active_function_bitmap & BIT(i))
+			logical_id++;
+
+	return logical_id;
+}
+
 /**
  * ice_parse_valid_functions_cap - Parse ICE_AQC_CAPS_VALID_FUNCTIONS caps
  * @hw: pointer to the HW struct
@@ -2453,6 +2472,8 @@ ice_parse_valid_functions_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	dev_p->num_funcs = hweight32(number);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: num_funcs = %d\n",
 		  dev_p->num_funcs);
+
+	hw->logical_pf_id = ice_func_id_to_logical_id(number, hw->pf_id);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 91cbae1eec89..af9302f0e376 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -6,6 +6,14 @@
 #ifndef _ICE_HW_AUTOGEN_H_
 #define _ICE_HW_AUTOGEN_H_
 
+#define GLCOMM_QUANTA_PROF(_i)			(0x002D2D68 + ((_i) * 4))
+#define GLCOMM_QUANTA_PROF_MAX_INDEX		15
+#define GLCOMM_QUANTA_PROF_QUANTA_SIZE_S	0
+#define GLCOMM_QUANTA_PROF_QUANTA_SIZE_M	ICE_M(0x3FFF, 0)
+#define GLCOMM_QUANTA_PROF_MAX_CMD_S		16
+#define GLCOMM_QUANTA_PROF_MAX_CMD_M		ICE_M(0xFF, 16)
+#define GLCOMM_QUANTA_PROF_MAX_DESC_S		24
+#define GLCOMM_QUANTA_PROF_MAX_DESC_M		ICE_M(0x3F, 24)
 #define QTX_COMM_DBELL(_DBQM)			(0x002C0000 + ((_DBQM) * 4))
 #define QTX_COMM_HEAD(_DBQM)			(0x000E0000 + ((_DBQM) * 4))
 #define QTX_COMM_HEAD_HEAD_S			0
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index feba314a3fe4..ea2fae9035b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -406,6 +406,7 @@ struct ice_tx_ring {
 #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
+	u16 quanta_prof_id;
 } ____cacheline_internodealigned_in_smp;
 
 static inline bool ice_ring_uses_build_skb(struct ice_rx_ring *ring)
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b9e443232335..953576003425 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -904,6 +904,7 @@ struct ice_hw {
 	u8 revision_id;
 
 	u8 pf_id;		/* device profile info */
+	u8 logical_pf_id;
 
 	u16 max_burst_size;	/* driver sets this value */
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index be4266899690..4261fe1c2bcd 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -59,6 +59,13 @@ struct ice_fdir_prof_info {
 	u64 fdir_active_cnt;
 };
 
+struct ice_vf_qs_bw {
+	u32 committed;
+	u32 peak;
+	u16 queue_id;
+	u8 tc;
+};
+
 /* VF operations */
 struct ice_vf_ops {
 	enum ice_disq_rst_src reset_type;
@@ -140,6 +147,7 @@ struct ice_vf {
 	struct devlink_port devlink_port;
 
 	u16 num_msix;			/* num of MSI-X configured on this VF */
+	struct ice_vf_qs_bw qs_bw[ICE_MAX_RSS_QS_PER_VF];
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 59f62306b9cb..96543f69f5de 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -495,6 +495,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
 
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_QOS)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_QOS;
+
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
@@ -1034,6 +1037,191 @@ static int ice_vc_config_rss_hfunc(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
+/**
+ * ice_vc_get_qos_caps - Get current QoS caps from PF
+ * @vf: pointer to the VF info
+ *
+ * Get VF's QoS capabilities, such as TC number, arbiter and
+ * bandwidth from PF.
+ *
+ * Return: 0 on success or negative error value.
+ */
+static int ice_vc_get_qos_caps(struct ice_vf *vf)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_qos_cap_list *cap_list = NULL;
+	u8 tc_prio[ICE_MAX_TRAFFIC_CLASS] = { 0 };
+	struct virtchnl_qos_cap_elem *cfg = NULL;
+	struct ice_vsi_ctx *vsi_ctx;
+	struct ice_pf *pf = vf->pf;
+	struct ice_port_info *pi;
+	struct ice_vsi *vsi;
+	u8 numtc, tc;
+	u16 len = 0;
+	int ret, i;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	pi = pf->hw.port_info;
+	numtc = vsi->tc_cfg.numtc;
+
+	vsi_ctx = ice_get_vsi_ctx(pi->hw, vf->lan_vsi_idx);
+	if (!vsi_ctx) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	len = struct_size(cap_list, cap, numtc);
+	cap_list = kzalloc(len, GFP_KERNEL);
+	if (!cap_list) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		len = 0;
+		goto err;
+	}
+
+	cap_list->vsi_id = vsi->vsi_num;
+	cap_list->num_elem = numtc;
+
+	/* Store the UP2TC configuration from DCB to a user priority bitmap
+	 * of each TC. Each element of prio_of_tc represents one TC. Each
+	 * bitmap indicates the user priorities belong to this TC.
+	 */
+	for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
+		tc = pi->qos_cfg.local_dcbx_cfg.etscfg.prio_table[i];
+		tc_prio[tc] |= BIT(i);
+	}
+
+	for (i = 0; i < numtc; i++) {
+		cfg = &cap_list->cap[i];
+		cfg->tc_num = i;
+		cfg->tc_prio = tc_prio[i];
+		cfg->arbiter = pi->qos_cfg.local_dcbx_cfg.etscfg.tsatable[i];
+		cfg->weight = VIRTCHNL_STRICT_WEIGHT;
+		cfg->type = VIRTCHNL_BW_SHAPER;
+		cfg->shaper.committed = vsi_ctx->sched.bw_t_info[i].cir_bw.bw;
+		cfg->shaper.peak = vsi_ctx->sched.bw_t_info[i].eir_bw.bw;
+	}
+
+err:
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_QOS_CAPS, v_ret,
+				    (u8 *)cap_list, len);
+	kfree(cap_list);
+	return ret;
+}
+
+/**
+ * ice_vf_cfg_qs_bw - Configure per queue bandwidth
+ * @vf: pointer to the VF info
+ * @num_queues: number of queues to be configured
+ *
+ * Configure per queue bandwidth.
+ *
+ * Return: 0 on success or negative error value.
+ */
+static int ice_vf_cfg_qs_bw(struct ice_vf *vf, u16 num_queues)
+{
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_vsi *vsi;
+	int ret;
+	u16 i;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi)
+		return -EINVAL;
+
+	for (i = 0; i < num_queues; i++) {
+		u32 p_rate, min_rate;
+		u8 tc;
+
+		p_rate = vf->qs_bw[i].peak;
+		min_rate = vf->qs_bw[i].committed;
+		tc = vf->qs_bw[i].tc;
+		if (p_rate)
+			ret = ice_cfg_q_bw_lmt(hw->port_info, vsi->idx, tc,
+					       vf->qs_bw[i].queue_id,
+					       ICE_MAX_BW, p_rate);
+		else
+			ret = ice_cfg_q_bw_dflt_lmt(hw->port_info, vsi->idx, tc,
+						    vf->qs_bw[i].queue_id,
+						    ICE_MAX_BW);
+		if (ret)
+			return ret;
+
+		if (min_rate)
+			ret = ice_cfg_q_bw_lmt(hw->port_info, vsi->idx, tc,
+					       vf->qs_bw[i].queue_id,
+					       ICE_MIN_BW, min_rate);
+		else
+			ret = ice_cfg_q_bw_dflt_lmt(hw->port_info, vsi->idx, tc,
+						    vf->qs_bw[i].queue_id,
+						    ICE_MIN_BW);
+
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_cfg_q_quanta_profile - Configure quanta profile
+ * @vf: pointer to the VF info
+ * @quanta_prof_idx: pointer to the quanta profile index
+ * @quanta_size: quanta size to be set
+ *
+ * This function chooses available quanta profile and configures the register.
+ * The quanta profile is evenly divided by the number of device ports, and then
+ * available to the specific PF and VFs. The first profile for each PF is a
+ * reserved default profile. Only quanta size of the rest unused profile can be
+ * modified.
+ *
+ * Return: 0 on success or negative error value.
+ */
+static int ice_vf_cfg_q_quanta_profile(struct ice_vf *vf, u16 quanta_size,
+				       u16 *quanta_prof_idx)
+{
+	const u16 n_desc = calc_quanta_desc(quanta_size);
+	struct ice_hw *hw = &vf->pf->hw;
+	const u16 n_cmd = 2 * n_desc;
+	struct ice_pf *pf = vf->pf;
+	u16 per_pf, begin_id;
+	u8 n_used;
+	u32 reg;
+
+	begin_id = (GLCOMM_QUANTA_PROF_MAX_INDEX + 1) / hw->dev_caps.num_funcs *
+		   hw->logical_pf_id;
+
+	if (quanta_size == ICE_DFLT_QUANTA) {
+		*quanta_prof_idx = begin_id;
+	} else {
+		per_pf = (GLCOMM_QUANTA_PROF_MAX_INDEX + 1) /
+			 hw->dev_caps.num_funcs;
+		n_used = pf->num_quanta_prof_used;
+		if (n_used < per_pf) {
+			*quanta_prof_idx = begin_id + 1 + n_used;
+			pf->num_quanta_prof_used++;
+		} else {
+			return -EINVAL;
+		}
+	}
+
+	reg = FIELD_PREP(GLCOMM_QUANTA_PROF_QUANTA_SIZE_M, quanta_size) |
+	      FIELD_PREP(GLCOMM_QUANTA_PROF_MAX_CMD_M, n_cmd) |
+	      FIELD_PREP(GLCOMM_QUANTA_PROF_MAX_DESC_M, n_desc);
+	wr32(hw, GLCOMM_QUANTA_PROF(*quanta_prof_idx), reg);
+
+	return 0;
+}
+
 /**
  * ice_vc_cfg_promiscuous_mode_msg
  * @vf: pointer to the VF info
@@ -1635,6 +1823,141 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
+/**
+ * ice_vc_cfg_q_bw - Configure per queue bandwidth
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer which holds the command descriptor
+ *
+ * Configure VF queues bandwidth.
+ *
+ * Return: 0 on success or negative error value.
+ */
+static int ice_vc_cfg_q_bw(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_queues_bw_cfg *qbw =
+		(struct virtchnl_queues_bw_cfg *)msg;
+	struct ice_vsi *vsi;
+	u16 i;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states) ||
+	    !ice_vc_isvalid_vsi_id(vf, qbw->vsi_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	if (qbw->num_queues > ICE_MAX_RSS_QS_PER_VF ||
+	    qbw->num_queues > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
+		dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
+			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	for (i = 0; i < qbw->num_queues; i++) {
+		if (qbw->cfg[i].shaper.peak != 0 && vf->max_tx_rate != 0 &&
+		    qbw->cfg[i].shaper.peak > vf->max_tx_rate)
+			dev_warn(ice_pf_to_dev(vf->pf), "The maximum queue %d rate limit configuration may not take effect because the maximum TX rate for VF-%d is %d\n",
+				 qbw->cfg[i].queue_id, vf->vf_id,
+				 vf->max_tx_rate);
+		if (qbw->cfg[i].shaper.committed != 0 && vf->min_tx_rate != 0 &&
+		    qbw->cfg[i].shaper.committed < vf->min_tx_rate)
+			dev_warn(ice_pf_to_dev(vf->pf), "The minimum queue %d rate limit configuration may not take effect because the minimum TX rate for VF-%d is %d\n",
+				 qbw->cfg[i].queue_id, vf->vf_id,
+				 vf->max_tx_rate);
+	}
+
+	for (i = 0; i < qbw->num_queues; i++) {
+		vf->qs_bw[i].queue_id = qbw->cfg[i].queue_id;
+		vf->qs_bw[i].peak = qbw->cfg[i].shaper.peak;
+		vf->qs_bw[i].committed = qbw->cfg[i].shaper.committed;
+		vf->qs_bw[i].tc = qbw->cfg[i].tc;
+	}
+
+	if (ice_vf_cfg_qs_bw(vf, qbw->num_queues))
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+
+err:
+	/* send the response to the VF */
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUEUE_BW,
+				    v_ret, NULL, 0);
+}
+
+/**
+ * ice_vc_cfg_q_quanta - Configure per queue quanta
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer which holds the command descriptor
+ *
+ * Configure VF queues quanta.
+ *
+ * Return: 0 on success or negative error value.
+ */
+static int ice_vc_cfg_q_quanta(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	u16 quanta_prof_id, quanta_size, start_qid, end_qid, i;
+	struct virtchnl_quanta_cfg *qquanta =
+		(struct virtchnl_quanta_cfg *)msg;
+	struct ice_vsi *vsi;
+	int ret;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	end_qid = qquanta->queue_select.start_queue_id +
+		  qquanta->queue_select.num_queues;
+	if (end_qid > ICE_MAX_RSS_QS_PER_VF ||
+	    end_qid > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
+		dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
+			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	quanta_size = qquanta->quanta_size;
+	if (quanta_size > ICE_MAX_QUANTA_SIZE ||
+	    quanta_size < ICE_MIN_QUANTA_SIZE) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	if (quanta_size % 64) {
+		dev_err(ice_pf_to_dev(vf->pf), "quanta size should be the product of 64\n");
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	ret = ice_vf_cfg_q_quanta_profile(vf, quanta_size,
+					  &quanta_prof_id);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
+		goto err;
+	}
+
+	start_qid = qquanta->queue_select.start_queue_id;
+	for (i = start_qid; i < end_qid; i++)
+		vsi->tx_rings[i]->quanta_prof_id = quanta_prof_id;
+
+err:
+	/* send the response to the VF */
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUANTA,
+				     v_ret, NULL, 0);
+}
+
 /**
  * ice_vc_cfg_qs_msg
  * @vf: pointer to the VF info
@@ -3821,6 +4144,9 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
 	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
 	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
+	.get_qos_caps = ice_vc_get_qos_caps,
+	.cfg_q_bw = ice_vc_cfg_q_bw,
+	.cfg_q_quanta = ice_vc_cfg_q_quanta,
 };
 
 /**
@@ -4177,6 +4503,15 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
 		err = ops->dis_vlan_insertion_v2_msg(vf, msg);
 		break;
+	case VIRTCHNL_OP_GET_QOS_CAPS:
+		err = ops->get_qos_caps(vf);
+		break;
+	case VIRTCHNL_OP_CONFIG_QUEUE_BW:
+		err = ops->cfg_q_bw(vf, msg);
+		break;
+	case VIRTCHNL_OP_CONFIG_QUANTA:
+		err = ops->cfg_q_quanta(vf, msg);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 3a4115869153..0c629aef9baf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -13,6 +13,13 @@
 /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
 #define ICE_MAX_VLAN_PER_VF		8
 
+#define ICE_DFLT_QUANTA 1024
+#define ICE_MAX_QUANTA_SIZE 4096
+#define ICE_MIN_QUANTA_SIZE 256
+
+#define calc_quanta_desc(x)	\
+	max_t(u16, 12, min_t(u16, 63, (((x) + 66) / 132) * 2 + 4))
+
 /* MAC filters: 1 is reserved for the VF's default/perm_addr/LAA MAC, 1 for
  * broadcast, and 16 for additional unicast/multicast filters
  */
@@ -61,6 +68,10 @@ struct ice_virtchnl_ops {
 	int (*dis_vlan_stripping_v2_msg)(struct ice_vf *vf, u8 *msg);
 	int (*ena_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
 	int (*dis_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
+	int (*get_qos_caps)(struct ice_vf *vf);
+	int (*cfg_q_tc_map)(struct ice_vf *vf, u8 *msg);
+	int (*cfg_q_bw)(struct ice_vf *vf, u8 *msg);
+	int (*cfg_q_quanta)(struct ice_vf *vf, u8 *msg);
 };
 
 #ifdef CONFIG_PCI_IOV
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index d796dbd2a440..c105a82ee136 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -84,6 +84,11 @@ static const u32 fdir_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_ADD_FDIR_FILTER, VIRTCHNL_OP_DEL_FDIR_FILTER,
 };
 
+static const u32 tc_allowlist_opcodes[] = {
+	VIRTCHNL_OP_GET_QOS_CAPS, VIRTCHNL_OP_CONFIG_QUEUE_BW,
+	VIRTCHNL_OP_CONFIG_QUANTA,
+};
+
 struct allowlist_opcode_info {
 	const u32 *opcodes;
 	size_t size;
@@ -104,6 +109,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_QOS, tc_allowlist_opcodes),
 };
 
 /**
-- 
2.45.2

