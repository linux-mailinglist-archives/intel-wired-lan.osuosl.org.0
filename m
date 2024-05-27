Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1EF8D0A43
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 20:59:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F29A7811E8;
	Mon, 27 May 2024 18:59:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bcn8xrRtDzsT; Mon, 27 May 2024 18:58:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 939588122A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716836338;
	bh=oQTQENc1sK0tIGw9H4VVayDkWr9+Y0esB/2UgY+P5u8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QleuG6/9vkoqvAzN2uuDg+A2eKHEq+tq1QoPgriliNIsVck2glbPj3ui3fVqkJWz1
	 kay4K9CCyGL+4dtjoX00V+8rzipAFTW7g+EsglzobA/2PKaQQybzflG3t5GLy3Lgbh
	 xCzREZ+HxLlX3DM/t0nmCYNbqh7BlA0Z5rlj4K+m1M9YJDHCy7Qh/AE6BpGO9yaN1k
	 gMbAOgoszOfe5wZYh212O4dsOmhROxLrbTddaGG4jG70VbD7FWLFlNdKXrlBbSWfAP
	 tJSMJip61eq4HNNlIVN4TZh2JPPVHM5JIv33TgnFJ6y4rptfCqTFnikUmAJiJgUMqD
	 TFtgkWSmpq6wQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 939588122A;
	Mon, 27 May 2024 18:58:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 697721D1FF9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 543C280FA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tKD_6pxAx_ZE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 18:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 21E0580C2C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21E0580C2C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21E0580C2C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:50 +0000 (UTC)
X-CSE-ConnectionGUID: /5U9bQslTRCiXgqMJ66yLQ==
X-CSE-MsgGUID: g8YYDvIoSCCLmSR4X2HjOA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353930"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="13353930"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:50 -0700
X-CSE-ConnectionGUID: 5e6i08TTSUiuRfsWAh0Yyw==
X-CSE-MsgGUID: 3EfdPTFoR4yQSKIUrqVjiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="34910026"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.208])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:47 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 May 2024 12:58:02 -0600
Message-ID: <20240527185810.3077299-6-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240527185810.3077299-1-ahmed.zaki@intel.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716836331; x=1748372331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JMpVVVnXkVO++iiIZvjxtcIygVKPCW6oF6CQpiAvvyw=;
 b=nBkt2MFaFPynIPOvXHrTmW+GWxIAQ/hQMfJ0IVgK7edswVcGbNLHlas3
 ZrpVBVExMQvVwqfQ7I/rp/3w8Ax6N0eE0IpSWVWP4I5emmK/KmFbW+vhe
 7eZIccW5ThtDHe4DjAei/See7T45p8gB5xbUh0OZ/w+nW1FVG1gKX6c63
 7izyci4YLGU+sIn/lh7hRxkec8PDnOy8qLhKwESQoqTc6/qSRZ/uUhQ5t
 Qq1F5ziP8YY2NCTfmdwLk6AsWPuxH3g61FruEC/EiFxjkCR6C1NhX/Szh
 n70bRaEQwjqN214DvtbSfQhHPZaAmWhpl6TpZB9HbMo5DDQ0ufr8I5PFH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nBkt2MFa
Subject: [Intel-wired-lan] [PATCH iwl-next v2 05/13] ice: add parser
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Implement the core work of the runtime parser via:
- ice_parser_rt_execute()
- ice_parser_rt_reset()
- ice_parser_rt_pkt_buf_set()

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice_parser.c   |  39 +
 drivers/net/ethernet/intel/ice/ice_parser.h   |  91 ++
 .../net/ethernet/intel/ice/ice_parser_rt.c    | 860 ++++++++++++++++++
 4 files changed, 991 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.c

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 23fa3f7f36ef..b4f6fa4ba13d 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -29,6 +29,7 @@ ice-y := ice_main.o	\
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
 	 ice_parser.o    \
+	 ice_parser_rt.o \
 	 ice_idc.o	\
 	 devlink/devlink.o	\
 	 devlink/devlink_port.o \
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 91dbe70d7fe5..eacf332df0a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -1936,6 +1936,7 @@ struct ice_parser *ice_parser_create(struct ice_hw *hw)
 		return ERR_PTR(-ENOMEM);
 
 	p->hw = hw;
+	p->rt.psr = p;
 
 	p->imem_table = ice_imem_table_get(hw);
 	if (IS_ERR(p->imem_table)) {
@@ -2064,3 +2065,41 @@ void ice_parser_destroy(struct ice_parser *psr)
 
 	kfree(psr);
 }
+
+/**
+ * ice_parser_run - parse on a packet in binary and return the result
+ * @psr: pointer to a parser instance
+ * @pkt_buf: packet data
+ * @pkt_len: packet length
+ * @rslt: input/output parameter to save parser result.
+ */
+int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
+		   int pkt_len, struct ice_parser_result *rslt)
+{
+	ice_parser_rt_reset(&psr->rt);
+	ice_parser_rt_pktbuf_set(&psr->rt, pkt_buf, pkt_len);
+
+	return ice_parser_rt_execute(&psr->rt, rslt);
+}
+
+/**
+ * ice_parser_result_dump - dump a parser result info
+ * @hw: pointer to the hardware structure
+ * @rslt: parser result info to dump
+ */
+void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	int i;
+
+	dev_info(dev, "ptype = %d\n", rslt->ptype);
+	for (i = 0; i < rslt->po_num; i++)
+		dev_info(dev, "proto = %d, offset = %d\n",
+			 rslt->po[i].proto_id, rslt->po[i].offset);
+
+	dev_info(dev, "flags_psr = 0x%016llx\n", rslt->flags_psr);
+	dev_info(dev, "flags_pkt = 0x%016llx\n", rslt->flags_pkt);
+	dev_info(dev, "flags_sw = 0x%04x\n", rslt->flags_sw);
+	dev_info(dev, "flags_fd = 0x%04x\n", rslt->flags_fd);
+	dev_info(dev, "flags_rss = 0x%04x\n", rslt->flags_rss);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index a4a33225ff45..71172cd7fc7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -363,6 +363,92 @@ struct ice_xlt_kb {
 u16 ice_xlt_kb_flag_get(struct ice_xlt_kb *kb, u64 pkt_flag);
 
 /*** Parser API ***/
+#define ICE_GPR_HV_IDX		64
+#define ICE_GPR_HV_SIZE		32
+#define ICE_GPR_ERR_IDX		84
+#define ICE_GPR_FLG_IDX		104
+#define ICE_GPR_FLG_SIZE	16
+
+#define ICE_GPR_TSR_IDX		108	/* TSR: TCAM Search Register */
+#define ICE_GPR_NN_IDX		109	/* NN: Next Parsing Cycle Node ID */
+#define ICE_GPR_HO_IDX		110	/* HO: Next Parsing Cycle hdr Offset */
+#define ICE_GPR_NP_IDX		111	/* NP: Next Parsing Cycle */
+
+#define ICE_PARSER_MAX_PKT_LEN	504
+#define ICE_PARSER_PKT_REV	32
+#define ICE_PARSER_GPR_NUM	128
+#define ICE_PARSER_FLG_NUM	64
+#define ICE_PARSER_ERR_NUM	16
+#define ICE_BST_KEY_SIZE	10
+#define ICE_MARKER_ID_SIZE	9
+#define ICE_MARKER_MAX_SIZE	\
+		(ICE_MARKER_ID_SIZE * BITS_PER_BYTE - 1)
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
+enum ice_pg_prio {
+	ICE_PG_P0	= 0,
+	ICE_PG_P1	= 1,
+	ICE_PG_P2	= 2,
+	ICE_PG_P3	= 3,
+};
+
+struct ice_parser_rt {
+	struct ice_parser *psr;
+	u16 gpr[ICE_PARSER_GPR_NUM];
+	u8 pkt_buf[ICE_PARSER_MAX_PKT_LEN + ICE_PARSER_PKT_REV];
+	u16 pkt_len;
+	u16 po;
+	u8 bst_key[ICE_BST_KEY_SIZE];
+	struct ice_pg_cam_key pg_key;
+	struct ice_alu *alu0;
+	struct ice_alu *alu1;
+	struct ice_alu *alu2;
+	struct ice_pg_cam_action *action;
+	u8 pg_prio;
+	struct ice_gpr_pu pu;
+	u8 markers[ICE_MARKER_ID_SIZE];
+	bool protocols[ICE_PO_PAIR_SIZE];
+	u16 offsets[ICE_PO_PAIR_SIZE];
+};
+
+struct ice_parser_proto_off {
+	u8 proto_id;	/* hardware protocol ID */
+	u16 offset;	/* offset from the start of the protocol header */
+};
+
+#define ICE_PARSER_PROTO_OFF_PAIR_SIZE	16
+#define ICE_PARSER_FLAG_PSR_SIZE	8
+
+struct ice_parser_result {
+	u16 ptype;	/* 16 bits hardware PTYPE */
+	/* array of protocol and header offset pairs */
+	struct ice_parser_proto_off po[ICE_PARSER_PROTO_OFF_PAIR_SIZE];
+	int po_num;	/* # of protocol-offset pairs must <= 16 */
+	u64 flags_psr;	/* parser flags */
+	u64 flags_pkt;	/* packet flags */
+	u16 flags_sw;	/* key builder flags for SW */
+	u16 flags_acl;	/* key builder flags for ACL */
+	u16 flags_fd;	/* key builder flags for FD */
+	u16 flags_rss;	/* key builder flags for RSS */
+};
+
+void ice_parser_rt_reset(struct ice_parser_rt *rt);
+void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
+			      int pkt_len);
+int ice_parser_rt_execute(struct ice_parser_rt *rt,
+			  struct ice_parser_result *rslt);
+
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
 
@@ -385,8 +471,13 @@ struct ice_parser {
 	struct ice_xlt_kb *xlt_kb_acl;
 	struct ice_xlt_kb *xlt_kb_fd;
 	struct ice_xlt_kb *xlt_kb_rss;
+
+	struct ice_parser_rt rt;
 };
 
 struct ice_parser *ice_parser_create(struct ice_hw *hw);
 void ice_parser_destroy(struct ice_parser *psr);
+int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
+		   int pkt_len, struct ice_parser_result *rslt);
+void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
 #endif /* _ICE_PARSER_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
new file mode 100644
index 000000000000..c96ba8ed388a
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
@@ -0,0 +1,860 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2024 Intel Corporation */
+
+#include "ice_common.h"
+
+static void ice_rt_tsr_set(struct ice_parser_rt *rt, u16 tsr)
+{
+	rt->gpr[ICE_GPR_TSR_IDX] = tsr;
+}
+
+static void ice_rt_ho_set(struct ice_parser_rt *rt, u16 ho)
+{
+	rt->gpr[ICE_GPR_HO_IDX] = ho;
+	memcpy(&rt->gpr[ICE_GPR_HV_IDX], &rt->pkt_buf[ho], ICE_GPR_HV_SIZE);
+}
+
+static void ice_rt_np_set(struct ice_parser_rt *rt, u16 pc)
+{
+	rt->gpr[ICE_GPR_NP_IDX] = pc;
+}
+
+static void ice_rt_nn_set(struct ice_parser_rt *rt, u16 node)
+{
+	rt->gpr[ICE_GPR_NN_IDX] = node;
+}
+
+static
+void ice_rt_flag_set(struct ice_parser_rt *rt, unsigned int idx, bool set)
+{
+	struct ice_hw *hw = rt->psr->hw;
+	unsigned int word, id;
+
+	word = idx / ICE_GPR_FLG_SIZE;
+	id = idx % ICE_GPR_FLG_SIZE;
+
+	if (set) {
+		rt->gpr[ICE_GPR_FLG_IDX + word] |= (u16)BIT(id);
+		ice_debug(hw, ICE_DBG_PARSER, "Set parser flag %u\n", idx);
+	} else {
+		rt->gpr[ICE_GPR_FLG_IDX + word] &= ~(u16)BIT(id);
+		ice_debug(hw, ICE_DBG_PARSER, "Clear parser flag %u\n", idx);
+	}
+}
+
+static void ice_rt_gpr_set(struct ice_parser_rt *rt, int idx, u16 val)
+{
+	struct ice_hw *hw = rt->psr->hw;
+
+	if (idx == ICE_GPR_HO_IDX)
+		ice_rt_ho_set(rt, val);
+	else
+		rt->gpr[idx] = val;
+
+	ice_debug(hw, ICE_DBG_PARSER, "Set GPR %d value %d\n", idx, val);
+}
+
+static void ice_rt_err_set(struct ice_parser_rt *rt, unsigned int idx, bool set)
+{
+	struct ice_hw *hw = rt->psr->hw;
+
+	if (set) {
+		rt->gpr[ICE_GPR_ERR_IDX] |= (u16)BIT(idx);
+		ice_debug(hw, ICE_DBG_PARSER, "Set parser error %u\n", idx);
+	} else {
+		rt->gpr[ICE_GPR_ERR_IDX] &= ~(u16)BIT(idx);
+		ice_debug(hw, ICE_DBG_PARSER, "Reset parser error %u\n", idx);
+	}
+}
+
+/**
+ * ice_parser_rt_reset - reset the parser runtime
+ * @rt: pointer to the parser runtime
+ */
+void ice_parser_rt_reset(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_metainit_item *mi;
+	unsigned int i;
+
+	mi = &psr->mi_table[0];
+
+	memset(rt, 0, sizeof(*rt));
+	rt->psr = psr;
+
+	ice_rt_tsr_set(rt, mi->tsr);
+	ice_rt_ho_set(rt, mi->ho);
+	ice_rt_np_set(rt, mi->pc);
+	ice_rt_nn_set(rt, mi->pg_rn);
+
+	for (i = 0; i < ICE_PARSER_FLG_NUM; i++) {
+		if (mi->flags & BIT(i))
+			ice_rt_flag_set(rt, i, true);
+	}
+}
+
+/**
+ * ice_parser_rt_pktbuf_set - set a packet into parser runtime
+ * @rt: pointer to the parser runtime
+ * @pkt_buf: buffer with packet data
+ * @pkt_len: packet buffer length
+ */
+void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
+			      int pkt_len)
+{
+	int len = min(ICE_PARSER_MAX_PKT_LEN, pkt_len);
+	u16 ho = rt->gpr[ICE_GPR_HO_IDX];
+
+	memcpy(rt->pkt_buf, pkt_buf, len);
+	rt->pkt_len = pkt_len;
+
+	memcpy(&rt->gpr[ICE_GPR_HV_IDX], &rt->pkt_buf[ho], ICE_GPR_HV_SIZE);
+}
+
+static void ice_bst_key_init(struct ice_parser_rt *rt,
+			     struct ice_imem_item *imem)
+{
+	u8 tsr = (u8)rt->gpr[ICE_GPR_TSR_IDX];
+	u16 ho = rt->gpr[ICE_GPR_HO_IDX];
+	u8 *key = rt->bst_key;
+	int idd, i;
+
+	idd = ICE_BST_TCAM_KEY_SIZE - 1;
+	if (imem->b_kb.tsr_ctrl)
+		key[idd] = tsr;
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
+static u16 ice_bit_rev_u16(u16 v, int len)
+{
+	return bitrev16(v) >> (BITS_PER_TYPE(v) - len);
+}
+
+static u32 ice_bit_rev_u32(u32 v, int len)
+{
+	return bitrev32(v) >> (BITS_PER_TYPE(v) - len);
+}
+
+static u32 ice_hv_bit_sel(struct ice_parser_rt *rt, int start, int len)
+{
+	int offset;
+	u32 buf[2];
+	u64 val;
+
+	offset = ICE_GPR_HV_IDX + (start / BITS_PER_TYPE(u16));
+
+	memcpy(buf, &rt->gpr[offset], sizeof(buf));
+
+	buf[0] = bitrev8x4(buf[0]);
+	buf[1] = bitrev8x4(buf[1]);
+
+	val = *(u64 *)buf;
+	val >>= start % BITS_PER_TYPE(u16);
+
+	return ice_bit_rev_u32(val, len);
+}
+
+static u32 ice_pk_build(struct ice_parser_rt *rt,
+			struct ice_np_keybuilder *kb)
+{
+	if (kb->opc == ICE_NPKB_OPC_EXTRACT)
+		return ice_hv_bit_sel(rt, kb->start_reg0, kb->len_reg1);
+	else if (kb->opc == ICE_NPKB_OPC_BUILD)
+		return rt->gpr[kb->start_reg0] |
+		       ((u32)rt->gpr[kb->len_reg1] << BITS_PER_TYPE(u16));
+	else if (kb->opc == ICE_NPKB_OPC_BYPASS)
+		return 0;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported OP Code %u\n",
+		  kb->opc);
+	return U32_MAX;
+}
+
+static bool ice_flag_get(struct ice_parser_rt *rt, unsigned int index)
+{
+	int word = index / ICE_GPR_FLG_SIZE;
+	int id = index % ICE_GPR_FLG_SIZE;
+
+	return !!(rt->gpr[ICE_GPR_FLG_IDX + word] & (u16)BIT(id));
+}
+
+static int ice_imem_pgk_init(struct ice_parser_rt *rt,
+			     struct ice_imem_item *imem)
+{
+	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
+	rt->pg_key.next_proto = ice_pk_build(rt, &imem->np_kb);
+	if (rt->pg_key.next_proto == U32_MAX)
+		return -EINVAL;
+
+	if (imem->pg_kb.flag0_ena)
+		rt->pg_key.flag0 = ice_flag_get(rt, imem->pg_kb.flag0_idx);
+	if (imem->pg_kb.flag1_ena)
+		rt->pg_key.flag1 = ice_flag_get(rt, imem->pg_kb.flag1_idx);
+	if (imem->pg_kb.flag2_ena)
+		rt->pg_key.flag2 = ice_flag_get(rt, imem->pg_kb.flag2_idx);
+	if (imem->pg_kb.flag3_ena)
+		rt->pg_key.flag3 = ice_flag_get(rt, imem->pg_kb.flag3_idx);
+
+	rt->pg_key.alu_reg = rt->gpr[imem->pg_kb.alu_reg_idx];
+	rt->pg_key.node_id = rt->gpr[ICE_GPR_NN_IDX];
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generate Parse Graph Key: node_id(%d), flag0-3(%d,%d,%d,%d), boost_idx(%d), alu_reg(0x%04x), next_proto(0x%08x)\n",
+		  rt->pg_key.node_id,
+		  rt->pg_key.flag0,
+		  rt->pg_key.flag1,
+		  rt->pg_key.flag2,
+		  rt->pg_key.flag3,
+		  rt->pg_key.boost_idx,
+		  rt->pg_key.alu_reg,
+		  rt->pg_key.next_proto);
+
+	return 0;
+}
+
+static void ice_imem_alu0_set(struct ice_parser_rt *rt,
+			      struct ice_imem_item *imem)
+{
+	rt->alu0 = &imem->alu0;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void ice_imem_alu1_set(struct ice_parser_rt *rt,
+			      struct ice_imem_item *imem)
+{
+	rt->alu1 = &imem->alu1;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void ice_imem_alu2_set(struct ice_parser_rt *rt,
+			      struct ice_imem_item *imem)
+{
+	rt->alu2 = &imem->alu2;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from imem pc %d\n",
+		  imem->idx);
+}
+
+static void ice_imem_pgp_set(struct ice_parser_rt *rt,
+			     struct ice_imem_item *imem)
+{
+	rt->pg_prio = imem->pg_prio;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d from imem pc %d\n",
+		  rt->pg_prio, imem->idx);
+}
+
+static int ice_bst_pgk_init(struct ice_parser_rt *rt,
+			    struct ice_bst_tcam_item *bst)
+{
+	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
+	rt->pg_key.boost_idx = bst->hit_idx_grp;
+	rt->pg_key.next_proto = ice_pk_build(rt, &bst->np_kb);
+	if (rt->pg_key.next_proto == U32_MAX)
+		return -EINVAL;
+
+	if (bst->pg_kb.flag0_ena)
+		rt->pg_key.flag0 = ice_flag_get(rt, bst->pg_kb.flag0_idx);
+	if (bst->pg_kb.flag1_ena)
+		rt->pg_key.flag1 = ice_flag_get(rt, bst->pg_kb.flag1_idx);
+	if (bst->pg_kb.flag2_ena)
+		rt->pg_key.flag2 = ice_flag_get(rt, bst->pg_kb.flag2_idx);
+	if (bst->pg_kb.flag3_ena)
+		rt->pg_key.flag3 = ice_flag_get(rt, bst->pg_kb.flag3_idx);
+
+	rt->pg_key.alu_reg = rt->gpr[bst->pg_kb.alu_reg_idx];
+	rt->pg_key.node_id = rt->gpr[ICE_GPR_NN_IDX];
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generate Parse Graph Key: node_id(%d), flag0-3(%d,%d,%d,%d), boost_idx(%d), alu_reg(0x%04x), next_proto(0x%08x)\n",
+		  rt->pg_key.node_id,
+		  rt->pg_key.flag0,
+		  rt->pg_key.flag1,
+		  rt->pg_key.flag2,
+		  rt->pg_key.flag3,
+		  rt->pg_key.boost_idx,
+		  rt->pg_key.alu_reg,
+		  rt->pg_key.next_proto);
+
+	return 0;
+}
+
+static void ice_bst_alu0_set(struct ice_parser_rt *rt,
+			     struct ice_bst_tcam_item *bst)
+{
+	rt->alu0 = &bst->alu0;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from boost address %d\n",
+		  bst->addr);
+}
+
+static void ice_bst_alu1_set(struct ice_parser_rt *rt,
+			     struct ice_bst_tcam_item *bst)
+{
+	rt->alu1 = &bst->alu1;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from boost address %d\n",
+		  bst->addr);
+}
+
+static void ice_bst_alu2_set(struct ice_parser_rt *rt,
+			     struct ice_bst_tcam_item *bst)
+{
+	rt->alu2 = &bst->alu2;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from boost address %d\n",
+		  bst->addr);
+}
+
+static void ice_bst_pgp_set(struct ice_parser_rt *rt,
+			    struct ice_bst_tcam_item *bst)
+{
+	rt->pg_prio = bst->pg_prio;
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d from boost address %d\n",
+		  rt->pg_prio, bst->addr);
+}
+
+static struct ice_pg_cam_item *ice_rt_pg_cam_match(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_pg_cam_item *item;
+
+	item = ice_pg_cam_match(psr->pg_cam_table, ICE_PG_CAM_TABLE_SIZE,
+				&rt->pg_key);
+	if (!item)
+		item = ice_pg_cam_match(psr->pg_sp_cam_table,
+					ICE_PG_SP_CAM_TABLE_SIZE, &rt->pg_key);
+	return item;
+}
+
+static
+struct ice_pg_nm_cam_item *ice_rt_pg_nm_cam_match(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_pg_nm_cam_item *item;
+
+	item = ice_pg_nm_cam_match(psr->pg_nm_cam_table,
+				   ICE_PG_NM_CAM_TABLE_SIZE, &rt->pg_key);
+
+	if (!item)
+		item = ice_pg_nm_cam_match(psr->pg_nm_sp_cam_table,
+					   ICE_PG_NM_SP_CAM_TABLE_SIZE,
+					   &rt->pg_key);
+	return item;
+}
+
+static void ice_gpr_add(struct ice_parser_rt *rt, int idx, u16 val)
+{
+	rt->pu.gpr_val_upd[idx] = true;
+	rt->pu.gpr_val[idx] = val;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for register %d value %d\n",
+		  idx, val);
+}
+
+static void ice_pg_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ParseGraph action ...\n");
+
+	ice_gpr_add(rt, ICE_GPR_NP_IDX, rt->action->next_pc);
+	ice_gpr_add(rt, ICE_GPR_NN_IDX, rt->action->next_node);
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ParseGraph action done.\n");
+}
+
+static void ice_flg_add(struct ice_parser_rt *rt, int idx, bool val)
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
+static void ice_flg_update(struct ice_parser_rt *rt, struct ice_alu *alu)
+{
+	u32 hv_bit_sel;
+	int i;
+
+	if (!alu->dedicate_flags_ena)
+		return;
+
+	if (alu->flags_extr_imm) {
+		for (i = 0; i < alu->dst_len; i++)
+			ice_flg_add(rt, alu->dst_start + i,
+				    !!(alu->flags_start_imm & BIT(i)));
+	} else {
+		for (i = 0; i < alu->dst_len; i++) {
+			hv_bit_sel = ice_hv_bit_sel(rt,
+						    alu->flags_start_imm + i,
+						    1);
+			ice_flg_add(rt, alu->dst_start + i, !!hv_bit_sel);
+		}
+	}
+}
+
+static void ice_po_update(struct ice_parser_rt *rt, struct ice_alu *alu)
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
+static u16 ice_reg_bit_sel(struct ice_parser_rt *rt, int reg_idx,
+			   int start, int len)
+{
+	int offset;
+	u32 val;
+
+	offset = ICE_GPR_HV_IDX + (start / BITS_PER_TYPE(u16));
+
+	memcpy(&val, &rt->gpr[offset], sizeof(val));
+
+	val = bitrev8x4(val);
+	val >>= start % BITS_PER_TYPE(u16);
+
+	return ice_bit_rev_u16(val, len);
+}
+
+static void ice_err_add(struct ice_parser_rt *rt, int idx, bool val)
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
+static void ice_dst_reg_bit_set(struct ice_parser_rt *rt, struct ice_alu *alu,
+				bool val)
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
+		ice_err_add(rt, alu->dst_start, val);
+	} else if (alu->dst_reg_id >= ICE_GPR_FLG_IDX) {
+		flg_idx = (u16)(((alu->dst_reg_id - ICE_GPR_FLG_IDX) << 4) +
+				alu->dst_start);
+
+		if (flg_idx >= ICE_PARSER_FLG_NUM) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Invalid flag %d\n",
+				  flg_idx);
+			return;
+		}
+		ice_flg_add(rt, flg_idx, val);
+	} else {
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unexpected Dest Register Bit set, RegisterID %d Start %d\n",
+			  alu->dst_reg_id, alu->dst_start);
+	}
+}
+
+static void ice_alu_exe(struct ice_parser_rt *rt, struct ice_alu *alu)
+{
+	u16 dst, src, shift, imm;
+
+	if (alu->shift_xlate_sel) {
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "shift_xlate_sel != 0 is not expected\n");
+		return;
+	}
+
+	ice_po_update(rt, alu);
+	ice_flg_update(rt, alu);
+
+	dst = rt->gpr[alu->dst_reg_id];
+	src = ice_reg_bit_sel(rt, alu->src_reg_id,
+			      alu->src_start, alu->src_len);
+	shift = alu->shift_xlate_key;
+	imm = alu->imm;
+
+	switch (alu->opc) {
+	case ICE_ALU_PARK:
+		break;
+	case ICE_ALU_MOV_ADD:
+		dst = (src << shift) + imm;
+		ice_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	case ICE_ALU_ADD:
+		dst += (src << shift) + imm;
+		ice_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	case ICE_ALU_ORLT:
+		if (src < imm)
+			ice_dst_reg_bit_set(rt, alu, true);
+		ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_OREQ:
+		if (src == imm)
+			ice_dst_reg_bit_set(rt, alu, true);
+		ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_SETEQ:
+		ice_dst_reg_bit_set(rt, alu, src == imm);
+		ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
+		break;
+	case ICE_ALU_MOV_XOR:
+		dst = (src << shift) ^ imm;
+		ice_gpr_add(rt, alu->dst_reg_id, dst);
+		break;
+	default:
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported ALU instruction %d\n",
+			  alu->opc);
+		break;
+	}
+}
+
+static void ice_alu0_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0 ...\n");
+	ice_alu_exe(rt, rt->alu0);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0 done.\n");
+}
+
+static void ice_alu1_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1 ...\n");
+	ice_alu_exe(rt, rt->alu1);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1 done.\n");
+}
+
+static void ice_alu2_exe(struct ice_parser_rt *rt)
+{
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2 ...\n");
+	ice_alu_exe(rt, rt->alu2);
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2 done.\n");
+}
+
+static void ice_pu_exe(struct ice_parser_rt *rt)
+{
+	struct ice_gpr_pu *pu = &rt->pu;
+	unsigned int i;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers ...\n");
+
+	for (i = 0; i < ICE_PARSER_GPR_NUM; i++) {
+		if (pu->gpr_val_upd[i])
+			ice_rt_gpr_set(rt, i, pu->gpr_val[i]);
+	}
+
+	for (i = 0; i < ICE_PARSER_FLG_NUM; i++) {
+		if (pu->flg_msk & BIT(i))
+			ice_rt_flag_set(rt, i, pu->flg_val & BIT(i));
+	}
+
+	for (i = 0; i < ICE_PARSER_ERR_NUM; i++) {
+		if (pu->err_msk & BIT(i))
+			ice_rt_err_set(rt, i, pu->err_val & BIT(i));
+	}
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers done.\n");
+}
+
+static void ice_alu_pg_exe(struct ice_parser_rt *rt)
+{
+	memset(&rt->pu, 0, sizeof(rt->pu));
+
+	switch (rt->pg_prio) {
+	case (ICE_PG_P0):
+		ice_pg_exe(rt);
+		ice_alu0_exe(rt);
+		ice_alu1_exe(rt);
+		ice_alu2_exe(rt);
+		break;
+	case (ICE_PG_P1):
+		ice_alu0_exe(rt);
+		ice_pg_exe(rt);
+		ice_alu1_exe(rt);
+		ice_alu2_exe(rt);
+		break;
+	case (ICE_PG_P2):
+		ice_alu0_exe(rt);
+		ice_alu1_exe(rt);
+		ice_pg_exe(rt);
+		ice_alu2_exe(rt);
+		break;
+	case (ICE_PG_P3):
+		ice_alu0_exe(rt);
+		ice_alu1_exe(rt);
+		ice_alu2_exe(rt);
+		ice_pg_exe(rt);
+		break;
+	}
+
+	ice_pu_exe(rt);
+
+	if (rt->action->ho_inc == 0)
+		return;
+
+	if (rt->action->ho_polarity)
+		ice_rt_ho_set(rt, rt->gpr[ICE_GPR_HO_IDX] + rt->action->ho_inc);
+	else
+		ice_rt_ho_set(rt, rt->gpr[ICE_GPR_HO_IDX] - rt->action->ho_inc);
+}
+
+static void ice_proto_off_update(struct ice_parser_rt *rt)
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
+				po = rt->po + entry->offset;
+			else
+				po = rt->po - entry->offset;
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
+
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Protocol %d at offset %d\n",
+			  rt->action->proto_id, rt->po);
+	}
+}
+
+static void ice_marker_set(struct ice_parser_rt *rt, int idx)
+{
+	unsigned int byte = idx / BITS_PER_BYTE;
+	unsigned int bit = idx % BITS_PER_BYTE;
+
+	rt->markers[byte] |= (u8)BIT(bit);
+}
+
+static void ice_marker_update(struct ice_parser_rt *rt)
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
+			if (marker == ICE_MARKER_MAX_SIZE)
+				break;
+
+			ice_marker_set(rt, marker);
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Marker %d\n",
+				  marker);
+		}
+	} else {
+		if (rt->action->marker_id != ICE_MARKER_MAX_SIZE)
+			ice_marker_set(rt, rt->action->marker_id);
+
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Marker %d\n",
+			  rt->action->marker_id);
+	}
+}
+
+static u16 ice_ptype_resolve(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_ptype_mk_tcam_item *item;
+
+	item = ice_ptype_mk_tcam_match(psr->ptype_mk_tcam_table,
+				       rt->markers, ICE_MARKER_ID_SIZE);
+	if (item)
+		return item->ptype;
+
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Could not resolve PTYPE\n");
+	return U16_MAX;
+}
+
+static void ice_proto_off_resolve(struct ice_parser_rt *rt,
+				  struct ice_parser_result *rslt)
+{
+	int i;
+
+	for (i = 0; i < ICE_PO_PAIR_SIZE - 1; i++) {
+		if (rt->protocols[i]) {
+			rslt->po[rslt->po_num].proto_id = (u8)i;
+			rslt->po[rslt->po_num].offset = rt->offsets[i];
+			rslt->po_num++;
+		}
+	}
+}
+
+static void ice_result_resolve(struct ice_parser_rt *rt,
+			       struct ice_parser_result *rslt)
+{
+	struct ice_parser *psr = rt->psr;
+
+	memset(rslt, 0, sizeof(*rslt));
+
+	memcpy(&rslt->flags_psr, &rt->gpr[ICE_GPR_FLG_IDX],
+	       ICE_PARSER_FLAG_PSR_SIZE);
+	rslt->flags_pkt = ice_flg_redirect(psr->flg_rd_table, rslt->flags_psr);
+	rslt->flags_sw = ice_xlt_kb_flag_get(psr->xlt_kb_sw, rslt->flags_pkt);
+	rslt->flags_fd = ice_xlt_kb_flag_get(psr->xlt_kb_fd, rslt->flags_pkt);
+	rslt->flags_rss = ice_xlt_kb_flag_get(psr->xlt_kb_rss, rslt->flags_pkt);
+
+	ice_proto_off_resolve(rt, rslt);
+	rslt->ptype = ice_ptype_resolve(rt);
+}
+
+/**
+ * ice_parser_rt_execute - parser execution routine
+ * @rt: pointer to the parser runtime
+ * @rslt: input/output parameter to save parser result
+ */
+int ice_parser_rt_execute(struct ice_parser_rt *rt,
+			  struct ice_parser_result *rslt)
+{
+	struct ice_pg_nm_cam_item *pg_nm_cam;
+	struct ice_parser *psr = rt->psr;
+	struct ice_pg_cam_item *pg_cam;
+	int status = 0;
+	u16 node;
+	u16 pc;
+
+	node = rt->gpr[ICE_GPR_NN_IDX];
+	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Start with Node: %u\n", node);
+
+	while (true) {
+		struct ice_bst_tcam_item *bst;
+		struct ice_imem_item *imem;
+
+		pc = rt->gpr[ICE_GPR_NP_IDX];
+		imem = &psr->imem_table[pc];
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load imem at pc: %u\n",
+			  pc);
+
+		ice_bst_key_init(rt, imem);
+		bst = ice_bst_tcam_match(psr->bst_tcam_table, rt->bst_key);
+
+		if (!bst) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "No Boost TCAM Match\n");
+			status = ice_imem_pgk_init(rt, imem);
+			if (status)
+				break;
+			ice_imem_alu0_set(rt, imem);
+			ice_imem_alu1_set(rt, imem);
+			ice_imem_alu2_set(rt, imem);
+			ice_imem_pgp_set(rt, imem);
+		} else {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Boost TCAM Match address: %u\n",
+				  bst->addr);
+			if (imem->b_m.pg) {
+				status = ice_bst_pgk_init(rt, bst);
+				if (status)
+					break;
+				ice_bst_pgp_set(rt, bst);
+			} else {
+				status = ice_imem_pgk_init(rt, imem);
+				if (status)
+					break;
+				ice_imem_pgp_set(rt, imem);
+			}
+
+			if (imem->b_m.alu0)
+				ice_bst_alu0_set(rt, bst);
+			else
+				ice_imem_alu0_set(rt, imem);
+
+			if (imem->b_m.alu1)
+				ice_bst_alu1_set(rt, bst);
+			else
+				ice_imem_alu1_set(rt, imem);
+
+			if (imem->b_m.alu2)
+				ice_bst_alu2_set(rt, bst);
+			else
+				ice_imem_alu2_set(rt, imem);
+		}
+
+		rt->action = NULL;
+		pg_cam = ice_rt_pg_cam_match(rt);
+		if (!pg_cam) {
+			pg_nm_cam = ice_rt_pg_nm_cam_match(rt);
+			if (pg_nm_cam) {
+				ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Match ParseGraph Nomatch CAM Address %u\n",
+					  pg_nm_cam->idx);
+				rt->action = &pg_nm_cam->action;
+			}
+		} else {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Match ParseGraph CAM Address %u\n",
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
+		ice_alu_pg_exe(rt);
+		ice_marker_update(rt);
+		ice_proto_off_update(rt);
+
+		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Go to node %u\n",
+			  rt->action->next_node);
+
+		if (rt->action->is_last_round) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Last Round in ParseGraph Action, stop parsing.\n");
+			break;
+		}
+
+		if (rt->gpr[ICE_GPR_HO_IDX] >= rt->pkt_len) {
+			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Header Offset (%u) is larger than packet len (%u), stop parsing\n",
+				  rt->gpr[ICE_GPR_HO_IDX], rt->pkt_len);
+			break;
+		}
+	}
+
+	ice_result_resolve(rt, rslt);
+
+	return status;
+}
-- 
2.43.0

