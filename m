Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3189677F3BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 11:44:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9B3283CD1;
	Thu, 17 Aug 2023 09:44:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9B3283CD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692265443;
	bh=51Ekt6pM97ihyrYTDmXjOv88zDjbIDkaLZpnEA2GekI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wgavFuTI2/5YdtxqCvKqFSZ9iTTfN3guFuW0nAU3hz05By5Kkj5t3w5WHAmr3kbg0
	 HNM86Iij89rDroAcWbRztiU4x2d5ZoymnvVx36a3v533RxNz3S8hrz8C9oQeM3TyrM
	 CY9Gxz6fuCJ2Q05DiEJEpbTV4+VGKZ9D7hFSTfP23TF56EYUQ6wpr6JB7VYNIBWfiV
	 FXjv7+HM6PSeBr7mN5jyGxlVR1qnhY7pfNHpwmYDwC6PtJtQgftEzMm7nx3j8L/u/M
	 3HUutorkoQVQffJIA2tDLLPf9+JjLCLdYbsyT242SKSb94Xw4YTKL9OXwFGdPohh/a
	 lCEohZjHQbR2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id COApnHof3igY; Thu, 17 Aug 2023 09:44:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97B4D80F4E;
	Thu, 17 Aug 2023 09:44:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97B4D80F4E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 409B41BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A3CF60776
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A3CF60776
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uIMXkyrYOp5I for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 09:43:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 51FBD605E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:43:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51FBD605E9
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="370232263"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="370232263"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 02:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1065177220"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="1065177220"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2023 02:43:23 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 17:42:38 +0800
Message-Id: <20230817094240.2584745-14-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817094240.2584745-1-junfeng.guo@intel.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692265405; x=1723801405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GQsbrh7s9nvhX99QiaXz6EoaKcG0jeymWos9vV4nVsg=;
 b=WcrEeSHDxxw2CI+Utlah4OfnupZItBjMVSf982NxVl30JSUJi58JqMwv
 AIv38yO1dzeXVb54uiDQC5TGZ9X7Xrk+U0OmfVvcK4GZFH+BrtmIKpJSZ
 jr1pHXvTc/pYKCDn581tl0SmzxRzLnKwYhlT/wRdQXf6Iq4zVcfBSOGIp
 V90yXKRUGUQdznqfaZDOS8U70/RFDIi4012UJAy1nUgjD0i4MASLHgS+Y
 5WZDwI+aHnPLYw1XeBFODK4+w7TuWXHFN3ABgYfUEpf90LIcgdiKC9Kne
 OGX0BhbNK94Aymh60637pUL6zUcjfHkEBNYttXwQ6EsXDWg0dMU26khzw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WcrEeSHD
Subject: [Intel-wired-lan] [PATCH net-next v4 13/15] ice: support double
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
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
index 035cdaa640d7..fd324d35491c 100644
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
index 081734170789..5019d367c6c6 100644
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
index 0c88399ce3b3..66c401d0b459 100644
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
index 91c0c2e6ff44..2de866baa31e 100644
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
