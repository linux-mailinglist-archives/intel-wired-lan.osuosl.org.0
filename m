Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 651B277F38F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 11:36:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 050F583CE0;
	Thu, 17 Aug 2023 09:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 050F583CE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692264991;
	bh=vylHfFUP9J+Fo5UbL2Q9PtJh/mQUTon5VHDNXxvl1mk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5Nt2zfsSMlUmvwXisZFsidqDtJNXDd/ze6Wm2ciROoVCzfcwS4FF+L3AdpV+r122q
	 q8JIHGNgYDds0WfqJONGAEentHbmOvwJLcSFKPquhqwANXceX994xSVmxw+B9B+Hon
	 M7hM29I9MSzVh390dlc4TFCZE7sK/w+dmE8b3PcgIjhhfR9iAU0HoRotvih3UwuTMD
	 wDyA8QS+5fk4eyQy4yCQ6EdPFmzlvNU24l4m+IBP7k+nDXlA+V66VotQlibO4VR9Lh
	 j9FUFc8u3sh6wr02I1VHSavPIamm413CdICkFAk5iMPGZGOnNozoI6G3D2vd3jjIsC
	 k90nhZHE4M+oQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HxY_HUGt87bs; Thu, 17 Aug 2023 09:36:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDA1583CAC;
	Thu, 17 Aug 2023 09:36:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDA1583CAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 273FE1BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00F974181D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00F974181D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uc8KLTfgZS_W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 09:35:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F3E141815
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F3E141815
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="459120207"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="459120207"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 02:35:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769557119"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="769557119"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2023 02:35:49 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 17:34:41 +0800
Message-Id: <20230817093442.2576997-15-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817093442.2576997-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230817093442.2576997-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692264952; x=1723800952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kCLIWVUdeanj/Fw8BcPDKCN9c8kYSDbiqT43CSTWotI=;
 b=bQCzKGu3gpCc8XU1Ur4okmUAm16+az9BK+ePBqybyDomqE6nzT8DFtee
 pOanD92EZvkPJB+zRNhfHooOf1L0QwnA7lhJH48tDXmchXYsg85AO7Jb0
 Sd7Q1L/2644De4zXprip7hlV2/H5lcI1HgnJou8Vutv7SupG3IvouXFgJ
 om1dJuKsaZfC70hjvwfy5GxNPEhseouvbK/zFRf0x2TCMnWEM8H/LyvEX
 rD6V/t+zE8c3QG7yOiuWjoiSUiWRhlREb1TZGW+dEXuRBM0r+sn/aWIj9
 EeiD0OeCjebnxF1m4MH9R4NnUiubK8ypwDjr1mU8TbUvlRAVsXMDgkpye
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bQCzKGu3
Subject: [Intel-wired-lan] [PATCH net-next v3 14/15] ice: add tunnel port
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
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
index 66c401d0b459..aa63605690a0 100644
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
index 2de866baa31e..df819471b462 100644
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
