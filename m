Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF324790FF8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 04:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4EC981E9F;
	Mon,  4 Sep 2023 02:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4EC981E9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693793739;
	bh=jtELyP6RWHZBF8N/chyl8EJ2338bWVuWWdKitpJFJGY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eAgMXAkKAJfkMBjIw5xTdLeGHpG+qze+rkmdqVeY/2Nn264kWp10DKNmioxiUAtLP
	 Lkq8rW3j5015oVv/016e6LwAqc/W6MTgVENS48BoiRldn1bCO8s/M4ASZv5pLivosz
	 wooYlHDBVlh5YD4v9c+MyghXHZhfUFa0N+WQayLL+sX9dF4c2hHxQ8PLmhGsBhQPLP
	 m38ezl1+B04t28czHlWYv8m1j/rcbwPWK0qvmHUoyy6J0WARU9n3/ZRY52m8vzZrre
	 DT6qmtNOYCpqlDDYyfhI6gMGyfUyjt6KwwIdDRHHS4m8sPGjCAIyvwqeZrob5Q55/H
	 JHT/SLe7Q5N9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RoYaDjVq5Eln; Mon,  4 Sep 2023 02:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35A0A81E7A;
	Mon,  4 Sep 2023 02:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35A0A81E7A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B6CC1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41CB781E7C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41CB781E7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TpzcxWMRzUWc for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 02:15:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84E8781E1F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84E8781E1F
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="379215252"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="379215252"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 19:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="769826901"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="769826901"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2023 19:15:22 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Sep 2023 10:14:45 +0800
Message-Id: <20230904021455.3944605-6-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230904021455.3944605-1-junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693793728; x=1725329728;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DcYkh+FNjlHfuBv4eC2sbrXi8rv9gqHseImb6unGwVQ=;
 b=nnE5VN+esk6Je0tiP5JLG7ElryuRbH92QU/QSGSnHD6RJxWyLRBtSZNc
 3WYePq3jm6GyI7utxLRp0lSnj9V3MDXAvEQOA7sdOPEYEQzeKjVBDSeDt
 2FgKqjPBDLniyBRCeYPZIDkUhxtJd6KPGr035NvMabbBwNBTja29ovkEa
 8JvUxISIC/9kBeDdiAvbwvRPHmdVNp2HyySrrdw+Z5lD/8koZ5rHG40//
 aJsyYc5Jpf0H8aQBZB93UDLLeTkPO+wm5CiHRbQVto7kIobqJdYKetOOu
 +EdG4AThS5Lh9PUEtFMa37By4Xjb/wnI7x8p9ROT+D9//cnGfkBIExvV5
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nnE5VN+e
Subject: [Intel-wired-lan] [PATCH iwl-next v9 05/15] ice: init boost tcam
 and label tables for parser
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

Parse DDP section ICE_SID_RXPARSER_CAM into an array of
ice_bst_tcam_item.
Parse DDP section ICE_SID_LBL_RXPARSER_TMEM into an array of
ice_lbl_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 313 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  33 ++
 drivers/net/ethernet/intel/ice/ice_imem.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_metainit.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_parser.c   |  43 ++-
 drivers/net/ethernet/intel/ice/ice_parser.h   |   9 +
 .../net/ethernet/intel/ice/ice_parser_util.h  |  14 +-
 drivers/net/ethernet/intel/ice/ice_pg_cam.c   |   8 +-
 9 files changed, 416 insertions(+), 9 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index dfb684cbc7f1..d660c1fe856c 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -30,6 +30,7 @@ ice-y := ice_main.o	\
 	 ice_imem.o      \
 	 ice_pg_cam.o    \
 	 ice_metainit.o  \
+	 ice_bst_tcam.o  \
 	 ice_idc.o	\
 	 ice_devlink.o	\
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
new file mode 100644
index 000000000000..af6fb48f3fa0
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
@@ -0,0 +1,313 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+static void _ice_bst_np_kb_dump(struct ice_hw *hw,
+				struct ice_np_keybuilder *kb)
+{
+	dev_info(ice_hw_to_dev(hw), "next proto key builder:\n");
+	dev_info(ice_hw_to_dev(hw), "\topc = %d\n", kb->opc);
+	dev_info(ice_hw_to_dev(hw), "\tstart_reg0 = %d\n", kb->start_reg0);
+	dev_info(ice_hw_to_dev(hw), "\tlen_reg1 = %d\n", kb->len_reg1);
+}
+
+static void _ice_bst_pg_kb_dump(struct ice_hw *hw,
+				struct ice_pg_keybuilder *kb)
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
+static void _ice_bst_alu_dump(struct ice_hw *hw, struct ice_alu *alu, int idx)
+{
+	dev_info(ice_hw_to_dev(hw), "alu%d:\n", idx);
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
+ * ice_bst_tcam_dump - dump a boost tcam info
+ * @hw: pointer to the hardware structure
+ * @item: boost tcam to dump
+ */
+void ice_bst_tcam_dump(struct ice_hw *hw, struct ice_bst_tcam_item *item)
+{
+	int i;
+
+	dev_info(ice_hw_to_dev(hw), "addr = %d\n", item->addr);
+	dev_info(ice_hw_to_dev(hw), "key    : ");
+	for (i = 0; i < ICE_BST_TCAM_KEY_SIZE; i++)
+		dev_info(ice_hw_to_dev(hw), "%02x ", item->key[i]);
+	dev_info(ice_hw_to_dev(hw), "\n");
+	dev_info(ice_hw_to_dev(hw), "key_inv: ");
+	for (i = 0; i < ICE_BST_TCAM_KEY_SIZE; i++)
+		dev_info(ice_hw_to_dev(hw), "%02x ", item->key_inv[i]);
+	dev_info(ice_hw_to_dev(hw), "\n");
+	dev_info(ice_hw_to_dev(hw), "hit_idx_grp = %d\n", item->hit_idx_grp);
+	dev_info(ice_hw_to_dev(hw), "pg_pri = %d\n", item->pg_pri);
+
+	_ice_bst_np_kb_dump(hw, &item->np_kb);
+	_ice_bst_pg_kb_dump(hw, &item->pg_kb);
+
+	_ice_bst_alu_dump(hw, &item->alu0, ICE_ALU0_IDX);
+	_ice_bst_alu_dump(hw, &item->alu1, ICE_ALU1_IDX);
+	_ice_bst_alu_dump(hw, &item->alu2, ICE_ALU2_IDX);
+}
+
+#define ICE_BST_ALU_OPC		GENMASK_ULL(5, 0)
+#define ICE_BST_ALU_SS		GENMASK_ULL(13, 6)
+#define ICE_BST_ALU_SL		GENMASK_ULL(18, 14)
+#define ICE_BST_ALU_SXS		BIT_ULL(19)
+#define ICE_BST_ALU_SXK		GENMASK_ULL(23, 20)
+#define ICE_BST_ALU_SRID	GENMASK_ULL(30, 24)
+#define ICE_BST_ALU_DRID	GENMASK_ULL(37, 31)
+#define ICE_BST_ALU_INC0	BIT_ULL(38)
+#define ICE_BST_ALU_INC1	BIT_ULL(39)
+#define ICE_BST_ALU_POO		GENMASK_ULL(41, 40)
+#define ICE_BST_ALU_PO		GENMASK_ULL(49, 42)
+#define ICE_BST_ALU_BA_S	50	/* offset for the 2nd 64-bits field */
+#define ICE_BST_ALU_BA		GENMASK_ULL(57 - ICE_BST_ALU_BA_S, 50 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_IMM		GENMASK_ULL(73 - ICE_BST_ALU_BA_S, 58 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_DFE		BIT_ULL(74 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_DS		GENMASK_ULL(80 - ICE_BST_ALU_BA_S, 75 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_DL		GENMASK_ULL(86 - ICE_BST_ALU_BA_S, 81 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_FEI		BIT_ULL(87 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_FSI		GENMASK_ULL(95 - ICE_BST_ALU_BA_S, 88 - ICE_BST_ALU_BA_S)
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
+ *  BIT 40:41	Protocol Offset Opcode	(alu->proto_offset_opc)
+ *  BIT 42:49	Protocol Offset		(alu->proto_offset)
+ *  BIT 50:57	Branch Address		(alu->branch_addr)
+ *  BIT 58:73	Immediate		(alu->imm)
+ *  BIT 74	Dedicated Flags Enable	(alu->dedicate_flags_ena)
+ *  BIT 75:80	Dest. Start		(alu->dst_start)
+ *  BIT 81:86	Dest. Length		(alu->dst_len)
+ *  BIT 87	Flags Extract Imm.	(alu->flags_extr_imm)
+ *  BIT 88:95	Flags Start/Immediate	(alu->flags_start_imm)
+ *
+ */
+static void _ice_bst_alu_init(struct ice_alu *alu, u8 *data, u8 off)
+{
+	u64 d64;
+	u8 idd;
+
+	d64 = *((u64 *)data) >> off;
+
+	alu->opc		= FIELD_GET(ICE_BST_ALU_OPC, d64);
+	alu->src_start		= FIELD_GET(ICE_BST_ALU_SS, d64);
+	alu->src_len		= FIELD_GET(ICE_BST_ALU_SL, d64);
+	alu->shift_xlate_sel	= FIELD_GET(ICE_BST_ALU_SXS, d64);
+	alu->shift_xlate_key	= FIELD_GET(ICE_BST_ALU_SXK, d64);
+	alu->src_reg_id		= FIELD_GET(ICE_BST_ALU_SRID, d64);
+	alu->dst_reg_id		= FIELD_GET(ICE_BST_ALU_DRID, d64);
+	alu->inc0		= FIELD_GET(ICE_BST_ALU_INC0, d64);
+	alu->inc1		= FIELD_GET(ICE_BST_ALU_INC1, d64);
+	alu->proto_offset_opc	= FIELD_GET(ICE_BST_ALU_POO, d64);
+	alu->proto_offset	= FIELD_GET(ICE_BST_ALU_PO, d64);
+
+	idd = (ICE_BST_ALU_BA_S + off) / BITS_PER_BYTE;
+	off = (ICE_BST_ALU_BA_S + off) % BITS_PER_BYTE;
+	d64 = *((u64 *)(&data[idd])) >> off;
+
+	alu->branch_addr	= FIELD_GET(ICE_BST_ALU_BA, d64);
+	alu->imm		= FIELD_GET(ICE_BST_ALU_IMM, d64);
+	alu->dedicate_flags_ena	= FIELD_GET(ICE_BST_ALU_DFE, d64);
+	alu->dst_start		= FIELD_GET(ICE_BST_ALU_DS, d64);
+	alu->dst_len		= FIELD_GET(ICE_BST_ALU_DL, d64);
+	alu->flags_extr_imm	= FIELD_GET(ICE_BST_ALU_FEI, d64);
+	alu->flags_start_imm	= FIELD_GET(ICE_BST_ALU_FSI, d64);
+}
+
+#define ICE_BST_PGKB_F0_ENA		BIT_ULL(0)
+#define ICE_BST_PGKB_F0_IDX		GENMASK_ULL(6, 1)
+#define ICE_BST_PGKB_F1_ENA		BIT_ULL(7)
+#define ICE_BST_PGKB_F1_IDX		GENMASK_ULL(13, 8)
+#define ICE_BST_PGKB_F2_ENA		BIT_ULL(14)
+#define ICE_BST_PGKB_F2_IDX		GENMASK_ULL(20, 15)
+#define ICE_BST_PGKB_F3_ENA		BIT_ULL(21)
+#define ICE_BST_PGKB_F3_IDX		GENMASK_ULL(27, 22)
+#define ICE_BST_PGKB_AR_IDX		GENMASK_ULL(34, 28)
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
+static void _ice_bst_pgkb_init(struct ice_pg_keybuilder *kb, u64 data)
+{
+	kb->flag0_ena	= FIELD_GET(ICE_BST_PGKB_F0_ENA, data);
+	kb->flag0_idx	= FIELD_GET(ICE_BST_PGKB_F0_IDX, data);
+	kb->flag1_ena	= FIELD_GET(ICE_BST_PGKB_F1_ENA, data);
+	kb->flag1_idx	= FIELD_GET(ICE_BST_PGKB_F1_IDX, data);
+	kb->flag2_ena	= FIELD_GET(ICE_BST_PGKB_F2_ENA, data);
+	kb->flag2_idx	= FIELD_GET(ICE_BST_PGKB_F2_IDX, data);
+	kb->flag3_ena	= FIELD_GET(ICE_BST_PGKB_F3_ENA, data);
+	kb->flag3_idx	= FIELD_GET(ICE_BST_PGKB_F3_IDX, data);
+	kb->alu_reg_idx	= FIELD_GET(ICE_BST_PGKB_AR_IDX, data);
+}
+
+#define ICE_BST_NPKB_OPC	GENMASK(1, 0)
+#define ICE_BST_NPKB_S_R0	GENMASK(9, 2)
+#define ICE_BST_NPKB_L_R1	GENMASK(17, 10)
+
+/** The function parses a 18 bits Next Protocol Key Build with below format:
+ *  BIT 0-1:	Opcode		(kb->ops)
+ *  BIT 2-9:	Start / Reg 0	(kb->start_or_reg0)
+ *  BIT 10-17:	Length / Reg 1	(kb->len_or_reg1)
+ */
+static void _ice_bst_npkb_init(struct ice_np_keybuilder *kb, u32 data)
+{
+	kb->opc		= FIELD_GET(ICE_BST_NPKB_OPC, data);
+	kb->start_reg0	= FIELD_GET(ICE_BST_NPKB_S_R0, data);
+	kb->len_reg1	= FIELD_GET(ICE_BST_NPKB_L_R1, data);
+}
+
+#define ICE_BT_ADDR_S		0
+#define ICE_BT_KEY_S		32
+#define ICE_BT_KIV_S		192
+#define ICE_BT_HIG_S		352
+#define ICE_BT_PGP_S		360
+#define ICE_BT_PGP_M		GENMASK(361 - ICE_BT_PGP_S, 360 - ICE_BT_PGP_S)
+#define ICE_BT_NPKB_S		362
+#define ICE_BT_PGKB_S		380
+#define ICE_BT_ALU0_S		415
+#define ICE_BT_ALU1_S		511
+#define ICE_BT_ALU2_S		607
+
+/** The function parses a 704 bits Boost TCAM entry with below format:
+ *  BIT 0-15:	Address			(ti->address)
+ *  BIT 16-31:	reserved
+ *  BIT 32-191: Key			(ti->key)
+ *  BIT 192-351:Key Invert		(ti->key_inv)
+ *  BIT 352-359:Boost Hit Index Group	(ti->hit_idx_grp)
+ *  BIT 360-361:PG Priority		(ti->pg_pri)
+ *  BIT 362-379:Next Proto Key Build	(ti->np_kb)
+ *  BIT 380-414:PG Key Build		(ti->pg_kb)
+ *  BIT 415-510:ALU 0			(ti->alu0)
+ *  BIT 511-606:ALU 1			(ti->alu1)
+ *  BIT 607-702:ALU 2			(ti->alu2)
+ *  BIT 703:	reserved
+ */
+static void _ice_bst_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				void *data, int size)
+{
+	struct ice_bst_tcam_item *ti = item;
+	u8 *buf = (u8 *)data;
+	u8 idd, off;
+	int i;
+
+	ti->addr = *(u16 *)buf;
+
+	for (i = 0; i < ICE_BST_TCAM_KEY_SIZE; i++) {
+		ti->key[i]	= buf[(ICE_BT_KEY_S / BITS_PER_BYTE) + i];
+		ti->key_inv[i]	= buf[(ICE_BT_KIV_S / BITS_PER_BYTE) + i];
+	}
+	ti->hit_idx_grp	= buf[ICE_BT_HIG_S / BITS_PER_BYTE];
+	ti->pg_pri	= buf[ICE_BT_PGP_S / BITS_PER_BYTE] & ICE_BT_PGP_M;
+
+	idd = ICE_BT_NPKB_S / BITS_PER_BYTE;
+	off = ICE_BT_NPKB_S % BITS_PER_BYTE;
+	_ice_bst_npkb_init(&ti->np_kb, *((u32 *)(&buf[idd])) >> off);
+
+	idd = ICE_BT_PGKB_S / BITS_PER_BYTE;
+	off = ICE_BT_PGKB_S % BITS_PER_BYTE;
+	_ice_bst_pgkb_init(&ti->pg_kb, *((u64 *)(&buf[idd])) >> off);
+
+	idd = ICE_BT_ALU0_S / BITS_PER_BYTE;
+	off = ICE_BT_ALU0_S % BITS_PER_BYTE;
+	_ice_bst_alu_init(&ti->alu0, &buf[idd], off);
+
+	idd = ICE_BT_ALU1_S / BITS_PER_BYTE;
+	off = ICE_BT_ALU1_S % BITS_PER_BYTE;
+	_ice_bst_alu_init(&ti->alu1, &buf[idd], off);
+
+	idd = ICE_BT_ALU2_S / BITS_PER_BYTE;
+	off = ICE_BT_ALU2_S % BITS_PER_BYTE;
+	_ice_bst_alu_init(&ti->alu2, &buf[idd], off);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_bst_tcam_dump(hw, ti);
+}
+
+/**
+ * ice_bst_tcam_table_get - create a boost tcam table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw)
+{
+	return (struct ice_bst_tcam_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_BOOST_TCAM,
+					sizeof(struct ice_bst_tcam_item),
+					ICE_BST_TCAM_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_ice_bst_parse_item, true);
+}
+
+static void _ice_parse_lbl_item(struct ice_hw *hw, u16 idx, void *item,
+				void *data, int size)
+{
+	ice_parse_item_dflt(hw, idx, item, data, size);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_lbl_dump(hw, (struct ice_lbl_item *)item);
+}
+
+/**
+ * ice_bst_lbl_table_get - create a boost label table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw)
+{
+	return (struct ice_lbl_item *)
+		ice_parser_create_table(hw, ICE_SID_LBL_RXPARSER_TMEM,
+					sizeof(struct ice_lbl_item),
+					ICE_BST_TCAM_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_ice_parse_lbl_item, true);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
new file mode 100644
index 000000000000..e824d10d5fa7
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_BST_TCAM_H_
+#define _ICE_BST_TCAM_H_
+
+#include "ice_imem.h"
+
+#define ICE_BST_TCAM_TABLE_SIZE	256
+#define ICE_BST_TCAM_KEY_SIZE	20
+
+#define ICE_BST_KEY_TSR_SIZE	1
+#define ICE_BST_KEY_TCAM_SIZE	19
+
+struct ice_bst_tcam_item {
+	u16 addr;
+	u8 key[ICE_BST_TCAM_KEY_SIZE];
+	u8 key_inv[ICE_BST_TCAM_KEY_SIZE];
+	u8 hit_idx_grp;
+	u8 pg_pri;
+	struct ice_np_keybuilder np_kb;
+	struct ice_pg_keybuilder pg_kb;
+	struct ice_alu alu0;
+	struct ice_alu alu1;
+	struct ice_alu alu2;
+};
+
+void ice_bst_tcam_dump(struct ice_hw *hw, struct ice_bst_tcam_item *item);
+
+struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw);
+
+struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw);
+#endif /*_ICE_BST_TCAM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_imem.c b/drivers/net/ethernet/intel/ice/ice_imem.c
index 005e04947626..cfdd7d35fc85 100644
--- a/drivers/net/ethernet/intel/ice/ice_imem.c
+++ b/drivers/net/ethernet/intel/ice/ice_imem.c
@@ -320,5 +320,5 @@ struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
 					sizeof(struct ice_imem_item),
 					ICE_IMEM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_imem_parse_item);
+					_ice_imem_parse_item, false);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c b/drivers/net/ethernet/intel/ice/ice_metainit.c
index 99cdd6e63a78..922b9848e2d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_metainit.c
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
@@ -189,5 +189,5 @@ struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
 					sizeof(struct ice_metainit_item),
 					ICE_METAINIT_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_metainit_parse_item);
+					_ice_metainit_parse_item, false);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index b654135419fb..e5f0ae7be612 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -4,6 +4,18 @@
 #include "ice_common.h"
 #include "ice_parser_util.h"
 
+void ice_lbl_dump(struct ice_hw *hw, struct ice_lbl_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	dev_info(ice_hw_to_dev(hw), "label = %s\n", item->label);
+}
+
+void ice_parse_item_dflt(struct ice_hw *hw, u16 idx, void *item,
+			 void *data, int size)
+{
+	memcpy(item, data, size);
+}
+
 /**
  * ice_parser_sect_item_get - parse a item from a section
  * @sect_type: section type
@@ -40,6 +52,13 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 	case ICE_SID_RXPARSER_NOMATCH_SPILL:
 		size = ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_BOOST_TCAM:
+		size = ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE;
+		break;
+	case ICE_SID_LBL_RXPARSER_TMEM:
+		data_off = ICE_SEC_LBL_DATA_OFFSET;
+		size = ICE_SID_LBL_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -59,6 +78,7 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
  * @length: number of items in the table to create
  * @item_get: the function will be parsed to ice_pkg_enum_entry
  * @parse_item: the function to parse the item
+ * @no_offset: ignore header offset, calculate index from 0
  */
 void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
 			      u32 item_size, u32 length,
@@ -66,7 +86,8 @@ void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
 						u32 index, u32 *offset),
 			      void (*parse_item)(struct ice_hw *hw, u16 idx,
 						 void *item, void *data,
-						 int size))
+						 int size),
+			      bool no_offset)
 {
 	struct ice_seg *seg = hw->seg;
 	struct ice_pkg_enum state;
@@ -91,7 +112,11 @@ void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
 			struct ice_pkg_sect_hdr *hdr =
 				(struct ice_pkg_sect_hdr *)state.sect;
 
-			idx = le16_to_cpu(hdr->offset) + state.entry_idx;
+			if (no_offset)
+				idx++;
+			else
+				idx = le16_to_cpu(hdr->offset) +
+							state.entry_idx;
 			parse_item(hw, idx,
 				   (void *)((uintptr_t)table +
 					    ((uintptr_t)idx *
@@ -156,6 +181,18 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 		goto err;
 	}
 
+	p->bst_tcam_table = ice_bst_tcam_table_get(hw);
+	if (!p->bst_tcam_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
+	p->bst_lbl_table = ice_bst_lbl_table_get(hw);
+	if (!p->bst_lbl_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
 	*psr = p;
 	return 0;
 err:
@@ -175,6 +212,8 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_sp_cam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_cam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_sp_cam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index c709c56bf2e6..14d17c7c8479 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -7,6 +7,7 @@
 #include "ice_metainit.h"
 #include "ice_imem.h"
 #include "ice_pg_cam.h"
+#include "ice_bst_tcam.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
@@ -15,6 +16,10 @@
 #define ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE		17
 #define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE		12
 #define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
+#define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE		88
+
+#define ICE_SEC_LBL_DATA_OFFSET				2
+#define ICE_SID_LBL_ENTRY_SIZE				66
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
@@ -31,6 +36,10 @@ struct ice_parser {
 	struct ice_pg_nm_cam_item *pg_nm_cam_table;
 	/* load data from section ICE_SID_RXPARSER_NOMATCH_SPILL */
 	struct ice_pg_nm_cam_item *pg_nm_sp_cam_table;
+	/* load data from section ICE_SID_RXPARSER_BOOST_TCAM */
+	struct ice_bst_tcam_item *bst_tcam_table;
+	/* load data from section ICE_SID_LBL_RXPARSER_TMEM */
+	struct ice_lbl_item *bst_lbl_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h b/drivers/net/ethernet/intel/ice/ice_parser_util.h
index 42a91bd51a51..defa7ac1f5d9 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_util.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
@@ -7,11 +7,22 @@
 #include "ice_imem.h"
 #include "ice_metainit.h"
 
+#define ICE_LBL_LEN	64
+
+struct ice_lbl_item {
+	u16 idx;
+	char label[ICE_LBL_LEN];
+};
+
 struct ice_pkg_sect_hdr {
 	__le16 count;
 	__le16 offset;
 };
 
+void ice_lbl_dump(struct ice_hw *hw, struct ice_lbl_item *item);
+void ice_parse_item_dflt(struct ice_hw *hw, u16 idx, void *item,
+			 void *data, int size);
+
 void *ice_parser_sect_item_get(u32 sect_type, void *section,
 			       u32 index, u32 *offset);
 
@@ -21,5 +32,6 @@ void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
 					       u32 index, u32 *offset),
 			      void (*parse_item)(struct ice_hw *hw, u16 idx,
 						 void *item, void *data,
-						 int size));
+						 int size),
+			      bool no_offset);
 #endif /* _ICE_PARSER_UTIL_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.c b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
index 8e4d03b9032a..5e0965286c02 100644
--- a/drivers/net/ethernet/intel/ice/ice_pg_cam.c
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
@@ -322,7 +322,7 @@ struct ice_pg_cam_item *ice_pg_cam_table_get(struct ice_hw *hw)
 					sizeof(struct ice_pg_cam_item),
 					ICE_PG_CAM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_pg_cam_parse_item);
+					_ice_pg_cam_parse_item, false);
 }
 
 /**
@@ -336,7 +336,7 @@ struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw *hw)
 					sizeof(struct ice_pg_cam_item),
 					ICE_PG_SP_CAM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_pg_sp_cam_parse_item);
+					_ice_pg_sp_cam_parse_item, false);
 }
 
 /**
@@ -350,7 +350,7 @@ struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct ice_hw *hw)
 					sizeof(struct ice_pg_nm_cam_item),
 					ICE_PG_NM_CAM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_pg_nm_cam_parse_item);
+					_ice_pg_nm_cam_parse_item, false);
 }
 
 /**
@@ -364,5 +364,5 @@ struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
 					sizeof(struct ice_pg_nm_cam_item),
 					ICE_PG_NM_SP_CAM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_pg_nm_sp_cam_parse_item);
+					_ice_pg_nm_sp_cam_parse_item, false);
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
