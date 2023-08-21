Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A729782529
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 10:15:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB94640128;
	Mon, 21 Aug 2023 08:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB94640128
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692605724;
	bh=o6ISMgPaHc4g9ZSCjAdtWe8V43TlGuHtqbvL7geiSGY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pRVwDH7XxuWrxAcrjUB4IICr33P4rhy9NjRSqrpN0agNS1t12cvf06mE7K20UVE9M
	 IuyARaDBlXge4uBpCH4GS4m6WHlQdt4k84cF7KsLDENEMkVMj/wsANgWOEd1bAMuhL
	 R3+aAv75xUSVFSeaz0fhGMFK61YfUPeIsNx9v8zFiCbJZj50csuoBLte4UO8vntIT+
	 LnWx1k6rE241gFCVuKfch246VpqQOvPnb0LhQQd9ScmexFTBoKnRPtt9jSgF4V/jj7
	 GN90mnSPL9AVhjqCDLtk1TZ9aW3hV+PkTuhDNtCVP0Sv2tviE8syLoSKzuXCnYFBhY
	 GGhNjNQ3u17Cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMwizhBjQ6Tt; Mon, 21 Aug 2023 08:15:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5752940A60;
	Mon, 21 Aug 2023 08:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5752940A60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D64FA1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCDFC813FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCDFC813FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 85iOsTubQqC1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 08:15:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDE9D813FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:15:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDE9D813FA
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="376280423"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="376280423"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 01:15:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="685577527"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="685577527"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga003.jf.intel.com with ESMTP; 21 Aug 2023 01:15:03 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Aug 2023 16:14:29 +0800
Message-Id: <20230821081438.2937934-7-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230821081438.2937934-1-junfeng.guo@intel.com>
References: <20230821023833.2700902-1-junfeng.guo@intel.com>
 <20230821081438.2937934-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692605708; x=1724141708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZtZPTtuh6KRLFmuu9JOc1XxTJm/BImqlewiABGBI4Cg=;
 b=OMyym721gDURYmKN+RSS6h0n9VhUvksFt207iT9h9A71gMTnqxVdii1r
 pFV2SzHkDQTAq99LisG0VjrUJVtXD2lpWrUYquuqBz1bhviRdE9TCBK9Q
 BRlIdBqqN1VUX97SWTLblgLTkJpwozAPJdgmrYEV9Vg5MPCQ9O9LyOtPf
 YlSft137vcwUjeDiUODIntIZMcDrQ40Fb4euU6bkcOJm7Vfq7aHd1WUup
 ikRCk4RpCzTBTPcceyTeq7fi7mQwaVbcvsRKVAJDikF44QEqiZVFEXuKj
 uDyvRzek/ZIQH/owphe921yz4Sh69cyHeapwH/P5OFa3JihEeQTyg5hae
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OMyym721
Subject: [Intel-wired-lan] [PATCH iwl-next v6 06/15] ice: init ptype marker
 tcam table for parser
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
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Parse DDP section ICE_SID_RXPARSER_MARKER_PTYPE into an array of
ice_ptype_mk_tcam_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c   | 10 ++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |  4 ++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.c | 51 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.h | 20 ++++++++
 4 files changed, 85 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.h

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index e5f0ae7be612..01684a7c5c75 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -59,6 +59,9 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 		data_off = ICE_SEC_LBL_DATA_OFFSET;
 		size = ICE_SID_LBL_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_MARKER_PTYPE:
+		size = ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -193,6 +196,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 		goto err;
 	}
 
+	p->ptype_mk_tcam_table = ice_ptype_mk_tcam_table_get(hw);
+	if (!p->ptype_mk_tcam_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
 	*psr = p;
 	return 0;
 err:
@@ -214,6 +223,7 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_sp_cam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->ptype_mk_tcam_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 14d17c7c8479..c0ac4b2a9a6e 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -8,6 +8,7 @@
 #include "ice_imem.h"
 #include "ice_pg_cam.h"
 #include "ice_bst_tcam.h"
+#include "ice_ptype_mk.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
@@ -17,6 +18,7 @@
 #define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE		12
 #define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
 #define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE		88
+#define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE		24
 
 #define ICE_SEC_LBL_DATA_OFFSET				2
 #define ICE_SID_LBL_ENTRY_SIZE				66
@@ -40,6 +42,8 @@ struct ice_parser {
 	struct ice_bst_tcam_item *bst_tcam_table;
 	/* load data from section ICE_SID_LBL_RXPARSER_TMEM */
 	struct ice_lbl_item *bst_lbl_table;
+	/* load data from section ICE_SID_RXPARSER_MARKER_PTYPE */
+	struct ice_ptype_mk_tcam_item *ptype_mk_tcam_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptype_mk.c b/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
new file mode 100644
index 000000000000..ee7b09618d54
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+/**
+ * ice_ptype_mk_tcam_dump - dump an ptype marker tcam info_
+ * @hw: pointer to the hardware structure
+ * @item: ptype marker tcam to dump
+ */
+void ice_ptype_mk_tcam_dump(struct ice_hw *hw,
+			    struct ice_ptype_mk_tcam_item *item)
+{
+	int i;
+
+	dev_info(ice_hw_to_dev(hw), "address = %d\n", item->address);
+	dev_info(ice_hw_to_dev(hw), "ptype = %d\n", item->ptype);
+	dev_info(ice_hw_to_dev(hw), "key    :");
+	for (i = 0; i < ICE_PTYPE_MK_TCAM_KEY_SIZE; i++)
+		dev_info(ice_hw_to_dev(hw), "%02x ", item->key[i]);
+	dev_info(ice_hw_to_dev(hw), "\n");
+	dev_info(ice_hw_to_dev(hw), "key_inv:");
+	for (i = 0; i < ICE_PTYPE_MK_TCAM_KEY_SIZE; i++)
+		dev_info(ice_hw_to_dev(hw), "%02x ", item->key_inv[i]);
+	dev_info(ice_hw_to_dev(hw), "\n");
+}
+
+static void _ice_parse_ptype_mk_tcam_item(struct ice_hw *hw, u16 idx,
+					  void *item, void *data, int size)
+{
+	ice_parse_item_dflt(hw, idx, item, data, size);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_ptype_mk_tcam_dump(hw,
+				       (struct ice_ptype_mk_tcam_item *)item);
+}
+
+/**
+ * ice_ptype_mk_tcam_table_get - create a ptype marker tcam table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw)
+{
+	return (struct ice_ptype_mk_tcam_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_MARKER_PTYPE,
+					sizeof(struct ice_ptype_mk_tcam_item),
+					ICE_PTYPE_MK_TCAM_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_ice_parse_ptype_mk_tcam_item, true);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptype_mk.h b/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
new file mode 100644
index 000000000000..4a071d823bea
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_PTYPE_MK_H_
+#define _ICE_PTYPE_MK_H_
+
+#define ICE_PTYPE_MK_TCAM_TABLE_SIZE	1024
+#define ICE_PTYPE_MK_TCAM_KEY_SIZE	10
+
+struct ice_ptype_mk_tcam_item {
+	u16 address;
+	u16 ptype;
+	u8 key[ICE_PTYPE_MK_TCAM_KEY_SIZE];
+	u8 key_inv[ICE_PTYPE_MK_TCAM_KEY_SIZE];
+};
+
+void ice_ptype_mk_tcam_dump(struct ice_hw *hw,
+			    struct ice_ptype_mk_tcam_item *item);
+struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw);
+#endif /* _ICE_PTYPE_MK_H_ */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
