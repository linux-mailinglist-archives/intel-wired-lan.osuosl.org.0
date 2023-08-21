Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0695782194
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 04:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 521C740A4D;
	Mon, 21 Aug 2023 02:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 521C740A4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692585599;
	bh=YMaM1Vs4m/IdS4nf15cgiE+7Bj2OlWnOKh01QAWpwec=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vo3Bo7DiUnZ4z6u47WGVrYb/fQVI6zx+mdiiWUd/XIG6GoBmHmuDqJ+TYiYRr1Jxm
	 DXuuaH4hcMp8YirNt+KxsoVbbB425mf8vBzwY9NlaE8O1jqS4SBtMzpHvpdJcBeqU9
	 Bi2u2rwPiRUfjo6NOy3c7GAhgVdYR0CY03YgkW+Obg32T0/7q++EBTta92s+IJSUEG
	 xqYSLnTWnuioxYYSC5dLndQ9GqfDgLYBjs4ezHT5glHmJ/K7wO2/EVvcIzEIbatSlM
	 gtPVWxEd4Ryn9NzZj4rOa1hlXUg+1CzHNMTB8w2LwgiFRZadYkRAVk81jhf43Jah7V
	 DairME2ZiZoXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iTVyqkwciTZS; Mon, 21 Aug 2023 02:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BECD408D4;
	Mon, 21 Aug 2023 02:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BECD408D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82CE21BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5BDE561073
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BDE561073
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gEQGV5YSfKa3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 02:39:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A982861072
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:39:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A982861072
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="377216795"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="377216795"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2023 19:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="982326692"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="982326692"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by fmsmga006.fm.intel.com with ESMTP; 20 Aug 2023 19:39:29 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Aug 2023 10:38:31 +0800
Message-Id: <20230821023833.2700902-14-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230821023833.2700902-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230821023833.2700902-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692585572; x=1724121572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VSHxor5T1n5k59lTMgvGBkeoaMOvQnCXz0VOwWNR2sM=;
 b=NKR42UQu4EW8TZYWZCFXYEQyb6wJCnDzoypLnBXp1LOQw1IS1qHRILTY
 I8adrKpmQMpXwEG9PyzCePeEAnBrmjGI8eydhQgAg1ixVUG+GpRrT1/DM
 FT+5IjMwD0KVMkrYmtgb8ICQEpbIguRYPirDHnGjdYh+jG1EctNG1Zv+U
 +6YPporAI2rGZDGRFHewOaVTWzXjnb2/9LiXRLinqq1h3x7xvM4yrt47/
 a30QYn5sHkk0zTLysc7yMza+yN2uw/Uy/Otx4qsAnhjGGKLEMRPYh5UHf
 GxE2MiWLvG82iE9bMkzUh/gxCU+/wZr5MvVAfWK8bHZS4TQtH1g8HKsDu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NKR42UQu
Subject: [Intel-wired-lan] [PATCH iwl-next v5 13/15] ice: support double
 vlan mode configure for parser
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
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add API ice_parser_dvm_set to support turn on/off parser's
double vlan mode.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 17 +++++++++
 drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  4 +++
 drivers/net/ethernet/intel/ice/ice_parser.c   | 36 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |  2 ++
 4 files changed, 59 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
index f31023da0a41..fd8d06d400c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
@@ -294,3 +294,20 @@ ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat)
 
 	return NULL;
 }
+
+struct ice_bst_tcam_item *
+ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
+		    struct ice_lbl_item *lbl_table,
+		    const char *prefix, u16 *start)
+{
+	u16 i = *start;
+
+	for (; i < ICE_BST_TCAM_TABLE_SIZE; i++) {
+		if (strstarts(lbl_table[i].label, prefix)) {
+			*start = i;
+			return &tcam_table[lbl_table[i].idx];
+		}
+	}
+
+	return NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
index 960c8ff09171..d812c76c0549 100644
--- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
@@ -45,4 +45,8 @@ struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw);
 
 struct ice_bst_tcam_item *
 ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat);
+struct ice_bst_tcam_item *
+ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
+		    struct ice_lbl_item *lbl_table,
+		    const char *prefix, u16 *start);
 #endif /*_ICE_BST_TCAM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 1bd1417e32c6..5ce98cd303e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -325,3 +325,39 @@ void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt)
 	dev_info(ice_hw_to_dev(hw), "flags_fd = 0x%04x\n", rslt->flags_fd);
 	dev_info(ice_hw_to_dev(hw), "flags_rss = 0x%04x\n", rslt->flags_rss);
 }
+
+#define ICE_BT_VLD_KEY	0xFF
+#define ICE_BT_INV_KEY	0xFE
+
+static void _ice_bst_vm_set(struct ice_parser *psr, const char *prefix,
+			    bool on)
+{
+	u16 i = 0;
+
+	while (true) {
+		struct ice_bst_tcam_item *item;
+
+		item = ice_bst_tcam_search(psr->bst_tcam_table,
+					   psr->bst_lbl_table,
+					   prefix, &i);
+		if (!item)
+			break;
+
+		item->key[ICE_BT_VM_OFF] =
+			(u8)(on ? ICE_BT_VLD_KEY : ICE_BT_INV_KEY);
+		item->key_inv[ICE_BT_VM_OFF] =
+			(u8)(on ? ICE_BT_VLD_KEY : ICE_BT_INV_KEY);
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
+	_ice_bst_vm_set(psr, "BOOST_MAC_VLAN_DVM", on);
+	_ice_bst_vm_set(psr, "BOOST_MAC_VLAN_SVM", !on);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index bfcef4f597bf..c9eee988ebb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -33,6 +33,7 @@
 #define ICE_SID_LBL_ENTRY_SIZE				66
 
 #define ICE_PARSER_PROTO_OFF_PAIR_SIZE			16
+#define ICE_BT_VM_OFF					0
 
 struct ice_parser {
 	struct ice_hw *hw; /* pointer to the hardware structure */
@@ -74,6 +75,7 @@ struct ice_parser {
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
 void ice_parser_destroy(struct ice_parser *psr);
+void ice_parser_dvm_set(struct ice_parser *psr, bool on);
 
 struct ice_parser_proto_off {
 	u8 proto_id;	/* hardware protocol ID */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
