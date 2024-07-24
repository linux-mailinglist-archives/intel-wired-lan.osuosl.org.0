Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4875C93B8A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 23:37:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1A5D80B97;
	Wed, 24 Jul 2024 21:37:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GBPQwlk4aOWj; Wed, 24 Jul 2024 21:37:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8588081948
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721857050;
	bh=l8UZKcVcEo+Eb42BKdt0Lc/keWtjJWHPO65mZB+cHl4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cjsAKhTPmPd7ThHYawt4kHfXgDrmP/tXDOdrOt9eS5LNEbd4ZDx4F59gCfiiN+HR/
	 AqCTRVq9Pn91JSqhTyqG6j97slI9ETsHUI7muHGzn9H1Co2gPvM5qoJRYmgJ6kw+oD
	 cq4t+wkOm6RNoart2tvHxauIW6NZTdPamXMcgjQY+zWNFr46vWxNJMK/YYy5TnCcSO
	 gsJwsS0j6DmatWYEeqhmG0TdOFFCG8NjaL3H8Cyb0BCB9GdiAQEb01+UI6PFCtHADk
	 2YQPWJ3XWDwu8FH2F1FOuS2xjOwqbx3uwTmxeZTfrCi+qHNIvqgPxNSsjcvgqshr4Y
	 mX6sGTGIv4WQQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8588081948;
	Wed, 24 Jul 2024 21:37:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E19521BF277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0BF640E3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:37:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Czf-V7CMM4LR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 21:37:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B46DA401F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B46DA401F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B46DA401F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:37:26 +0000 (UTC)
X-CSE-ConnectionGUID: BZgKu+YGRGSp/vttPqSt/w==
X-CSE-MsgGUID: uPPqEMbjQM64IhBq9iAgWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19704185"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19704185"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:37:26 -0700
X-CSE-ConnectionGUID: 1XX5rJe0R2uRV0G1LLhaAA==
X-CSE-MsgGUID: zCRzKz/zTxmbbmuc07k8/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52579567"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.206])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:37:19 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 15:36:15 -0600
Message-ID: <20240724213623.324532-7-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240724213623.324532-1-ahmed.zaki@intel.com>
References: <20240724213623.324532-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721857047; x=1753393047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f30SRQ/698QKXLF3IcCTA5uc5CHIcJjwjtKrPww0hdY=;
 b=DzkQup23oe5M7XuhpjcReMWEJNlITVmDcdZkm/g1ySBGYpQV4RqtiOJM
 0gsulaTy9daRAEjvJ+yyuYV52Hv1kcFO3vvA+6u9+CJEYYo2mumtkUk1L
 oQM9Kxs9HxSnRbPjikjnfboG+mw2pHx1GhLuxoU80zmdnop9KOUHfy/TA
 wTAjcBLXo8Rmi0416U+AvI473h9/W7pTVv19X0dNfHKSLm0RdJvSxKoQg
 cigihqF8oeWV3Mmnf0zXqRoNMUyGKO1UxIxtDevNOQh7HfRh4l5dF27ll
 Ut9mArcbaAjAOiNJv9Ppy2DKgSTxzZzZwXVimwP9AP4vXpbXLi6wEJShA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DzkQup23
Subject: [Intel-wired-lan] [PATCH iwl-next v4 06/13] ice: support turning
 on/off the parser's double vlan mode
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
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com,
 Junfeng Guo <junfeng.guo@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Add API ice_parser_dvm_set() to support turning on/off the parser's double
vlan mode.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 78 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_parser.h | 18 +++++
 2 files changed, 93 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index e90f2e4940de..650a94292cd0 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -598,6 +598,32 @@ static struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
 				       ice_metainit_parse_item, false);
 }
 
+/**
+ * ice_bst_tcam_search - find a TCAM item with specific type
+ * @tcam_table: the TCAM table
+ * @lbl_table: the lbl table to search
+ * @type: the type we need to match against
+ * @start: start searching from this index
+ *
+ * Return: a pointer to the matching BOOST TCAM item or NULL.
+ */
+struct ice_bst_tcam_item *
+ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
+		    struct ice_lbl_item *lbl_table,
+		    enum ice_lbl_type type, u16 *start)
+{
+	u16 i = *start;
+
+	for (; i < ICE_BST_TCAM_TABLE_SIZE; i++) {
+		if (lbl_table[i].type == type) {
+			*start = i;
+			return &tcam_table[lbl_table[i].idx];
+		}
+	}
+
+	return NULL;
+}
+
 /*** ICE_SID_RXPARSER_CAM, ICE_SID_RXPARSER_PG_SPILL,
  *    ICE_SID_RXPARSER_NOMATCH_CAM and ICE_SID_RXPARSER_NOMATCH_CAM
  *    sections ***/
@@ -1152,6 +1178,7 @@ static void ice_lbl_dump(struct ice_hw *hw, struct ice_lbl_item *item)
 	struct device *dev = ice_hw_to_dev(hw);
 
 	dev_info(dev, "index = %u\n", item->idx);
+	dev_info(dev, "type = %u\n", item->type);
 	dev_info(dev, "label = %s\n", item->label);
 }
 
@@ -1341,12 +1368,21 @@ static struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw)
 }
 
 static void ice_parse_lbl_item(struct ice_hw *hw, u16 idx, void *item,
-			       void *data, int size)
+			       void *data, int __maybe_unused size)
 {
-	memcpy(item, data, size);
+	struct ice_lbl_item *lbl_item = item;
+	struct ice_lbl_item *lbl_data = data;
+
+	lbl_item->idx = lbl_data->idx;
+	memcpy(lbl_item->label, lbl_data->label, sizeof(lbl_item->label));
+
+	if (strstarts(lbl_item->label, ICE_LBL_BST_DVM))
+		lbl_item->type = ICE_LBL_BST_TYPE_DVM;
+	else if (strstarts(lbl_item->label, ICE_LBL_BST_SVM))
+		lbl_item->type = ICE_LBL_BST_TYPE_SVM;
 
 	if (hw->debug_mask & ICE_DBG_PARSER)
-		ice_lbl_dump(hw, (struct ice_lbl_item *)item);
+		ice_lbl_dump(hw, lbl_item);
 }
 
 /**
@@ -2133,3 +2169,39 @@ void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt)
 	dev_info(dev, "flags_fd = 0x%04x\n", rslt->flags_fd);
 	dev_info(dev, "flags_rss = 0x%04x\n", rslt->flags_rss);
 }
+
+#define ICE_BT_VLD_KEY	0xFF
+#define ICE_BT_INV_KEY	0xFE
+
+static void ice_bst_dvm_set(struct ice_parser *psr, enum ice_lbl_type type,
+			    bool on)
+{
+	u16 i = 0;
+
+	while (true) {
+		struct ice_bst_tcam_item *item;
+		u8 key;
+
+		item = ice_bst_tcam_search(psr->bst_tcam_table,
+					   psr->bst_lbl_table,
+					   type, &i);
+		if (!item)
+			break;
+
+		key = on ? ICE_BT_VLD_KEY : ICE_BT_INV_KEY;
+		item->key[ICE_BT_VM_OFF] = key;
+		item->key_inv[ICE_BT_VM_OFF] = key;
+		i++;
+	}
+}
+
+/**
+ * ice_parser_dvm_set - configure double vlan mode for parser
+ * @psr: pointer to a parser instance
+ * @on: true to turn on; false to turn off
+ */
+void ice_parser_dvm_set(struct ice_parser *psr, bool on)
+{
+	ice_bst_dvm_set(psr, ICE_LBL_BST_TYPE_DVM, on);
+	ice_bst_dvm_set(psr, ICE_LBL_BST_TYPE_SVM, !on);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index ef08ccbe4874..92319c60b388 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -274,13 +274,29 @@ struct ice_bst_tcam_item {
 };
 
 #define ICE_LBL_LEN			64
+#define ICE_LBL_BST_DVM			"BOOST_MAC_VLAN_DVM"
+#define ICE_LBL_BST_SVM			"BOOST_MAC_VLAN_SVM"
+
+enum ice_lbl_type {
+	ICE_LBL_BST_TYPE_UNKNOWN,
+	ICE_LBL_BST_TYPE_DVM,
+	ICE_LBL_BST_TYPE_SVM,
+};
+
 struct ice_lbl_item {
 	u16 idx;
 	char label[ICE_LBL_LEN];
+
+	/* must be at the end, not part of the DDP section */
+	enum ice_lbl_type type;
 };
 
 struct ice_bst_tcam_item *
 ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat);
+struct ice_bst_tcam_item *
+ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
+		    struct ice_lbl_item *lbl_table,
+		    enum ice_lbl_type type, u16 *start);
 
 /*** ICE_SID_RXPARSER_MARKER_PTYPE section ***/
 #define ICE_PTYPE_MK_TCAM_TABLE_SIZE	1024
@@ -429,6 +445,7 @@ struct ice_parser_proto_off {
 
 #define ICE_PARSER_PROTO_OFF_PAIR_SIZE	16
 #define ICE_PARSER_FLAG_PSR_SIZE	8
+#define ICE_BT_VM_OFF			0
 
 struct ice_parser_result {
 	u16 ptype;	/* 16 bits hardware PTYPE */
@@ -477,6 +494,7 @@ struct ice_parser {
 
 struct ice_parser *ice_parser_create(struct ice_hw *hw);
 void ice_parser_destroy(struct ice_parser *psr);
+void ice_parser_dvm_set(struct ice_parser *psr, bool on);
 int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
 		   int pkt_len, struct ice_parser_result *rslt);
 void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
-- 
2.43.0

