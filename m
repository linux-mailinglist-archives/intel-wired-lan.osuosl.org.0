Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C491F93CAAE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 00:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 696CE40ED9;
	Thu, 25 Jul 2024 22:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D6BUw7bldx0C; Thu, 25 Jul 2024 22:09:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A00C40F20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721945354;
	bh=98ZJC8aYnp6mze9ZJrfNK1ashqaPG5vIPHHPcZPOl4c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TS3UXNtx7oOQy2Tm9rzzRIFBjDAZ8yAmEWngbXxoLKLqpKx6ncspzvNobMfQSRb7s
	 gEwQL9D52R2rQHJg1FQgs9b9cXOicGthp01tk1qzg84olZ2dGi7DLXungWyd/zoHST
	 Ra5oUiKc00+RykOC8PQgD2Fql9chKViUyAMKSNJB7oFWdIydCYgvQonJIJMiSsFT6h
	 uO9gbJbYGWYCHnjZInKGImbx21yp/rYKI93WJT+RiEIwlf5lhjzenUYTpVDKOIACKG
	 8CUbTg5w6VWhdGXTeRlbIbPOy6SqhyoMA9A0huEWICSTcHzdczJzus8070uMvBt9ni
	 GYSWl45DcF8sw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A00C40F20;
	Thu, 25 Jul 2024 22:09:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D9351BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79BDC81EF7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:09:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BsHim7i9t3Cz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 22:09:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D659C81EFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D659C81EFA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D659C81EFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:09:10 +0000 (UTC)
X-CSE-ConnectionGUID: fh+RIaCxRti1ROYSUTVF2A==
X-CSE-MsgGUID: ZKaHVUs4SNivtECUBDRt6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19520593"
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="19520593"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 15:09:11 -0700
X-CSE-ConnectionGUID: sRJLPqwmQSGb3C0O0icOpg==
X-CSE-MsgGUID: R4l8ppjRQumH/HxUVqkDjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="52956363"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.33])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 15:09:06 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2024 16:08:07 -0600
Message-ID: <20240725220810.12748-12-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240725220810.12748-1-ahmed.zaki@intel.com>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721945351; x=1753481351;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bLTGsX1/SGz5ZEm2dWvWCdZpNF9Zmc7clt/JUsJnweI=;
 b=h4/9ZljCz7ZBLur7dZxPKJP9eGcTM3oLFT/qemrGgRDhxxVe367hiNdv
 UKpbHcklhvQDMDk7Pbz9GwRWf/S/b+BpH865DxlCPaOii7WSo5rr9HnOH
 fCDhpJ634iqJ66PsKcq+3qxj76XySrZBu7kWq8kOKOHRLxy02PVdC+VYG
 oDoNjyD8uRAnqlgMUGb6xsLp2/CogWDK0RmW9HoIyPoSW+DKCEz4kr92Z
 eaxuuh1WBlWqAuBiOboZ52YA879/vKD1T3tBnTIhg5KJ2GAUfBZXDV49N
 YMXZS7ydM+EMJp42uPgl4uiLf/dsRlQ6+m4MjQnw7XL+o0KoB/2Uu4WGf
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h4/9ZljC
Subject: [Intel-wired-lan] [PATCH iwl-next v5 11/13] ice: enable FDIR
 filters from raw binary patterns for VFs
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 hkelam@marvell.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 Junfeng Guo <junfeng.guo@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Enable VFs to create FDIR filters from raw binary patterns.
The corresponding processes for raw flow are added in the
Parse / Create / Destroy stages.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  48 +++
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_flow.c     | 106 +++++
 drivers/net/ethernet/intel/ice/ice_flow.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   8 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 403 +++++++++++++++++-
 6 files changed, 565 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 3b5d48903ca5..a7716eb84371 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -4147,6 +4147,54 @@ ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
 	return status;
 }
 
+/**
+ * ice_flow_assoc_fdir_prof - add an FDIR profile for main/ctrl VSI
+ * @hw: pointer to the HW struct
+ * @blk: HW block
+ * @dest_vsi: dest VSI
+ * @fdir_vsi: fdir programming VSI
+ * @hdl: profile handle
+ *
+ * Update the hardware tables to enable the FDIR profile indicated by @hdl for
+ * the VSI specified by @dest_vsi. On success, the flow will be enabled.
+ *
+ * Return: 0 on success or negative errno on failure.
+ */
+int
+ice_flow_assoc_fdir_prof(struct ice_hw *hw, enum ice_block blk,
+			 u16 dest_vsi, u16 fdir_vsi, u64 hdl)
+{
+	int status = 0;
+	u16 vsi_num;
+
+	if (blk != ICE_BLK_FD)
+		return -EINVAL;
+
+	vsi_num = ice_get_hw_vsi_num(hw, dest_vsi);
+	status = ice_add_prof_id_flow(hw, blk, vsi_num, hdl);
+	if (status) {
+		ice_debug(hw, ICE_DBG_FLOW, "Adding HW profile failed for main VSI flow entry: %d\n",
+			  status);
+		return status;
+	}
+
+	vsi_num = ice_get_hw_vsi_num(hw, fdir_vsi);
+	status = ice_add_prof_id_flow(hw, blk, vsi_num, hdl);
+	if (status) {
+		ice_debug(hw, ICE_DBG_FLOW, "Adding HW profile failed for ctrl VSI flow entry: %d\n",
+			  status);
+		goto err;
+	}
+
+	return 0;
+
+err:
+	vsi_num = ice_get_hw_vsi_num(hw, dest_vsi);
+	ice_rem_prof_id_flow(hw, blk, vsi_num, hdl);
+
+	return status;
+}
+
 /**
  * ice_rem_prof_from_list - remove a profile from list
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 7c66652dadd6..90b9b0993122 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -51,6 +51,9 @@ int
 ice_add_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
 int
 ice_rem_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl);
+int
+ice_flow_assoc_fdir_prof(struct ice_hw *hw, enum ice_block blk,
+			 u16 dest_vsi, u16 fdir_vsi, u64 hdl);
 enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buff, u32 len);
 enum ice_ddp_state
 ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 79106503194b..99d584f46c23 100644
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
@@ -1523,6 +1546,89 @@ ice_flow_disassoc_prof(struct ice_hw *hw, enum ice_block blk,
 	return status;
 }
 
+#define FLAG_GTP_EH_PDU_LINK	BIT_ULL(13)
+#define FLAG_GTP_EH_PDU		BIT_ULL(14)
+
+#define HI_BYTE_IN_WORD		GENMASK(15, 8)
+#define LO_BYTE_IN_WORD		GENMASK(7, 0)
+
+#define FLAG_GTPU_MSK	\
+	(FLAG_GTP_EH_PDU | FLAG_GTP_EH_PDU_LINK)
+#define FLAG_GTPU_UP	\
+	(FLAG_GTP_EH_PDU | FLAG_GTP_EH_PDU_LINK)
+#define FLAG_GTPU_DW	FLAG_GTP_EH_PDU
+/**
+ * ice_flow_set_parser_prof - Set flow profile based on the parsed profile info
+ * @hw: pointer to the HW struct
+ * @dest_vsi: dest VSI
+ * @fdir_vsi: fdir programming VSI
+ * @prof: stores parsed profile info from raw flow
+ * @blk: classification blk
+ *
+ * Return: 0 on success or negative errno on failure.
+ */
+int
+ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
+			 struct ice_parser_profile *prof, enum ice_block blk)
+{
+	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
+	struct ice_flow_prof_params *params __free(kfree);
+	u8 fv_words = hw->blk[blk].es.fvw;
+	int status;
+	int i, idx;
+
+	params = kzalloc(sizeof(*params), GFP_KERNEL);
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
+		params->mask[idx] = (((prof->fv[i].msk) << BITS_PER_BYTE) &
+				      HI_BYTE_IN_WORD) |
+				    (((prof->fv[i].msk) >> BITS_PER_BYTE) &
+				      LO_BYTE_IN_WORD);
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
+			      params->es, params->mask, false, false);
+	if (status)
+		return status;
+
+	status = ice_flow_assoc_fdir_prof(hw, blk, dest_vsi, fdir_vsi, id);
+	if (status)
+		ice_rem_prof(hw, blk, id);
+
+	return status;
+}
+
 /**
  * ice_flow_add_prof - Add a flow profile for packet segments and matched fields
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 2fd2e0cb483d..6cb7bb879c98 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -5,6 +5,7 @@
 #define _ICE_FLOW_H_
 
 #include "ice_flex_type.h"
+#include "ice_parser.h"
 
 #define ICE_FLOW_ENTRY_HANDLE_INVAL	0
 #define ICE_FLOW_FLD_OFF_INVAL		0xffff
@@ -326,6 +327,7 @@ enum ice_rss_cfg_hdr_type {
 	ICE_RSS_ANY_HEADERS
 };
 
+struct ice_vsi;
 struct ice_rss_hash_cfg {
 	u32 addl_hdrs; /* protocol header fields */
 	u64 hash_flds; /* hash bit field (ICE_FLOW_HASH_*) to configure */
@@ -445,6 +447,9 @@ ice_flow_add_prof(struct ice_hw *hw, enum ice_block blk, enum ice_flow_dir dir,
 		  bool symm, struct ice_flow_prof **prof);
 int ice_flow_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 prof_id);
 int
+ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
+			 struct ice_parser_profile *prof, enum ice_block blk);
+int
 ice_flow_add_entry(struct ice_hw *hw, enum ice_block blk, u64 prof_id,
 		   u64 entry_id, u16 vsi, enum ice_flow_priority prio,
 		   void *data, u64 *entry_h);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index fec16919ec19..be4266899690 100644
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
@@ -91,6 +98,7 @@ struct ice_vf {
 	u16 lan_vsi_idx;		/* index into PF struct */
 	u16 ctrl_vsi_idx;
 	struct ice_vf_fdir fdir;
+	struct ice_fdir_prof_info fdir_prof_info[ICE_MAX_PTGS];
 	/* first vector index of this VF in the PF space */
 	int first_vector_idx;
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index b4feb0927687..14e3f0f89c78 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -26,6 +26,15 @@ enum ice_fdir_tunnel_type {
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
@@ -33,6 +42,11 @@ struct virtchnl_fdir_fltr_conf {
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
@@ -786,6 +800,107 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	return ret;
 }
 
+/**
+ * ice_vc_fdir_is_raw_flow - check if FDIR flow is raw (binary)
+ * @proto: virtchnl protocol headers
+ *
+ * Check if the FDIR rule is raw flow (protocol agnostic flow) or not. Note
+ * that common FDIR rule must have non-zero proto->count. Thus, we choose the
+ * tunnel_level and count of proto as the indicators. If both tunnel_level and
+ * count of proto are zero, this FDIR rule will be regarded as raw flow.
+ *
+ * Returns: true if headers describe raw flow, false otherwise.
+ */
+static bool
+ice_vc_fdir_is_raw_flow(struct virtchnl_proto_hdrs *proto)
+{
+	return (proto->tunnel_level == 0 && proto->count == 0);
+}
+
+/**
+ * ice_vc_fdir_parse_raw - parse a virtchnl raw FDIR rule
+ * @vf: pointer to the VF info
+ * @proto: virtchnl protocol headers
+ * @conf: FDIR configuration for each filter
+ *
+ * Parse the virtual channel filter's raw flow and store it in @conf
+ *
+ * Return: 0 on success or negative errno on failure.
+ */
+static int
+ice_vc_fdir_parse_raw(struct ice_vf *vf,
+		      struct virtchnl_proto_hdrs *proto,
+		      struct virtchnl_fdir_fltr_conf *conf)
+{
+	u8 *pkt_buf, *msk_buf __free(kfree);
+	struct ice_parser_result rslt;
+	struct ice_pf *pf = vf->pf;
+	struct ice_parser *psr;
+	int status = -ENOMEM;
+	struct ice_hw *hw;
+	u16 udp_port = 0;
+
+	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
+	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
+	if (!pkt_buf || !msk_buf)
+		goto err_mem_alloc;
+
+	memcpy(pkt_buf, proto->raw.spec, proto->raw.pkt_len);
+	memcpy(msk_buf, proto->raw.mask, proto->raw.pkt_len);
+
+	hw = &pf->hw;
+
+	/* Get raw profile info via Parser Lib */
+	psr = ice_parser_create(hw);
+	if (IS_ERR(psr)) {
+		status = PTR_ERR(psr);
+		goto err_mem_alloc;
+	}
+
+	ice_parser_dvm_set(psr, ice_is_dvm_ena(hw));
+
+	if (ice_get_open_tunnel_port(hw, &udp_port, TNL_VXLAN))
+		ice_parser_vxlan_tunnel_set(psr, udp_port, true);
+
+	status = ice_parser_run(psr, pkt_buf, proto->raw.pkt_len, &rslt);
+	if (status)
+		goto err_parser_destroy;
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_parser_result_dump(hw, &rslt);
+
+	conf->prof = kzalloc(sizeof(*conf->prof), GFP_KERNEL);
+	if (!conf->prof) {
+		status = -ENOMEM;
+		goto err_parser_destroy;
+	}
+
+	status = ice_parser_profile_init(&rslt, pkt_buf, msk_buf,
+					 proto->raw.pkt_len, ICE_BLK_FD,
+					 conf->prof);
+	if (status)
+		goto err_parser_profile_init;
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_parser_profile_dump(hw, conf->prof);
+
+	/* Store raw flow info into @conf */
+	conf->pkt_len = proto->raw.pkt_len;
+	conf->pkt_buf = pkt_buf;
+	conf->parser_ena = true;
+
+	ice_parser_destroy(psr);
+	return 0;
+
+err_parser_profile_init:
+	kfree(conf->prof);
+err_parser_destroy:
+	ice_parser_destroy(psr);
+err_mem_alloc:
+	kfree(pkt_buf);
+	return status;
+}
+
 /**
  * ice_vc_fdir_parse_pattern
  * @vf: pointer to the VF info
@@ -813,6 +928,10 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 		return -EINVAL;
 	}
 
+	/* For raw FDIR filters created by the parser */
+	if (ice_vc_fdir_is_raw_flow(proto))
+		return ice_vc_fdir_parse_raw(vf, proto, conf);
+
 	for (i = 0; i < proto->count; i++) {
 		struct virtchnl_proto_hdr *hdr = &proto->proto_hdr[i];
 		struct ip_esp_hdr *esph;
@@ -1101,8 +1220,10 @@ ice_vc_validate_fdir_fltr(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	struct virtchnl_proto_hdrs *proto = &fltr->rule_cfg.proto_hdrs;
 	int ret;
 
-	if (!ice_vc_validate_pattern(vf, proto))
-		return -EINVAL;
+	/* For raw FDIR filters created by the parser */
+	if (!ice_vc_fdir_is_raw_flow(proto))
+		if (!ice_vc_validate_pattern(vf, proto))
+			return -EINVAL;
 
 	ret = ice_vc_fdir_parse_pattern(vf, fltr, conf);
 	if (ret)
@@ -1295,11 +1416,15 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
 		return -ENOMEM;
 
 	ice_fdir_get_prgm_desc(hw, input, &desc, add);
-	ret = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
-	if (ret) {
-		dev_dbg(dev, "Gen training pkt for VF %d ptype %d failed\n",
-			vf->vf_id, input->flow_type);
-		goto err_free_pkt;
+	if (conf->parser_ena) {
+		memcpy(pkt, conf->pkt_buf, conf->pkt_len);
+	} else {
+		ret = ice_fdir_get_gen_prgm_pkt(hw, input, pkt, false, is_tun);
+		if (ret) {
+			dev_dbg(dev, "Gen training pkt for VF %d ptype %d failed\n",
+				vf->vf_id, input->flow_type);
+			goto err_free_pkt;
+		}
 	}
 
 	ret = ice_prgm_fdir_fltr(ctrl_vsi, &desc, pkt);
@@ -1521,6 +1646,16 @@ ice_vf_verify_rx_desc(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
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
@@ -1781,6 +1916,158 @@ static void ice_vc_fdir_clear_irq_ctx(struct ice_vf *vf)
 	spin_unlock_irqrestore(&vf->fdir.ctx_lock, flags);
 }
 
+/**
+ * ice_vc_parser_fv_check_diff - check two parsed FDIR profile fv context
+ * @fv_a: struct of parsed FDIR profile field vector
+ * @fv_b: struct of parsed FDIR profile field vector
+ *
+ * Check if the two parsed FDIR profile field vector context are different,
+ * including proto_id, offset and mask.
+ *
+ * Return: true on different, false on otherwise.
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
+ * ice_vc_parser_fv_save - save parsed FDIR profile fv context
+ * @fv: struct of parsed FDIR profile field vector
+ * @fv_src: parsed FDIR profile field vector context to save
+ *
+ * Save the parsed FDIR profile field vector context, including proto_id,
+ * offset and mask.
+ *
+ * Return: Void.
+ */
+static void ice_vc_parser_fv_save(struct ice_parser_fv *fv,
+				  struct ice_parser_fv *fv_src)
+{
+	fv->proto_id	= fv_src->proto_id;
+	fv->offset	= fv_src->offset;
+	fv->msk		= fv_src->msk;
+	fv->spec	= 0;
+}
+
+/**
+ * ice_vc_add_fdir_raw - add a raw FDIR filter for VF
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ * @v_ret: the final VIRTCHNL code
+ * @stat: pointer to the VIRTCHNL_OP_ADD_FDIR_FILTER
+ * @len: length of the stat
+ *
+ * Return: 0 on success or negative errno on failure.
+ */
+static int
+ice_vc_add_fdir_raw(struct ice_vf *vf,
+		    struct virtchnl_fdir_fltr_conf *conf,
+		    enum virtchnl_status_code *v_ret,
+		    struct virtchnl_fdir_add *stat, int len)
+{
+	struct ice_vsi *vf_vsi, *ctrl_vsi;
+	struct ice_fdir_prof_info *pi;
+	struct ice_pf *pf = vf->pf;
+	int ret, ptg, id, i;
+	struct device *dev;
+	struct ice_hw *hw;
+	bool fv_found;
+
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+	*v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+
+	id = find_first_bit(conf->prof->ptypes, ICE_FLOW_PTYPE_MAX);
+	ptg = hw->blk[ICE_BLK_FD].xlt1.t[id];
+
+	vf_vsi = ice_get_vf_vsi(vf);
+	if (!vf_vsi) {
+		dev_err(dev, "Can not get FDIR vf_vsi for VF %d\n", vf->vf_id);
+		return -ENODEV;
+	}
+
+	ctrl_vsi = pf->vsi[vf->ctrl_vsi_idx];
+	if (!ctrl_vsi) {
+		dev_err(dev, "Can not get FDIR ctrl_vsi for VF %d\n",
+			vf->vf_id);
+		return -ENODEV;
+	}
+
+	fv_found = false;
+
+	/* Check if profile info already exists, then update the counter */
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
+		ret = ice_flow_set_parser_prof(hw, vf_vsi->idx,
+					       ctrl_vsi->idx, conf->prof,
+					       ICE_BLK_FD);
+
+		if (ret) {
+			*v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+			dev_dbg(dev, "VF %d: insert hw prof failed\n",
+				vf->vf_id);
+			return ret;
+		}
+	}
+
+	ret = ice_vc_fdir_insert_entry(vf, conf, &conf->flow_id);
+	if (ret) {
+		*v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		dev_dbg(dev, "VF %d: insert FDIR list failed\n",
+			vf->vf_id);
+		return ret;
+	}
+
+	ret = ice_vc_fdir_set_irq_ctx(vf, conf,
+				      VIRTCHNL_OP_ADD_FDIR_FILTER);
+	if (ret) {
+		dev_dbg(dev, "VF %d: set FDIR context failed\n",
+			vf->vf_id);
+		goto err_rem_entry;
+	}
+
+	ret = ice_vc_fdir_write_fltr(vf, conf, true, false);
+	if (ret) {
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
+		pi->prof.fv_num = conf->prof->fv_num;
+		pi->fdir_active_cnt = 1;
+	}
+
+	return 0;
+
+err_clr_irq:
+	ice_vc_fdir_clear_irq_ctx(vf);
+err_rem_entry:
+	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
+	return ret;
+}
+
 /**
  * ice_vc_add_fdir_fltr - add a FDIR filter for VF by the msg buffer
  * @vf: pointer to the VF info
@@ -1846,7 +2133,7 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 	len = sizeof(*stat);
 	ret = ice_vc_validate_fdir_fltr(vf, fltr, conf);
 	if (ret) {
-		v_ret = VIRTCHNL_STATUS_SUCCESS;
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_INVALID;
 		dev_dbg(dev, "Invalid FDIR filter from VF %d\n", vf->vf_id);
 		goto err_free_conf;
@@ -1861,6 +2148,15 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		goto exit;
 	}
 
+	/* For raw FDIR filters created by the parser */
+	if (conf->parser_ena) {
+		ret = ice_vc_add_fdir_raw(vf, conf, &v_ret, stat, len);
+		if (ret)
+			goto err_free_conf;
+		goto exit;
+	}
+
+	is_tun = ice_fdir_is_tunnel(conf->ttype);
 	ret = ice_vc_fdir_config_input_set(vf, fltr, conf, is_tun);
 	if (ret) {
 		v_ret = VIRTCHNL_STATUS_SUCCESS;
@@ -1921,6 +2217,78 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 	return ret;
 }
 
+/**
+ * ice_vc_del_fdir_raw - delete a raw FDIR filter for VF
+ * @vf: pointer to the VF info
+ * @conf: FDIR configuration for each filter
+ * @v_ret: the final VIRTCHNL code
+ * @stat: pointer to the VIRTCHNL_OP_DEL_FDIR_FILTER
+ * @len: length of the stat
+ *
+ * Return: 0 on success or negative errno on failure.
+ */
+static int
+ice_vc_del_fdir_raw(struct ice_vf *vf,
+		    struct virtchnl_fdir_fltr_conf *conf,
+		    enum virtchnl_status_code *v_ret,
+		    struct virtchnl_fdir_del *stat, int len)
+{
+	struct ice_vsi *vf_vsi, *ctrl_vsi;
+	enum ice_block blk = ICE_BLK_FD;
+	struct ice_fdir_prof_info *pi;
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+	struct ice_hw *hw;
+	unsigned long id;
+	u16 vsi_num;
+	int ptg;
+	int ret;
+
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+	*v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
+
+	id = find_first_bit(conf->prof->ptypes, ICE_FLOW_PTYPE_MAX);
+	ptg = hw->blk[ICE_BLK_FD].xlt1.t[id];
+
+	ret = ice_vc_fdir_write_fltr(vf, conf, false, false);
+	if (ret) {
+		dev_err(dev, "VF %u: deleting FDIR raw flow rule failed: %d\n",
+			vf->vf_id, ret);
+		return ret;
+	}
+
+	vf_vsi = ice_get_vf_vsi(vf);
+	if (!vf_vsi) {
+		dev_err(dev, "Can not get FDIR vf_vsi for VF %u\n", vf->vf_id);
+		return -ENODEV;
+	}
+
+	ctrl_vsi = pf->vsi[vf->ctrl_vsi_idx];
+	if (!ctrl_vsi) {
+		dev_err(dev, "Can not get FDIR ctrl_vsi for VF %u\n",
+			vf->vf_id);
+		return -ENODEV;
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
+	conf->parser_ena = false;
+	return 0;
+}
+
 /**
  * ice_vc_del_fdir_fltr - delete a FDIR filter for VF by the msg buffer
  * @vf: pointer to the VF info
@@ -1933,7 +2301,10 @@ int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
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
@@ -1983,6 +2354,15 @@ int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		goto err_exit;
 	}
 
+	/* For raw FDIR filters created by the parser */
+	if (conf->parser_ena) {
+		ret = ice_vc_del_fdir_raw(vf, conf, &v_ret, stat, len);
+		if (ret)
+			goto err_del_tmr;
+		goto exit;
+	}
+
+	is_tun = ice_fdir_is_tunnel(conf->ttype);
 	ret = ice_vc_fdir_write_fltr(vf, conf, false, is_tun);
 	if (ret) {
 		v_ret = VIRTCHNL_STATUS_SUCCESS;
@@ -1992,6 +2372,13 @@ int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		goto err_del_tmr;
 	}
 
+	/* Remove unused profiles to avoid unexpected behaviors */
+	input = &conf->input;
+	flow = input->flow_type;
+	if (fdir->fdir_fltr_cnt[flow][is_tun] == 1)
+		ice_vc_fdir_rem_prof(vf, flow, is_tun);
+
+exit:
 	kfree(stat);
 
 	return ret;
-- 
2.43.0

