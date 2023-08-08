Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CAC773AE1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 17:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A9F761186;
	Tue,  8 Aug 2023 15:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A9F761186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691507568;
	bh=jmh0/QJIifDKudy8XpYQmnzp6HuUOtDHHWQvMY3UZr4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eaxMGSLKNUv5kxFfUvqh6nin+HniGQ7sbgzyzhFqHhrWHFh7PrQPHIR3Mt+gU3zxR
	 QunzerYLOjwIc6fsYcuKCb2Nsdg5tH94KaC+60uegJ5tvsctiPxySAmMJKSF3Z7oyS
	 zYHX0ctskBdI0YYWQTj96EzhGpCzuSaUYPSlt1zHHkeFeStcQvXi3HmSEWK2Zf1zjo
	 mx1Gi+HiIrQg2EyuVxa67nliOBGwpaiNSuHXHzuB071GEQqhXpeGq1qnZaG4H+fv16
	 5eRESbhABbi15sI7Kabxlrm21egx30fQbaXEmfDIMaXMtwS4kCjuxXg3VqHGG4Ap20
	 2DST8rehbbfBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lj5aFAl9S_dj; Tue,  8 Aug 2023 15:12:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C3BF61173;
	Tue,  8 Aug 2023 15:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C3BF61173
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B13971BF404
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AB9B404A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:54:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AB9B404A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6PSnHP7nBA2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 01:54:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34C6F40447
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34C6F40447
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="350997461"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="350997461"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 18:54:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801162742"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="801162742"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.188])
 by fmsmga004.fm.intel.com with ESMTP; 07 Aug 2023 18:53:59 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Tue,  8 Aug 2023 09:57:31 +0800
Message-Id: <20230808015734.1060525-3-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230808015734.1060525-1-wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 08 Aug 2023 15:12:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691459642; x=1722995642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K+T51/Xu0hQWEN0g9KLrOhyaPm8BMPcqSgEGpfpXSQQ=;
 b=l+KcgT9mTuocaMWGr1qNIxSm9Dtcwi10S368r5Pw5uQRuK1VIKOf/4C9
 1a7TnuJrycCzWz47gw6J6gH58isOTWwfn7HxI+qBP0fXqDbdwjPtildbW
 p1RN9W5ArLcNmNl5qu4yg1KLMeoag06w0Hm69JP9hhDGGfPnZ47wAHF5u
 fI6DQslekajQnG6vbgA9CznFwHV6Jb/WFEzdaWJN+mS3CGCArYxblzQ6r
 e5skMvFOztT/5EKwFKs8EDxXbTtzcaZ6EdmYa2jwxnlPiqOlTVJj+qALE
 NyqiyV+STYQSQ9t5fG8mXVgq79nOECtHteNfs+mePDaD8x0wfTRM7AMM6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l+KcgT9m
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: Support VF queue
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
Cc: anthony.l.nguyen@intel.com, Wenjun Wu <wenjun1.wu@intel.com>,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
 drivers/net/ethernet/intel/ice/ice_common.c   |  19 ++
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 312 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 10 files changed, 372 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 34be1cb1e28f..677ab9571b3f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -642,6 +642,8 @@ struct ice_pf {
 #define ICE_VF_AGG_NODE_ID_START	65
 #define ICE_MAX_VF_AGG_NODES		32
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
+
+	u8 num_quanta_prof_used;
 };
 
 extern struct workqueue_struct *ice_lag_wq;
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 9ab9fb558b5e..efd01874434f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -377,6 +377,8 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 		break;
 	}
 
+	tlan_ctx->quanta_prof_idx = ring->quanta_prof_id;
+
 	tlan_ctx->tso_ena = ICE_TX_LEGACY;
 	tlan_ctx->tso_qnum = pf_q;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index a0e43599eb55..910525a19a4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2463,6 +2463,23 @@ ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 	ice_recalc_port_limited_caps(hw, &func_p->common_cap);
 }
 
+/**
+ * ice_func_id_to_logical_id - map from function id to logical pf id
+ * @active_function_bitmap: active function bitmap
+ * @pf_id: function number of device
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
@@ -2480,6 +2497,8 @@ ice_parse_valid_functions_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 	dev_p->num_funcs = hweight32(number);
 	ice_debug(hw, ICE_DBG_INIT, "dev caps: num_funcs = %d\n",
 		  dev_p->num_funcs);
+
+	hw->logical_pf_id = ice_func_id_to_logical_id(number, hw->pf_id);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 6756f3d51d14..9da94e000394 100644
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
index 166413fc33f4..7e152ab5b727 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -381,6 +381,8 @@ struct ice_tx_ring {
 	u8 flags;
 	u8 dcb_tc;			/* Traffic class of ring */
 	u8 ptp_tx;
+
+	u16 quanta_prof_id;
 } ____cacheline_internodealigned_in_smp;
 
 static inline bool ice_ring_uses_build_skb(struct ice_rx_ring *ring)
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a5429eca4350..504b367f1c77 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -850,6 +850,7 @@ struct ice_hw {
 	u8 revision_id;
 
 	u8 pf_id;		/* device profile info */
+	u8 logical_pf_id;
 	enum ice_phy_model phy_model;
 
 	u16 max_burst_size;	/* driver sets this value */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 67172fdd9bc2..6499d83cc706 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -52,6 +52,13 @@ struct ice_mdd_vf_events {
 	u16 last_printed;
 };
 
+struct ice_vf_qs_bw {
+	u16 queue_id;
+	u32 committed;
+	u32 peak;
+	u8 tc;
+};
+
 /* VF operations */
 struct ice_vf_ops {
 	enum ice_disq_rst_src reset_type;
@@ -133,6 +140,8 @@ struct ice_vf {
 
 	/* devlink port data */
 	struct devlink_port devlink_port;
+
+	struct ice_vf_qs_bw qs_bw[ICE_MAX_RSS_QS_PER_VF];
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 85d996531502..9fc1a9d1bcd4 100644
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
@@ -985,6 +988,170 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
+/**
+ * ice_vc_get_qos_caps - Get current QoS caps from PF
+ * @vf: pointer to the VF info
+ *
+ * Get VF's QoS capabilities, such as TC number, arbiter and
+ * bandwidth from PF.
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
+ */
+static int ice_vf_cfg_qs_bw(struct ice_vf *vf, u16 num_queues)
+{
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_vsi *vsi;
+	u32 p_rate;
+	int ret;
+	u16 i;
+	u8 tc;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi)
+		return -EINVAL;
+
+	for (i = 0; i < num_queues; i++) {
+		p_rate = vf->qs_bw[i].peak;
+		tc = vf->qs_bw[i].tc;
+		if (p_rate) {
+			ret = ice_cfg_q_bw_lmt(hw->port_info, vsi->idx, tc,
+					       vf->qs_bw[i].queue_id,
+					       ICE_MAX_BW, p_rate);
+		} else {
+			ret = ice_cfg_q_bw_dflt_lmt(hw->port_info, vsi->idx, tc,
+						    vf->qs_bw[i].queue_id,
+						    ICE_MAX_BW);
+		}
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_cfg_q_quanta_profile
+ * @vf: pointer to the VF info
+ * @quanta_prof_idx: pointer to the quanta profile index
+ * @quanta_size: quanta size to be set
+ *
+ * This function chooses available quanta profile and configures the register.
+ * The quanta profile is evenly divided by the number of device ports, and then
+ * available to the specific PF and VFs. The first profile for each PF is a
+ * reserved default profile. Only quanta size of the rest unused profile can be
+ * modified.
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
+	per_pf = (GLCOMM_QUANTA_PROF_MAX_INDEX + 1) / hw->dev_caps.num_funcs;
+	begin_id = hw->logical_pf_id * per_pf;
+	n_used = pf->num_quanta_prof_used;
+
+	if (quanta_size == ICE_DFLT_QUANTA) {
+		*quanta_prof_idx = begin_id;
+	} else {
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
@@ -1587,6 +1754,136 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
+/**
+ * ice_vc_cfg_q_bw - Configure per queue bandwidth
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer which holds the command descriptor
+ *
+ * Configure VF queues bandwidth.
+ */
+static int ice_vc_cfg_q_bw(struct ice_vf *vf, u8 *msg)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_queues_bw_cfg *qbw =
+		(struct virtchnl_queues_bw_cfg *)msg;
+	struct ice_vf_qs_bw *qs_bw;
+	struct ice_vsi *vsi;
+	size_t len;
+	u16 i;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states) ||
+	    !ice_vc_isvalid_vsi_id(vf, qbw->vsi_id)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi || vsi->vsi_num != qbw->vsi_id) {
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
+	len = sizeof(struct ice_vf_qs_bw) * qbw->num_queues;
+	qs_bw = kzalloc(len, GFP_KERNEL);
+	if (!qs_bw) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		goto err_bw;
+	}
+
+	for (i = 0; i < qbw->num_queues; i++) {
+		qs_bw[i].queue_id = qbw->cfg[i].queue_id;
+		qs_bw[i].peak = qbw->cfg[i].shaper.peak;
+		qs_bw[i].committed = qbw->cfg[i].shaper.committed;
+		qs_bw[i].tc = qbw->cfg[i].tc;
+	}
+
+	memcpy(vf->qs_bw, qs_bw, len);
+
+err_bw:
+	kfree(qs_bw);
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
+ */
+static int ice_vc_cfg_q_quanta(struct ice_vf *vf, u8 *msg)
+{
+	u16 quanta_prof_id, quanta_size, start_qid, num_queues, end_qid, i;
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_quanta_cfg *qquanta =
+		(struct virtchnl_quanta_cfg *)msg;
+	struct ice_vsi *vsi;
+	int ret;
+
+	start_qid = qquanta->queue_select.start_queue_id;
+	num_queues = qquanta->queue_select.num_queues;
+	quanta_size = qquanta->quanta_size;
+	end_qid = start_qid + num_queues;
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
+	if (end_qid > ICE_MAX_RSS_QS_PER_VF ||
+	    end_qid > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
+		dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
+			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
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
@@ -1710,6 +2007,9 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		}
 	}
 
+	if (ice_vf_cfg_qs_bw(vf, qci->num_queue_pairs))
+		goto error_param;
+
 	/* send the response to the VF */
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
 				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
@@ -3687,6 +3987,9 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
 	.ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
 	.dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
+	.get_qos_caps = ice_vc_get_qos_caps,
+	.cfg_q_bw = ice_vc_cfg_q_bw,
+	.cfg_q_quanta = ice_vc_cfg_q_quanta,
 };
 
 /**
@@ -4040,6 +4343,15 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
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
index cd747718de73..0efb9c0f669a 100644
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
@@ -51,6 +58,10 @@ struct ice_virtchnl_ops {
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
index 7d547fa616fa..2e3f63a429cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -85,6 +85,11 @@ static const u32 fdir_pf_allowlist_opcodes[] = {
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
@@ -105,6 +110,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_QOS, tc_allowlist_opcodes),
 };
 
 /**
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
