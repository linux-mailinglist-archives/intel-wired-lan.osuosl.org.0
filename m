Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1796193B89F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 23:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7C4C406BC;
	Wed, 24 Jul 2024 21:37:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GS6r-MN7brnA; Wed, 24 Jul 2024 21:37:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B7A3406FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721857033;
	bh=e3PCYb9aElx5hSuvV0bkaONiPtFx3CXhlqwM2IYT6eg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hHaR+mUQCsgMoFjeAcwNBPykN1fjeYv9VVuI5c4bYGRtA1TkRZvQnxTc9Te7/fHRg
	 r7rV64BwN1SpKgQHx/UpCy081QzVZb+oDjvTEJM6Qvni+M/HOm91t/djacOhsXjfzV
	 yrqGJJ+qdMTQ+VNGoxZZG9/vrvU0BZUYRCQNa8AY9vSZmX6Vxg/ZpAA3H55EIX93Jx
	 O93KIGjyw59ayOhXglcqdnD/WFM/ewREIKFGf4i+/f2jxjsWEi8akKJ1iL+yfzUcdp
	 Z5DAP1J5+ilLeJrvSfK0fPw+lXtthlxTlnO/8UXU4LPWZC+Ea3+gUb6kAoYizEZDWb
	 SOav9cW1MiJ2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B7A3406FA;
	Wed, 24 Jul 2024 21:37:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E40D1BF277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D47940724
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:37:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u5YSCDbHBnLj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 21:37:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7036440714
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7036440714
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7036440714
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:37:09 +0000 (UTC)
X-CSE-ConnectionGUID: 4Q9a4BrFQbaLlD/koVlLeQ==
X-CSE-MsgGUID: cnMwmGGsTHK9+NUKCpn+QA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19704152"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19704152"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:37:09 -0700
X-CSE-ConnectionGUID: h3hX39PnQ0eAmSEKORTBQQ==
X-CSE-MsgGUID: 52SXdNvQSWmmioUC9r6iuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52579544"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.206])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:37:01 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 15:36:12 -0600
Message-ID: <20240724213623.324532-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240724213623.324532-1-ahmed.zaki@intel.com>
References: <20240724213623.324532-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721857030; x=1753393030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LTS+0qe3cC5CEtuBVs9UkhoYz/dT8DKtJnhrn38sVUk=;
 b=c5hx3t8r3E9s0GQdbxzQtBzUo3Q+FDznFgsfGmoifASt28zAInh5dMYZ
 IYp4rjChfJJZO3lck06m+YwILylId7f03Dbgem0lCvv6V7En/Wwbyr/rx
 qU9xDneXl9gwan2UiPCI21+KxhRrueYqteEthpzyR+xjUzWzmoZYpweGi
 znq55IL9aSDOMpUukptOEqT2EzPrkj0Mf6otGxaLb5IxKbERQppRTMWkR
 2aKL/Kl/j6s/CGhZIOFVRshaN8KeGlob+qYYLk3++TrhRh6dc/dQUcDXF
 tFsIQBOPzqIB2pdynLX+I8U3tGmKGAiVe9eDRFtX2OW2NDR5omq6tvScD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c5hx3t8r
Subject: [Intel-wired-lan] [PATCH iwl-next v4 03/13] ice: add debugging
 functions for the parser sections
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
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com,
 Junfeng Guo <junfeng.guo@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Add debug for all parser sections.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 470 ++++++++++++++++++++
 1 file changed, 470 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 5d6d610c1a6d..ef44654bb9e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -130,6 +130,100 @@ void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
 }
 
 /*** ICE_SID_RXPARSER_IMEM section ***/
+static void ice_imem_bst_bm_dump(struct ice_hw *hw, struct ice_bst_main *bm)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "boost main:\n");
+	dev_info(dev, "\talu0 = %d\n", bm->alu0);
+	dev_info(dev, "\talu1 = %d\n", bm->alu1);
+	dev_info(dev, "\talu2 = %d\n", bm->alu2);
+	dev_info(dev, "\tpg = %d\n", bm->pg);
+}
+
+static void ice_imem_bst_kb_dump(struct ice_hw *hw,
+				 struct ice_bst_keybuilder *kb)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "boost key builder:\n");
+	dev_info(dev, "\tpriority = %d\n", kb->prio);
+	dev_info(dev, "\ttsr_ctrl = %d\n", kb->tsr_ctrl);
+}
+
+static void ice_imem_np_kb_dump(struct ice_hw *hw,
+				struct ice_np_keybuilder *kb)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "next proto key builder:\n");
+	dev_info(dev, "\topc = %d\n", kb->opc);
+	dev_info(dev, "\tstart_or_reg0 = %d\n", kb->start_reg0);
+	dev_info(dev, "\tlen_or_reg1 = %d\n", kb->len_reg1);
+}
+
+static void ice_imem_pg_kb_dump(struct ice_hw *hw,
+				struct ice_pg_keybuilder *kb)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "parse graph key builder:\n");
+	dev_info(dev, "\tflag0_ena = %d\n", kb->flag0_ena);
+	dev_info(dev, "\tflag1_ena = %d\n", kb->flag1_ena);
+	dev_info(dev, "\tflag2_ena = %d\n", kb->flag2_ena);
+	dev_info(dev, "\tflag3_ena = %d\n", kb->flag3_ena);
+	dev_info(dev, "\tflag0_idx = %d\n", kb->flag0_idx);
+	dev_info(dev, "\tflag1_idx = %d\n", kb->flag1_idx);
+	dev_info(dev, "\tflag2_idx = %d\n", kb->flag2_idx);
+	dev_info(dev, "\tflag3_idx = %d\n", kb->flag3_idx);
+	dev_info(dev, "\talu_reg_idx = %d\n", kb->alu_reg_idx);
+}
+
+static void ice_imem_alu_dump(struct ice_hw *hw,
+			      struct ice_alu *alu, int index)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "alu%d:\n", index);
+	dev_info(dev, "\topc = %d\n", alu->opc);
+	dev_info(dev, "\tsrc_start = %d\n", alu->src_start);
+	dev_info(dev, "\tsrc_len = %d\n", alu->src_len);
+	dev_info(dev, "\tshift_xlate_sel = %d\n", alu->shift_xlate_sel);
+	dev_info(dev, "\tshift_xlate_key = %d\n", alu->shift_xlate_key);
+	dev_info(dev, "\tsrc_reg_id = %d\n", alu->src_reg_id);
+	dev_info(dev, "\tdst_reg_id = %d\n", alu->dst_reg_id);
+	dev_info(dev, "\tinc0 = %d\n", alu->inc0);
+	dev_info(dev, "\tinc1 = %d\n", alu->inc1);
+	dev_info(dev, "\tproto_offset_opc = %d\n", alu->proto_offset_opc);
+	dev_info(dev, "\tproto_offset = %d\n", alu->proto_offset);
+	dev_info(dev, "\tbranch_addr = %d\n", alu->branch_addr);
+	dev_info(dev, "\timm = %d\n", alu->imm);
+	dev_info(dev, "\tdst_start = %d\n", alu->dst_start);
+	dev_info(dev, "\tdst_len = %d\n", alu->dst_len);
+	dev_info(dev, "\tflags_extr_imm = %d\n", alu->flags_extr_imm);
+	dev_info(dev, "\tflags_start_imm= %d\n", alu->flags_start_imm);
+}
+
+/**
+ * ice_imem_dump - dump an imem item info
+ * @hw: pointer to the hardware structure
+ * @item: imem item to dump
+ */
+static void ice_imem_dump(struct ice_hw *hw, struct ice_imem_item *item)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "index = %d\n", item->idx);
+	ice_imem_bst_bm_dump(hw, &item->b_m);
+	ice_imem_bst_kb_dump(hw, &item->b_kb);
+	dev_info(dev, "pg priority = %d\n", item->pg_prio);
+	ice_imem_np_kb_dump(hw, &item->np_kb);
+	ice_imem_pg_kb_dump(hw, &item->pg_kb);
+	ice_imem_alu_dump(hw, &item->alu0, 0);
+	ice_imem_alu_dump(hw, &item->alu1, 1);
+	ice_imem_alu_dump(hw, &item->alu2, 2);
+}
+
 #define ICE_IM_BM_ALU0		BIT(0)
 #define ICE_IM_BM_ALU1		BIT(1)
 #define ICE_IM_BM_ALU2		BIT(2)
@@ -329,6 +423,9 @@ static void ice_imem_parse_item(struct ice_hw *hw, u16 idx, void *item,
 	ice_imem_alu_init(&ii->alu2,
 			  &buf[ICE_IMEM_ALU2_IDD],
 			  ICE_IMEM_ALU2_OFF);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_imem_dump(hw, ii);
 }
 
 /**
@@ -346,6 +443,50 @@ static struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
 }
 
 /*** ICE_SID_RXPARSER_METADATA_INIT section ***/
+/**
+ * ice_metainit_dump - dump an metainit item info
+ * @hw: pointer to the hardware structure
+ * @item: metainit item to dump
+ */
+static void ice_metainit_dump(struct ice_hw *hw, struct ice_metainit_item *item)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "index = %d\n", item->idx);
+
+	dev_info(dev, "tsr = %d\n", item->tsr);
+	dev_info(dev, "ho = %d\n", item->ho);
+	dev_info(dev, "pc = %d\n", item->pc);
+	dev_info(dev, "pg_rn = %d\n", item->pg_rn);
+	dev_info(dev, "cd = %d\n", item->cd);
+
+	dev_info(dev, "gpr_a_ctrl = %d\n", item->gpr_a_ctrl);
+	dev_info(dev, "gpr_a_data_mdid = %d\n", item->gpr_a_data_mdid);
+	dev_info(dev, "gpr_a_data_start = %d\n", item->gpr_a_data_start);
+	dev_info(dev, "gpr_a_data_len = %d\n", item->gpr_a_data_len);
+	dev_info(dev, "gpr_a_id = %d\n", item->gpr_a_id);
+
+	dev_info(dev, "gpr_b_ctrl = %d\n", item->gpr_b_ctrl);
+	dev_info(dev, "gpr_b_data_mdid = %d\n", item->gpr_b_data_mdid);
+	dev_info(dev, "gpr_b_data_start = %d\n", item->gpr_b_data_start);
+	dev_info(dev, "gpr_b_data_len = %d\n", item->gpr_b_data_len);
+	dev_info(dev, "gpr_b_id = %d\n", item->gpr_b_id);
+
+	dev_info(dev, "gpr_c_ctrl = %d\n", item->gpr_c_ctrl);
+	dev_info(dev, "gpr_c_data_mdid = %d\n", item->gpr_c_data_mdid);
+	dev_info(dev, "gpr_c_data_start = %d\n", item->gpr_c_data_start);
+	dev_info(dev, "gpr_c_data_len = %d\n", item->gpr_c_data_len);
+	dev_info(dev, "gpr_c_id = %d\n", item->gpr_c_id);
+
+	dev_info(dev, "gpr_d_ctrl = %d\n", item->gpr_d_ctrl);
+	dev_info(dev, "gpr_d_data_mdid = %d\n", item->gpr_d_data_mdid);
+	dev_info(dev, "gpr_d_data_start = %d\n", item->gpr_d_data_start);
+	dev_info(dev, "gpr_d_data_len = %d\n", item->gpr_d_data_len);
+	dev_info(dev, "gpr_d_id = %d\n", item->gpr_d_id);
+
+	dev_info(dev, "flags = 0x%llx\n", (unsigned long long)(item->flags));
+}
+
 #define ICE_MI_TSR		GENMASK_ULL(7, 0)
 #define ICE_MI_HO		GENMASK_ULL(16, 8)
 #define ICE_MI_PC		GENMASK_ULL(24, 17)
@@ -438,6 +579,9 @@ static void ice_metainit_parse_item(struct ice_hw *hw, u16 idx, void *item,
 	d64 = *((u64 *)&buf[ICE_MI_FLAG_IDD]) >> ICE_MI_FLAG_OFF;
 
 	mi->flags		= FIELD_GET(ICE_MI_FLAG, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_metainit_dump(hw, mi);
 }
 
 /**
@@ -457,6 +601,80 @@ static struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
 /*** ICE_SID_RXPARSER_CAM, ICE_SID_RXPARSER_PG_SPILL,
  *    ICE_SID_RXPARSER_NOMATCH_CAM and ICE_SID_RXPARSER_NOMATCH_CAM
  *    sections ***/
+static void ice_pg_cam_key_dump(struct ice_hw *hw, struct ice_pg_cam_key *key)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "key:\n");
+	dev_info(dev, "\tvalid = %d\n", key->valid);
+	dev_info(dev, "\tnode_id = %d\n", key->node_id);
+	dev_info(dev, "\tflag0 = %d\n", key->flag0);
+	dev_info(dev, "\tflag1 = %d\n", key->flag1);
+	dev_info(dev, "\tflag2 = %d\n", key->flag2);
+	dev_info(dev, "\tflag3 = %d\n", key->flag3);
+	dev_info(dev, "\tboost_idx = %d\n", key->boost_idx);
+	dev_info(dev, "\talu_reg = 0x%04x\n", key->alu_reg);
+	dev_info(dev, "\tnext_proto = 0x%08x\n", key->next_proto);
+}
+
+static void ice_pg_nm_cam_key_dump(struct ice_hw *hw,
+				   struct ice_pg_nm_cam_key *key)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "key:\n");
+	dev_info(dev, "\tvalid = %d\n", key->valid);
+	dev_info(dev, "\tnode_id = %d\n", key->node_id);
+	dev_info(dev, "\tflag0 = %d\n", key->flag0);
+	dev_info(dev, "\tflag1 = %d\n", key->flag1);
+	dev_info(dev, "\tflag2 = %d\n", key->flag2);
+	dev_info(dev, "\tflag3 = %d\n", key->flag3);
+	dev_info(dev, "\tboost_idx = %d\n", key->boost_idx);
+	dev_info(dev, "\talu_reg = 0x%04x\n", key->alu_reg);
+}
+
+static void ice_pg_cam_action_dump(struct ice_hw *hw,
+				   struct ice_pg_cam_action *action)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "action:\n");
+	dev_info(dev, "\tnext_node = %d\n", action->next_node);
+	dev_info(dev, "\tnext_pc = %d\n", action->next_pc);
+	dev_info(dev, "\tis_pg = %d\n", action->is_pg);
+	dev_info(dev, "\tproto_id = %d\n", action->proto_id);
+	dev_info(dev, "\tis_mg = %d\n", action->is_mg);
+	dev_info(dev, "\tmarker_id = %d\n", action->marker_id);
+	dev_info(dev, "\tis_last_round = %d\n", action->is_last_round);
+	dev_info(dev, "\tho_polarity = %d\n", action->ho_polarity);
+	dev_info(dev, "\tho_inc = %d\n", action->ho_inc);
+}
+
+/**
+ * ice_pg_cam_dump - dump an parse graph cam info
+ * @hw: pointer to the hardware structure
+ * @item: parse graph cam to dump
+ */
+static void ice_pg_cam_dump(struct ice_hw *hw, struct ice_pg_cam_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	ice_pg_cam_key_dump(hw, &item->key);
+	ice_pg_cam_action_dump(hw, &item->action);
+}
+
+/**
+ * ice_pg_nm_cam_dump - dump an parse graph no match cam info
+ * @hw: pointer to the hardware structure
+ * @item: parse graph no match cam to dump
+ */
+static void ice_pg_nm_cam_dump(struct ice_hw *hw,
+			       struct ice_pg_nm_cam_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	ice_pg_nm_cam_key_dump(hw, &item->key);
+	ice_pg_cam_action_dump(hw, &item->action);
+}
+
 #define ICE_PGCA_NN	GENMASK_ULL(10, 0)
 #define ICE_PGCA_NPC	GENMASK_ULL(18, 11)
 #define ICE_PGCA_IPG	BIT_ULL(19)
@@ -585,6 +803,9 @@ static void ice_pg_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
 
 	d64 = *((u64 *)&buf[ICE_PG_CAM_ACT_IDD]) >> ICE_PG_CAM_ACT_OFF;
 	ice_pg_cam_action_init(&ci->action, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_cam_dump(hw, ci);
 }
 
 #define ICE_PG_SP_CAM_KEY_S	56
@@ -611,6 +832,9 @@ static void ice_pg_sp_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
 	ice_pg_cam_action_init(&ci->action, d64);
 
 	ice_pg_cam_key_init(&ci->key, &buf[ICE_PG_SP_CAM_KEY_IDD]);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_cam_dump(hw, ci);
 }
 
 #define ICE_PG_NM_CAM_ACT_S	41
@@ -639,6 +863,9 @@ static void ice_pg_nm_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
 
 	d64 = *((u64 *)&buf[ICE_PG_NM_CAM_ACT_IDD]) >> ICE_PG_NM_CAM_ACT_OFF;
 	ice_pg_cam_action_init(&ci->action, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_nm_cam_dump(hw, ci);
 }
 
 #define ICE_PG_NM_SP_CAM_ACT_S		56
@@ -670,6 +897,9 @@ static void ice_pg_nm_sp_cam_parse_item(struct ice_hw *hw, u16 idx,
 	d64 = *((u64 *)&buf[ICE_PG_NM_SP_CAM_ACT_IDD]) >>
 		ICE_PG_NM_SP_CAM_ACT_OFF;
 	ice_pg_nm_cam_key_init(&ci->key, d64);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_pg_nm_cam_dump(hw, ci);
 }
 
 /**
@@ -729,6 +959,99 @@ static struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
 }
 
 /*** ICE_SID_RXPARSER_BOOST_TCAM and ICE_SID_LBL_RXPARSER_TMEM sections ***/
+static void ice_bst_np_kb_dump(struct ice_hw *hw, struct ice_np_keybuilder *kb)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "next proto key builder:\n");
+	dev_info(dev, "\topc = %d\n", kb->opc);
+	dev_info(dev, "\tstart_reg0 = %d\n", kb->start_reg0);
+	dev_info(dev, "\tlen_reg1 = %d\n", kb->len_reg1);
+}
+
+static void ice_bst_pg_kb_dump(struct ice_hw *hw, struct ice_pg_keybuilder *kb)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "parse graph key builder:\n");
+	dev_info(dev, "\tflag0_ena = %d\n", kb->flag0_ena);
+	dev_info(dev, "\tflag1_ena = %d\n", kb->flag1_ena);
+	dev_info(dev, "\tflag2_ena = %d\n", kb->flag2_ena);
+	dev_info(dev, "\tflag3_ena = %d\n", kb->flag3_ena);
+	dev_info(dev, "\tflag0_idx = %d\n", kb->flag0_idx);
+	dev_info(dev, "\tflag1_idx = %d\n", kb->flag1_idx);
+	dev_info(dev, "\tflag2_idx = %d\n", kb->flag2_idx);
+	dev_info(dev, "\tflag3_idx = %d\n", kb->flag3_idx);
+	dev_info(dev, "\talu_reg_idx = %d\n", kb->alu_reg_idx);
+}
+
+static void ice_bst_alu_dump(struct ice_hw *hw, struct ice_alu *alu, int idx)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "alu%d:\n", idx);
+	dev_info(dev, "\topc = %d\n", alu->opc);
+	dev_info(dev, "\tsrc_start = %d\n", alu->src_start);
+	dev_info(dev, "\tsrc_len = %d\n", alu->src_len);
+	dev_info(dev, "\tshift_xlate_sel = %d\n", alu->shift_xlate_sel);
+	dev_info(dev, "\tshift_xlate_key = %d\n", alu->shift_xlate_key);
+	dev_info(dev, "\tsrc_reg_id = %d\n", alu->src_reg_id);
+	dev_info(dev, "\tdst_reg_id = %d\n", alu->dst_reg_id);
+	dev_info(dev, "\tinc0 = %d\n", alu->inc0);
+	dev_info(dev, "\tinc1 = %d\n", alu->inc1);
+	dev_info(dev, "\tproto_offset_opc = %d\n", alu->proto_offset_opc);
+	dev_info(dev, "\tproto_offset = %d\n", alu->proto_offset);
+	dev_info(dev, "\tbranch_addr = %d\n", alu->branch_addr);
+	dev_info(dev, "\timm = %d\n", alu->imm);
+	dev_info(dev, "\tdst_start = %d\n", alu->dst_start);
+	dev_info(dev, "\tdst_len = %d\n", alu->dst_len);
+	dev_info(dev, "\tflags_extr_imm = %d\n", alu->flags_extr_imm);
+	dev_info(dev, "\tflags_start_imm= %d\n", alu->flags_start_imm);
+}
+
+/**
+ * ice_bst_tcam_dump - dump a boost tcam info
+ * @hw: pointer to the hardware structure
+ * @item: boost tcam to dump
+ */
+static void ice_bst_tcam_dump(struct ice_hw *hw, struct ice_bst_tcam_item *item)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	int i;
+
+	dev_info(dev, "addr = %d\n", item->addr);
+
+	dev_info(dev, "key    : ");
+	for (i = 0; i < ICE_BST_TCAM_KEY_SIZE; i++)
+		dev_info(dev, "%02x ", item->key[i]);
+
+	dev_info(dev, "\n");
+
+	dev_info(dev, "key_inv: ");
+	for (i = 0; i < ICE_BST_TCAM_KEY_SIZE; i++)
+		dev_info(dev, "%02x ", item->key_inv[i]);
+
+	dev_info(dev, "\n");
+
+	dev_info(dev, "hit_idx_grp = %d\n", item->hit_idx_grp);
+	dev_info(dev, "pg_prio = %d\n", item->pg_prio);
+
+	ice_bst_np_kb_dump(hw, &item->np_kb);
+	ice_bst_pg_kb_dump(hw, &item->pg_kb);
+
+	ice_bst_alu_dump(hw, &item->alu0, ICE_ALU0_IDX);
+	ice_bst_alu_dump(hw, &item->alu1, ICE_ALU1_IDX);
+	ice_bst_alu_dump(hw, &item->alu2, ICE_ALU2_IDX);
+}
+
+static void ice_lbl_dump(struct ice_hw *hw, struct ice_lbl_item *item)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "index = %u\n", item->idx);
+	dev_info(dev, "label = %s\n", item->label);
+}
+
 #define ICE_BST_ALU_OPC		GENMASK_ULL(5, 0)
 #define ICE_BST_ALU_SS		GENMASK_ULL(13, 6)
 #define ICE_BST_ALU_SL		GENMASK_ULL(18, 14)
@@ -895,6 +1218,9 @@ static void ice_bst_parse_item(struct ice_hw *hw, u16 idx, void *item,
 	ice_bst_alu_init(&ti->alu0, &buf[ICE_BT_ALU0_IDD], ICE_BT_ALU0_OFF);
 	ice_bst_alu_init(&ti->alu1, &buf[ICE_BT_ALU1_IDD], ICE_BT_ALU1_OFF);
 	ice_bst_alu_init(&ti->alu2, &buf[ICE_BT_ALU2_IDD], ICE_BT_ALU2_OFF);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_bst_tcam_dump(hw, ti);
 }
 
 /**
@@ -915,6 +1241,9 @@ static void ice_parse_lbl_item(struct ice_hw *hw, u16 idx, void *item,
 			       void *data, int size)
 {
 	memcpy(item, data, size);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_lbl_dump(hw, (struct ice_lbl_item *)item);
 }
 
 /**
@@ -932,10 +1261,41 @@ static struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw)
 }
 
 /*** ICE_SID_RXPARSER_MARKER_PTYPE section ***/
+/**
+ * ice_ptype_mk_tcam_dump - dump an ptype marker tcam info
+ * @hw: pointer to the hardware structure
+ * @item: ptype marker tcam to dump
+ */
+static void ice_ptype_mk_tcam_dump(struct ice_hw *hw,
+				   struct ice_ptype_mk_tcam_item *item)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	int i;
+
+	dev_info(dev, "address = %d\n", item->address);
+	dev_info(dev, "ptype = %d\n", item->ptype);
+
+	dev_info(dev, "key    :");
+	for (i = 0; i < ICE_PTYPE_MK_TCAM_KEY_SIZE; i++)
+		dev_info(dev, "%02x ", item->key[i]);
+
+	dev_info(dev, "\n");
+
+	dev_info(dev, "key_inv:");
+	for (i = 0; i < ICE_PTYPE_MK_TCAM_KEY_SIZE; i++)
+		dev_info(dev, "%02x ", item->key_inv[i]);
+
+	dev_info(dev, "\n");
+}
+
 static void ice_parse_ptype_mk_tcam_item(struct ice_hw *hw, u16 idx,
 					 void *item, void *data, int size)
 {
 	memcpy(item, data, size);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_ptype_mk_tcam_dump(hw,
+				       (struct ice_ptype_mk_tcam_item *)item);
 }
 
 /**
@@ -954,6 +1314,25 @@ struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw)
 }
 
 /*** ICE_SID_RXPARSER_MARKER_GRP section ***/
+/**
+ * ice_mk_grp_dump - dump an marker group item info
+ * @hw: pointer to the hardware structure
+ * @item: marker group item to dump
+ */
+static void ice_mk_grp_dump(struct ice_hw *hw, struct ice_mk_grp_item *item)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	int i;
+
+	dev_info(dev, "index = %d\n", item->idx);
+
+	dev_info(dev, "markers: ");
+	for (i = 0; i < ICE_MK_COUNT_PER_GRP; i++)
+		dev_info(dev, "%d ", item->markers[i]);
+
+	dev_info(dev, "\n");
+}
+
 static void ice_mk_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
 				  void *data, int __maybe_unused size)
 {
@@ -965,6 +1344,9 @@ static void ice_mk_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
 
 	for (i = 0; i < ICE_MK_COUNT_PER_GRP; i++)
 		grp->markers[i] = buf[i];
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_mk_grp_dump(hw, grp);
 }
 
 /**
@@ -982,6 +1364,33 @@ static struct ice_mk_grp_item *ice_mk_grp_table_get(struct ice_hw *hw)
 }
 
 /*** ICE_SID_RXPARSER_PROTO_GRP section ***/
+static void ice_proto_off_dump(struct ice_hw *hw,
+			       struct ice_proto_off *po, int idx)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "proto %d\n", idx);
+	dev_info(dev, "\tpolarity = %d\n", po->polarity);
+	dev_info(dev, "\tproto_id = %d\n", po->proto_id);
+	dev_info(dev, "\toffset = %d\n", po->offset);
+}
+
+/**
+ * ice_proto_grp_dump - dump a proto group item info
+ * @hw: pointer to the hardware structure
+ * @item: proto group item to dump
+ */
+static void ice_proto_grp_dump(struct ice_hw *hw,
+			       struct ice_proto_grp_item *item)
+{
+	int i;
+
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+
+	for (i = 0; i < ICE_PROTO_COUNT_PER_GRP; i++)
+		ice_proto_off_dump(hw, &item->po[i], i);
+}
+
 #define ICE_PO_POL	BIT(0)
 #define ICE_PO_PID	GENMASK(8, 1)
 #define ICE_PO_OFF	GENMASK(21, 12)
@@ -1023,6 +1432,9 @@ static void ice_proto_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
 		d32 = *((u32 *)&buf[idd]) >> off;
 		ice_proto_off_parse(&grp->po[i], d32);
 	}
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_proto_grp_dump(hw, grp);
 }
 
 /**
@@ -1040,6 +1452,20 @@ static struct ice_proto_grp_item *ice_proto_grp_table_get(struct ice_hw *hw)
 }
 
 /*** ICE_SID_RXPARSER_FLAG_REDIR section ***/
+/**
+ * ice_flg_rd_dump - dump a flag redirect item info
+ * @hw: pointer to the hardware structure
+ * @item: flag redirect item to dump
+ */
+static void ice_flg_rd_dump(struct ice_hw *hw, struct ice_flg_rd_item *item)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+
+	dev_info(dev, "index = %d\n", item->idx);
+	dev_info(dev, "expose = %d\n", item->expose);
+	dev_info(dev, "intr_flg_id = %d\n", item->intr_flg_id);
+}
+
 #define ICE_FRT_EXPO	BIT(0)
 #define ICE_FRT_IFID	GENMASK(6, 1)
 
@@ -1060,6 +1486,9 @@ static void ice_flg_rd_parse_item(struct ice_hw *hw, u16 idx, void *item,
 	rdi->idx = idx;
 	rdi->expose = FIELD_GET(ICE_FRT_EXPO, d8);
 	rdi->intr_flg_id = FIELD_GET(ICE_FRT_IFID, d8);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_flg_rd_dump(hw, rdi);
 }
 
 /**
@@ -1079,6 +1508,44 @@ static struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw)
 /*** ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
  * ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS
  * sections ***/
+static void ice_xlt_kb_entry_dump(struct ice_hw *hw,
+				  struct ice_xlt_kb_entry *entry, int idx)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	int i;
+
+	dev_info(dev, "key builder entry %d\n", idx);
+	dev_info(dev, "\txlt1_ad_sel = %d\n", entry->xlt1_ad_sel);
+	dev_info(dev, "\txlt2_ad_sel = %d\n", entry->xlt2_ad_sel);
+
+	for (i = 0; i < ICE_XLT_KB_FLAG0_14_CNT; i++)
+		dev_info(dev, "\tflg%d_sel = %d\n", i, entry->flg0_14_sel[i]);
+
+	dev_info(dev, "\txlt1_md_sel = %d\n", entry->xlt1_md_sel);
+	dev_info(dev, "\txlt2_md_sel = %d\n", entry->xlt2_md_sel);
+}
+
+/**
+ * ice_xlt_kb_dump - dump a xlt key build info
+ * @hw: pointer to the hardware structure
+ * @kb: key build to dump
+ */
+static void ice_xlt_kb_dump(struct ice_hw *hw, struct ice_xlt_kb *kb)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	int i;
+
+	dev_info(dev, "xlt1_pm = %d\n", kb->xlt1_pm);
+	dev_info(dev, "xlt2_pm = %d\n", kb->xlt2_pm);
+	dev_info(dev, "prof_id_pm = %d\n", kb->prof_id_pm);
+	dev_info(dev, "flag15 lo = 0x%08x\n", (u32)kb->flag15);
+	dev_info(dev, "flag15 hi = 0x%08x\n",
+		 (u32)(kb->flag15 >> (sizeof(u32) * BITS_PER_BYTE)));
+
+	for (i = 0; i < ICE_XLT_KB_TBL_CNT; i++)
+		ice_xlt_kb_entry_dump(hw, &kb->entries[i], i);
+}
+
 #define ICE_XLT_KB_X1AS_S	32	/* offset for the 1st 64-bits field */
 #define ICE_XLT_KB_X1AS_IDD	(ICE_XLT_KB_X1AS_S / BITS_PER_BYTE)
 #define ICE_XLT_KB_X1AS_OFF	(ICE_XLT_KB_X1AS_S % BITS_PER_BYTE)
@@ -1195,6 +1662,9 @@ static void ice_parse_kb_data(struct ice_hw *hw, struct ice_xlt_kb *kb,
 		ice_kb_entry_init(&kb->entries[i],
 				  &buf[ICE_XLT_KB_TBL_OFF +
 				       i * ICE_XLT_KB_TBL_ENTRY_SIZE]);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_xlt_kb_dump(hw, kb);
 }
 
 static struct ice_xlt_kb *ice_xlt_kb_get(struct ice_hw *hw, u32 sect_type)
-- 
2.43.0

