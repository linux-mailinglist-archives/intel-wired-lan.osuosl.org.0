Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C78378252D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 10:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13BF540A65;
	Mon, 21 Aug 2023 08:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13BF540A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692605739;
	bh=mLEqHLUptw/tej53Zdtge/6oazLwxIBzwC1Dh+tjWi8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gB2QWCCsZKdIG8zgWja0p0pMrZrTM3yToTHBAp2urasPF/wZAa/adbK46GDsELEuq
	 JxIrmtyIj2Tuk0PL/Att0LtMVoDCU1CIn1lZo6B4GSuXOhoujBnmhYxS2ycdyTJ1tb
	 4PFUfiy139WyImEXVqy3LtjDD6gefnfWoFzNKXOe2tgia5e748+U8/56Qvk57l0qUk
	 r27ujPXS+5VP30nGx/vM+eKNroA0v+M1JZaiYU4wxVtgz2TiCnxA/yWLKvVhrOrn2b
	 9wvqqNXGS7oPSriq9QpONjy/q8BbY6dvIgSxwam8EgFkb0bnU++pC2x3Jd08xLHPs4
	 ncpmhg9mfWspA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ipiQXVrXUlgX; Mon, 21 Aug 2023 08:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 194E6409B5;
	Mon, 21 Aug 2023 08:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 194E6409B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CF3C1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7816813FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:15:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7816813FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r5VFgqtgMDoM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 08:15:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC0F2813FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 08:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC0F2813FA
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="376280479"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="376280479"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 01:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="685577575"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="685577575"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga003.jf.intel.com with ESMTP; 21 Aug 2023 01:15:14 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Aug 2023 16:14:32 +0800
Message-Id: <20230821081438.2937934-10-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230821081438.2937934-1-junfeng.guo@intel.com>
References: <20230821023833.2700902-1-junfeng.guo@intel.com>
 <20230821081438.2937934-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692605718; x=1724141718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JBW2knGd5Q4Qx4PH2OazV1jmLljLNCUirQBECMiZzs8=;
 b=hdO8Bjq1E0V8iCt6TOOARK2n4RmPTc0+ah9glFP9IybWPRcKtqy0wH5h
 6onHyJpw1rUtaa0AGfwvrEAAT/zOLm3mxPPxTlJW7F/myxE//J+thZatq
 cYcIIROo8kxK/SVtJXpN78LPqh3FlFCY2fTSZ1fiYQI+/Ukgo0fnVDoPf
 HjJ2Nkc0MwSnsYvK4sZiQPZc6qjmX7n+dHZoN8oShQ0bBDq0eU9beWCOi
 oQ4NfC6ZDDhX+UIgPzpLhNErKJJvmm9fWETkq52dYyNOIeeBbEbjBr0Pz
 ct8HcmlPgKPoX4zGfHGrWPsh2qkzsXLBGd8ZGdYrWW+PKszcHlgb3qB4X
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hdO8Bjq1
Subject: [Intel-wired-lan] [PATCH iwl-next v6 09/15] ice: init XLT key
 builder for parser
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

Parse below DDP section into struct ice_xlt_kb:
	ICE_SID_XLT_KEY_BUILDER_SW
	ICE_SID_XLT_KEY_BUILDER_ACL
	ICE_SID_XLT_KEY_BUILDER_FD
	ICE_SID_XLT_KEY_BUILDER_RSS

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c |  28 +++
 drivers/net/ethernet/intel/ice/ice_parser.h |   9 +
 drivers/net/ethernet/intel/ice/ice_xlt_kb.c | 235 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_xlt_kb.h |  79 +++++++
 4 files changed, 351 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.h

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 3c3f7d6bea52..6499bb774667 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -229,6 +229,30 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -254,6 +278,10 @@ void ice_parser_destroy(struct ice_parser *psr)
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
index 62123788e0a2..ca71ef4f50f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -12,6 +12,7 @@
 #include "ice_mk_grp.h"
 #include "ice_proto_grp.h"
 #include "ice_flg_rd.h"
+#include "ice_xlt_kb.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
@@ -56,6 +57,14 @@ struct ice_parser {
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
index 000000000000..4fca88fb7d77
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
@@ -0,0 +1,235 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+
+static void _ice_xlt_kb_entry_dump(struct ice_hw *hw,
+				   struct ice_xlt_kb_entry *entry, int idx)
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
+	dev_info(ice_hw_to_dev(hw), "flag15 lo = 0x%08x\n", (u32)kb->flag15);
+	dev_info(ice_hw_to_dev(hw), "flag15 hi = 0x%08x\n",
+		 (u32)(kb->flag15 >> (sizeof(u32) * BITS_PER_BYTE)));
+
+	for (i = 0; i < ICE_XLT_KB_TBL_CNT; i++)
+		_ice_xlt_kb_entry_dump(hw, &kb->entries[i], i);
+}
+
+/** The function parses a 192 bits XLT Key Builder entry with below format:
+ *  BIT 0-31:	reserved
+ *  BIT 32-34:	XLT1 AdSel	(entry->xlt1_ad_sel)
+ *  BIT 35-37:	XLT2 AdSel	(entry->xlt2_ad_sel)
+ *  BIT 38-46:	Flag 0 Select	(entry->flg0_14_sel[0])
+ *  BIT 47-55:	Flag 1 Select	(entry->flg0_14_sel[1])
+ *  BIT 56-64:	Flag 2 Select	(entry->flg0_14_sel[2])
+ *  BIT 65-73:	Flag 3 Select	(entry->flg0_14_sel[3])
+ *  BIT 74-82:	Flag 4 Select	(entry->flg0_14_sel[4])
+ *  BIT 83-91:	Flag 5 Select	(entry->flg0_14_sel[5])
+ *  BIT 92-100:	Flag 6 Select	(entry->flg0_14_sel[6])
+ *  BIT 101-109:Flag 7 Select	(entry->flg0_14_sel[7])
+ *  BIT 110-118:Flag 8 Select	(entry->flg0_14_sel[8])
+ *  BIT 119-127:Flag 9 Select	(entry->flg0_14_sel[9])
+ *  BIT 128-136:Flag 10 Select	(entry->flg0_14_sel[10])
+ *  BIT 137-145:Flag 11 Select	(entry->flg0_14_sel[11])
+ *  BIT 146-154:Flag 12 Select	(entry->flg0_14_sel[12])
+ *  BIT 155-163:Flag 13 Select	(entry->flg0_14_sel[13])
+ *  BIT 164-172:Flag 14 Select	(entry->flg0_14_sel[14])
+ *  BIT 173-181:reserved
+ *  BIT 182-186:XLT1 MdSel	(entry->xlt1_md_sel)
+ *  BIT 187-191:XLT2 MdSel	(entry->xlt2_md_sel)
+ */
+static void _ice_kb_entry_init(struct ice_xlt_kb_entry *entry, u8 *data)
+{
+	u8 idd, off, i;
+	u64 d64;
+
+	idd = ICE_XLT_KB_X1AS_S / BITS_PER_BYTE;
+	off = ICE_XLT_KB_X1AS_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&data[idd]) >> off;
+
+	off			= ICE_XLT_KB_X1AS_S - ICE_XLT_KB_X1AS_S;
+	entry->xlt1_ad_sel	= (u8)((d64 >> off) & ICE_XLT_KB_X1AS_M);
+	off			= ICE_XLT_KB_X2AS_S - ICE_XLT_KB_X1AS_S;
+	entry->xlt2_ad_sel	= (u8)((d64 >> off) & ICE_XLT_KB_X2AS_M);
+
+	i = 0;
+	off			= ICE_XLT_KB_FL00_S - ICE_XLT_KB_X1AS_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL00_M);
+	i++;
+	off			= ICE_XLT_KB_FL01_S - ICE_XLT_KB_X1AS_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL01_M);
+	i++;
+	off			= ICE_XLT_KB_FL02_S - ICE_XLT_KB_X1AS_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL02_M);
+	i++;
+	off			= ICE_XLT_KB_FL03_S - ICE_XLT_KB_X1AS_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL03_M);
+	i++;
+	off			= ICE_XLT_KB_FL04_S - ICE_XLT_KB_X1AS_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL04_M);
+	i++;
+	off			= ICE_XLT_KB_FL05_S - ICE_XLT_KB_X1AS_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL05_M);
+
+	idd = ICE_XLT_KB_FL06_S / BITS_PER_BYTE;
+	off = ICE_XLT_KB_FL06_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&data[idd]) >> off;
+
+	i++;
+	off			= ICE_XLT_KB_FL06_S - ICE_XLT_KB_FL06_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL06_M);
+	i++;
+	off			= ICE_XLT_KB_FL07_S - ICE_XLT_KB_FL06_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL07_M);
+	i++;
+	off			= ICE_XLT_KB_FL08_S - ICE_XLT_KB_FL06_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL08_M);
+	i++;
+	off			= ICE_XLT_KB_FL09_S - ICE_XLT_KB_FL06_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL09_M);
+	i++;
+	off			= ICE_XLT_KB_FL10_S - ICE_XLT_KB_FL06_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL10_M);
+	i++;
+	off			= ICE_XLT_KB_FL11_S - ICE_XLT_KB_FL06_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL11_M);
+
+	idd = ICE_XLT_KB_FL12_S / BITS_PER_BYTE;
+	off = ICE_XLT_KB_FL12_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&data[idd]) >> off;
+
+	i++;
+	off			= ICE_XLT_KB_FL12_S - ICE_XLT_KB_FL12_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL12_M);
+	i++;
+	off			= ICE_XLT_KB_FL13_S - ICE_XLT_KB_FL12_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL13_M);
+	i++;
+	off			= ICE_XLT_KB_FL14_S - ICE_XLT_KB_FL12_S;
+	entry->flg0_14_sel[i]	= (u16)((d64 >> off) & ICE_XLT_KB_FL14_M);
+
+	off			= ICE_XLT_KB_X1MS_S - ICE_XLT_KB_FL12_S;
+	entry->xlt1_md_sel	= (u8)((d64 >> off) & ICE_XLT_KB_X1MS_M);
+	off			= ICE_XLT_KB_X2MS_S - ICE_XLT_KB_FL12_S;
+	entry->xlt2_md_sel	= (u8)((d64 >> off) & ICE_XLT_KB_X2MS_M);
+}
+
+/** The function parses a 204 bytes XLT Key Build Table with below format:
+ *  byte 0:	XLT1 Partition Mode		(kb->xlt1_pm)
+ *  byte 1:	XLT2 Partition Mode		(kb->xlt2_pm)
+ *  byte 2:	Profile ID Partition Mode	(kb->prof_id_pm)
+ *  byte 3:	reserved
+ *  byte 4-11:	Flag15 Mask			(kb->flag15)
+ *  byte 12-203:8 Key Build entries		(kb->entries)
+ */
+static void _ice_parse_kb_data(struct ice_hw *hw, struct ice_xlt_kb *kb,
+			       void *data)
+{
+	u8 *buf = data;
+	int i;
+
+	kb->xlt1_pm	= buf[ICE_XLT_KB_X1PM_OFF];
+	kb->xlt2_pm	= buf[ICE_XLT_KB_X2PM_OFF];
+	kb->prof_id_pm	= buf[ICE_XLT_KB_PIPM_OFF];
+
+	kb->flag15 = *(u64 *)&buf[ICE_XLT_KB_FL15_OFF];
+	for (i = 0; i < ICE_XLT_KB_TBL_CNT; i++)
+		_ice_kb_entry_init(&kb->entries[i],
+				   &buf[ICE_XLT_KB_TBL_OFF +
+					i * ICE_XLT_KB_TBL_ENTRY_SIZE]);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_xlt_kb_dump(hw, kb);
+}
+
+static struct ice_xlt_kb *_ice_xlt_kb_get(struct ice_hw *hw, u32 sect_type)
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
+	_ice_parse_kb_data(hw, kb, data);
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
+	return _ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_SW);
+}
+
+/**
+ * ice_xlt_kb_get_acl - create acl xlt key build
+ * @hw: pointer to the hardware structure
+ */
+struct ice_xlt_kb *ice_xlt_kb_get_acl(struct ice_hw *hw)
+{
+	return _ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_ACL);
+}
+
+/**
+ * ice_xlt_kb_get_fd - create fdir xlt key build
+ * @hw: pointer to the hardware structure
+ */
+struct ice_xlt_kb *ice_xlt_kb_get_fd(struct ice_hw *hw)
+{
+	return _ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_FD);
+}
+
+/**
+ * ice_xlt_kb_get_rss - create rss xlt key build
+ * @hw: pointer to the hardware structure
+ */
+struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw)
+{
+	return _ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_RSS);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_xlt_kb.h b/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
new file mode 100644
index 000000000000..020f96bfdbe8
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_XLT_KB_H_
+#define _ICE_XLT_KB_H_
+
+#define ICE_XLT_KB_FLAG0_14_CNT		15
+
+#define ICE_XLT_KB_FLAG_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_X1AS_S		32
+#define ICE_XLT_KB_X1AS_M		BITMAP_MASK(3)
+#define ICE_XLT_KB_X2AS_S		35
+#define ICE_XLT_KB_X2AS_M		BITMAP_MASK(3)
+#define ICE_XLT_KB_FL00_S		38
+#define ICE_XLT_KB_FL00_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL01_S		47
+#define ICE_XLT_KB_FL01_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL02_S		56
+#define ICE_XLT_KB_FL02_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL03_S		65
+#define ICE_XLT_KB_FL03_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL04_S		74
+#define ICE_XLT_KB_FL04_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL05_S		83
+#define ICE_XLT_KB_FL05_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL06_S		92
+#define ICE_XLT_KB_FL06_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL07_S		101
+#define ICE_XLT_KB_FL07_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL08_S		110
+#define ICE_XLT_KB_FL08_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL09_S		119
+#define ICE_XLT_KB_FL09_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL10_S		128
+#define ICE_XLT_KB_FL10_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL11_S		137
+#define ICE_XLT_KB_FL11_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL12_S		146
+#define ICE_XLT_KB_FL12_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL13_S		155
+#define ICE_XLT_KB_FL13_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_FL14_S		164
+#define ICE_XLT_KB_FL14_M		BITMAP_MASK(9)
+#define ICE_XLT_KB_X1MS_S		182
+#define ICE_XLT_KB_X1MS_M		BITMAP_MASK(5)
+#define ICE_XLT_KB_X2MS_S		187
+#define ICE_XLT_KB_X2MS_M		BITMAP_MASK(5)
+
+struct ice_xlt_kb_entry {
+	u8 xlt1_ad_sel;
+	u8 xlt2_ad_sel;
+	u16 flg0_14_sel[ICE_XLT_KB_FLAG0_14_CNT];
+	u8 xlt1_md_sel;
+	u8 xlt2_md_sel;
+};
+
+#define ICE_XLT_KB_X1PM_OFF		0
+#define ICE_XLT_KB_X2PM_OFF		1
+#define ICE_XLT_KB_PIPM_OFF		2
+#define ICE_XLT_KB_FL15_OFF		4
+#define ICE_XLT_KB_TBL_CNT		8
+#define ICE_XLT_KB_TBL_OFF		12
+#define ICE_XLT_KB_TBL_ENTRY_SIZE	24
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
