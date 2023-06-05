Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C239C721C18
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:45:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EFF860BEF;
	Mon,  5 Jun 2023 02:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EFF860BEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685933124;
	bh=/5ftpQ41cEFsOHphycQKMhobKxOihFKsgH4fXFUQATo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9OvbFLmTa2UP0n4QWA0zYfSgVfwjtfnnEEzSOZwTSXHWYxlhjpU9fWgMF/QN6nP61
	 nwvfpJ8SpUOFXbr/44rZLBaWeCLPqtGyYlWQFlxl6eksxcyMeAyB4Ychs2boWRCzn8
	 2B0kWZaBUSpMo/1dMiDngI0BrSf7O6XVOJl0+UjQQszuXr2hH7CtUrPx1XKC3vZcoW
	 79GLCphLnTRAl29sTjXfGE2bMh4uH0zZg/jgX7omPFJlp0HGy1LA6UWjktFND5dc6n
	 oMmyfDCvRzdf/koPV9Gp7zFcpkwBUYj7BxLTKkBAaDm9UWwVoyap8RYLEzbTsEKku1
	 Yh/JUCRmxghog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7RyrQ5ecCKfw; Mon,  5 Jun 2023 02:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFE8F60BBE;
	Mon,  5 Jun 2023 02:45:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFE8F60BBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 547821BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DA6C81FDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DA6C81FDA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESaHzVrcDCb4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98EC981F97
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98EC981F97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="355119135"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="355119135"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="821001606"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="821001606"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2023 19:45:04 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:44:53 +0800
Message-Id: <20230605024453.2378898-4-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605024453.2378898-1-junfeng.guo@intel.com>
References: <20230605024453.2378898-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685933106; x=1717469106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xcy2z0s1mK5eT6QsJ2pUaeIRoBBqhqafllKWCHN5l3g=;
 b=jzH4lz06vKvpB01WcukIrr46Ev7jyfQNuKlYjZ4L+US351hDjC2xPTVz
 fs7uWO0YjJVZEWTpg8ihF0w3QtWUSdyLeHHapJxHif4gm3j7FxN5uG582
 iSD8V11JZpsLAUUw+Uhtk5VJ+jNnYGpnj0P+JBGX4skSVTuRTtUKcs2Mh
 uCv3SABQO1V1UCQhb3j/iqwTofKgRoasmycUIiRMNFIvAKfLBv5bIrJ/c
 fbj1sxR9XjRqZsdOFGfeLl0xQFMYVp/IEzs8Il2YiaGo0hkRy0hef352d
 5dPQeAAxbbdm0dmGIzRR7cTU/YbCFheaRsI2bl7RDEEp90qD1zVzfnQf/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jzH4lz06
Subject: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: enable Protocol
 Agnostic Flow Offloading FDIR
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch enabled Protocol Agnostic Flow Offloading Flow (raw flow)
with Flow Director feature in AVF driver. The corresponding processes
for raw flow are added in the Parse / Create / Destroy stages.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  49 ++
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_flow.c     | 107 +++++
 drivers/net/ethernet/intel/ice/ice_flow.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   8 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 448 +++++++++++++++++-
 6 files changed, 618 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 2362be913101..0816bd222f0f 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -4115,6 +4115,55 @@ ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
 	return status;
 }
 
+/**
+ * ice_flow_assoc_hw_prof - add profile id flow for main/ctrl VSI flow entry
+ * @hw: pointer to the HW struct
+ * @blk: HW block
+ * @dest_vsi_handle: dest VSI handle
+ * @fdir_vsi_handle: fdir programming VSI handle
+ * @id: profile id (handle)
+ *
+ * Calling this function will update the hardware tables to enable the
+ * profile indicated by the ID parameter for the VSIs specified in the VSI
+ * array. Once successfully called, the flow will be enabled.
+ */
+int
+ice_flow_assoc_hw_prof(struct ice_hw *hw, enum ice_block blk,
+		       u16 dest_vsi_handle, u16 fdir_vsi_handle, int id)
+{
+	int status = 0;
+	u16 vsi_num;
+
+	vsi_num = ice_get_hw_vsi_num(hw, dest_vsi_handle);
+	status = ice_add_prof_id_flow(hw, blk, vsi_num, id);
+	if (status) {
+		ice_debug(hw, ICE_DBG_FLOW, "HW profile add failed for main VSI flow entry, %d\n",
+			  status);
+		goto err_add_prof;
+	}
+
+	if (blk != ICE_BLK_FD)
+		return status;
+
+	vsi_num = ice_get_hw_vsi_num(hw, fdir_vsi_handle);
+	status = ice_add_prof_id_flow(hw, blk, vsi_num, id);
+	if (status) {
+		ice_debug(hw, ICE_DBG_FLOW, "HW profile add failed for ctrl VSI flow entry, %d\n",
+			  status);
+		goto err_add_entry;
+	}
+
+	return status;
+
+err_add_entry:
+	vsi_num = ice_get_hw_vsi_num(hw, dest_vsi_handle);
+	ice_rem_prof_id_flow(hw, blk, vsi_num, id);
+err_add_prof:
+	ice_flow_rem_prof(hw, blk, id);
+
+	return status;
+}
+
 /**
  * ice_rem_prof_from_list - remove a profile from list
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 2270e861fd39..e8aa3b0c7014 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -47,6 +47,9 @@ int
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
 int
 ice_rem_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
+int
+ice_flow_assoc_hw_prof(struct ice_hw *hw, enum ice_block blk,
+		       u16 dest_vsi_handle, u16 fdir_vsi_handle, int id);
 enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buff, u32 len);
 enum ice_ddp_state
 ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index ff7740df28c4..3348afbbeaea 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -409,6 +409,29 @@ static const u32 ice_ptypes_gtpc_tid[] = {
 };
 
 /* Packet types for GTPU */
+static const struct ice_ptype_attributes ice_attr_gtpu_session[] = {
+	{ ICE_MAC_IPV4_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV4_TCP,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV4_ICMP,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV4_UDP_PAY, ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV4_TCP,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV4_ICMP,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV6_FRAG,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV6_PAY,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV6_TCP,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV4_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV6_FRAG,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV6_PAY,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV6_UDP_PAY, ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV6_TCP,	  ICE_PTYPE_ATTR_GTP_SESSION },
+	{ ICE_MAC_IPV6_GTPU_IPV6_ICMPV6,  ICE_PTYPE_ATTR_GTP_SESSION },
+};
+
 static const struct ice_ptype_attributes ice_attr_gtpu_eh[] = {
 	{ ICE_MAC_IPV4_GTPU_IPV4_FRAG,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
 	{ ICE_MAC_IPV4_GTPU_IPV4_PAY,	  ICE_PTYPE_ATTR_GTP_PDU_EH },
@@ -1523,6 +1546,90 @@ ice_flow_disassoc_prof(struct ice_hw *hw, enum ice_block blk,
 	return status;
 }
 
+#define FLAG_GTP_EH_PDU_LINK	BIT_ULL(13)
+#define FLAG_GTP_EH_PDU		BIT_ULL(14)
+
+#define FLAG_GTPU_MSK	\
+	(FLAG_GTP_EH_PDU | FLAG_GTP_EH_PDU_LINK)
+#define FLAG_GTPU_UP	\
+	(FLAG_GTP_EH_PDU | FLAG_GTP_EH_PDU_LINK)
+#define FLAG_GTPU_DW	\
+	(FLAG_GTP_EH_PDU)
+/**
+ * ice_flow_set_hw_prof - Set HW flow profile based on the parsed profile info
+ * @hw: pointer to the HW struct
+ * @dest_vsi_handle: dest VSI handle
+ * @fdir_vsi_handle: fdir programming VSI handle
+ * @prof: stores parsed profile info from raw flow
+ * @blk: classification stage
+ */
+int
+ice_flow_set_hw_prof(struct ice_hw *hw, u16 dest_vsi_handle,
+		     u16 fdir_vsi_handle, struct ice_parser_profile *prof,
+		     enum ice_block blk)
+{
+	int id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
+	struct ice_flow_prof_params *params;
+	u8 fv_words = hw->blk[blk].es.fvw;
+	int status;
+	int i, idx;
+
+	params = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*params), GFP_KERNEL);
+	if (!params)
+		return -ENOMEM;
+
+	for (i = 0; i < ICE_MAX_FV_WORDS; i++) {
+		params->es[i].prot_id = ICE_PROT_INVALID;
+		params->es[i].off = ICE_FV_OFFSET_INVAL;
+	}
+
+	for (i = 0; i < prof->fv_num; i++) {
+		if (hw->blk[blk].es.reverse)
+			idx = fv_words - i - 1;
+		else
+			idx = i;
+		params->es[idx].prot_id = prof->fv[i].proto_id;
+		params->es[idx].off = prof->fv[i].offset;
+		params->mask[idx] = (((prof->fv[i].msk) << 8) & 0xff00) |
+				    (((prof->fv[i].msk) >> 8) & 0x00ff);
+	}
+
+	switch (prof->flags) {
+	case FLAG_GTPU_DW:
+		params->attr = ice_attr_gtpu_down;
+		params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_down);
+		break;
+	case FLAG_GTPU_UP:
+		params->attr = ice_attr_gtpu_up;
+		params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_up);
+		break;
+	default:
+		if (prof->flags_msk & FLAG_GTPU_MSK) {
+			params->attr = ice_attr_gtpu_session;
+			params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_session);
+		}
+		break;
+	}
+
+	status = ice_add_prof(hw, blk, id, (u8 *)prof->ptypes,
+			      params->attr, params->attr_cnt,
+			      params->es, params->mask, false);
+	if (status)
+		goto free_params;
+
+	status = ice_flow_assoc_hw_prof(hw, blk, dest_vsi_handle,
+					fdir_vsi_handle, id);
+	if (status)
+		goto free_params;
+
+	return 0;
+
+free_params:
+	devm_kfree(ice_hw_to_dev(hw), params);
+
+	return status;
+}
+
 /**
  * ice_flow_add_prof - Add a flow profile for packet segments and matched fields
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index b465d27d9b80..d7c234adbaaa 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -5,6 +5,7 @@
 #define _ICE_FLOW_H_
 
 #include "ice_flex_type.h"
+#include "ice_parser.h"
 
 #define ICE_FLOW_ENTRY_HANDLE_INVAL	0
 #define ICE_FLOW_FLD_OFF_INVAL		0xffff
@@ -391,6 +392,10 @@ ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  struct ice_flow_prof **prof);
 int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id);
 int
+ice_flow_set_hw_prof(struct ice_hw *hw, u16 dest_vsi_handle,
+		     u16 fdir_vsi_handle, struct ice_parser_profile *prof,
+		     enum ice_block blk);
+int
 ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 		   u64 entry_id, u16 vsi, enum ice_flow_priority prio,
 		   void *data, u64 *entry_h);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index e3cda6fb71ab..9898ec65b59f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -12,6 +12,7 @@
 #include <net/devlink.h>
 #include <linux/avf/virtchnl.h>
 #include "ice_type.h"
+#include "ice_flow.h"
 #include "ice_virtchnl_fdir.h"
 #include "ice_vsi_vlan_ops.h"
 
@@ -52,6 +53,12 @@ struct ice_mdd_vf_events {
 	u16 last_printed;
 };
 
+/* Structure to store fdir fv entry */
+struct ice_fdir_prof_info {
+	struct ice_parser_profile prof;
+	u64 fdir_active_cnt;
+};
+
 /* VF operations */
 struct ice_vf_ops {
 	enum ice_disq_rst_src reset_type;
@@ -92,6 +99,7 @@ struct ice_vf {
 	u16 lan_vsi_idx;		/* index into PF struct */
 	u16 ctrl_vsi_idx;
 	struct ice_vf_fdir fdir;
+	struct ice_fdir_prof_info fdir_prof_info[ICE_MAX_PTGS];
 	/* first vector index of this VF in the PF space */
 	int first_vector_idx;
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index daa6a1e894cf..d5a15488ef14 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -39,6 +39,15 @@ enum ice_fdir_tunnel_type {
 	ICE_FDIR_TUNNEL_TYPE_NONE = 0,
 	ICE_FDIR_TUNNEL_TYPE_GTPU,
 	ICE_FDIR_TUNNEL_TYPE_GTPU_EH,
+	ICE_FDIR_TUNNEL_TYPE_ECPRI,
+	ICE_FDIR_TUNNEL_TYPE_GTPU_INNER,
+	ICE_FDIR_TUNNEL_TYPE_GTPU_EH_INNER,
+	ICE_FDIR_TUNNEL_TYPE_GRE,
+	ICE_FDIR_TUNNEL_TYPE_GTPOGRE,
+	ICE_FDIR_TUNNEL_TYPE_GTPOGRE_INNER,
+	ICE_FDIR_TUNNEL_TYPE_GRE_INNER,
+	ICE_FDIR_TUNNEL_TYPE_L2TPV2,
+	ICE_FDIR_TUNNEL_TYPE_L2TPV2_INNER,
 };
 
 struct virtchnl_fdir_fltr_conf {
@@ -46,6 +55,11 @@ struct virtchnl_fdir_fltr_conf {
 	enum ice_fdir_tunnel_type ttype;
 	u64 inset_flag;
 	u32 flow_id;
+
+	struct ice_parser_profile *prof;
+	bool parser_ena;
+	u8 *pkt_buf;
+	u8 pkt_len;
 };
 
 struct virtchnl_fdir_inset_map {
@@ -804,6 +818,95 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	return ret;
 }
 
+/**
+ * ice_vc_fdir_is_raw_flow
+ * @proto: virtchnl protocol headers
+ *
+ * Check if the FDIR rule is raw flow (protocol agnostic flow) or not.
+ * Note that common FDIR rule must have non-zero proto->count.
+ * Thus, we choose the tunnel_level and count of proto as the indicators.
+ * If both tunnel_level and count of proto are zeros, this FDIR rule will
+ * be regarded as raw flow.
+ *
+ * Returns wheater headers describe raw flow or not.
+ */
+static bool
+ice_vc_fdir_is_raw_flow(struct virtchnl_proto_hdrs *proto)
+{
+	return (proto->tunnel_level == 0 && proto->count == 0);
+}
+
+/**
+ * ice_vc_fdir_parse_raw
+ * @vf: pointer to the VF info
+ * @proto: virtchnl protocol headers
+ * @conf: FDIR configuration for each filter
+ *
+ * Parse the virtual channel filter's raw flow and store them into @conf
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_fdir_parse_raw(struct ice_vf *vf,
+		      struct virtchnl_proto_hdrs *proto,
+		      struct virtchnl_fdir_fltr_conf *conf)
+{
+	struct ice_parser_result rslt;
+	struct ice_pf *pf = vf->pf;
+	struct ice_parser *psr;
+	u8 *pkt_buf, *msk_buf;
+	int status = -ENOMEM;
+	struct ice_hw *hw;
+	u16 udp_port = 0;
+
+	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
+	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
+	if (!pkt_buf || !msk_buf)
+		goto err_pkt_msk_buf_alloc;
+
+	memcpy(pkt_buf, proto->raw.spec, proto->raw.pkt_len);
+	memcpy(msk_buf, proto->raw.mask, proto->raw.pkt_len);
+
+	hw = &pf->hw;
+	/* Get raw profile info via Parser Lib */
+	if (ice_parser_create(hw, &psr))
+		goto err_parser_process;
+	if (ice_get_open_tunnel_port(hw, &udp_port, TNL_VXLAN))
+		ice_parser_vxlan_tunnel_set(psr, udp_port, true);
+	if (ice_parser_run(psr, pkt_buf, proto->raw.pkt_len, &rslt))
+		goto err_parser_process;
+	ice_parser_destroy(psr);
+
+	conf->prof = kzalloc(sizeof(*conf->prof), GFP_KERNEL);
+	if (!conf->prof)
+		goto err_conf_prof_alloc;
+
+	status = ice_parser_profile_init(&rslt, pkt_buf, msk_buf,
+					 proto->raw.pkt_len, ICE_BLK_FD, true,
+					 conf->prof);
+	if (status)
+		goto err_parser_profile_init;
+
+	/* Store raw flow info into @conf */
+	conf->pkt_len = proto->raw.pkt_len;
+	conf->pkt_buf = pkt_buf;
+	kfree(msk_buf);
+
+	conf->parser_ena = true;
+
+	return 0;
+
+err_parser_profile_init:
+	kfree(conf->prof);
+err_conf_prof_alloc:
+err_parser_process:
+	ice_parser_destroy(psr);
+err_pkt_msk_buf_alloc:
+	kfree(msk_buf);
+	kfree(pkt_buf);
+	return status;
+}
+
 /**
  * ice_vc_fdir_parse_pattern
  * @vf: pointer to the VF info
@@ -831,6 +934,10 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 		return -EINVAL;
 	}
 
+	/* For Protocol Agnostic Flow Offloading case only */
+	if (ice_vc_fdir_is_raw_flow(proto))
+		return ice_vc_fdir_parse_raw(vf, proto, conf);
+
 	for (i = 0; i < proto->count; i++) {
 		struct virtchnl_proto_hdr *hdr = &proto->proto_hdr[i];
 		struct ip_esp_hdr *esph;
@@ -1119,8 +1226,10 @@ ice_vc_validate_fdir_fltr(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	struct virtchnl_proto_hdrs *proto = &fltr->rule_cfg.proto_hdrs;
 	int ret;
 
-	if (!ice_vc_validate_pattern(vf, proto))
-		return -EINVAL;
+	/* For Protocol Agnostic Flow Offloading case only */
+	if (!ice_vc_fdir_is_raw_flow(proto))
+		if (!ice_vc_validate_pattern(vf, proto))
+			return -EINVAL;
 
 	ret = ice_vc_fdir_parse_pattern(vf, fltr, conf);
 	if (ret)
@@ -1268,6 +1377,64 @@ static void ice_vc_fdir_flush_entry(struct ice_vf *vf)
 	}
 }
 
+/**
+ * ice_vc_fdir_add_del_raw - write raw flow filter rule into hardware
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ * @add: true implies add rule, false implies del rules
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int ice_vc_fdir_add_del_raw(struct ice_vf *vf,
+				   struct virtchnl_fdir_fltr_conf *conf,
+				   bool add)
+{
+	struct ice_fdir_fltr *input = &conf->input;
+	struct ice_vsi *vsi, *ctrl_vsi;
+	struct ice_fltr_desc desc;
+	struct device *dev;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	int ret;
+	u8 *pkt;
+
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_dbg(dev, "Invalid vsi for VF %d\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	input->dest_vsi = vsi->idx;
+	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW;
+
+	ctrl_vsi = pf->vsi[vf->ctrl_vsi_idx];
+	if (!ctrl_vsi) {
+		dev_dbg(dev, "Invalid ctrl_vsi for VF %d\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	pkt = devm_kzalloc(dev, ICE_FDIR_MAX_RAW_PKT_SIZE, GFP_KERNEL);
+	if (!pkt)
+		return -ENOMEM;
+
+	memcpy(pkt, conf->pkt_buf, conf->pkt_len);
+
+	ice_fdir_get_prgm_desc(hw, input, &desc, add);
+
+	ret = ice_prgm_fdir_fltr(ctrl_vsi, &desc, pkt);
+	if (ret)
+		goto err_free_pkt;
+
+	return 0;
+
+err_free_pkt:
+	devm_kfree(dev, pkt);
+	return ret;
+}
+
 /**
  * ice_vc_fdir_write_fltr - write filter rule into hardware
  * @vf: pointer to the VF info
@@ -1529,6 +1696,16 @@ ice_vf_verify_rx_desc(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
 	return ret;
 }
 
+static int ice_fdir_is_tunnel(enum ice_fdir_tunnel_type ttype)
+{
+	return (ttype == ICE_FDIR_TUNNEL_TYPE_GRE_INNER ||
+		ttype == ICE_FDIR_TUNNEL_TYPE_GTPU_INNER ||
+		ttype == ICE_FDIR_TUNNEL_TYPE_GTPU_EH_INNER ||
+		ttype == ICE_FDIR_TUNNEL_TYPE_GTPOGRE_INNER ||
+		ttype == ICE_FDIR_TUNNEL_TYPE_ECPRI ||
+		ttype == ICE_FDIR_TUNNEL_TYPE_L2TPV2_INNER);
+}
+
 /**
  * ice_vc_add_fdir_fltr_post
  * @vf: pointer to the VF structure
@@ -1787,6 +1964,167 @@ static void ice_vc_fdir_clear_irq_ctx(struct ice_vf *vf)
 	spin_unlock_irqrestore(&vf->fdir.ctx_lock, flags);
 }
 
+/**
+ * ice_vc_parser_fv_check_diff -  check two parsed FDIR profile fv context
+ * @fv_a: struct of parsed FDIR profile field vector
+ * @fv_b: struct of parsed FDIR profile field vector
+ *
+ * Check if the two parsed FDIR profile field vector context are different,
+ * including proto_id, offset and mask.
+ *
+ * Return: true on differnet, false on otherwise.
+ */
+static bool ice_vc_parser_fv_check_diff(struct ice_parser_fv *fv_a,
+					struct ice_parser_fv *fv_b)
+{
+	return (fv_a->proto_id	!= fv_b->proto_id ||
+		fv_a->offset	!= fv_b->offset ||
+		fv_a->msk	!= fv_b->msk);
+}
+
+/**
+ * ice_vc_parser_fv_save -  save parsed FDIR profile fv context
+ * @fv: struct of parsed FDIR profile field vector
+ * @fv_src: parsed FDIR profile field vector context to save
+ *
+ * Save the parsed FDIR profile field vector context, including proto_id,
+ * offset and mask.
+ */
+static void ice_vc_parser_fv_save(struct ice_parser_fv *fv,
+				  struct ice_parser_fv *fv_src)
+{
+	fv->proto_id	= fv_src->proto_id;
+	fv->offset	= fv_src->offset;
+	fv->msk		= fv_src->msk;
+}
+
+/**
+ * ice_vc_add_fdir_raw - add a raw FDIR filter for VF
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ * @stat: pointer to the VIRTCHNL_OP_ADD_FDIR_FILTER
+ * @len: length of the stat
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_add_fdir_raw(struct ice_vf *vf,
+		    struct virtchnl_fdir_fltr_conf *conf,
+		    struct virtchnl_fdir_add *stat, int len)
+{
+	struct ice_vsi *vf_vsi, *ctrl_vsi;
+	enum virtchnl_status_code v_ret;
+	struct ice_fdir_prof_info *pi;
+	struct ice_pf *pf = vf->pf;
+	int ret, ptg, id, i;
+	struct device *dev;
+	struct ice_hw *hw;
+	bool fv_found;
+
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+
+	id = find_first_bit(conf->prof->ptypes, ICE_FLOW_PTYPE_MAX);
+	ptg = hw->blk[ICE_BLK_FD].xlt1.t[id];
+
+	v_ret = VIRTCHNL_STATUS_SUCCESS;
+	vf_vsi = ice_get_vf_vsi(vf);
+	if (!vf_vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "Can not get FDIR vf_vsi for VF %d\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	ctrl_vsi = pf->vsi[vf->ctrl_vsi_idx];
+	if (!ctrl_vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "Can not get FDIR ctrl_vsi for VF %d\n",
+			vf->vf_id);
+		goto err_exit;
+	}
+
+	fv_found = false;
+
+	/* Check if profile info already existed, then update the counter */
+	pi = &vf->fdir_prof_info[ptg];
+	if (pi->fdir_active_cnt != 0) {
+		for (i = 0; i < ICE_MAX_FV_WORDS; i++)
+			if (ice_vc_parser_fv_check_diff(&pi->prof.fv[i],
+							&conf->prof->fv[i]))
+				break;
+		if (i == ICE_MAX_FV_WORDS) {
+			fv_found = true;
+			pi->fdir_active_cnt++;
+		}
+	}
+
+	/* HW profile setting is only required for the first time */
+	if (!fv_found) {
+		ret = ice_flow_set_hw_prof(hw, vf_vsi->idx,
+					   ctrl_vsi->idx, conf->prof,
+					   ICE_BLK_FD);
+
+		if (ret)
+			goto err_free_conf;
+	}
+
+	ret = ice_vc_fdir_insert_entry(vf, conf, &conf->flow_id);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_dbg(dev, "VF %d: insert FDIR list failed\n",
+			vf->vf_id);
+		goto err_free_conf;
+	}
+
+	ret = ice_vc_fdir_set_irq_ctx(vf, conf,
+				      VIRTCHNL_OP_ADD_FDIR_FILTER);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_dbg(dev, "VF %d: set FDIR context failed\n",
+			vf->vf_id);
+		goto err_rem_entry;
+	}
+
+	ret = ice_vc_fdir_add_del_raw(vf, conf, true);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "VF %d: adding FDIR raw flow rule failed, ret:%d\n",
+			vf->vf_id, ret);
+		goto err_clr_irq;
+	}
+
+	/* Save parsed profile fv info of the FDIR rule for the first time */
+	if (!fv_found) {
+		for (i = 0; i < conf->prof->fv_num; i++)
+			ice_vc_parser_fv_save(&pi->prof.fv[i],
+					      &conf->prof->fv[i]);
+		pi->fdir_active_cnt = 1;
+	}
+
+	return 0;
+
+err_clr_irq:
+	ice_vc_fdir_clear_irq_ctx(vf);
+err_rem_entry:
+	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
+err_free_conf:
+	if (conf->parser_ena)
+		conf->parser_ena = false;
+	kfree(conf->prof);
+	kfree(conf->pkt_buf);
+	kfree(conf);
+err_exit:
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_FDIR_FILTER, v_ret,
+				    (u8 *)stat, len);
+	kfree(stat);
+	return ret;
+}
+
 /**
  * ice_vc_add_fdir_fltr - add a FDIR filter for VF by the msg buffer
  * @vf: pointer to the VF info
@@ -1855,6 +2193,11 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		goto exit;
 	}
 
+	/* For Protocol Agnostic Flow Offloading case only */
+	if (conf->parser_ena)
+		return ice_vc_add_fdir_raw(vf, conf, stat, len);
+
+	is_tun = ice_fdir_is_tunnel(conf->ttype);
 	ret = ice_vc_fdir_config_input_set(vf, fltr, conf, is_tun);
 	if (ret) {
 		v_ret = VIRTCHNL_STATUS_SUCCESS;
@@ -1915,6 +2258,93 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 	return ret;
 }
 
+/**
+ * ice_vc_del_fdir_raw - delete a raw FDIR filter for VF
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ * @stat: pointer to the VIRTCHNL_OP_DEL_FDIR_FILTER
+ * @len: length of the stat
+ *
+ * Return: 0 on success, and other on error.
+ */
+static int
+ice_vc_del_fdir_raw(struct ice_vf *vf,
+		    struct virtchnl_fdir_fltr_conf *conf,
+		    struct virtchnl_fdir_del *stat, int len)
+{
+	struct ice_vsi *vf_vsi, *ctrl_vsi;
+	enum ice_block blk = ICE_BLK_FD;
+	enum virtchnl_status_code v_ret;
+	struct ice_fdir_prof_info *pi;
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+	struct ice_hw *hw;
+	u16 vsi_num;
+	int ptg;
+	int ret;
+	int id;
+
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+
+	id = find_first_bit(conf->prof->ptypes, ICE_FLOW_PTYPE_MAX);
+	ptg = hw->blk[ICE_BLK_FD].xlt1.t[id];
+
+	ret = ice_vc_fdir_add_del_raw(vf, conf, false);
+	if (ret) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "VF %d: deleting FDIR raw flow rule failed, ret:%d\n",
+			vf->vf_id, ret);
+		goto err_del_tmr;
+	}
+
+	vf_vsi = ice_get_vf_vsi(vf);
+	if (!vf_vsi) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "Can not get FDIR vf_vsi for VF %d\n", vf->vf_id);
+		goto err_exit;
+	}
+
+	ctrl_vsi = pf->vsi[vf->ctrl_vsi_idx];
+	if (!ctrl_vsi) {
+		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+		dev_err(dev, "Can not get FDIR ctrl_vsi for VF %d\n",
+			vf->vf_id);
+		goto err_exit;
+	}
+
+	pi = &vf->fdir_prof_info[ptg];
+	if (pi->fdir_active_cnt != 0) {
+		pi->fdir_active_cnt--;
+		/* Remove the profile id flow if no active FDIR rule left */
+		if (!pi->fdir_active_cnt) {
+			vsi_num = ice_get_hw_vsi_num(hw, ctrl_vsi->idx);
+			ice_rem_prof_id_flow(hw, blk, vsi_num, id);
+
+			vsi_num = ice_get_hw_vsi_num(hw, vf_vsi->idx);
+			ice_rem_prof_id_flow(hw, blk, vsi_num, id);
+		}
+	}
+
+	kfree(conf->prof);
+	kfree(conf->pkt_buf);
+	conf->parser_ena = false;
+	kfree(stat);
+
+	return ret;
+
+err_del_tmr:
+	ice_vc_fdir_clear_irq_ctx(vf);
+err_exit:
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_FDIR_FILTER, v_ret,
+				    (u8 *)stat, len);
+	kfree(stat);
+	return ret;
+}
+
 /**
  * ice_vc_del_fdir_fltr - delete a FDIR filter for VF by the msg buffer
  * @vf: pointer to the VF info
@@ -1927,7 +2357,10 @@ int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
 	struct virtchnl_fdir_del *fltr = (struct virtchnl_fdir_del *)msg;
 	struct virtchnl_fdir_del *stat = NULL;
 	struct virtchnl_fdir_fltr_conf *conf;
+	struct ice_vf_fdir *fdir = &vf->fdir;
 	enum virtchnl_status_code v_ret;
+	struct ice_fdir_fltr *input;
+	enum ice_fltr_ptype flow;
 	struct device *dev;
 	struct ice_pf *pf;
 	int is_tun = 0;
@@ -1977,6 +2410,11 @@ int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		goto err_exit;
 	}
 
+	/* For Protocol Agnostic Flow Offloading case only */
+	if (conf->parser_ena)
+		return ice_vc_del_fdir_raw(vf, conf, stat, len);
+
+	is_tun = ice_fdir_is_tunnel(conf->ttype);
 	ret = ice_vc_fdir_write_fltr(vf, conf, false, is_tun);
 	if (ret) {
 		v_ret = VIRTCHNL_STATUS_SUCCESS;
@@ -1986,6 +2424,12 @@ int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		goto err_del_tmr;
 	}
 
+	/* Remove unused profiles to avoid unexpected behaviors */
+	input = &conf->input;
+	flow = input->flow_type;
+	if (fdir->fdir_fltr_cnt[flow][is_tun] == 1)
+		ice_vc_fdir_rem_prof(vf, flow, is_tun);
+
 	kfree(stat);
 
 	return ret;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
