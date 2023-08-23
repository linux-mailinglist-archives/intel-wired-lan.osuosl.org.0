Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86985785439
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 11:33:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14DF0612A5;
	Wed, 23 Aug 2023 09:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14DF0612A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692783191;
	bh=WHn5XxzpUtQcXCYK65z0fN7fLyFdn1HjA5EF5UfJOPU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3Q4LscELmpweSfE9S+4Mi1VNkIAv7zjZjbtbqp26+YpYD30tZ2JtFPh3zDAXVuqpC
	 sgr5grQxK3hNrVJrMQFbocteruJ+pdGO86OB/DcwEc+yJwvLCrgMzyMp96HB2jJYsk
	 QaahFGGzbH2Boz0rryyAEHs30IFKw/jQmhQ5HEhyk0mpbzW/uK4CCSmki+CJAnojxh
	 v1eI6o6ZZfg784G6ZWxBVS3hRl/iU0dkvB6pncSPL7MvkZ472sRKlIwBzPxo4ZGu7d
	 aUGjQ5w8jD6LSRyDuStltWSSFQq7z1J3S4wfsgyGzsM6xRTCwcuoyU6PH43ZH6yqrl
	 MmGhbft09sxDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMSqedltF0bo; Wed, 23 Aug 2023 09:33:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC38A6128D;
	Wed, 23 Aug 2023 09:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC38A6128D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F3BC1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:32:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7950404F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:32:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7950404F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIAJYS3pRO7Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 09:32:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B60D7404D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 09:32:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B60D7404D3
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="359100587"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="359100587"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 02:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="713507611"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713507611"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2023 02:32:35 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Aug 2023 17:31:54 +0800
Message-Id: <20230823093158.782802-12-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823093158.782802-1-junfeng.guo@intel.com>
References: <20230821081438.2937934-1-junfeng.guo@intel.com>
 <20230823093158.782802-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692783158; x=1724319158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wFRjToU4KwshnEhmMyF5ttIlSk6nbOLYgak9F1zaUq4=;
 b=RCSpCvmhZ+xQEVJz/+hLonk0iLvgnOvA5ShsKNwvbBSV86ja8ulwAa90
 Trb9XXyhE8FVTGweZsS76sH0iaLEWdj9HWOFZDCBnY2CR5p5P3PAkJxW4
 ifiyH/TTEnRBxxRxYIJObhY2BAihXOStkHscgxAI04sEzsYfZtn2wN2hn
 yjgr7ObLPPtA0R/53hUYDDOmR2tVq23iJmjJnZ22r/n1W6JKmO3WkZTVD
 OHbfQ6KVOUo3KjZrJCRjL9Ka0DaVFao4dgrKoUxYs5ET9y+fiW81NboOX
 KzT5432A04BC+FlVZgzMZtZFyncnk8EtTQ+wAiGCOB9MH64skBipVVMnx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RCSpCvmh
Subject: [Intel-wired-lan] [PATCH iwl-next v7 11/15] ice: add internal help
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, qi.z.zhang@intel.com,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org
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
 drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 23 ++++++
 drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  3 +
 drivers/net/ethernet/intel/ice/ice_flg_rd.c   | 23 ++++++
 drivers/net/ethernet/intel/ice/ice_flg_rd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_parser.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_pg_cam.c   | 76 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_pg_cam.h   |  6 ++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.c | 22 ++++++
 drivers/net/ethernet/intel/ice/ice_ptype_mk.h |  3 +
 drivers/net/ethernet/intel/ice/ice_tmatch.h   | 40 ++++++++++
 drivers/net/ethernet/intel/ice/ice_xlt_kb.c   | 27 +++++++
 drivers/net/ethernet/intel/ice/ice_xlt_kb.h   |  1 +
 12 files changed, 226 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_tmatch.h

diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
index 9f232db164d9..f31023da0a41 100644
--- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
@@ -271,3 +271,26 @@ struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw)
 					ice_parser_sect_item_get,
 					_ice_parse_lbl_item, true);
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
+		if (ice_ternary_match(item->key, item->key_inv, pat,
+				      ICE_BST_TCAM_KEY_SIZE))
+			return item;
+	}
+
+	return NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
index b1b1dc224d70..960c8ff09171 100644
--- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
@@ -42,4 +42,7 @@ void ice_bst_tcam_dump(struct ice_hw *hw, struct ice_bst_tcam_item *item);
 struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw);
 
 struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw);
+
+struct ice_bst_tcam_item *
+ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat);
 #endif /*_ICE_BST_TCAM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_flg_rd.c b/drivers/net/ethernet/intel/ice/ice_flg_rd.c
index 9d5d66d0c773..057bcd68125f 100644
--- a/drivers/net/ethernet/intel/ice/ice_flg_rd.c
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.c
@@ -48,3 +48,26 @@ struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw)
 					ice_parser_sect_item_get,
 					_ice_flg_rd_parse_item, false);
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
diff --git a/drivers/net/ethernet/intel/ice/ice_flg_rd.h b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
index b3b4fd7a9002..9215c8e0cdfd 100644
--- a/drivers/net/ethernet/intel/ice/ice_flg_rd.h
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
@@ -20,4 +20,5 @@ struct ice_flg_rd_item {
 
 void ice_flg_rd_dump(struct ice_hw *hw, struct ice_flg_rd_item *item);
 struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw);
+u64 ice_flg_redirect(struct ice_flg_rd_item *table, u64 psr_flg);
 #endif /* _ICE_FLG_RD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 5f98f3031294..bfcef4f597bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -14,6 +14,7 @@
 #include "ice_flg_rd.h"
 #include "ice_xlt_kb.h"
 #include "ice_parser_rt.h"
+#include "ice_tmatch.h"
 
 #define ICE_SEC_DATA_OFFSET				4
 #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.c b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
index 70b0b0b93a8d..bd17e85834ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_pg_cam.c
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
@@ -319,3 +319,79 @@ struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
 					ice_parser_sect_item_get,
 					_ice_pg_nm_sp_cam_parse_item, false);
 }
+
+static bool _ice_pg_cam_match(struct ice_pg_cam_item *item,
+			      struct ice_pg_cam_key *key)
+{
+	if (!item->key.valid ||
+	    item->key.node_id	!= key->node_id ||
+	    item->key.flag0	!= key->flag0 ||
+	    item->key.flag1	!= key->flag1 ||
+	    item->key.flag2	!= key->flag2 ||
+	    item->key.flag3	!= key->flag3 ||
+	    item->key.boost_idx	!= key->boost_idx ||
+	    item->key.alu_reg	!= key->alu_reg ||
+	    item->key.next_proto != key->next_proto)
+		return false;
+
+	return true;
+}
+
+static bool _ice_pg_nm_cam_match(struct ice_pg_nm_cam_item *item,
+				 struct ice_pg_cam_key *key)
+{
+	if (!item->key.valid ||
+	    item->key.node_id	!= key->node_id ||
+	    item->key.flag0	!= key->flag0 ||
+	    item->key.flag1	!= key->flag1 ||
+	    item->key.flag2	!= key->flag2 ||
+	    item->key.flag3	!= key->flag3 ||
+	    item->key.boost_idx	!= key->boost_idx ||
+	    item->key.alu_reg	!= key->alu_reg)
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
+		if (_ice_pg_cam_match(item, key))
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
+		if (_ice_pg_nm_cam_match(item, key))
+			return item;
+	}
+
+	return NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.h b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
index 0d5c84d380d3..301165b19b6a 100644
--- a/drivers/net/ethernet/intel/ice/ice_pg_cam.h
+++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.h
@@ -133,4 +133,10 @@ struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw *hw);
 
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
index ee7b09618d54..fbd46ae857a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.c
@@ -49,3 +49,25 @@ struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw)
 					ice_parser_sect_item_get,
 					_ice_parse_ptype_mk_tcam_item, true);
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
index 4a071d823bea..c8061f55cccc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptype_mk.h
@@ -17,4 +17,7 @@ struct ice_ptype_mk_tcam_item {
 void ice_ptype_mk_tcam_dump(struct ice_hw *hw,
 			    struct ice_ptype_mk_tcam_item *item);
 struct ice_ptype_mk_tcam_item *ice_ptype_mk_tcam_table_get(struct ice_hw *hw);
+struct ice_ptype_mk_tcam_item *
+ice_ptype_mk_tcam_match(struct ice_ptype_mk_tcam_item *table,
+			u8 *pat, int len);
 #endif /* _ICE_PTYPE_MK_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_tmatch.h b/drivers/net/ethernet/intel/ice/ice_tmatch.h
new file mode 100644
index 000000000000..e7adcf22ae3f
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tmatch.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2023 Intel Corporation */
+
+#ifndef _ICE_TMATCH_H_
+#define _ICE_TMATCH_H_
+
+static inline bool ice_ternary_match_byte(u8 key, u8 key_inv, u8 pat)
+{
+	u8 k1, k2, vv;
+	int i;
+
+	for (i = 0; i < BITS_PER_BYTE; i++) {
+		k1 = (u8)(key & BIT(i));
+		k2 = (u8)(key_inv & BIT(i));
+		vv = (u8)(pat & BIT(i));
+
+		if (k1 != 0 && k2 != 0)
+			continue;
+		if (k1 == 0 && k2 == 0)
+			return false;
+
+		if (k1 == vv)
+			return false;
+	}
+
+	return true;
+}
+
+static inline bool ice_ternary_match(const u8 *key, const u8 *key_inv,
+				     const u8 *pat, int len)
+{
+	int i;
+
+	for (i = 0; i < len; i++)
+		if (!ice_ternary_match_byte(key[i], key_inv[i], pat[i]))
+			return false;
+
+	return true;
+}
+#endif /* _ICE_TMATCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_xlt_kb.c b/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
index 4fca88fb7d77..1cb00fabbaf4 100644
--- a/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
+++ b/drivers/net/ethernet/intel/ice/ice_xlt_kb.c
@@ -233,3 +233,30 @@ struct ice_xlt_kb *ice_xlt_kb_get_rss(struct ice_hw *hw)
 {
 	return _ice_xlt_kb_get(hw, ICE_SID_XLT_KEY_BUILDER_RSS);
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
+		flg = (u16)BIT(ICE_XLT_KB_FLAG0_14_CNT);
+
+	/* check flag 0 - 14 */
+	for (i = 0; i < ICE_XLT_KB_FLAG0_14_CNT; i++) {
+		/* only check first entry */
+		u16 idx = (u16)(entry->flg0_14_sel[i] & ICE_XLT_KB_FLAG_M);
+
+		if (pkt_flag & BIT(idx))
+			flg |=  (u16)BIT(i);
+	}
+
+	return flg;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_xlt_kb.h b/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
index 020f96bfdbe8..dbd80fe8b0b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
+++ b/drivers/net/ethernet/intel/ice/ice_xlt_kb.h
@@ -76,4 +76,5 @@ struct ice_xlt_kb *ice_xlt_kb_get_sw(struct ice_hw *hw);
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
