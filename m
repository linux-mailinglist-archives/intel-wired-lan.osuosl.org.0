Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCB0721DAB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:49:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 968784188F;
	Mon,  5 Jun 2023 05:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 968784188F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944148;
	bh=ivYuUqits4LetqQ5nfTbkqMLkpeEjR+mXQMx/mXcFTw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QQCKbVLjTAOc0IdUBXM+fHwzdyOVhYpbBmNXcHgcPSPwvFfg3ZwWC9qxhNH1viUd2
	 6SK2eNVToQXGOXCEx2+1Zf14WKfQi9au+0h1NtuHDEDnLFoZlIwNNgFdoRhjYuo+Xn
	 KcKrw98XCIC4X3f8cGRGePtUYI6uL90hkR21eUl24hKRusIY95ZIsH5Ykqwvy1J3i4
	 G2Rlse2i1CUl8jnTVYwMPBHP7cQuOCLy7SLu/PRr4ksTl+Y2FGaVbNynItvVhPQbkB
	 ZZVDE5Vs7iQcvZrC0WiNdb75TQzNQNF8pdD+rxZ96q8ri3s2s2wEVE7eNJQBHWr7kE
	 e+QvC/8JJvw8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iAVp4cEdyFLR; Mon,  5 Jun 2023 05:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C946B417F7;
	Mon,  5 Jun 2023 05:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C946B417F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66C631BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CFEE403A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CFEE403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UU6sILcxoMTk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BC3D40114
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1BC3D40114
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831885"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831885"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581517"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581517"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:13 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:37 +0800
Message-Id: <20230605054641.2865142-12-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944095; x=1717480095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=47I+dYrxZcn1sLoB/uFdF8eb8/S3Qp9Zx9fHUes31IA=;
 b=hQWzsAZhHhGiqp1DyPjftS486MR6eStQcu1NusDo0hxMlaK3oMiVLtFs
 ++oGV6plBTz059HxOM/dedywqjpboSX0E1nXQYUcO2Tegl0XAD0vihv7L
 f6fyrU8XUuhWmqzBiUOtcspygrWQcHzF4iO8rRf6S9ixlJDQjtXO1wTfv
 hXtAWRvp8petEopQt9+fm8APbcqTOmUCIeSsJ7wuI5Ff6MfUT9K3INDYF
 qMsJe7Th70xzSu6g0K26N13m/uR4yPdRtJr/RyeuGgZsvQZMha43XztfJ
 aA5iYUWBMCJNoD1odjRsUJOG4rg/eb+eL0atcvl3qW67wZgr9RMEWBg0g
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hQWzsAZh
Subject: [Intel-wired-lan] [PATCH iwl-next v2 11/15] ice: add internal help
 functions
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

Add below internal helper function:

- [ice_bst_tcam_match]:
	to perform ternary match on boost TCAM.

- [ice_pg_cam_match]:
	to perform parse graph key match in cam table.

- [ice_pg_nm_cam_match]:
	to perform parse graph key no match in cam table.

- [ice_ptype_mk_tcam_match]:
	to perform ptype markers match in tcam table.

- [ice_flg_redirect]:
	to redirect parser flags to packet flags.

- [ice_xlt_kb_flg_get]:
	to aggregate 64 bit packet flag into 16 bit key builder flags.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 22 ++++++
 drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  3 +
 drivers/net/ethernet/intel/ice/ice_flg_rd.c   | 23 ++++++
 drivers/net/ethernet/intel/ice/ice_flg_rd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_parser.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_pg_cam.c   | 76 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_pg_cam.h   |  6 ++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.c | 22 ++++++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.h |  3 +
 drivers/net/ethernet/intel/ice/ice_tmatch.h   | 43 +++++++++++
 drivers/net/ethernet/intel/ice/ice_xlt_kb.c   | 27 +++++++
 drivers/net/ethernet/intel/ice/ice_xlt_kb.h   |  1 +
 12 files changed, 228 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tmatch.h

diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
index 24e793580637..bd3ebc8a5f5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
@@ -245,3 +245,25 @@ struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw)
 					ice_parser_sect_item_get,
 					_parse_lbl_item, true);
 }
+
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
+		if (ice_ternary_match(item->key, item->key_inv, pat, 20))
+			return item;
+	}
+
+	return NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
index 9d78a140bc02..7b69f3b88da5 100644
--- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
@@ -24,4 +24,7 @@ void ice_bst_tcam_dump(struct ice_hw *hw, struct ice_bst_tcam_item *item);
 struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw);
 
 struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw);
+
+struct ice_bst_tcam_item *
+ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat);
 #endif /*_ICE_BST_TCAM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_flg_rd.c b/drivers/net/ethernet/intel/ice/ice_flg_rd.c
index 827b659e2332..e5afd026e8a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_flg_rd.c
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.c
@@ -50,3 +50,26 @@ struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw)
 					ice_parser_sect_item_get,
 					_flg_rd_parse_item, false);
 }
+
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
+	for (i = 0; i < 64; i++) {
+		struct ice_flg_rd_item *item = &table[i];
+
+		if (!item->expose)
+			continue;
+
+		if (psr_flg & (1ul << item->intr_flg_id))
+			flg |= (1ul << i);
+	}
+
+	return flg;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_flg_rd.h b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
index b53e35a46796..0843f42c2a6a 100644
--- a/drivers/net/ethernet/intel/ice/ice_flg_rd.h
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
@@ -12,4 +12,5 @@ struct ice_flg_rd_item {
 
 void ice_flg_rd_dump(struct ice_hw *hw, struct ice_flg_rd_item *item);
 struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw);
+u64 ice_flg_redirect(struct ice_flg_rd_item *table, u64 psr_flg);
 #endif /* _ICE_FLG_RD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 189fe254bfb4..d4de0796a292 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -14,6 +14,7 @@
 #include "ice_flg_rd.h"
 #include "ice_xlt_kb.h"
 #include "ice_parser_rt.h"
+#include "ice_tmatch.h"
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.c b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
index 1c9a9e906f3e..723783307973 100644
--- a/drivers/net/ethernet/intel/ice/ice_pg_cam.c
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
@@ -298,3 +298,79 @@ struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
 					ice_parser_sect_item_get,
 					_pg_nm_sp_cam_parse_item, false);
 }
+
+static bool _pg_cam_match(struct ice_pg_cam_item *item,
+			  struct ice_pg_cam_key *key)
+{
+	if (!item->key.valid ||
+	    item->key.node_id != key->node_id ||
+	    item->key.flag0 != key->flag0 ||
+	    item->key.flag1 != key->flag1 ||
+	    item->key.flag2 != key->flag2 ||
+	    item->key.flag3 != key->flag3 ||
+	    item->key.boost_idx != key->boost_idx ||
+	    item->key.alu_reg != key->alu_reg ||
+	    item->key.next_proto != key->next_proto)
+		return false;
+
+	return true;
+}
+
+static bool _pg_nm_cam_match(struct ice_pg_nm_cam_item *item,
+			     struct ice_pg_cam_key *key)
+{
+	if (!item->key.valid ||
+	    item->key.node_id != key->node_id ||
+	    item->key.flag0 != key->flag0 ||
+	    item->key.flag1 != key->flag1 ||
+	    item->key.flag2 != key->flag2 ||
+	    item->key.flag3 != key->flag3 ||
+	    item->key.boost_idx != key->boost_idx ||
+	    item->key.alu_reg != key->alu_reg)
+		return false;
+
+	return true;
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
+		if (_pg_cam_match(item, key))
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
+		if (_pg_nm_cam_match(item, key))
+			return item;
+	}
+
+	return NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.h b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
index 1d794fa519d6..86a4434605eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_pg_cam.h
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
@@ -64,4 +64,10 @@ struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw *hw);
 
 struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct ice_hw *hw);
 struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw);
+
+struct ice_pg_cam_item *ice_pg_cam_match(struct ice_pg_cam_item *table,
+					 int size, struct ice_pg_cam_key *key);
+struct ice_pg_nm_cam_item *
+ice_pg_nm_cam_match(struct ice_pg_nm_cam_item *table, int size,
+		    struct ice_pg_cam_key *key);
 #endif /* _ICE_PG_CAM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptype_mk.c b/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
index 36877f47a074..be6ebfd03386 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
@@ -51,3 +51,25 @@ struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw)
 					ice_parser_sect_item_get,
 					_parse_ptype_mk_tcam_item, true);
 }
+
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
diff --git a/drivers/net/ethernet/intel/ice/ice_ptype_mk.h b/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
index b0a64a602641..8254fbcd2d9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
@@ -14,4 +14,7 @@ struct ice_ptype_mk_tcam_item {
 void ice_ptype_mk_tcam_dump(struct ice_hw *hw,
 			    struct ice_ptype_mk_tcam_item *item);
 struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw);
+struct ice_ptype_mk_tcam_item *
+ice_ptype_mk_tcam_match(struct ice_ptype_mk_tcam_item *table,
+			u8 *pat, int len);
 #endif /* _ICE_PTYPE_MK_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_tmatch.h b/drivers/net/ethernet/intel/ice/ice_tmatch.h
new file mode 100644
index 000000000000..872d26fb25f7
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tmatch.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
+
+#ifndef _ICE_TMATCH_H_
+#define _ICE_TMATCH_H_
+
+static inline
+bool ice_ternary_match_byte(u8 key, u8 key_inv, u8 pat)
+{
+	u8 k1, k2, v;
+	int i;
+
+	for (i = 0; i < 8; i++) {
+		k1 = (u8)(key & (1 << i));
+		k2 = (u8)(key_inv & (1 << i));
+		v = (u8)(pat & (1 << i));
+
+		if (k1 != 0 && k2 != 0)
+			continue;
+		if (k1 == 0 && k2 == 0)
+			return false;
+
+		if (k1 == v)
+			return false;
+	}
+
+	return true;
+}
+
+static inline
+bool ice_ternary_match(const u8 *key, const u8 *key_inv,
+		       const u8 *pat, int len)
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
+#endif /* _ICE_TMATCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_xlt_kb.c b/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
index 146602dd6b57..4c686a553869 100644
--- a/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
+++ b/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
@@ -189,3 +189,30 @@ struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw)
 {
 	return _xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_RSS);
 }
+
+/**
+ * ice_xlt_kb_flag_get - aggregate 64 bits packet flag into 16 bits xlt flag
+ * @kb: xlt key build
+ * @pkt_flag: 64 bits packet flag
+ */
+u16 ice_xlt_kb_flag_get(struct ice_xlt_kb *kb, u64 pkt_flag)
+{
+	struct ice_xlt_kb_entry *entry = &kb->entries[0];
+	u16 flg = 0;
+	int i;
+
+	/* check flag 15 */
+	if (kb->flag15 & pkt_flag)
+		flg = (u16)(1u << 15);
+
+	/* check flag 0 - 14 */
+	for (i = 0; i < 15; i++) {
+		/* only check first entry */
+		u16 idx = (u16)(entry->flg0_14_sel[i] & 0x3f);
+
+		if (pkt_flag & (1ul << idx))
+			flg |=  (u16)(1u << i);
+	}
+
+	return flg;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_xlt_kb.h b/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
index f15c3d8f3695..97f7567c6a56 100644
--- a/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
+++ b/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
@@ -29,4 +29,5 @@ struct ice_xlt_kb *ice_xlt_kb_get_sw(struct ice_hw *hw);
 struct ice_xlt_kb *ice_xlt_kb_get_acl(struct ice_hw *hw);
 struct ice_xlt_kb *ice_xlt_kb_get_fd(struct ice_hw *hw);
 struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw);
+u16 ice_xlt_kb_flag_get(struct ice_xlt_kb *kb, u64 pkt_flag);
 #endif /* _ICE_XLT_KB_H */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
