Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F147868FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 09:55:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C9F661355;
	Thu, 24 Aug 2023 07:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C9F661355
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692863738;
	bh=iOxf4NueYaNUd64MM55+3bn68envE2WMDKgTOPIAnco=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s4bszP9SWZqvh6RlJpubkBuoBIwtTWh9NBCiu8EcXDpunGYuBbyDz19YqVxgD7Add
	 JHIkP5DtLNZn0jcGOZ1LWfTR/Hutn7o6acG1b9IbUJ5mn5tr8ilSVrrHBfoMGWL3Uh
	 82cwgIIw3Pyf2gQgqKkDkDTVJGhN96VSKk6VC6lVMt/zEEXQ/DtnFGZuF0PeT5lceO
	 m4BeaZpxvsHOsshy0OI2HHwRMl5n7c+XMNvbFW7hGD3DymaJi74xET4bgopwbY81O1
	 c1PXyB5N8RBTvvuiebP5LYiLGzvineVufWKtqwGgwxRipWT0shF+Iv1nzE9HN2iz4p
	 Rrx82KSjUniDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbZxBNF0R6DC; Thu, 24 Aug 2023 07:55:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7746261338;
	Thu, 24 Aug 2023 07:55:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7746261338
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4CFD1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6D456134C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6D456134C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WjCjofQHjujx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 07:55:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A1CBE61338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:55:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1CBE61338
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354705219"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354705219"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 00:55:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="772022531"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="772022531"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2023 00:55:20 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 15:54:48 +0800
Message-Id: <20230824075500.1735790-4-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230824075500.1735790-1-junfeng.guo@intel.com>
References: <20230823093158.782802-1-junfeng.guo@intel.com>
 <20230824075500.1735790-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692863726; x=1724399726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pbf+h2oYlsZWganwx3elOMu+m09VF/bDDmYPTE8xgNQ=;
 b=mBAgQqKHZ4PfDE0bmaM8lud/l/C++xbwS10bWSyj9v4L820K7Z3Dxowb
 k3FJRKdi5TuJ0cWkvDjqUY3o3o4ZgbUGHgkv6gBEy1tHmHXhMAJv/f4ls
 xrnfeY9YRYuh5QqX51xqBzi5+mwBH2j/frAngkiOlyxVqyaZ2TDWG0BKz
 ZaImXoa3yLrAXPrMenMr+qeQ+p4ibaSuef8U4Kt8JAwQIINVmVVHLJjc+
 zGy39zO/B7BZs/sz8mNsQSrFCDo39sCMRHFjVQ/7EaQGhJ6ZQB/oJse2F
 1YmlDVTcdCYjEno5BfEmbybNgnvI0n+lfjHZ5GVQLAGF98Dnx0FKj/4Kc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mBAgQqKH
Subject: [Intel-wired-lan] [PATCH iwl-next v8 03/15] ice: init metainit
 table for parser
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

Parse DDP section ICE_SID_RXPARSER_METADATA_INIT into an array of
struct ice_metainit_item.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_metainit.c | 181 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_metainit.h | 104 ++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.c   |  10 +
 drivers/net/ethernet/intel/ice/ice_parser.h   |   4 +
 .../net/ethernet/intel/ice/ice_parser_util.h  |   1 +
 5 files changed, 300 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h

diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c b/drivers/net/ethernet/intel/ice/ice_metainit.c
new file mode 100644
index 000000000000..de7b6da548f6
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "ice_common.h"
+#include "ice_parser_util.h"
+
+/**
+ * ice_metainit_dump - dump an metainit item info
+ * @hw: pointer to the hardware structure
+ * @item: metainit item to dump
+ */
+void ice_metainit_dump(struct ice_hw *hw, struct ice_metainit_item *item)
+{
+	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
+
+	dev_info(ice_hw_to_dev(hw), "tsr = %d\n", item->tsr);
+	dev_info(ice_hw_to_dev(hw), "ho = %d\n", item->ho);
+	dev_info(ice_hw_to_dev(hw), "pc = %d\n", item->pc);
+	dev_info(ice_hw_to_dev(hw), "pg_rn = %d\n", item->pg_rn);
+	dev_info(ice_hw_to_dev(hw), "cd = %d\n", item->cd);
+
+	dev_info(ice_hw_to_dev(hw), "gpr_a_ctrl = %d\n", item->gpr_a_ctrl);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_data_mdid = %d\n",
+		 item->gpr_a_data_mdid);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_data_start = %d\n",
+		 item->gpr_a_data_start);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_data_len = %d\n",
+		 item->gpr_a_data_len);
+	dev_info(ice_hw_to_dev(hw), "gpr_a_id = %d\n", item->gpr_a_id);
+
+	dev_info(ice_hw_to_dev(hw), "gpr_b_ctrl = %d\n", item->gpr_b_ctrl);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_data_mdid = %d\n",
+		 item->gpr_b_data_mdid);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_data_start = %d\n",
+		 item->gpr_b_data_start);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_data_len = %d\n",
+		 item->gpr_b_data_len);
+	dev_info(ice_hw_to_dev(hw), "gpr_b_id = %d\n", item->gpr_b_id);
+
+	dev_info(ice_hw_to_dev(hw), "gpr_c_ctrl = %d\n", item->gpr_c_ctrl);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_data_mdid = %d\n",
+		 item->gpr_c_data_mdid);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_data_start = %d\n",
+		 item->gpr_c_data_start);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_data_len = %d\n",
+		 item->gpr_c_data_len);
+	dev_info(ice_hw_to_dev(hw), "gpr_c_id = %d\n", item->gpr_c_id);
+
+	dev_info(ice_hw_to_dev(hw), "gpr_d_ctrl = %d\n", item->gpr_d_ctrl);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_data_mdid = %d\n",
+		 item->gpr_d_data_mdid);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_data_start = %d\n",
+		 item->gpr_d_data_start);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_data_len = %d\n",
+		 item->gpr_d_data_len);
+	dev_info(ice_hw_to_dev(hw), "gpr_d_id = %d\n", item->gpr_d_id);
+
+	dev_info(ice_hw_to_dev(hw), "flags = 0x%llx\n",
+		 (unsigned long long)(item->flags));
+}
+
+/** The function parses a 192 bits Metadata Init entry with below format:
+ *  BIT 0-7:	TCAM Search Key Register	(mi->tsr)
+ *  BIT 8-16:	Header Offset			(mi->ho)
+ *  BIT 17-24:	Program Counter			(mi->pc)
+ *  BIT 25-35:	Parse Graph Root Node		(mi->pg_rn)
+ *  BIT 36-38:	Control Domain			(mi->cd)
+ *  BIT 39:	GPR_A Data Control		(mi->gpr_a_ctrl)
+ *  BIT 40-44:	GPR_A MDID.ID			(mi->gpr_a_data_mdid)
+ *  BIT 45-48:	GPR_A MDID.START		(mi->gpr_a_data_start)
+ *  BIT 49-53:	GPR_A MDID.LEN			(mi->gpr_a_data_len)
+ *  BIT 54-55:	reserved
+ *  BIT 56-59:	GPR_A ID			(mi->gpr_a_id)
+ *  BIT 60:	GPR_B Data Control		(mi->gpr_b_ctrl)
+ *  BIT 61-65:	GPR_B MDID.ID			(mi->gpr_b_data_mdid)
+ *  BIT 66-69:	GPR_B MDID.START		(mi->gpr_b_data_start)
+ *  BIT 70-74:	GPR_B MDID.LEN			(mi->gpr_b_data_len)
+ *  BIT 75-76:	reserved
+ *  BIT 77-80:	GPR_B ID			(mi->gpr_a_id)
+ *  BIT 81:	GPR_C Data Control		(mi->gpr_c_ctrl)
+ *  BIT 82-86:	GPR_C MDID.ID			(mi->gpr_c_data_mdid)
+ *  BIT 87-90:	GPR_C MDID.START		(mi->gpr_c_data_start)
+ *  BIT 91-95:	GPR_C MDID.LEN			(mi->gpr_c_data_len)
+ *  BIT 96-97:	reserved
+ *  BIT 98-101:	GPR_C ID			(mi->gpr_c_id)
+ *  BIT 102:	GPR_D Data Control		(mi->gpr_d_ctrl)
+ *  BIT 103-107:GPR_D MDID.ID			(mi->gpr_d_data_mdid)
+ *  BIT 108-111:GPR_D MDID.START		(mi->gpr_d_data_start)
+ *  BIT 112-116:GPR_D MDID.LEN			(mi->gpr_d_data_len)
+ *  BIT 117-118:reserved
+ *  BIT 119-122:GPR_D ID			(mi->gpr_d_id)
+ *  BIT 123-186:Flags				(mi->flags)
+ *  BIT 187-191:rserved
+ */
+static void _ice_metainit_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				     void *data, int size)
+{
+	struct ice_metainit_item *mi = item;
+	u8 *buf = (u8 *)data;
+	u8 idd, off;
+	u64 d64;
+
+	mi->idx = idx;
+
+	d64 = *(u64 *)buf;
+
+	mi->tsr			= (u8)(d64 & ICE_MI_TSR_M);
+	mi->ho			= (u16)((d64 >> ICE_MI_HO_S) & ICE_MI_HO_M);
+	mi->pc			= (u16)((d64 >> ICE_MI_PC_S) & ICE_MI_PC_M);
+	mi->pg_rn		= (u16)((d64 >> ICE_MI_PGRN_S) & ICE_MI_PGRN_M);
+	mi->cd			= (u16)((d64 >> ICE_MI_CD_S) & ICE_MI_CD_M);
+
+	mi->gpr_a_ctrl		= !!((d64 >> ICE_MI_GAC_S) & ICE_MI_GAC_M);
+	mi->gpr_a_data_mdid	= (u8)((d64 >> ICE_MI_GADM_S) & ICE_MI_GADM_M);
+	mi->gpr_a_data_start	= (u8)((d64 >> ICE_MI_GADS_S) & ICE_MI_GADS_M);
+	mi->gpr_a_data_len	= (u8)((d64 >> ICE_MI_GADL_S) & ICE_MI_GADL_M);
+	mi->gpr_a_id		= (u8)((d64 >> ICE_MI_GAI_S) & ICE_MI_GAI_M);
+
+	idd = ICE_MI_GBC_S / BITS_PER_BYTE;
+	off = ICE_MI_GBC_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&buf[idd]) >> off;
+
+	mi->gpr_b_ctrl		= !!(d64 & ICE_MI_GBC_M);
+	off			= ICE_MI_GBDM_S - ICE_MI_GBC_S;
+	mi->gpr_b_data_mdid	= (u8)((d64 >> off) & ICE_MI_GBDM_M);
+	off			= ICE_MI_GBDS_S - ICE_MI_GBC_S;
+	mi->gpr_b_data_start	= (u8)((d64 >> off) & ICE_MI_GBDS_M);
+	off			= ICE_MI_GBDL_S - ICE_MI_GBC_S;
+	mi->gpr_b_data_len	= (u8)((d64 >> off) & ICE_MI_GBDL_M);
+	off			= ICE_MI_GBI_S - ICE_MI_GBC_S;
+	mi->gpr_b_id		= (u8)((d64 >> off) & ICE_MI_GBI_M);
+
+	off			= ICE_MI_GCC_S - ICE_MI_GBC_S;
+	mi->gpr_c_ctrl		= !!((d64 >> off) & ICE_MI_GCC_M);
+	off			= ICE_MI_GCDM_S - ICE_MI_GBC_S;
+	mi->gpr_c_data_mdid	= (u8)((d64 >> off) & ICE_MI_GCDM_M);
+	off			= ICE_MI_GCDS_S - ICE_MI_GBC_S;
+	mi->gpr_c_data_start	= (u8)((d64 >> off) & ICE_MI_GCDS_M);
+	off			= ICE_MI_GCDL_S - ICE_MI_GBC_S;
+	mi->gpr_c_data_len	= (u8)((d64 >> off) & ICE_MI_GCDL_M);
+	off			= ICE_MI_GCI_S - ICE_MI_GBC_S;
+	mi->gpr_c_id		= (u8)((d64 >> off) & ICE_MI_GCI_M);
+
+	off			= ICE_MI_GDC_S - ICE_MI_GBC_S;
+	mi->gpr_d_ctrl		= !!((d64 >> off) & ICE_MI_GDC_M);
+	off			= ICE_MI_GDDM_S - ICE_MI_GBC_S;
+	mi->gpr_d_data_mdid	= (u8)((d64 >> off) & ICE_MI_GDDM_M);
+	off			= ICE_MI_GDDS_S - ICE_MI_GBC_S;
+	mi->gpr_d_data_start	= (u8)((d64 >> off) & ICE_MI_GDDS_M);
+	off			= ICE_MI_GDDL_S - ICE_MI_GBC_S;
+	mi->gpr_d_data_len	= (u8)((d64 >> off) & ICE_MI_GDDL_M);
+
+	idd = ICE_MI_GDI_S / BITS_PER_BYTE;
+	off = ICE_MI_GDI_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&buf[idd]) >> off;
+
+	mi->gpr_d_id = (u8)(d64 & ICE_MI_GDI_M);
+
+	idd = ICE_MI_FLAG_S / BITS_PER_BYTE;
+	off = ICE_MI_FLAG_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&buf[idd]) >> off;
+
+	mi->flags = d64;
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
+					_ice_metainit_parse_item);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.h b/drivers/net/ethernet/intel/ice/ice_metainit.h
new file mode 100644
index 000000000000..9decf87bb631
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.h
@@ -0,0 +1,104 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_METAINIT_H_
+#define _ICE_METAINIT_H_
+
+#define ICE_METAINIT_TABLE_SIZE 16
+
+#define ICE_MI_TSR_S		0
+#define ICE_MI_TSR_M		BITMAP_MASK(8)
+#define ICE_MI_HO_S		8
+#define ICE_MI_HO_M		BITMAP_MASK(9)
+#define ICE_MI_PC_S		17
+#define ICE_MI_PC_M		BITMAP_MASK(8)
+#define ICE_MI_PGRN_S		25
+#define ICE_MI_PGRN_M		BITMAP_MASK(11)
+#define ICE_MI_CD_S		36
+#define ICE_MI_CD_M		BITMAP_MASK(3)
+
+#define ICE_MI_GAC_S		39
+#define ICE_MI_GAC_M		BITMAP_MASK(1)
+#define ICE_MI_GADM_S		40
+#define ICE_MI_GADM_M		BITMAP_MASK(5)
+#define ICE_MI_GADS_S		45
+#define ICE_MI_GADS_M		BITMAP_MASK(4)
+#define ICE_MI_GADL_S		49
+#define ICE_MI_GADL_M		BITMAP_MASK(5)
+#define ICE_MI_GAI_S		56
+#define ICE_MI_GAI_M		BITMAP_MASK(4)
+
+#define ICE_MI_GBC_S		60
+#define ICE_MI_GBC_M		BITMAP_MASK(1)
+#define ICE_MI_GBDM_S		61
+#define ICE_MI_GBDM_M		BITMAP_MASK(5)
+#define ICE_MI_GBDS_S		66
+#define ICE_MI_GBDS_M		BITMAP_MASK(4)
+#define ICE_MI_GBDL_S		70
+#define ICE_MI_GBDL_M		BITMAP_MASK(5)
+#define ICE_MI_GBI_S		77
+#define ICE_MI_GBI_M		BITMAP_MASK(4)
+
+#define ICE_MI_GCC_S		81
+#define ICE_MI_GCC_M		BITMAP_MASK(1)
+#define ICE_MI_GCDM_S		82
+#define ICE_MI_GCDM_M		BITMAP_MASK(5)
+#define ICE_MI_GCDS_S		87
+#define ICE_MI_GCDS_M		BITMAP_MASK(4)
+#define ICE_MI_GCDL_S		91
+#define ICE_MI_GCDL_M		BITMAP_MASK(5)
+#define ICE_MI_GCI_S		98
+#define ICE_MI_GCI_M		BITMAP_MASK(4)
+
+#define ICE_MI_GDC_S		102
+#define ICE_MI_GDC_M		BITMAP_MASK(1)
+#define ICE_MI_GDDM_S		103
+#define ICE_MI_GDDM_M		BITMAP_MASK(5)
+#define ICE_MI_GDDS_S		108
+#define ICE_MI_GDDS_M		BITMAP_MASK(4)
+#define ICE_MI_GDDL_S		112
+#define ICE_MI_GDDL_M		BITMAP_MASK(5)
+#define ICE_MI_GDI_S		119
+#define ICE_MI_GDI_M		BITMAP_MASK(4)
+
+#define ICE_MI_FLAG_S		123
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
index dd089c859616..e2e49fcf69c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -25,6 +25,9 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
 	case ICE_SID_RXPARSER_IMEM:
 		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
 		break;
+	case ICE_SID_RXPARSER_METADATA_INIT:
+		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
+		break;
 	default:
 		return NULL;
 	}
@@ -111,6 +114,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -125,6 +134,7 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 void ice_parser_destroy(struct ice_parser *psr)
 {
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->mi_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index b63c27ec481d..b52abad747b2 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -4,16 +4,20 @@
 #ifndef _ICE_PARSER_H_
 #define _ICE_PARSER_H_
 
+#include "ice_metainit.h"
 #include "ice_imem.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
+#define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
 
 	/* load data from section ICE_SID_RX_PARSER_IMEM */
 	struct ice_imem_item *imem_table;
+	/* load data from section ICE_SID_RXPARSER_METADATA_INIT */
+	struct ice_metainit_item *mi_table;
 };
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h b/drivers/net/ethernet/intel/ice/ice_parser_util.h
index 32371458b581..42a91bd51a51 100644
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
