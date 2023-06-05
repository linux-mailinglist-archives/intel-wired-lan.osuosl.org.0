Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C5E721DAF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:49:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78E9B4185A;
	Mon,  5 Jun 2023 05:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78E9B4185A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944163;
	bh=2mHDFgC3jDLUhymXPFThlX6xhBxcjM6W0a7L2jkPkrk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5kf1XhlHKXvflok00Fimhv5pJaM/xvldn8HlvsPeIpn5pE5sHVpg8ShWkkyXrlARP
	 VA+2vMQzHh3JTYerfVxdqr3JCWXToAWVAU/mIL4T2JvwVH9KPYhEiQclkmoBELAbFD
	 D1k1G2zmd38p9HAWyUFdDs6R4auyfYWbl2bBcyrxVPdSAZ57UYujdWf+J9/IgJBDuy
	 N/GkPgPDIKnOIpL8H8ms3of0Z/+UGV1+QN/fQdpoEnnkbe4ItOEmiTUQkuIWAY5/8e
	 JHywnCD2FEV0dOyFd76nDeKOxsEnuIAgh4X5Bs/aytmPES9IumYYs6vnjKGTRIuOd6
	 oyA81k33BXElw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Qr1MmW1M4Af; Mon,  5 Jun 2023 05:49:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 154524032B;
	Mon,  5 Jun 2023 05:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 154524032B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F2CB1BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E898B4040D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E898B4040D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EN-8wkhyoBbn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F3BE40114
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F3BE40114
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831891"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831891"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581538"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581538"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:18 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:40 +0800
Message-Id: <20230605054641.2865142-15-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944100; x=1717480100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rKAj4pqERmfjKSi2TCgJCE/+LLy5TPLHx3X5kQ20JAQ=;
 b=VgpxY98lREb2p4dLcUDRvwylu1aZ87L+QjdWfXgyHswdWPY/zfklS2GL
 v+NNEW43P1UIES8MXhkVoN8tBzAy3gxkWoAzx50kCkEzwY8XUSL2RBSlw
 KW2/PIa8tQuakn2DVvUNVxyTIyK129Eq/YzyhZucaXVVPdZOUhO2c9Ojq
 43cg+htLDm1wyPN8vTFxs/uqeoB2Ywj7evYViD+mye8+96ZmQbVdK6GtH
 VuXOaDpj03D7H00tHWE2zPD1lpMt147I71BoFjZZAk4fvjjA3f98b3i5E
 Pbw9quCK68cIzFCQBLuYxxj8rSV6eUlKpT1homRrG8vJGHVskns4kFgfJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VgpxY98l
Subject: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: add tunnel port
 support for parser
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

UDP tunnel can be added/deleted for vxlan, geneve, ecpri through
below APIs:
ice_parser_vxlan_tunnel_set
ice_parser_geneve_tunnel_set
ice_parser_ecpri_tunnel_set

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 76 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h |  6 ++
 2 files changed, 82 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 33b649a4644a..1ca0886e6590 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -372,3 +372,79 @@ void ice_parser_dvm_set(struct ice_parser *psr, bool on)
 	_bst_vm_set(psr, "BOOST_MAC_VLAN_DVM", on);
 	_bst_vm_set(psr, "BOOST_MAC_VLAN_SVM", !on);
 }
+
+static int
+_tunnel_port_set(struct ice_parser *psr, const char *prefix, u16 udp_port,
+		 bool on)
+{
+	u8 *buf = (u8 *)&udp_port;
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
+		/* found empty slot to add */
+		if (on && item->key[16] == 0xfe && item->key_inv[16] == 0xfe) {
+			item->key_inv[15] = buf[0];
+			item->key_inv[16] = buf[1];
+			item->key[15] = (u8)(0xff - buf[0]);
+			item->key[16] = (u8)(0xff - buf[1]);
+
+			return 0;
+		/* found a matched slot to delete */
+		} else if (!on && (item->key_inv[15] == buf[0] ||
+			   item->key_inv[16] == buf[1])) {
+			item->key_inv[15] = 0xff;
+			item->key_inv[16] = 0xfe;
+			item->key[15] = 0xff;
+			item->key[16] = 0xfe;
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
+	return _tunnel_port_set(psr, "TNL_VXLAN", udp_port, on);
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
+	return _tunnel_port_set(psr, "TNL_GENEVE", udp_port, on);
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
+	return _tunnel_port_set(psr, "TNL_UDP_ECPRI", udp_port, on);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 02ea2ef5fc91..432d47031298 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -57,6 +57,12 @@ struct ice_parser {
 int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
 void ice_parser_destroy(struct ice_parser *psr);
 void ice_parser_dvm_set(struct ice_parser *psr, bool on);
+int ice_parser_vxlan_tunnel_set(struct ice_parser *psr,
+				u16 udp_port, bool on);
+int ice_parser_geneve_tunnel_set(struct ice_parser *psr,
+				 u16 udp_port, bool on);
+int ice_parser_ecpri_tunnel_set(struct ice_parser *psr,
+				u16 udp_port, bool on);
 
 struct ice_parser_proto_off {
 	u8 proto_id; /* hardware protocol ID */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
