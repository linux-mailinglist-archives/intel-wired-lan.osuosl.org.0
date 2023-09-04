Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D10790FF9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 04:15:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9F8B81EA3;
	Mon,  4 Sep 2023 02:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9F8B81EA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693793744;
	bh=GBhtwHMDxHQe112MTP6FeOvQoNAdorU3bAJj579GDok=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MOWGOb1FdoLZEb1kHfXMu3Dzp5w5LyQ5/o8gVO0dV33DuORdif7KovVqHM7MQW39j
	 xcMDq7M+AKgFGohyOVHp0Lek1z66iMA0aLkzCLr79ruWegX1g0rwTPsi7jiZRq++5h
	 qpMjaMO8b9Nwi3zSzbrsajqiAr2hcDWvk1/jCmgM1AsUhonqtaWsBcRzy9pa14q3qe
	 XrBX2mjmDt0oL79nGuNl6aTJBN72wpEgZ7s77a8/Z+wLcIQ/PS3KKejJfuM2K20o6e
	 BPKkIlnliuTMGJNgkg48rCyzQJ2lZbznoDf9BeM2Ku9l7VClM1tNI+9eOsc+B4V7Ba
	 AZmwMn963w55Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id roknvtmSIN0P; Mon,  4 Sep 2023 02:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D518081E17;
	Mon,  4 Sep 2023 02:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D518081E17
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 558BC1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2B3C781E82
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B3C781E82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RiL4RebslbxH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 02:15:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CE8D81E76
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CE8D81E76
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="379215264"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="379215264"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 19:15:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="769826906"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="769826906"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2023 19:15:28 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Sep 2023 10:14:46 +0800
Message-Id: <20230904021455.3944605-7-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230904021455.3944605-1-junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693793732; x=1725329732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Du7dpcQkiMoAZrqiizqUD4gm/Uzd4evAehMExc22kwo=;
 b=OUgSGvLwnoRj1abd7SDZYe196dSaJib/0vbDxm1cLHaTF1M/cDl36u6u
 d5shl4NE/lU+e+wY5oK0eczNgfEXcp4cMTyuXyHc2hAHaHbd6zlI2zV3A
 Z+m+GDMZo7CADCtmYpRHHnnHAZSRpiBqerWpRORgdEdjl+h/py3io1hHu
 h3GKG2wrwYR9ss6XTKKQVVPI49oFvsaCdBP0FiunzliGX2n1dsaxysiyX
 O3obbiQHukLu0V5tTtcM3OoLvkw4R+OED2yTWmf0R7V913v/5v1gGIdJ2
 zVxnurY5EiHg7XVO5t2TiVHR38auJXQK22KtyzjBvijED3z5LKVGBwzp2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OUgSGvLw
Subject: [Intel-wired-lan] [PATCH iwl-next v9 06/15] ice: init ptype marker
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
 drivers/net/ethernet/intel/ice/Makefile       |  1 +
 drivers/net/ethernet/intel/ice/ice_parser.c   | 10 ++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |  4 ++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.c | 51 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.h | 20 ++++++++
 5 files changed, 86 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index d660c1fe856c..a4c48e987a36 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -31,6 +31,7 @@ ice-y := ice_main.o	\
 	 ice_pg_cam.o    \
 	 ice_metainit.o  \
 	 ice_bst_tcam.o  \
+	 ice_ptype_mk.o  \
 	 ice_idc.o	\
 	 ice_devlink.o	\
 	 ice_ddp.o	\
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
