Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19690782191
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 04:39:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A49F340643;
	Mon, 21 Aug 2023 02:39:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A49F340643
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692585585;
	bh=lIH13ZkvEmyDg8S8q9FHAo36jhxZSQY0HpyW+ISoPgc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hUmK63fNBvH2fW0fyJryVIgpX+1s8vuGTewUaurL2+SW0jylOVqdNRemrJea7GFDE
	 B1Yr6atn7l4MQLCsUxOKhYMkoVwyKVDDwATF52rKMZszGZssvT1HvdEb8X63H7sM0V
	 7IiRRHaMpJZo4N5sYGzsSf2cF+8Jo0/Ea5EsSkPqJ+9FVJaOkp2hI7vRq8FUFeFVft
	 1DyoYRfBoYDhvKovD1nK1esYVvIRF9smEA7ao1cy9hROPQVgsKbCx4/E69pK+TQjgf
	 mKhR1wG2CMzOdIXnOsxbnq5bQ4GVxKqL/VZ3Nyyos7EUhVx+e3KWC8k7mJuG9IlLfQ
	 lbAv03o757Kmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ERNrV9f377X; Mon, 21 Aug 2023 02:39:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21D76409DB;
	Mon, 21 Aug 2023 02:39:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21D76409DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF0921BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 953E261073
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:39:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 953E261073
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6rP7NlMJBXdc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 02:39:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9699361072
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:39:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9699361072
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="377216760"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="377216760"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2023 19:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="982326662"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="982326662"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by fmsmga006.fm.intel.com with ESMTP; 20 Aug 2023 19:39:20 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Aug 2023 10:38:28 +0800
Message-Id: <20230821023833.2700902-11-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230821023833.2700902-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230821023833.2700902-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692585563; x=1724121563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5EGSlo+h0N7zNdqJspuK3yt6XqSTdRYL9+vgxraz+SY=;
 b=gJaMd68lg9UQrg58pLx3UKhIu7B5gtz7OMI6TdInxJjUzoA/r7UUMKde
 dopE40oN3DIRM3PYae+us4dLmL+HE92MvqQby1a42s6VrgiE11LwkbJpG
 IhwJakgRMBASOjgyNc8OfXy02EBq1gYPLKjur1ToOZAO9RNeoX3y/2oPH
 s/n201fCFgFgICKQtdjhQsooL5sKvx2nAP+AdlAdILyz0uEoZe5BY30VW
 PWMqQ/1QJotrpPmKnv7qKqWMF7tVOL3t4ivNzMSPE+vkMcy5S+Oneb8yo
 8kX5KCk4iDHj6YLxV0XPQmtO7NwWWcUm70PHxViBOlV7ZGs4S3Ca0Y4sR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gJaMd68l
Subject: [Intel-wired-lan] [PATCH iwl-next v5 10/15] ice: add parser runtime
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, qi.z.zhang@intel.com,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add parser runtime data struct ice_parser_rt.

Add below APIs for parser runtime preparation:
- ice_parser_rt_reset
- ice_parser_rt_pkt_buf_set

Add below API skeleton for parser runtime execution:
- ice_parser_rt_execute

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c   | 39 ++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   | 28 ++++++
 .../net/ethernet/intel/ice/ice_parser_rt.c    | 92 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_parser_rt.h    | 39 ++++++++
 4 files changed, 198 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.h

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index cc71329de5f7..1bd1417e32c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -286,3 +286,42 @@ void ice_parser_destroy(struct ice_parser *psr)
 
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
index ca71ef4f50f5..5f98f3031294 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -13,6 +13,7 @@
 #include "ice_proto_grp.h"
 #include "ice_flg_rd.h"
 #include "ice_xlt_kb.h"
+#include "ice_parser_rt.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
@@ -30,6 +31,8 @@
 #define ICE_SEC_LBL_DATA_OFFSET				2
 #define ICE_SID_LBL_ENTRY_SIZE				66
 
+#define ICE_PARSER_PROTO_OFF_PAIR_SIZE			16
+
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
 
@@ -65,8 +68,33 @@ struct ice_parser {
 	struct ice_xlt_kb *xlt_kb_fd;
 	/* load data from section ICE_SID_XLT_KEY_BUILDER_RSS */
 	struct ice_xlt_kb *xlt_kb_rss;
+	struct ice_parser_rt rt; /* parser runtime */
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
 void ice_parser_destroy(struct ice_parser *psr);
+
+struct ice_parser_proto_off {
+	u8 proto_id;	/* hardware protocol ID */
+	u16 offset;	/* offset from the start of the protocol header */
+};
+
+#define ICE_PARSER_FLAG_PSR_SIZE	8
+
+struct ice_parser_result {
+	u16 ptype;	/* 16 bits hardware PTYPE */
+	/* array of protocol and header offset pairs */
+	struct ice_parser_proto_off po[ICE_PARSER_PROTO_OFF_PAIR_SIZE];
+	int po_num;	/* # of protocol-offset pairs must <= 16 */
+	u64 flags_psr;	/* 64 bits parser flags */
+	u64 flags_pkt;	/* 64 bits packet flags */
+	u16 flags_sw;	/* 16 bits key builder flag for SW */
+	u16 flags_acl;	/* 16 bits key builder flag for ACL */
+	u16 flags_fd;	/* 16 bits key builder flag for FD */
+	u16 flags_rss;	/* 16 bits key builder flag for RSS */
+};
+
+int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
+		   int pkt_len, struct ice_parser_result *rslt);
+void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
 #endif /* _ICE_PARSER_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
new file mode 100644
index 000000000000..a6644f4b3324
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+
+static void _ice_rt_tsr_set(struct ice_parser_rt *rt, u16 tsr)
+{
+	rt->gpr[ICE_GPR_TSR_IDX] = tsr;
+}
+
+static void _ice_rt_ho_set(struct ice_parser_rt *rt, u16 ho)
+{
+	rt->gpr[ICE_GPR_HO_IDX] = ho;
+	memcpy(&rt->gpr[ICE_GPR_HV_IDX], &rt->pkt_buf[ho], ICE_GPR_HV_SIZE);
+}
+
+static void _ice_rt_np_set(struct ice_parser_rt *rt, u16 pc)
+{
+	rt->gpr[ICE_GPR_NP_IDX] = pc;
+}
+
+static void _ice_rt_nn_set(struct ice_parser_rt *rt, u16 node)
+{
+	rt->gpr[ICE_GPR_NN_IDX] = node;
+}
+
+static void _ice_rt_flag_set(struct ice_parser_rt *rt, int idx, bool val)
+{
+	int y = idx / ICE_GPR_FLG_SIZE;
+	int x = idx % ICE_GPR_FLG_SIZE;
+
+	if (val)
+		rt->gpr[ICE_GPR_FLG_IDX + y] |= (u16)BIT(x);
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
+	/* TSR: TCAM Search Register */
+	_ice_rt_tsr_set(rt, mi->tsr);
+	/* HO: Next Parsing Cycle Header Offset */
+	_ice_rt_ho_set(rt, mi->ho);
+	/* NP: Next Parsing Cycle */
+	_ice_rt_np_set(rt, mi->pc);
+	/* NN: Next Parsing Cycle Node ID */
+	_ice_rt_nn_set(rt, mi->pg_rn);
+
+	rt->psr = psr;
+
+	for (i = 0; i < ICE_PARSER_FLG_NUM; i++) {
+		if ((mi->flags & BIT(i)) != 0ul)
+			_ice_rt_flag_set(rt, i, true);
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
index 000000000000..dadcb8791430
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_PARSER_RT_H_
+#define _ICE_PARSER_RT_H_
+
+#define ICE_GPR_HV_IDX		64
+#define ICE_GPR_HV_SIZE		32
+#define ICE_GPR_ERR_IDX		84
+#define ICE_GPR_FLG_IDX		104
+#define ICE_GPR_FLG_SIZE	16
+
+#define ICE_GPR_TSR_IDX		108
+#define ICE_GPR_NN_IDX		109
+#define ICE_GPR_HO_IDX		110
+#define ICE_GPR_NP_IDX		111
+
+struct ice_parser_ctx;
+
+#define ICE_PARSER_MAX_PKT_LEN	504
+#define ICE_PARSER_PKT_REV	32
+#define ICE_PARSER_GPR_NUM	128
+
+struct ice_parser_rt {
+	struct ice_parser *psr;
+	u16 gpr[ICE_PARSER_GPR_NUM];
+	u8 pkt_buf[ICE_PARSER_MAX_PKT_LEN + ICE_PARSER_PKT_REV];
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
