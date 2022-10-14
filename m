Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB17E5FEB44
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 10:59:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A9EA408F5;
	Fri, 14 Oct 2022 08:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A9EA408F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665737971;
	bh=VELVpcetwCTidMwf9A+atBi5Wo+JJFv72U7ji99ruRk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WdbQd7Vl73VyYDzpWozYEjaoCOIuSktg8gyTM2PfbcER5c/gDrzY2YTqiNYsoXMx1
	 A1JdYbBfFUTZ7aV+UflHdJ/cjivqrQhA742LbRfkp2kH1Anv+OmLHWGLyVJDdyXEAY
	 AX99etUdGkG6MNeJ7FNqaplv+cOt5fWP6C7VLuUWzOw10aXIm/lofK76+hIb2L9EX/
	 xMu1VY+1osBJtrqqc0bP5mxWUt8YFkaCGhbMxKJ3e22iIbdQjuuhwJFVOabmIIFjfR
	 FXSh0APiO44Ao7HXjLNBUy4hDUwNVoZnp6/P+7PW7YsOTBOUcSNlOF73U+VKjOk5T5
	 ZmZWMEDTlSROg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I9gJhtgmtG8h; Fri, 14 Oct 2022 08:59:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 807B1408C0;
	Fri, 14 Oct 2022 08:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 807B1408C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2ADED1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 08:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12BFA40FF6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 08:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12BFA40FF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2UwGkAIWwAQ8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Oct 2022 08:59:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DA6C405FA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DA6C405FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 08:59:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="369514457"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="369514457"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 01:59:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="690469500"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="690469500"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga008.fm.intel.com with ESMTP; 14 Oct 2022 01:59:19 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Oct 2022 04:57:27 -0400
Message-Id: <20221014085727.386520-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665737962; x=1697273962;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kM7Ahb1c4KvLpvG2dKQG8ebo4aiRHd106HHfDD0lsLU=;
 b=XGC+WC4SRB+XKqOHedCZ10bUr1B/0FaXai1ud5AhuwnB2QyRu+ULRqaj
 FQWl1bl99M5kpP8SowASfTbjVJ8RwOkWHTGBb02BRxgcu7jap87iFrHyr
 p48RWlc/yE0AtK5Y/7VQoRsdxcalJ+9DEctXyR3GQN0bWzBYCdh1/NOPP
 4KwU/JHuYgXTXsio5tUT7TnobKq5mV2eKLgG4L7oxX1TiCLyOtxkZ+4PT
 wbMqYFb/P94Bb6zucfkUanK9N17D41MoP779AhqzniR+bl0+tgeZSVc+N
 m8BsyWovnom6+Qqw3dmo7YwxT3H/1vD3XM39YY2cbwhOPcc+LB1t4YAvI
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XGC+WC4S
Subject: [Intel-wired-lan] [PATCH net v2] ice: Add support Flex RXD
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
Cc: Michal Jaron <michalx.jaron@intel.com>, Xu Ting <ting.xu@intel.com>,
 Leyi Rong <leyi.rong@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

Add new VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC flag, opcode
VIRTCHNL_OP_GET_SUPPORTED_RXDIDS and add member rxdid
in struct virtchnl_rxq_info to support AVF Flex RXD
extension.

Add support to allow VF to query flexible descriptor RXDIDs supported
by DDP package and configure Rx queues with selected RXDID for IAVF.

Add code to allow VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message to be
processed. Add necessary macros for registers.

Signed-off-by: Leyi Rong <leyi.rong@intel.com>
Signed-off-by: Xu Ting <ting.xu@intel.com>
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Added missing sidned-off-by tag
---
 drivers/net/ethernet/intel/ice/ice.h          |  2 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 86 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  2 +
 .../intel/ice/ice_virtchnl_allowlist.c        |  6 ++
 include/linux/avf/virtchnl.h                  | 14 ++-
 6 files changed, 111 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a5751057dc3b..d8fc811adc1c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -601,6 +601,8 @@ struct ice_pf {
 	u16 num_dmac_chnl_fltrs;
 	struct hlist_head tc_flower_fltr_list;
 
+	u64 supported_rxdids;
+
 	__le64 nvm_phy_type_lo; /* NVM PHY type low */
 	__le64 nvm_phy_type_hi; /* NVM PHY type high */
 	struct ice_link_default_override_tlv link_dflt_override;
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index d16738a3d3a7..a92dc9a16035 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -110,6 +110,9 @@
 #define PRTDCB_TUP2TC				0x001D26C0
 #define GL_PREEXT_L2_PMASK0(_i)			(0x0020F0FC + ((_i) * 4))
 #define GL_PREEXT_L2_PMASK1(_i)			(0x0020F108 + ((_i) * 4))
+#define GLFLXP_RXDID_FLAGS(_i, _j)              (0x0045D000 + ((_i) * 4 + (_j) * 256))
+#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S       0
+#define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M       ICE_M(0x3F, 0)
 #define GLFLXP_RXDID_FLX_WRD_0(_i)		(0x0045c800 + ((_i) * 4))
 #define GLFLXP_RXDID_FLX_WRD_0_PROT_MDID_S	0
 #define GLFLXP_RXDID_FLX_WRD_0_PROT_MDID_M	ICE_M(0xFF, 0)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 2b4c791b6cba..7869cb56f002 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -462,6 +462,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_REG;
 	}
 
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC;
+
 	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_FDIR_PF)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_FDIR_PF;
 
@@ -1618,6 +1621,9 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	for (i = 0; i < qci->num_queue_pairs; i++) {
+		struct ice_hw *hw;
+		u32 rxdid;
+		u16 pf_q;
 		qpi = &qci->qpair[i];
 		if (qpi->txq.vsi_id != qci->vsi_id ||
 		    qpi->rxq.vsi_id != qci->vsi_id ||
@@ -1686,6 +1692,25 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				goto error_param;
 			}
 		}
+
+		/* VF Rx queue RXDID configuration */
+		pf_q = vsi->rxq_map[qpi->rxq.queue_id];
+		rxdid = qpi->rxq.rxdid;
+		hw = &vsi->back->hw;
+
+		/* If Rx flex desc is supported, select RXDID for Rx queues.
+		 * Otherwise, use legacy 32byte descriptor format.
+		 * Legacy 16byte descriptor is not supported. If this RXDID
+		 * is selected, return error.
+		 */
+		if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC) {
+			if (!(BIT(rxdid) & pf->supported_rxdids))
+				goto error_param;
+		} else {
+			rxdid = ICE_RXDID_LEGACY_1;
+		}
+
+		ice_write_qrxflxp_cntxt(hw, pf_q, rxdid, 0x03, false);
 	}
 
 	/* send the response to the VF */
@@ -2456,6 +2481,62 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 				     v_ret, NULL, 0);
 }
 
+/**
+ * ice_vc_query_rxdid - query RXDID supported by DDP package
+ * @vf: pointer to VF info
+ *
+ * Called from VF to query a bitmap of supported flexible
+ * descriptor RXDIDs of a DDP package.
+ */
+static int ice_vc_query_rxdid(struct ice_vf *vf)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_supported_rxdids *rxdid = NULL;
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_pf *pf = vf->pf;
+	int len = 0;
+	int ret, i;
+	u32 regval;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	len = sizeof(struct virtchnl_supported_rxdids);
+	rxdid = (struct virtchnl_supported_rxdids *)kzalloc(len, GFP_KERNEL);
+	if (!rxdid) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		len = 0;
+		goto err;
+	}
+
+	/* Read flexiflag registers to determine whether the
+	 * corresponding RXDID is configured and supported or not.
+	 * Since Legacy 16byte descriptor format is not supported,
+	 * start from Legacy 32byte descriptor.
+	 */
+	for (i = ICE_RXDID_LEGACY_1; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
+		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
+		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
+			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
+			rxdid->supported_rxdids |= BIT(i);
+	}
+
+	pf->supported_rxdids = rxdid->supported_rxdids;
+
+err:
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
+				    v_ret, (u8 *)rxdid, len);
+	kfree(rxdid);
+	return ret;
+}
+
 /**
  * ice_vf_init_vlan_stripping - enable/disable VLAN stripping on initialization
  * @vf: VF to enable/disable VLAN stripping for on initialization
@@ -3490,6 +3571,7 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.cfg_promiscuous_mode_msg = ice_vc_cfg_promiscuous_mode_msg,
 	.add_vlan_msg = ice_vc_add_vlan_msg,
 	.remove_vlan_msg = ice_vc_remove_vlan_msg,
+	.query_rxdid = ice_vc_query_rxdid,
 	.ena_vlan_stripping = ice_vc_ena_vlan_stripping,
 	.dis_vlan_stripping = ice_vc_dis_vlan_stripping,
 	.handle_rss_cfg_msg = ice_vc_handle_rss_cfg,
@@ -3624,6 +3706,7 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.cfg_promiscuous_mode_msg = ice_vc_repr_cfg_promiscuous_mode,
 	.add_vlan_msg = ice_vc_add_vlan_msg,
 	.remove_vlan_msg = ice_vc_remove_vlan_msg,
+	.query_rxdid = ice_vc_query_rxdid,
 	.ena_vlan_stripping = ice_vc_ena_vlan_stripping,
 	.dis_vlan_stripping = ice_vc_dis_vlan_stripping,
 	.handle_rss_cfg_msg = ice_vc_handle_rss_cfg,
@@ -3764,6 +3847,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_DEL_VLAN:
 		err = ops->remove_vlan_msg(vf, msg);
 		break;
+	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
+		err = ops->query_rxdid(vf);
+		break;
 	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
 		err = ops->ena_vlan_stripping(vf);
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index b5a3fd8adbb4..4867a92ebefb 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -17,6 +17,7 @@
  * broadcast, and 16 for additional unicast/multicast filters
  */
 #define ICE_MAX_MACADDR_PER_VF		18
+#define ICE_FLEX_DESC_RXDID_MAX_NUM	64
 
 struct ice_virtchnl_ops {
 	int (*get_ver_msg)(struct ice_vf *vf, u8 *msg);
@@ -35,6 +36,7 @@ struct ice_virtchnl_ops {
 	int (*cfg_promiscuous_mode_msg)(struct ice_vf *vf, u8 *msg);
 	int (*add_vlan_msg)(struct ice_vf *vf, u8 *msg);
 	int (*remove_vlan_msg)(struct ice_vf *vf, u8 *msg);
+	int (*query_rxdid)(struct ice_vf *vf);
 	int (*ena_vlan_stripping)(struct ice_vf *vf);
 	int (*dis_vlan_stripping)(struct ice_vf *vf);
 	int (*handle_rss_cfg_msg)(struct ice_vf *vf, u8 *msg, bool add);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index 5a82216e7d03..7d547fa616fa 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -70,6 +70,11 @@ static const u32 rss_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_GET_RSS_HENA_CAPS, VIRTCHNL_OP_SET_RSS_HENA,
 };
 
+/* VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC */
+static const u32 rx_flex_desc_allowlist_opcodes[] = {
+	VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
+};
+
 /* VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF */
 static const u32 adv_rss_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_ADD_RSS_CFG, VIRTCHNL_OP_DEL_RSS_CFG,
@@ -96,6 +101,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_REQ_QUEUES, req_queues_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN, vlan_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_RSS_PF, rss_pf_allowlist_opcodes),
+	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, rx_flex_desc_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
 	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 2ce27e8e4f19..d91af50ac58d 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -136,7 +136,8 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_CHANNELS = 31,
 	VIRTCHNL_OP_ADD_CLOUD_FILTER = 32,
 	VIRTCHNL_OP_DEL_CLOUD_FILTER = 33,
-	/* opcode 34 - 44 are reserved */
+	/* opcode 34 - 43 are reserved */
+	VIRTCHNL_OP_GET_SUPPORTED_RXDIDS = 44,
 	VIRTCHNL_OP_ADD_RSS_CFG = 45,
 	VIRTCHNL_OP_DEL_RSS_CFG = 46,
 	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
@@ -263,6 +264,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM	BIT(22)
 #define VIRTCHNL_VF_OFFLOAD_ADQ			BIT(23)
 #define VIRTCHNL_VF_OFFLOAD_USO			BIT(25)
+#define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	BIT(26)
 #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
 #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
 
@@ -318,7 +320,9 @@ struct virtchnl_rxq_info {
 	u16 splithdr_enabled; /* deprecated with AVF 1.0 */
 	u32 databuffer_size;
 	u32 max_pkt_size;
-	u32 pad1;
+	u8 pad0;
+	u8 rxdid;
+	u8 pad1[2];
 	u64 dma_ring_addr;
 	enum virtchnl_rx_hsplit rx_split_pos; /* deprecated with AVF 1.0 */
 	u32 pad2;
@@ -970,6 +974,10 @@ struct virtchnl_filter {
 
 VIRTCHNL_CHECK_STRUCT_LEN(272, virtchnl_filter);
 
+struct virtchnl_supported_rxdids {
+	u64 supported_rxdids;
+};
+
 /* VIRTCHNL_OP_EVENT
  * PF sends this message to inform the VF driver of events that may affect it.
  * No direct response is expected from the VF, though it may generate other
@@ -1499,6 +1507,8 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DEL_CLOUD_FILTER:
 		valid_len = sizeof(struct virtchnl_filter);
 		break;
+	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
+		break;
 	case VIRTCHNL_OP_ADD_RSS_CFG:
 	case VIRTCHNL_OP_DEL_RSS_CFG:
 		valid_len = sizeof(struct virtchnl_rss_cfg);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
