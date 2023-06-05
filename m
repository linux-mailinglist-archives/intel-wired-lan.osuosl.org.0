Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A962721DA6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:48:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CB95410D8;
	Mon,  5 Jun 2023 05:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CB95410D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944121;
	bh=7fSRAI/tBjLshF0jXSNvT/MvWP8ioMg2XoyGYW2FqTY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yzzPUMVyWnTf5VDnOjEBUyzb6FMJobdLcJrpYWU30huliWt5kqQF0Rwdgu7jYbygu
	 h/Xc8YeV57C1IkoJcELBNSzGX6cYJcv0k8pmAkFNlH64HM6ilPFM5xD9G4POv5lubI
	 /jEhikXporRWR34p8LWyu/bFUFe2Q+hkAKqhZ86BxMjmE0uvtjw/KfzEWlP4pmTTKJ
	 0f3NdG0WPmrUovOpsWA9BoKrmAivZ2wwq98FEIcPfGiJmOAUADIjv4+T1N2uBK+Ocp
	 gOBf3wBI6aZUnovX1SbIebM/X3jLgIcFrsdCwWG8axZxoCp0coRXPuNdf3XUWHqcLT
	 pAPrLQ0+ymH2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1WMNXAX8X2Q7; Mon,  5 Jun 2023 05:48:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 065BF4031F;
	Mon,  5 Jun 2023 05:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 065BF4031F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7C361BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C3AE8403A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3AE8403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JBSWA0IOi79p for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0333940114
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0333940114
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831864"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831864"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581408"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581408"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:05 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:32 +0800
Message-Id: <20230605054641.2865142-7-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944087; x=1717480087;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5qRBh53KYra7uJolmqpIEd38x2a3SwOz695oeJRn4rU=;
 b=n1QQN+u2+adRZJ34gvmzMhs/D+KNDJzJIPhjtWXGOyLMNYavlwobb4oM
 K+RfFs30ce3wKyNf8vK4nNs4vUBC1nxp3DblIBPTngEsh8wlSNA5gM5uB
 aopuoFH4gne9UXm9x33JyQbnPMkXK4r/A/v19vgUKn6QCTQwafn3ZOWLN
 zGe13hJIcC/GVG1uWIYyVNb6WCZEhMv27X6FSeYZx+e8xFi3oC/8Xy3t2
 EaU86kYmBz3vGuVs/bwKKgEMRrntRoikw4Yx5Z+Eqb8Az3X1oLvym7Y0h
 eYCLVM4zj+Zk/mXf+CSvS2rRsXyP+/xZTticCIuRIhMta3XNDOxeX2jHD
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n1QQN+u2
Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/15] ice: init ptype marker
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Parse DDP section ICE_SID_RXPARSER_MARKER_PTYPE into an array of
ice_ptype_mk_tcam_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c   | 11 ++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |  3 ++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.c | 53 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.h | 17 ++++++
 4 files changed, 84 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.h

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index b280245dbdd4..970e379e074e 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -12,6 +12,7 @@
 #define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE		12
 #define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
 #define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE		88
+#define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE		24
 
 #define ICE_SEC_LBL_DATA_OFFSET				2
 #define ICE_SID_LBL_ENTRY_SIZE				66
@@ -71,6 +72,9 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 		data_off = ICE_SEC_LBL_DATA_OFFSET;
 		size = ICE_SID_LBL_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_MARKER_PTYPE:
+		size = ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -208,6 +212,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -229,6 +239,7 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_sp_cam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->ptype_mk_tcam_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index af73b19d09c1..1474a2337ad3 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -8,6 +8,7 @@
 #include "ice_imem.h"
 #include "ice_pg_cam.h"
 #include "ice_bst_tcam.h"
+#include "ice_ptype_mk.h"
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
@@ -28,6 +29,8 @@ struct ice_parser {
 	struct ice_bst_tcam_item *bst_tcam_table;
 	/* load data from section ICE_SID_LBL_RXPARSER_TMEM */
 	struct ice_lbl_item *bst_lbl_table;
+	/* load data from section ICE_SID_RXPARSER_MARKER_PTYPE */
+	struct ice_ptype_mk_tcam_item *ptype_mk_tcam_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptype_mk.c b/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
new file mode 100644
index 000000000000..36877f47a074
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+#define ICE_PTYPE_MK_TCAM_TABLE_SIZE 1024
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
+	for (i = 0; i < 10; i++)
+		dev_info(ice_hw_to_dev(hw), "%02x ", item->key[i]);
+	dev_info(ice_hw_to_dev(hw), "\n");
+	dev_info(ice_hw_to_dev(hw), "key_inv:");
+	for (i = 0; i < 10; i++)
+		dev_info(ice_hw_to_dev(hw), "%02x ", item->key_inv[i]);
+	dev_info(ice_hw_to_dev(hw), "\n");
+}
+
+static void _parse_ptype_mk_tcam_item(struct ice_hw *hw, u16 idx, void *item,
+				      void *data, int size)
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
+					_parse_ptype_mk_tcam_item, true);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptype_mk.h b/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
new file mode 100644
index 000000000000..b0a64a602641
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_PTYPE_MK_H_
+#define _ICE_PTYPE_MK_H_
+
+struct ice_ptype_mk_tcam_item {
+	u16 address;
+	u16 ptype;
+	u8 key[10];
+	u8 key_inv[10];
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
