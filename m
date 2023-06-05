Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D857721C01
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:30:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8DD960E37;
	Mon,  5 Jun 2023 02:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8DD960E37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685932223;
	bh=Zi/Xt73U/138BHYoe9bxQ8go5QH0D15oQ0k6TxhUsrs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7HJRP1uGfzrZwPqA2Qkzewq+8kAkZiyzADVE6VQiSOBpEGjrg06Xm5X4qUu+q2SqJ
	 MLFw/2MpZTRP/rOc75quh5gb0/GstvBDxzvFIHGhKWVgQiRHIj160hXuQFDeibOTwU
	 4Gg6YlhW1LxvQ8tD8VkdVPbQ+zb/JWooGdYRmtnZ9YZi5Cxb1LTQHy+ITcGWGNVPH/
	 /DxZgzqPVx7+IARZQaSNvJdpaITPL+0NHmmnzZPLT9vR/fMJIRB8jyXGqB3OeaKjXH
	 2QVtv0eVVndtPzFXHpUfTUjiaysBIMesryv17myTZ4YN6zMkzH9Z4+RxqzFsyXLjAq
	 O7Mup9hmsvGOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NdV-fD5zvvvp; Mon,  5 Jun 2023 02:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B99460BB9;
	Mon,  5 Jun 2023 02:30:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B99460BB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB3CD1BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0AA860BC4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0AA860BC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n7mI3oN0aV61 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:29:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8258160BF1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8258160BF1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358710425"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358710425"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="1038604770"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="1038604770"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jun 2023 19:29:42 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:29:14 +0800
Message-Id: <20230605022920.2361266-10-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605022920.2361266-1-junfeng.guo@intel.com>
References: <20230605022920.2361266-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685932184; x=1717468184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DFeXKNAjCDYYTNiRNQFW1eORYj8zeTguoIoPryY4aUM=;
 b=NcGNx9PKg9N+Fuip7PALOTbLw4mR2k5cn/DCuXNUsK7gPYgMj9fM+BXS
 wbM9uPi0vDbrVCd1KaqkDXd1UeCiSjHCrofyMbbeJCNBTGc5n4iQd2R32
 Q/tWx8jNgCuSN+iAMppRlQkMqAAChlOr+DGrJ8fbHqlWi/SpfY765IsN5
 PIDjH7CU95+vSYmLpurEAj068VkhpuKx21+17CKwEwGxq+wwzn+sJIo9v
 NWcJZEUSIHq1aTAHqf5JYJwR3gxZzF6RExJTw9rBB5hPvXNMnTcck3TC9
 XzyFRqoONd/w1HBEG6EU/Zv5XqAKgMwudFmZh4wz2Xn83N/SfxcX1u54/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NcGNx9PK
Subject: [Intel-wired-lan] [PATCH iwl-next 09/15] ice: init XLT key builder
 for parser
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

Parse below DDP section into struct ice_xlt_kb:
ICE_SID_XLT_KEY_BUILDER_SW
ICE_SID_XLT_KEY_BUILDER_ACL
ICE_SID_XLT_KEY_BUILDER_FD
ICE_SID_XLT_KEY_BUILDER_RSS

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c |  28 +++
 drivers/net/ethernet/intel/ice/ice_parser.h |   9 +
 drivers/net/ethernet/intel/ice/ice_xlt_kb.c | 191 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_xlt_kb.h |  32 ++++
 4 files changed, 260 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.h

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index fb0bc5c8e6ec..68a8eee1c929 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -244,6 +244,30 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 		goto err;
 	}
 
+	p->xlt_kb_sw = ice_xlt_kb_get_sw(hw);
+	if (!p->xlt_kb_sw) {
+		status = -EINVAL;
+		goto err;
+	}
+
+	p->xlt_kb_acl = ice_xlt_kb_get_acl(hw);
+	if (!p->xlt_kb_acl) {
+		status = -EINVAL;
+		goto err;
+	}
+
+	p->xlt_kb_fd = ice_xlt_kb_get_fd(hw);
+	if (!p->xlt_kb_fd) {
+		status = -EINVAL;
+		goto err;
+	}
+
+	p->xlt_kb_rss = ice_xlt_kb_get_rss(hw);
+	if (!p->xlt_kb_rss) {
+		status = -EINVAL;
+		goto err;
+	}
+
 	*psr = p;
 	return 0;
 err:
@@ -269,6 +293,10 @@ void ice_parser_destroy(struct ice_parser *psr)
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->mk_grp_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->proto_grp_table);
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->flg_rd_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->xlt_kb_sw);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->xlt_kb_acl);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->xlt_kb_fd);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->xlt_kb_rss);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 5eed54d9d189..8222e738d493 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -12,6 +12,7 @@
 #include "ice_mk_grp.h"
 #include "ice_proto_grp.h"
 #include "ice_flg_rd.h"
+#include "ice_xlt_kb.h"
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
@@ -40,6 +41,14 @@ struct ice_parser {
 	struct ice_proto_grp_item *proto_grp_table;
 	/* load data from section ICE_SID_RXPARSER_FLAG_REDIR */
 	struct ice_flg_rd_item *flg_rd_table;
+	/* load data from section ICE_SID_XLT_KEY_BUILDER_SW */
+	struct ice_xlt_kb *xlt_kb_sw;
+	/* load data from section ICE_SID_XLT_KEY_BUILDER_ACL */
+	struct ice_xlt_kb *xlt_kb_acl;
+	/* load data from section ICE_SID_XLT_KEY_BUILDER_FD */
+	struct ice_xlt_kb *xlt_kb_fd;
+	/* load data from section ICE_SID_XLT_KEY_BUILDER_RSS */
+	struct ice_xlt_kb *xlt_kb_rss;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_xlt_kb.c b/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
new file mode 100644
index 000000000000..146602dd6b57
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+
+#define ICE_XLT_KB_TBL_OFF 12
+#define ICE_XLT_KB_TBL_ENTRY_SIZE 24
+
+static void _xlt_kb_entry_dump(struct ice_hw *hw,
+			       struct ice_xlt_kb_entry *entry, int idx)
+{
+	int i;
+
+	dev_info(ice_hw_to_dev(hw), "key builder entry %d\n", idx);
+	dev_info(ice_hw_to_dev(hw), "\txlt1_ad_sel = %d\n",
+		 entry->xlt1_ad_sel);
+	dev_info(ice_hw_to_dev(hw), "\txlt2_ad_sel = %d\n",
+		 entry->xlt2_ad_sel);
+
+	for (i = 0; i < ICE_XLT_KB_FLAG0_14_CNT; i++)
+		dev_info(ice_hw_to_dev(hw), "\tflg%d_sel = %d\n", i,
+			 entry->flg0_14_sel[i]);
+
+	dev_info(ice_hw_to_dev(hw), "\txlt1_md_sel = %d\n",
+		 entry->xlt1_md_sel);
+	dev_info(ice_hw_to_dev(hw), "\txlt2_md_sel = %d\n",
+		 entry->xlt2_md_sel);
+}
+
+/**
+ * ice_xlt_kb_dump - dump a xlt key build info
+ * @hw: pointer to the hardware structure
+ * @kb: key build to dump
+ */
+void ice_xlt_kb_dump(struct ice_hw *hw, struct ice_xlt_kb *kb)
+{
+	int i;
+
+	dev_info(ice_hw_to_dev(hw), "xlt1_pm = %d\n", kb->xlt1_pm);
+	dev_info(ice_hw_to_dev(hw), "xlt2_pm = %d\n", kb->xlt2_pm);
+	dev_info(ice_hw_to_dev(hw), "prof_id_pm = %d\n", kb->prof_id_pm);
+	dev_info(ice_hw_to_dev(hw), "flag15 low  = 0x%08x\n", (u32)kb->flag15);
+	dev_info(ice_hw_to_dev(hw), "flag15 high = 0x%08x\n",
+		 (u32)(kb->flag15 >> 32));
+
+	for (i = 0; i < ICE_XLT_KB_TBL_CNT; i++)
+		_xlt_kb_entry_dump(hw, &kb->entries[i], i);
+}
+
+/** The function parses a 192 bits XLT Key Build entry with below format:
+ *  BIT 0-31:	reserved
+ *  BIT 32-34:	XLT1 AdSel (entry->xlt1_ad_sel)
+ *  BIT 35-37:	XLT2 AdSel (entry->xlt2_ad_sel)
+ *  BIT 38-46:	Flag 0 Select (entry->flg0_14_sel[0])
+ *  BIT 47-55:	Flag 1 Select (entry->flg0_14_sel[1])
+ *  BIT 56-64:	Flag 2 Select (entry->flg0_14_sel[2])
+ *  BIT 65-73:	Flag 3 Select (entry->flg0_14_sel[3])
+ *  BIT 74-82:	Flag 4 Select (entry->flg0_14_sel[4])
+ *  BIT 83-91:	Flag 5 Select (entry->flg0_14_sel[5])
+ *  BIT 92-100:	Flag 6 Select (entry->flg0_14_sel[6])
+ *  BIT 101-109:Flag 7 Select (entry->flg0_14_sel[7])
+ *  BIT 110-118:Flag 8 Select (entry->flg0_14_sel[8])
+ *  BIT 119-127:Flag 9 Select (entry->flg0_14_sel[9])
+ *  BIT 128-136:Flag 10 Select (entry->flg0_14_sel[10])
+ *  BIT 137-145:Flag 11 Select (entry->flg0_14_sel[11])
+ *  BIT 146-154:Flag 12 Select (entry->flg0_14_sel[12])
+ *  BIT 155-163:Flag 13 Select (entry->flg0_14_sel[13])
+ *  BIT 164-172:Flag 14 Select (entry->flg0_14_sel[14])
+ *  BIT 173-181:reserved
+ *  BIT 182-186:XLT1 MdSel (entry->xlt1_md_sel)
+ *  BIT 187-191:XLT2 MdSel (entry->xlt2_md_sel)
+ */
+static void _kb_entry_init(struct ice_xlt_kb_entry *entry, u8 *data)
+{
+	u64 d64 = *(u64 *)&data[4];
+
+	entry->xlt1_ad_sel = (u8)(d64 & 0x7);
+	entry->xlt2_ad_sel = (u8)((d64 >> 3) & 0x7);
+	entry->flg0_14_sel[0] = (u16)((d64 >> 6) & 0x1ff);
+	entry->flg0_14_sel[1] = (u16)((d64 >> 15) & 0x1ff);
+	entry->flg0_14_sel[2] = (u16)((d64 >> 24) & 0x1ff);
+	entry->flg0_14_sel[3] = (u16)((d64 >> 33) & 0x1ff);
+	entry->flg0_14_sel[4] = (u16)((d64 >> 42) & 0x1ff);
+	entry->flg0_14_sel[5] = (u16)((d64 >> 51) & 0x1ff);
+
+	d64 = (*(u64 *)&data[11] >> 4);
+	entry->flg0_14_sel[6] = (u16)(d64 & 0x1ff);
+	entry->flg0_14_sel[7] = (u16)((d64 >> 9) & 0x1ff);
+	entry->flg0_14_sel[8] = (u16)((d64 >> 18) & 0x1ff);
+	entry->flg0_14_sel[9] = (u16)((d64 >> 27) & 0x1ff);
+	entry->flg0_14_sel[10] = (u16)((d64 >> 36) & 0x1ff);
+	entry->flg0_14_sel[11] = (u16)((d64 >> 45) & 0x1ff);
+
+	d64 = (*(u64 *)&data[18] >> 2);
+	entry->flg0_14_sel[12] = (u16)(d64 & 0x1ff);
+	entry->flg0_14_sel[13] = (u16)((d64 >> 9) & 0x1ff);
+	entry->flg0_14_sel[14] = (u16)((d64 >> 18) & 0x1ff);
+
+	entry->xlt1_md_sel = (u8)((d64 >> 36) & 0x1f);
+	entry->xlt2_md_sel = (u8)((d64 >> 41) & 0x1f);
+}
+
+/** The function parses a 204 bytes XLT Key Build Table with below format:
+ *  byte 0:	XLT1 Partition Mode (kb->xlt1_pm)
+ *  byte 1:	XLT2 Partition Mode (kb->xlt2_pm)
+ *  byte 2:	Profile ID Partition Mode (kb->prof_id_pm)
+ *  byte 3:	reserved
+ *  byte 4-11:	Flag15 Mask (kb->flag15)
+ *  byte 12-203:8 Key Build entries (kb->entries)
+ */
+static void _parse_kb_data(struct ice_hw *hw, struct ice_xlt_kb *kb, void *data)
+{
+	u8 *buf = data;
+	int i;
+
+	kb->xlt1_pm = buf[0];
+	kb->xlt2_pm = buf[1];
+	kb->prof_id_pm = buf[2];
+
+	kb->flag15 = *(u64 *)&buf[4];
+	for (i = 0; i < ICE_XLT_KB_TBL_CNT; i++)
+		_kb_entry_init(&kb->entries[i],
+			       &buf[ICE_XLT_KB_TBL_OFF +
+				    i * ICE_XLT_KB_TBL_ENTRY_SIZE]);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_xlt_kb_dump(hw, kb);
+}
+
+static struct ice_xlt_kb *_xlt_kb_get(struct ice_hw *hw, u32 sect_type)
+{
+	struct ice_seg *seg = hw->seg;
+	struct ice_pkg_enum state;
+	struct ice_xlt_kb *kb;
+	void *data;
+
+	if (!seg)
+		return NULL;
+
+	kb = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*kb), GFP_KERNEL);
+	if (!kb)
+		return NULL;
+
+	memset(&state, 0, sizeof(state));
+	data = ice_pkg_enum_section(seg, &state, sect_type);
+	if (!data) {
+		ice_debug(hw, ICE_DBG_PARSER, "failed to find section type %d.\n",
+			  sect_type);
+		return NULL;
+	}
+
+	_parse_kb_data(hw, kb, data);
+
+	return kb;
+}
+
+/**
+ * ice_xlt_kb_get_sw - create switch xlt key build
+ * @hw: pointer to the hardware structure
+ */
+struct ice_xlt_kb *ice_xlt_kb_get_sw(struct ice_hw *hw)
+{
+	return _xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_SW);
+}
+
+/**
+ * ice_xlt_kb_get_acl - create acl xlt key build
+ * @hw: pointer to the hardware structure
+ */
+struct ice_xlt_kb *ice_xlt_kb_get_acl(struct ice_hw *hw)
+{
+	return _xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_ACL);
+}
+
+/**
+ * ice_xlt_kb_get_fd - create fdir xlt key build
+ * @hw: pointer to the hardware structure
+ */
+struct ice_xlt_kb *ice_xlt_kb_get_fd(struct ice_hw *hw)
+{
+	return _xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_FD);
+}
+
+/**
+ * ice_xlt_kb_get_rss - create rss xlt key build
+ * @hw: pointer to the hardware structure
+ */
+struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw)
+{
+	return _xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_RSS);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_xlt_kb.h b/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
new file mode 100644
index 000000000000..f15c3d8f3695
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_XLT_KB_H_
+#define _ICE_XLT_KB_H_
+
+#define ICE_XLT_KB_TBL_CNT 8
+#define ICE_XLT_KB_FLAG0_14_CNT 15
+
+struct ice_xlt_kb_entry {
+	u8 xlt1_ad_sel;
+	u8 xlt2_ad_sel;
+	u16 flg0_14_sel[ICE_XLT_KB_FLAG0_14_CNT];
+	u8 xlt1_md_sel;
+	u8 xlt2_md_sel;
+};
+
+struct ice_xlt_kb {
+	u8 xlt1_pm;
+	u8 xlt2_pm;
+	u8 prof_id_pm;
+	u64 flag15;
+
+	struct ice_xlt_kb_entry entries[ICE_XLT_KB_TBL_CNT];
+};
+
+void ice_xlt_kb_dump(struct ice_hw *hw, struct ice_xlt_kb *kb);
+struct ice_xlt_kb *ice_xlt_kb_get_sw(struct ice_hw *hw);
+struct ice_xlt_kb *ice_xlt_kb_get_acl(struct ice_hw *hw);
+struct ice_xlt_kb *ice_xlt_kb_get_fd(struct ice_hw *hw);
+struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw);
+#endif /* _ICE_XLT_KB_H */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
