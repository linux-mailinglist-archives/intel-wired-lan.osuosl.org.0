Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA2E5FEB4A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 11:01:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B96161224;
	Fri, 14 Oct 2022 09:01:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B96161224
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665738086;
	bh=9PiR5GqLeSRNeSuhNpYVSrsC46CsdYO7T0nvFPs/YTY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5eNpxI9IWzZSR16I97OW2NRWtbDw+h1D47bGI8DpVy+/K2MAC00dnHEktr/4/wacJ
	 KJD2JswcBVR3DLs6BsGEnM+0E+K8jqPPA/Yy86FEo8ShjyGN80XYeRoWiAEpXhN4ov
	 +YcSjlb8rlut7GeHJ0ENUXNxkuHzDcvGYVfMZNmGdQT5Fc66SsHPenAGv70NHQlD6X
	 r0GLKEYZn4oCZKjW7oNjkPCDQn3pfDOgpmwNv5sdvhsjiMJM9Tbi7B3pzjW+aDBx1j
	 a+NTzh3oVKecB68tGnGf1lmw5eGlDYi+HFKJInco8I96DylOxNVi/2Ye/jEbXhWG5Q
	 T2TAPwww0SGpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZ0KlHT7R0JT; Fri, 14 Oct 2022 09:01:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4683360C07;
	Fri, 14 Oct 2022 09:01:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4683360C07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E02E21BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 09:01:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C679241814
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 09:01:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C679241814
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZdNCU3rug43 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Oct 2022 09:01:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C455417F7
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C455417F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 09:01:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="369515099"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="369515099"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:01:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="872667321"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="872667321"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga006.fm.intel.com with ESMTP; 14 Oct 2022 02:01:08 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Oct 2022 04:59:17 -0400
Message-Id: <20221014085917.387247-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665738071; x=1697274071;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IakH6bEUyOZAiyA+mmn8X4KEsVOHyO4EcxWuVEKihU8=;
 b=Fqa1jqsePjTfIEc63s7yIFgEP25vMySPNKaJkfkkAfzXNuUljESpTGzR
 FlbzFYH3qOsFQxucwA5jJuFWiL7SN97PmSE3KxhYqAA9+g0S62sy98geT
 EWWBJrhoslwKyJiu2YNXGu1db0+ozPi9kFQkiPy3NJtrfyI1l0BZ3OheI
 c+ZtfyvM3rMKG4Gd0LE8PUDFTuGuTIDHoRS33Hh0ecefUtoM80ePOd9qh
 0isKuIvP4dtpLGTurIbrpeo+qnxPnbcT4joeU5k/vSxODfBjPXkphTbmP
 mbW3hV2XNak4f8qQRBjm7CPHYa2c7hYWRCCaSORASvVPgatJMGlrk9zrC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fqa1jqse
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Add support Flex RXD
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
 v3: Changed target tree from net to next
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
