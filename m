Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B387791000
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 04:16:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC2D181EB2;
	Mon,  4 Sep 2023 02:16:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC2D181EB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693793770;
	bh=CeaRGb/C3PpZcGfdns9sjr+p7vWod4p+VRDvzf0CXQY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r4tTLYAoI1ODZd5XZ4bhtGoTlDJ4V6QncH9gWyNy64pUN/8811cUrCns1YP/wpMVD
	 4Up0IQ2yoSeYXX3hRHCKmD9fXYuLjI3SOre+048W6uDxqzJXyBjoLhiow6VG0zpEuL
	 L5IMn9956CGDEddahfmq2hsOmW4pK/Ut5PTGJrbJyI3+lI9j0jw0t/qx+UU2f+NknD
	 ZTMA3+P0+GDKea2j69n9kE2FgNy0RWFtD4XB1P0Hgk5Vxr5Ao/rVTKNSQ5g8Ed3tK6
	 A8WQq5Ux3YIDn/eFoo5yc8STZ+ijsjKPHyW9lS980gMmVhM1aSTGS1JvDWZpW6dlsX
	 wNa6MoNhdHQVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TnKoDFkSwssB; Mon,  4 Sep 2023 02:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45A6681E76;
	Mon,  4 Sep 2023 02:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45A6681E76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A239B1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FFA881E1F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:16:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FFA881E1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7z-od8WtwQv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 02:15:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D38EC81E17
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D38EC81E17
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="379215333"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="379215333"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 19:15:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="769826936"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="769826936"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2023 19:15:54 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Sep 2023 10:14:52 +0800
Message-Id: <20230904021455.3944605-13-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230904021455.3944605-1-junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693793758; x=1725329758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kO87tF+eSc+BgkF18zInOJoweedM4KaOfqb+CjwyKm0=;
 b=ELjh1U17EOPQhLf61TeLP0mQekLCx4J59c9+cFIht8S0FhKOt0ifaCMZ
 hP89/BJlVYVq+zuS0YTrUJtiLoNZhk7DxdJyYrGTY4KG+YlmZETYA+i5I
 yu85E4pO8Natjfg27ZTt+sxwBw23+c5set2dww+N89kRYQt9MPOiAJszO
 Q24auxIkTj2DhoZTnm7FB4nGtur+ep2k/ZqA5y4EgTCGZahCmXY6oqT7z
 uBvm+uKsGgSypuFCMd3Cl7ZlwiAra3zcc/SZBEUDiq4nlNdmhY0qzKuor
 HPvmvfKiyUUdhiqa4lPq21yn2b+09GGVEBfQoZhgiBOtgseVJ15WO63ye
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ELjh1U17
Subject: [Intel-wired-lan] [PATCH iwl-next v9 12/15] ice: add parser
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, qi.z.zhang@intel.com,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement function ice_parser_rt_execute which perform the main
loop of the parser.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 .../net/ethernet/intel/ice/ice_parser_rt.c    | 751 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_parser_rt.h    |  33 +
 2 files changed, 783 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
index a6644f4b3324..df168078f9d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
@@ -31,6 +31,33 @@ static void _ice_rt_flag_set(struct ice_parser_rt *rt, int idx, bool val)
 
 	if (val)
 		rt->gpr[ICE_GPR_FLG_IDX + y] |= (u16)BIT(x);
+	else
+		rt->gpr[ICE_GPR_FLG_IDX + y] &= ~(u16)BIT(x);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set parser flag %d value %d\n",
+		  idx, val);
+}
+
+static void _ice_rt_gpr_set(struct ice_parser_rt *rt, int idx, u16 val)
+{
+	if (idx == ICE_GPR_HO_IDX)
+		_ice_rt_ho_set(rt, val);
+	else
+		rt->gpr[idx] = val;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set GPR %d value %d\n",
+		  idx, val);
+}
+
+static void _ice_rt_err_set(struct ice_parser_rt *rt, int idx, bool val)
+{
+	if (val)
+		rt->gpr[ICE_GPR_ERR_IDX] |= (u16)BIT(idx);
+	else
+		rt->gpr[ICE_GPR_ERR_IDX] &= ~(u16)BIT(idx);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set parser error %d value %d\n",
+		  idx, val);
 }
 
 /**
@@ -80,6 +107,630 @@ void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
 	memcpy(&rt->gpr[ICE_GPR_HV_IDX], &rt->pkt_buf[ho], ICE_GPR_HV_SIZE);
 }
 
+static void _ice_bst_key_init(struct ice_parser_rt *rt,
+			      struct ice_imem_item *imem)
+{
+	u8 tsr = (u8)rt->gpr[ICE_GPR_TSR_IDX];
+	u16 ho = rt->gpr[ICE_GPR_HO_IDX];
+	u8 *key = rt->bst_key;
+	int idd, i;
+
+	idd = ICE_BST_TCAM_KEY_SIZE - 1;
+	if (imem->b_kb.tsr_ctrl)
+		key[idd] = (u8)tsr;
+	else
+		key[idd] = imem->b_kb.prio;
+
+	idd = ICE_BST_KEY_TCAM_SIZE - 1;
+	for (i = idd; i >= 0; i--) {
+		int j;
+
+		j = ho + idd - i;
+		if (j < ICE_PARSER_MAX_PKT_LEN)
+			key[i] = rt->pkt_buf[ho + idd - i];
+		else
+			key[i] = 0;
+	}
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost TCAM Key:\n");
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n",
+		  key[0], key[1], key[2], key[3], key[4],
+		  key[5], key[6], key[7], key[8], key[9]);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
+}
+
+static u16 _ice_bit_rev_u16(u16 v, int len)
+{
+	return bitrev16(v) >> (BITS_PER_TYPE(v) - len);
+}
+
+static u32 _ice_bit_rev_u32(u32 v, int len)
+{
+	return bitrev32(v) >> (BITS_PER_TYPE(v) - len);
+}
+
+static u32 _ice_hv_bit_sel(struct ice_parser_rt *rt, int start, int len)
+{
+	int offset;
+	u32 buf[2];
+	u64 val;
+
+	offset = ICE_GPR_HV_IDX + start / BITS_PER_TYPE(u16);
+
+	memcpy(buf, &rt->gpr[offset], sizeof(buf));
+
+	buf[0] = bitrev8x4(buf[0]);
+	buf[1] = bitrev8x4(buf[1]);
+
+	val = *(u64 *)buf;
+	val >>= start % BITS_PER_TYPE(u16);
+
+	return _ice_bit_rev_u32(val, len);
+}
+
+static u32 _ice_pk_build(struct ice_parser_rt *rt,
+			 struct ice_np_keybuilder *kb)
+{
+	if (kb->opc == ICE_NPKB_OPC_EXTRACT)
+		return _ice_hv_bit_sel(rt, kb->start_reg0, kb->len_reg1);
+	else if (kb->opc == ICE_NPKB_OPC_BUILD)
+		return rt->gpr[kb->start_reg0] |
+		       ((u32)rt->gpr[kb->len_reg1] << BITS_PER_TYPE(u16));
+	else if (kb->opc == ICE_NPKB_OPC_BYPASS)
+		return 0;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported opc %d\n", kb->opc);
+	return U32_MAX;
+}
+
+static bool _ice_flag_get(struct ice_parser_rt *rt, int index)
+{
+	int y = index / ICE_GPR_FLG_SIZE;
+	int x = index % ICE_GPR_FLG_SIZE;
+
+	return (rt->gpr[ICE_GPR_FLG_IDX + y] & (u16)BIT(x)) != 0;
+}
+
+static void _ice_imem_pgk_init(struct ice_parser_rt *rt,
+			       struct ice_imem_item *imem)
+{
+	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
+	rt->pg_key.next_proto = _ice_pk_build(rt, &imem->np_kb);
+
+	if (imem->pg_kb.flag0_ena)
+		rt->pg_key.flag0 = _ice_flag_get(rt, imem->pg_kb.flag0_idx);
+	if (imem->pg_kb.flag1_ena)
+		rt->pg_key.flag1 = _ice_flag_get(rt, imem->pg_kb.flag1_idx);
+	if (imem->pg_kb.flag2_ena)
+		rt->pg_key.flag2 = _ice_flag_get(rt, imem->pg_kb.flag2_idx);
+	if (imem->pg_kb.flag3_ena)
+		rt->pg_key.flag3 = _ice_flag_get(rt, imem->pg_kb.flag3_idx);
+
+	rt->pg_key.alu_reg = rt->gpr[imem->pg_kb.alu_reg_idx];
+	rt->pg_key.node_id = rt->gpr[ICE_GPR_NN_IDX];
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
+static void _ice_imem_alu0_set(struct ice_parser_rt *rt,
+			       struct ice_imem_item *imem)
+{
+	rt->alu0 = &imem->alu0;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void _ice_imem_alu1_set(struct ice_parser_rt *rt,
+			       struct ice_imem_item *imem)
+{
+	rt->alu1 = &imem->alu1;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void _ice_imem_alu2_set(struct ice_parser_rt *rt,
+			       struct ice_imem_item *imem)
+{
+	rt->alu2 = &imem->alu2;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void _ice_imem_pgp_set(struct ice_parser_rt *rt,
+			      struct ice_imem_item *imem)
+{
+	rt->pg_pri = imem->pg_pri;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d from imem pc %d\n",
+		  rt->pg_pri, imem->idx);
+}
+
+static void _ice_bst_pgk_init(struct ice_parser_rt *rt,
+			      struct ice_bst_tcam_item *bst)
+{
+	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
+	rt->pg_key.boost_idx = bst->hit_idx_grp;
+	rt->pg_key.next_proto = _ice_pk_build(rt, &bst->np_kb);
+
+	if (bst->pg_kb.flag0_ena)
+		rt->pg_key.flag0 = _ice_flag_get(rt, bst->pg_kb.flag0_idx);
+	if (bst->pg_kb.flag1_ena)
+		rt->pg_key.flag1 = _ice_flag_get(rt, bst->pg_kb.flag1_idx);
+	if (bst->pg_kb.flag2_ena)
+		rt->pg_key.flag2 = _ice_flag_get(rt, bst->pg_kb.flag2_idx);
+	if (bst->pg_kb.flag3_ena)
+		rt->pg_key.flag3 = _ice_flag_get(rt, bst->pg_kb.flag3_idx);
+
+	rt->pg_key.alu_reg = rt->gpr[bst->pg_kb.alu_reg_idx];
+	rt->pg_key.node_id = rt->gpr[ICE_GPR_NN_IDX];
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
+static void _ice_bst_alu0_set(struct ice_parser_rt *rt,
+			      struct ice_bst_tcam_item *bst)
+{
+	rt->alu0 = &bst->alu0;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from boost address %d\n",
+		  bst->addr);
+}
+
+static void _ice_bst_alu1_set(struct ice_parser_rt *rt,
+			      struct ice_bst_tcam_item *bst)
+{
+	rt->alu1 = &bst->alu1;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from boost address %d\n",
+		  bst->addr);
+}
+
+static void _ice_bst_alu2_set(struct ice_parser_rt *rt,
+			      struct ice_bst_tcam_item *bst)
+{
+	rt->alu2 = &bst->alu2;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from boost address %d\n",
+		  bst->addr);
+}
+
+static void _ice_bst_pgp_set(struct ice_parser_rt *rt,
+			     struct ice_bst_tcam_item *bst)
+{
+	rt->pg_pri = bst->pg_pri;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d from boost address %d\n",
+		  rt->pg_pri, bst->addr);
+}
+
+static struct ice_pg_cam_item *_ice_pg_cam_match(struct ice_parser_rt *rt)
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
+static struct ice_pg_nm_cam_item *_ice_pg_nm_cam_match(struct ice_parser_rt *rt)
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
+static void _ice_gpr_add(struct ice_parser_rt *rt, int idx, u16 val)
+{
+	rt->pu.gpr_val_upd[idx] = true;
+	rt->pu.gpr_val[idx] = val;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for register %d value %d\n",
+		  idx, val);
+}
+
+static void _ice_pg_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ParseGraph action ...\n");
+
+	_ice_gpr_add(rt, ICE_GPR_NP_IDX, rt->action->next_pc);
+	_ice_gpr_add(rt, ICE_GPR_NN_IDX, rt->action->next_node);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ParseGraph action done.\n");
+}
+
+static void _ice_flg_add(struct ice_parser_rt *rt, int idx, bool val)
+{
+	rt->pu.flg_msk |= BIT(idx);
+	if (val)
+		rt->pu.flg_val |= BIT(idx);
+	else
+		rt->pu.flg_val &= ~BIT(idx);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for flag %d value %d\n",
+		  idx, val);
+}
+
+static void _ice_flg_update(struct ice_parser_rt *rt, struct ice_alu *alu)
+{
+	int i;
+
+	if (!alu->dedicate_flags_ena)
+		return;
+
+	if (alu->flags_extr_imm)
+		for (i = 0; i < alu->dst_len; i++)
+			_ice_flg_add(rt, alu->dst_start + i,
+				     (alu->flags_start_imm & BIT(i)) != 0);
+	else
+		for (i = 0; i < alu->dst_len; i++)
+			_ice_flg_add(rt, alu->dst_start + i,
+				     _ice_hv_bit_sel(rt,
+						     alu->flags_start_imm + i,
+						     1) != 0);
+}
+
+static void _ice_po_update(struct ice_parser_rt *rt, struct ice_alu *alu)
+{
+	if (alu->proto_offset_opc == ICE_PO_OFF_HDR_ADD)
+		rt->po = (u16)(rt->gpr[ICE_GPR_HO_IDX] + alu->proto_offset);
+	else if (alu->proto_offset_opc == ICE_PO_OFF_HDR_SUB)
+		rt->po = (u16)(rt->gpr[ICE_GPR_HO_IDX] - alu->proto_offset);
+	else if (alu->proto_offset_opc == ICE_PO_OFF_REMAIN)
+		rt->po = rt->gpr[ICE_GPR_HO_IDX];
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Update Protocol Offset = %d\n",
+		  rt->po);
+}
+
+static u16 _ice_reg_bit_sel(struct ice_parser_rt *rt, int reg_idx,
+			    int start, int len)
+{
+	int offset;
+	u32 val;
+
+	offset = ICE_GPR_HV_IDX + start / BITS_PER_TYPE(u16);
+
+	memcpy(&val, &rt->gpr[offset], sizeof(val));
+
+	val = bitrev8x4(val);
+	val >>= start % BITS_PER_TYPE(u16);
+
+	return _ice_bit_rev_u16(val, len);
+}
+
+static void _ice_err_add(struct ice_parser_rt *rt, int idx, bool val)
+{
+	rt->pu.err_msk |= (u16)BIT(idx);
+	if (val)
+		rt->pu.flg_val |= (u64)BIT_ULL(idx);
+	else
+		rt->pu.flg_val &= ~(u64)BIT_ULL(idx);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for error %d value %d\n",
+		  idx, val);
+}
+
+static void _ice_dst_reg_bit_set(struct ice_parser_rt *rt, struct ice_alu *alu,
+				 bool val)
+{
+	u16 flg_idx;
+
+	if (alu->dedicate_flags_ena) {
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "DedicatedFlagsEnable should not be enabled in opcode %d\n",
+			  alu->opc);
+		return;
+	}
+
+	if (alu->dst_reg_id == ICE_GPR_ERR_IDX) {
+		if (alu->dst_start >= ICE_PARSER_ERR_NUM) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Invalid error %d\n",
+				  alu->dst_start);
+			return;
+		}
+		_ice_err_add(rt, alu->dst_start, val);
+	} else if (alu->dst_reg_id >= ICE_GPR_FLG_IDX) {
+		flg_idx = (u16)(((alu->dst_reg_id - ICE_GPR_FLG_IDX) << 4) +
+				alu->dst_start);
+
+		if (flg_idx >= ICE_PARSER_FLG_NUM) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Invalid flag %d\n",
+				  flg_idx);
+			return;
+		}
+		_ice_flg_add(rt, flg_idx, val);
+	} else {
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unexpected Dest Register Bit set, RegisterID %d Start %d\n",
+			  alu->dst_reg_id, alu->dst_start);
+	}
+}
+
+static void _ice_alu_exe(struct ice_parser_rt *rt, struct ice_alu *alu)
+{
+	u16 dst, src, shift, imm;
+
+	if (alu->shift_xlate_sel) {
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "shift_xlate_sel != 0 is not expected\n");
+		return;
+	}
+
+	_ice_po_update(rt, alu);
+	_ice_flg_update(rt, alu);
+
+	dst = rt->gpr[alu->dst_reg_id];
+	src = _ice_reg_bit_sel(rt,
+			       alu->src_reg_id, alu->src_start, alu->src_len);
+	shift = alu->shift_xlate_key;
+	imm = alu->imm;
+
+	switch (alu->opc) {
+	case ICE_ALU_PARK:
+		break;
+	case ICE_ALU_MOV_ADD:
+		dst = (u16)((src << shift) + imm);
+		_ice_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	case ICE_ALU_ADD:
+		dst += (u16)((src << shift) + imm);
+		_ice_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	case ICE_ALU_ORLT:
+		if (src < imm)
+			_ice_dst_reg_bit_set(rt, alu, true);
+		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_OREQ:
+		if (src == imm)
+			_ice_dst_reg_bit_set(rt, alu, true);
+		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_SETEQ:
+		if (src == imm)
+			_ice_dst_reg_bit_set(rt, alu, true);
+		else
+			_ice_dst_reg_bit_set(rt, alu, false);
+		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_MOV_XOR:
+		dst = (u16)((u16)(src << shift) ^ (u16)imm);
+		_ice_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	default:
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported ALU instruction %d\n",
+			  alu->opc);
+		break;
+	}
+}
+
+static void _ice_alu0_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0 ...\n");
+	_ice_alu_exe(rt, rt->alu0);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0 done.\n");
+}
+
+static void _ice_alu1_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1 ...\n");
+	_ice_alu_exe(rt, rt->alu1);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1 done.\n");
+}
+
+static void _ice_alu2_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2 ...\n");
+	_ice_alu_exe(rt, rt->alu2);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2 done.\n");
+}
+
+static void _ice_pu_exe(struct ice_parser_rt *rt)
+{
+	struct ice_gpr_pu *pu = &rt->pu;
+	int i;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers ...\n");
+
+	for (i = 0; i < ICE_PARSER_GPR_NUM; i++) {
+		if (pu->gpr_val_upd[i])
+			_ice_rt_gpr_set(rt, i, pu->gpr_val[i]);
+	}
+
+	for (i = 0; i < ICE_PARSER_FLG_NUM; i++) {
+		if (pu->flg_msk & BIT(i))
+			_ice_rt_flag_set(rt, i, pu->flg_val & BIT(i));
+	}
+
+	for (i = 0; i < ICE_PARSER_ERR_NUM; i++) {
+		if (pu->err_msk & BIT(1))
+			_ice_rt_err_set(rt, i, pu->err_val & BIT(i));
+	}
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers done.\n");
+}
+
+static void _ice_alu_pg_exe(struct ice_parser_rt *rt)
+{
+	memset(&rt->pu, 0, sizeof(rt->pu));
+
+	if (rt->pg_pri == ICE_PG_P0) {
+		_ice_pg_exe(rt);
+		_ice_alu0_exe(rt);
+		_ice_alu1_exe(rt);
+		_ice_alu2_exe(rt);
+	} else if (rt->pg_pri == ICE_PG_P1) {
+		_ice_alu0_exe(rt);
+		_ice_pg_exe(rt);
+		_ice_alu1_exe(rt);
+		_ice_alu2_exe(rt);
+	} else if (rt->pg_pri == ICE_PG_P2) {
+		_ice_alu0_exe(rt);
+		_ice_alu1_exe(rt);
+		_ice_pg_exe(rt);
+		_ice_alu2_exe(rt);
+	} else if (rt->pg_pri == ICE_PG_P3) {
+		_ice_alu0_exe(rt);
+		_ice_alu1_exe(rt);
+		_ice_alu2_exe(rt);
+		_ice_pg_exe(rt);
+	}
+
+	_ice_pu_exe(rt);
+
+	if (rt->action->ho_inc == 0)
+		return;
+
+	if (rt->action->ho_polarity)
+		_ice_rt_ho_set(rt,
+			       rt->gpr[ICE_GPR_HO_IDX] + rt->action->ho_inc);
+	else
+		_ice_rt_ho_set(rt,
+			       rt->gpr[ICE_GPR_HO_IDX] - rt->action->ho_inc);
+}
+
+static void _ice_proto_off_update(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+
+	if (rt->action->is_pg) {
+		struct ice_proto_grp_item *proto_grp =
+			&psr->proto_grp_table[rt->action->proto_id];
+		u16 po;
+		int i;
+
+		for (i = 0; i < ICE_PROTO_COUNT_PER_GRP; i++) {
+			struct ice_proto_off *entry = &proto_grp->po[i];
+
+			if (entry->proto_id == U8_MAX)
+				break;
+
+			if (!entry->polarity)
+				po = (u16)(rt->po + entry->offset);
+			else
+				po = (u16)(rt->po - entry->offset);
+
+			rt->protocols[entry->proto_id]	= true;
+			rt->offsets[entry->proto_id]	= po;
+
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Protocol %d at offset %d\n",
+				  entry->proto_id, po);
+		}
+	} else {
+		rt->protocols[rt->action->proto_id]	= true;
+		rt->offsets[rt->action->proto_id]	= rt->po;
+
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Protocol %d at offset %d\n",
+			  rt->action->proto_id, rt->po);
+	}
+}
+
+static void _ice_marker_set(struct ice_parser_rt *rt, int idx)
+{
+	int x = idx / BITS_PER_BYTE;
+	int y = idx % BITS_PER_BYTE;
+
+	rt->markers[x] |= (u8)BIT(y);
+}
+
+static void _ice_marker_update(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+
+	if (rt->action->is_mg) {
+		struct ice_mk_grp_item *mk_grp =
+			&psr->mk_grp_table[rt->action->marker_id];
+		int i;
+
+		for (i = 0; i < ICE_MARKER_ID_NUM; i++) {
+			u8 marker = mk_grp->markers[i];
+
+			if (marker == (ICE_MARKER_ID_SIZE * BITS_PER_BYTE - 1))
+				break;
+
+			_ice_marker_set(rt, marker);
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Marker %d\n",
+				  marker);
+		}
+	} else {
+		if (rt->action->marker_id !=
+		    (ICE_MARKER_ID_SIZE * BITS_PER_BYTE - 1))
+			_ice_marker_set(rt, rt->action->marker_id);
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Marker %d\n",
+			  rt->action->marker_id);
+	}
+}
+
+static u16 _ice_ptype_resolve(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_ptype_mk_tcam_item *item;
+
+	item = ice_ptype_mk_tcam_match(psr->ptype_mk_tcam_table,
+				       rt->markers, ICE_MARKER_ID_SIZE);
+	if (item)
+		return item->ptype;
+
+	return U16_MAX;
+}
+
+static void _ice_proto_off_resolve(struct ice_parser_rt *rt,
+				   struct ice_parser_result *rslt)
+{
+	int i;
+
+	for (i = 0; i < ICE_PO_PAIR_SIZE - 1; i++) {
+		if (rt->protocols[i]) {
+			rslt->po[rslt->po_num].proto_id	= (u8)i;
+			rslt->po[rslt->po_num].offset	= rt->offsets[i];
+			rslt->po_num++;
+		}
+	}
+}
+
+static void _ice_result_resolve(struct ice_parser_rt *rt,
+				struct ice_parser_result *rslt)
+{
+	struct ice_parser *psr = rt->psr;
+
+	memset(rslt, 0, sizeof(*rslt));
+
+	rslt->ptype = _ice_ptype_resolve(rt);
+
+	memcpy(&rslt->flags_psr, &rt->gpr[ICE_GPR_FLG_IDX],
+	       ICE_PARSER_FLAG_PSR_SIZE);
+	rslt->flags_pkt	= ice_flg_redirect(psr->flg_rd_table, rslt->flags_psr);
+	rslt->flags_sw	= ice_xlt_kb_flag_get(psr->xlt_kb_sw, rslt->flags_pkt);
+	rslt->flags_fd	= ice_xlt_kb_flag_get(psr->xlt_kb_fd, rslt->flags_pkt);
+	rslt->flags_rss	= ice_xlt_kb_flag_get(psr->xlt_kb_rss, rslt->flags_pkt);
+
+	_ice_proto_off_resolve(rt, rslt);
+}
+
 /**
  * ice_parser_rt_execute - parser execution routine
  * @rt: pointer to the parser runtime
@@ -88,5 +739,103 @@ void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
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
+	node = rt->gpr[ICE_GPR_NN_IDX];
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Start with Node: %d\n", node);
+
+	while (true) {
+		struct ice_bst_tcam_item *bst;
+		struct ice_imem_item *imem;
+
+		pc = rt->gpr[ICE_GPR_NP_IDX];
+		imem = &psr->imem_table[pc];
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load imem at pc: %d\n",
+			  pc);
+
+		_ice_bst_key_init(rt, imem);
+		bst = ice_bst_tcam_match(psr->bst_tcam_table, rt->bst_key);
+
+		if (!bst) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "No Boost TCAM Match\n");
+			_ice_imem_pgk_init(rt, imem);
+			_ice_imem_alu0_set(rt, imem);
+			_ice_imem_alu1_set(rt, imem);
+			_ice_imem_alu2_set(rt, imem);
+			_ice_imem_pgp_set(rt, imem);
+		} else {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Boost TCAM Match address: %d\n",
+				  bst->addr);
+			if (imem->b_m.pg) {
+				_ice_bst_pgk_init(rt, bst);
+				_ice_bst_pgp_set(rt, bst);
+			} else {
+				_ice_imem_pgk_init(rt, imem);
+				_ice_imem_pgp_set(rt, imem);
+			}
+
+			if (imem->b_m.alu0)
+				_ice_bst_alu0_set(rt, bst);
+			else
+				_ice_imem_alu0_set(rt, imem);
+
+			if (imem->b_m.alu1)
+				_ice_bst_alu1_set(rt, bst);
+			else
+				_ice_imem_alu1_set(rt, imem);
+
+			if (imem->b_m.alu2)
+				_ice_bst_alu2_set(rt, bst);
+			else
+				_ice_imem_alu2_set(rt, imem);
+		}
+
+		rt->action = NULL;
+		pg_cam = _ice_pg_cam_match(rt);
+		if (!pg_cam) {
+			pg_nm_cam = _ice_pg_nm_cam_match(rt);
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
+		_ice_alu_pg_exe(rt);
+		_ice_marker_update(rt);
+		_ice_proto_off_update(rt);
+
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Go to node %d\n",
+			  rt->action->next_node);
+
+		if (rt->action->is_last_round) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Last Round in ParseGraph Action, stop parsing.\n");
+			break;
+		}
+
+		if (rt->gpr[ICE_GPR_HO_IDX] >= rt->pkt_len) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Header Offset %d is larger than packet len %d, stop parsing\n",
+				  rt->gpr[ICE_GPR_HO_IDX], rt->pkt_len);
+			break;
+		}
+	}
+
+	_ice_result_resolve(rt, rslt);
+
+	return status;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.h b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
index 9356950aa0f0..7a11ffd3d5a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_rt.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
@@ -21,6 +21,28 @@ struct ice_parser_ctx;
 #define ICE_PARSER_PKT_REV	32
 #define ICE_PARSER_GPR_NUM	128
 #define ICE_PARSER_FLG_NUM	64
+#define ICE_PARSER_ERR_NUM	16
+#define ICE_BST_KEY_SIZE	10
+#define ICE_MARKER_ID_SIZE	9
+#define ICE_MARKER_ID_NUM	8
+#define ICE_PO_PAIR_SIZE	256
+
+struct ice_gpr_pu {
+	/* array of flags to indicate if GRP needs to be updated */
+	bool gpr_val_upd[ICE_PARSER_GPR_NUM];
+	u16 gpr_val[ICE_PARSER_GPR_NUM];
+	u64 flg_msk;
+	u64 flg_val;
+	u16 err_msk;
+	u16 err_val;
+};
+
+enum ice_pg_pri {
+	ICE_PG_P0	= 0,
+	ICE_PG_P1	= 1,
+	ICE_PG_P2	= 2,
+	ICE_PG_P3	= 3,
+};
 
 struct ice_parser_rt {
 	struct ice_parser *psr;
@@ -28,6 +50,17 @@ struct ice_parser_rt {
 	u8 pkt_buf[ICE_PARSER_MAX_PKT_LEN + ICE_PARSER_PKT_REV];
 	u16 pkt_len;
 	u16 po;
+	u8 bst_key[ICE_BST_KEY_SIZE];
+	struct ice_pg_cam_key pg_key;
+	struct ice_alu *alu0;
+	struct ice_alu *alu1;
+	struct ice_alu *alu2;
+	struct ice_pg_cam_action *action;
+	u8 pg_pri;
+	struct ice_gpr_pu pu;
+	u8 markers[ICE_MARKER_ID_SIZE];
+	bool protocols[ICE_PO_PAIR_SIZE];
+	u16 offsets[ICE_PO_PAIR_SIZE];
 };
 
 void ice_parser_rt_reset(struct ice_parser_rt *rt);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
