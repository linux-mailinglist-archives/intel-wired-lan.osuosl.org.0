Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD94721BFA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D941460BF5;
	Mon,  5 Jun 2023 02:29:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D941460BF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685932189;
	bh=TxJamQoCOwGyg8il2oFWwiGjvf7G9DRDM6uLI2pkKFQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jB8yzjSfsbouMb7L0mgjE2vuFvMr63cufDjkuvrZyuYSeqwB+nYaTp/jQU4iuCfl5
	 /xiRn6sY+Dd0dRNcWkeS8eIVXq/mesIeFUTsgtmKNQhhUQyq7+bowqJHEJtWWrG8Or
	 +9HuIj7pdNPA7CWB7d+8dyEql0jtaWIuuMSwej1Re+jVSo4z+pdiMr8acfblTqZUGH
	 1gq4E5nNLl0ggO9pCSXCzE/Qstn2FcrKZvnCpCaFU9FIyeHXWG7ghnQM1rhWfbfoSO
	 MNYR23ERehrhuCFWHX6SBKVB4ZWD60vnCSHWkuqr2MLHYUpNbMUuquxaUjVbtmkJCJ
	 aUg1cpUOLkmZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f6UJZkBR_qm3; Mon,  5 Jun 2023 02:29:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8B7860BB9;
	Mon,  5 Jun 2023 02:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8B7860BB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8ACA41BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7155B60BBB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7155B60BBB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMojuZPQpItq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:29:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5002560BC3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5002560BC3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358710409"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358710409"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="1038604704"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="1038604704"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jun 2023 19:29:34 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:29:08 +0800
Message-Id: <20230605022920.2361266-4-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605022920.2361266-1-junfeng.guo@intel.com>
References: <20230605022920.2361266-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685932176; x=1717468176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f6j5n4bftEHhOTeOnmE/+cBmmkee1WhY7JiMogvb+5I=;
 b=C5VsCGmiIS/DRheFLqs4A/0Faa28yqsIr1HJadk3wCFIQUsktRoGksjw
 NdaMKSSQBS6/H0sm9QsyVi8BHh6OV/L7PXtHRkqTHHYmEBRRJRKPoY56F
 1M+1OtJ61qNrb9WPeF5sKT7F0/rKAR7W0DfUj72MSISm1jxflZcKAcw3n
 qIO5frJrMd/8jjHbGi1gpgx3WK+teD3b/U8t8ykUXjZFJLZIE8cxMHjiN
 eIKmSvcsuJtJR3OYq08t3S3FBuJ/HaxdS79RK9c/Kzp5DvZ89MvKEj47o
 Off3nM3KJ9gescmfwbSZBgK89gGoCeFvErA6hgXsjg99uNf+CDxZG4UIX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C5VsCGmi
Subject: [Intel-wired-lan] [PATCH iwl-next 03/15] ice: init metainit table
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

Parse DDP section ICE_SID_RXPARSER_METADATA_INIT into an array of
struct ice_metainit_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_metainit.c | 155 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_metainit.h |  45 +++++
 drivers/net/ethernet/intel/ice/ice_parser.c   |  11 ++
 drivers/net/ethernet/intel/ice/ice_parser.h   |   2 +
 .../net/ethernet/intel/ice/ice_parser_util.h  |   1 +
 5 files changed, 214 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h

diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c b/drivers/net/ethernet/intel/ice/ice_metainit.c
new file mode 100644
index 000000000000..911099a38087
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+#define ICE_METAINIT_TABLE_SIZE 16
+
+/**
+ * ice_metainit_dump - dump an metainit item info
+ * @hw: pointer to the hardware structure
+ * @item: metainit item to dump
+ */
+void ice_metainit_dump(struct ice_hw *hw, struct ice_metainit_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+	dev_info(ice_hw_to_dev(hw), "tsr = %d\n", item->tsr);
+	dev_info(ice_hw_to_dev(hw), "ho = %d\n", item->ho);
+	dev_info(ice_hw_to_dev(hw), "pc = %d\n", item->pc);
+	dev_info(ice_hw_to_dev(hw), "pg_rn = %d\n", item->pg_rn);
+	dev_info(ice_hw_to_dev(hw), "cd = %d\n", item->cd);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_ctrl = %d\n", item->gpr_a_ctrl);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_data_mdid = %d\n",
+		 item->gpr_a_data_mdid);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_data_start = %d\n",
+		 item->gpr_a_data_start);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_data_len = %d\n",
+		 item->gpr_a_data_len);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_id = %d\n", item->gpr_a_id);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_ctrl = %d\n", item->gpr_b_ctrl);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_data_mdid = %d\n",
+		 item->gpr_b_data_mdid);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_data_start = %d\n",
+		 item->gpr_b_data_start);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_data_len = %d\n",
+		 item->gpr_b_data_len);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_id = %d\n", item->gpr_b_id);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_ctrl = %d\n", item->gpr_c_ctrl);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_data_mdid = %d\n",
+		 item->gpr_c_data_mdid);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_data_start = %d\n",
+		 item->gpr_c_data_start);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_data_len = %d\n",
+		 item->gpr_c_data_len);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_id = %d\n", item->gpr_c_id);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_ctrl = %d\n", item->gpr_d_ctrl);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_data_mdid = %d\n",
+		 item->gpr_d_data_mdid);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_data_start = %d\n",
+		 item->gpr_d_data_start);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_data_len = %d\n",
+		 item->gpr_d_data_len);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_id = %d\n", item->gpr_d_id);
+	dev_info(ice_hw_to_dev(hw), "flags = 0x%llx\n",
+		 (unsigned long long)(item->flags));
+}
+
+/** The function parses a 192 bits Metadata Init entry with below format:
+ *  BIT 0-7:	TCAM Search Key Register (mi->tsr)
+ *  BIT 8-16:	Header Offset (mi->ho)
+ *  BIT 17-24:	Program Counter (mi->pc)
+ *  BIT 25-35:	Parse Graph Root Node (mi->pg_rn)
+ *  BIT 36-38:	Control Domain (mi->cd)
+ *  BIT 39:	GPR_A Data Control (mi->gpr_a_ctrl)
+ *  BIT 40-44:	GPR_A MDID.ID (mi->gpr_a_data_mdid)
+ *  BIT 45-48:	GPR_A MDID.START (mi->gpr_a_data_start)
+ *  BIT 49-53:	GPR_A MDID.LEN (mi->gpr_a_data_len)
+ *  BIT 54-55:	reserved
+ *  BIT 56-59:	GPR_A ID (mi->gpr_a_id)
+ *  BIT 60:	GPR_B Data Control (mi->gpr_b_ctrl)
+ *  BIT 61-65:	GPR_B MDID.ID (mi->gpr_b_data_mdid)
+ *  BIT 66-69:	GPR_B MDID.START (mi->gpr_b_data_start)
+ *  BIT 70-74:	GPR_B MDID.LEN (mi->gpr_b_data_len)
+ *  BIT 75-76:	reserved
+ *  BIT 77-80:	GPR_B ID (mi->gpr_a_id)
+ *  BIT 81:	GPR_C Data Control (mi->gpr_c_ctrl)
+ *  BIT 82-86:	GPR_C MDID.ID (mi->gpr_c_data_mdid)
+ *  BIT 87-90:	GPR_C MDID.START (mi->gpr_c_data_start)
+ *  BIT 91-95:	GPR_C MDID.LEN (mi->gpr_c_data_len)
+ *  BIT 96-97:	reserved
+ *  BIT 98-101:	GPR_C ID (mi->gpr_c_id)
+ *  BIT 102:	GPR_D Data Control (mi->gpr_d_ctrl)
+ *  BIT 103-107:GPR_D MDID.ID (mi->gpr_d_data_mdid)
+ *  BIT 108-111:GPR_D MDID.START (mi->gpr_d_data_start)
+ *  BIT 112-116:GPR_D MDID.LEN (mi->gpr_d_data_len)
+ *  BIT 117-118:reserved
+ *  BIT 119-122:GPR_D ID (mi->gpr_d_id)
+ *  BIT 123-186:Flags (mi->flags)
+ *  BIT 187-191:rserved
+ */
+static void _metainit_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				 void *data, int size)
+{
+	struct ice_metainit_item *mi = item;
+	u8 *buf = data;
+	u64 d64;
+
+	mi->idx = idx;
+	d64 = *(u64 *)buf;
+
+	mi->tsr = (u8)(d64 & 0xff);
+	mi->ho = (u16)((d64 >> 8) & 0x1ff);
+	mi->pc = (u16)((d64 >> 17) & 0xff);
+	mi->pg_rn = (u16)((d64 >> 25) & 0x3ff);
+	mi->cd = (u16)((d64 >> 36) & 0x7);
+	mi->gpr_a_ctrl = ((d64 >> 39) & 0x1) != 0;
+	mi->gpr_a_data_mdid = (u8)((d64 >> 40) & 0x1f);
+	mi->gpr_a_data_start = (u8)((d64 >> 45) & 0xf);
+	mi->gpr_a_data_len = (u8)((d64 >> 49) & 0x1f);
+	mi->gpr_a_id = (u8)((d64 >> 56) & 0xf);
+
+	d64 = *(u64 *)&buf[7] >> 4;
+	mi->gpr_b_ctrl = (d64 & 0x1) != 0;
+	mi->gpr_b_data_mdid = (u8)((d64 >> 1) & 0x1f);
+	mi->gpr_b_data_start = (u8)((d64 >> 6) & 0xf);
+	mi->gpr_b_data_len = (u8)((d64 >> 10) & 0x1f);
+	mi->gpr_b_id = (u8)((d64 >> 17) & 0xf);
+
+	mi->gpr_c_ctrl = ((d64 >> 21) & 0x1) != 0;
+	mi->gpr_c_data_mdid = (u8)((d64 >> 22) & 0x1f);
+	mi->gpr_c_data_start = (u8)((d64 >> 27) & 0xf);
+	mi->gpr_c_data_len = (u8)((d64 >> 31) & 0x1f);
+	mi->gpr_c_id = (u8)((d64 >> 38) & 0xf);
+
+	mi->gpr_d_ctrl = ((d64 >> 42) & 0x1) != 0;
+	mi->gpr_d_data_mdid = (u8)((d64 >> 43) & 0x1f);
+	mi->gpr_d_data_start = (u8)((d64 >> 48) & 0xf);
+	mi->gpr_d_data_len = (u8)((d64 >> 52) & 0x1f);
+
+	d64 = *(u64 *)&buf[14] >> 7;
+	mi->gpr_d_id = (u8)(d64 & 0xf);
+
+	d64 = *(u64 *)&buf[15] >> 3;
+	mi->flags = d64;
+
+	d64 = ((*(u64 *)&buf[16] >> 56) & 0x7);
+	mi->flags |= (d64 << 61);
+
+	if (hw->debug_mask & ICE_DBG_PARSER)
+		ice_metainit_dump(hw, mi);
+}
+
+/**
+ * ice_metainit_table_get - create a metainit table
+ * @hw: pointer to the hardware structure
+ */
+struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
+{
+	return (struct ice_metainit_item *)
+		ice_parser_create_table(hw, ICE_SID_RXPARSER_METADATA_INIT,
+					sizeof(struct ice_metainit_item),
+					ICE_METAINIT_TABLE_SIZE,
+					ice_parser_sect_item_get,
+					_metainit_parse_item);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.h b/drivers/net/ethernet/intel/ice/ice_metainit.h
new file mode 100644
index 000000000000..aa7a9e178820
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_METAINIT_H_
+#define _ICE_METAINIT_H_
+
+struct ice_metainit_item {
+	u16 idx;
+
+	u8 tsr;
+	u16 ho;
+	u16 pc;
+	u16 pg_rn;
+	u8 cd;
+
+	bool gpr_a_ctrl;
+	u8 gpr_a_data_mdid;
+	u8 gpr_a_data_start;
+	u8 gpr_a_data_len;
+	u8 gpr_a_id;
+
+	bool gpr_b_ctrl;
+	u8 gpr_b_data_mdid;
+	u8 gpr_b_data_start;
+	u8 gpr_b_data_len;
+	u8 gpr_b_id;
+
+	bool gpr_c_ctrl;
+	u8 gpr_c_data_mdid;
+	u8 gpr_c_data_start;
+	u8 gpr_c_data_len;
+	u8 gpr_c_id;
+
+	bool gpr_d_ctrl;
+	u8 gpr_d_data_mdid;
+	u8 gpr_d_data_start;
+	u8 gpr_d_data_len;
+	u8 gpr_d_id;
+
+	u64 flags;
+};
+
+void ice_metainit_dump(struct ice_hw *hw, struct ice_metainit_item *item);
+struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw);
+#endif /*_ICE_METAINIT_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index cf9e47cd8be0..eb672aca240b 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -6,6 +6,7 @@
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
+#define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
 
 /**
  * ice_parser_sect_item_get - parse a item from a section
@@ -28,6 +29,9 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 	case ICE_SID_RXPARSER_IMEM:
 		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_METADATA_INIT:
+		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -113,6 +117,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 		goto err;
 	}
 
+	p->mi_table = ice_metainit_table_get(hw);
+	if (!p->mi_table) {
+		status = -EINVAL;
+		goto err;
+	}
+
 	*psr = p;
 	return 0;
 err:
@@ -127,6 +137,7 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 void ice_parser_destroy(struct ice_parser *psr)
 {
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->mi_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index b5a3c473666a..8fcc10479260 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -9,6 +9,8 @@ struct ice_parser {
 
 	/* load data from section ICE_SID_RX_PARSER_IMEM */
 	struct ice_imem_item *imem_table;
+	/* load data from section ICE_SID_RXPARSER_METADATA_INIT */
+	struct ice_metainit_item *mi_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h b/drivers/net/ethernet/intel/ice/ice_parser_util.h
index 6259d3d97b23..59c67f1a1951 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_util.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
@@ -5,6 +5,7 @@
 #define _ICE_PARSER_UTIL_H_
 
 #include "ice_imem.h"
+#include "ice_metainit.h"
 
 struct ice_pkg_sect_hdr {
 	__le16 count;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
