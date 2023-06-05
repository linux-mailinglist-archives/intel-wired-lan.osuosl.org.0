Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A78721DA8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:48:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8464B41816;
	Mon,  5 Jun 2023 05:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8464B41816
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944132;
	bh=u3vdEvhyCnEZ555mUoBZXRXMHPcRphgyw5t/LncyFTY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AX5CA+bevD6gXmQtjbRxiQBPLhdrC58/gt3TO4Tvod+qhDfOAvhoP9E8IWZtfRHt0
	 h2rRTk+klsmTQeAuzNJuGbAdTK1jkpzPE3cslo3jfwgJ1dXtWDJWrrW0JSERt1roKx
	 61WZ+yJWsfMnUHQ0cFDP9eMMUaOs9wHfGLgwSl4UAil2YKH/cOtLjL/2l7CU9ebsnb
	 d3x1OX6GaepuBPSmQh/kKu0vRu7YjRpi4FMp5i7aDoTancahP7XdfoOe0ZwtZU+3T5
	 APvLsSAddS8VlPGU/b4h6P5CZhS1NnBKx7fG5AaLg55hcxIkA2o5p1xdGTfd59pT7y
	 cFxmEhNDWAG1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPb_HX7tQ9wX; Mon,  5 Jun 2023 05:48:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0FA840310;
	Mon,  5 Jun 2023 05:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0FA840310
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E7F81BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18B6C403A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18B6C403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ed3qWW4-lMeq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D02A40114
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D02A40114
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831872"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831872"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581449"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581449"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:08 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:34 +0800
Message-Id: <20230605054641.2865142-9-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944090; x=1717480090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=55jTm/gDtxEdAyVyiPgKSja8GXkoqvBA3tKW8iY1FoA=;
 b=gM/MUki0OZfT1nDoYqwPsB1rPT34t0WQGLf2sOOs1efk0FYUaOeJ5BD2
 Cpn7/AoS4FksqtxabP0XG+OGGD2N9XTKrEFitHlgO1uXcjL+iRPbpoTHR
 kAb4CBIQ1y0ELcCWq/Msftr21+2yUrKjsfcxR11A1WnVKbSk/TiMZ0Lqe
 2L/fxnPBIwDeu6AD2AhrdSQd3Eikki2N8mZ2rEFGHDTekzrMuZD6goAQD
 KkhPfy1njIt0mo7HGEwRakiHu/yb1ar+T5mFdSeGn1BReqs1rBVNd30Za
 EypxfGndBPSDPivL+EvzTog1LPOKjCT3hqW/lDr3t6GaIyECAfayUUa1O
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gM/MUki0
Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/15] ice: init flag redirect
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
index 1185bf1cd249..e8f047c08cd9 100644
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
@@ -238,6 +242,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -262,6 +272,7 @@ void ice_parser_destroy(struct ice_parser *psr)
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
