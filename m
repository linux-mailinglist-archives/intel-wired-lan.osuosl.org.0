Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289CA93CA9E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 00:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E8E340580;
	Thu, 25 Jul 2024 22:08:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VnDb8YA2j-0K; Thu, 25 Jul 2024 22:08:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D65A640EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721945315;
	bh=x0mSZ0UEVVM7eieG/JbnTQpOGRsE6efrrcdb+sS7/6Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jq6D7nfIS5OlellygENU2b7I42ny3sG0JYAHkP5Baurp/CziIvscNVo3SFCwnJ4KQ
	 ciHOaUSYoo7DdebaMvjVdIenwkr5kfjCa4Fe5BEDl729PDZlb1HoHjjBu5u5CnUZot
	 B1gFo1bvMtHjBgEPTULl34qf1PraetooBCLsZp9XS5PQfKll01fzSsF0Fd4WzdE9A1
	 A02we4LddXeqc7UwRhYkaZ3PAAP9q2FG2a9m15mQDKPtgdqT/hXPlDK18AyhjxL95i
	 M9HbpWyIG7hRTgTicmEA7uRK4wZAtj5Kq9ZdoQF4VR/uBGqDNcztOOooZh3xEn3ze/
	 O7gO9By9E2JYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D65A640EE4;
	Thu, 25 Jul 2024 22:08:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 692781BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A3E581EFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:08:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DyOmbQivNRTi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 22:08:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8BB4581EF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BB4581EF7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BB4581EF7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:08:29 +0000 (UTC)
X-CSE-ConnectionGUID: l0rCevMzTfO8n8Y76un70w==
X-CSE-MsgGUID: UL45AQwaQPO4t6ktzseoeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19520499"
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="19520499"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 15:08:30 -0700
X-CSE-ConnectionGUID: ESTq3qEwSvyTZFALeFv4aQ==
X-CSE-MsgGUID: RTAVJ9eLSlmsuyi+crwAJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="52956022"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.33])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 15:08:25 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2024 16:07:58 -0600
Message-ID: <20240725220810.12748-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240725220810.12748-1-ahmed.zaki@intel.com>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721945310; x=1753481310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h6N87R7x6XrFSKZ5uL36FCVESeq0uq8KGDusuK9HcBI=;
 b=b1XqAHhJN0pC+3TT6wlZavqsu3MM3g9PgL1Atd8O78oTs1lD/IUhDCAO
 34x9PnP9NEzmI7BS6mtCD5CSVC8n0Jfx2jqUMnKlkTW/oFgRgTLngtUdc
 G1ANlhjXrggMrELVonYE33AH+QXvn5F8y1EKgpCn2Nn1xANneKoY+wMnT
 sSh44Zb7TWqGLz+FZUrfqSXlsllN+eNmHOfFScIW87PHxPIUkJc/PgXne
 1mmGMTJbpt1/1AQOuZS8O272uzg90Wdqx71ye+8de2LVORRuoBgU8X1A5
 umy+xk+ih9gd8JL061J5EsZkQcnQzSWR2Gk2qrlK/FfUVs5HNOJvRg0+D
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b1XqAHhJ
Subject: [Intel-wired-lan] [PATCH iwl-next v5 02/13] ice: parse and init
 various DDP parser sections
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 hkelam@marvell.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 Junfeng Guo <junfeng.guo@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Parse the following DDP sections:
 - ICE_SID_RXPARSER_IMEM into an array of struct ice_imem_item
 - ICE_SID_RXPARSER_METADATA_INIT into an array of struct ice_metainit_item
 - ICE_SID_RXPARSER_CAM or ICE_SID_RXPARSER_PG_SPILL into an array of
   struct ice_pg_cam_item
 - ICE_SID_RXPARSER_NOMATCH_CAM or ICE_SID_RXPARSER_NOMATCH_SPILL into an
   array of struct ice_pg_nm_cam_item
 - ICE_SID_RXPARSER_CAM into an array of ice_bst_tcam_item
 - ICE_SID_LBL_RXPARSER_TMEM into an array of ice_lbl_item
 - ICE_SID_RXPARSER_MARKER_PTYPE into an array of ice_ptype_mk_tcam_item
 - ICE_SID_RXPARSER_MARKER_GRP into an array of ice_mk_grp_item
 - ICE_SID_RXPARSER_PROTO_GRP into an array of ice_proto_grp_item
 - ICE_SID_RXPARSER_FLAG_REDIR into an array of ice_flg_rd_item
 - ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
   ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS into
   struct ice_xlt_kb

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c    |   10 +-
 drivers/net/ethernet/intel/ice/ice_ddp.h    |   13 +
 drivers/net/ethernet/intel/ice/ice_parser.c | 1384 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h |  357 +++++
 drivers/net/ethernet/intel/ice/ice_type.h   |    1 +
 5 files changed, 1760 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index f182179529b7..953262b88a58 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -289,11 +289,11 @@ void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
  * indicates a base offset of 10, and the index for the entry is 2, then
  * section handler function should set the offset to 10 + 2 = 12.
  */
-static void *ice_pkg_enum_entry(struct ice_seg *ice_seg,
-				struct ice_pkg_enum *state, u32 sect_type,
-				u32 *offset,
-				void *(*handler)(u32 sect_type, void *section,
-						 u32 index, u32 *offset))
+void *ice_pkg_enum_entry(struct ice_seg *ice_seg,
+			 struct ice_pkg_enum *state, u32 sect_type,
+			 u32 *offset,
+			 void *(*handler)(u32 sect_type, void *section,
+					  u32 index, u32 *offset))
 {
 	void *entry;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index 622543f08b43..97f272317475 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -261,10 +261,17 @@ struct ice_meta_sect {
 #define ICE_SID_CDID_KEY_BUILDER_RSS 47
 #define ICE_SID_CDID_REDIR_RSS 48
 
+#define ICE_SID_RXPARSER_CAM           50
+#define ICE_SID_RXPARSER_NOMATCH_CAM   51
+#define ICE_SID_RXPARSER_IMEM          52
 #define ICE_SID_RXPARSER_MARKER_PTYPE 55
 #define ICE_SID_RXPARSER_BOOST_TCAM 56
+#define ICE_SID_RXPARSER_PROTO_GRP     57
 #define ICE_SID_RXPARSER_METADATA_INIT 58
 #define ICE_SID_TXPARSER_BOOST_TCAM 66
+#define ICE_SID_RXPARSER_MARKER_GRP    72
+#define ICE_SID_RXPARSER_PG_SPILL      76
+#define ICE_SID_RXPARSER_NOMATCH_SPILL 78
 
 #define ICE_SID_XLT0_PE 80
 #define ICE_SID_XLT_KEY_BUILDER_PE 81
@@ -276,6 +283,7 @@ struct ice_meta_sect {
 #define ICE_SID_CDID_KEY_BUILDER_PE 87
 #define ICE_SID_CDID_REDIR_PE 88
 
+#define ICE_SID_RXPARSER_FLAG_REDIR	97
 /* Label Metadata section IDs */
 #define ICE_SID_LBL_FIRST 0x80000010
 #define ICE_SID_LBL_RXPARSER_TMEM 0x80000018
@@ -451,6 +459,11 @@ int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count);
 
 int ice_pkg_buf_reserve_section(struct ice_buf_build *bld, u16 count);
 u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld);
+void *
+ice_pkg_enum_entry(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
+		   u32 sect_type, u32 *offset,
+		   void *(*handler)(u32 sect_type, void *section,
+				    u32 index, u32 *offset));
 void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 			   u32 sect_type);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 6c50164efae0..5d6d610c1a6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -3,6 +3,1272 @@
 
 #include "ice_common.h"
 
+struct ice_pkg_sect_hdr {
+	__le16 count;
+	__le16 offset;
+};
+
+/**
+ * ice_parser_sect_item_get - parse an item from a section
+ * @sect_type: section type
+ * @section: section object
+ * @index: index of the item to get
+ * @offset: dummy as prototype of ice_pkg_enum_entry's last parameter
+ *
+ * Return: a pointer to the item or NULL.
+ */
+static void *ice_parser_sect_item_get(u32 sect_type, void *section,
+				      u32 index, u32 __maybe_unused *offset)
+{
+	size_t data_off = ICE_SEC_DATA_OFFSET;
+	struct ice_pkg_sect_hdr *hdr;
+	size_t size;
+
+	if (!section)
+		return NULL;
+
+	switch (sect_type) {
+	case ICE_SID_RXPARSER_IMEM:
+		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_METADATA_INIT:
+		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_CAM:
+		size = ICE_SID_RXPARSER_CAM_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_PG_SPILL:
+		size = ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_NOMATCH_CAM:
+		size = ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_NOMATCH_SPILL:
+		size = ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_BOOST_TCAM:
+		size = ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE;
+		break;
+	case ICE_SID_LBL_RXPARSER_TMEM:
+		data_off = ICE_SEC_LBL_DATA_OFFSET;
+		size = ICE_SID_LBL_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_MARKER_PTYPE:
+		size = ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_MARKER_GRP:
+		size = ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_PROTO_GRP:
+		size = ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE;
+		break;
+	case ICE_SID_RXPARSER_FLAG_REDIR:
+		size = ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE;
+		break;
+	default:
+		return NULL;
+	}
+
+	hdr = section;
+	if (index >= le16_to_cpu(hdr->count))
+		return NULL;
+
+	return section + data_off + index * size;
+}
+
+/**
+ * ice_parser_create_table - create an item table from a section
+ * @hw: pointer to the hardware structure
+ * @sect_type: section type
+ * @item_size: item size in bytes
+ * @length: number of items in the table to create
+ * @parse_item: the function to parse the item
+ * @no_offset: ignore header offset, calculate index from 0
+ *
+ * Return: a pointer to the allocated table or ERR_PTR.
+ */
+static
+void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
+			      u32 item_size, u32 length,
+			      void (*parse_item)(struct ice_hw *hw, u16 idx,
+						 void *item, void *data,
+						 int size),
+			      bool no_offset)
+{
+	struct ice_pkg_enum state = {};
+	struct ice_seg *seg = hw->seg;
+	void *table, *data, *item;
+	u16 idx = 0;
+
+	if (!seg)
+		return ERR_PTR(-EINVAL);
+
+	table = kzalloc(item_size * length, GFP_KERNEL);
+	if (!table)
+		return ERR_PTR(-ENOMEM);
+
+	do {
+		data = ice_pkg_enum_entry(seg, &state, sect_type, NULL,
+					  ice_parser_sect_item_get);
+		seg = NULL;
+		if (data) {
+			struct ice_pkg_sect_hdr *hdr = state.sect;
+
+			if (!no_offset)
+				idx = le16_to_cpu(hdr->offset) +
+					state.entry_idx;
+
+			item = (void *)((uintptr_t)table + idx * item_size);
+			parse_item(hw, idx, item, data, item_size);
+
+			if (no_offset)
+				idx++;
+		}
+	} while (data);
+
+	return table;
+}
+
+/*** ICE_SID_RXPARSER_IMEM section ***/
+#define ICE_IM_BM_ALU0		BIT(0)
+#define ICE_IM_BM_ALU1		BIT(1)
+#define ICE_IM_BM_ALU2		BIT(2)
+#define ICE_IM_BM_PG		BIT(3)
+
+/**
+ * ice_imem_bm_init - parse 4 bits of Boost Main
+ * @bm: pointer to the Boost Main structure
+ * @data: Boost Main data to be parsed
+ */
+static void ice_imem_bm_init(struct ice_bst_main *bm, u8 data)
+{
+	bm->alu0	= FIELD_GET(ICE_IM_BM_ALU0, data);
+	bm->alu1	= FIELD_GET(ICE_IM_BM_ALU1, data);
+	bm->alu2	= FIELD_GET(ICE_IM_BM_ALU2, data);
+	bm->pg		= FIELD_GET(ICE_IM_BM_PG, data);
+}
+
+#define ICE_IM_BKB_PRIO		GENMASK(7, 0)
+#define ICE_IM_BKB_TSR_CTRL	BIT(8)
+
+/**
+ * ice_imem_bkb_init - parse 10 bits of Boost Main Build
+ * @bkb: pointer to the Boost Main Build structure
+ * @data: Boost Main Build data to be parsed
+ */
+static void ice_imem_bkb_init(struct ice_bst_keybuilder *bkb, u16 data)
+{
+	bkb->prio	= FIELD_GET(ICE_IM_BKB_PRIO, data);
+	bkb->tsr_ctrl	= FIELD_GET(ICE_IM_BKB_TSR_CTRL, data);
+}
+
+#define ICE_IM_NPKB_OPC		GENMASK(1, 0)
+#define ICE_IM_NPKB_S_R0	GENMASK(9, 2)
+#define ICE_IM_NPKB_L_R1	GENMASK(17, 10)
+
+/**
+ * ice_imem_npkb_init - parse 18 bits of Next Protocol Key Build
+ * @kb: pointer to the Next Protocol Key Build structure
+ * @data: Next Protocol Key Build data to be parsed
+ */
+static void ice_imem_npkb_init(struct ice_np_keybuilder *kb, u32 data)
+{
+	kb->opc		= FIELD_GET(ICE_IM_NPKB_OPC, data);
+	kb->start_reg0	= FIELD_GET(ICE_IM_NPKB_S_R0, data);
+	kb->len_reg1	= FIELD_GET(ICE_IM_NPKB_L_R1, data);
+}
+
+#define ICE_IM_PGKB_F0_ENA	BIT_ULL(0)
+#define ICE_IM_PGKB_F0_IDX	GENMASK_ULL(6, 1)
+#define ICE_IM_PGKB_F1_ENA	BIT_ULL(7)
+#define ICE_IM_PGKB_F1_IDX	GENMASK_ULL(13, 8)
+#define ICE_IM_PGKB_F2_ENA	BIT_ULL(14)
+#define ICE_IM_PGKB_F2_IDX	GENMASK_ULL(20, 15)
+#define ICE_IM_PGKB_F3_ENA	BIT_ULL(21)
+#define ICE_IM_PGKB_F3_IDX	GENMASK_ULL(27, 22)
+#define ICE_IM_PGKB_AR_IDX	GENMASK_ULL(34, 28)
+
+/**
+ * ice_imem_pgkb_init - parse 35 bits of Parse Graph Key Build
+ * @kb: pointer to the Parse Graph Key Build structure
+ * @data: Parse Graph Key Build data to be parsed
+ */
+static void ice_imem_pgkb_init(struct ice_pg_keybuilder *kb, u64 data)
+{
+	kb->flag0_ena	= FIELD_GET(ICE_IM_PGKB_F0_ENA, data);
+	kb->flag0_idx	= FIELD_GET(ICE_IM_PGKB_F0_IDX, data);
+	kb->flag1_ena	= FIELD_GET(ICE_IM_PGKB_F1_ENA, data);
+	kb->flag1_idx	= FIELD_GET(ICE_IM_PGKB_F1_IDX, data);
+	kb->flag2_ena	= FIELD_GET(ICE_IM_PGKB_F2_ENA, data);
+	kb->flag2_idx	= FIELD_GET(ICE_IM_PGKB_F2_IDX, data);
+	kb->flag3_ena	= FIELD_GET(ICE_IM_PGKB_F3_ENA, data);
+	kb->flag3_idx	= FIELD_GET(ICE_IM_PGKB_F3_IDX, data);
+	kb->alu_reg_idx	= FIELD_GET(ICE_IM_PGKB_AR_IDX, data);
+}
+
+#define ICE_IM_ALU_OPC		GENMASK_ULL(5, 0)
+#define ICE_IM_ALU_SS		GENMASK_ULL(13, 6)
+#define ICE_IM_ALU_SL		GENMASK_ULL(18, 14)
+#define ICE_IM_ALU_SXS		BIT_ULL(19)
+#define ICE_IM_ALU_SXK		GENMASK_ULL(23, 20)
+#define ICE_IM_ALU_SRID		GENMASK_ULL(30, 24)
+#define ICE_IM_ALU_DRID		GENMASK_ULL(37, 31)
+#define ICE_IM_ALU_INC0		BIT_ULL(38)
+#define ICE_IM_ALU_INC1		BIT_ULL(39)
+#define ICE_IM_ALU_POO		GENMASK_ULL(41, 40)
+#define ICE_IM_ALU_PO		GENMASK_ULL(49, 42)
+#define ICE_IM_ALU_BA_S		50	/* offset for the 2nd 64-bits field */
+#define ICE_IM_ALU_BA		GENMASK_ULL(57 - ICE_IM_ALU_BA_S, \
+					    50 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_IMM		GENMASK_ULL(73 - ICE_IM_ALU_BA_S, \
+					    58 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_DFE		BIT_ULL(74 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_DS		GENMASK_ULL(80 - ICE_IM_ALU_BA_S, \
+					    75 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_DL		GENMASK_ULL(86 - ICE_IM_ALU_BA_S, \
+					    81 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_FEI		BIT_ULL(87 - ICE_IM_ALU_BA_S)
+#define ICE_IM_ALU_FSI		GENMASK_ULL(95 - ICE_IM_ALU_BA_S, \
+					    88 - ICE_IM_ALU_BA_S)
+
+/**
+ * ice_imem_alu_init - parse 96 bits of ALU entry
+ * @alu: pointer to the ALU entry structure
+ * @data: ALU entry data to be parsed
+ * @off: offset of the ALU entry data
+ */
+static void ice_imem_alu_init(struct ice_alu *alu, u8 *data, u8 off)
+{
+	u64 d64;
+	u8 idd;
+
+	d64 = *((u64 *)data) >> off;
+
+	alu->opc		= FIELD_GET(ICE_IM_ALU_OPC, d64);
+	alu->src_start		= FIELD_GET(ICE_IM_ALU_SS, d64);
+	alu->src_len		= FIELD_GET(ICE_IM_ALU_SL, d64);
+	alu->shift_xlate_sel	= FIELD_GET(ICE_IM_ALU_SXS, d64);
+	alu->shift_xlate_key	= FIELD_GET(ICE_IM_ALU_SXK, d64);
+	alu->src_reg_id		= FIELD_GET(ICE_IM_ALU_SRID, d64);
+	alu->dst_reg_id		= FIELD_GET(ICE_IM_ALU_DRID, d64);
+	alu->inc0		= FIELD_GET(ICE_IM_ALU_INC0, d64);
+	alu->inc1		= FIELD_GET(ICE_IM_ALU_INC1, d64);
+	alu->proto_offset_opc	= FIELD_GET(ICE_IM_ALU_POO, d64);
+	alu->proto_offset	= FIELD_GET(ICE_IM_ALU_PO, d64);
+
+	idd = (ICE_IM_ALU_BA_S + off) / BITS_PER_BYTE;
+	off = (ICE_IM_ALU_BA_S + off) % BITS_PER_BYTE;
+	d64 = *((u64 *)(&data[idd])) >> off;
+
+	alu->branch_addr	= FIELD_GET(ICE_IM_ALU_BA, d64);
+	alu->imm		= FIELD_GET(ICE_IM_ALU_IMM, d64);
+	alu->dedicate_flags_ena	= FIELD_GET(ICE_IM_ALU_DFE, d64);
+	alu->dst_start		= FIELD_GET(ICE_IM_ALU_DS, d64);
+	alu->dst_len		= FIELD_GET(ICE_IM_ALU_DL, d64);
+	alu->flags_extr_imm	= FIELD_GET(ICE_IM_ALU_FEI, d64);
+	alu->flags_start_imm	= FIELD_GET(ICE_IM_ALU_FSI, d64);
+}
+
+#define ICE_IMEM_BM_S		0
+#define ICE_IMEM_BKB_S		4
+#define ICE_IMEM_BKB_IDD	(ICE_IMEM_BKB_S / BITS_PER_BYTE)
+#define ICE_IMEM_BKB_OFF	(ICE_IMEM_BKB_S % BITS_PER_BYTE)
+#define ICE_IMEM_PGP		GENMASK(15, 14)
+#define ICE_IMEM_NPKB_S		16
+#define ICE_IMEM_NPKB_IDD	(ICE_IMEM_NPKB_S / BITS_PER_BYTE)
+#define ICE_IMEM_NPKB_OFF	(ICE_IMEM_NPKB_S % BITS_PER_BYTE)
+#define ICE_IMEM_PGKB_S		34
+#define ICE_IMEM_PGKB_IDD	(ICE_IMEM_PGKB_S / BITS_PER_BYTE)
+#define ICE_IMEM_PGKB_OFF	(ICE_IMEM_PGKB_S % BITS_PER_BYTE)
+#define ICE_IMEM_ALU0_S		69
+#define ICE_IMEM_ALU0_IDD	(ICE_IMEM_ALU0_S / BITS_PER_BYTE)
+#define ICE_IMEM_ALU0_OFF	(ICE_IMEM_ALU0_S % BITS_PER_BYTE)
+#define ICE_IMEM_ALU1_S		165
+#define ICE_IMEM_ALU1_IDD	(ICE_IMEM_ALU1_S / BITS_PER_BYTE)
+#define ICE_IMEM_ALU1_OFF	(ICE_IMEM_ALU1_S % BITS_PER_BYTE)
+#define ICE_IMEM_ALU2_S		357
+#define ICE_IMEM_ALU2_IDD	(ICE_IMEM_ALU2_S / BITS_PER_BYTE)
+#define ICE_IMEM_ALU2_OFF	(ICE_IMEM_ALU2_S % BITS_PER_BYTE)
+
+/**
+ * ice_imem_parse_item - parse 384 bits of IMEM entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of IMEM entry
+ * @item: item of IMEM entry
+ * @data: IMEM entry data to be parsed
+ * @size: size of IMEM entry
+ */
+static void ice_imem_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				void *data, int __maybe_unused size)
+{
+	struct ice_imem_item *ii = item;
+	u8 *buf = data;
+
+	ii->idx = idx;
+
+	ice_imem_bm_init(&ii->b_m, *(u8 *)buf);
+	ice_imem_bkb_init(&ii->b_kb,
+			  *((u16 *)(&buf[ICE_IMEM_BKB_IDD])) >>
+			   ICE_IMEM_BKB_OFF);
+
+	ii->pg_prio = FIELD_GET(ICE_IMEM_PGP, *(u16 *)buf);
+
+	ice_imem_npkb_init(&ii->np_kb,
+			   *((u32 *)(&buf[ICE_IMEM_NPKB_IDD])) >>
+			    ICE_IMEM_NPKB_OFF);
+	ice_imem_pgkb_init(&ii->pg_kb,
+			   *((u64 *)(&buf[ICE_IMEM_PGKB_IDD])) >>
+			    ICE_IMEM_PGKB_OFF);
+
+	ice_imem_alu_init(&ii->alu0,
+			  &buf[ICE_IMEM_ALU0_IDD],
+			  ICE_IMEM_ALU0_OFF);
+	ice_imem_alu_init(&ii->alu1,
+			  &buf[ICE_IMEM_ALU1_IDD],
+			  ICE_IMEM_ALU1_OFF);
+	ice_imem_alu_init(&ii->alu2,
+			  &buf[ICE_IMEM_ALU2_IDD],
+			  ICE_IMEM_ALU2_OFF);
+}
+
+/**
+ * ice_imem_table_get - create an imem table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated IMEM table.
+ */
+static struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_IMEM,
+				       sizeof(struct ice_imem_item),
+				       ICE_IMEM_TABLE_SIZE,
+				       ice_imem_parse_item, false);
+}
+
+/*** ICE_SID_RXPARSER_METADATA_INIT section ***/
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
+#define ICE_MI_GBDM_IDD		(ICE_MI_GBDM_S / BITS_PER_BYTE)
+#define ICE_MI_GBDM_OFF		(ICE_MI_GBDM_S % BITS_PER_BYTE)
+
+#define ICE_MI_GBDM_GENMASK_ULL(high, low) \
+	GENMASK_ULL((high) - ICE_MI_GBDM_S, (low) - ICE_MI_GBDM_S)
+#define ICE_MI_GBDM		ICE_MI_GBDM_GENMASK_ULL(65, 61)
+#define ICE_MI_GBDS		ICE_MI_GBDM_GENMASK_ULL(69, 66)
+#define ICE_MI_GBDL		ICE_MI_GBDM_GENMASK_ULL(74, 70)
+#define ICE_MI_GBI		ICE_MI_GBDM_GENMASK_ULL(80, 77)
+#define ICE_MI_GCC		BIT_ULL(81 - ICE_MI_GBDM_S)
+#define ICE_MI_GCDM		ICE_MI_GBDM_GENMASK_ULL(86, 82)
+#define ICE_MI_GCDS		ICE_MI_GBDM_GENMASK_ULL(90, 87)
+#define ICE_MI_GCDL		ICE_MI_GBDM_GENMASK_ULL(95, 91)
+#define ICE_MI_GCI		ICE_MI_GBDM_GENMASK_ULL(101, 98)
+#define ICE_MI_GDC		BIT_ULL(102 - ICE_MI_GBDM_S)
+#define ICE_MI_GDDM		ICE_MI_GBDM_GENMASK_ULL(107, 103)
+#define ICE_MI_GDDS		ICE_MI_GBDM_GENMASK_ULL(111, 108)
+#define ICE_MI_GDDL		ICE_MI_GBDM_GENMASK_ULL(116, 112)
+#define ICE_MI_GDI		ICE_MI_GBDM_GENMASK_ULL(122, 119)
+#define ICE_MI_FLAG_S		123	/* offset for the 3rd 64-bits field */
+#define ICE_MI_FLAG_IDD		(ICE_MI_FLAG_S / BITS_PER_BYTE)
+#define ICE_MI_FLAG_OFF		(ICE_MI_FLAG_S % BITS_PER_BYTE)
+#define ICE_MI_FLAG		GENMASK_ULL(186 - ICE_MI_FLAG_S, \
+					    123 - ICE_MI_FLAG_S)
+
+/**
+ * ice_metainit_parse_item - parse 192 bits of Metadata Init entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of Metadata Init entry
+ * @item: item of Metadata Init entry
+ * @data: Metadata Init entry data to be parsed
+ * @size: size of Metadata Init entry
+ */
+static void ice_metainit_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				    void *data, int __maybe_unused size)
+{
+	struct ice_metainit_item *mi = item;
+	u8 *buf = data;
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
+	d64 = *((u64 *)&buf[ICE_MI_GBDM_IDD]) >> ICE_MI_GBDM_OFF;
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
+	d64 = *((u64 *)&buf[ICE_MI_FLAG_IDD]) >> ICE_MI_FLAG_OFF;
+
+	mi->flags		= FIELD_GET(ICE_MI_FLAG, d64);
+}
+
+/**
+ * ice_metainit_table_get - create a metainit table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Metadata initialization table.
+ */
+static struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_METADATA_INIT,
+				       sizeof(struct ice_metainit_item),
+				       ICE_METAINIT_TABLE_SIZE,
+				       ice_metainit_parse_item, false);
+}
+
+/*** ICE_SID_RXPARSER_CAM, ICE_SID_RXPARSER_PG_SPILL,
+ *    ICE_SID_RXPARSER_NOMATCH_CAM and ICE_SID_RXPARSER_NOMATCH_CAM
+ *    sections ***/
+#define ICE_PGCA_NN	GENMASK_ULL(10, 0)
+#define ICE_PGCA_NPC	GENMASK_ULL(18, 11)
+#define ICE_PGCA_IPG	BIT_ULL(19)
+#define ICE_PGCA_PID	GENMASK_ULL(30, 23)
+#define ICE_PGCA_IMG	BIT_ULL(31)
+#define ICE_PGCA_MID	GENMASK_ULL(39, 32)
+#define ICE_PGCA_ILR	BIT_ULL(40)
+#define ICE_PGCA_HOP	BIT_ULL(41)
+#define ICE_PGCA_HOI	GENMASK_ULL(50, 42)
+
+/**
+ * ice_pg_cam_action_init - parse 55 bits of Parse Graph CAM Action
+ * @action: pointer to the Parse Graph CAM Action structure
+ * @data: Parse Graph CAM Action data to be parsed
+ */
+static void ice_pg_cam_action_init(struct ice_pg_cam_action *action, u64 data)
+{
+	action->next_node	= FIELD_GET(ICE_PGCA_NN, data);
+	action->next_pc		= FIELD_GET(ICE_PGCA_NPC, data);
+	action->is_pg		= FIELD_GET(ICE_PGCA_IPG, data);
+	action->proto_id	= FIELD_GET(ICE_PGCA_PID, data);
+	action->is_mg		= FIELD_GET(ICE_PGCA_IMG, data);
+	action->marker_id	= FIELD_GET(ICE_PGCA_MID, data);
+	action->is_last_round	= FIELD_GET(ICE_PGCA_ILR, data);
+	action->ho_polarity	= FIELD_GET(ICE_PGCA_HOP, data);
+	action->ho_inc		= FIELD_GET(ICE_PGCA_HOI, data);
+}
+
+#define ICE_PGNCK_VLD		BIT_ULL(0)
+#define ICE_PGNCK_NID		GENMASK_ULL(11, 1)
+#define ICE_PGNCK_F0		BIT_ULL(12)
+#define ICE_PGNCK_F1		BIT_ULL(13)
+#define ICE_PGNCK_F2		BIT_ULL(14)
+#define ICE_PGNCK_F3		BIT_ULL(15)
+#define ICE_PGNCK_BH		BIT_ULL(16)
+#define ICE_PGNCK_BI		GENMASK_ULL(24, 17)
+#define ICE_PGNCK_AR		GENMASK_ULL(40, 25)
+
+/**
+ * ice_pg_nm_cam_key_init - parse 41 bits of Parse Graph NoMatch CAM Key
+ * @key: pointer to the Parse Graph NoMatch CAM Key structure
+ * @data: Parse Graph NoMatch CAM Key data to be parsed
+ */
+static void ice_pg_nm_cam_key_init(struct ice_pg_nm_cam_key *key, u64 data)
+{
+	key->valid	= FIELD_GET(ICE_PGNCK_VLD, data);
+	key->node_id	= FIELD_GET(ICE_PGNCK_NID, data);
+	key->flag0	= FIELD_GET(ICE_PGNCK_F0, data);
+	key->flag1	= FIELD_GET(ICE_PGNCK_F1, data);
+	key->flag2	= FIELD_GET(ICE_PGNCK_F2, data);
+	key->flag3	= FIELD_GET(ICE_PGNCK_F3, data);
+
+	if (FIELD_GET(ICE_PGNCK_BH, data))
+		key->boost_idx = FIELD_GET(ICE_PGNCK_BI, data);
+	else
+		key->boost_idx = 0;
+
+	key->alu_reg	= FIELD_GET(ICE_PGNCK_AR, data);
+}
+
+#define ICE_PGCK_VLD		BIT_ULL(0)
+#define ICE_PGCK_NID		GENMASK_ULL(11, 1)
+#define ICE_PGCK_F0		BIT_ULL(12)
+#define ICE_PGCK_F1		BIT_ULL(13)
+#define ICE_PGCK_F2		BIT_ULL(14)
+#define ICE_PGCK_F3		BIT_ULL(15)
+#define ICE_PGCK_BH		BIT_ULL(16)
+#define ICE_PGCK_BI		GENMASK_ULL(24, 17)
+#define ICE_PGCK_AR		GENMASK_ULL(40, 25)
+#define ICE_PGCK_NPK_S		41	/* offset for the 2nd 64-bits field */
+#define ICE_PGCK_NPK_IDD	(ICE_PGCK_NPK_S / BITS_PER_BYTE)
+#define ICE_PGCK_NPK_OFF	(ICE_PGCK_NPK_S % BITS_PER_BYTE)
+#define ICE_PGCK_NPK		GENMASK_ULL(72 - ICE_PGCK_NPK_S, \
+					    41 - ICE_PGCK_NPK_S)
+
+/**
+ * ice_pg_cam_key_init - parse 73 bits of Parse Graph CAM Key
+ * @key: pointer to the Parse Graph CAM Key structure
+ * @data: Parse Graph CAM Key data to be parsed
+ */
+static void ice_pg_cam_key_init(struct ice_pg_cam_key *key, u8 *data)
+{
+	u64 d64 = *(u64 *)data;
+
+	key->valid	= FIELD_GET(ICE_PGCK_VLD, d64);
+	key->node_id	= FIELD_GET(ICE_PGCK_NID, d64);
+	key->flag0	= FIELD_GET(ICE_PGCK_F0, d64);
+	key->flag1	= FIELD_GET(ICE_PGCK_F1, d64);
+	key->flag2	= FIELD_GET(ICE_PGCK_F2, d64);
+	key->flag3	= FIELD_GET(ICE_PGCK_F3, d64);
+
+	if (FIELD_GET(ICE_PGCK_BH, d64))
+		key->boost_idx = FIELD_GET(ICE_PGCK_BI, d64);
+	else
+		key->boost_idx = 0;
+
+	key->alu_reg	= FIELD_GET(ICE_PGCK_AR, d64);
+
+	d64 = *((u64 *)&data[ICE_PGCK_NPK_IDD]) >> ICE_PGCK_NPK_OFF;
+
+	key->next_proto	= FIELD_GET(ICE_PGCK_NPK, d64);
+}
+
+#define ICE_PG_CAM_ACT_S	73
+#define ICE_PG_CAM_ACT_IDD	(ICE_PG_CAM_ACT_S / BITS_PER_BYTE)
+#define ICE_PG_CAM_ACT_OFF	(ICE_PG_CAM_ACT_S % BITS_PER_BYTE)
+
+/**
+ * ice_pg_cam_parse_item - parse 128 bits of Parse Graph CAM Entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of Parse Graph CAM Entry
+ * @item: item of Parse Graph CAM Entry
+ * @data: Parse Graph CAM Entry data to be parsed
+ * @size: size of Parse Graph CAM Entry
+ */
+static void ice_pg_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				  void *data, int __maybe_unused size)
+{
+	struct ice_pg_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+
+	ci->idx = idx;
+
+	ice_pg_cam_key_init(&ci->key, buf);
+
+	d64 = *((u64 *)&buf[ICE_PG_CAM_ACT_IDD]) >> ICE_PG_CAM_ACT_OFF;
+	ice_pg_cam_action_init(&ci->action, d64);
+}
+
+#define ICE_PG_SP_CAM_KEY_S	56
+#define ICE_PG_SP_CAM_KEY_IDD	(ICE_PG_SP_CAM_KEY_S / BITS_PER_BYTE)
+
+/**
+ * ice_pg_sp_cam_parse_item - parse 136 bits of Parse Graph Spill CAM Entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of Parse Graph Spill CAM Entry
+ * @item: item of Parse Graph Spill CAM Entry
+ * @data: Parse Graph Spill CAM Entry data to be parsed
+ * @size: size of Parse Graph Spill CAM Entry
+ */
+static void ice_pg_sp_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				     void *data, int __maybe_unused size)
+{
+	struct ice_pg_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+
+	ci->idx = idx;
+
+	d64 = *(u64 *)buf;
+	ice_pg_cam_action_init(&ci->action, d64);
+
+	ice_pg_cam_key_init(&ci->key, &buf[ICE_PG_SP_CAM_KEY_IDD]);
+}
+
+#define ICE_PG_NM_CAM_ACT_S	41
+#define ICE_PG_NM_CAM_ACT_IDD	(ICE_PG_NM_CAM_ACT_S / BITS_PER_BYTE)
+#define ICE_PG_NM_CAM_ACT_OFF   (ICE_PG_NM_CAM_ACT_S % BITS_PER_BYTE)
+
+/**
+ * ice_pg_nm_cam_parse_item - parse 96 bits of Parse Graph NoMatch CAM Entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of Parse Graph NoMatch CAM Entry
+ * @item: item of Parse Graph NoMatch CAM Entry
+ * @data: Parse Graph NoMatch CAM Entry data to be parsed
+ * @size: size of Parse Graph NoMatch CAM Entry
+ */
+static void ice_pg_nm_cam_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				     void *data, int __maybe_unused size)
+{
+	struct ice_pg_nm_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+
+	ci->idx = idx;
+
+	d64 = *(u64 *)buf;
+	ice_pg_nm_cam_key_init(&ci->key, d64);
+
+	d64 = *((u64 *)&buf[ICE_PG_NM_CAM_ACT_IDD]) >> ICE_PG_NM_CAM_ACT_OFF;
+	ice_pg_cam_action_init(&ci->action, d64);
+}
+
+#define ICE_PG_NM_SP_CAM_ACT_S		56
+#define ICE_PG_NM_SP_CAM_ACT_IDD	(ICE_PG_NM_SP_CAM_ACT_S / BITS_PER_BYTE)
+#define ICE_PG_NM_SP_CAM_ACT_OFF	(ICE_PG_NM_SP_CAM_ACT_S % BITS_PER_BYTE)
+
+/**
+ * ice_pg_nm_sp_cam_parse_item - parse 104 bits of Parse Graph NoMatch Spill
+ *  CAM Entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of Parse Graph NoMatch Spill CAM Entry
+ * @item: item of Parse Graph NoMatch Spill CAM Entry
+ * @data: Parse Graph NoMatch Spill CAM Entry data to be parsed
+ * @size: size of Parse Graph NoMatch Spill CAM Entry
+ */
+static void ice_pg_nm_sp_cam_parse_item(struct ice_hw *hw, u16 idx,
+					void *item, void *data,
+					int __maybe_unused size)
+{
+	struct ice_pg_nm_cam_item *ci = item;
+	u8 *buf = data;
+	u64 d64;
+
+	ci->idx = idx;
+
+	d64 = *(u64 *)buf;
+	ice_pg_cam_action_init(&ci->action, d64);
+
+	d64 = *((u64 *)&buf[ICE_PG_NM_SP_CAM_ACT_IDD]) >>
+		ICE_PG_NM_SP_CAM_ACT_OFF;
+	ice_pg_nm_cam_key_init(&ci->key, d64);
+}
+
+/**
+ * ice_pg_cam_table_get - create a parse graph cam table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Parse Graph CAM table.
+ */
+static struct ice_pg_cam_item *ice_pg_cam_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_CAM,
+				       sizeof(struct ice_pg_cam_item),
+				       ICE_PG_CAM_TABLE_SIZE,
+				       ice_pg_cam_parse_item, false);
+}
+
+/**
+ * ice_pg_sp_cam_table_get - create a parse graph spill cam table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Parse Graph Spill CAM table.
+ */
+static struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_PG_SPILL,
+				       sizeof(struct ice_pg_cam_item),
+				       ICE_PG_SP_CAM_TABLE_SIZE,
+				       ice_pg_sp_cam_parse_item, false);
+}
+
+/**
+ * ice_pg_nm_cam_table_get - create a parse graph no match cam table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Parse Graph No Match CAM table.
+ */
+static struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_NOMATCH_CAM,
+				       sizeof(struct ice_pg_nm_cam_item),
+				       ICE_PG_NM_CAM_TABLE_SIZE,
+				       ice_pg_nm_cam_parse_item, false);
+}
+
+/**
+ * ice_pg_nm_sp_cam_table_get - create a parse graph no match spill cam table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Parse Graph No Match Spill CAM table.
+ */
+static struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_NOMATCH_SPILL,
+				       sizeof(struct ice_pg_nm_cam_item),
+				       ICE_PG_NM_SP_CAM_TABLE_SIZE,
+				       ice_pg_nm_sp_cam_parse_item, false);
+}
+
+/*** ICE_SID_RXPARSER_BOOST_TCAM and ICE_SID_LBL_RXPARSER_TMEM sections ***/
+#define ICE_BST_ALU_OPC		GENMASK_ULL(5, 0)
+#define ICE_BST_ALU_SS		GENMASK_ULL(13, 6)
+#define ICE_BST_ALU_SL		GENMASK_ULL(18, 14)
+#define ICE_BST_ALU_SXS		BIT_ULL(19)
+#define ICE_BST_ALU_SXK		GENMASK_ULL(23, 20)
+#define ICE_BST_ALU_SRID	GENMASK_ULL(30, 24)
+#define ICE_BST_ALU_DRID	GENMASK_ULL(37, 31)
+#define ICE_BST_ALU_INC0	BIT_ULL(38)
+#define ICE_BST_ALU_INC1	BIT_ULL(39)
+#define ICE_BST_ALU_POO		GENMASK_ULL(41, 40)
+#define ICE_BST_ALU_PO		GENMASK_ULL(49, 42)
+#define ICE_BST_ALU_BA_S	50	/* offset for the 2nd 64-bits field */
+#define ICE_BST_ALU_BA		GENMASK_ULL(57 - ICE_BST_ALU_BA_S, \
+					    50 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_IMM		GENMASK_ULL(73 - ICE_BST_ALU_BA_S, \
+					    58 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_DFE		BIT_ULL(74 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_DS		GENMASK_ULL(80 - ICE_BST_ALU_BA_S, \
+					    75 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_DL		GENMASK_ULL(86 - ICE_BST_ALU_BA_S, \
+					    81 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_FEI		BIT_ULL(87 - ICE_BST_ALU_BA_S)
+#define ICE_BST_ALU_FSI		GENMASK_ULL(95 - ICE_BST_ALU_BA_S, \
+					    88 - ICE_BST_ALU_BA_S)
+
+/**
+ * ice_bst_alu_init - parse 96 bits of ALU entry
+ * @alu: pointer to the ALU entry structure
+ * @data: ALU entry data to be parsed
+ * @off: offset of the ALU entry data
+ */
+static void ice_bst_alu_init(struct ice_alu *alu, u8 *data, u8 off)
+{
+	u64 d64;
+	u8 idd;
+
+	d64 = *((u64 *)data) >> off;
+
+	alu->opc		= FIELD_GET(ICE_BST_ALU_OPC, d64);
+	alu->src_start		= FIELD_GET(ICE_BST_ALU_SS, d64);
+	alu->src_len		= FIELD_GET(ICE_BST_ALU_SL, d64);
+	alu->shift_xlate_sel	= FIELD_GET(ICE_BST_ALU_SXS, d64);
+	alu->shift_xlate_key	= FIELD_GET(ICE_BST_ALU_SXK, d64);
+	alu->src_reg_id		= FIELD_GET(ICE_BST_ALU_SRID, d64);
+	alu->dst_reg_id		= FIELD_GET(ICE_BST_ALU_DRID, d64);
+	alu->inc0		= FIELD_GET(ICE_BST_ALU_INC0, d64);
+	alu->inc1		= FIELD_GET(ICE_BST_ALU_INC1, d64);
+	alu->proto_offset_opc	= FIELD_GET(ICE_BST_ALU_POO, d64);
+	alu->proto_offset	= FIELD_GET(ICE_BST_ALU_PO, d64);
+
+	idd = (ICE_BST_ALU_BA_S + off) / BITS_PER_BYTE;
+	off = (ICE_BST_ALU_BA_S + off) % BITS_PER_BYTE;
+	d64 = *((u64 *)(&data[idd])) >> off;
+
+	alu->branch_addr	= FIELD_GET(ICE_BST_ALU_BA, d64);
+	alu->imm		= FIELD_GET(ICE_BST_ALU_IMM, d64);
+	alu->dedicate_flags_ena	= FIELD_GET(ICE_BST_ALU_DFE, d64);
+	alu->dst_start		= FIELD_GET(ICE_BST_ALU_DS, d64);
+	alu->dst_len		= FIELD_GET(ICE_BST_ALU_DL, d64);
+	alu->flags_extr_imm	= FIELD_GET(ICE_BST_ALU_FEI, d64);
+	alu->flags_start_imm	= FIELD_GET(ICE_BST_ALU_FSI, d64);
+}
+
+#define ICE_BST_PGKB_F0_ENA		BIT_ULL(0)
+#define ICE_BST_PGKB_F0_IDX		GENMASK_ULL(6, 1)
+#define ICE_BST_PGKB_F1_ENA		BIT_ULL(7)
+#define ICE_BST_PGKB_F1_IDX		GENMASK_ULL(13, 8)
+#define ICE_BST_PGKB_F2_ENA		BIT_ULL(14)
+#define ICE_BST_PGKB_F2_IDX		GENMASK_ULL(20, 15)
+#define ICE_BST_PGKB_F3_ENA		BIT_ULL(21)
+#define ICE_BST_PGKB_F3_IDX		GENMASK_ULL(27, 22)
+#define ICE_BST_PGKB_AR_IDX		GENMASK_ULL(34, 28)
+
+/**
+ * ice_bst_pgkb_init - parse 35 bits of Parse Graph Key Build
+ * @kb: pointer to the Parse Graph Key Build structure
+ * @data: Parse Graph Key Build data to be parsed
+ */
+static void ice_bst_pgkb_init(struct ice_pg_keybuilder *kb, u64 data)
+{
+	kb->flag0_ena	= FIELD_GET(ICE_BST_PGKB_F0_ENA, data);
+	kb->flag0_idx	= FIELD_GET(ICE_BST_PGKB_F0_IDX, data);
+	kb->flag1_ena	= FIELD_GET(ICE_BST_PGKB_F1_ENA, data);
+	kb->flag1_idx	= FIELD_GET(ICE_BST_PGKB_F1_IDX, data);
+	kb->flag2_ena	= FIELD_GET(ICE_BST_PGKB_F2_ENA, data);
+	kb->flag2_idx	= FIELD_GET(ICE_BST_PGKB_F2_IDX, data);
+	kb->flag3_ena	= FIELD_GET(ICE_BST_PGKB_F3_ENA, data);
+	kb->flag3_idx	= FIELD_GET(ICE_BST_PGKB_F3_IDX, data);
+	kb->alu_reg_idx	= FIELD_GET(ICE_BST_PGKB_AR_IDX, data);
+}
+
+#define ICE_BST_NPKB_OPC	GENMASK(1, 0)
+#define ICE_BST_NPKB_S_R0	GENMASK(9, 2)
+#define ICE_BST_NPKB_L_R1	GENMASK(17, 10)
+
+/**
+ * ice_bst_npkb_init - parse 18 bits of Next Protocol Key Build
+ * @kb: pointer to the Next Protocol Key Build structure
+ * @data: Next Protocol Key Build data to be parsed
+ */
+static void ice_bst_npkb_init(struct ice_np_keybuilder *kb, u32 data)
+{
+	kb->opc		= FIELD_GET(ICE_BST_NPKB_OPC, data);
+	kb->start_reg0	= FIELD_GET(ICE_BST_NPKB_S_R0, data);
+	kb->len_reg1	= FIELD_GET(ICE_BST_NPKB_L_R1, data);
+}
+
+#define ICE_BT_KEY_S		32
+#define ICE_BT_KEY_IDD		(ICE_BT_KEY_S / BITS_PER_BYTE)
+#define ICE_BT_KIV_S		192
+#define ICE_BT_KIV_IDD		(ICE_BT_KIV_S / BITS_PER_BYTE)
+#define ICE_BT_HIG_S		352
+#define ICE_BT_HIG_IDD		(ICE_BT_HIG_S / BITS_PER_BYTE)
+#define ICE_BT_PGP_S		360
+#define ICE_BT_PGP_IDD		(ICE_BT_PGP_S / BITS_PER_BYTE)
+#define ICE_BT_PGP_M		GENMASK(361 - ICE_BT_PGP_S, 360 - ICE_BT_PGP_S)
+#define ICE_BT_NPKB_S		362
+#define ICE_BT_NPKB_IDD		(ICE_BT_NPKB_S / BITS_PER_BYTE)
+#define ICE_BT_NPKB_OFF		(ICE_BT_NPKB_S % BITS_PER_BYTE)
+#define ICE_BT_PGKB_S		380
+#define ICE_BT_PGKB_IDD		(ICE_BT_PGKB_S / BITS_PER_BYTE)
+#define ICE_BT_PGKB_OFF		(ICE_BT_PGKB_S % BITS_PER_BYTE)
+#define ICE_BT_ALU0_S		415
+#define ICE_BT_ALU0_IDD		(ICE_BT_ALU0_S / BITS_PER_BYTE)
+#define ICE_BT_ALU0_OFF		(ICE_BT_ALU0_S % BITS_PER_BYTE)
+#define ICE_BT_ALU1_S		511
+#define ICE_BT_ALU1_IDD		(ICE_BT_ALU1_S / BITS_PER_BYTE)
+#define ICE_BT_ALU1_OFF		(ICE_BT_ALU1_S % BITS_PER_BYTE)
+#define ICE_BT_ALU2_S		607
+#define ICE_BT_ALU2_IDD		(ICE_BT_ALU2_S / BITS_PER_BYTE)
+#define ICE_BT_ALU2_OFF		(ICE_BT_ALU2_S % BITS_PER_BYTE)
+
+/**
+ * ice_bst_parse_item - parse 704 bits of Boost TCAM entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of Boost TCAM entry
+ * @item: item of Boost TCAM entry
+ * @data: Boost TCAM entry data to be parsed
+ * @size: size of Boost TCAM entry
+ */
+static void ice_bst_parse_item(struct ice_hw *hw, u16 idx, void *item,
+			       void *data, int __maybe_unused size)
+{
+	struct ice_bst_tcam_item *ti = item;
+	u8 *buf = (u8 *)data;
+	int i;
+
+	ti->addr = *(u16 *)buf;
+
+	for (i = 0; i < ICE_BST_TCAM_KEY_SIZE; i++) {
+		ti->key[i] = buf[ICE_BT_KEY_IDD + i];
+		ti->key_inv[i] = buf[ICE_BT_KIV_IDD + i];
+	}
+	ti->hit_idx_grp	= buf[ICE_BT_HIG_IDD];
+	ti->pg_prio	= buf[ICE_BT_PGP_IDD] & ICE_BT_PGP_M;
+
+	ice_bst_npkb_init(&ti->np_kb,
+			  *((u32 *)(&buf[ICE_BT_NPKB_IDD])) >>
+			   ICE_BT_NPKB_OFF);
+	ice_bst_pgkb_init(&ti->pg_kb,
+			  *((u64 *)(&buf[ICE_BT_PGKB_IDD])) >>
+			   ICE_BT_PGKB_OFF);
+
+	ice_bst_alu_init(&ti->alu0, &buf[ICE_BT_ALU0_IDD], ICE_BT_ALU0_OFF);
+	ice_bst_alu_init(&ti->alu1, &buf[ICE_BT_ALU1_IDD], ICE_BT_ALU1_OFF);
+	ice_bst_alu_init(&ti->alu2, &buf[ICE_BT_ALU2_IDD], ICE_BT_ALU2_OFF);
+}
+
+/**
+ * ice_bst_tcam_table_get - create a boost tcam table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Boost TCAM table.
+ */
+static struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_BOOST_TCAM,
+				       sizeof(struct ice_bst_tcam_item),
+				       ICE_BST_TCAM_TABLE_SIZE,
+				       ice_bst_parse_item, true);
+}
+
+static void ice_parse_lbl_item(struct ice_hw *hw, u16 idx, void *item,
+			       void *data, int size)
+{
+	memcpy(item, data, size);
+}
+
+/**
+ * ice_bst_lbl_table_get - create a boost label table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Boost label table.
+ */
+static struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_LBL_RXPARSER_TMEM,
+				       sizeof(struct ice_lbl_item),
+				       ICE_BST_TCAM_TABLE_SIZE,
+				       ice_parse_lbl_item, true);
+}
+
+/*** ICE_SID_RXPARSER_MARKER_PTYPE section ***/
+static void ice_parse_ptype_mk_tcam_item(struct ice_hw *hw, u16 idx,
+					 void *item, void *data, int size)
+{
+	memcpy(item, data, size);
+}
+
+/**
+ * ice_ptype_mk_tcam_table_get - create a ptype marker tcam table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Marker PType TCAM table.
+ */
+static
+struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_MARKER_PTYPE,
+				       sizeof(struct ice_ptype_mk_tcam_item),
+				       ICE_PTYPE_MK_TCAM_TABLE_SIZE,
+				       ice_parse_ptype_mk_tcam_item, true);
+}
+
+/*** ICE_SID_RXPARSER_MARKER_GRP section ***/
+static void ice_mk_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				  void *data, int __maybe_unused size)
+{
+	struct ice_mk_grp_item *grp = item;
+	u8 *buf = data;
+	int i;
+
+	grp->idx = idx;
+
+	for (i = 0; i < ICE_MK_COUNT_PER_GRP; i++)
+		grp->markers[i] = buf[i];
+}
+
+/**
+ * ice_mk_grp_table_get - create a marker group table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Marker Group ID table.
+ */
+static struct ice_mk_grp_item *ice_mk_grp_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_MARKER_GRP,
+				       sizeof(struct ice_mk_grp_item),
+				       ICE_MK_GRP_TABLE_SIZE,
+				       ice_mk_grp_parse_item, false);
+}
+
+/*** ICE_SID_RXPARSER_PROTO_GRP section ***/
+#define ICE_PO_POL	BIT(0)
+#define ICE_PO_PID	GENMASK(8, 1)
+#define ICE_PO_OFF	GENMASK(21, 12)
+
+/**
+ * ice_proto_off_parse - parse 22 bits of Protocol entry
+ * @po: pointer to the Protocol entry structure
+ * @data: Protocol entry data to be parsed
+ */
+static void ice_proto_off_parse(struct ice_proto_off *po, u32 data)
+{
+	po->polarity = FIELD_GET(ICE_PO_POL, data);
+	po->proto_id = FIELD_GET(ICE_PO_PID, data);
+	po->offset = FIELD_GET(ICE_PO_OFF, data);
+}
+
+/**
+ * ice_proto_grp_parse_item - parse 192 bits of Protocol Group Table entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of Protocol Group Table entry
+ * @item: item of Protocol Group Table entry
+ * @data: Protocol Group Table entry data to be parsed
+ * @size: size of Protocol Group Table entry
+ */
+static void ice_proto_grp_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				     void *data, int __maybe_unused size)
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
+		ice_proto_off_parse(&grp->po[i], d32);
+	}
+}
+
+/**
+ * ice_proto_grp_table_get - create a proto group table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Protocol Group table.
+ */
+static struct ice_proto_grp_item *ice_proto_grp_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_PROTO_GRP,
+				       sizeof(struct ice_proto_grp_item),
+				       ICE_PROTO_GRP_TABLE_SIZE,
+				       ice_proto_grp_parse_item, false);
+}
+
+/*** ICE_SID_RXPARSER_FLAG_REDIR section ***/
+#define ICE_FRT_EXPO	BIT(0)
+#define ICE_FRT_IFID	GENMASK(6, 1)
+
+/**
+ * ice_flg_rd_parse_item - parse 8 bits of Flag Redirect Table entry
+ * @hw: pointer to the hardware structure
+ * @idx: index of Flag Redirect Table entry
+ * @item: item of Flag Redirect Table entry
+ * @data: Flag Redirect Table entry data to be parsed
+ * @size: size of Flag Redirect Table entry
+ */
+static void ice_flg_rd_parse_item(struct ice_hw *hw, u16 idx, void *item,
+				  void *data, int __maybe_unused size)
+{
+	struct ice_flg_rd_item *rdi = item;
+	u8 d8 = *(u8 *)data;
+
+	rdi->idx = idx;
+	rdi->expose = FIELD_GET(ICE_FRT_EXPO, d8);
+	rdi->intr_flg_id = FIELD_GET(ICE_FRT_IFID, d8);
+}
+
+/**
+ * ice_flg_rd_table_get - create a flag redirect table
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Flags Redirection table.
+ */
+static struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw)
+{
+	return ice_parser_create_table(hw, ICE_SID_RXPARSER_FLAG_REDIR,
+				       sizeof(struct ice_flg_rd_item),
+				       ICE_FLG_RD_TABLE_SIZE,
+				       ice_flg_rd_parse_item, false);
+}
+
+/*** ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
+ * ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS
+ * sections ***/
+#define ICE_XLT_KB_X1AS_S	32	/* offset for the 1st 64-bits field */
+#define ICE_XLT_KB_X1AS_IDD	(ICE_XLT_KB_X1AS_S / BITS_PER_BYTE)
+#define ICE_XLT_KB_X1AS_OFF	(ICE_XLT_KB_X1AS_S % BITS_PER_BYTE)
+#define ICE_XLT_KB_X1AS		GENMASK_ULL(34 - ICE_XLT_KB_X1AS_S, \
+					    32 - ICE_XLT_KB_X1AS_S)
+#define ICE_XLT_KB_X2AS		GENMASK_ULL(37 - ICE_XLT_KB_X1AS_S, \
+					    35 - ICE_XLT_KB_X1AS_S)
+#define ICE_XLT_KB_FL00		GENMASK_ULL(46 - ICE_XLT_KB_X1AS_S, \
+					    38 - ICE_XLT_KB_X1AS_S)
+#define ICE_XLT_KB_FL01		GENMASK_ULL(55 - ICE_XLT_KB_X1AS_S, \
+					    47 - ICE_XLT_KB_X1AS_S)
+#define ICE_XLT_KB_FL02		GENMASK_ULL(64 - ICE_XLT_KB_X1AS_S, \
+					    56 - ICE_XLT_KB_X1AS_S)
+#define ICE_XLT_KB_FL03		GENMASK_ULL(73 - ICE_XLT_KB_X1AS_S, \
+					    65 - ICE_XLT_KB_X1AS_S)
+#define ICE_XLT_KB_FL04		GENMASK_ULL(82 - ICE_XLT_KB_X1AS_S, \
+					    74 - ICE_XLT_KB_X1AS_S)
+#define ICE_XLT_KB_FL05		GENMASK_ULL(91 - ICE_XLT_KB_X1AS_S, \
+					    83 - ICE_XLT_KB_X1AS_S)
+#define ICE_XLT_KB_FL06_S	92	/* offset for the 2nd 64-bits field */
+#define ICE_XLT_KB_FL06_IDD	(ICE_XLT_KB_FL06_S / BITS_PER_BYTE)
+#define ICE_XLT_KB_FL06_OFF	(ICE_XLT_KB_FL06_S % BITS_PER_BYTE)
+#define ICE_XLT_KB_FL06		GENMASK_ULL(100 - ICE_XLT_KB_FL06_S, \
+					    92 - ICE_XLT_KB_FL06_S)
+#define ICE_XLT_KB_FL07		GENMASK_ULL(109 - ICE_XLT_KB_FL06_S, \
+					    101 - ICE_XLT_KB_FL06_S)
+#define ICE_XLT_KB_FL08		GENMASK_ULL(118 - ICE_XLT_KB_FL06_S, \
+					    110 - ICE_XLT_KB_FL06_S)
+#define ICE_XLT_KB_FL09		GENMASK_ULL(127 - ICE_XLT_KB_FL06_S, \
+					    119 - ICE_XLT_KB_FL06_S)
+#define ICE_XLT_KB_FL10		GENMASK_ULL(136 - ICE_XLT_KB_FL06_S, \
+					    128 - ICE_XLT_KB_FL06_S)
+#define ICE_XLT_KB_FL11		GENMASK_ULL(145 - ICE_XLT_KB_FL06_S, \
+					    137 - ICE_XLT_KB_FL06_S)
+#define ICE_XLT_KB_FL12_S	146	/* offset for the 3rd 64-bits field */
+#define ICE_XLT_KB_FL12_IDD	(ICE_XLT_KB_FL12_S / BITS_PER_BYTE)
+#define ICE_XLT_KB_FL12_OFF	(ICE_XLT_KB_FL12_S % BITS_PER_BYTE)
+#define ICE_XLT_KB_FL12		GENMASK_ULL(154 - ICE_XLT_KB_FL12_S, \
+					    146 - ICE_XLT_KB_FL12_S)
+#define ICE_XLT_KB_FL13		GENMASK_ULL(163 - ICE_XLT_KB_FL12_S, \
+					    155 - ICE_XLT_KB_FL12_S)
+#define ICE_XLT_KB_FL14		GENMASK_ULL(181 - ICE_XLT_KB_FL12_S, \
+					    164 - ICE_XLT_KB_FL12_S)
+#define ICE_XLT_KB_X1MS		GENMASK_ULL(186 - ICE_XLT_KB_FL12_S, \
+					    182 - ICE_XLT_KB_FL12_S)
+#define ICE_XLT_KB_X2MS		GENMASK_ULL(191 - ICE_XLT_KB_FL12_S, \
+					    187 - ICE_XLT_KB_FL12_S)
+
+/**
+ * ice_kb_entry_init - parse 192 bits of XLT Key Builder entry
+ * @entry: pointer to the XLT Key Builder entry structure
+ * @data: XLT Key Builder entry data to be parsed
+ */
+static void ice_kb_entry_init(struct ice_xlt_kb_entry *entry, u8 *data)
+{
+	u8 i = 0;
+	u64 d64;
+
+	d64 = *((u64 *)&data[ICE_XLT_KB_X1AS_IDD]) >> ICE_XLT_KB_X1AS_OFF;
+
+	entry->xlt1_ad_sel	= FIELD_GET(ICE_XLT_KB_X1AS, d64);
+	entry->xlt2_ad_sel	= FIELD_GET(ICE_XLT_KB_X2AS, d64);
+
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL00, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL01, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL02, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL03, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL04, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL05, d64);
+
+	d64 = *((u64 *)&data[ICE_XLT_KB_FL06_IDD]) >> ICE_XLT_KB_FL06_OFF;
+
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL06, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL07, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL08, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL09, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL10, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL11, d64);
+
+	d64 = *((u64 *)&data[ICE_XLT_KB_FL12_IDD]) >> ICE_XLT_KB_FL12_OFF;
+
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL12, d64);
+	entry->flg0_14_sel[i++]	= FIELD_GET(ICE_XLT_KB_FL13, d64);
+	entry->flg0_14_sel[i]	= FIELD_GET(ICE_XLT_KB_FL14, d64);
+
+	entry->xlt1_md_sel	= FIELD_GET(ICE_XLT_KB_X1MS, d64);
+	entry->xlt2_md_sel	= FIELD_GET(ICE_XLT_KB_X2MS, d64);
+}
+
+#define ICE_XLT_KB_X1PM_OFF	0
+#define ICE_XLT_KB_X2PM_OFF	1
+#define ICE_XLT_KB_PIPM_OFF	2
+#define ICE_XLT_KB_FL15_OFF	4
+#define ICE_XLT_KB_TBL_OFF	12
+
+/**
+ * ice_parse_kb_data - parse 204 bits of XLT Key Build Table
+ * @hw: pointer to the hardware structure
+ * @kb: pointer to the XLT Key Build Table structure
+ * @data: XLT Key Build Table data to be parsed
+ */
+static void ice_parse_kb_data(struct ice_hw *hw, struct ice_xlt_kb *kb,
+			      void *data)
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
+		ice_kb_entry_init(&kb->entries[i],
+				  &buf[ICE_XLT_KB_TBL_OFF +
+				       i * ICE_XLT_KB_TBL_ENTRY_SIZE]);
+}
+
+static struct ice_xlt_kb *ice_xlt_kb_get(struct ice_hw *hw, u32 sect_type)
+{
+	struct ice_pkg_enum state = {};
+	struct ice_seg *seg = hw->seg;
+	struct ice_xlt_kb *kb;
+	void *data;
+
+	if (!seg)
+		return ERR_PTR(-EINVAL);
+
+	kb = kzalloc(sizeof(*kb), GFP_KERNEL);
+	if (!kb)
+		return ERR_PTR(-ENOMEM);
+
+	data = ice_pkg_enum_section(seg, &state, sect_type);
+	if (!data) {
+		ice_debug(hw, ICE_DBG_PARSER, "failed to find section type %d.\n",
+			  sect_type);
+		kfree(kb);
+		return ERR_PTR(-EINVAL);
+	}
+
+	ice_parse_kb_data(hw, kb, data);
+
+	return kb;
+}
+
+/**
+ * ice_xlt_kb_get_sw - create switch xlt key build
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Key Builder table for Switch.
+ */
+static struct ice_xlt_kb *ice_xlt_kb_get_sw(struct ice_hw *hw)
+{
+	return ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_SW);
+}
+
+/**
+ * ice_xlt_kb_get_acl - create acl xlt key build
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Key Builder table for ACL.
+ */
+static struct ice_xlt_kb *ice_xlt_kb_get_acl(struct ice_hw *hw)
+{
+	return ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_ACL);
+}
+
+/**
+ * ice_xlt_kb_get_fd - create fdir xlt key build
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Key Builder table for Flow Director.
+ */
+static struct ice_xlt_kb *ice_xlt_kb_get_fd(struct ice_hw *hw)
+{
+	return ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_FD);
+}
+
+/**
+ * ice_xlt_kb_get_rss - create rss xlt key build
+ * @hw: pointer to the hardware structure
+ *
+ * Return: a pointer to the allocated Key Builder table for RSS.
+ */
+static struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw)
+{
+	return ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_RSS);
+}
+
+/*** Parser API ***/
 /**
  * ice_parser_create - create a parser instance
  * @hw: pointer to the hardware structure
@@ -13,13 +1279,114 @@
 struct ice_parser *ice_parser_create(struct ice_hw *hw)
 {
 	struct ice_parser *p;
+	void *err;
 
 	p = kzalloc(sizeof(*p), GFP_KERNEL);
 	if (!p)
 		return ERR_PTR(-ENOMEM);
 
 	p->hw = hw;
+
+	p->imem_table = ice_imem_table_get(hw);
+	if (IS_ERR(p->imem_table)) {
+		err = p->imem_table;
+		goto err;
+	}
+
+	p->mi_table = ice_metainit_table_get(hw);
+	if (IS_ERR(p->mi_table)) {
+		err = p->mi_table;
+		goto err;
+	}
+
+	p->pg_cam_table = ice_pg_cam_table_get(hw);
+	if (IS_ERR(p->pg_cam_table)) {
+		err = p->pg_cam_table;
+		goto err;
+	}
+
+	p->pg_sp_cam_table = ice_pg_sp_cam_table_get(hw);
+	if (IS_ERR(p->pg_sp_cam_table)) {
+		err = p->pg_sp_cam_table;
+		goto err;
+	}
+
+	p->pg_nm_cam_table = ice_pg_nm_cam_table_get(hw);
+	if (IS_ERR(p->pg_nm_cam_table)) {
+		err = p->pg_nm_cam_table;
+		goto err;
+	}
+
+	p->pg_nm_sp_cam_table = ice_pg_nm_sp_cam_table_get(hw);
+	if (IS_ERR(p->pg_nm_sp_cam_table)) {
+		err = p->pg_nm_sp_cam_table;
+		goto err;
+	}
+
+	p->bst_tcam_table = ice_bst_tcam_table_get(hw);
+	if (IS_ERR(p->bst_tcam_table)) {
+		err = p->bst_tcam_table;
+		goto err;
+	}
+
+	p->bst_lbl_table = ice_bst_lbl_table_get(hw);
+	if (IS_ERR(p->bst_lbl_table)) {
+		err = p->bst_lbl_table;
+		goto err;
+	}
+
+	p->ptype_mk_tcam_table = ice_ptype_mk_tcam_table_get(hw);
+	if (IS_ERR(p->ptype_mk_tcam_table)) {
+		err = p->ptype_mk_tcam_table;
+		goto err;
+	}
+
+	p->mk_grp_table = ice_mk_grp_table_get(hw);
+	if (IS_ERR(p->mk_grp_table)) {
+		err = p->mk_grp_table;
+		goto err;
+	}
+
+	p->proto_grp_table = ice_proto_grp_table_get(hw);
+	if (IS_ERR(p->proto_grp_table)) {
+		err = p->proto_grp_table;
+		goto err;
+	}
+
+	p->flg_rd_table = ice_flg_rd_table_get(hw);
+	if (IS_ERR(p->flg_rd_table)) {
+		err = p->flg_rd_table;
+		goto err;
+	}
+
+	p->xlt_kb_sw = ice_xlt_kb_get_sw(hw);
+	if (IS_ERR(p->xlt_kb_sw)) {
+		err = p->xlt_kb_sw;
+		goto err;
+	}
+
+	p->xlt_kb_acl = ice_xlt_kb_get_acl(hw);
+	if (IS_ERR(p->xlt_kb_acl)) {
+		err = p->xlt_kb_acl;
+		goto err;
+	}
+
+	p->xlt_kb_fd = ice_xlt_kb_get_fd(hw);
+	if (IS_ERR(p->xlt_kb_fd)) {
+		err = p->xlt_kb_fd;
+		goto err;
+	}
+
+	p->xlt_kb_rss = ice_xlt_kb_get_rss(hw);
+	if (IS_ERR(p->xlt_kb_rss)) {
+		err = p->xlt_kb_rss;
+		goto err;
+	}
+
 	return p;
+err:
+	ice_parser_destroy(p);
+	return err;
 }
 
 /**
@@ -28,5 +1395,22 @@ struct ice_parser *ice_parser_create(struct ice_hw *hw)
  */
 void ice_parser_destroy(struct ice_parser *psr)
 {
+	kfree(psr->imem_table);
+	kfree(psr->mi_table);
+	kfree(psr->pg_cam_table);
+	kfree(psr->pg_sp_cam_table);
+	kfree(psr->pg_nm_cam_table);
+	kfree(psr->pg_nm_sp_cam_table);
+	kfree(psr->bst_tcam_table);
+	kfree(psr->bst_lbl_table);
+	kfree(psr->ptype_mk_tcam_table);
+	kfree(psr->mk_grp_table);
+	kfree(psr->proto_grp_table);
+	kfree(psr->flg_rd_table);
+	kfree(psr->xlt_kb_sw);
+	kfree(psr->xlt_kb_acl);
+	kfree(psr->xlt_kb_fd);
+	kfree(psr->xlt_kb_rss);
+
 	kfree(psr);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 09ed380eee32..a81ed0be4349 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -4,8 +4,365 @@
 #ifndef _ICE_PARSER_H_
 #define _ICE_PARSER_H_
 
+#define ICE_SEC_DATA_OFFSET				4
+#define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
+#define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
+#define ICE_SID_RXPARSER_CAM_ENTRY_SIZE			16
+#define ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE		17
+#define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE		12
+#define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
+#define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE		88
+#define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE		24
+#define ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE		8
+#define ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE		24
+#define ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE		1
+
+#define ICE_SEC_LBL_DATA_OFFSET				2
+#define ICE_SID_LBL_ENTRY_SIZE				66
+
+/*** ICE_SID_RXPARSER_IMEM section ***/
+#define ICE_IMEM_TABLE_SIZE		192
+
+/* TCAM boost Master; if bit is set, and TCAM hit, TCAM output overrides iMEM
+ * output.
+ */
+struct ice_bst_main {
+	bool alu0;
+	bool alu1;
+	bool alu2;
+	bool pg;
+};
+
+struct ice_bst_keybuilder {
+	u8 prio;	/* 0-3: PG precedence within ALUs (3 highest) */
+	bool tsr_ctrl;	/* TCAM Search Register control */
+};
+
+/* Next protocol Key builder */
+struct ice_np_keybuilder {
+	u8 opc;
+	u8 start_reg0;
+	u8 len_reg1;
+};
+
+enum ice_np_keybuilder_opcode {
+	ICE_NPKB_OPC_EXTRACT	= 0,
+	ICE_NPKB_OPC_BUILD	= 1,
+	ICE_NPKB_OPC_BYPASS	= 2,
+};
+
+/* Parse Graph Key builder */
+struct ice_pg_keybuilder {
+	bool flag0_ena;
+	bool flag1_ena;
+	bool flag2_ena;
+	bool flag3_ena;
+	u8 flag0_idx;
+	u8 flag1_idx;
+	u8 flag2_idx;
+	u8 flag3_idx;
+	u8 alu_reg_idx;
+};
+
+enum ice_alu_idx {
+	ICE_ALU0_IDX	= 0,
+	ICE_ALU1_IDX	= 1,
+	ICE_ALU2_IDX	= 2,
+};
+
+enum ice_alu_opcode {
+	ICE_ALU_PARK	= 0,
+	ICE_ALU_MOV_ADD	= 1,
+	ICE_ALU_ADD	= 2,
+	ICE_ALU_MOV_AND	= 4,
+	ICE_ALU_AND	= 5,
+	ICE_ALU_AND_IMM	= 6,
+	ICE_ALU_MOV_OR	= 7,
+	ICE_ALU_OR	= 8,
+	ICE_ALU_MOV_XOR	= 9,
+	ICE_ALU_XOR	= 10,
+	ICE_ALU_NOP	= 11,
+	ICE_ALU_BR	= 12,
+	ICE_ALU_BREQ	= 13,
+	ICE_ALU_BRNEQ	= 14,
+	ICE_ALU_BRGT	= 15,
+	ICE_ALU_BRLT	= 16,
+	ICE_ALU_BRGEQ	= 17,
+	ICE_ALU_BRLEG	= 18,
+	ICE_ALU_SETEQ	= 19,
+	ICE_ALU_ANDEQ	= 20,
+	ICE_ALU_OREQ	= 21,
+	ICE_ALU_SETNEQ	= 22,
+	ICE_ALU_ANDNEQ	= 23,
+	ICE_ALU_ORNEQ	= 24,
+	ICE_ALU_SETGT	= 25,
+	ICE_ALU_ANDGT	= 26,
+	ICE_ALU_ORGT	= 27,
+	ICE_ALU_SETLT	= 28,
+	ICE_ALU_ANDLT	= 29,
+	ICE_ALU_ORLT	= 30,
+	ICE_ALU_MOV_SUB	= 31,
+	ICE_ALU_SUB	= 32,
+	ICE_ALU_INVALID	= 64,
+};
+
+enum ice_proto_off_opcode {
+	ICE_PO_OFF_REMAIN	= 0,
+	ICE_PO_OFF_HDR_ADD	= 1,
+	ICE_PO_OFF_HDR_SUB	= 2,
+};
+
+struct ice_alu {
+	enum ice_alu_opcode opc;
+	u8 src_start;
+	u8 src_len;
+	bool shift_xlate_sel;
+	u8 shift_xlate_key;
+	u8 src_reg_id;
+	u8 dst_reg_id;
+	bool inc0;
+	bool inc1;
+	u8 proto_offset_opc;
+	u8 proto_offset;
+	u8 branch_addr;
+	u16 imm;
+	bool dedicate_flags_ena;
+	u8 dst_start;
+	u8 dst_len;
+	bool flags_extr_imm;
+	u8 flags_start_imm;
+};
+
+/* Parser program code (iMEM) */
+struct ice_imem_item {
+	u16 idx;
+	struct ice_bst_main b_m;
+	struct ice_bst_keybuilder b_kb;
+	u8 pg_prio;
+	struct ice_np_keybuilder np_kb;
+	struct ice_pg_keybuilder pg_kb;
+	struct ice_alu alu0;
+	struct ice_alu alu1;
+	struct ice_alu alu2;
+};
+
+/*** ICE_SID_RXPARSER_METADATA_INIT section ***/
+#define ICE_METAINIT_TABLE_SIZE		16
+
+/* Metadata Initialization item  */
+struct ice_metainit_item {
+	u16 idx;
+
+	u8 tsr;		/* TCAM Search key Register */
+	u16 ho;		/* Header Offset register */
+	u16 pc;		/* Program Counter register */
+	u16 pg_rn;	/* Parse Graph Root Node */
+	u8 cd;		/* Control Domain ID */
+
+	/* General Purpose Registers */
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
+	u64 flags; /* Initial value for all flags */
+};
+
+/*** ICE_SID_RXPARSER_CAM, ICE_SID_RXPARSER_PG_SPILL,
+ *    ICE_SID_RXPARSER_NOMATCH_CAM and ICE_SID_RXPARSER_NOMATCH_CAM
+ *    sections ***/
+#define ICE_PG_CAM_TABLE_SIZE		2048
+#define ICE_PG_SP_CAM_TABLE_SIZE	128
+#define ICE_PG_NM_CAM_TABLE_SIZE	1024
+#define ICE_PG_NM_SP_CAM_TABLE_SIZE	64
+
+struct ice_pg_cam_key {
+	bool valid;
+	u16 node_id;	/* Node ID of protocol in parse graph */
+	bool flag0;
+	bool flag1;
+	bool flag2;
+	bool flag3;
+	u8 boost_idx;	/* Boost TCAM match index */
+	u16 alu_reg;
+	u32 next_proto;	/* next Protocol value */
+};
+
+struct ice_pg_nm_cam_key {
+	bool valid;
+	u16 node_id;
+	bool flag0;
+	bool flag1;
+	bool flag2;
+	bool flag3;
+	u8 boost_idx;
+	u16 alu_reg;
+};
+
+struct ice_pg_cam_action {
+	u16 next_node;	/* Parser Node ID for the next round */
+	u8 next_pc;	/* next Program Counter */
+	bool is_pg;	/* is protocol group */
+	u8 proto_id;	/* protocol ID or proto group ID */
+	bool is_mg;	/* is marker group */
+	u8 marker_id;	/* marker ID or marker group ID */
+	bool is_last_round;
+	bool ho_polarity; /* header offset polarity */
+	u16 ho_inc;
+};
+
+/* Parse Graph item */
+struct ice_pg_cam_item {
+	u16 idx;
+	struct ice_pg_cam_key key;
+	struct ice_pg_cam_action action;
+};
+
+/* Parse Graph No Match item */
+struct ice_pg_nm_cam_item {
+	u16 idx;
+	struct ice_pg_nm_cam_key key;
+	struct ice_pg_cam_action action;
+};
+
+/*** ICE_SID_RXPARSER_BOOST_TCAM and ICE_SID_LBL_RXPARSER_TMEM sections ***/
+#define ICE_BST_TCAM_TABLE_SIZE		256
+#define ICE_BST_TCAM_KEY_SIZE		20
+#define ICE_BST_KEY_TCAM_SIZE		19
+
+/* Boost TCAM item */
+struct ice_bst_tcam_item {
+	u16 addr;
+	u8 key[ICE_BST_TCAM_KEY_SIZE];
+	u8 key_inv[ICE_BST_TCAM_KEY_SIZE];
+	u8 hit_idx_grp;
+	u8 pg_prio;
+	struct ice_np_keybuilder np_kb;
+	struct ice_pg_keybuilder pg_kb;
+	struct ice_alu alu0;
+	struct ice_alu alu1;
+	struct ice_alu alu2;
+};
+
+#define ICE_LBL_LEN			64
+struct ice_lbl_item {
+	u16 idx;
+	char label[ICE_LBL_LEN];
+};
+
+/*** ICE_SID_RXPARSER_MARKER_PTYPE section ***/
+#define ICE_PTYPE_MK_TCAM_TABLE_SIZE	1024
+#define ICE_PTYPE_MK_TCAM_KEY_SIZE	10
+
+struct ice_ptype_mk_tcam_item {
+	u16 address;
+	u16 ptype;
+	u8 key[ICE_PTYPE_MK_TCAM_KEY_SIZE];
+	u8 key_inv[ICE_PTYPE_MK_TCAM_KEY_SIZE];
+} __packed;
+
+/*** ICE_SID_RXPARSER_MARKER_GRP section ***/
+#define ICE_MK_GRP_TABLE_SIZE		128
+#define ICE_MK_COUNT_PER_GRP		8
+
+/*  Marker Group item */
+struct ice_mk_grp_item {
+	int idx;
+	u8 markers[ICE_MK_COUNT_PER_GRP];
+};
+
+/*** ICE_SID_RXPARSER_PROTO_GRP section ***/
+#define ICE_PROTO_COUNT_PER_GRP		8
+#define ICE_PROTO_GRP_TABLE_SIZE	192
+#define ICE_PROTO_GRP_ITEM_SIZE		22
+struct ice_proto_off {
+	bool polarity;	/* true: positive, false: negative */
+	u8 proto_id;
+	u16 offset;	/* 10 bit protocol offset */
+};
+
+/*  Protocol Group item */
+struct ice_proto_grp_item {
+	u16 idx;
+	struct ice_proto_off po[ICE_PROTO_COUNT_PER_GRP];
+};
+
+/*** ICE_SID_RXPARSER_FLAG_REDIR section ***/
+#define ICE_FLG_RD_TABLE_SIZE	64
+
+/* Flags Redirection item */
+struct ice_flg_rd_item {
+	u16 idx;
+	bool expose;
+	u8 intr_flg_id;	/* Internal Flag ID */
+};
+
+/*** ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
+ * ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS
+ * sections ***/
+#define ICE_XLT_KB_FLAG0_14_CNT		15
+#define ICE_XLT_KB_TBL_CNT		8
+#define ICE_XLT_KB_TBL_ENTRY_SIZE	24
+
+struct ice_xlt_kb_entry {
+	u8 xlt1_ad_sel;
+	u8 xlt2_ad_sel;
+	u16 flg0_14_sel[ICE_XLT_KB_FLAG0_14_CNT];
+	u8 xlt1_md_sel;
+	u8 xlt2_md_sel;
+};
+
+/* XLT Key Builder */
+struct ice_xlt_kb {
+	u8 xlt1_pm;	/* XLT1 Partition Mode */
+	u8 xlt2_pm;	/* XLT2 Partition Mode */
+	u8 prof_id_pm;	/* Profile ID Partition Mode */
+	u64 flag15;
+
+	struct ice_xlt_kb_entry entries[ICE_XLT_KB_TBL_CNT];
+};
+
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
+
+	struct ice_imem_item *imem_table;
+	struct ice_metainit_item *mi_table;
+
+	struct ice_pg_cam_item *pg_cam_table;
+	struct ice_pg_cam_item *pg_sp_cam_table;
+	struct ice_pg_nm_cam_item *pg_nm_cam_table;
+	struct ice_pg_nm_cam_item *pg_nm_sp_cam_table;
+
+	struct ice_bst_tcam_item *bst_tcam_table;
+	struct ice_lbl_item *bst_lbl_table;
+	struct ice_ptype_mk_tcam_item *ptype_mk_tcam_table;
+	struct ice_mk_grp_item *mk_grp_table;
+	struct ice_proto_grp_item *proto_grp_table;
+	struct ice_flg_rd_item *flg_rd_table;
+
+	struct ice_xlt_kb *xlt_kb_sw;
+	struct ice_xlt_kb *xlt_kb_acl;
+	struct ice_xlt_kb *xlt_kb_fd;
+	struct ice_xlt_kb *xlt_kb_rss;
 };
 
 struct ice_parser *ice_parser_create(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 96037bef3e78..b9e443232335 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -61,6 +61,7 @@ static inline u32 ice_round_to_num(u32 N, u32 R)
 				 ICE_DBG_AQ_DESC	| \
 				 ICE_DBG_AQ_DESC_BUF	| \
 				 ICE_DBG_AQ_CMD)
+#define ICE_DBG_PARSER		BIT_ULL(28)
 
 #define ICE_DBG_USER		BIT_ULL(31)
 
-- 
2.43.0

