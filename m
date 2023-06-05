Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E20721C00
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52DDF60DF6;
	Mon,  5 Jun 2023 02:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52DDF60DF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685932218;
	bh=mW+6dn4TZcD8dUgGPn76TqtYR1e7Czim1Rr0glR9QbI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JciykhUWcoMXaODaXVWK2iBZHJ1EPYU10JaDuvs8kXCoS4fraQGNewqyjosiShidf
	 vJEnwjkSQt1tuKCw4AN9EeZF/LvagMJCyBgOBVXFqHPxaYkQqYGDbnp9Qv0kgYfUnp
	 TmTciam4fa8QeymARTbFEhr0V2AXMDeJJJRbAABfYT1zEvjNy62hOPSBoOIBnFAvzc
	 kvhTtDpKpVj5xu88pryaimtDsVAnb9gG9UiZSAcRuInLLnZRzEabTLBwoY+gz1xlZ6
	 D2LxOnIGbB/n7uHhaAyzQIo9GLS5JTX+9m8lGEikD8IK0BQ/D8dzY0ceJOok9HIOLw
	 Sz5VlkOx08rmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lvs5IYKWHzXt; Mon,  5 Jun 2023 02:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED1D360BC3;
	Mon,  5 Jun 2023 02:30:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED1D360BC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E93F1BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1734E60BC3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1734E60BC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6piuvz6ax4iS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:29:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2617760BAD
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2617760BAD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358710423"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358710423"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:29:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="1038604753"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="1038604753"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jun 2023 19:29:41 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:29:13 +0800
Message-Id: <20230605022920.2361266-9-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605022920.2361266-1-junfeng.guo@intel.com>
References: <20230605022920.2361266-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685932183; x=1717468183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wk47avr4NWZyHil7SyLhOY7PFZLE1aeiBpPY1HQ9yic=;
 b=LAACliMye1vxi1k7rbRwMJUMbPl4XhUfqKWcE3CJsu1TKjQ7Eo3HiueJ
 9lmXmgwzD4VBReow6h/CXV9ALlQESG2E4rRdKpNNhaFWdbfyCeoCwtvkB
 /AYzJPLmQMwqAweNqdzq8iVqJ8f/gEyqTkXqCNI1PCvpAE7Bd2CxRBB+W
 A/n5dTxLU7e7nF/d1qzWLO92EdoYuURPERap0n7Ff/M2q3G/EZq5Z5p44
 w09xCbVg+ITDaa9lOe28f3PKkZOB3u98gjx2vitkpPiP+f/pFtFxr0k2X
 WiU+u0TNPzDOTQiE0GB7KDs5QyV4JTr5JgBTTIJ7BZjHhJNpekIU3pDyX
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LAACliMy
Subject: [Intel-wired-lan] [PATCH iwl-next 08/15] ice: init flag redirect
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Parse DDP section ICE_SID_RXPARSER_FLAG_REDIR into an array of
ice_flag_rd_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_flg_rd.c | 52 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_flg_rd.h | 15 ++++++
 drivers/net/ethernet/intel/ice/ice_parser.c | 11 +++++
 drivers/net/ethernet/intel/ice/ice_parser.h |  3 ++
 5 files changed, 82 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.h

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
index 000000000000..827b659e2332
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.c
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+#define ICE_FLG_RD_TABLE_SIZE 64
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
+/** The function parses a 8 bits Flag Redirect Table entry with below format:
+ *  BIT 0:	Expose (rdi->expose)
+ *  BIT 1-6:	Internal Flag ID (rdi->intr_flg_id)
+ *  BIT 7:	reserved
+ */
+static void _flg_rd_parse_item(struct ice_hw *hw, u16 idx, void *item,
+			       void *data, int size)
+{
+	struct ice_flg_rd_item *rdi = item;
+	u8 d8 = *(u8 *)data;
+
+	rdi->idx = idx;
+	rdi->expose = (d8 & 0x1) != 0;
+	rdi->intr_flg_id = (u8)((d8 >> 1) & 0x3f);
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
+					_flg_rd_parse_item, false);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_flg_rd.h b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
new file mode 100644
index 000000000000..b53e35a46796
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_FLG_RD_H_
+#define _ICE_FLG_RD_H_
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
index 345a99770941..fb0bc5c8e6ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -15,6 +15,7 @@
 #define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE		24
 #define ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE		8
 #define ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE		24
+#define ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE		1
 
 #define ICE_SEC_LBL_DATA_OFFSET				2
 #define ICE_SID_LBL_ENTRY_SIZE				66
@@ -83,6 +84,9 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 	case ICE_SID_RXPARSER_PROTO_GRP:
 		size = ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_FLAG_REDIR:
+		size = ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -234,6 +238,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -258,6 +268,7 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->ptype_mk_tcam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->mk_grp_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->proto_grp_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->flg_rd_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 3f17b15a1381..5eed54d9d189 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -11,6 +11,7 @@
 #include "ice_ptype_mk.h"
 #include "ice_mk_grp.h"
 #include "ice_proto_grp.h"
+#include "ice_flg_rd.h"
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
@@ -37,6 +38,8 @@ struct ice_parser {
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
