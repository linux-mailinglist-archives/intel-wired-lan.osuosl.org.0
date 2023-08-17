Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D1D77F386
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 11:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB4B783CC5;
	Thu, 17 Aug 2023 09:35:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB4B783CC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692264950;
	bh=uT66TpvHVpm7qUCnoKyL+942zbeQY9AWbyKhQa/SJYA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y7munTMKH7MvUDAAOb6DQFyAUVS0+y1jO1Jk3kANhrUxzGczbAos6lP2M/VF5uZgz
	 MckS7AKGjslg4yrHeT9PXxnGanw8s2xVvz3OmCHyqTDxIC6ne5X9+R2fwR+s0QnfEb
	 XGwA2pUkdgqOsHkvPb3nwsa0Zm9PglO6ND4SmhhSS9LCgq51EQjPE8Xy8HQta/m8BC
	 gLEuh1ZpA7HSXrMeu7tdY7hdYQ/Bglau9qhMOrhdA3c8NR1+Q89J/Cuo2zwUuMMy3y
	 PGXjKWqG6x1UrKdWrXlMZ5ZWUdW+RtneF5jaG2oFMLJhrBmZdn12tST4aoWbXtchx7
	 Z2ZRKpHJWjxLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBv4gl4x41_N; Thu, 17 Aug 2023 09:35:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DB1B812E6;
	Thu, 17 Aug 2023 09:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DB1B812E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 777EF1BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 508D64181D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 508D64181D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TtHMGRuyOFDO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 09:35:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B623441815
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B623441815
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="459120158"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="459120158"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 02:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769556956"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="769556956"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2023 02:35:26 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 17:34:32 +0800
Message-Id: <20230817093442.2576997-6-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817093442.2576997-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230817093442.2576997-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692264929; x=1723800929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sgWJX+Y2T6k8HqJfL0WKmKf4d60QWCg/NXFuVqBeNSo=;
 b=MeVwWOOS2ZR24cCdZzZEa6NkhM5GZa6noX51mPSl0eoPgvGKo7UoY7jD
 x4QX5MtmoL+OZNEOBjhXOk+80Ytch7X6aM6MWivkyboz7ZH99AgmjuPUB
 biejNprtId2b27NEXVlp01KSJUowdGmWuaA8jC5yfK54hFQCXyPPNBHyf
 V8hV7tQW6bVyKn+sIRujptahCPzE+fdKav8V6leWxYIiH90gCKer7kEEv
 sDTyoUCfM0INGZ+lBbs3y6ttyPbBeIF8Gw+w2k+4XmAVrPjsx2q9gShCS
 IJ+5nV+h4gB6jHCOC7Bub3aIs6W5TiQufT6EBCLEWVhG/+wF4YvUsmICw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MeVwWOOS
Subject: [Intel-wired-lan] [PATCH net-next v3 05/15] ice: init boost tcam
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
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
 drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 273 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  45 +++
 drivers/net/ethernet/intel/ice/ice_imem.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_metainit.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_parser.c   |  43 ++-
 drivers/net/ethernet/intel/ice/ice_parser.h   |   9 +
 .../net/ethernet/intel/ice/ice_parser_util.h  |  14 +-
 drivers/net/ethernet/intel/ice/ice_pg_cam.c   |   8 +-
 8 files changed, 387 insertions(+), 9 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.h

diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
new file mode 100644
index 000000000000..4314f690accc
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
@@ -0,0 +1,273 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
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
+	alu->opc		= (enum ice_alu_opcode)(d64 & ICE_ALU_OPC_M);
+	alu->src_start		= (u8)((d64 >> ICE_ALU_SS_S) & ICE_ALU_SS_M);
+	alu->src_len		= (u8)((d64 >> ICE_ALU_SL_S) & ICE_ALU_SL_M);
+	alu->shift_xlate_sel	= !!((d64 >> ICE_ALU_SXS_S) & ICE_ALU_SXS_M);
+	alu->shift_xlate_key	= (u8)((d64 >> ICE_ALU_SXK_S) & ICE_ALU_SXK_M);
+	alu->src_reg_id		= (u8)((d64 >> ICE_ALU_SRI_S) & ICE_ALU_SRI_M);
+	alu->dst_reg_id		= (u8)((d64 >> ICE_ALU_DRI_S) & ICE_ALU_DRI_M);
+	alu->inc0		= !!((d64 >> ICE_ALU_INC0_S) & ICE_ALU_INC0_M);
+	alu->inc1		= !!((d64 >> ICE_ALU_INC1_S) & ICE_ALU_INC1_M);
+	alu->proto_offset_opc	= (u8)((d64 >> ICE_ALU_POO_S) & ICE_ALU_POO_M);
+	alu->proto_offset	= (u8)((d64 >> ICE_ALU_PO_S) & ICE_ALU_PO_M);
+
+	idd = (ICE_ALU_BA_S + off) / BITS_PER_BYTE;
+	off = (ICE_ALU_BA_S + off) % BITS_PER_BYTE;
+	d64 = *((u64 *)(&data[idd])) >> off;
+
+	alu->branch_addr	= (u8)(d64 & ICE_ALU_BA_M);
+	off			= ICE_ALU_IMM_S - ICE_ALU_BA_S;
+	alu->imm		= (u16)((d64 >> off) & ICE_ALU_IMM_M);
+	off			= ICE_ALU_DFE_S - ICE_ALU_BA_S;
+	alu->dedicate_flags_ena	= !!((d64 >> off) & ICE_ALU_DFE_M);
+	off			= ICE_ALU_DS_S - ICE_ALU_BA_S;
+	alu->dst_start		= (u8)((d64 >> off) & ICE_ALU_DS_M);
+	off			= ICE_ALU_DL_S - ICE_ALU_BA_S;
+	alu->dst_len		= (u8)((d64 >> off) & ICE_ALU_DL_M);
+	off			= ICE_ALU_FEI_S - ICE_ALU_BA_S;
+	alu->flags_extr_imm	= !!((d64 >> off) & ICE_ALU_FEI_M);
+	off			= ICE_ALU_FSI_S - ICE_ALU_BA_S;
+	alu->flags_start_imm	= (u8)((d64 >> off) & ICE_ALU_FSI_M);
+}
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
+	kb->flag0_ena	= !!(data & ICE_PGKB_F0E_M);
+	kb->flag0_idx	= (u8)((data >> ICE_PGKB_F0I_S) & ICE_PGKB_F0I_M);
+	kb->flag1_ena	= !!((data >> ICE_PGKB_F1E_S) & ICE_PGKB_F1E_M);
+	kb->flag1_idx	= (u8)((data >> ICE_PGKB_F1I_S) & ICE_PGKB_F1I_M);
+	kb->flag2_ena	= !!((data >> ICE_PGKB_F2E_S) & ICE_PGKB_F2E_M);
+	kb->flag2_idx	= (u8)((data >> ICE_PGKB_F2I_S) & ICE_PGKB_F2I_M);
+	kb->flag3_ena	= !!((data >> ICE_PGKB_F3E_S) & ICE_PGKB_F3E_M);
+	kb->flag3_idx	= (u8)((data >> ICE_PGKB_F3I_S) & ICE_PGKB_F3I_M);
+	kb->alu_reg_idx	= (u8)((data >> ICE_PGKB_ARI_S) & ICE_PGKB_ARI_M);
+}
+
+/** The function parses a 18 bits Next Protocol Key Build with below format:
+ *  BIT 0-1:	Opcode		(kb->ops)
+ *  BIT 2-9:	Start / Reg 0	(kb->start_or_reg0)
+ *  BIT 10-17:	Length / Reg 1	(kb->len_or_reg1)
+ */
+static void _ice_bst_npkb_init(struct ice_np_keybuilder *kb, u32 data)
+{
+	kb->opc		= (u8)(data & ICE_NPKB_OPC_M);
+	kb->start_reg0	= (u8)((data >> ICE_NPKB_SR0_S) & ICE_NPKB_SR0_M);
+	kb->len_reg1	= (u8)((data >> ICE_NPKB_LR1_S) & ICE_NPKB_LR1_M);
+}
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
index 000000000000..1b6392c254bf
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
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
+#define ICE_BT_ADDR_S		0
+#define ICE_BT_KEY_S		32
+#define ICE_BT_KIV_S		192
+#define ICE_BT_HIG_S		352
+#define ICE_BT_PGP_S		360
+#define ICE_BT_PGP_M		BITMAP_MASK(2)
+#define ICE_BT_NPKB_S		362
+#define ICE_BT_PGKB_S		380
+#define ICE_BT_ALU0_S		415
+#define ICE_BT_ALU1_S		511
+#define ICE_BT_ALU2_S		607
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
index a47748d1b1bf..45c560fd6a61 100644
--- a/drivers/net/ethernet/intel/ice/ice_imem.c
+++ b/drivers/net/ethernet/intel/ice/ice_imem.c
@@ -275,5 +275,5 @@ struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
 					sizeof(struct ice_imem_item),
 					ICE_IMEM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_imem_parse_item);
+					_ice_imem_parse_item, false);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c b/drivers/net/ethernet/intel/ice/ice_metainit.c
index 037cb21beddb..256e65b96ab1 100644
--- a/drivers/net/ethernet/intel/ice/ice_metainit.c
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
@@ -177,5 +177,5 @@ struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
 					sizeof(struct ice_metainit_item),
 					ICE_METAINIT_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_metainit_parse_item);
+					_ice_metainit_parse_item, false);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index ffe58ceb91c7..99aa96e535fc 100644
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
@@ -157,6 +182,18 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -176,6 +213,8 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_sp_cam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_cam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_sp_cam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index a632ed41e64b..af41791dbe2c 100644
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
index 59c67f1a1951..4a0d2efa5a85 100644
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
index 6ed8dc747792..aceb28dae3dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_pg_cam.c
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
@@ -275,7 +275,7 @@ struct ice_pg_cam_item *ice_pg_cam_table_get(struct ice_hw *hw)
 					sizeof(struct ice_pg_cam_item),
 					ICE_PG_CAM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_pg_cam_parse_item);
+					_ice_pg_cam_parse_item, false);
 }
 
 /**
@@ -289,7 +289,7 @@ struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw *hw)
 					sizeof(struct ice_pg_cam_item),
 					ICE_PG_SP_CAM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_pg_sp_cam_parse_item);
+					_ice_pg_sp_cam_parse_item, false);
 }
 
 /**
@@ -303,7 +303,7 @@ struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct ice_hw *hw)
 					sizeof(struct ice_pg_nm_cam_item),
 					ICE_PG_NM_CAM_TABLE_SIZE,
 					ice_parser_sect_item_get,
-					_ice_pg_nm_cam_parse_item);
+					_ice_pg_nm_cam_parse_item, false);
 }
 
 /**
@@ -317,5 +317,5 @@ struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
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
