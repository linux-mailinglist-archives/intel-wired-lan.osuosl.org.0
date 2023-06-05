Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB05721DAA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94772402EF;
	Mon,  5 Jun 2023 05:49:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94772402EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944142;
	bh=DNRrL76OhLMhDZLlLod7SHcZeQkN34WDx7ZYuYqJscY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yeh+GKHbgbSJG2rkz7j5WLeOWRnAjF4WyyLMf/8XtMSALGiZXomd3BqfUrNSObRo0
	 /DgkefFe1PvUl19ny45njwBzzw9mx/0/S/UWktPxMc5gK2a/Awt31bJK0yOMzcHL0e
	 hbDL1caFC+IShgMSLdZhcT9t40poU4nPVnNOp0m1C3TtzOwnQMD2eLGYBTll2YHfN+
	 zEz8TyjImKgGrc8Ibn0nIn4p8BLvXulYuniYu7pdCCrPNoa4Gy7bFkdsPROjn7kJwJ
	 fr1U5ZqWa2mlObTmFYkqCakcL193gQoofJ8kYsY67g2wUkSi94XzgNQriabGRa5sA6
	 8CQvkCMS2jWew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wAN-YG30f3U2; Mon,  5 Jun 2023 05:49:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E96F54031F;
	Mon,  5 Jun 2023 05:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E96F54031F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F2AB1BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 689B5403A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 689B5403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5EGfdI9yJa9u for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82C2840114
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82C2840114
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831881"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831881"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581497"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581497"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:11 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:36 +0800
Message-Id: <20230605054641.2865142-11-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944093; x=1717480093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qxcjX7S98n79bdXn4NUmMVU5haxChZFLrlIXlC6DcbQ=;
 b=aA+V26neuzvSNIMqSIUhueEV3uxfKRjxwqGebAlKS1vzoarmwmcQbzvY
 7f1ddFdiXiH6qJj/VS0Ruk3t35V82ZT5opsktRXaIaON0xazCml1pd3OY
 tlvr5KJzOtNnCYsbzPfkRnf4GQY2HV6W2mxvweMak8fheFXrzMH5bTPAj
 ISkiIXE3EBoMRaWBLOG7nwA/+H9PnNwtTtIqoZOxZWQazGIh8S2T8+ZX5
 S3TkhP80scOT/TujRnrPfrdnt1642gSoyNH1DG95ZIGeJvfLwsUXEHdGO
 byKeGdEKpv9zoB3A1iD2N0xU2W3Z6uQj/MDoxJLiEnxQQ6W9suD6ALiCT
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aA+V26ne
Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/15] ice: add parser runtime
 skeleton
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

Add parser runtime data struct ice_parser_rt.

Add below APIs for parser runtime preparation:
ice_parser_rt_reset
ice_parser_rt_pkt_buf_set

Add below API skeleton for parser runtime execution:
ice_parser_rt_execute

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c   | 39 ++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   | 24 +++++
 .../net/ethernet/intel/ice/ice_parser_rt.c    | 95 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_parser_rt.h    | 27 ++++++
 4 files changed, 185 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.h

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 507b06f1fcfe..eddbc80d71fa 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -304,3 +304,42 @@ void ice_parser_destroy(struct ice_parser *psr)
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
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
+	int i;
+
+	dev_info(ice_hw_to_dev(hw), "ptype = %d\n", rslt->ptype);
+	for (i = 0; i < rslt->po_num; i++)
+		dev_info(ice_hw_to_dev(hw), "proto = %d, offset = %d\n",
+			 rslt->po[i].proto_id, rslt->po[i].offset);
+
+	dev_info(ice_hw_to_dev(hw), "flags_psr = 0x%016llx\n",
+		 (unsigned long long)rslt->flags_psr);
+	dev_info(ice_hw_to_dev(hw), "flags_pkt = 0x%016llx\n",
+		 (unsigned long long)rslt->flags_pkt);
+	dev_info(ice_hw_to_dev(hw), "flags_sw = 0x%04x\n", rslt->flags_sw);
+	dev_info(ice_hw_to_dev(hw), "flags_fd = 0x%04x\n", rslt->flags_fd);
+	dev_info(ice_hw_to_dev(hw), "flags_rss = 0x%04x\n", rslt->flags_rss);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 8222e738d493..189fe254bfb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -13,6 +13,7 @@
 #include "ice_proto_grp.h"
 #include "ice_flg_rd.h"
 #include "ice_xlt_kb.h"
+#include "ice_parser_rt.h"
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
@@ -49,8 +50,31 @@ struct ice_parser {
 	struct ice_xlt_kb *xlt_kb_fd;
 	/* load data from section ICE_SID_XLT_KEY_BUILDER_RSS */
 	struct ice_xlt_kb *xlt_kb_rss;
+	struct ice_parser_rt rt; /* parser runtime */
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
 void ice_parser_destroy(struct ice_parser *psr);
+
+struct ice_parser_proto_off {
+	u8 proto_id; /* hardware protocol ID */
+	u16 offset;  /* offset where the  protocol header start */
+};
+
+struct ice_parser_result {
+	u16 ptype; /* 16 bits hardware PTYPE */
+	/* protocol and header offset pairs */
+	struct ice_parser_proto_off po[16];
+	int po_num; /* number of pairs must <= 16 */
+	u64 flags_psr; /* 64 bits parser flags */
+	u64 flags_pkt; /* 64 bits packet flags */
+	u16 flags_sw; /* 16 bits key builder flag for SW */
+	u16 flags_acl; /* 16 bits key builder flag for ACL */
+	u16 flags_fd; /* 16 bits key builder flag for FD */
+	u16 flags_rss; /* 16 bits key builder flag for RSS */
+};
+
+int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
+		   int pkt_len, struct ice_parser_result *rslt);
+void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
 #endif /* _ICE_PARSER_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
new file mode 100644
index 000000000000..0e276faac6c5
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+
+#define GPR_HB_IDX	64
+#define GPR_ERR_IDX	84
+#define GPR_FLG_IDX	104
+#define GPR_TSR_IDX	108
+#define GPR_NN_IDX	109
+#define GPR_HO_IDX	110
+#define GPR_NP_IDX	111
+
+static void _rt_tsr_set(struct ice_parser_rt *rt, u16 tsr)
+{
+	rt->gpr[GPR_TSR_IDX] = tsr;
+}
+
+static void _rt_ho_set(struct ice_parser_rt *rt, u16 ho)
+{
+	rt->gpr[GPR_HO_IDX] = ho;
+	memcpy(&rt->gpr[GPR_HB_IDX], &rt->pkt_buf[ho], 32);
+}
+
+static void _rt_np_set(struct ice_parser_rt *rt, u16 pc)
+{
+	rt->gpr[GPR_NP_IDX] = pc;
+}
+
+static void _rt_nn_set(struct ice_parser_rt *rt, u16 node)
+{
+	rt->gpr[GPR_NN_IDX] = node;
+}
+
+static void _rt_flag_set(struct ice_parser_rt *rt, int idx)
+{
+	int y = idx / 16;
+	int x = idx % 16;
+
+	rt->gpr[GPR_FLG_IDX + y] |= (u16)(1 << x);
+}
+
+/**
+ * ice_parser_rt_reset - reset the parser runtime
+ * @rt: pointer to the parser runtime
+ */
+void ice_parser_rt_reset(struct ice_parser_rt *rt)
+{
+	struct ice_parser *psr = rt->psr;
+	struct ice_metainit_item *mi = &psr->mi_table[0];
+	int i;
+
+	memset(rt, 0, sizeof(*rt));
+
+	_rt_tsr_set(rt, mi->tsr);
+	_rt_ho_set(rt, mi->ho);
+	_rt_np_set(rt, mi->pc);
+	_rt_nn_set(rt, mi->pg_rn);
+
+	rt->psr = psr;
+
+	for (i = 0; i < 64; i++) {
+		if ((mi->flags & (1ul << i)) != 0ul)
+			_rt_flag_set(rt, i);
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
+	u16 ho = rt->gpr[GPR_HO_IDX];
+
+	memcpy(rt->pkt_buf, pkt_buf, len);
+	rt->pkt_len = pkt_len;
+
+	memcpy(&rt->gpr[GPR_HB_IDX], &rt->pkt_buf[ho], 32);
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
+	return ICE_ERR_NOT_IMPL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.h b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
new file mode 100644
index 000000000000..2c909a8dc01e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_PARSER_RT_H_
+#define _ICE_PARSER_RT_H_
+
+struct ice_parser_ctx;
+
+#define ICE_PARSER_MAX_PKT_LEN 504
+#define ICE_PARSER_GPR_NUM 128
+
+struct ice_parser_rt {
+	struct ice_parser *psr;
+	u16 gpr[ICE_PARSER_GPR_NUM];
+	u8 pkt_buf[ICE_PARSER_MAX_PKT_LEN + 32];
+	u16 pkt_len;
+	u16 po;
+};
+
+void ice_parser_rt_reset(struct ice_parser_rt *rt);
+void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
+			      int pkt_len);
+
+struct ice_parser_result;
+int ice_parser_rt_execute(struct ice_parser_rt *rt,
+			  struct ice_parser_result *rslt);
+#endif /* _ICE_PARSER_RT_H_ */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
