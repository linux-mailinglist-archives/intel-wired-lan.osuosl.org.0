Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 582E492DA3E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2024 22:40:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7201A83F02;
	Wed, 10 Jul 2024 20:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zX_cdsZnMqDv; Wed, 10 Jul 2024 20:40:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1069D83EF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720644055;
	bh=GTgKNUypaw4KJtJ5PAYJTqCJrn6md8+LUOuzR/T5x5c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fFmlhNK4eTSOCaxHUuo4yglUMB4kLs0XGgEihQ8Xid0MJjfqMDP11bcp0Cn3AohbL
	 gTZoOCXFcPWL00KshF0e3WrLAjB1WGWNT39bEjVYxdHnKnNdwL1Seja+b/qYlu49E5
	 o88TwfyhRDLGtrsvZ6Qdk4NFelO4bt3c342xwKM+ERF8vhCw22Gp6pnLeniUHV3VJ7
	 i81TSYh8TA7yVah5HmDCfKJtyyfQWNqXIbsDyrlmf/QryLgup2phj5+H0GUOX0/dpq
	 Gjc97eQ8dNmyq2NTnV9fQRZYKEWQlySr2mkIVWwnQVMFW9o375plwBGx/dGHd0ZD4Q
	 35QqYvIu9oKaQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1069D83EF6;
	Wed, 10 Jul 2024 20:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C853E1BF573
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B59384151B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1MJr7NfUTk-A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 20:40:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3177C414F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3177C414F4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3177C414F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:40:48 +0000 (UTC)
X-CSE-ConnectionGUID: EzBZDbsmR8+6u7iTVtlUew==
X-CSE-MsgGUID: A0KPsT+QTkOsOZRSNewhbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="29153254"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="29153254"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 13:40:48 -0700
X-CSE-ConnectionGUID: +1PRzgGiS1+iP4evm+OF8Q==
X-CSE-MsgGUID: chLvjC0nTLOzwbu/TXhjdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="48301139"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.184])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 13:40:43 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Jul 2024 14:40:06 -0600
Message-ID: <20240710204015.124233-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240710204015.124233-1-ahmed.zaki@intel.com>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720644049; x=1752180049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cqe4O5ikewD69XxUIerEqM8kSs+5NKufVcGxM2WB/Bw=;
 b=MvLX3LHXs0/BdsGXwxSzo8fLN5Hbq4oSiGGJCcQnATiEhbTnltlmLW3e
 SkoVZxDP6uILT+2QxCDxFrsCakrMzCLQXLfDUbbGW4w4yX2y4tzyd+KjS
 rStT7ncXDE2n9A5Q1Q40rbgnKEjCucPV+WTTo8ADmTDOIwX5Zs7jJQCdS
 sCg190O5SVQ0P+gt95rPRUlDPU93zQukQgWkfemUFECXuzu75SABtw4rI
 j7roIGjfe0n+xv5V9+lwrA6w3+J3z6gemFwIjNr6ztZiiH9d2hnVeF3fV
 +Loadgad4ZRVyooilOJ7iChHiakEZF9ViXCLawcMLnLyL3UOA3yn7y3Mm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MvLX3LHX
Subject: [Intel-wired-lan] [PATCH iwl-next v3 04/13] ice: add parser
 internal helper functions
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 horms@kernel.org, Junfeng Guo <junfeng.guo@intel.com>
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
 drivers/net/ethernet/intel/ice/ice_parser.c | 208 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h |  52 +++--
 2 files changed, 245 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index d6df02afcbb9..e7f6deb8c2da 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -964,6 +964,109 @@ static struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
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
+		!memcmp(&item->key.val, &key->val, sizeof(item->key.val)));
+}
+
+/**
+ * ice_pg_cam_match - search parse graph cam table by key
+ * @table: parse graph cam table to search
+ * @size: cam table size
+ * @key: search key
+ *
+ * Return: a pointer to the matching PG CAM item or NULL.
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
+ *
+ * Return: a pointer to the matching PG No Match CAM item or NULL.
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
+ * Return: true if all bits match, false otherwise.
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
@@ -1268,6 +1371,31 @@ static struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw)
 					ice_parse_lbl_item, true);
 }
 
+/**
+ * ice_bst_tcam_match - match a pattern on the boost tcam table
+ * @tcam_table: boost tcam table to search
+ * @pat: pattern to match
+ *
+ * Return: a pointer to the matching Boost TCAM item or NULL.
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
@@ -1322,6 +1450,30 @@ struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw)
 					ice_parse_ptype_mk_tcam_item, true);
 }
 
+/**
+ * ice_ptype_mk_tcam_match - match a pattern on a ptype marker tcam table
+ * @table: ptype marker tcam table to search
+ * @pat: pattern to match
+ * @len: length of the pattern
+ *
+ * Return: a pointer to the matching Marker PType item or NULL.
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
@@ -1517,6 +1669,31 @@ static struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw)
 					ice_flg_rd_parse_item, false);
 }
 
+/**
+ * ice_flg_redirect - redirect a parser flag to packet flag
+ * @table: flag redirect table
+ * @psr_flg: parser flag to redirect
+ *
+ * Return: flag or 0 if @psr_flag = 0.
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
@@ -1750,6 +1927,37 @@ static struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw)
 	return ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_RSS);
 }
 
+#define ICE_XLT_KB_MASK		GENMASK_ULL(5, 0)
+
+/**
+ * ice_xlt_kb_flag_get - aggregate 64 bits packet flag into 16 bits xlt flag
+ * @kb: xlt key build
+ * @pkt_flag: 64 bits packet flag
+ *
+ * Return: XLT flag or 0 if @pkt_flag = 0.
+ */
+u16 ice_xlt_kb_flag_get(struct ice_xlt_kb *kb, u64 pkt_flag)
+{
+	struct ice_xlt_kb_entry *entry = &kb->entries[0];
+	u16 flag = 0;
+	int i;
+
+	/* check flag 15 */
+	if (kb->flag15 & pkt_flag)
+		flag = BIT(ICE_XLT_KB_FLAG0_14_CNT);
+
+	/* check flag 0 - 14 */
+	for (i = 0; i < ICE_XLT_KB_FLAG0_14_CNT; i++) {
+		/* only check first entry */
+		u16 idx = entry->flg0_14_sel[i] & ICE_XLT_KB_MASK;
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
index 26468b16202c..8211927ef7c4 100644
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
+		u32 next_proto;	/* next Protocol value (must be last) */
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

