Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A43B8CC74C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 21:36:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90E9182188;
	Wed, 22 May 2024 19:36:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2rCaDvsPqAmx; Wed, 22 May 2024 19:36:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B090282171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716406604;
	bh=XrCjsgLir11xi37+SGh/88A+zhgZvj8jLuMSUWhSnYw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=crVXzJJB2P3jqLp9L/P8MWkmEEHqPKoIKnfW3GRhv55/GZeSM0JXUG7FISpzAB7dA
	 s5BJsZwYr6pKpg7AQMXJThc/0YjfoAeGAwQ7oRxStOsQuJ6q77sDMve3D0EjtZmDwU
	 jYS/TH17QGl+ANf00h3jf5oKx5J2dKThohocN7QYxd7MDuqB02He+6GcNHOD0QawC+
	 SgzLZeKOlW+XHujE3T13kYbqg/X1mtMpwaSdpDB/cZFvGpD8bSAdCO/fNy2qmxfKHi
	 lSy0TkyTyLB7OmMePVj4N7cogkoKP5XEQZ946TCasS4BMOXlPXBHGX+dCNY6OLcrIx
	 aR//RiZafjLwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B090282171;
	Wed, 22 May 2024 19:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A80A1C5EF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 456BD406C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yXNZpivqOUHG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 19:36:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C93F8406C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C93F8406C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C93F8406C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:34 +0000 (UTC)
X-CSE-ConnectionGUID: qpMLE19/SWuPrNNBqS+Buw==
X-CSE-MsgGUID: LSs8iFd4RUiWvhksAg9x7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="23256316"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="23256316"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:36:34 -0700
X-CSE-ConnectionGUID: xa6MytfyTkO6LmKAjflTDQ==
X-CSE-MsgGUID: 2+PzVy7cSoaccrPsKAjDbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33254165"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.214])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:36:31 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 May 2024 13:35:53 -0600
Message-ID: <20240522193602.164331-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240522193602.164331-1-ahmed.zaki@intel.com>
References: <20240522193602.164331-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716406594; x=1747942594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uR3QxOilhgUvw4ZzT4pmVQPAGb3Alhco8hb+F2CGKgQ=;
 b=mp/HGigZKf4qvEW3OMmaiB8ParhujUS8/9QvVyTydJEio8yztEWGC+vP
 YX2xAQubdNLXl6/GPhVQ8h7eBFQ0Au9F7pX6NfhV6q83QZ2fTKwfZIED0
 sTGKY4ghmWQwMH+sJluHCan6gCqt+nak7dlktLG9aBYC4ErjT3SDM/qVD
 W0ImXqWZH6pLy9jxwVo99H2Nq0KPX4hA530VBW8vCFvULuVMJ1Kl/bjZT
 +dcXOBauAseQxoKxxulTw70O/slc7FeQWWSIFptHTZiPKNMLmYVoNutqm
 FoIvcFfcnEghS/UFObymJ6IplJnTWJXj9omCa4MiN31wcviUMmq3g/smJ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mp/HGigZ
Subject: [Intel-wired-lan] [PATCH iwl-next 04/13] ice: add parser internal
 helper functions
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Junfeng Guo <junfeng.guo@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Add the following internal helper functions:

- ice_bst_tcam_match():
  to perform ternary match on boost TCAM.

- ice_pg_cam_match():
  to perform parse graph key match in cam table.

- ice_pg_nm_cam_match():
  to perform parse graph key no match in cam table.

- ice_ptype_mk_tcam_match():
  to perform ptype markers match in tcam table.

- ice_flg_redirect():
  to redirect parser flags to packet flags.

- ice_xlt_kb_flag_get():
  to aggregate 64 bit packet flag into 16 bit key builder flags.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 196 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h |  52 ++++--
 2 files changed, 233 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 19dd7472b5ba..91dbe70d7fe5 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -957,6 +957,105 @@ static struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
 					ice_pg_nm_sp_cam_parse_item, false);
 }
 
+static bool __ice_pg_cam_match(struct ice_pg_cam_item *item,
+			       struct ice_pg_cam_key *key)
+{
+	return (item->key.valid &&
+		!memcmp(&item->key.val, &key->val, sizeof(key->val)));
+}
+
+static bool __ice_pg_nm_cam_match(struct ice_pg_nm_cam_item *item,
+				  struct ice_pg_cam_key *key)
+{
+	return (item->key.valid &&
+		!memcmp(&item->key.val, &key->val, sizeof(key->val)));
+}
+
+/**
+ * ice_pg_cam_match - search parse graph cam table by key
+ * @table: parse graph cam table to search
+ * @size: cam table size
+ * @key: search key
+ */
+struct ice_pg_cam_item *ice_pg_cam_match(struct ice_pg_cam_item *table,
+					 int size, struct ice_pg_cam_key *key)
+{
+	int i;
+
+	for (i = 0; i < size; i++) {
+		struct ice_pg_cam_item *item = &table[i];
+
+		if (__ice_pg_cam_match(item, key))
+			return item;
+	}
+
+	return NULL;
+}
+
+/**
+ * ice_pg_nm_cam_match - search parse graph no match cam table by key
+ * @table: parse graph no match cam table to search
+ * @size: cam table size
+ * @key: search key
+ */
+struct ice_pg_nm_cam_item *
+ice_pg_nm_cam_match(struct ice_pg_nm_cam_item *table, int size,
+		    struct ice_pg_cam_key *key)
+{
+	int i;
+
+	for (i = 0; i < size; i++) {
+		struct ice_pg_nm_cam_item *item = &table[i];
+
+		if (__ice_pg_nm_cam_match(item, key))
+			return item;
+	}
+
+	return NULL;
+}
+
+/*** Ternary match ***/
+/* Perform a ternary match on a 1-byte pattern (@pat) given @key and @key_inv
+ * Rules (per bit):
+ *     Key == 0 and Key_inv == 0 : Never match (Don't care)
+ *     Key == 0 and Key_inv == 1 : Match on bit == 1
+ *     Key == 1 and Key_inv == 0 : Match on bit == 0
+ *     Key == 1 and Key_inv == 1 : Always match (Don't care)
+ *
+ * Return true if all bits match.
+ */
+static bool ice_ternary_match_byte(u8 key, u8 key_inv, u8 pat)
+{
+	u8 bit_key, bit_key_inv, bit_pat;
+	int i;
+
+	for (i = 0; i < BITS_PER_BYTE; i++) {
+		bit_key = key & BIT(i);
+		bit_key_inv = key_inv & BIT(i);
+		bit_pat = pat & BIT(i);
+
+		if (bit_key != 0 && bit_key_inv != 0)
+			continue;
+
+		if ((bit_key == 0 && bit_key_inv == 0) || bit_key == bit_pat)
+			return false;
+	}
+
+	return true;
+}
+
+static bool ice_ternary_match(const u8 *key, const u8 *key_inv,
+			      const u8 *pat, int len)
+{
+	int i;
+
+	for (i = 0; i < len; i++)
+		if (!ice_ternary_match_byte(key[i], key_inv[i], pat[i]))
+			return false;
+
+	return true;
+}
+
 /*** ICE_SID_RXPARSER_BOOST_TCAM and ICE_SID_LBL_RXPARSER_TMEM sections ***/
 static void ice_bst_np_kb_dump(struct ice_hw *hw, struct ice_np_keybuilder *kb)
 {
@@ -1257,6 +1356,29 @@ static struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw)
 					ice_parse_lbl_item, true);
 }
 
+/**
+ * ice_bst_tcam_match - match a pattern on the boost tcam table
+ * @tcam_table: boost tcam table to search
+ * @pat: pattern to match
+ */
+struct ice_bst_tcam_item *
+ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat)
+{
+	int i;
+
+	for (i = 0; i < ICE_BST_TCAM_TABLE_SIZE; i++) {
+		struct ice_bst_tcam_item *item = &tcam_table[i];
+
+		if (item->hit_idx_grp == 0)
+			continue;
+		if (ice_ternary_match(item->key, item->key_inv, pat,
+				      ICE_BST_TCAM_KEY_SIZE))
+			return item;
+	}
+
+	return NULL;
+}
+
 /*** ICE_SID_RXPARSER_MARKER_PTYPE section ***/
 /**
  * ice_ptype_mk_tcam_dump - dump an ptype marker tcam info
@@ -1309,6 +1431,28 @@ struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw)
 					ice_parse_ptype_mk_tcam_item, true);
 }
 
+/**
+ * ice_ptype_mk_tcam_match - match a pattern on a ptype marker tcam table
+ * @table: ptype marker tcam table to search
+ * @pat: pattern to match
+ * @len: length of the pattern
+ */
+struct ice_ptype_mk_tcam_item *
+ice_ptype_mk_tcam_match(struct ice_ptype_mk_tcam_item *table,
+			u8 *pat, int len)
+{
+	int i;
+
+	for (i = 0; i < ICE_PTYPE_MK_TCAM_TABLE_SIZE; i++) {
+		struct ice_ptype_mk_tcam_item *item = &table[i];
+
+		if (ice_ternary_match(item->key, item->key_inv, pat, len))
+			return item;
+	}
+
+	return NULL;
+}
+
 /*** ICE_SID_RXPARSER_MARKER_GRP section ***/
 /**
  * ice_mk_grp_dump - dump an marker group item info
@@ -1498,6 +1642,29 @@ static struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw)
 					ice_flg_rd_parse_item, false);
 }
 
+/**
+ * ice_flg_redirect - redirect a parser flag to packet flag
+ * @table: flag redirect table
+ * @psr_flg: parser flag to redirect
+ */
+u64 ice_flg_redirect(struct ice_flg_rd_item *table, u64 psr_flg)
+{
+	u64 flg = 0;
+	int i;
+
+	for (i = 0; i < ICE_FLG_RDT_SIZE; i++) {
+		struct ice_flg_rd_item *item = &table[i];
+
+		if (!item->expose)
+			continue;
+
+		if (psr_flg & BIT(item->intr_flg_id))
+			flg |= BIT(i);
+	}
+
+	return flg;
+}
+
 /*** ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
  * ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS
  * sections ***/
@@ -1723,6 +1890,35 @@ static struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw)
 	return ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_RSS);
 }
 
+#define ICE_XLT_KB_MASK		GENMASK_ULL(5, 0)
+
+/**
+ * ice_xlt_kb_flag_get - aggregate 64 bits packet flag into 16 bits xlt flag
+ * @kb: xlt key build
+ * @pkt_flag: 64 bits packet flag
+ */
+u16 ice_xlt_kb_flag_get(struct ice_xlt_kb *kb, u64 pkt_flag)
+{
+	struct ice_xlt_kb_entry *entry = &kb->entries[0];
+	u16 flag = 0;
+	int i;
+
+	/* check flag 15 */
+	if (kb->flag15 & pkt_flag)
+		flag = (u16)BIT(ICE_XLT_KB_FLAG0_14_CNT);
+
+	/* check flag 0 - 14 */
+	for (i = 0; i < ICE_XLT_KB_FLAG0_14_CNT; i++) {
+		/* only check first entry */
+		u16 idx = (u16)(entry->flg0_14_sel[i] & ICE_XLT_KB_MASK);
+
+		if (pkt_flag & BIT(idx))
+			flag |= (u16)BIT(i);
+	}
+
+	return flag;
+}
+
 /*** Parser API ***/
 /**
  * ice_parser_create - create a parser instance
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 26468b16202c..a4a33225ff45 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -197,25 +197,29 @@ struct ice_metainit_item {
 
 struct ice_pg_cam_key {
 	bool valid;
-	u16 node_id;	/* Node ID of protocol in parse graph */
-	bool flag0;
-	bool flag1;
-	bool flag2;
-	bool flag3;
-	u8 boost_idx;	/* Boost TCAM match index */
-	u16 alu_reg;
-	u32 next_proto;	/* next Protocol value */
+	struct_group_attr(val, __packed,
+		u16 node_id;	/* Node ID of protocol in parse graph */
+		bool flag0;
+		bool flag1;
+		bool flag2;
+		bool flag3;
+		u8 boost_idx;	/* Boost TCAM match index */
+		u16 alu_reg;
+		u32 next_proto;	/* next Protocol value */
+	);
 };
 
 struct ice_pg_nm_cam_key {
 	bool valid;
-	u16 node_id;
-	bool flag0;
-	bool flag1;
-	bool flag2;
-	bool flag3;
-	u8 boost_idx;
-	u16 alu_reg;
+	struct_group_attr(val, __packed,
+		u16 node_id;
+		bool flag0;
+		bool flag1;
+		bool flag2;
+		bool flag3;
+		u8 boost_idx;
+		u16 alu_reg;
+	);
 };
 
 struct ice_pg_cam_action {
@@ -244,6 +248,12 @@ struct ice_pg_nm_cam_item {
 	struct ice_pg_cam_action action;
 };
 
+struct ice_pg_cam_item *ice_pg_cam_match(struct ice_pg_cam_item *table,
+					 int size, struct ice_pg_cam_key *key);
+struct ice_pg_nm_cam_item *
+ice_pg_nm_cam_match(struct ice_pg_nm_cam_item *table, int size,
+		    struct ice_pg_cam_key *key);
+
 /*** ICE_SID_RXPARSER_BOOST_TCAM and ICE_SID_LBL_RXPARSER_TMEM sections ***/
 #define ICE_BST_TCAM_TABLE_SIZE		256
 #define ICE_BST_TCAM_KEY_SIZE		20
@@ -269,6 +279,9 @@ struct ice_lbl_item {
 	char label[ICE_LBL_LEN];
 };
 
+struct ice_bst_tcam_item *
+ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat);
+
 /*** ICE_SID_RXPARSER_MARKER_PTYPE section ***/
 #define ICE_PTYPE_MK_TCAM_TABLE_SIZE	1024
 #define ICE_PTYPE_MK_TCAM_KEY_SIZE	10
@@ -280,6 +293,9 @@ struct ice_ptype_mk_tcam_item {
 	u8 key_inv[ICE_PTYPE_MK_TCAM_KEY_SIZE];
 } __packed;
 
+struct ice_ptype_mk_tcam_item *
+ice_ptype_mk_tcam_match(struct ice_ptype_mk_tcam_item *table,
+			u8 *pat, int len);
 /*** ICE_SID_RXPARSER_MARKER_GRP section ***/
 #define ICE_MK_GRP_TABLE_SIZE		128
 #define ICE_MK_COUNT_PER_GRP		8
@@ -308,6 +324,7 @@ struct ice_proto_grp_item {
 
 /*** ICE_SID_RXPARSER_FLAG_REDIR section ***/
 #define ICE_FLG_RD_TABLE_SIZE	64
+#define ICE_FLG_RDT_SIZE	64
 
 /* Flags Redirection item */
 struct ice_flg_rd_item {
@@ -316,6 +333,8 @@ struct ice_flg_rd_item {
 	u8 intr_flg_id;	/* Internal Flag ID */
 };
 
+u64 ice_flg_redirect(struct ice_flg_rd_item *table, u64 psr_flg);
+
 /*** ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
  * ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS
  * sections ***/
@@ -341,6 +360,9 @@ struct ice_xlt_kb {
 	struct ice_xlt_kb_entry entries[ICE_XLT_KB_TBL_CNT];
 };
 
+u16 ice_xlt_kb_flag_get(struct ice_xlt_kb *kb, u64 pkt_flag);
+
+/*** Parser API ***/
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
 
-- 
2.43.0

