Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6235B8D0A47
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 20:59:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11CC981300;
	Mon, 27 May 2024 18:59:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lhUBfwyxy1_W; Mon, 27 May 2024 18:59:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADBB88129E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716836349;
	bh=7cp69ly7LD3330p/GyL3o08mlMO0YBjtPAKkYKLzFME=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MWhtEonJ1ay2QKhpd9IqlX0542NhkEkIiG3Gw3C0mRv9YyaW6LUenzfqCQdDBs5za
	 EHJhoajGXEIM5FMS/9huBT1Yz34Wx71wm6gwxc8wYNRwD9j+j3/E9V31q5S0exSkg9
	 NPHyqtdKhOMYDpWMFdH/CQGk+2WS7JTMBCWrIl0gYMQw/Z4USN+267TBxivLpINaUu
	 Y4BW149SPC54T5Yf6/fX+N7VWT6+Vs3+YhB8gr4qd5JXHoMCIb6qY7gLPM7N+gEUMN
	 7AAYq7YLM5QXylWK16fVslZFKMeNfBsGUsH7wULget+l7EPjwCxvCE8rnwBj6oY/eQ
	 27CcKPKzzh/yQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADBB88129E;
	Mon, 27 May 2024 18:59:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59F041D1FFA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E8C880F60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id co2lc1IWUgUz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 18:58:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0294380BD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0294380BD9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0294380BD9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:53 +0000 (UTC)
X-CSE-ConnectionGUID: OaFc0mZ9T0mYQKFynfwAcg==
X-CSE-MsgGUID: FkZrJ66vS7ScbOEn2SPgoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353934"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="13353934"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:53 -0700
X-CSE-ConnectionGUID: WAcEm3HwR3uVPe0zrt7/MQ==
X-CSE-MsgGUID: bA+HWQvvSaSVE9cvo+4b8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="34910029"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.208])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:50 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 May 2024 12:58:03 -0600
Message-ID: <20240527185810.3077299-7-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240527185810.3077299-1-ahmed.zaki@intel.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716836334; x=1748372334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XHGl9wJHHyeG1eytyoEHjAH3NtQhN62Lvo1g5bU5eWg=;
 b=lyHH3ld9tw7BBwJ2kEBg+NzAixsLsJGd5ySxofBmR0eT2JYxxraHhPSM
 bVRhfRXzC8ZYN+ZTB4KjduDFLGrQgP1Ma7OEMlmIMxyXyGK16BIGUHnCi
 aD6xDPniBFNDdgLskgMlbzW2oWtp7ZzcLlMVxGsb0Ll9Fp8eF39OuU9RT
 2ufL/vTQqOzInLhQk4b3vrfIleeuiNVlIG4mVm5C4Rsk16ea/KEz7PvmW
 ToUx5ba/Lfm/234kbngKIwzQOCyQlSlHgPfM98DxDJ9zmmmLymoLe+gBj
 fGfPybRSwZY7cbeiepwz1CSVgY/Tz08zO2h+46Y1ELLtFufRBARNX4BlB
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lyHH3ld9
Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/13] ice: support turning
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
 jacob.e.keller@intel.com, Junfeng Guo <junfeng.guo@intel.com>
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
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 77 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_parser.h | 18 +++++
 2 files changed, 92 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index eacf332df0a7..c490bff94355 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -601,6 +601,31 @@ static struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
 					ice_metainit_parse_item, false);
 }
 
+/**
+ * ice_bst_tcam_search - find a TCAM item with specific type
+ * @tcam_table: the TCAM table
+ * @lbl_table: the lbl table to search
+ * @type: the type we need to match against
+ * @start: start searching from this index
+ *
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
@@ -1147,6 +1172,7 @@ static void ice_lbl_dump(struct ice_hw *hw, struct ice_lbl_item *item)
 	struct device *dev = ice_hw_to_dev(hw);
 
 	dev_info(dev, "index = %u\n", item->idx);
+	dev_info(dev, "type = %u\n", item->type);
 	dev_info(dev, "label = %s\n", item->label);
 }
 
@@ -1335,12 +1361,21 @@ static struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw)
 }
 
 static void ice_parse_lbl_item(struct ice_hw *hw, u16 idx, void *item,
-			       void *data, int size)
+			       void *data, int __maybe_unused size)
 {
-	memcpy(item, data, size);
+	struct ice_lbl_item *lbl_item = (struct ice_lbl_item *)item;
+	struct ice_lbl_item *lbl_data = (struct ice_lbl_item *)data;
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
@@ -2103,3 +2138,39 @@ void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt)
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
+		key = (on ? ICE_BT_VLD_KEY : ICE_BT_INV_KEY);
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
index 71172cd7fc7c..a891d3acf1f1 100644
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

