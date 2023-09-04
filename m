Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1750F790FF6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 04:15:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3DE881E1F;
	Mon,  4 Sep 2023 02:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3DE881E1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693793730;
	bh=YSM7NrrPVzAGqT2670kR5aCSHGzlSQU/JMQf8/wi/Dc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=seHfry/2jpv4tU6V4ckWRzXE8ohihG6CI+y547rWRLH3KHlVM8eF8ZZYmuwIFhki3
	 PqniHFqWPo5ICh9F5cdDXgy8URZQkr//OLLe0kypvosWW1R3Z8nBGYLufH/YDEsBS7
	 MJpWeYDlXGfM5I2gkUXZBpd77yMvU5vz5xpsWDaCPAQcKGSxnLbGpbePMk12VCIrEi
	 7KFHkBw2dG5cn5woraB8mRvy4eVrG2IuJBBKanU4J8SRz9wcpTpmrZJrzSZeeACd2U
	 pEvjOzcXkqU5Y2Jbb1Tap7ZG2JXGpgueGuEPLuw5ZhkdDu2YUzENE7H19AW2iwD04d
	 NWX3imY4tHrcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pplHBPKM5dfB; Mon,  4 Sep 2023 02:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEBB681E77;
	Mon,  4 Sep 2023 02:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEBB681E77
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2FBC71BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 062BA81E82
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 062BA81E82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBhhZgREC5UP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 02:15:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C765781E1F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 02:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C765781E1F
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="379215164"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="379215164"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 19:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="769826826"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="769826826"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2023 19:15:14 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Sep 2023 10:14:43 +0800
Message-Id: <20230904021455.3944605-4-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230904021455.3944605-1-junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693793718; x=1725329718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0MhOl/imweGUD2rCFCCFk100s/AIs/3MDFTrOoaaYik=;
 b=Tu3ZcOWfg2w1vGP88T/LYfXJg8VSvR/8Uvo7atW1NOwOrcFH9kKKnrrI
 v1mtHoaxnGVMT+MqSwUBonY0eaXbiH6njtmPAbJyMMmNonjHCeyjQmDS5
 uzsA/rm1KMu3GTyoFRN3L02hKcq0vp8mEpolo2CMpbl9tnbrJT4pip3pC
 kg5ltaktFs6UCK3E5de4xr8JWgoogAEywPFzVxTHFJkZtbwQmA9hfvs/z
 Zmrc3ukWFbkHV2TyeLlxo6N623vqlyOLBYT2acMKhLnurMNJbMX+coC6/
 r/qH4LEFswoRwJM0KVl4ad0xH4hOs5EQX3tbDMnUilxuGzzeU2cKUMB2A
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tu3ZcOWf
Subject: [Intel-wired-lan] [PATCH iwl-next v9 03/15] ice: init metainit
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
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 drivers/net/ethernet/intel/ice/ice_metainit.c | 193 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_metainit.h |  47 +++++
 drivers/net/ethernet/intel/ice/ice_parser.c   |  10 +
 drivers/net/ethernet/intel/ice/ice_parser.h   |   4 +
 .../net/ethernet/intel/ice/ice_parser_util.h  |   1 +
 6 files changed, 256 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 2345081e8554..feb7ab8e0eed 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -28,6 +28,7 @@ ice-y := ice_main.o	\
 	 ice_flow.o	\
 	 ice_parser.o    \
 	 ice_imem.o      \
+	 ice_metainit.o  \
 	 ice_idc.o	\
 	 ice_devlink.o	\
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c b/drivers/net/ethernet/intel/ice/ice_metainit.c
new file mode 100644
index 000000000000..99cdd6e63a78
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
@@ -0,0 +1,193 @@
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
+#define ICE_MI_TSR		GENMASK_ULL(7, 0)
+#define ICE_MI_HO		GENMASK_ULL(16, 8)
+#define ICE_MI_PC		GENMASK_ULL(24, 17)
+#define ICE_MI_PGRN		GENMASK_ULL(35, 25)
+#define ICE_MI_CD		GENMASK_ULL(38, 36)
+#define ICE_MI_GAC		BIT_ULL(39)
+#define ICE_MI_GADM		GENMASK_ULL(44, 40)
+#define ICE_MI_GADS		GENMASK_ULL(48, 45)
+#define ICE_MI_GADL		GENMASK_ULL(53, 49)
+#define ICE_MI_GAI		GENMASK_ULL(59, 56)
+#define ICE_MI_GBC		BIT_ULL(60)
+#define ICE_MI_GBDM_S		61	/* offset for the 2nd 64-bits field */
+#define ICE_MI_GBDM		GENMASK_ULL(65 - ICE_MI_GBDM_S, 61 - ICE_MI_GBDM_S)
+#define ICE_MI_GBDS		GENMASK_ULL(69 - ICE_MI_GBDM_S, 66 - ICE_MI_GBDM_S)
+#define ICE_MI_GBDL		GENMASK_ULL(74 - ICE_MI_GBDM_S, 70 - ICE_MI_GBDM_S)
+#define ICE_MI_GBI		GENMASK_ULL(80 - ICE_MI_GBDM_S, 77 - ICE_MI_GBDM_S)
+#define ICE_MI_GCC		BIT_ULL(81 - ICE_MI_GBDM_S)
+#define ICE_MI_GCDM		GENMASK_ULL(86 - ICE_MI_GBDM_S, 82 - ICE_MI_GBDM_S)
+#define ICE_MI_GCDS		GENMASK_ULL(90 - ICE_MI_GBDM_S, 87 - ICE_MI_GBDM_S)
+#define ICE_MI_GCDL		GENMASK_ULL(95 - ICE_MI_GBDM_S, 91 - ICE_MI_GBDM_S)
+#define ICE_MI_GCI		GENMASK_ULL(101 - ICE_MI_GBDM_S, 98 - ICE_MI_GBDM_S)
+#define ICE_MI_GDC		BIT_ULL(102 - ICE_MI_GBDM_S)
+#define ICE_MI_GDDM		GENMASK_ULL(107 - ICE_MI_GBDM_S, 103 - ICE_MI_GBDM_S)
+#define ICE_MI_GDDS		GENMASK_ULL(111 - ICE_MI_GBDM_S, 108 - ICE_MI_GBDM_S)
+#define ICE_MI_GDDL		GENMASK_ULL(116 - ICE_MI_GBDM_S, 112 - ICE_MI_GBDM_S)
+#define ICE_MI_GDI		GENMASK_ULL(122 - ICE_MI_GBDM_S, 119 - ICE_MI_GBDM_S)
+#define ICE_MI_FLAG_S		123	/* offset for the 3rd 64-bits field */
+#define ICE_MI_FLAG		GENMASK_ULL(186 - ICE_MI_FLAG_S, 123 - ICE_MI_FLAG_S)
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
+	mi->tsr			= FIELD_GET(ICE_MI_TSR, d64);
+	mi->ho			= FIELD_GET(ICE_MI_HO, d64);
+	mi->pc			= FIELD_GET(ICE_MI_PC, d64);
+	mi->pg_rn		= FIELD_GET(ICE_MI_PGRN, d64);
+	mi->cd			= FIELD_GET(ICE_MI_CD, d64);
+
+	mi->gpr_a_ctrl		= FIELD_GET(ICE_MI_GAC, d64);
+	mi->gpr_a_data_mdid	= FIELD_GET(ICE_MI_GADM, d64);
+	mi->gpr_a_data_start	= FIELD_GET(ICE_MI_GADS, d64);
+	mi->gpr_a_data_len	= FIELD_GET(ICE_MI_GADL, d64);
+	mi->gpr_a_id		= FIELD_GET(ICE_MI_GAI, d64);
+
+	mi->gpr_b_ctrl		= FIELD_GET(ICE_MI_GBC, d64);
+
+	idd = ICE_MI_GBDM_S / BITS_PER_BYTE;
+	off = ICE_MI_GBDM_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&buf[idd]) >> off;
+
+	mi->gpr_b_data_mdid	= FIELD_GET(ICE_MI_GBDM, d64);
+	mi->gpr_b_data_start	= FIELD_GET(ICE_MI_GBDS, d64);
+	mi->gpr_b_data_len	= FIELD_GET(ICE_MI_GBDL, d64);
+	mi->gpr_b_id		= FIELD_GET(ICE_MI_GBI, d64);
+
+	mi->gpr_c_ctrl		= FIELD_GET(ICE_MI_GCC, d64);
+	mi->gpr_c_data_mdid	= FIELD_GET(ICE_MI_GCDM, d64);
+	mi->gpr_c_data_start	= FIELD_GET(ICE_MI_GCDS, d64);
+	mi->gpr_c_data_len	= FIELD_GET(ICE_MI_GCDL, d64);
+	mi->gpr_c_id		= FIELD_GET(ICE_MI_GCI, d64);
+
+	mi->gpr_d_ctrl		= FIELD_GET(ICE_MI_GDC, d64);
+	mi->gpr_d_data_mdid	= FIELD_GET(ICE_MI_GDDM, d64);
+	mi->gpr_d_data_start	= FIELD_GET(ICE_MI_GDDS, d64);
+	mi->gpr_d_data_len	= FIELD_GET(ICE_MI_GDDL, d64);
+	mi->gpr_d_id		= FIELD_GET(ICE_MI_GDI, d64);
+
+	idd = ICE_MI_FLAG_S / BITS_PER_BYTE;
+	off = ICE_MI_FLAG_S % BITS_PER_BYTE;
+	d64 = *((u64 *)&buf[idd]) >> off;
+
+	mi->flags		= FIELD_GET(ICE_MI_FLAG, d64);
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
index 000000000000..e131a53b54ad
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_METAINIT_H_
+#define _ICE_METAINIT_H_
+
+#define ICE_METAINIT_TABLE_SIZE 16
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
