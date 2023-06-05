Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17851721DAC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:49:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A384C4180B;
	Mon,  5 Jun 2023 05:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A384C4180B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944154;
	bh=2Sghx7Ap7jlwrd7AMJFZbvcvgfEWyo7tFp05bU5jDqQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bkChaBdu+xPz9Bza+iocJaKQ6RMEHaTNSZKb2lLDq2JMEqHyqjVu5jR5x4590eYZA
	 1wvX/i03Z8kZCm72nEuyRaflCNrBilJD9wYZEg1cu5JX6+vItZ1VC2Be5jrznpgXCc
	 KauNskzB63nFp+QwEP94NDGz2R1QOuyf958dmYuQcIF16uaZzNCDCs+icIBaFthoAf
	 TDO1lsoAUCmuEi9+LcpMvbcsB2G8CprZOdP6aqjGxSkoaViv1zANPcHUpjMZ3Bswd6
	 yl0rVTYNKyGvZIuIpqMY0S6gvT7DNYQWg7CpIDYGqXjYnrPIQtJEoJRy+Kiue4uSYi
	 k0rhRE7Iu7Z1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fh1BzSlMSpqq; Mon,  5 Jun 2023 05:49:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D59174185A;
	Mon,  5 Jun 2023 05:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D59174185A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 574BF1BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C3F844040D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3F844040D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 546ne5WAwWZZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09ABD403A2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 09ABD403A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831887"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831887"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581528"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581528"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:14 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:38 +0800
Message-Id: <20230605054641.2865142-13-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944097; x=1717480097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=35GY+3iU3MAzew6Dc/IN0RQsJcb+X55bPIae4js7jro=;
 b=Jv5siPc+Z5BGG8ZWRslGoyLbmtjYMyiaQf105NDAXg+0wyoBOcu1d1Yy
 RUg82BGt3H/r4qNsXLDuOoml+kgczyneUYARxv5qBIIJ69p9ocr8T/rKr
 vtinuO64ct2IGxfxtBfPopKtf9hJpJXGt8Vlr4x1mbhIazApK8kquly7V
 qsTt38zj3JuKtnQFyZgoEa2C2MTA4lbGvZ+RIXCV8gD9d5ScixznkmjW7
 QMbg1N1BSKSbv8RgVMcF840+PWSDnojITMAqAHsrYMJWMA70oWHgJuE1d
 lXjJCpV+oCj4OSFk5FIHjybDH6pXKQ/7B4tOYxHS/awUMp1dsxbHLzDwF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jv5siPc+
Subject: [Intel-wired-lan] [PATCH iwl-next v2 12/15] ice: add parser
 execution main loop
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

Implement function ice_parser_rt_execute which perform the main
loop of the parser.
Also include the Parser Library files into ice Makefile.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |  11 +
 .../net/ethernet/intel/ice/ice_parser_rt.c    | 779 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_parser_rt.h    |  20 +
 3 files changed, 806 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 5d89392f969b..a0c3d4804300 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -26,6 +26,17 @@ ice-y := ice_main.o	\
 	 ice_vlan_mode.o \
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
+	 ice_parser.o    \
+	 ice_imem.o      \
+	 ice_pg_cam.o    \
+	 ice_metainit.o  \
+	 ice_bst_tcam.o  \
+	 ice_ptype_mk.o  \
+	 ice_mk_grp.o    \
+	 ice_proto_grp.o \
+	 ice_flg_rd.o    \
+	 ice_xlt_kb.o    \
+	 ice_parser_rt.o \
 	 ice_idc.o	\
 	 ice_devlink.o	\
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
index 0e276faac6c5..6659f6041e0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
@@ -32,12 +32,40 @@ static void _rt_nn_set(struct ice_parser_rt *rt, u16 node)
 	rt->gpr[GPR_NN_IDX] = node;
 }
 
-static void _rt_flag_set(struct ice_parser_rt *rt, int idx)
+static void _rt_flag_set(struct ice_parser_rt *rt, int idx, bool val)
 {
 	int y = idx / 16;
 	int x = idx % 16;
 
-	rt->gpr[GPR_FLG_IDX + y] |= (u16)(1 << x);
+	if (val)
+		rt->gpr[GPR_FLG_IDX + y] |= (u16)(1 << x);
+	else
+		rt->gpr[GPR_FLG_IDX + y] &= ~(u16)(1 << x);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set parser flag %d value %d\n",
+		  idx, val);
+}
+
+static void _rt_gpr_set(struct ice_parser_rt *rt, int idx, u16 val)
+{
+	if (idx == GPR_HO_IDX)
+		_rt_ho_set(rt, val);
+	else
+		rt->gpr[idx] = val;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set GPR %d value %d\n",
+		  idx, val);
+}
+
+static void _rt_err_set(struct ice_parser_rt *rt, int idx, bool val)
+{
+	if (val)
+		rt->gpr[GPR_ERR_IDX] |= (u16)(1 << idx);
+	else
+		rt->gpr[GPR_ERR_IDX] &= ~(u16)(1 << idx);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set parser error %d value %d\n",
+		  idx, val);
 }
 
 /**
@@ -61,7 +89,7 @@ void ice_parser_rt_reset(struct ice_parser_rt *rt)
 
 	for (i = 0; i < 64; i++) {
 		if ((mi->flags & (1ul << i)) != 0ul)
-			_rt_flag_set(rt, i);
+			_rt_flag_set(rt, i, true);
 	}
 }
 
@@ -83,6 +111,651 @@ void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
 	memcpy(&rt->gpr[GPR_HB_IDX], &rt->pkt_buf[ho], 32);
 }
 
+static void _bst_key_init(struct ice_parser_rt *rt, struct ice_imem_item *imem)
+{
+	u8 tsr = (u8)rt->gpr[GPR_TSR_IDX];
+	u16 ho = rt->gpr[GPR_HO_IDX];
+	u8 *key = rt->bst_key;
+	int i;
+
+	if (imem->b_kb.tsr_ctrl)
+		key[19] = (u8)tsr;
+	else
+		key[19] = imem->b_kb.priority;
+
+	for (i = 18; i >= 0; i--) {
+		int j;
+
+		j = ho + 18 - i;
+		if (j < ICE_PARSER_MAX_PKT_LEN)
+			key[i] = rt->pkt_buf[ho + 18 - i];
+		else
+			key[i] = 0;
+	}
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost TCAM Key:\n");
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n",
+		  key[0], key[1], key[2], key[3], key[4],
+		  key[5], key[6], key[7], key[8], key[9],
+		  key[10], key[11], key[12], key[13], key[14],
+		  key[15], key[16], key[17], key[18], key[19]);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
+}
+
+static u8 _bit_rev_u8(u8 v)
+{
+	u8 r = 0;
+	int i;
+
+	for (i = 0; i < 8; i++) {
+		r |= (u8)((v & 0x1) << (7 - i));
+		v >>= 1;
+	}
+
+	return r;
+}
+
+static u8 _bit_rev_u16(u16 v, int len)
+{
+	u16 r = 0;
+	int i;
+
+	for (i = 0; i < len; i++) {
+		r |= (u16)((v & 0x1) << (len - 1 - i));
+		v >>= 1;
+	}
+
+	return r;
+}
+
+static u32 _bit_rev_u32(u32 v, int len)
+{
+	u32 r = 0;
+	int i;
+
+	for (i = 0; i < len; i++) {
+		r |= (u32)((v & 0x1) << (len - 1 - i));
+		v >>= 1;
+	}
+
+	return r;
+}
+
+static u32 _hv_bit_sel(struct ice_parser_rt *rt, int start, int len)
+{
+	u64 d64, msk;
+	u8 b[8];
+	int i;
+
+	int offset = GPR_HB_IDX + start / 16;
+
+	memcpy(b, &rt->gpr[offset], 8);
+
+	for (i = 0; i < 8; i++)
+		b[i] = _bit_rev_u8(b[i]);
+
+	d64 = *(u64 *)b;
+	msk = (1ul << len) - 1;
+
+	return _bit_rev_u32((u32)((d64 >> (start % 16)) & msk), len);
+}
+
+static u32 _pk_build(struct ice_parser_rt *rt, struct ice_np_keybuilder *kb)
+{
+	if (kb->ops == 0)
+		return _hv_bit_sel(rt, kb->start_or_reg0, kb->len_or_reg1);
+	else if (kb->ops == 1)
+		return rt->gpr[kb->start_or_reg0] |
+		       ((u32)rt->gpr[kb->len_or_reg1] << 16);
+	else if (kb->ops == 2)
+		return 0;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported ops %d\n", kb->ops);
+	return 0xffffffff;
+}
+
+static bool _flag_get(struct ice_parser_rt *rt, int index)
+{
+	int y = index / 16;
+	int x = index % 16;
+
+	return (rt->gpr[GPR_FLG_IDX + y] & (u16)(1 << x)) != 0;
+}
+
+static void _imem_pgk_init(struct ice_parser_rt *rt, struct ice_imem_item *imem)
+{
+	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
+	rt->pg_key.next_proto = _pk_build(rt, &imem->np_kb);
+
+	if (imem->pg_kb.flag0_ena)
+		rt->pg_key.flag0 = _flag_get(rt, imem->pg_kb.flag0_idx);
+	if (imem->pg_kb.flag1_ena)
+		rt->pg_key.flag1 = _flag_get(rt, imem->pg_kb.flag1_idx);
+	if (imem->pg_kb.flag2_ena)
+		rt->pg_key.flag2 = _flag_get(rt, imem->pg_kb.flag2_idx);
+	if (imem->pg_kb.flag3_ena)
+		rt->pg_key.flag3 = _flag_get(rt, imem->pg_kb.flag3_idx);
+
+	rt->pg_key.alu_reg = rt->gpr[imem->pg_kb.alu_reg_idx];
+	rt->pg_key.node_id = rt->gpr[GPR_NN_IDX];
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generate Parse Graph Key: node_id(%d),flag0(%d), flag1(%d), flag2(%d), flag3(%d), boost_idx(%d), alu_reg(0x%04x), next_proto(0x%08x)\n",
+		  rt->pg_key.node_id,
+		  rt->pg_key.flag0,
+		  rt->pg_key.flag1,
+		  rt->pg_key.flag2,
+		  rt->pg_key.flag3,
+		  rt->pg_key.boost_idx,
+		  rt->pg_key.alu_reg,
+		  rt->pg_key.next_proto);
+}
+
+static void _imem_alu0_set(struct ice_parser_rt *rt, struct ice_imem_item *imem)
+{
+	rt->alu0 = &imem->alu0;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void _imem_alu1_set(struct ice_parser_rt *rt, struct ice_imem_item *imem)
+{
+	rt->alu1 = &imem->alu1;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void _imem_alu2_set(struct ice_parser_rt *rt, struct ice_imem_item *imem)
+{
+	rt->alu2 = &imem->alu2;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void _imem_pgp_set(struct ice_parser_rt *rt, struct ice_imem_item *imem)
+{
+	rt->pg = imem->pg;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d from imem pc %d\n",
+		  rt->pg, imem->idx);
+}
+
+static void
+_bst_pgk_init(struct ice_parser_rt *rt, struct ice_bst_tcam_item *bst)
+{
+	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
+	rt->pg_key.boost_idx = bst->hit_idx_grp;
+	rt->pg_key.next_proto = _pk_build(rt, &bst->np_kb);
+
+	if (bst->pg_kb.flag0_ena)
+		rt->pg_key.flag0 = _flag_get(rt, bst->pg_kb.flag0_idx);
+	if (bst->pg_kb.flag1_ena)
+		rt->pg_key.flag1 = _flag_get(rt, bst->pg_kb.flag1_idx);
+	if (bst->pg_kb.flag2_ena)
+		rt->pg_key.flag2 = _flag_get(rt, bst->pg_kb.flag2_idx);
+	if (bst->pg_kb.flag3_ena)
+		rt->pg_key.flag3 = _flag_get(rt, bst->pg_kb.flag3_idx);
+
+	rt->pg_key.alu_reg = rt->gpr[bst->pg_kb.alu_reg_idx];
+	rt->pg_key.node_id = rt->gpr[GPR_NN_IDX];
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generate Parse Graph Key: node_id(%d),flag0(%d), flag1(%d), flag2(%d), flag3(%d), boost_idx(%d), alu_reg(0x%04x), next_proto(0x%08x)\n",
+		  rt->pg_key.node_id,
+		  rt->pg_key.flag0,
+		  rt->pg_key.flag1,
+		  rt->pg_key.flag2,
+		  rt->pg_key.flag3,
+		  rt->pg_key.boost_idx,
+		  rt->pg_key.alu_reg,
+		  rt->pg_key.next_proto);
+}
+
+static void _bst_alu0_set(struct ice_parser_rt *rt,
+			  struct ice_bst_tcam_item *bst)
+{
+	rt->alu0 = &bst->alu0;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from boost address %d\n",
+		  bst->address);
+}
+
+static void _bst_alu1_set(struct ice_parser_rt *rt,
+			  struct ice_bst_tcam_item *bst)
+{
+	rt->alu1 = &bst->alu1;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from boost address %d\n",
+		  bst->address);
+}
+
+static void _bst_alu2_set(struct ice_parser_rt *rt,
+			  struct ice_bst_tcam_item *bst)
+{
+	rt->alu2 = &bst->alu2;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from boost address %d\n",
+		  bst->address);
+}
+
+static void _bst_pgp_set(struct ice_parser_rt *rt,
+			 struct ice_bst_tcam_item *bst)
+{
+	rt->pg = bst->pg_pri;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d from boost address %d\n",
+		  rt->pg, bst->address);
+}
+
+static struct ice_pg_cam_item *__pg_cam_match(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_pg_cam_item *item;
+
+	item = ice_pg_cam_match(psr->pg_cam_table, ICE_PG_CAM_TABLE_SIZE,
+				&rt->pg_key);
+	if (item)
+		return item;
+
+	item = ice_pg_cam_match(psr->pg_sp_cam_table, ICE_PG_SP_CAM_TABLE_SIZE,
+				&rt->pg_key);
+	return item;
+}
+
+static struct ice_pg_nm_cam_item *__pg_nm_cam_match(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_pg_nm_cam_item *item;
+
+	item = ice_pg_nm_cam_match(psr->pg_nm_cam_table,
+				   ICE_PG_NM_CAM_TABLE_SIZE, &rt->pg_key);
+
+	if (item)
+		return item;
+
+	item = ice_pg_nm_cam_match(psr->pg_nm_sp_cam_table,
+				   ICE_PG_NM_SP_CAM_TABLE_SIZE,
+				   &rt->pg_key);
+	return item;
+}
+
+static void _gpr_add(struct ice_parser_rt *rt, int idx, u16 val)
+{
+	rt->pu.gpr_val_upd[idx] = true;
+	rt->pu.gpr_val[idx] = val;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for register %d value %d\n",
+		  idx, val);
+}
+
+static void _pg_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ParseGraph action ...\n");
+
+	_gpr_add(rt, GPR_NP_IDX, rt->action->next_pc);
+	_gpr_add(rt, GPR_NN_IDX, rt->action->next_node);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ParseGraph action done.\n");
+}
+
+static void _flg_add(struct ice_parser_rt *rt, int idx, bool val)
+{
+	rt->pu.flg_msk |= (1ul << idx);
+	if (val)
+		rt->pu.flg_val |= (1ul << idx);
+	else
+		rt->pu.flg_val &= ~(1ul << idx);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for flag %d value %d\n",
+		  idx, val);
+}
+
+static void _flg_update(struct ice_parser_rt *rt, struct ice_alu *alu)
+{
+	if (alu->dedicate_flags_ena) {
+		int i;
+
+		if (alu->flags_extr_imm) {
+			for (i = 0; i < alu->dst_len; i++)
+				_flg_add(rt, alu->dst_start + i,
+					 (alu->flags_start_imm &
+					  (1u << i)) != 0);
+		} else {
+			for (i = 0; i < alu->dst_len; i++) {
+				_flg_add(rt, alu->dst_start + i,
+					 _hv_bit_sel(rt,
+						     alu->flags_start_imm + i,
+						     1) != 0);
+			}
+		}
+	}
+}
+
+static void _po_update(struct ice_parser_rt *rt, struct ice_alu *alu)
+{
+	if (alu->proto_offset_opc == 1)
+		rt->po = (u16)(rt->gpr[GPR_HO_IDX] + alu->proto_offset);
+	else if (alu->proto_offset_opc == 2)
+		rt->po = (u16)(rt->gpr[GPR_HO_IDX] - alu->proto_offset);
+	else if (alu->proto_offset_opc == 0)
+		rt->po = rt->gpr[GPR_HO_IDX];
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Update Protocol Offset = %d\n",
+		  rt->po);
+}
+
+static u16 _reg_bit_sel(struct ice_parser_rt *rt, int reg_idx,
+			int start, int len)
+{
+	u32 d32, msk;
+	u8 b[4];
+	u8 v[4];
+
+	memcpy(b, &rt->gpr[reg_idx + start / 16], 4);
+
+	v[0] = _bit_rev_u8(b[0]);
+	v[1] = _bit_rev_u8(b[1]);
+	v[2] = _bit_rev_u8(b[2]);
+	v[3] = _bit_rev_u8(b[3]);
+
+	d32 = *(u32 *)v;
+	msk = (1u << len) - 1;
+
+	return _bit_rev_u16((u16)((d32 >> (start % 16)) & msk), len);
+}
+
+static void _err_add(struct ice_parser_rt *rt, int idx, bool val)
+{
+	rt->pu.err_msk |= (u16)(1 << idx);
+	if (val)
+		rt->pu.flg_val |= (u64)(1 << idx);
+	else
+		rt->pu.flg_val &= ~(u64)(1 << idx);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for error %d value %d\n",
+		  idx, val);
+}
+
+static void _dst_reg_bit_set(struct ice_parser_rt *rt, struct ice_alu *alu,
+			     bool val)
+{
+	u16 flg_idx;
+
+	if (alu->dedicate_flags_ena) {
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "DedicatedFlagsEnable should not be enabled in opcode %d\n",
+			  alu->opc);
+		return;
+	}
+
+	if (alu->dst_reg_id == GPR_ERR_IDX) {
+		if (alu->dst_start >= 16) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Invalid error %d\n",
+				  alu->dst_start);
+			return;
+		}
+		_err_add(rt, alu->dst_start, val);
+	} else if (alu->dst_reg_id >= GPR_FLG_IDX) {
+		flg_idx = (u16)(((alu->dst_reg_id - GPR_FLG_IDX) << 4) +
+				alu->dst_start);
+
+		if (flg_idx >= 64) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Invalid flag %d\n",
+				  flg_idx);
+			return;
+		}
+		_flg_add(rt, flg_idx, val);
+	} else {
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unexpected Dest Register Bit set, RegisterID %d Start %d\n",
+			  alu->dst_reg_id, alu->dst_start);
+	}
+}
+
+static void _alu_exe(struct ice_parser_rt *rt, struct ice_alu *alu)
+{
+	u16 dst, src, shift, imm;
+
+	if (alu->shift_xlate_select) {
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "shift_xlate_select != 0 is not expected\n");
+		return;
+	}
+
+	_po_update(rt, alu);
+	_flg_update(rt, alu);
+
+	dst = rt->gpr[alu->dst_reg_id];
+	src = _reg_bit_sel(rt, alu->src_reg_id, alu->src_start, alu->src_len);
+	shift = alu->shift_xlate_key;
+	imm = alu->imm;
+
+	switch (alu->opc) {
+	case ICE_ALU_PARK:
+		break;
+	case ICE_ALU_MOV_ADD:
+		dst = (u16)((src << shift) + imm);
+		_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	case ICE_ALU_ADD:
+		dst += (u16)((src << shift) + imm);
+		_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	case ICE_ALU_ORLT:
+		if (src < imm)
+			_dst_reg_bit_set(rt, alu, true);
+		_gpr_add(rt, GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_OREQ:
+		if (src == imm)
+			_dst_reg_bit_set(rt, alu, true);
+		_gpr_add(rt, GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_SETEQ:
+		if (src == imm)
+			_dst_reg_bit_set(rt, alu, true);
+		else
+			_dst_reg_bit_set(rt, alu, false);
+		_gpr_add(rt, GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_MOV_XOR:
+		dst = (u16)((u16)(src << shift) ^ (u16)imm);
+		_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	default:
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported ALU instruction %d\n",
+			  alu->opc);
+		break;
+	}
+}
+
+static void _alu0_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0 ...\n");
+	_alu_exe(rt, rt->alu0);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0 done.\n");
+}
+
+static void _alu1_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1 ...\n");
+	_alu_exe(rt, rt->alu1);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1 done.\n");
+}
+
+static void _alu2_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2 ...\n");
+	_alu_exe(rt, rt->alu2);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2 done.\n");
+}
+
+static void _pu_exe(struct ice_parser_rt *rt)
+{
+	struct ice_gpr_pu *pu = &rt->pu;
+	int i;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers ...\n");
+
+	for (i = 0; i < 128; i++) {
+		if (pu->gpr_val_upd[i])
+			_rt_gpr_set(rt, i, pu->gpr_val[i]);
+	}
+
+	for (i = 0; i < 64; i++) {
+		if (pu->flg_msk & (1ul << i))
+			_rt_flag_set(rt, i, pu->flg_val & (1ul << i));
+	}
+
+	for (i = 0; i < 16; i++) {
+		if (pu->err_msk & (1u << 1))
+			_rt_err_set(rt, i, pu->err_val & (1u << i));
+	}
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers done.\n");
+}
+
+static void _alu_pg_exe(struct ice_parser_rt *rt)
+{
+	memset(&rt->pu, 0, sizeof(rt->pu));
+
+	if (rt->pg == 0) {
+		_pg_exe(rt);
+		_alu0_exe(rt);
+		_alu1_exe(rt);
+		_alu2_exe(rt);
+	} else if (rt->pg == 1) {
+		_alu0_exe(rt);
+		_pg_exe(rt);
+		_alu1_exe(rt);
+		_alu2_exe(rt);
+	} else if (rt->pg == 2) {
+		_alu0_exe(rt);
+		_alu1_exe(rt);
+		_pg_exe(rt);
+		_alu2_exe(rt);
+	} else if (rt->pg == 3) {
+		_alu0_exe(rt);
+		_alu1_exe(rt);
+		_alu2_exe(rt);
+		_pg_exe(rt);
+	}
+
+	_pu_exe(rt);
+
+	if (rt->action->ho_inc == 0)
+		return;
+
+	if (rt->action->ho_polarity)
+		_rt_ho_set(rt, rt->gpr[GPR_HO_IDX] + rt->action->ho_inc);
+	else
+		_rt_ho_set(rt, rt->gpr[GPR_HO_IDX] - rt->action->ho_inc);
+}
+
+static void _proto_off_update(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+
+	if (rt->action->is_pg) {
+		struct ice_proto_grp_item *proto_grp =
+			&psr->proto_grp_table[rt->action->proto_id];
+		u16 po;
+		int i;
+
+		for (i = 0; i < 8; i++) {
+			struct ice_proto_off *entry = &proto_grp->po[i];
+
+			if (entry->proto_id == 0xff)
+				break;
+
+			if (!entry->polarity)
+				po = (u16)(rt->po + entry->offset);
+			else
+				po = (u16)(rt->po - entry->offset);
+
+			rt->protocols[entry->proto_id] = true;
+			rt->offsets[entry->proto_id] = po;
+
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Protocol %d at offset %d\n",
+				  entry->proto_id, po);
+		}
+	} else {
+		rt->protocols[rt->action->proto_id] = true;
+		rt->offsets[rt->action->proto_id] = rt->po;
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Protocol %d at offset %d\n",
+			  rt->action->proto_id, rt->po);
+	}
+}
+
+static void _marker_set(struct ice_parser_rt *rt, int idx)
+{
+	int x = idx / 8;
+	int y = idx % 8;
+
+	rt->markers[x] |= (u8)(1u << y);
+}
+
+static void _marker_update(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+
+	if (rt->action->is_mg) {
+		struct ice_mk_grp_item *mk_grp =
+			&psr->mk_grp_table[rt->action->marker_id];
+		int i;
+
+		for (i = 0; i < 8; i++) {
+			u8 marker = mk_grp->markers[i];
+
+			if (marker == 71)
+				break;
+
+			_marker_set(rt, marker);
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Marker %d\n",
+				  marker);
+		}
+	} else {
+		if (rt->action->marker_id != 71)
+			_marker_set(rt, rt->action->marker_id);
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Marker %d\n",
+			  rt->action->marker_id);
+	}
+}
+
+static u16 _ptype_resolve(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_ptype_mk_tcam_item *item;
+
+	item = ice_ptype_mk_tcam_match(psr->ptype_mk_tcam_table,
+				       rt->markers, 9);
+	if (item)
+		return item->ptype;
+	return 0xffff;
+}
+
+static void _proto_off_resolve(struct ice_parser_rt *rt,
+			       struct ice_parser_result *rslt)
+{
+	int i;
+
+	for (i = 0; i < 255; i++) {
+		if (rt->protocols[i]) {
+			rslt->po[rslt->po_num].proto_id = (u8)i;
+			rslt->po[rslt->po_num].offset = rt->offsets[i];
+			rslt->po_num++;
+		}
+	}
+}
+
+static void _result_resolve(struct ice_parser_rt *rt,
+			    struct ice_parser_result *rslt)
+{
+	struct ice_parser *psr = rt->psr;
+
+	memset(rslt, 0, sizeof(*rslt));
+
+	rslt->ptype = _ptype_resolve(rt);
+
+	memcpy(&rslt->flags_psr, &rt->gpr[GPR_FLG_IDX], 8);
+	rslt->flags_pkt = ice_flg_redirect(psr->flg_rd_table, rslt->flags_psr);
+	rslt->flags_sw = ice_xlt_kb_flag_get(psr->xlt_kb_sw, rslt->flags_pkt);
+	rslt->flags_fd = ice_xlt_kb_flag_get(psr->xlt_kb_fd, rslt->flags_pkt);
+	rslt->flags_rss = ice_xlt_kb_flag_get(psr->xlt_kb_rss, rslt->flags_pkt);
+
+	_proto_off_resolve(rt, rslt);
+}
+
 /**
  * ice_parser_rt_execute - parser execution routine
  * @rt: pointer to the parser runtime
@@ -91,5 +764,103 @@ void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
 int ice_parser_rt_execute(struct ice_parser_rt *rt,
 			  struct ice_parser_result *rslt)
 {
-	return ICE_ERR_NOT_IMPL;
+	struct ice_pg_nm_cam_item *pg_nm_cam;
+	struct ice_parser *psr = rt->psr;
+	struct ice_pg_cam_item *pg_cam;
+	int status = 0;
+	u16 node;
+	u16 pc;
+
+	node = rt->gpr[GPR_NN_IDX];
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Start with Node: %d\n", node);
+
+	while (true) {
+		struct ice_bst_tcam_item *bst;
+		struct ice_imem_item *imem;
+
+		pc = rt->gpr[GPR_NP_IDX];
+		imem = &psr->imem_table[pc];
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load imem at pc: %d\n",
+			  pc);
+
+		_bst_key_init(rt, imem);
+		bst = ice_bst_tcam_match(psr->bst_tcam_table, rt->bst_key);
+
+		if (!bst) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "No Boost TCAM Match\n");
+			_imem_pgk_init(rt, imem);
+			_imem_alu0_set(rt, imem);
+			_imem_alu1_set(rt, imem);
+			_imem_alu2_set(rt, imem);
+			_imem_pgp_set(rt, imem);
+		} else {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Boost TCAM Match address: %d\n",
+				  bst->address);
+			if (imem->b_m.pg) {
+				_bst_pgk_init(rt, bst);
+				_bst_pgp_set(rt, bst);
+			} else {
+				_imem_pgk_init(rt, imem);
+				_imem_pgp_set(rt, imem);
+			}
+
+			if (imem->b_m.al0)
+				_bst_alu0_set(rt, bst);
+			else
+				_imem_alu0_set(rt, imem);
+
+			if (imem->b_m.al1)
+				_bst_alu1_set(rt, bst);
+			else
+				_imem_alu1_set(rt, imem);
+
+			if (imem->b_m.al2)
+				_bst_alu2_set(rt, bst);
+			else
+				_imem_alu2_set(rt, imem);
+		}
+
+		rt->action = NULL;
+		pg_cam = __pg_cam_match(rt);
+		if (!pg_cam) {
+			pg_nm_cam = __pg_nm_cam_match(rt);
+			if (pg_nm_cam) {
+				ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Match ParseGraph Nomatch CAM Address %d\n",
+					  pg_nm_cam->idx);
+				rt->action = &pg_nm_cam->action;
+			}
+		} else {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Match ParseGraph CAM Address %d\n",
+				  pg_cam->idx);
+			rt->action = &pg_cam->action;
+		}
+
+		if (!rt->action) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Failed to match ParseGraph CAM, stop parsing.\n");
+			status = -EINVAL;
+			break;
+		}
+
+		_alu_pg_exe(rt);
+		_marker_update(rt);
+		_proto_off_update(rt);
+
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Go to node %d\n",
+			  rt->action->next_node);
+
+		if (rt->action->is_last_round) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Last Round in ParseGraph Action, stop parsing.\n");
+			break;
+		}
+
+		if (rt->gpr[GPR_HO_IDX] >= rt->pkt_len) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Header Offset %d is larger than packet len %d, stop parsing\n",
+				  rt->gpr[GPR_HO_IDX], rt->pkt_len);
+			break;
+		}
+	}
+
+	_result_resolve(rt, rslt);
+
+	return status;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.h b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
index 2c909a8dc01e..6f0764745758 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_rt.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
@@ -9,12 +9,32 @@ struct ice_parser_ctx;
 #define ICE_PARSER_MAX_PKT_LEN 504
 #define ICE_PARSER_GPR_NUM 128
 
+struct ice_gpr_pu {
+	bool gpr_val_upd[128]; /* flag to indicate if GRP needs to be updated */
+	u16 gpr_val[128];
+	u64 flg_msk;
+	u64 flg_val;
+	u16 err_msk;
+	u16 err_val;
+};
+
 struct ice_parser_rt {
 	struct ice_parser *psr;
 	u16 gpr[ICE_PARSER_GPR_NUM];
 	u8 pkt_buf[ICE_PARSER_MAX_PKT_LEN + 32];
 	u16 pkt_len;
 	u16 po;
+	u8 bst_key[20];
+	struct ice_pg_cam_key pg_key;
+	struct ice_alu *alu0;
+	struct ice_alu *alu1;
+	struct ice_alu *alu2;
+	struct ice_pg_cam_action *action;
+	u8 pg;
+	struct ice_gpr_pu pu;
+	u8 markers[9]; /* 8 * 9 = 72 bits*/
+	bool protocols[256];
+	u16 offsets[256];
 };
 
 void ice_parser_rt_reset(struct ice_parser_rt *rt);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
