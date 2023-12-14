Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C396812E81
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 12:25:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF7B06F610;
	Thu, 14 Dec 2023 11:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF7B06F610
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702553137;
	bh=bk+T4TYuMaeXwC3GIKdmm8zNvAqx7Euit17H1O7MQEY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DWyYyNsbVRz3o1EAXpkNIOvnqV8RT6BqKyilBI7PCJkE+n5vaVjw4r1Oq1n1/dqWd
	 k/hhSJ4uHi/jyxrTG7BcE1ypnYL90yuZPGBrQAoBT/KoqK/9ULzmLZOTLapBSV6Ria
	 agKqVvHJaU3vlG6IzOx2HDYzBPsiQTVhBFhgC+wLekmUJAF4m7BJI0ZJsXlBK7PwTE
	 ekuDz/JUafMXsFh3T5SAtOKTEAKjHNbuRCR6B9tcqKQp/SDWZWNvxB8uBKgNjMDycU
	 AIsTzaMX9THT5ssuC21kW/N/WK28jlOhiB34caktyMo+UGJY43+/kPZ+YZQUpatQVE
	 VIQRAzCVhvplQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B__pnbQFjLB2; Thu, 14 Dec 2023 11:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1876560792;
	Thu, 14 Dec 2023 11:25:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1876560792
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5C8E1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA55B40129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA55B40129
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YWO3fKdoKxFA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 11:25:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C81B4013C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C81B4013C
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="393977398"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="393977398"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="750503292"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="750503292"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga006.jf.intel.com with ESMTP; 14 Dec 2023 03:25:04 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.249.145.51])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 09D6F3A3CF;
 Thu, 14 Dec 2023 11:25:02 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Dec 2023 05:34:49 +0100
Message-Id: <20231214043449.15835-3-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214043449.15835-1-lukasz.plachno@intel.com>
References: <20231214043449.15835-1-lukasz.plachno@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702553108; x=1734089108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hqZjM47SGTRwcfScLUP6OAwKuMgUOOBJ2VuZ+iwu9uM=;
 b=ZaqqHssThq7vq9JMOFTURNYCqVfAB5QO11v829IYKIQ66PsrojY5lQSE
 4f9r8oPdYY8UhWYV4sty3wMETOqVGDLpHSZEGdaapwBhqtvImxT9oFUdP
 HvTHL888186fuJ0niMlWVVUvjM/Dm7U2LxxynosbSNyX0l+LNZI8TSd3P
 PoA7QmHFK387ZRmmk9+AlkDKGKhJiVW4Fx6r/ryn1XiPf0vaD1hobehhc
 3DQklR2UohJR6a7oHtSuvbn5FmdFwNZmIee44svXQtxAF2nhpS+4d9kVh
 +h630hXSCJgNcsUD6o4Pqa0gNVYTVB0ar5BQ3X5B0XxP9PL7QL4WpR88R
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZaqqHssT
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: Implement 'flow-type
 ether' rules
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Lukasz Plachno <lukasz.plachno@intel.com>,
 Jakub Buchocki <jakubx.buchocki@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Buchocki <jakubx.buchocki@intel.com>

Add support for 'flow-type ether' Flow Director rules via ethtool.

Rules not containing masks are processed by the Flow Director,
and support the following set of input parameters in all combinations:
src, dst, proto, vlan-etype, vlan, action.

It is possible to specify address mask in ethtool parameters but only
00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
The same applies to proto, vlan-etype and vlan masks:
only 0x0000 and 0xffff masks are valid.

Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 128 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  27 ++++
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  11 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 166 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index d151e5bacfec..6951a5b02ac7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -41,6 +41,8 @@ static struct in6_addr zero_ipv6_addr_mask = {
 static int ice_fltr_to_ethtool_flow(enum ice_fltr_ptype flow)
 {
 	switch (flow) {
+	case ICE_FLTR_PTYPE_NONF_ETH:
+		return ETHER_FLOW;
 	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
 		return TCP_V4_FLOW;
 	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
@@ -72,6 +74,8 @@ static int ice_fltr_to_ethtool_flow(enum ice_fltr_ptype flow)
 static enum ice_fltr_ptype ice_ethtool_flow_to_fltr(int eth)
 {
 	switch (eth) {
+	case ETHER_FLOW:
+		return ICE_FLTR_PTYPE_NONF_ETH;
 	case TCP_V4_FLOW:
 		return ICE_FLTR_PTYPE_NONF_IPV4_TCP;
 	case UDP_V4_FLOW:
@@ -137,6 +141,15 @@ int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd)
 	memset(&fsp->m_ext, 0, sizeof(fsp->m_ext));
 
 	switch (fsp->flow_type) {
+	case ETHER_FLOW:
+		fsp->h_u.ether_spec.h_proto = rule->eth.type;
+		fsp->m_u.ether_spec.h_proto = rule->eth_mask.type;
+		ether_addr_copy(fsp->h_u.ether_spec.h_dest, rule->eth.dst);
+		ether_addr_copy(fsp->m_u.ether_spec.h_dest, rule->eth_mask.dst);
+		ether_addr_copy(fsp->h_u.ether_spec.h_source, rule->eth.src);
+		ether_addr_copy(fsp->m_u.ether_spec.h_source,
+				rule->eth_mask.src);
+		break;
 	case IPV4_USER_FLOW:
 		fsp->h_u.usr_ip4_spec.ip_ver = ETH_RX_NFC_IP4;
 		fsp->h_u.usr_ip4_spec.proto = 0;
@@ -1199,6 +1212,99 @@ ice_set_fdir_ip6_usr_seg(struct ice_flow_seg_info *seg,
 	return 0;
 }
 
+/**
+ * ice_fdir_vlan_valid - validate VLAN data for Flow Director rule
+ * @fsp: pointer to ethtool Rx flow specification
+ *
+ * Return: true if vlan data is valid, false otherwise
+ */
+static bool ice_fdir_vlan_valid(struct ethtool_rx_flow_spec *fsp)
+{
+	if (fsp->m_ext.vlan_etype &&
+	    ntohs(fsp->h_ext.vlan_etype) & ~(ETH_P_8021Q | ETH_P_8021AD))
+		return false;
+
+	if (fsp->m_ext.vlan_tci &&
+	    ntohs(fsp->h_ext.vlan_tci) >= VLAN_N_VID)
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_set_ether_flow_seg
+ * @seg: flow segment for programming
+ * @eth_spec: mask data from ethtool
+ *
+ * Return: 0 on success and errno in case of error.
+ */
+static int ice_set_ether_flow_seg(struct ice_flow_seg_info *seg,
+				  struct ethhdr *eth_spec)
+{
+	ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ETH);
+
+	/* Ethertype */
+	if (eth_spec->h_proto == htons(0xFFFF))
+		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_TYPE,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+	else if (eth_spec->h_proto)
+		return -EOPNOTSUPP;
+
+	/* Source MAC address */
+	if (is_broadcast_ether_addr(eth_spec->h_source))
+		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_SA,
+				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+	else if (!is_zero_ether_addr(eth_spec->h_source))
+		return -EOPNOTSUPP;
+
+	/* Destination MAC address */
+	if (is_broadcast_ether_addr(eth_spec->h_dest))
+		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_DA,
+				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+	else if (!is_zero_ether_addr(eth_spec->h_dest))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
+/**
+ * ice_set_fdir_vlan_seg
+ * @seg: flow segment for programming
+ * @ext_masks: masks for additional RX flow fields
+ */
+static int
+ice_set_fdir_vlan_seg(struct ice_flow_seg_info *seg,
+		      struct ethtool_flow_ext *ext_masks)
+{
+	ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_VLAN);
+
+	if (ext_masks->vlan_etype) {
+		if (ext_masks->vlan_etype != htons(0xFFFF))
+			return -EOPNOTSUPP;
+
+		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_S_VLAN,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+	}
+
+	if (ext_masks->vlan_tci) {
+		if (ext_masks->vlan_tci != htons(0xFFFF))
+			return -EOPNOTSUPP;
+
+		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_C_VLAN,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+	}
+
+	return 0;
+}
+
 /**
  * ice_cfg_fdir_xtrct_seq - Configure extraction sequence for the given filter
  * @pf: PF structure
@@ -1215,7 +1321,7 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 	struct device *dev = ice_pf_to_dev(pf);
 	enum ice_fltr_ptype fltr_idx;
 	struct ice_hw *hw = &pf->hw;
-	bool perfect_filter;
+	bool perfect_filter = false;
 	int ret;
 
 	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
@@ -1268,6 +1374,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 		ret = ice_set_fdir_ip6_usr_seg(seg, &fsp->m_u.usr_ip6_spec,
 					       &perfect_filter);
 		break;
+	case ETHER_FLOW:
+		ret = ice_set_ether_flow_seg(seg, &fsp->m_u.ether_spec);
+		if (!ret && (fsp->m_ext.vlan_etype || fsp->m_ext.vlan_tci)) {
+			if (!ice_fdir_vlan_valid(fsp)) {
+				ret = -EINVAL;
+				break;
+			}
+			ret = ice_set_fdir_vlan_seg(seg, &fsp->m_ext);
+		}
+		break;
 	default:
 		ret = -EINVAL;
 	}
@@ -1829,6 +1945,16 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 		input->mask.v6.tc = fsp->m_u.usr_ip6_spec.tclass;
 		input->mask.v6.proto = fsp->m_u.usr_ip6_spec.l4_proto;
 		break;
+	case ETHER_FLOW:
+		ether_addr_copy(input->eth.dst, fsp->h_u.ether_spec.h_dest);
+		ether_addr_copy(input->eth.src, fsp->h_u.ether_spec.h_source);
+		ether_addr_copy(input->eth_mask.dst,
+				fsp->m_u.ether_spec.h_dest);
+		ether_addr_copy(input->eth_mask.src,
+				fsp->m_u.ether_spec.h_source);
+		input->eth.type = fsp->h_u.ether_spec.h_proto;
+		input->eth_mask.type = fsp->m_u.ether_spec.h_proto;
+		break;
 	default:
 		/* not doing un-parsed flow types */
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index d6053cdad686..790f28ccce35 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -4,6 +4,8 @@
 #include "ice_common.h"
 
 /* These are training packet headers used to program flow director filters. */
+static const u8 ice_fdir_eth_pkt[22] = {0};
+
 static const u8 ice_fdir_tcpv4_pkt[] = {
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
@@ -416,6 +418,11 @@ static const u8 ice_fdir_ip6_tun_pkt[] = {
 
 /* Flow Director no-op training packet table */
 static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
+	{
+		ICE_FLTR_PTYPE_NONF_ETH,
+		sizeof(ice_fdir_eth_pkt), ice_fdir_eth_pkt,
+		sizeof(ice_fdir_eth_pkt), ice_fdir_eth_pkt,
+	},
 	{
 		ICE_FLTR_PTYPE_NONF_IPV4_TCP,
 		sizeof(ice_fdir_tcpv4_pkt), ice_fdir_tcpv4_pkt,
@@ -937,6 +944,22 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 	 * perspective. The input from user is from Rx filter perspective.
 	 */
 	switch (flow) {
+	case ICE_FLTR_PTYPE_NONF_ETH:
+		ice_pkt_insert_mac_addr(loc, input->eth.dst);
+		ice_pkt_insert_mac_addr(loc + ETH_ALEN, input->eth.src);
+		if (input->ext_data.vlan_tag ||
+		    input->ext_data.vlan_type) {
+			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_F_OFFSET,
+					   input->ext_data.vlan_type);
+			ice_pkt_insert_u16(loc, ICE_ETH_VLAN_TCI_OFFSET,
+					   input->ext_data.vlan_tag);
+			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_VLAN_OFFSET,
+					   input->eth.type);
+		} else {
+			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_F_OFFSET,
+					   input->eth.type);
+		}
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
 		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
 				   input->ip.v4.src_ip);
@@ -1224,6 +1247,10 @@ ice_fdir_comp_rules(struct ice_fdir_fltr *a,  struct ice_fdir_fltr *b)
 	 * same flow_type.
 	 */
 	switch (flow_type) {
+	case ICE_FLTR_PTYPE_NONF_ETH:
+		if (!memcmp(&a->eth, &b->eth, sizeof(a->eth)))
+			return true;
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
 	case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
 	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 1b9b84490689..0c90865a36c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -8,6 +8,9 @@
 #define ICE_FDIR_MAX_RAW_PKT_SIZE	(512 + ICE_FDIR_TUN_PKT_OFF)
 
 /* macros for offsets into packets for flow director programming */
+#define ICE_ETH_TYPE_F_OFFSET		12
+#define ICE_ETH_VLAN_TCI_OFFSET		14
+#define ICE_ETH_TYPE_VLAN_OFFSET	16
 #define ICE_IPV4_SRC_ADDR_OFFSET	26
 #define ICE_IPV4_DST_ADDR_OFFSET	30
 #define ICE_IPV4_TCP_SRC_PORT_OFFSET	34
@@ -97,6 +100,12 @@ struct ice_rx_flow_userdef {
 	u16 flex_fltr;
 };
 
+struct ice_fdir_eth {
+	u8 dst[ETH_ALEN];
+	u8 src[ETH_ALEN];
+	__be16 type;
+};
+
 struct ice_fdir_v4 {
 	__be32 dst_ip;
 	__be32 src_ip;
@@ -159,6 +168,8 @@ struct ice_fdir_fltr {
 	struct list_head fltr_node;
 	enum ice_fltr_ptype flow_type;
 
+	struct ice_fdir_eth eth, eth_mask;
+
 	union {
 		struct ice_fdir_v4 v4;
 		struct ice_fdir_v6 v6;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a18ca0ff879f..4311b14ab3b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -202,6 +202,7 @@ struct ice_phy_info {
 enum ice_fltr_ptype {
 	/* NONE - used for undef/error */
 	ICE_FLTR_PTYPE_NONF_NONE = 0,
+	ICE_FLTR_PTYPE_NONF_ETH,
 	ICE_FLTR_PTYPE_NONF_IPV4_UDP,
 	ICE_FLTR_PTYPE_NONF_IPV4_TCP,
 	ICE_FLTR_PTYPE_NONF_IPV4_SCTP,
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
