Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CADBF721BFF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:30:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E5F460BF7;
	Mon,  5 Jun 2023 02:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E5F460BF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685932212;
	bh=ltkwRU7gNrqtVpmpGLf3bTySdeKbZZcAFr5CVUyByNQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R5iMaMtOdU8L28YfE+UUXnqFwybhN0uY2ro7qTaRIE97SL0w+jYpINDqujCTqaqGt
	 m34CVyeFtwE4d4PSfLCDYAmlJNwMBagfMxoE4vQ0bjYRRYSnW9WvZBLEyXtY+h3uHI
	 6ACCYDtaQYUoOixFhq+cKD6DrzenoeMsN/79f6ZB2TM6wooMTZ42zGU8Elljdg4bqu
	 /gTGOuRAo5zIys2obDS45CFoJmr1HayRXiRb5TwAiukGfT0ZEUd7IEJwrIFt2ZcMYV
	 O2giU+VIt/H60rjzQgnBXLVdlpbeTfL6aPOp6AWuRGBIQ6w7ZczBihIapizujyB+VR
	 CUNFjbt4Ta4tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGiypdSwMsIG; Mon,  5 Jun 2023 02:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB8A760BC4;
	Mon,  5 Jun 2023 02:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB8A760BC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 028C81BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD1CA60BAD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD1CA60BAD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id duAWQqaq2zf5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:29:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8F8260BBB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8F8260BBB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358710418"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358710418"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="1038604739"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="1038604739"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jun 2023 19:29:40 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:29:12 +0800
Message-Id: <20230605022920.2361266-8-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605022920.2361266-1-junfeng.guo@intel.com>
References: <20230605022920.2361266-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685932181; x=1717468181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FpAAuVzuq+ok4ce5PQ7zLybAiK3OaruvGfvRMmKxxFw=;
 b=KAB4//3GksVhVH74Qgt8EOb5RvH7s7fM+QoTHGfMJBj4mWUWn7tEGSWw
 TAUOdlB1inGmqFEsoK6RvAmPBNgVn2Z3rEbapiR31UdbAo2hJkhHnJcGK
 EtUm0I8TCSog9J2HWgDl2uIogA3SthKwOEiZV2nrb3SqMKv6bhkXf5yZn
 OaqunIWTzMzuvvBDtEsdIye04BW5lrpLUWAxM63hkPLl8oyAupKjTnhL4
 zPnU+HOCIFKQphcThEdXhQgCvavpSGWNJ7mXTt7W4NonW72FVPSqApPAY
 Y+T66G2bmPXkNxXnYVSzM/xY/dxDIsDeolsnxrMUCtKHjpAtG+64TE1SZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KAB4//3G
Subject: [Intel-wired-lan] [PATCH iwl-next 07/15] ice: init marker and
 protocol group table for parser
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

Parse DDP section ICE_SID_RXPARSER_MARKER_GRP into an array of
ice_mk_grp_item.
Parse DDP section ICE_SID_RXPARSER_PROTO_GRP into an array of
ice_proto_grp_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_mk_grp.c   |  54 +++++++++
 drivers/net/ethernet/intel/ice/ice_mk_grp.h   |  14 +++
 drivers/net/ethernet/intel/ice/ice_parser.c   |  22 ++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |   6 +
 .../net/ethernet/intel/ice/ice_proto_grp.c    | 105 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_proto_grp.h    |  23 ++++
 6 files changed, 224 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.h

diff --git a/drivers/net/ethernet/intel/ice/ice_mk_grp.c b/drivers/net/ethernet/intel/ice/ice_mk_grp.c
new file mode 100644
index 000000000000..7068cfb832d6
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_mk_grp.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+#define ICE_MK_GRP_TABLE_SIZE 128
+#define ICE_MK_COUNT_PER_GRP 8
+
+/**
+ * ice_mk_grp_dump - dump an marker group item info
+ * @hw: pointer to the hardware structure
+ * @item: marker group item to dump
+ */
+void ice_mk_grp_dump(struct ice_hw *hw, struct ice_mk_grp_item *item)
+{
+	int i;
+
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	dev_info(ice_hw_to_dev(hw), "markers: ");
+	for (i = 0; i < ICE_MK_COUNT_PER_GRP; i++)
+		dev_info(ice_hw_to_dev(hw), "%d ", item->markers[i]);
+	dev_info(ice_hw_to_dev(hw), "\n");
+}
+
+static void _mk_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
+			       void *data, int size)
+{
+	struct ice_mk_grp_item *grp = item;
+	u8 *buf = data;
+	int i;
+
+	grp->idx = idx;
+
+	for (i = 0; i < ICE_MK_COUNT_PER_GRP; i++)
+		grp->markers[i] = buf[i];
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_mk_grp_dump(hw, grp);
+}
+
+/**
+ * ice_mk_grp_table_get - create a marker group table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_mk_grp_item *ice_mk_grp_table_get(struct ice_hw *hw)
+{
+	return (struct ice_mk_grp_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_MARKER_GRP,
+					sizeof(struct ice_mk_grp_item),
+					ICE_MK_GRP_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_mk_grp_parse_item, false);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_mk_grp.h b/drivers/net/ethernet/intel/ice/ice_mk_grp.h
new file mode 100644
index 000000000000..3c6c340a2a9a
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_mk_grp.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_MK_GRP_H_
+#define _ICE_MK_GRP_H_
+
+struct ice_mk_grp_item {
+	int idx;
+	u8 markers[8];
+};
+
+void ice_mk_grp_dump(struct ice_hw *hw, struct ice_mk_grp_item *item);
+struct ice_mk_grp_item *ice_mk_grp_table_get(struct ice_hw *hw);
+#endif /* _ICE_MK_GRP_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index fabe51fa4ce6..345a99770941 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -13,6 +13,8 @@
 #define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
 #define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE		88
 #define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE		24
+#define ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE		8
+#define ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE		24
 
 #define ICE_SEC_LBL_DATA_OFFSET				2
 #define ICE_SID_LBL_ENTRY_SIZE				66
@@ -75,6 +77,12 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 	case ICE_SID_RXPARSER_MARKER_PTYPE:
 		size = ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_MARKER_GRP:
+		size = ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_PROTO_GRP:
+		size = ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -214,6 +222,18 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 		goto err;
 	}
 
+	p->mk_grp_table = ice_mk_grp_table_get(hw);
+	if (!p->mk_grp_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
+	p->proto_grp_table = ice_proto_grp_table_get(hw);
+	if (!p->proto_grp_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
 	*psr = p;
 	return 0;
 err:
@@ -236,6 +256,8 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->ptype_mk_tcam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->mk_grp_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->proto_grp_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 1474a2337ad3..3f17b15a1381 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -9,6 +9,8 @@
 #include "ice_pg_cam.h"
 #include "ice_bst_tcam.h"
 #include "ice_ptype_mk.h"
+#include "ice_mk_grp.h"
+#include "ice_proto_grp.h"
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
@@ -31,6 +33,10 @@ struct ice_parser {
 	struct ice_lbl_item *bst_lbl_table;
 	/* load data from section ICE_SID_RXPARSER_MARKER_PTYPE */
 	struct ice_ptype_mk_tcam_item *ptype_mk_tcam_table;
+	/* load data from section ICE_SID_RXPARSER_MARKER_GRP */
+	struct ice_mk_grp_item *mk_grp_table;
+	/* load data from section ICE_SID_RXPARSER_PROTO_GRP */
+	struct ice_proto_grp_item *proto_grp_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_proto_grp.c b/drivers/net/ethernet/intel/ice/ice_proto_grp.c
new file mode 100644
index 000000000000..781adbda0851
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_proto_grp.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+static void _proto_off_dump(struct ice_hw *hw, struct ice_proto_off *po,
+			    int idx)
+{
+	dev_info(ice_hw_to_dev(hw), "proto %d\n", idx);
+	dev_info(ice_hw_to_dev(hw), "\tpolarity = %d\n", po->polarity);
+	dev_info(ice_hw_to_dev(hw), "\tproto_id = %d\n", po->proto_id);
+	dev_info(ice_hw_to_dev(hw), "\toffset = %d\n", po->offset);
+}
+
+/**
+ * ice_proto_grp_dump - dump a proto group item info
+ * @hw: pointer to the hardware structure
+ * @item: proto group item to dump
+ */
+void ice_proto_grp_dump(struct ice_hw *hw, struct ice_proto_grp_item *item)
+{
+	int i;
+
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+
+	for (i = 0; i < ICE_PROTO_COUNT_PER_GRP; i++)
+		_proto_off_dump(hw, &item->po[i], i);
+}
+
+/** The function parses a 22 bits Protocol entry with below format:
+ *  BIT 0:	Polarity of Protocol Offset (po->polarity)
+ *  BIT 1-8:	Protocol ID (po->proto_id)
+ *  BIT 9-11:	reserved
+ *  BIT 12-21:	Protocol Offset (po->offset)
+ */
+static void _proto_off_parse(struct ice_proto_off *po, u32 data)
+{
+	po->polarity = (data & 0x1) != 0;
+	po->proto_id = (u8)((data >> 1) & 0xff);
+	po->offset = (u16)((data >> 12) & 0x3ff);
+}
+
+/** The function parses a 192 bits Protocol Group Table entry with below
+ *  format:
+ *  BIT 0-21:	Protocol 0 (grp->po[0])
+ *  BIT 22-43:	Protocol 1 (grp->po[1])
+ *  BIT 44-65:	Protocol 2 (grp->po[2])
+ *  BIT 66-87:	Protocol 3 (grp->po[3])
+ *  BIT 88-109:	Protocol 4 (grp->po[4])
+ *  BIT 110-131:Protocol 5 (grp->po[5])
+ *  BIT 132-153:Protocol 6 (grp->po[6])
+ *  BIT 154-175:Protocol 7 (grp->po[7])
+ *  BIT 176-191:reserved
+ */
+static void _proto_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				  void *data, int size)
+{
+	struct ice_proto_grp_item *grp = item;
+	u8 *buf = data;
+	u32 d32;
+
+	grp->idx = idx;
+
+	d32 = *(u32 *)buf;
+	_proto_off_parse(&grp->po[0], d32);
+
+	d32 = (*(u32 *)&buf[2] >> 6);
+	_proto_off_parse(&grp->po[1], d32);
+
+	d32 = (*(u32 *)&buf[5] >> 4);
+	_proto_off_parse(&grp->po[2], d32);
+
+	d32 = (*(u32 *)&buf[8] >> 2);
+	_proto_off_parse(&grp->po[3], d32);
+
+	d32 = *(u32 *)&buf[11];
+	_proto_off_parse(&grp->po[4], d32);
+
+	d32 = (*(u32 *)&buf[13] >> 6);
+	_proto_off_parse(&grp->po[5], d32);
+
+	d32 = (*(u32 *)&buf[16] >> 4);
+	_proto_off_parse(&grp->po[6], d32);
+
+	d32 = (*(u32 *)&buf[19] >> 2);
+	_proto_off_parse(&grp->po[7], d32);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_proto_grp_dump(hw, grp);
+}
+
+/**
+ * ice_proto_grp_table_get - create a proto group table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_proto_grp_item *ice_proto_grp_table_get(struct ice_hw *hw)
+{
+	return (struct ice_proto_grp_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_PROTO_GRP,
+					sizeof(struct ice_proto_grp_item),
+					ICE_PROTO_GRP_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_proto_grp_parse_item, false);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_proto_grp.h b/drivers/net/ethernet/intel/ice/ice_proto_grp.h
new file mode 100644
index 000000000000..eb380489478e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_proto_grp.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_PROTO_GRP_H_
+#define _ICE_PROTO_GRP_H_
+
+#define ICE_PROTO_COUNT_PER_GRP 8
+#define ICE_PROTO_GRP_TABLE_SIZE 192
+
+struct ice_proto_off {
+	bool polarity; /* true: positive, false: nagtive */
+	u8 proto_id;
+	u16 offset;
+};
+
+struct ice_proto_grp_item {
+	u16 idx;
+	struct ice_proto_off po[ICE_PROTO_COUNT_PER_GRP];
+};
+
+void ice_proto_grp_dump(struct ice_hw *hw, struct ice_proto_grp_item *item);
+struct ice_proto_grp_item *ice_proto_grp_table_get(struct ice_hw *hw);
+#endif /* _ICE_PROTO_GRP_H_ */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
