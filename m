Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C65C77F3B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 11:43:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C09E680EC2;
	Thu, 17 Aug 2023 09:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C09E680EC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692265411;
	bh=Puo1wwYfC+9NzwpXQfr7ZcYkyc6TzkKnJ0WozNu+1XU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x5USxQ7pvP+7W1gk5yfP8c+B5yb1kBtDQ1gimPP6olaevHnNcg0+xIEnGqJWDaLHc
	 eZTD/CkOGT0QZqCxM3JX4UrJCU98NC7mh0423h7yMHW+fZeTHCF9ryWBQa94C6U2FC
	 BZy5Hf+DY3BIAJOr9/giTMUMKSNkKOa1QDlpzWWb9w0VV2q7hsbWyIs0zZMlJAluR/
	 gcvdFHZDvn5BSzHHlbc8IVhbkm+KkM3+GA93PDgeeyMxsvM0teCx4UU5lZJJb/AwPk
	 NoJddHTQLkbiGkeqH8ZMVyb6fkhmBuocIowrVPssuXB4s4P0FjW8EwOwcDlayV+vJW
	 Rm67fF30tF/Yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l0JqmeuEyqOt; Thu, 17 Aug 2023 09:43:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69F7680B1D;
	Thu, 17 Aug 2023 09:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69F7680B1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EC0B1BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC068614B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC068614B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSBaiLx4WUVt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 09:43:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1854C60DFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1854C60DFF
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="370232212"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="370232212"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 02:43:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1065177123"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="1065177123"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2023 02:43:06 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 17:42:31 +0800
Message-Id: <20230817094240.2584745-7-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817094240.2584745-1-junfeng.guo@intel.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692265389; x=1723801389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fsNTWZbuy87h/pynLUpbELhJaDpJkum4H/JzVb91iUA=;
 b=ZHngf9YmxR8HMH1Oj3dAkEpV3VKnk1Q59Ezi090y4ZqjnrD5bQXUpF3n
 D5jPsf2c7P2yj3a8AxUIzvTR7VT8pLltJSY8NC17r25Ez8BfPQbA1vcuR
 Y7+w9ejKQhERVvjMw6D7nIrdRewnuiG9ZF/6Ig0CfQHQOFMqsxlxbPgHs
 39iNVY7/7ADWt+J4xOxpkzAjLbNx+WhmQDdHtFNCHFhkm/DQz/x6rmEEz
 QC3H6NtueDxdyWN8hx9bngBOGPjwSZgVRGhjo4STPXa83+LNMWcur2sDg
 JRk8lKxxHF8ttIek7L0pgiNfWPCqQpL1P1opowmNxMsMYqQRmgHk4X2Um
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZHngf9Ym
Subject: [Intel-wired-lan] [PATCH net-next v4 06/15] ice: init ptype marker
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
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
index 99aa96e535fc..f1b40f8ff2da 100644
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
@@ -194,6 +197,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -215,6 +224,7 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_sp_cam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->ptype_mk_tcam_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index af41791dbe2c..1a913e226259 100644
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
index 000000000000..48c0c09a3bfc
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
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
index 000000000000..ddbf353c80dd
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
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
