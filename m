Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DB077F38C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 11:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9200583CD8;
	Thu, 17 Aug 2023 09:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9200583CD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692264977;
	bh=/2SRwpJj0wAm8EtBPYuBR41Vzxjr6quGzAzWZYVlhi8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BeVDDdvGqXdDRGj5ZHHvd2Y9lbjaUtapXn24R+3OpeWnPj2EUC8mTFyHzuGOKZTK/
	 Ubyyd4/zEs3Xwt+8R9JHEJ8MJh3bxiBj09j1vJIWFfIKAHEZp7sOlW6UKU0Q9NlrmU
	 NhRQmW/k9qHDyzxLvov6Ohibz/KI+WgFfDyV97OIeWJbnDZYG1wFFKUj17nohLrZ3g
	 c/JqQXrZ7FN5mTwYKQOTU4swnaNHOW0dekTs0t+V5ieLQLxXSvLO9pIxiADucky0n3
	 oYtEVsjhF4Pk0zREYS5NXmTTHv0CT4nQkoTFfN0TK2CcoRBxLT/PxE3YIUXWCVfJoI
	 1PvDchCDE0r+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hl_HmlzbdGee; Thu, 17 Aug 2023 09:36:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D228F83CAB;
	Thu, 17 Aug 2023 09:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D228F83CAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34C221BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E0084181D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E0084181D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvnWHXq0njrR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 09:35:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2FA441815
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2FA441815
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="459120192"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="459120192"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 02:35:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769557088"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="769557088"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2023 02:35:42 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 17:34:38 +0800
Message-Id: <20230817093442.2576997-12-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817093442.2576997-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230817093442.2576997-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692264944; x=1723800944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yqCwMgOREniyo6YySZM6l8VZp3ue+XeaTkVd7ab7x1I=;
 b=aZ7vpmujCIYvhEtYam8/Yl9CTT+4Ri9xOwrex3HXAM1M55rNgSm8QUiE
 tErxQ+Jc4f5N39XsOrYGj9wWOckOLl26BSyi7LmUPkmqWv/rv3YTkZVV+
 AHgtG9bs3ZseXAc4xf6mAN89py6ljoT2stwQJZAhIlMHU/dRcvEQs9LlB
 UcuxwyMl/1CYhhr1v3t969KzG5FGQP4BtAKNfslcCSvdHyIQDgp9il7Pk
 eAnqrFvObkI2zOzrmwwhCHpFRlmiuTsjESwY/itzVes0LlFM4b2zxHXyk
 mI08Ur6rdhAgKg9r6qRwuNPnt8PN+4+a9wlQkWX+fAoP5lJj1FC/e2NFh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aZ7vpmuj
Subject: [Intel-wired-lan] [PATCH net-next v3 11/15] ice: add internal help
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
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
index 4314f690accc..035cdaa640d7 100644
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
index 1b6392c254bf..081734170789 100644
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
index 773b2f307e17..e883969f304f 100644
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
index 787b117fc27e..5d0b644bd379 100644
--- a/drivers/net/ethernet/intel/ice/ice_flg_rd.h
+++ b/drivers/net/ethernet/intel/ice/ice_flg_rd.h
@@ -20,4 +20,5 @@ struct ice_flg_rd_item {
 
 void ice_flg_rd_dump(struct ice_hw *hw, struct ice_flg_rd_item *item);
 struct ice_flg_rd_item *ice_flg_rd_table_get(struct ice_hw *hw);
+u64 ice_flg_redirect(struct ice_flg_rd_item *table, u64 psr_flg);
 #endif /* _ICE_FLG_RD_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index f74ff0c233cb..91c0c2e6ff44 100644
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
index aceb28dae3dc..d786eb137c2b 100644
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
index 47f8d8f01af4..a6047facd606 100644
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
index 48c0c09a3bfc..3674703b8fba 100644
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
index ddbf353c80dd..f8f0c40141ba 100644
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
index 000000000000..e0a1858e577f
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_tmatch.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2023 Intel Corporation */
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
index b9de8b1c9ec3..e67b6f003488 100644
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
index 027d4f06370f..0cbcc96ff551 100644
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
