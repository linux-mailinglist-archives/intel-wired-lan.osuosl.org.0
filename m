Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7439221AC52
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 03:03:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D3A82DE9E;
	Fri, 10 Jul 2020 01:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yhXyxaBqce4v; Fri, 10 Jul 2020 01:03:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C63252E015;
	Fri, 10 Jul 2020 01:03:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 925701BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8F67089739
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YmJN8JsPgvO5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 01:03:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5A9B3891CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:03:03 +0000 (UTC)
IronPort-SDR: HDj8urHti/311AoPF1JlHuVBK72WA1h7yk4gNsbdvt8iw2UGTAP5kSSdaXeggBuq6exVaTloQe
 JcUeSCdf9ocA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209663017"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="209663017"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 18:03:03 -0700
IronPort-SDR: 6K1F9XDK1rMJGeIt39JAA5uDgPDdSOD15T7swtw4YCN0xjPNKCYiORogGe2h/lAbbVXQun/I3E
 D4p0qp5EOikA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="458118960"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2020 18:03:02 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Jul 2020 09:06:41 +0800
Message-Id: <20200710010644.33817-14-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20200710010644.33817-1-qi.z.zhang@intel.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
Subject: [Intel-wired-lan] [PATCH S48 v5 13/16] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add new filter type that allow forward non-IP Ethernet packets base on its
ethertype. The filter is only enabled when COMMS DDP package is loaded.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c          | 11 +++++++
 drivers/net/ethernet/intel/ice/ice_fdir.h          |  1 +
 drivers/net/ethernet/intel/ice/ice_flow.c          | 17 +++++++++-
 drivers/net/ethernet/intel/ice/ice_flow.h          |  1 +
 drivers/net/ethernet/intel/ice/ice_type.h          |  1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 38 ++++++++++++++++++++--
 6 files changed, 65 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index d97d9197135d..6055a13488b6 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -40,6 +40,12 @@ static const u8 ice_fdir_ipv4_pkt[] = {
 	0x00, 0x00
 };
 
+static const u8 ice_fdir_non_ip_l2_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+};
+
 static const u8 ice_fdir_tcpv6_pkt[] = {
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x86, 0xDD, 0x60, 0x00,
@@ -239,6 +245,11 @@ static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
 		sizeof(ice_fdir_ip4_tun_pkt), ice_fdir_ip4_tun_pkt,
 	},
 	{
+		ICE_FLTR_PTYPE_NON_IP_L2,
+		sizeof(ice_fdir_non_ip_l2_pkt), ice_fdir_non_ip_l2_pkt,
+		sizeof(ice_fdir_non_ip_l2_pkt), ice_fdir_non_ip_l2_pkt,
+	},
+	{
 		ICE_FLTR_PTYPE_NONF_IPV6_TCP,
 		sizeof(ice_fdir_tcpv6_pkt), ice_fdir_tcpv6_pkt,
 		sizeof(ice_fdir_tcp6_tun_pkt), ice_fdir_tcp6_tun_pkt,
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 6b7d8ccd39b7..a46449f23720 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -108,6 +108,7 @@ struct ice_fdir_v6 {
 
 struct ice_fdir_extra {
 	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
+	__be16 ether_type;      /* for NON_IP_L2 */
 	u32 usr_def[2];		/* user data */
 	__be16 vlan_type;	/* VLAN ethertype */
 	__be16 vlan_tag;	/* VLAN tag info */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 6455b85712b8..c4f2f086cacc 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -571,6 +571,17 @@ static const u32 ice_ptypes_nat_t_esp[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
+static const u32 ice_ptypes_mac_non_ip_ofos[] = {
+	0x00000846, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00400000, 0x03FFF000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
 /* Manage parameters and info. used during the creation of a flow profile */
 struct ice_flow_prof_params {
 	enum ice_block blk;
@@ -760,7 +771,11 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 				   ICE_FLOW_PTYPE_MAX);
 		}
 
-		if (hdrs & ICE_FLOW_SEG_HDR_PPPOE) {
+		if (hdrs & ICE_FLOW_SEG_HDR_ETH_NON_IP) {
+			src = (const unsigned long *)ice_ptypes_mac_non_ip_ofos;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		} else if (hdrs & ICE_FLOW_SEG_HDR_PPPOE) {
 			src = (const unsigned long *)ice_ptypes_pppoe;
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 85d001b99e9f..0733bb57e8dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -138,6 +138,7 @@ enum ice_flow_seg_hdr {
 	ICE_FLOW_SEG_HDR_ESP		= 0x00100000,
 	ICE_FLOW_SEG_HDR_AH		= 0x00200000,
 	ICE_FLOW_SEG_HDR_NAT_T_ESP	= 0x00400000,
+	ICE_FLOW_SEG_HDR_ETH_NON_IP	= 0x00800000,
 	/* The following is an additive bit for ICE_FLOW_SEG_HDR_IPV4 and
 	 * ICE_FLOW_SEG_HDR_IPV6 which include the IPV4 other PTYPEs
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index c2eff68d5469..f58824834342 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -170,6 +170,7 @@ enum ice_fltr_ptype {
 	ICE_FLTR_PTYPE_NONF_IPV4_TCP,
 	ICE_FLTR_PTYPE_NONF_IPV4_SCTP,
 	ICE_FLTR_PTYPE_NONF_IPV4_OTHER,
+	ICE_FLTR_PTYPE_NON_IP_L2,
 	ICE_FLTR_PTYPE_FRAG_IPV4,
 	ICE_FLTR_PTYPE_NONF_IPV6_UDP,
 	ICE_FLTR_PTYPE_NONF_IPV6_TCP,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index f06820af6153..f302458037a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -27,6 +27,11 @@ struct virtchnl_fdir_fltr_conf {
 	struct ice_fdir_fltr input;
 };
 
+static enum virtchnl_proto_hdr_type vc_pattern_ether[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
 static enum virtchnl_proto_hdr_type vc_pattern_ipv4[] = {
 	VIRTCHNL_PROTO_HDR_ETH,
 	VIRTCHNL_PROTO_HDR_IPV4,
@@ -87,7 +92,7 @@ struct virtchnl_fdir_pattern_match_item {
 	u64 *meta;
 };
 
-static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern[] = {
+static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_os[] = {
 	{vc_pattern_ipv4,                     0,         NULL},
 	{vc_pattern_ipv4_tcp,                 0,         NULL},
 	{vc_pattern_ipv4_udp,                 0,         NULL},
@@ -98,6 +103,18 @@ static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern[] = {
 	{vc_pattern_ipv6_sctp,                0,         NULL},
 };
 
+static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_comms[] = {
+	{vc_pattern_ipv4,                     0,         NULL},
+	{vc_pattern_ipv4_tcp,                 0,         NULL},
+	{vc_pattern_ipv4_udp,                 0,         NULL},
+	{vc_pattern_ipv4_sctp,                0,         NULL},
+	{vc_pattern_ipv6,                     0,         NULL},
+	{vc_pattern_ipv6_tcp,                 0,         NULL},
+	{vc_pattern_ipv6_udp,                 0,         NULL},
+	{vc_pattern_ipv6_sctp,                0,         NULL},
+	{vc_pattern_ether,                    0,         NULL},
+};
+
 struct virtchnl_fdir_inset_map {
 	enum virtchnl_proto_hdr_field field;
 	enum ice_flow_field fld;
@@ -372,6 +389,9 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
 	struct device *dev = ice_pf_to_dev(vf->pf);
 
 	switch (flow) {
+	case ICE_FLTR_PTYPE_NON_IP_L2:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ETH_NON_IP);
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
 		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_IPV4 |
 				  ICE_FLOW_SEG_HDR_IPV_OTHER);
@@ -712,8 +732,14 @@ ice_vc_fdir_get_pattern(struct ice_vf *vf, int *len)
 	struct ice_hw *hw;
 
 	hw = &pf->hw;
-	item = vc_fdir_pattern;
-	*len = ARRAY_SIZE(vc_fdir_pattern);
+	if (!strncmp(hw->active_pkg_name, "ICE COMMS Package",
+		     sizeof(hw->active_pkg_name))) {
+		item = vc_fdir_pattern_comms;
+		*len = ARRAY_SIZE(vc_fdir_pattern_comms);
+	} else {
+		item = vc_fdir_pattern_os;
+		*len = ARRAY_SIZE(vc_fdir_pattern_os);
+	}
 
 	return item;
 }
@@ -775,10 +801,16 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 		struct ipv6hdr *ip6h;
 		struct udphdr *udph;
 		struct tcphdr *tcph;
+		struct ethhdr *eth;
 		struct iphdr *iph;
 
 		switch (hdr->type) {
 		case VIRTCHNL_PROTO_HDR_ETH:
+			eth = (struct ethhdr *)hdr->buffer;
+			input->flow_type = ICE_FLTR_PTYPE_NON_IP_L2;
+
+			if (hdr->field_selector)
+				input->ext_data.ether_type = eth->h_proto;
 			break;
 		case VIRTCHNL_PROTO_HDR_IPV4:
 			iph = (struct iphdr *)hdr->buffer;
-- 
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
