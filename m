Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06A1896C2F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 12:24:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83072416E7;
	Wed,  3 Apr 2024 10:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0taM5HdTgJK2; Wed,  3 Apr 2024 10:24:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29946416B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712139870;
	bh=bFCusQXTEJPSqlCiKaM1AsrTUPFslAoksS0S8KEmahM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aPlrD3C8IrH3Fya00GhGqF/1ZSz+H2e9vPUMkjwqANKfTNMRYelOVSCQppNj8nhrH
	 zGivGmvxK3TTcJ1GwY/JR0XRjUsXsMsn3U7DXyWqvZnt8HOzZfNQJe9ZY9SGILyymA
	 ErHHHkjdR0Pmw6CWpgKtdIciyA1qGU1UDM+aOboZrTPgXEWOSe57YKofQw0gaLfWGG
	 suZviZWCZo+D5e9kUSguddxsTFEOOgNhyhJvmi1GK5JAAtSlyAE4nGacDo4BbesDmX
	 5vWdwu7HcFyAIiIWV2HxlvJkPYZAEUiZ9wkal8Ec39a5e9HbAhe4WBGnEpfZyDphSo
	 7W4xxnG+nvSZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29946416B4;
	Wed,  3 Apr 2024 10:24:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB4FE1BF349
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:24:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFADC40127
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:24:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ie4zkFiDMpEO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 10:24:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lukasz.plachno@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC315416D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC315416D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC315416D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 10:24:24 +0000 (UTC)
X-CSE-ConnectionGUID: ou8eqZecTEq/ieSGY0bXDQ==
X-CSE-MsgGUID: JjAZT8S9QnCy9R5C6qrtYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7282839"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7282839"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:24:24 -0700
X-CSE-ConnectionGUID: vCvN94t3Q7aSnlFZCOY0bg==
X-CSE-MsgGUID: CWL/sfVrT7GLBtM6/t1Twg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18292420"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2024 03:24:20 -0700
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.245.83.30])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 87515369EC;
 Wed,  3 Apr 2024 11:24:17 +0100 (IST)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 12:24:02 +0200
Message-Id: <20240403102402.20144-3-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403102402.20144-1-lukasz.plachno@intel.com>
References: <20240403102402.20144-1-lukasz.plachno@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712139864; x=1743675864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uNOLacg2qm0+fPm3ZyE0z6ok+kKEpqyRQXW12oUvqx0=;
 b=LJ65ADfFzxlNiA+PDPtXM2eKXWnv/QM1dMO+c+igzyPHqG5IJ7I8zd42
 N+4Rof/0+4sqB2PpNLCSm5YPPupCRAlfM2SX9rGD2/zxZZP7QPrDOH/Sn
 uv4TDHbr5yaNTmveZ+1LTKWOaVI9HEhdpz48J6mmftZZBhxcSnjbez8dQ
 mt9NoTBT6FW0nVfpyidpJyPVyjde5YTDLKRoNHXQ44Xk/8XqXPhdvagXJ
 /vSQryFFg1xD/ygItvEKJc2vaqgnK6iOcDOsTS/8bYxqAXAJpQ7LZdOUs
 Y80LfioSuOgXqYIz6vsRdSDI0K0feUzYkc1Bxz8leUU46P4EV8J4Zf7z4
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LJ65ADfF
Subject: [Intel-wired-lan] [PATCH iwl-next v8 2/2] ice: Implement 'flow-type
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 Jakub Buchocki <jakubx.buchocki@intel.com>, aleksander.lobakin@intel.com,
 Lukasz Plachno <lukasz.plachno@intel.com>, horms@kernel.org,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Buchocki <jakubx.buchocki@intel.com>

Add support for 'flow-type ether' Flow Director rules via ethtool.

Create packet segment info for filter configuration based on ethtool
command parameters. Reuse infrastructure already created for
ipv4 and ipv6 flows to convert packet segment into
extraction sequence, which is later used to program the filter
inside Flow Director block of the Rx pipeline.

Rules not containing masks are processed by the Flow Director,
and support the following set of input parameters in all combinations:
src, dst, proto, vlan-etype, vlan, action.

It is possible to specify address mask in ethtool parameters but only
00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
The same applies to proto, vlan-etype and vlan masks:
only 0x0000 and 0xffff masks are valid.

Testing:
  (DUT) iperf3 -s
  (DUT) ethtool -U ens785f0np0 flow-type ether dst <ens785f0np0 mac> \
        action 10
  (DUT) watch 'ethtool -S ens785f0np0 | grep rx_queue'
  (LP)  iperf3 -c ${DUT_IP}

  Counters increase only for:
    'rx_queue_10_packets'
    'rx_queue_10_bytes'

Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 138 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  26 ++++
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 169 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 9a1a04f5f146..ab3121aee412 100644
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
@@ -137,6 +141,10 @@ int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd)
 	memset(&fsp->m_ext, 0, sizeof(fsp->m_ext));
 
 	switch (fsp->flow_type) {
+	case ETHER_FLOW:
+		fsp->h_u.ether_spec = rule->eth;
+		fsp->m_u.ether_spec = rule->eth_mask;
+		break;
 	case IPV4_USER_FLOW:
 		fsp->h_u.usr_ip4_spec.ip_ver = ETH_RX_NFC_IP4;
 		fsp->h_u.usr_ip4_spec.proto = 0;
@@ -1193,6 +1201,120 @@ ice_set_fdir_ip6_usr_seg(struct ice_flow_seg_info *seg,
 	return 0;
 }
 
+/**
+ * ice_fdir_vlan_valid - validate VLAN data for Flow Director rule
+ * @dev: network interface device structure
+ * @fsp: pointer to ethtool Rx flow specification
+ *
+ * Return: true if vlan data is valid, false otherwise
+ */
+static bool ice_fdir_vlan_valid(struct device *dev,
+				struct ethtool_rx_flow_spec *fsp)
+{
+	if (fsp->m_ext.vlan_etype && !eth_type_vlan(fsp->h_ext.vlan_etype))
+		return false;
+
+	if (fsp->m_ext.vlan_tci && ntohs(fsp->h_ext.vlan_tci) >= VLAN_N_VID)
+		return false;
+
+	/* proto and vlan must have vlan-etype defined */
+	if (fsp->m_u.ether_spec.h_proto && fsp->m_ext.vlan_tci &&
+	    !fsp->m_ext.vlan_etype) {
+		dev_warn(dev, "Filter with proto and vlan require also vlan-etype");
+		return false;
+	}
+
+	return true;
+}
+
+/**
+ * ice_set_ether_flow_seg
+ * @dev: network interface device structure
+ * @seg: flow segment for programming
+ * @eth_spec: mask data from ethtool
+ *
+ * Return: 0 on success and errno in case of error.
+ */
+static int ice_set_ether_flow_seg(struct device *dev,
+				  struct ice_flow_seg_info *seg,
+				  struct ethhdr *eth_spec)
+{
+	ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ETH);
+
+	/* empty rules are not valid */
+	if (is_zero_ether_addr(eth_spec->h_source) &&
+	    is_zero_ether_addr(eth_spec->h_dest) &&
+	    !eth_spec->h_proto)
+		return -EINVAL;
+
+	/* Ethertype */
+	if (eth_spec->h_proto == htons(0xFFFF)) {
+		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_TYPE,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+	} else if (eth_spec->h_proto) {
+		dev_warn(dev, "Only 0x0000 or 0xffff proto mask is allowed for flow-type ether");
+		return -EOPNOTSUPP;
+	}
+
+	/* Source MAC address */
+	if (is_broadcast_ether_addr(eth_spec->h_source))
+		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_SA,
+				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+	else if (!is_zero_ether_addr(eth_spec->h_source))
+		goto err_mask;
+
+	/* Destination MAC address */
+	if (is_broadcast_ether_addr(eth_spec->h_dest))
+		ice_flow_set_fld(seg, ICE_FLOW_FIELD_IDX_ETH_DA,
+				 ICE_FLOW_FLD_OFF_INVAL, ICE_FLOW_FLD_OFF_INVAL,
+				 ICE_FLOW_FLD_OFF_INVAL, false);
+	else if (!is_zero_ether_addr(eth_spec->h_dest))
+		goto err_mask;
+
+	return 0;
+
+err_mask:
+	dev_warn(dev, "Only 00:00:00:00:00:00 or ff:ff:ff:ff:ff:ff MAC address mask is allowed for flow-type ether");
+	return -EOPNOTSUPP;
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
@@ -1209,7 +1331,7 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 	struct device *dev = ice_pf_to_dev(pf);
 	enum ice_fltr_ptype fltr_idx;
 	struct ice_hw *hw = &pf->hw;
-	bool perfect_filter;
+	bool perfect_filter = false;
 	int ret;
 
 	seg = devm_kzalloc(dev, sizeof(*seg), GFP_KERNEL);
@@ -1262,6 +1384,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 		ret = ice_set_fdir_ip6_usr_seg(seg, &fsp->m_u.usr_ip6_spec,
 					       &perfect_filter);
 		break;
+	case ETHER_FLOW:
+		ret = ice_set_ether_flow_seg(dev, seg, &fsp->m_u.ether_spec);
+		if (!ret && (fsp->m_ext.vlan_etype || fsp->m_ext.vlan_tci)) {
+			if (!ice_fdir_vlan_valid(dev, fsp)) {
+				ret = -EINVAL;
+				break;
+			}
+			ret = ice_set_fdir_vlan_seg(seg, &fsp->m_ext);
+		}
+		break;
 	default:
 		ret = -EINVAL;
 	}
@@ -1823,6 +1955,10 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 		input->mask.v6.tc = fsp->m_u.usr_ip6_spec.tclass;
 		input->mask.v6.proto = fsp->m_u.usr_ip6_spec.l4_proto;
 		break;
+	case ETHER_FLOW:
+		input->eth = fsp->h_u.ether_spec;
+		input->eth_mask = fsp->m_u.ether_spec;
+		break;
 	default:
 		/* not doing un-parsed flow types */
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 1f7b26f38818..26b357c0ae15 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -4,6 +4,8 @@
 #include "ice_common.h"
 
 /* These are training packet headers used to program flow director filters. */
+static const u8 ice_fdir_eth_pkt[22];
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
@@ -914,6 +921,21 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 	 * perspective. The input from user is from Rx filter perspective.
 	 */
 	switch (flow) {
+	case ICE_FLTR_PTYPE_NONF_ETH:
+		ice_pkt_insert_mac_addr(loc, input->eth.h_dest);
+		ice_pkt_insert_mac_addr(loc + ETH_ALEN, input->eth.h_source);
+		if (input->ext_data.vlan_tag || input->ext_data.vlan_type) {
+			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_F_OFFSET,
+					   input->ext_data.vlan_type);
+			ice_pkt_insert_u16(loc, ICE_ETH_VLAN_TCI_OFFSET,
+					   input->ext_data.vlan_tag);
+			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_VLAN_OFFSET,
+					   input->eth.h_proto);
+		} else {
+			ice_pkt_insert_u16(loc, ICE_ETH_TYPE_F_OFFSET,
+					   input->eth.h_proto);
+		}
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
 		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
 				   input->ip.v4.src_ip);
@@ -1201,6 +1223,10 @@ ice_fdir_comp_rules(struct ice_fdir_fltr *a,  struct ice_fdir_fltr *b)
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
index 1b9b84490689..021ecbac7848 100644
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
@@ -159,6 +162,8 @@ struct ice_fdir_fltr {
 	struct list_head fltr_node;
 	enum ice_fltr_ptype flow_type;
 
+	struct ethhdr eth, eth_mask;
+
 	union {
 		struct ice_fdir_v4 v4;
 		struct ice_fdir_v6 v6;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 08ec5efdafe6..4049ae40c4fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -203,6 +203,7 @@ struct ice_phy_info {
 enum ice_fltr_ptype {
 	/* NONE - used for undef/error */
 	ICE_FLTR_PTYPE_NONF_NONE = 0,
+	ICE_FLTR_PTYPE_NONF_ETH,
 	ICE_FLTR_PTYPE_NONF_IPV4_UDP,
 	ICE_FLTR_PTYPE_NONF_IPV4_TCP,
 	ICE_FLTR_PTYPE_NONF_IPV4_SCTP,
-- 
2.34.1

