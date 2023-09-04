Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A4F790FF4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 04:15:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D869781E90;
	Mon,  4 Sep 2023 02:15:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D869781E90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693793725;
	bh=Zk6itfPAOrf6quFA/S0nHYQxta5Y2YiD+E44y3eyeoo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zNKesjXW6ppxqRkmwqt6x5L5IPAjI/L5TpFvNbR1rXTYOk3TVhnxleowXCFVJpD4P
	 MTnoVNnfBiLLAWHApD98fVS5X+aiUBniFCiy1JSx7iQCjoWQANkGhIslueGG2bfaL2
	 hmzpHF8K7hix2dZDxkw6Op01qjfyihnLnfOFhEB9n8H3ItfCFW8nZkc4dqb2rpn+CQ
	 qZUq3kmnnED3hwtYsJurtqDanO8GtE6ylJd3RZrHv44MGMX1xwwarGCTLQQFoxtK8D
	 WzJvImatVUJA+tSlxlItlBgf/dvr3ZTYbDwG1CpracHS86TQOVjDcXYKqu0E7dnBcu
	 K+WTa1R8/I9dQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VjGLSf51DjP5; Mon,  4 Sep 2023 02:15:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96B1481E1F;
	Mon,  4 Sep 2023 02:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96B1481E1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D2911BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 608E481E76
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 608E481E76
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xICwyzimftZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 02:15:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB90181E1F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB90181E1F
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="379215137"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="379215137"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 19:15:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="769826777"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="769826777"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2023 19:15:10 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Sep 2023 10:14:42 +0800
Message-Id: <20230904021455.3944605-3-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230904021455.3944605-1-junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693793714; x=1725329714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KVwX1CGoJAr+RrOc40wgcUwktHQ/keKINvMDXomxzK4=;
 b=kjK8fXxCbZPWfKzaj4pnQeAGF4/OtOrDGjUW+OG27Bg8JIRfc2XPqyRO
 hG/0c1shBF2iUccG/adhDFDqW7WvLn5iduEAdLqA+dfcId3N4Hol4Rwuw
 v+JeDjToBeqI/mFKytwiJrUA/IwNPYl5UfIjFGbKY1MkAhAq0HvR0peZs
 pmiFF76Bb4g5eUhKbmDxoVAfvKsl8+8A5s6danDO3vq7iPobVFt/LEyZW
 umyPqEo05zsFe1IoTzqCqgOII45tSoudPyjKm1/GSxE0Qfr+H1uovWsGd
 pNp+madsxXLCc3aHiFJ+s6hlH+0tOUUjE4lu6PeXmFqm4ENFdi7BPdfZt
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kjK8fXxC
Subject: [Intel-wired-lan] [PATCH iwl-next v9 02/15] ice: init imem table
 for parser
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, qi.z.zhang@intel.com,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Parse DDP section ICE_SID_RXPARSER_IMEM into an array of
struct ice_imem_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice_imem.c     | 324 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_imem.h     | 132 +++++++
 drivers/net/ethernet/intel/ice/ice_parser.c   |  97 ++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |   8 +
 .../net/ethernet/intel/ice/ice_parser_util.h  |  24 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 7 files changed, 587 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_util.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 1c9c2816f103..2345081e8554 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -27,6 +27,7 @@ ice-y := ice_main.o	\
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
 	 ice_parser.o    \
+	 ice_imem.o      \
 	 ice_idc.o	\
 	 ice_devlink.o	\
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_imem.c b/drivers/net/ethernet/intel/ice/ice_imem.c
new file mode 100644
index 000000000000..005e04947626
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_imem.c
@@ -0,0 +1,324 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+static void _ice_imem_bst_bm_dump(struct ice_hw *hw, struct ice_bst_main *bm)
+{
+	dev_info(ice_hw_to_dev(hw), "boost main:\n");
+	dev_info(ice_hw_to_dev(hw), "\talu0 = %d\n", bm->alu0);
+	dev_info(ice_hw_to_dev(hw), "\talu1 = %d\n", bm->alu1);
+	dev_info(ice_hw_to_dev(hw), "\talu2 = %d\n", bm->alu2);
+	dev_info(ice_hw_to_dev(hw), "\tpg = %d\n", bm->pg);
+}
+
+static void _ice_imem_bst_kb_dump(struct ice_hw *hw,
+				  struct ice_bst_keybuilder *kb)
+{
+	dev_info(ice_hw_to_dev(hw), "boost key builder:\n");
+	dev_info(ice_hw_to_dev(hw), "\tpriority = %d\n", kb->prio);
+	dev_info(ice_hw_to_dev(hw), "\ttsr_ctrl = %d\n", kb->tsr_ctrl);
+}
+
+static void _ice_imem_np_kb_dump(struct ice_hw *hw,
+				 struct ice_np_keybuilder *kb)
+{
+	dev_info(ice_hw_to_dev(hw), "next proto key builder:\n");
+	dev_info(ice_hw_to_dev(hw), "\tops = %d\n", kb->opc);
+	dev_info(ice_hw_to_dev(hw), "\tstart_or_reg0 = %d\n",
+		 kb->start_reg0);
+	dev_info(ice_hw_to_dev(hw), "\tlen_or_reg1 = %d\n", kb->len_reg1);
+}
+
+static void _ice_imem_pg_kb_dump(struct ice_hw *hw,
+				 struct ice_pg_keybuilder *kb)
+{
+	dev_info(ice_hw_to_dev(hw), "parse graph key builder:\n");
+	dev_info(ice_hw_to_dev(hw), "\tflag0_ena = %d\n", kb->flag0_ena);
+	dev_info(ice_hw_to_dev(hw), "\tflag1_ena = %d\n", kb->flag1_ena);
+	dev_info(ice_hw_to_dev(hw), "\tflag2_ena = %d\n", kb->flag2_ena);
+	dev_info(ice_hw_to_dev(hw), "\tflag3_ena = %d\n", kb->flag3_ena);
+	dev_info(ice_hw_to_dev(hw), "\tflag0_idx = %d\n", kb->flag0_idx);
+	dev_info(ice_hw_to_dev(hw), "\tflag1_idx = %d\n", kb->flag1_idx);
+	dev_info(ice_hw_to_dev(hw), "\tflag2_idx = %d\n", kb->flag2_idx);
+	dev_info(ice_hw_to_dev(hw), "\tflag3_idx = %d\n", kb->flag3_idx);
+	dev_info(ice_hw_to_dev(hw), "\talu_reg_idx = %d\n", kb->alu_reg_idx);
+}
+
+static void _ice_imem_alu_dump(struct ice_hw *hw,
+			       struct ice_alu *alu, int index)
+{
+	dev_info(ice_hw_to_dev(hw), "alu%d:\n", index);
+	dev_info(ice_hw_to_dev(hw), "\topc = %d\n", alu->opc);
+	dev_info(ice_hw_to_dev(hw), "\tsrc_start = %d\n", alu->src_start);
+	dev_info(ice_hw_to_dev(hw), "\tsrc_len = %d\n", alu->src_len);
+	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_sel = %d\n",
+		 alu->shift_xlate_sel);
+	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_key = %d\n",
+		 alu->shift_xlate_key);
+	dev_info(ice_hw_to_dev(hw), "\tsrc_reg_id = %d\n", alu->src_reg_id);
+	dev_info(ice_hw_to_dev(hw), "\tdst_reg_id = %d\n", alu->dst_reg_id);
+	dev_info(ice_hw_to_dev(hw), "\tinc0 = %d\n", alu->inc0);
+	dev_info(ice_hw_to_dev(hw), "\tinc1 = %d\n", alu->inc1);
+	dev_info(ice_hw_to_dev(hw), "\tproto_offset_opc = %d\n",
+		 alu->proto_offset_opc);
+	dev_info(ice_hw_to_dev(hw), "\tproto_offset = %d\n",
+		 alu->proto_offset);
+	dev_info(ice_hw_to_dev(hw), "\tbranch_addr = %d\n", alu->branch_addr);
+	dev_info(ice_hw_to_dev(hw), "\timm = %d\n", alu->imm);
+	dev_info(ice_hw_to_dev(hw), "\tdst_start = %d\n", alu->dst_start);
+	dev_info(ice_hw_to_dev(hw), "\tdst_len = %d\n", alu->dst_len);
+	dev_info(ice_hw_to_dev(hw), "\tflags_extr_imm = %d\n",
+		 alu->flags_extr_imm);
+	dev_info(ice_hw_to_dev(hw), "\tflags_start_imm= %d\n",
+		 alu->flags_start_imm);
+}
+
+/**
+ * ice_imem_dump - dump an imem item info
+ * @hw: pointer to the hardware structure
+ * @item: imem item to dump
+ */
+void ice_imem_dump(struct ice_hw *hw, struct ice_imem_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	_ice_imem_bst_bm_dump(hw, &item->b_m);
+	_ice_imem_bst_kb_dump(hw, &item->b_kb);
+	dev_info(ice_hw_to_dev(hw), "pg priority = %d\n", item->pg_pri);
+	_ice_imem_np_kb_dump(hw, &item->np_kb);
+	_ice_imem_pg_kb_dump(hw, &item->pg_kb);
+	_ice_imem_alu_dump(hw, &item->alu0, 0);
+	_ice_imem_alu_dump(hw, &item->alu1, 1);
+	_ice_imem_alu_dump(hw, &item->alu2, 2);
+}
+
+#define ICE_IM_BM_ALU0	BIT(0)
+#define ICE_IM_BM_ALU1	BIT(1)
+#define ICE_IM_BM_ALU2	BIT(2)
+#define ICE_IM_BM_PG	BIT(3)
+
+/** The function parses a 4 bits Boost Main with below format:
+ *  BIT 0: ALU 0	(bm->alu0)
+ *  BIT 1: ALU 1	(bm->alu1)
+ *  BIT 2: ALU 2	(bm->alu2)
+ *  BIT 3: Parge Graph	(bm->pg)
+ */
+static void _ice_imem_bm_init(struct ice_bst_main *bm, u8 data)
+{
+	bm->alu0	= FIELD_GET(ICE_IM_BM_ALU0, data);
+	bm->alu1	= FIELD_GET(ICE_IM_BM_ALU1, data);
+	bm->alu2	= FIELD_GET(ICE_IM_BM_ALU2, data);
+	bm->pg		= FIELD_GET(ICE_IM_BM_PG, data);
+}
+
+#define ICE_IM_BKB_PRIO		GENMASK(7, 0)
+#define ICE_IM_BKB_TSR_CTRL	BIT(8)
+
+/** The function parses a 10 bits Boost Main Build with below format:
+ *  BIT 0-7:	Priority	(bkb->prio)
+ *  BIT 8:	TSR Control	(bkb->tsr_ctrl)
+ *  BIT 9:	Reserved
+ */
+static void _ice_imem_bkb_init(struct ice_bst_keybuilder *bkb, u16 data)
+{
+	bkb->prio	= FIELD_GET(ICE_IM_BKB_PRIO, data);
+	bkb->tsr_ctrl	= FIELD_GET(ICE_IM_BKB_TSR_CTRL, data);
+}
+
+#define ICE_IM_NPKB_OPC		GENMASK(1, 0)
+#define ICE_IM_NPKB_S_R0	GENMASK(9, 2)
+#define ICE_IM_NPKB_L_R1	GENMASK(17, 10)
+
+/** The function parses a 18 bits Next Protocol Key Build with below format:
+ *  BIT 0-1:	Opcode		(kb->ops)
+ *  BIT 2-9:	Start / Reg 0	(kb->start_or_reg0)
+ *  BIT 10-17:	Length / Reg 1	(kb->len_or_reg1)
+ */
+static void _ice_imem_npkb_init(struct ice_np_keybuilder *kb, u32 data)
+{
+	kb->opc		= FIELD_GET(ICE_IM_NPKB_OPC, data);
+	kb->start_reg0	= FIELD_GET(ICE_IM_NPKB_S_R0, data);
+	kb->len_reg1	= FIELD_GET(ICE_IM_NPKB_L_R1, data);
+}
+
+#define ICE_IM_PGKB_F0_ENA		BIT_ULL(0)
+#define ICE_IM_PGKB_F0_IDX		GENMASK_ULL(6, 1)
+#define ICE_IM_PGKB_F1_ENA		BIT_ULL(7)
+#define ICE_IM_PGKB_F1_IDX		GENMASK_ULL(13, 8)
+#define ICE_IM_PGKB_F2_ENA		BIT_ULL(14)
+#define ICE_IM_PGKB_F2_IDX		GENMASK_ULL(20, 15)
+#define ICE_IM_PGKB_F3_ENA		BIT_ULL(21)
+#define ICE_IM_PGKB_F3_IDX		GENMASK_ULL(27, 22)
+#define ICE_IM_PGKB_AR_IDX		GENMASK_ULL(34, 28)
+
+/** The function parses a 35 bits Parse Graph Key Build with below format:
+ *  BIT 0:	Flag 0 Enable		(kb->flag0_ena)
+ *  BIT 1-6:	Flag 0 Index		(kb->flag0_idx)
+ *  BIT 7:	Flag 1 Enable		(kb->flag1_ena)
+ *  BIT 8-13:	Flag 1 Index		(kb->flag1_idx)
+ *  BIT 14:	Flag 2 Enable		(kb->flag2_ena)
+ *  BIT 15-20:	Flag 2 Index		(kb->flag2_idx)
+ *  BIT 21:	Flag 3 Enable		(kb->flag3_ena)
+ *  BIT 22-27:	Flag 3 Index		(kb->flag3_idx)
+ *  BIT 28-34:	ALU Register Index	(kb->alu_reg_idx)
+ */
+static void _ice_imem_pgkb_init(struct ice_pg_keybuilder *kb, u64 data)
+{
+	kb->flag0_ena	= FIELD_GET(ICE_IM_PGKB_F0_ENA, data);
+	kb->flag0_idx	= FIELD_GET(ICE_IM_PGKB_F0_IDX, data);
+	kb->flag1_ena	= FIELD_GET(ICE_IM_PGKB_F1_ENA, data);
+	kb->flag1_idx	= FIELD_GET(ICE_IM_PGKB_F1_IDX, data);
+	kb->flag2_ena	= FIELD_GET(ICE_IM_PGKB_F2_ENA, data);
+	kb->flag2_idx	= FIELD_GET(ICE_IM_PGKB_F2_IDX, data);
+	kb->flag3_ena	= FIELD_GET(ICE_IM_PGKB_F3_ENA, data);
+	kb->flag3_idx	= FIELD_GET(ICE_IM_PGKB_F3_IDX, data);
+	kb->alu_reg_idx	= FIELD_GET(ICE_IM_PGKB_AR_IDX, data);
+}
+
+#define ICE_IM_ALU_OPC		GENMASK_ULL(5, 0)
+#define ICE_IM_ALU_SS		GENMASK_ULL(13, 6)
+#define ICE_IM_ALU_SL		GENMASK_ULL(18, 14)
+#define ICE_IM_ALU_SXS		BIT_ULL(19)
+#define ICE_IM_ALU_SXK		GENMASK_ULL(23, 20)
+#define ICE_IM_ALU_SRID		GENMASK_ULL(30, 24)
+#define ICE_IM_ALU_DRID		GENMASK_ULL(37, 31)
+#define ICE_IM_ALU_INC0		BIT_ULL(38)
+#define ICE_IM_ALU_INC1		BIT_ULL(39)
+#define ICE_IM_ALU_POO		GENMASK_ULL(41, 40)
+#define ICE_IM_ALU_PO		GENMASK_ULL(49, 42)
+#define ICE_IM_ALU_BA_S		50	/* offset for the 2nd 64-bits field */
+#define ICE_IM_ALU_BA		GENMASK_ULL(57 - ICE_IM_ALU_BA_S, 50 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_IMM		GENMASK_ULL(73 - ICE_IM_ALU_BA_S, 58 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_DFE		BIT_ULL(74 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_DS		GENMASK_ULL(80 - ICE_IM_ALU_BA_S, 75 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_DL		GENMASK_ULL(86 - ICE_IM_ALU_BA_S, 81 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_FEI		BIT_ULL(87 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_FSI		GENMASK_ULL(95 - ICE_IM_ALU_BA_S, 88 - ICE_IM_ALU_BA_S)
+
+/** The function parses a 96 bits ALU entry with below format:
+ *  BIT 0-5:	Opcode			(alu->opc)
+ *  BIT 6-13:	Source Start		(alu->src_start)
+ *  BIT 14-18:	Source Length		(alu->src_len)
+ *  BIT 19:	Shift/Xlate Select	(alu->shift_xlate_select)
+ *  BIT 20-23:	Shift/Xlate Key		(alu->shift_xlate_key)
+ *  BIT 24-30:	Source Register ID	(alu->src_reg_id)
+ *  BIT 31-37:	Dest. Register ID	(alu->dst_reg_id)
+ *  BIT 38:	Inc0			(alu->inc0)
+ *  BIT 39:	Inc1			(alu->inc1)
+ *  BIT 40-41:	Protocol Offset Opcode	(alu->proto_offset_opc)
+ *  BIT 42-49:	Protocol Offset		(alu->proto_offset)
+ *  BIT 50-57:	Branch Address		(alu->branch_addr)
+ *  BIT 58-73:	Immediate		(alu->imm)
+ *  BIT 74:	Dedicated Flags Enable	(alu->dedicate_flags_ena)
+ *  BIT 75-80:	Dest. Start		(alu->dst_start)
+ *  BIT 81-86:	Dest. Length		(alu->dst_len)
+ *  BIT 87:	Flags Extract Imm.	(alu->flags_extr_imm)
+ *  BIT 88-95:	Flags Start/Immediate	(alu->flags_start_imm)
+ */
+static void _ice_imem_alu_init(struct ice_alu *alu, u8 *data, u8 off)
+{
+	u64 d64;
+	u8 idd;
+
+	d64 = *((u64 *)data) >> off;
+
+	alu->opc		= FIELD_GET(ICE_IM_ALU_OPC, d64);
+	alu->src_start		= FIELD_GET(ICE_IM_ALU_SS, d64);
+	alu->src_len		= FIELD_GET(ICE_IM_ALU_SL, d64);
+	alu->shift_xlate_sel	= FIELD_GET(ICE_IM_ALU_SXS, d64);
+	alu->shift_xlate_key	= FIELD_GET(ICE_IM_ALU_SXK, d64);
+	alu->src_reg_id		= FIELD_GET(ICE_IM_ALU_SRID, d64);
+	alu->dst_reg_id		= FIELD_GET(ICE_IM_ALU_DRID, d64);
+	alu->inc0		= FIELD_GET(ICE_IM_ALU_INC0, d64);
+	alu->inc1		= FIELD_GET(ICE_IM_ALU_INC1, d64);
+	alu->proto_offset_opc	= FIELD_GET(ICE_IM_ALU_POO, d64);
+	alu->proto_offset	= FIELD_GET(ICE_IM_ALU_PO, d64);
+
+	idd = (ICE_IM_ALU_BA_S + off) / BITS_PER_BYTE;
+	off = (ICE_IM_ALU_BA_S + off) % BITS_PER_BYTE;
+	d64 = *((u64 *)(&data[idd])) >> off;
+
+	alu->branch_addr	= FIELD_GET(ICE_IM_ALU_BA, d64);
+	alu->imm		= FIELD_GET(ICE_IM_ALU_IMM, d64);
+	alu->dedicate_flags_ena	= FIELD_GET(ICE_IM_ALU_DFE, d64);
+	alu->dst_start		= FIELD_GET(ICE_IM_ALU_DS, d64);
+	alu->dst_len		= FIELD_GET(ICE_IM_ALU_DL, d64);
+	alu->flags_extr_imm	= FIELD_GET(ICE_IM_ALU_FEI, d64);
+	alu->flags_start_imm	= FIELD_GET(ICE_IM_ALU_FSI, d64);
+}
+
+#define ICE_IMEM_BM_S		0
+#define ICE_IMEM_BKB_S		4
+#define ICE_IMEM_PGP		GENMASK(15, 14)
+#define ICE_IMEM_NPKB_S		16
+#define ICE_IMEM_PGKB_S		34
+#define ICE_IMEM_ALU0_S		69
+#define ICE_IMEM_ALU1_S		165
+#define ICE_IMEM_ALU2_S		357
+
+/** The function parses a 384 bits IMEM entry with below format:
+ *  BIT 0-3:	Boost Main		(ii->b_m)
+ *  BIT 4-13:	Boost Key Build		(ii->b_kb)
+ *  BIT 14-15:	PG Priority		(ii->pg)
+ *  BIT 16-33:	Next Proto Key Build	(ii->np_kb)
+ *  BIT 34-68:	PG Key Build		(ii->pg_kb)
+ *  BIT 69-164:	ALU0			(ii->alu0)
+ *  BIT 165-260:ALU1			(ii->alu1)
+ *  BIT 261-356:ALU2			(ii->alu2)
+ *  BIT 357-383:Reserved
+ */
+static void _ice_imem_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				 void *data, int size)
+{
+	struct ice_imem_item *ii = item;
+	u8 *buf = (u8 *)data;
+	u8 idd, off;
+
+	ii->idx = idx;
+
+	_ice_imem_bm_init(&ii->b_m, *(u8 *)buf);
+
+	idd = ICE_IMEM_BKB_S / BITS_PER_BYTE;
+	off = ICE_IMEM_BKB_S % BITS_PER_BYTE;
+	_ice_imem_bkb_init(&ii->b_kb, *((u16 *)(&buf[idd])) >> off);
+
+	ii->pg_pri = FIELD_GET(ICE_IMEM_PGP, *(u16 *)buf);
+
+	idd = ICE_IMEM_NPKB_S / BITS_PER_BYTE;
+	off = ICE_IMEM_NPKB_S % BITS_PER_BYTE;
+	_ice_imem_npkb_init(&ii->np_kb, *((u32 *)(&buf[idd])) >> off);
+
+	idd = ICE_IMEM_PGKB_S / BITS_PER_BYTE;
+	off = ICE_IMEM_PGKB_S % BITS_PER_BYTE;
+	_ice_imem_pgkb_init(&ii->pg_kb, *((u64 *)(&buf[idd])) >> off);
+
+	idd = ICE_IMEM_ALU0_S / BITS_PER_BYTE;
+	off = ICE_IMEM_ALU0_S % BITS_PER_BYTE;
+	_ice_imem_alu_init(&ii->alu0, &buf[idd], off);
+
+	idd = ICE_IMEM_ALU1_S / BITS_PER_BYTE;
+	off = ICE_IMEM_ALU1_S % BITS_PER_BYTE;
+	_ice_imem_alu_init(&ii->alu1, &buf[idd], off);
+
+	idd = ICE_IMEM_ALU2_S / BITS_PER_BYTE;
+	off = ICE_IMEM_ALU2_S % BITS_PER_BYTE;
+	_ice_imem_alu_init(&ii->alu2, &buf[idd], off);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_imem_dump(hw, ii);
+}
+
+/**
+ * ice_imem_table_get - create an imem table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
+{
+	return (struct ice_imem_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_IMEM,
+					sizeof(struct ice_imem_item),
+					ICE_IMEM_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_ice_imem_parse_item);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_imem.h b/drivers/net/ethernet/intel/ice/ice_imem.h
new file mode 100644
index 000000000000..91631ccdb50d
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_imem.h
@@ -0,0 +1,132 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_IMEM_H_
+#define _ICE_IMEM_H_
+
+#define ICE_IMEM_TABLE_SIZE	192
+
+struct ice_bst_main {
+	bool alu0;
+	bool alu1;
+	bool alu2;
+	bool pg;
+};
+
+struct ice_bst_keybuilder {
+	u8 prio;
+	bool tsr_ctrl;
+};
+
+#define ICE_NPKB_HV_SIZE	8
+
+struct ice_np_keybuilder {
+	u8 opc;
+	u8 start_reg0;
+	u8 len_reg1;
+};
+
+enum ice_np_keybuilder_opcode {
+	ICE_NPKB_OPC_EXTRACT	= 0,
+	ICE_NPKB_OPC_BUILD	= 1,
+	ICE_NPKB_OPC_BYPASS	= 2,
+};
+
+struct ice_pg_keybuilder {
+	bool flag0_ena;
+	bool flag1_ena;
+	bool flag2_ena;
+	bool flag3_ena;
+	u8 flag0_idx;
+	u8 flag1_idx;
+	u8 flag2_idx;
+	u8 flag3_idx;
+	u8 alu_reg_idx;
+};
+
+enum ice_alu_idx {
+	ICE_ALU0_IDX	= 0,
+	ICE_ALU1_IDX	= 1,
+	ICE_ALU2_IDX	= 2,
+};
+
+enum ice_alu_opcode {
+	ICE_ALU_PARK	= 0,
+	ICE_ALU_MOV_ADD	= 1,
+	ICE_ALU_ADD	= 2,
+	ICE_ALU_MOV_AND	= 4,
+	ICE_ALU_AND	= 5,
+	ICE_ALU_AND_IMM	= 6,
+	ICE_ALU_MOV_OR	= 7,
+	ICE_ALU_OR	= 8,
+	ICE_ALU_MOV_XOR	= 9,
+	ICE_ALU_XOR	= 10,
+	ICE_ALU_NOP	= 11,
+	ICE_ALU_BR	= 12,
+	ICE_ALU_BREQ	= 13,
+	ICE_ALU_BRNEQ	= 14,
+	ICE_ALU_BRGT	= 15,
+	ICE_ALU_BRLT	= 16,
+	ICE_ALU_BRGEQ	= 17,
+	ICE_ALU_BRLEG	= 18,
+	ICE_ALU_SETEQ	= 19,
+	ICE_ALU_ANDEQ	= 20,
+	ICE_ALU_OREQ	= 21,
+	ICE_ALU_SETNEQ	= 22,
+	ICE_ALU_ANDNEQ	= 23,
+	ICE_ALU_ORNEQ	= 24,
+	ICE_ALU_SETGT	= 25,
+	ICE_ALU_ANDGT	= 26,
+	ICE_ALU_ORGT	= 27,
+	ICE_ALU_SETLT	= 28,
+	ICE_ALU_ANDLT	= 29,
+	ICE_ALU_ORLT	= 30,
+	ICE_ALU_MOV_SUB	= 31,
+	ICE_ALU_SUB	= 32,
+	ICE_ALU_INVALID	= 64,
+};
+
+enum ice_proto_off_opcode {
+	ICE_PO_OFF_REMAIN	= 0,
+	ICE_PO_OFF_HDR_ADD	= 1,
+	ICE_PO_OFF_HDR_SUB	= 2,
+};
+
+#define ICE_ALU_REG_SIZE	4
+
+struct ice_alu {
+	enum ice_alu_opcode opc;
+	u8 src_start;
+	u8 src_len;
+	bool shift_xlate_sel;
+	u8 shift_xlate_key;
+	u8 src_reg_id;
+	u8 dst_reg_id;
+	bool inc0;
+	bool inc1;
+	u8 proto_offset_opc;
+	u8 proto_offset;
+	u8 branch_addr;
+	u16 imm;
+	bool dedicate_flags_ena;
+	u8 dst_start;
+	u8 dst_len;
+	bool flags_extr_imm;
+	u8 flags_start_imm;
+};
+
+struct ice_imem_item {
+	u16 idx;
+	struct ice_bst_main b_m;
+	struct ice_bst_keybuilder b_kb;
+	u8 pg_pri;
+	struct ice_np_keybuilder np_kb;
+	struct ice_pg_keybuilder pg_kb;
+	struct ice_alu alu0;
+	struct ice_alu alu1;
+	struct ice_alu alu2;
+};
+
+void ice_imem_dump(struct ice_hw *hw, struct ice_imem_item *item);
+struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw);
+#endif /* _ICE_IMEM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 747dfad66db2..dd089c859616 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -2,6 +2,91 @@
 /* Copyright (C) 2023 Intel Corporation */
 
 #include "ice_common.h"
+#include "ice_parser_util.h"
+
+/**
+ * ice_parser_sect_item_get - parse a item from a section
+ * @sect_type: section type
+ * @section: section object
+ * @index: index of the item to get
+ * @offset: dummy as prototype of ice_pkg_enum_entry's last parameter
+ */
+void *ice_parser_sect_item_get(u32 sect_type, void *section,
+			       u32 index, u32 *offset)
+{
+	size_t data_off = ICE_SEC_DATA_OFFSET;
+	struct ice_pkg_sect_hdr *hdr;
+	size_t size;
+
+	if (!section)
+		return NULL;
+
+	switch (sect_type) {
+	case ICE_SID_RXPARSER_IMEM:
+		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
+		break;
+	default:
+		return NULL;
+	}
+
+	hdr = section;
+	if (index >= le16_to_cpu(hdr->count))
+		return NULL;
+
+	return (u8 *)section + data_off + index * size;
+}
+
+/**
+ * ice_parser_create_table - create a item table from a section
+ * @hw: pointer to the hardware structure
+ * @sect_type: section type
+ * @item_size: item size in byte
+ * @length: number of items in the table to create
+ * @item_get: the function will be parsed to ice_pkg_enum_entry
+ * @parse_item: the function to parse the item
+ */
+void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
+			      u32 item_size, u32 length,
+			      void *(*item_get)(u32 sect_type, void *section,
+						u32 index, u32 *offset),
+			      void (*parse_item)(struct ice_hw *hw, u16 idx,
+						 void *item, void *data,
+						 int size))
+{
+	struct ice_seg *seg = hw->seg;
+	struct ice_pkg_enum state;
+	u16 idx = U16_MAX;
+	void *table;
+	void *data;
+
+	if (!seg)
+		return NULL;
+
+	table = devm_kzalloc(ice_hw_to_dev(hw), item_size * length,
+			     GFP_KERNEL);
+	if (!table)
+		return NULL;
+
+	memset(&state, 0, sizeof(state));
+	do {
+		data = ice_pkg_enum_entry(seg, &state, sect_type, NULL,
+					  item_get);
+		seg = NULL;
+		if (data) {
+			struct ice_pkg_sect_hdr *hdr =
+				(struct ice_pkg_sect_hdr *)state.sect;
+
+			idx = le16_to_cpu(hdr->offset) + state.entry_idx;
+			parse_item(hw, idx,
+				   (void *)((uintptr_t)table +
+					    ((uintptr_t)idx *
+					     (uintptr_t)item_size)),
+				   data, item_size);
+		}
+	} while (data);
+
+	return table;
+}
 
 /**
  * ice_parser_create - create a parser instance
@@ -11,6 +96,7 @@
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 {
 	struct ice_parser *p;
+	int status;
 
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct ice_parser),
 			 GFP_KERNEL);
@@ -19,8 +105,17 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 
 	p->hw = hw;
 
+	p->imem_table = ice_imem_table_get(hw);
+	if (!p->imem_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
 	*psr = p;
 	return 0;
+err:
+	ice_parser_destroy(p);
+	return status;
 }
 
 /**
@@ -29,5 +124,7 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
  */
 void ice_parser_destroy(struct ice_parser *psr)
 {
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
+
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 85c470235e67..b63c27ec481d 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -4,8 +4,16 @@
 #ifndef _ICE_PARSER_H_
 #define _ICE_PARSER_H_
 
+#include "ice_imem.h"
+
+#define ICE_SEC_DATA_OFFSET				4
+#define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
+
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
+
+	/* load data from section ICE_SID_RX_PARSER_IMEM */
+	struct ice_imem_item *imem_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h b/drivers/net/ethernet/intel/ice/ice_parser_util.h
new file mode 100644
index 000000000000..32371458b581
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_PARSER_UTIL_H_
+#define _ICE_PARSER_UTIL_H_
+
+#include "ice_imem.h"
+
+struct ice_pkg_sect_hdr {
+	__le16 count;
+	__le16 offset;
+};
+
+void *ice_parser_sect_item_get(u32 sect_type, void *section,
+			       u32 index, u32 *offset);
+
+void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
+			      u32 item_size, u32 length,
+			      void *(*handler)(u32 sect_type, void *section,
+					       u32 index, u32 *offset),
+			      void (*parse_item)(struct ice_hw *hw, u16 idx,
+						 void *item, void *data,
+						 int size));
+#endif /* _ICE_PARSER_UTIL_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a09556e57803..fa4336dd55f7 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -60,6 +60,7 @@ static inline u32 ice_round_to_num(u32 N, u32 R)
 				 ICE_DBG_AQ_DESC	| \
 				 ICE_DBG_AQ_DESC_BUF	| \
 				 ICE_DBG_AQ_CMD)
+#define ICE_DBG_PARSER		BIT_ULL(28)
 
 #define ICE_DBG_USER		BIT_ULL(31)
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
