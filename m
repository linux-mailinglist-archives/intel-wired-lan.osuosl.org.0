Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3257B721C06
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:30:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B924B60C09;
	Mon,  5 Jun 2023 02:30:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B924B60C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685932245;
	bh=vTq1xj/1c9NL9gOO+U987tzd7t4T8gS+tK6nqp/lxsU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gmscLInk3fl3KOmQlHpb8xE3AgwzNLzjCjVmg+cjrwGa0qwG6rD5n7gwTDVtEzkyP
	 pYX/2mFPo5+1a1AR3aDbePu7jstaVGQx7zPClTnrbcGmbzwTiBRglhLAbsiYwRFG6I
	 8NcI4OYXyh9rx/av1DMTI+pJ4rFjY7p2qVTpwaaPUyQXx3THabz6XWwRlYv9l/Q1I+
	 cyeSuSms/Mg7H/iLaN+kXHbGD/qZn/tvZZ2MBV+go+naWOgiit2XA4nOA19msIxPXP
	 v+5veHTzGyW2/R7i+XMKmNPSnNaRKCa0bJn2Q+C0pyw0/C0KN5BgH0CCp4vgFAtbNi
	 pLUsY7XpfIEqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ApMheTO6pfgN; Mon,  5 Jun 2023 02:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6038460BBB;
	Mon,  5 Jun 2023 02:30:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6038460BBB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21AF51BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1DFE160BB9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DFE160BB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DxwKs_EyId4z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:29:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51C0A60BF7
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 51C0A60BF7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:29:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="358710451"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358710451"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:29:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="1038604821"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="1038604821"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jun 2023 19:29:49 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:29:19 +0800
Message-Id: <20230605022920.2361266-15-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605022920.2361266-1-junfeng.guo@intel.com>
References: <20230605022920.2361266-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685932191; x=1717468191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oq5sW+U4SlZpPRIssWqOKtEjW51S9fbrnrzuPM+PuEA=;
 b=Wnb6TnBZILFH+et4FVpRHmkLWcz0DwkMDVmcwF0eqMEct0eF2+2JTlNN
 LMwh5GkeZR5OQy6kFmIuHmbEvHmRegMV6fLAGvyjDH5pcM11WehQLHkM0
 cEQDXEmfFBhpX1IhThZbfcWlI8kfyWqg6QRk4UqM/zgqZasS721uOk7+E
 J+3RI36E868OW43uMBYS1AR5N6mUh2dK/jbGltVJ+2IDIuMAAgoIeTQYh
 Rt8WIQHtWWSxmfKYBPxZqkovcO3T6f01T1/TrOQxS7++/U3BcHbZu4ahM
 r3K/OProunzmRDL9iIh89fHws2+MaJEVNkYOPOxxtnzOiO/X8bbM9OgPv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wnb6TnBZ
Subject: [Intel-wired-lan] [PATCH iwl-next 14/15] ice: add tunnel port
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
index a41d73063681..b70c18044331 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -368,3 +368,79 @@ void ice_parser_dvm_set(struct ice_parser *psr, bool on)
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
