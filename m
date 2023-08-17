Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 683A277F3AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 11:43:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0345183CC2;
	Thu, 17 Aug 2023 09:43:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0345183CC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692265398;
	bh=C0in/ZuBRs9WsUBgQ+EDUUbNwQWncY0knlwUXJ2lm3M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eUXs0QczgV1qOBEyASPFer/eq+R8lsf/5Q1J5rhrfWafzMEx6E8GOymQCqDjgwr9T
	 wPMSCOVDOduRyig0DQQaChbojj70OhrOR0+PvIpT/oFgXy13cwrnlLQGH08eolhmN+
	 7eAHnx3LHayKn87mg7mQCHiSni6eNQFSr6KVDxjBFeRAgHpli7NC2J0Hg1aerbIHOd
	 JCjWZOkIU0+XkUZCktwTmMWdR1wBWbIz1Ns3LbQ8NZ28winW9st4ArujpNJgvC2UFl
	 A91ZJHlw37olsGg50btIt29SAb2w4/dUJyk9qhy/oVYjN0bCryc/yjq+JrWux5hMNv
	 d7rvarFu9w0zA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ejiXBFfhD1gk; Thu, 17 Aug 2023 09:43:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EB1083CAE;
	Thu, 17 Aug 2023 09:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EB1083CAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE26F1BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4324614BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4324614BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zfpz8nlkgtlN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 09:43:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 902E8614B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 902E8614B9
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="370232185"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="370232185"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 02:43:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1065177000"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="1065177000"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2023 02:42:58 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 17:42:28 +0800
Message-Id: <20230817094240.2584745-4-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817094240.2584745-1-junfeng.guo@intel.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692265381; x=1723801381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IJuHwwXVvg3FfnagSm5or2XPW/v99nB0VZ7j1moL3AI=;
 b=XclzdKaeEMbsPZWZYcfd5+8KRj3GKIQlFsojqvHkoUUQ8mu+5hRQXjB4
 7NDdDBWMns5yGcOYuS9jWai12by2dTkDbRYEmBUtgsLT9zhHXn3IeZjXi
 B4CgLxSClTiLRPYjc9DEqWYJ4XdNsq8nOLLN6G7lJOe9531ZxeIT7EUNy
 6p5ExoVu+dWPSDT1ZmDQ8j/dOXYeUTlAV5euBnuIfENbULR8aJ/eQG4dI
 CLdF1Ka2TNKNz/rxwI+SJyzoLiJDfNAU/UNlUWNZbuUEQQtXB4HIUQKqa
 nYeSrxlJ5DhNB9gslpfbYYc0aAhzBTMvi7JxGI/Ltk9FJb+avLxWDk/E2
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XclzdKae
Subject: [Intel-wired-lan] [PATCH net-next v4 03/15] ice: init metainit
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
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
index 000000000000..037cb21beddb
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2018-2023 Intel Corporation */
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
index 000000000000..e34378612bf4
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_metainit.h
@@ -0,0 +1,104 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
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
index 2a543c469fdf..9520594891d3 100644
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
@@ -112,6 +115,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
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
@@ -126,6 +135,7 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
 void ice_parser_destroy(struct ice_parser *psr)
 {
 	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
+	devm_kfree(ice_hw_to_dev(psr->hw), psr->mi_table);
 
 	devm_kfree(ice_hw_to_dev(psr->hw), psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 3450830db473..d6df105bc4ec 100644
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
