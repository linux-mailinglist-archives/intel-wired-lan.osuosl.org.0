Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD31721BFB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:29:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 885A460BEF;
	Mon,  5 Jun 2023 02:29:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 885A460BEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685932194;
	bh=5HW9fjMBg9V/HQ+IG2GpbfEiro6IN/PrPXFiuypv7aI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KUK4dq08uRtJuyJUMLLjO4BMP3r0qfznKV775ezm7R9zLhHoPfHUnyWUL0dXbDacF
	 fdm6q5SU/mlwYIGVwwSMH0BX6m2KDWGDUMrBWF5kTdeqHD4fmvnw9DKXV3wXlFOktZ
	 t7d7yVDgN+7Sgtot5RuZBVA6cncIpF+hxH2klJgImwOwMpB/vZhyDQd2bSOqrLepr0
	 78cVf2ixRHF/v+87Gdrb2nQzYu7VNo2HPx1sTxuurooMRFXOYb85ZrO81501k08v5p
	 dt5ns/eycbmiI07z8z5JkXLz8YNKVacxSAWkkwPbNF9sN7pPhTxnjE27Hgf63ie8ol
	 cXgvc77Qgc7DA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OA49_cB5Bn3R; Mon,  5 Jun 2023 02:29:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E0F360BCC;
	Mon,  5 Jun 2023 02:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E0F360BCC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 383261BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E0E760BC3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E0E760BC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3up38l77P4Sa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:29:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 263CE60BB9
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 263CE60BB9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358710407"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358710407"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:29:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="1038604696"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="1038604696"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jun 2023 19:29:33 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:29:07 +0800
Message-Id: <20230605022920.2361266-3-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605022920.2361266-1-junfeng.guo@intel.com>
References: <20230605022920.2361266-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685932175; x=1717468175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HOzMgkehMwFfv5EY9RzJLVeD93catf4Mjtll7dnOUZI=;
 b=VnFk/2QpA857Bq59uvkkuxgVWwFyVmrqam7FuEV6lmyu311F5OsZee8b
 imffDd9+ZAkgn1cVzohnFWApqw4Wc030S3bXaatRmdECdVEVob92GipBX
 v9F9uSOrSfyB0QOPuLFe7uY1VUmwu2gmES0+8q5Xc/YEpJj9hf14bagSz
 mXNVhDWuvS8g0KBRcZf3ud9AAF6jRBL/G2ibeitMiotq/nGXzpBrYxQYV
 CkAYUVIgTXa6eBPzyAeUMzYxtXtaMajdK9ABlNIPbGaD9k1nAsLsuSZ63
 VPPU3SAGS+AfBGVXo0G1osaNzdURCETpUEjzXP4xXZdTjPxvw7ShlLRKd
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VnFk/2Qp
Subject: [Intel-wired-lan] [PATCH iwl-next 02/15] ice: init imem table for
 parser
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

Parse DDP section ICE_SID_RXPARSER_IMEM into an arrary of
struct ice_imem_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_imem.c     | 250 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_imem.h     | 108 ++++++++
 drivers/net/ethernet/intel/ice/ice_parser.c   |  98 +++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |   3 +
 .../net/ethernet/intel/ice/ice_parser_util.h  |  24 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 6 files changed, 484 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_util.h

diff --git a/drivers/net/ethernet/intel/ice/ice_imem.c b/drivers/net/ethernet/intel/ice/ice_imem.c
new file mode 100644
index 000000000000..2bd48f080326
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_imem.c
@@ -0,0 +1,250 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+#define ICE_IMEM_TABLE_SIZE 192
+
+static void _imem_bst_bm_dump(struct ice_hw *hw, struct ice_bst_main *bm)
+{
+	dev_info(ice_hw_to_dev(hw), "boost main:\n");
+	dev_info(ice_hw_to_dev(hw), "\tal0 = %d\n", bm->al0);
+	dev_info(ice_hw_to_dev(hw), "\tal1 = %d\n", bm->al1);
+	dev_info(ice_hw_to_dev(hw), "\tal2 = %d\n", bm->al2);
+	dev_info(ice_hw_to_dev(hw), "\tpg = %d\n", bm->pg);
+}
+
+static void _imem_bst_kb_dump(struct ice_hw *hw, struct ice_bst_keybuilder *kb)
+{
+	dev_info(ice_hw_to_dev(hw), "boost key builder:\n");
+	dev_info(ice_hw_to_dev(hw), "\tpriority = %d\n", kb->priority);
+	dev_info(ice_hw_to_dev(hw), "\ttsr_ctrl = %d\n", kb->tsr_ctrl);
+}
+
+static void _imem_np_kb_dump(struct ice_hw *hw, struct ice_np_keybuilder *kb)
+{
+	dev_info(ice_hw_to_dev(hw), "next proto key builder:\n");
+	dev_info(ice_hw_to_dev(hw), "\tops = %d\n", kb->ops);
+	dev_info(ice_hw_to_dev(hw), "\tstart_or_reg0 = %d\n",
+		 kb->start_or_reg0);
+	dev_info(ice_hw_to_dev(hw), "\tlen_or_reg1 = %d\n", kb->len_or_reg1);
+}
+
+static void _imem_pg_kb_dump(struct ice_hw *hw, struct ice_pg_keybuilder *kb)
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
+static void _imem_alu_dump(struct ice_hw *hw, struct ice_alu *alu, int index)
+{
+	dev_info(ice_hw_to_dev(hw), "alu%d:\n", index);
+	dev_info(ice_hw_to_dev(hw), "\topc = %d\n", alu->opc);
+	dev_info(ice_hw_to_dev(hw), "\tsrc_start = %d\n", alu->src_start);
+	dev_info(ice_hw_to_dev(hw), "\tsrc_len = %d\n", alu->src_len);
+	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_select = %d\n",
+		 alu->shift_xlate_select);
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
+	_imem_bst_bm_dump(hw, &item->b_m);
+	_imem_bst_kb_dump(hw, &item->b_kb);
+	dev_info(ice_hw_to_dev(hw), "pg priority = %d\n", item->pg);
+	_imem_np_kb_dump(hw, &item->np_kb);
+	_imem_pg_kb_dump(hw, &item->pg_kb);
+	_imem_alu_dump(hw, &item->alu0, 0);
+	_imem_alu_dump(hw, &item->alu1, 1);
+	_imem_alu_dump(hw, &item->alu2, 2);
+}
+
+/** The function parses a 4 bits Boost Main with below format:
+ *  BIT 0: ALU 0 (bm->alu0)
+ *  BIT 1: ALU 1 (bm->alu1)
+ *  BIT 2: ALU 2 (bm->alu2)
+ *  BIT 3: Parge Graph (bm->pg)
+ */
+static void _imem_bm_init(struct ice_bst_main *bm, u8 data)
+{
+	bm->al0 = (data & 0x1) != 0;
+	bm->al1 = (data & 0x2) != 0;
+	bm->al2 = (data & 0x4) != 0;
+	bm->pg = (data & 0x8) != 0;
+}
+
+/** The function parses a 10 bits Boost Main Build with below format:
+ *  BIT 0-7:	Priority (bkb->priority)
+ *  BIT 8:	TSR Control (bkb->tsr_ctrl)
+ *  BIT 9:	Reserved
+ */
+static void _imem_bkb_init(struct ice_bst_keybuilder *bkb, u16 data)
+{
+	bkb->priority = (u8)(data & 0xff);
+	bkb->tsr_ctrl = (data & 0x100) != 0;
+}
+
+/** The function parses a 18 bits Next Protocol Key Build with below format:
+ *  BIT 0-1:	Opcode kb->ops
+ *  BIT 2-9:	Start / Reg 0 (kb->start_or_reg0)
+ *  BIT 10-17:	Length / Reg 1 (kb->len_or_reg1)
+ */
+static void _imem_npkb_init(struct ice_np_keybuilder *kb, u32 data)
+{
+	kb->ops = (u8)(data & 0x3);
+	kb->start_or_reg0 = (u8)((data >> 2) & 0xff);
+	kb->len_or_reg1 = (u8)((data >> 10) & 0xff);
+}
+
+/** The function parses a 35 bits Parse Graph Key Build with below format:
+ *  BIT 0:	Flag 0 Enable (kb->flag0_ena)
+ *  BIT 1-6:	Flag 0 Index (kb->flag0_idx)
+ *  BIT 7:	Flag 1 Enable (kb->flag1_ena)
+ *  BIT 8-13:	Flag 1 Index (kb->flag1_idx)
+ *  BIT 14:	Flag 2 Enable (kb->flag2_ena)
+ *  BIT 15-20:	Flag 2 Index (kb->flag2_idx)
+ *  BIT 21:	Flag 3 Enable (kb->flag3_ena)
+ *  BIT 22-27:	Flag 3 Index (kb->flag3_idx)
+ *  BIT 28-34:	ALU Register Index (kb->alu_reg_idx)
+ */
+static void _imem_pgkb_init(struct ice_pg_keybuilder *kb, u64 data)
+{
+	kb->flag0_ena = (data & 0x1) != 0;
+	kb->flag0_idx = (u8)((data >> 1) & 0x3f);
+	kb->flag1_ena = ((data >> 7) & 0x1) != 0;
+	kb->flag1_idx = (u8)((data >> 8) & 0x3f);
+	kb->flag2_ena = ((data >> 14) & 0x1) != 0;
+	kb->flag2_idx = (u8)((data >> 15) & 0x3f);
+	kb->flag3_ena = ((data >> 21) & 0x1) != 0;
+	kb->flag3_idx = (u8)((data >> 22) & 0x3f);
+	kb->alu_reg_idx = (u8)((data >> 28) & 0x7f);
+}
+
+/** The function parses a 96 bits ALU entry with below format:
+ *  BIT 0-5:	Opcode (alu->opc)
+ *  BIT 6-13:	Source Start (alu->src_start)
+ *  BIT 14-18:	Source Length (alu->src_len)
+ *  BIT 19:	Shift/Xlate Select (alu->shift_xlate_select)
+ *  BIT 20-23:	Shift/Xlate Key (alu->shift_xlate_key)
+ *  BIT 24-30:	Source Register ID (alu->src_reg_id)
+ *  BIT 31-37:	Dest. Register ID (alu->dst_reg_id)
+ *  BIT 38:	Inc0 (alu->inc0)
+ *  BIT 39:	Inc1:(alu->inc1)
+ *  BIT 40:41	Protocol Offset Opcode (alu->proto_offset_opc)
+ *  BIT 42:49	Protocol Offset (alu->proto_offset)
+ *  BIT 50:57	Branch Address (alu->branch_addr)
+ *  BIT 58:73	Immediate (alu->imm)
+ *  BIT 74	Dedicated Flags Enable (alu->dedicate_flags_ena)
+ *  BIT 75:80	Dest. Start (alu->dst_start)
+ *  BIT 81:86	Dest. Length (alu->dst_len)
+ *  BIT 87	Flags Extract Imm. (alu->flags_extr_imm)
+ *  BIT 88:95	Flags Start/Immediate (alu->flags_start_imm)
+ *
+ *  NOTE: the first 5 bits are skipped as the start bit is not
+ *  byte aligned.
+ */
+static void _imem_alu_init(struct ice_alu *alu, u8 *data)
+{
+	u64 d64 = *(u64 *)data >> 5;
+
+	alu->opc = (enum ice_alu_opcode)(d64 & 0x3f);
+	alu->src_start = (u8)((d64 >> 6) & 0xff);
+	alu->src_len = (u8)((d64 >> 14) & 0x1f);
+	alu->shift_xlate_select = ((d64 >> 19) & 0x1) != 0;
+	alu->shift_xlate_key = (u8)((d64 >> 20) & 0xf);
+	alu->src_reg_id = (u8)((d64 >> 24) & 0x7f);
+	alu->dst_reg_id = (u8)((d64 >> 31) & 0x7f);
+	alu->inc0 = ((d64 >> 38) & 0x1) != 0;
+	alu->inc1 = ((d64 >> 39) & 0x1) != 0;
+	alu->proto_offset_opc = (u8)((d64 >> 40) & 0x3);
+	alu->proto_offset = (u8)((d64 >> 42) & 0xff);
+	alu->branch_addr = (u8)((d64 >> 50) & 0xff);
+
+	d64 = *(u64 *)(&data[7]) >> 7;
+
+	alu->imm = (u16)(d64 & 0xffff);
+	alu->dedicate_flags_ena = ((d64 >> 16) & 0x1) != 0;
+	alu->dst_start = (u8)((d64 >> 17) & 0x3f);
+	alu->dst_len = (u8)((d64 >> 23) & 0x3f);
+	alu->flags_extr_imm = ((d64 >> 29) & 0x1) != 0;
+	alu->flags_start_imm = (u8)((d64 >> 30) & 0xff);
+}
+
+/** The function parses a 384 bits IMEM entry with below format:
+ *  BIT 0-3:	Boost Main (ii->b_m)
+ *  BIT 4-13:	Boost Key Build (ii->b_kb)
+ *  BIT 14-15:	PG Priority (ii->pg)
+ *  BIT 16-33:	Next Proto Key Build (ii->np_kb)
+ *  BIT 34-68:	PG Key Build (ii->pg_kb)
+ *  BIT 69-164:	ALU0 (ii->alu0)
+ *  BIT 165-260:ALU1 (ii->alu1)
+ *  BIT 261-356:ALU2 (ii->alu2)
+ *  BIT 357-383:Reserved
+ */
+static void _imem_parse_item(struct ice_hw *hw, u16 idx, void *item,
+			     void *data, int size)
+{
+	struct ice_imem_item *ii = item;
+	u8 *buf = data;
+
+	ii->idx = idx;
+
+	_imem_bm_init(&ii->b_m, buf[0]);
+	_imem_bkb_init(&ii->b_kb, *((u16 *)(&buf[0])) >> 4);
+
+	ii->pg = (u8)((buf[1] & 0xc0) >> 6);
+	_imem_npkb_init(&ii->np_kb, *((u32 *)(&buf[2])));
+	_imem_pgkb_init(&ii->pg_kb, *((u64 *)(&buf[2])) >> 18);
+	_imem_alu_init(&ii->alu0, &buf[8]);
+	_imem_alu_init(&ii->alu1, &buf[20]);
+	_imem_alu_init(&ii->alu2, &buf[32]);
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
+					_imem_parse_item);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_imem.h b/drivers/net/ethernet/intel/ice/ice_imem.h
new file mode 100644
index 000000000000..b6b923d67112
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_imem.h
@@ -0,0 +1,108 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_IMEM_H_
+#define _ICE_IMEM_H_
+
+struct ice_bst_main {
+	bool al0;
+	bool al1;
+	bool al2;
+	bool pg;
+};
+
+struct ice_bst_keybuilder {
+	u8 priority;
+	bool tsr_ctrl;
+};
+
+struct ice_np_keybuilder {
+	u8 ops;
+	u8 start_or_reg0;
+	u8 len_or_reg1;
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
+enum ice_alu_opcode {
+	ICE_ALU_PARK = 0,
+	ICE_ALU_MOV_ADD = 1,
+	ICE_ALU_ADD = 2,
+	ICE_ALU_MOV_AND = 4,
+	ICE_ALU_AND = 5,
+	ICE_ALU_AND_IMM = 6,
+	ICE_ALU_MOV_OR = 7,
+	ICE_ALU_OR = 8,
+	ICE_ALU_MOV_XOR = 9,
+	ICE_ALU_XOR = 10,
+	ICE_ALU_NOP = 11,
+	ICE_ALU_BR = 12,
+	ICE_ALU_BREQ = 13,
+	ICE_ALU_BRNEQ = 14,
+	ICE_ALU_BRGT = 15,
+	ICE_ALU_BRLT = 16,
+	ICE_ALU_BRGEQ = 17,
+	ICE_ALU_BRLEG = 18,
+	ICE_ALU_SETEQ = 19,
+	ICE_ALU_ANDEQ = 20,
+	ICE_ALU_OREQ = 21,
+	ICE_ALU_SETNEQ = 22,
+	ICE_ALU_ANDNEQ = 23,
+	ICE_ALU_ORNEQ = 24,
+	ICE_ALU_SETGT = 25,
+	ICE_ALU_ANDGT = 26,
+	ICE_ALU_ORGT = 27,
+	ICE_ALU_SETLT = 28,
+	ICE_ALU_ANDLT = 29,
+	ICE_ALU_ORLT = 30,
+	ICE_ALU_MOV_SUB = 31,
+	ICE_ALU_SUB = 32,
+	ICE_ALU_INVALID = 64,
+};
+
+struct ice_alu {
+	enum ice_alu_opcode opc;
+	u8 src_start;
+	u8 src_len;
+	bool shift_xlate_select;
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
+	u8 pg;
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
index 692ad26ec551..cf9e47cd8be0 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -2,6 +2,92 @@
 /* Copyright (C) 2018-2023 Intel Corporation */
 
 #include "ice_common.h"
+#include "ice_parser_util.h"
+
+#define ICE_SEC_DATA_OFFSET				4
+#define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
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
+	struct ice_pkg_sect_hdr *hdr;
+	int data_off = ICE_SEC_DATA_OFFSET;
+	int size;
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
+	return (void *)((u64)section + data_off + index * size);
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
+	u16 idx = 0xffff;
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
+				   (void *)((u64)table + idx * item_size),
+				   data, item_size);
+		}
+	} while (data);
+
+	return table;
+}
 
 /**
  * ice_parser_create - create a parser instance
@@ -11,6 +97,7 @@
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 {
 	struct ice_parser *p;
+	int status;
 
 	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct ice_parser),
 			 GFP_KERNEL);
@@ -20,8 +107,17 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 	p->hw = hw;
 	p->rt.psr = p;
 
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
@@ -30,5 +126,7 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
  */
 void ice_parser_destroy(struct ice_parser *psr)
 {
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
+
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index c6cd74c6e434..b5a3c473666a 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -6,6 +6,9 @@
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
+
+	/* load data from section ICE_SID_RX_PARSER_IMEM */
+	struct ice_imem_item *imem_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h b/drivers/net/ethernet/intel/ice/ice_parser_util.h
new file mode 100644
index 000000000000..6259d3d97b23
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
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
