Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66540786915
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 09:56:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E498561362;
	Thu, 24 Aug 2023 07:56:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E498561362
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692863796;
	bh=C1IV0BFZGSZ0TTy3TBo5rUS343AsSO2GsX92h1MuPYI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tkwXbYxW9JUyFePejjeotETScyka9LRjzoGqUmCieiM+0M3qaOaN3Zp18JuTtD4Z7
	 sAfAS+yEDd4MGPH/oeeM4kokOe5EMO2u0Cm0SW47H5NqdP/Yrur6LlNgZ/PSuSqG8i
	 iZsJmc/0EG7Gbzo9cXQ8y3V4BtDdxX7QHtqnv3e6QF5FteSBCAahXlPYAGY6R44Ne8
	 Y/yNOulsespvXO0zxWd+vKizsn5NG78I1253f7u3JK9tCAtVPZQ7y9G4RJoO5n9ubQ
	 f+1/3CF0es7ncYCK/64VOokXdkMO8zBCiJtH2hBcXrq7DuELUf7x6A4EI9vic0bxkn
	 sTRrVXXjupcgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oKj7QSHw7q5U; Thu, 24 Aug 2023 07:56:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9681C61341;
	Thu, 24 Aug 2023 07:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9681C61341
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DA4A1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4722F82268
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:56:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4722F82268
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q5OgqMTTFOQy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 07:56:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BAF682288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:56:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BAF682288
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354705554"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354705554"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 00:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="772022668"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="772022668"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2023 00:56:14 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 15:54:59 +0800
Message-Id: <20230824075500.1735790-15-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230824075500.1735790-1-junfeng.guo@intel.com>
References: <20230823093158.782802-1-junfeng.guo@intel.com>
 <20230824075500.1735790-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692863783; x=1724399783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9VVAzoph9bkRZBHLWwGeyUb9l+/n3HuJxnr1k8LVCiQ=;
 b=ifT3UemJ11rcHTxTMfqWNuULGW9/Wuq54FOUi3Kg+stBNVHbpMgMNk40
 6DqsE1CJ/m4GYYr76CcD98al2XIAvBBaCMbcyeW5TyE17N71jpvL4b8XN
 lcfP06IROr0eEdxcijofzK4d+/Bo73WSBg1W9UYpcHhk2Dpci2t5+IfKp
 1hO/gKRUowVs/v/2U7Q/g8ygFD54r8hGZZPy+Psx1hFDUK7N5TgbyO+oi
 C2NfJ/OiAaxBcww/mhMv/vBbUQbqGl0rKbQdiiJ/WIE3afutAu1Ojr5xS
 kmxHPdHw2orUZEHsrx/+PlSPnTNxaS2Vd+aUf1OKAll9vxvDp+zAfwG+v
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ifT3UemJ
Subject: [Intel-wired-lan] [PATCH iwl-next v8 14/15] ice: add tunnel port
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, qi.z.zhang@intel.com,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UDP tunnel can be added/deleted for vxlan, geneve, ecpri through
below APIs:
- ice_parser_vxlan_tunnel_set
- ice_parser_geneve_tunnel_set
- ice_parser_ecpri_tunnel_set

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 85 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h | 10 +++
 2 files changed, 95 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 5ce98cd303e1..85a2833ffc58 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -361,3 +361,88 @@ void ice_parser_dvm_set(struct ice_parser *psr, bool on)
 	_ice_bst_vm_set(psr, "BOOST_MAC_VLAN_DVM", on);
 	_ice_bst_vm_set(psr, "BOOST_MAC_VLAN_SVM", !on);
 }
+
+static int _ice_tunnel_port_set(struct ice_parser *psr, const char *prefix,
+				u16 udp_port, bool on)
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
+		if (on && item->key[ICE_BT_TUN_PORT_OFF_H] == ICE_BT_INV_KEY &&
+		    item->key_inv[ICE_BT_TUN_PORT_OFF_H] == ICE_BT_INV_KEY) {
+			item->key_inv[ICE_BT_TUN_PORT_OFF_L] =
+						buf[ICE_UDP_PORT_OFF_L];
+			item->key_inv[ICE_BT_TUN_PORT_OFF_H] =
+						buf[ICE_UDP_PORT_OFF_H];
+
+			item->key[ICE_BT_TUN_PORT_OFF_L] =
+				(u8)(ICE_BT_VLD_KEY - buf[ICE_UDP_PORT_OFF_L]);
+			item->key[ICE_BT_TUN_PORT_OFF_H] =
+				(u8)(ICE_BT_VLD_KEY - buf[ICE_UDP_PORT_OFF_H]);
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
+	return _ice_tunnel_port_set(psr, "TNL_VXLAN", udp_port, on);
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
+	return _ice_tunnel_port_set(psr, "TNL_GENEVE", udp_port, on);
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
+	return _ice_tunnel_port_set(psr, "TNL_UDP_ECPRI", udp_port, on);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index c9eee988ebb2..3cfcec4dc477 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -33,6 +33,10 @@
 #define ICE_SID_LBL_ENTRY_SIZE				66
 
 #define ICE_PARSER_PROTO_OFF_PAIR_SIZE			16
+#define ICE_BT_TUN_PORT_OFF_H				16
+#define ICE_BT_TUN_PORT_OFF_L				15
+#define ICE_UDP_PORT_OFF_H				1
+#define ICE_UDP_PORT_OFF_L				0
 #define ICE_BT_VM_OFF					0
 
 struct ice_parser {
@@ -76,6 +80,12 @@ struct ice_parser {
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
 	u8 proto_id;	/* hardware protocol ID */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
