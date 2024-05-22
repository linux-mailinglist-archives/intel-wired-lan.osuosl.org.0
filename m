Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AB38CC757
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 21:36:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEBAF821B7;
	Wed, 22 May 2024 19:36:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-abg1WpOCcx; Wed, 22 May 2024 19:36:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1F878218D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716406611;
	bh=aTQrNTLhYpVShDmS6QMCD0y+84VK+XG1pYmp96vXEOQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jkFHJs5bhrU85y9hrg3TN9dr8E2vcLdhHLuyIoL3oUe7AmcS/YyEYFvEqtxkAioC2
	 22k0TDKeh1nFgzvVaUVu9xN4acfqkZGXMG2Q7HoilzJD5qz1PJecnW18F47aqK7++Q
	 2f9/U9Ts4DTx38o2q5oyvcknAaDXLtuC/KfnlEECCued3p1lgfQgAoJ+DOGBafEngg
	 15++th72MVP1oqTS6xtnYpF3H5S0nr3cSJAa2IgQLVbNwSxNAEs+EHaAsBxewMXviR
	 4ABANdY/K6NdC2Tsqy8//QNwOJ5oTIwQA9uwn/k+WZlqEWhQd0G7lR4FJY/u6TcYyt
	 jkqIfygyqw1Jg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1F878218D;
	Wed, 22 May 2024 19:36:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC9991C5EF4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3BAB406C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kgr1PglCasP9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 19:36:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 90AA2406C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90AA2406C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 90AA2406C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:41 +0000 (UTC)
X-CSE-ConnectionGUID: wZfijjS9RJqMj6kw6m6CVg==
X-CSE-MsgGUID: 1N9lTMhoSFu0Hvd+7GkyFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="23256343"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="23256343"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:36:41 -0700
X-CSE-ConnectionGUID: CEy8nn95TCaC0NPzAPJQdA==
X-CSE-MsgGUID: fC3sNjqKQ9aOwXehMYE8mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33254175"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.214])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:36:39 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 May 2024 13:35:56 -0600
Message-ID: <20240522193602.164331-8-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240522193602.164331-1-ahmed.zaki@intel.com>
References: <20240522193602.164331-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716406601; x=1747942601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SbzW53qTtv0Fi6VWz7P7Y2FNMH6TL50QpmXf8/AHynk=;
 b=dAyTsCTEhhaqO/5H0TlBzERBlCcpe7z3oVgYWJO/3Lm+Dal5yYfKnqGU
 Wk3PumYbxp6Ja+VO4JRp4SRKW4HFnyd3qZd8zAGSY0W3D2utb9ohe1pka
 1XB0gw4muLvmp6GDcKigcBx6AZ+YuPjYPFcZ0JKQaqUNC/DsAE6Wdd7H/
 JwUHhcfH4yqx2lwsC700vXU7zQAnk15cZ+9ul47HB1vC30R/GTe6hRQJS
 WjnjArLPBQtGO46NTSuCD4VhvNWt+janpTyxvh0Nx1wTl6n+6BKeNzniN
 r3x82fAX1jqE3/67pMENNfM9aL8loKlrSNMG7xuvBFu+KkyOkFyoiyu7u
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dAyTsCTE
Subject: [Intel-wired-lan] [PATCH iwl-next 07/13] ice: add UDP tunnels
 support to the parser
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
Cc: Marcin Szycik <marcin.szycik@linux.intel.com>,
 Junfeng Guo <junfeng.guo@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Add support for the vxlan, geneve, ecpri UDP tunnels through the
following APIs:
- ice_parser_vxlan_tunnel_set()
- ice_parser_geneve_tunnel_set()
- ice_parser_ecpri_tunnel_set()

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 92 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h | 13 +++
 2 files changed, 105 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index c490bff94355..6a0d5f720af0 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -1373,6 +1373,12 @@ static void ice_parse_lbl_item(struct ice_hw *hw, u16 idx, void *item,
 		lbl_item->type = ICE_LBL_BST_TYPE_DVM;
 	else if (strstarts(lbl_item->label, ICE_LBL_BST_SVM))
 		lbl_item->type = ICE_LBL_BST_TYPE_SVM;
+	else if (strstarts(lbl_item->label, ICE_LBL_TNL_VXLAN))
+		lbl_item->type = ICE_LBL_BST_TYPE_VXLAN;
+	else if (strstarts(lbl_item->label, ICE_LBL_TNL_GENEVE))
+		lbl_item->type = ICE_LBL_BST_TYPE_GENEVE;
+	else if (strstarts(lbl_item->label, ICE_LBL_TNL_UDP_ECPRI))
+		lbl_item->type = ICE_LBL_BST_TYPE_UDP_ECPRI;
 
 	if (hw->debug_mask & ICE_DBG_PARSER)
 		ice_lbl_dump(hw, lbl_item);
@@ -2174,3 +2180,89 @@ void ice_parser_dvm_set(struct ice_parser *psr, bool on)
 	ice_bst_dvm_set(psr, ICE_LBL_BST_TYPE_DVM, on);
 	ice_bst_dvm_set(psr, ICE_LBL_BST_TYPE_SVM, !on);
 }
+
+static int ice_tunnel_port_set(struct ice_parser *psr, enum ice_lbl_type type,
+			       u16 udp_port, bool on)
+{
+	u8 *buf = (u8 *)&udp_port;
+	u16 i = 0;
+
+	while (true) {
+		struct ice_bst_tcam_item *item;
+
+		item = ice_bst_tcam_search(psr->bst_tcam_table,
+					   psr->bst_lbl_table,
+					   type, &i);
+		if (!item)
+			break;
+
+		/* found empty slot to add */
+		if (on && item->key[ICE_BT_TUN_PORT_OFF_H] == ICE_BT_INV_KEY &&
+		    item->key_inv[ICE_BT_TUN_PORT_OFF_H] == ICE_BT_INV_KEY) {
+			item->key_inv[ICE_BT_TUN_PORT_OFF_L] =
+						buf[ICE_UDP_PORT_OFF_L];
+			item->key_inv[ICE_BT_TUN_PORT_OFF_H] =
+						buf[ICE_UDP_PORT_OFF_H];
+
+			item->key[ICE_BT_TUN_PORT_OFF_L] =
+				ICE_BT_VLD_KEY - buf[ICE_UDP_PORT_OFF_L];
+			item->key[ICE_BT_TUN_PORT_OFF_H] =
+				ICE_BT_VLD_KEY - buf[ICE_UDP_PORT_OFF_H];
+
+			return 0;
+		/* found a matched slot to delete */
+		} else if (!on &&
+			   (item->key_inv[ICE_BT_TUN_PORT_OFF_L] ==
+			    buf[ICE_UDP_PORT_OFF_L] ||
+			    item->key_inv[ICE_BT_TUN_PORT_OFF_H] ==
+			    buf[ICE_UDP_PORT_OFF_H])) {
+			item->key_inv[ICE_BT_TUN_PORT_OFF_L] = ICE_BT_VLD_KEY;
+			item->key_inv[ICE_BT_TUN_PORT_OFF_H] = ICE_BT_INV_KEY;
+
+			item->key[ICE_BT_TUN_PORT_OFF_L] = ICE_BT_VLD_KEY;
+			item->key[ICE_BT_TUN_PORT_OFF_H] = ICE_BT_INV_KEY;
+
+			return 0;
+		}
+		i++;
+	}
+
+	return -EINVAL;
+}
+
+/**
+ * ice_parser_vxlan_tunnel_set - configure vxlan tunnel for parser
+ * @psr: pointer to a parser instance
+ * @udp_port: vxlan tunnel port in UDP header
+ * @on: true to turn on; false to turn off
+ */
+int ice_parser_vxlan_tunnel_set(struct ice_parser *psr,
+				u16 udp_port, bool on)
+{
+	return ice_tunnel_port_set(psr, ICE_LBL_BST_TYPE_VXLAN, udp_port, on);
+}
+
+/**
+ * ice_parser_geneve_tunnel_set - configure geneve tunnel for parser
+ * @psr: pointer to a parser instance
+ * @udp_port: geneve tunnel port in UDP header
+ * @on: true to turn on; false to turn off
+ */
+int ice_parser_geneve_tunnel_set(struct ice_parser *psr,
+				 u16 udp_port, bool on)
+{
+	return ice_tunnel_port_set(psr, ICE_LBL_BST_TYPE_GENEVE, udp_port, on);
+}
+
+/**
+ * ice_parser_ecpri_tunnel_set - configure ecpri tunnel for parser
+ * @psr: pointer to a parser instance
+ * @udp_port: ecpri tunnel port in UDP header
+ * @on: true to turn on; false to turn off
+ */
+int ice_parser_ecpri_tunnel_set(struct ice_parser *psr,
+				u16 udp_port, bool on)
+{
+	return ice_tunnel_port_set(psr, ICE_LBL_BST_TYPE_UDP_ECPRI,
+				   udp_port, on);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index a891d3acf1f1..26aa500c27c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -276,11 +276,17 @@ struct ice_bst_tcam_item {
 #define ICE_LBL_LEN			64
 #define ICE_LBL_BST_DVM			"BOOST_MAC_VLAN_DVM"
 #define ICE_LBL_BST_SVM			"BOOST_MAC_VLAN_SVM"
+#define ICE_LBL_TNL_VXLAN		"TNL_VXLAN"
+#define ICE_LBL_TNL_GENEVE		"TNL_GENEVE"
+#define ICE_LBL_TNL_UDP_ECPRI		"TNL_UDP_ECPRI"
 
 enum ice_lbl_type {
 	ICE_LBL_BST_TYPE_UNKNOWN,
 	ICE_LBL_BST_TYPE_DVM,
 	ICE_LBL_BST_TYPE_SVM,
+	ICE_LBL_BST_TYPE_VXLAN,
+	ICE_LBL_BST_TYPE_GENEVE,
+	ICE_LBL_BST_TYPE_UDP_ECPRI,
 };
 
 struct ice_lbl_item {
@@ -445,7 +451,11 @@ struct ice_parser_proto_off {
 
 #define ICE_PARSER_PROTO_OFF_PAIR_SIZE	16
 #define ICE_PARSER_FLAG_PSR_SIZE	8
+#define ICE_BT_TUN_PORT_OFF_H		16
+#define ICE_BT_TUN_PORT_OFF_L		15
 #define ICE_BT_VM_OFF			0
+#define ICE_UDP_PORT_OFF_H		1
+#define ICE_UDP_PORT_OFF_L		0
 
 struct ice_parser_result {
 	u16 ptype;	/* 16 bits hardware PTYPE */
@@ -495,6 +505,9 @@ struct ice_parser {
 struct ice_parser *ice_parser_create(struct ice_hw *hw);
 void ice_parser_destroy(struct ice_parser *psr);
 void ice_parser_dvm_set(struct ice_parser *psr, bool on);
+int ice_parser_vxlan_tunnel_set(struct ice_parser *psr, u16 udp_port, bool on);
+int ice_parser_geneve_tunnel_set(struct ice_parser *psr, u16 udp_port, bool on);
+int ice_parser_ecpri_tunnel_set(struct ice_parser *psr, u16 udp_port, bool on);
 int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
 		   int pkt_len, struct ice_parser_result *rslt);
 void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
-- 
2.43.0

