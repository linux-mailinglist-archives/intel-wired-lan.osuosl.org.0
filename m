Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9562786909
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 09:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6961A6133B;
	Thu, 24 Aug 2023 07:55:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6961A6133B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692863758;
	bh=m7YH8ZzdyXPMmQzpy+scIF/bsYjDm3kbixg2f3YH6Cg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=roTTKMnEEHE/cyoydskYsoBcMBCxMYKoNseTxwwhMdoPQuSUttEiMXwwYmC5bBH6y
	 Xo+bCoiRezM7uR1P5bEaSF++x3Ea4tvW96SEaIeS2+9v+KnxQvbssisiLUtv0Il98t
	 2Jg02mFDkuUgJTTaq+6G8VRqoMf10DVhb47wQvkGybHJo61ST0nUHzTz1pLHQ/IV/M
	 43qTh4do1O6PlZPFecMu8yxBcK8PZh5LLaHaG62I6k5eYtLz+/6A9K9etklKL9FWFK
	 QSQqUGg6hXrDO4/Rj+Mw3sXbVw9D+no/Y8s6IG8NXwZl4q4zN5QWxy2Q7hPrHcYPZd
	 /JhvBIFL3OZTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id my3Y_00GZO75; Thu, 24 Aug 2023 07:55:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41E7961338;
	Thu, 24 Aug 2023 07:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41E7961338
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0885C1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF7156133F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF7156133F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XN18svo8uGR0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 07:55:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D8006133B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D8006133B
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354705318"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354705318"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 00:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="772022587"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="772022587"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2023 00:55:41 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 15:54:52 +0800
Message-Id: <20230824075500.1735790-8-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230824075500.1735790-1-junfeng.guo@intel.com>
References: <20230823093158.782802-1-junfeng.guo@intel.com>
 <20230824075500.1735790-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692863746; x=1724399746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vCYWVvxkMdL4IFxwc3MUYglzDpuG2NQY5N5/RVHYwa8=;
 b=SnzSwl0THrIXfl4DLOsvm21gFdBTXfJ5tlSQrQy8c0mE5RbP/majCOaK
 dA+zx+rAOo7cnDgSG5xstAaKdy8genxRfWo6QOJT4FweHlJaD/ZE10tRC
 oPZs3bG7t2ALEDUSlBDVFZvSF2D34dld5DLJs/KdNVSNo3y3LMOLRhPYV
 j2a7nU5sy0hAiEuiNNyBMzVj5EefZ0wSms995yTJMbmGPSzqSyM6NtOpi
 ow8/X6B0owo40/ZDvLix8bMbTskmDBTQVGr9hIlaWLQhVOP+QemYpIWkL
 sPhckuwO2Tw2wh+0unUvEx/2tElUztRRJsliYx34anvLbKX9+uLFzAqTO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SnzSwl0T
Subject: [Intel-wired-lan] [PATCH iwl-next v8 07/15] ice: init marker and
 protocol group tables for parser
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

Parse DDP section ICE_SID_RXPARSER_MARKER_GRP into an array of
ice_mk_grp_item.
Parse DDP section ICE_SID_RXPARSER_PROTO_GRP into an array of
ice_proto_grp_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_mk_grp.c   | 51 +++++++++++
 drivers/net/ethernet/intel/ice/ice_mk_grp.h   | 17 ++++
 drivers/net/ethernet/intel/ice/ice_parser.c   | 20 +++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |  8 ++
 .../net/ethernet/intel/ice/ice_proto_grp.c    | 90 +++++++++++++++++++
 .../net/ethernet/intel/ice/ice_proto_grp.h    | 31 +++++++
 6 files changed, 217 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.h

diff --git a/drivers/net/ethernet/intel/ice/ice_mk_grp.c b/drivers/net/ethernet/intel/ice/ice_mk_grp.c
new file mode 100644
index 000000000000..395e43343165
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_mk_grp.c
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
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
+static void _ice_mk_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				   void *data, int size)
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
+					_ice_mk_grp_parse_item, false);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_mk_grp.h b/drivers/net/ethernet/intel/ice/ice_mk_grp.h
new file mode 100644
index 000000000000..c5c8734b9d3e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_mk_grp.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_MK_GRP_H_
+#define _ICE_MK_GRP_H_
+
+#define ICE_MK_GRP_TABLE_SIZE	128
+#define ICE_MK_COUNT_PER_GRP	8
+
+struct ice_mk_grp_item {
+	int idx;
+	u8 markers[ICE_MK_COUNT_PER_GRP];
+};
+
+void ice_mk_grp_dump(struct ice_hw *hw, struct ice_mk_grp_item *item);
+struct ice_mk_grp_item *ice_mk_grp_table_get(struct ice_hw *hw);
+#endif /* _ICE_MK_GRP_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 01684a7c5c75..4da2d4c21bab 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -62,6 +62,12 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
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
@@ -202,6 +208,18 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -224,6 +242,8 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->ptype_mk_tcam_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->mk_grp_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->proto_grp_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index c0ac4b2a9a6e..4038833450f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -9,6 +9,8 @@
 #include "ice_pg_cam.h"
 #include "ice_bst_tcam.h"
 #include "ice_ptype_mk.h"
+#include "ice_mk_grp.h"
+#include "ice_proto_grp.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
@@ -19,6 +21,8 @@
 #define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
 #define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE		88
 #define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE		24
+#define ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE		8
+#define ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE		24
 
 #define ICE_SEC_LBL_DATA_OFFSET				2
 #define ICE_SID_LBL_ENTRY_SIZE				66
@@ -44,6 +48,10 @@ struct ice_parser {
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
index 000000000000..c53970b47029
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_proto_grp.c
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+static void _ice_proto_off_dump(struct ice_hw *hw, struct ice_proto_off *po,
+				int idx)
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
+		_ice_proto_off_dump(hw, &item->po[i], i);
+}
+
+/** The function parses a 22 bits Protocol entry with below format:
+ *  BIT 0:	Polarity of Protocol Offset	(po->polarity)
+ *  BIT 1-8:	Protocol ID			(po->proto_id)
+ *  BIT 9-11:	reserved
+ *  BIT 12-21:	Protocol Offset			(po->offset)
+ */
+static void _ice_proto_off_parse(struct ice_proto_off *po, u32 data)
+{
+	po->polarity	= !!(data & ICE_PO_POL_M);
+	po->proto_id	= (u8)((data >> ICE_PO_PID_S) & ICE_PO_PID_M);
+	po->offset	= (u16)((data >> ICE_PO_OFF_S) & ICE_PO_OFF_M);
+}
+
+/** The function parses a 192 bits Protocol Group Table entry with below
+ *  format:
+ *  BIT 0-21:	Protocol 0	(grp->po[0])
+ *  BIT 22-43:	Protocol 1	(grp->po[1])
+ *  BIT 44-65:	Protocol 2	(grp->po[2])
+ *  BIT 66-87:	Protocol 3	(grp->po[3])
+ *  BIT 88-109:	Protocol 4	(grp->po[4])
+ *  BIT 110-131:Protocol 5	(grp->po[5])
+ *  BIT 132-153:Protocol 6	(grp->po[6])
+ *  BIT 154-175:Protocol 7	(grp->po[7])
+ *  BIT 176-191:reserved
+ */
+static void _ice_proto_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				      void *data, int size)
+{
+	struct ice_proto_grp_item *grp = item;
+	u8 *buf = (u8 *)data;
+	u8 idd, off;
+	u32 d32;
+	int i;
+
+	grp->idx = idx;
+
+	for (i = 0; i < ICE_PROTO_COUNT_PER_GRP; i++) {
+		idd = (ICE_PROTO_GRP_ITEM_SIZE * i) / BITS_PER_BYTE;
+		off = (ICE_PROTO_GRP_ITEM_SIZE * i) % BITS_PER_BYTE;
+		d32 = *((u32 *)&buf[idd]) >> off;
+		_ice_proto_off_parse(&grp->po[i], d32);
+	}
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
+					_ice_proto_grp_parse_item, false);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_proto_grp.h b/drivers/net/ethernet/intel/ice/ice_proto_grp.h
new file mode 100644
index 000000000000..6e2b39151a92
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_proto_grp.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_PROTO_GRP_H_
+#define _ICE_PROTO_GRP_H_
+
+#define ICE_PROTO_COUNT_PER_GRP		8
+#define ICE_PROTO_GRP_TABLE_SIZE	192
+#define ICE_PROTO_GRP_ITEM_SIZE		22
+
+#define ICE_PO_POL_S	0
+#define ICE_PO_POL_M	BITMAP_MASK(1)
+#define ICE_PO_PID_S	1
+#define ICE_PO_PID_M	BITMAP_MASK(8)
+#define ICE_PO_OFF_S	12
+#define ICE_PO_OFF_M	BITMAP_MASK(10)
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
