Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB14721DAE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46BF14183B;
	Mon,  5 Jun 2023 05:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46BF14183B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944159;
	bh=pOQQXtAfZXF+cyvz98XvsnGH6ES9dPOpaW8dCLUcSxg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jGGlBsRH/3++NJy30kgKHn07tcdHgkfTYMBjf//F90oryjHs5kxH7HH8zeddRPJGM
	 KTNh83oiq4G2wkWQE6/oVMgvnRokoMSCPQRqanLJzwLmnEpGSrgcN13wl8K1vrTinW
	 OEFpqNNxOSH6LQVzJYhZ1G8i0xrsschQehltLkKSZ+35kCQndqYR7kIS6lxKxQrEsp
	 ltaOWuKVTWdfY9VTW7X0q1+9PYJ6PLPeKQv/qKgs1+yF9YRnlZmtbb4D5UAGcbvVJV
	 rkdzo8B8EwNaCYtJYPXUeOxaSKsJs/bsWbXgDX/PFc/l7Jys1QAUUFx0w1aQsaA6WF
	 qzs8Z4khDp5Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id enFydE-WKyni; Mon,  5 Jun 2023 05:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84E2141809;
	Mon,  5 Jun 2023 05:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84E2141809
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 674A11BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5BF1A403A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BF1A403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Ldyz9FhJmGC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F78940114
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F78940114
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831888"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831888"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581533"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581533"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:16 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:39 +0800
Message-Id: <20230605054641.2865142-14-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944098; x=1717480098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TP+H6AuDLgAzJxgFXrf1/+vWlPKxfe8XIiZpEduxqdg=;
 b=Kjq05mlG55xbIYgOukawkZ9VksI3v1k9uELjgOsd0f7iIddPEMu8xIg6
 slbR8exPbt0dSn0gm2TD9CsaYuZX0Qr8gbPGvlkqOwLzXrXeU8O+08kIX
 N+V0KtIWkK58HlaDSCJRap9oKY7M4bAs4X38JIZ/EMeYRrlUqplWu0Wk4
 wT8HgsTO+6rmp/mqk1OmiBUMqEdfpjqbWnQOW3CNtmqMcWCh/tKej8uM6
 YW1pmHadJ3NOAIhCh9CfcJFXd8XSULBeHINtWgVQNXJqG1X2dprwFKXoj
 ZmOvOrTIKt7FBLhSzv1bsLwDxrRC9LvHVA+uzSq3/E5fIykfdyuGQZv/c
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kjq05mlG
Subject: [Intel-wired-lan] [PATCH iwl-next v2 13/15] ice: support double
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add API ice_parser_dvm_set to support turn on/off parser's
double vlan mode.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 28 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  4 +++
 drivers/net/ethernet/intel/ice/ice_parser.c   | 29 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h   |  1 +
 4 files changed, 62 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
index bd3ebc8a5f5b..e29c7d6c554b 100644
--- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
@@ -267,3 +267,31 @@ ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat)
 
 	return NULL;
 }
+
+static bool _start_with(const char *prefix, const char *string)
+{
+	int len1 = strlen(prefix);
+	int len2 = strlen(string);
+
+	if (len2 < len1)
+		return false;
+
+	return !memcmp(prefix, string, len1);
+}
+
+struct ice_bst_tcam_item *
+ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
+		    struct ice_lbl_item *lbl_table,
+		    const char *prefix, u16 *start)
+{
+	u16 i = *start;
+
+	for (; i < ICE_BST_TCAM_TABLE_SIZE; i++) {
+		if (_start_with(prefix, lbl_table[i].label)) {
+			*start = i;
+			return &tcam_table[lbl_table[i].idx];
+		}
+	}
+
+	return NULL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
index 7b69f3b88da5..873ff42fcdb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
+++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
@@ -27,4 +27,8 @@ struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw);
 
 struct ice_bst_tcam_item *
 ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat);
+struct ice_bst_tcam_item *
+ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
+		    struct ice_lbl_item *lbl_table,
+		    const char *prefix, u16 *start);
 #endif /*_ICE_BST_TCAM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index eddbc80d71fa..33b649a4644a 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -343,3 +343,32 @@ void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt)
 	dev_info(ice_hw_to_dev(hw), "flags_fd = 0x%04x\n", rslt->flags_fd);
 	dev_info(ice_hw_to_dev(hw), "flags_rss = 0x%04x\n", rslt->flags_rss);
 }
+
+static void _bst_vm_set(struct ice_parser *psr, const char *prefix, bool on)
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
+		item->key[0] = (u8)(on ? 0xff : 0xfe);
+		item->key_inv[0] = (u8)(on ? 0xff : 0xfe);
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
+	_bst_vm_set(psr, "BOOST_MAC_VLAN_DVM", on);
+	_bst_vm_set(psr, "BOOST_MAC_VLAN_SVM", !on);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index d4de0796a292..02ea2ef5fc91 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -56,6 +56,7 @@ struct ice_parser {
 
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
 void ice_parser_destroy(struct ice_parser *psr);
+void ice_parser_dvm_set(struct ice_parser *psr, bool on);
 
 struct ice_parser_proto_off {
 	u8 proto_id; /* hardware protocol ID */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
