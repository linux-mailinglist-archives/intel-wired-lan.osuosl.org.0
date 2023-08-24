Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51272786901
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 09:55:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D37F76135F;
	Thu, 24 Aug 2023 07:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D37F76135F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692863752;
	bh=o6ISMgPaHc4g9ZSCjAdtWe8V43TlGuHtqbvL7geiSGY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OukrDl5jUzJsjMAI0ucRxfP1EAA3UpYFZKRRR1CMyiiQZwlPMWh2a0hq9fEQOxTzI
	 3oZCzAA/yoRqXJp+aWDY9yuKp6TwH/m49XHE0OcmBBEWRgGbvcoWsM85GNC0bZeGCA
	 G4VFEz0+fh1ziZiExZg5oyhtfsNcd+H+62XeAnAJS01fmNFqVim7aeT1mKJV6QIhrq
	 L6PM7FiD47k4JtIZ4rIdw096ghsr/E/BP2IYF+UL5jHRF004A6voF0P1m1kjNvbE+J
	 P0pmd4aYRzydVN+A7bfXxtnx8M0gUQSzUhD8toWsCZiXzkwTeTWJ2BD0uPEtSDiBMG
	 rL5WZbBq77CSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Kv2vJpZLdko; Thu, 24 Aug 2023 07:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E6F86131B;
	Thu, 24 Aug 2023 07:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E6F86131B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 302121BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12DB761352
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12DB761352
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RQVcv-2nOIJn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 07:55:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 134CF61338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 134CF61338
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354705295"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354705295"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 00:55:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="772022578"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="772022578"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2023 00:55:37 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 15:54:51 +0800
Message-Id: <20230824075500.1735790-7-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230824075500.1735790-1-junfeng.guo@intel.com>
References: <20230823093158.782802-1-junfeng.guo@intel.com>
 <20230824075500.1735790-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692863742; x=1724399742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZtZPTtuh6KRLFmuu9JOc1XxTJm/BImqlewiABGBI4Cg=;
 b=A8tS1RqZeeXglVfQ8hq+3ZjeByRDTpnejfDef2JnfWAXmvZf+mzpVcoN
 JfiPp90m5o8k3vZ7yErjiweY2Ye5HdaQrZRLhRgQ8Gl4U7Xc/PatR83Zz
 kJFe6PekW0qxkVsyhFGb8onH/fVBQBljL54QPzxz0RRQX/ENQcr6+aOKp
 m8HzirjhvXbUgD0/BH9D/8pAjiVFavIEH+Tli7o7yMSrQYsjKGJS1GNdd
 rjRU+zyKH3dEr/yZKUGKmWt+pKSGwaC3fv3GjHBSiW7cWusQxTBh7aOd/
 IMPFV0zcLr5qskoeu5DHoQIp3GagoMc+tpewYLYCLD2RQQdhIysmwDnjj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A8tS1RqZ
Subject: [Intel-wired-lan] [PATCH iwl-next v8 06/15] ice: init ptype marker
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
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
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
