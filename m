Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E821E790FFC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 04:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DF5081E9A;
	Mon,  4 Sep 2023 02:15:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DF5081E9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693793752;
	bh=3rS3tGdih11FJpDrp/uD3sg4rLmu1/Rk+6qjndzAQQk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DHD7AsNPpi/0MMposvmTyX3qS4lPBbChQnBe9Eyv8vSl5ogMQCMLU6u2nrEU4cbsH
	 fKAv3WcCKLt8pErBFgxFa868XDxyY56W7qhXlZmslACr0pbvBImOLx4ENTFGA7k1st
	 xhmDOdStI73Df8ybI8ms6euq+K2lCN5hzLdwXRUlK4heVjlXciW9t3kuAXtxMtSeRQ
	 R4RlvDAu150cw0YsgUml9b6/zPpoOmhK1vs6tWT85X5h+pQQ5IsB/DV9dWkkfoyhln
	 s84R/t8sWH+A3MDdsxAovgenb2VDcvjpHNph44Xj5CiqMqtjiLFce+syFnHMvATQLs
	 yNc0fS8CK/yaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SaRSpHCqcFZj; Mon,  4 Sep 2023 02:15:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7455381E74;
	Mon,  4 Sep 2023 02:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7455381E74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2A9D1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BA0381E7A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BA0381E7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y5v3T3wqbUH8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 02:15:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C683981E17
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C683981E17
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="379215282"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="379215282"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 19:15:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="769826915"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="769826915"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2023 19:15:36 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Sep 2023 10:14:48 +0800
Message-Id: <20230904021455.3944605-9-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230904021455.3944605-1-junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693793740; x=1725329740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cQVJBgQw0aBtdvinHb27Cma4lm/fmhhoC65eSrvq0vU=;
 b=L28jHfyRelv+siCqcHVIaCSP0ZuPm+IPws5yzeJPcWCFJMRw1g6mmO5r
 bzlX/xwyB58U48Kcr9ewVDcyZSbmfE4v4K/N80MwCqp+yxgv8YkF1+1oU
 sVYu1pmN/GLtCtJJBe23HS3INzLlCiTvrCeQlxMa35o0hcI1x3bxfi1wa
 0JQrAwv0dSQrGhe3nA8WMpZ3bBsj6pb7ym8NJANvfkIZckcCKUi0CgPs4
 YrjToIsFs5gPcYL9ZP7I5NywYhUhgGr9qwz2DIEiqig/oPOEQo30KOcyF
 YmlZIOdiLHNA8WEHhlj/4VID8UflzrnHJqpQtrHfywzErvttJkMYq9/1s
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L28jHfyR
Subject: [Intel-wired-lan] [PATCH iwl-next v9 08/15] ice: init flag redirect
 table for parser
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

Parse DDP section ICE_SID_RXPARSER_FLAG_REDIR into an array of
ice_flag_rd_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |  1 +
 drivers/net/ethernet/intel/ice/ice_ddp.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_flg_rd.c | 54 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_flg_rd.h | 18 +++++++
 drivers/net/ethernet/intel/ice/ice_parser.c | 10 ++++
 drivers/net/ethernet/intel/ice/ice_parser.h |  4 ++
 6 files changed, 88 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index a420ed3f74d1..73245f7b0750 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -34,6 +34,7 @@ ice-y := ice_main.o	\
 	 ice_ptype_mk.o  \
 	 ice_mk_grp.o    \
 	 ice_proto_grp.o \
+	 ice_flg_rd.o    \
 	 ice_idc.o	\
 	 ice_devlink.o	\
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index da5dfeed3b1f..45beed8b4415 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -261,6 +261,7 @@ struct ice_meta_sect {
 #define ICE_SID_CDID_KEY_BUILDER_PE 87
 #define ICE_SID_CDID_REDIR_PE 88
 
+#define ICE_SID_RXPARSER_FLAG_REDIR	97
 /* Label Metadata section IDs */
 #define ICE_SID_LBL_FIRST 0x80000010
 #define ICE_SID_LBL_RXPARSER_TMEM 0x80000018
diff --git a/drivers/net/ethernet/intel/ice/ice_flg_rd.c b/drivers/net/ethernet/intel/ice/ice_flg_rd.c
new file mode 100644
index 000000000000..774dd2dcef0c
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+/**
+ * ice_flg_rd_dump - dump a flag redirect item info
+ * @hw: pointer to the hardware structure
+ * @item: flag redirect item to dump
+ */
+void ice_flg_rd_dump(struct ice_hw *hw, struct ice_flg_rd_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	dev_info(ice_hw_to_dev(hw), "expose = %d\n", item->expose);
+	dev_info(ice_hw_to_dev(hw), "intr_flg_id = %d\n", item->intr_flg_id);
+}
+
+#define ICE_FRT_EXPO	BIT(0)
+#define ICE_FRT_IFID	GENMASK(6, 1)
+
+/** The function parses a 8 bits Flag Redirect Table entry with below format:
+ *  BIT 0:	Expose			(rdi->expose)
+ *  BIT 1-6:	Internal Flag ID	(rdi->intr_flg_id)
+ *  BIT 7:	reserved
+ */
+static void _ice_flg_rd_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				   void *data, int size)
+{
+	struct ice_flg_rd_item *rdi = item;
+	u8 d8 = *(u8 *)data;
+
+	rdi->idx		= idx;
+
+	rdi->expose		= FIELD_GET(ICE_FRT_EXPO, d8);
+	rdi->intr_flg_id	= FIELD_GET(ICE_FRT_IFID, d8);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_flg_rd_dump(hw, rdi);
+}
+
+/**
+ * ice_flg_rd_table_get - create a flag redirect table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw)
+{
+	return (struct ice_flg_rd_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_FLAG_REDIR,
+					sizeof(struct ice_flg_rd_item),
+					ICE_FLG_RD_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_ice_flg_rd_parse_item, false);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_flg_rd.h b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
new file mode 100644
index 000000000000..46220c3dc570
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_FLG_RD_H_
+#define _ICE_FLG_RD_H_
+
+#define ICE_FLG_RD_TABLE_SIZE	64
+#define ICE_FLG_RDT_SIZE	64
+
+struct ice_flg_rd_item {
+	u16 idx;
+	bool expose;
+	u8 intr_flg_id;
+};
+
+void ice_flg_rd_dump(struct ice_hw *hw, struct ice_flg_rd_item *item);
+struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw);
+#endif /* _ICE_FLG_RD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 4da2d4c21bab..3c3f7d6bea52 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -68,6 +68,9 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 	case ICE_SID_RXPARSER_PROTO_GRP:
 		size = ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_FLAG_REDIR:
+		size = ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -220,6 +223,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 		goto err;
 	}
 
+	p->flg_rd_table = ice_flg_rd_table_get(hw);
+	if (!p->flg_rd_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
 	*psr = p;
 	return 0;
 err:
@@ -244,6 +253,7 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->ptype_mk_tcam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->mk_grp_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->proto_grp_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->flg_rd_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 4038833450f2..62123788e0a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -11,6 +11,7 @@
 #include "ice_ptype_mk.h"
 #include "ice_mk_grp.h"
 #include "ice_proto_grp.h"
+#include "ice_flg_rd.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
@@ -23,6 +24,7 @@
 #define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE		24
 #define ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE		8
 #define ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE		24
+#define ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE		1
 
 #define ICE_SEC_LBL_DATA_OFFSET				2
 #define ICE_SID_LBL_ENTRY_SIZE				66
@@ -52,6 +54,8 @@ struct ice_parser {
 	struct ice_mk_grp_item *mk_grp_table;
 	/* load data from section ICE_SID_RXPARSER_PROTO_GRP */
 	struct ice_proto_grp_item *proto_grp_table;
+	/* load data from section ICE_SID_RXPARSER_FLAG_REDIR */
+	struct ice_flg_rd_item *flg_rd_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
