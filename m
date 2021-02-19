Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D879D31F9C8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 14:19:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 754A5606EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 13:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LEpKC54kFWce for <lists+intel-wired-lan@lfdr.de>;
	Fri, 19 Feb 2021 13:19:22 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 7A672606FD; Fri, 19 Feb 2021 13:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89F1C60705;
	Fri, 19 Feb 2021 13:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8671A1BF393
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 80ABA87129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VzvnQIVzBwTo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Feb 2021 13:18:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B17138714A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 13:17:27 +0000 (UTC)
IronPort-SDR: kMqxOCxkcoFV7rrFWUGdA5GL1MWNjtzGmR0nQ7dPU0tryF2Cd4Db/4ZvxPHCg+C/9XIbHtJfUV
 dQHMmKSCGv3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="171507273"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="171507273"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 05:17:27 -0800
IronPort-SDR: 9o5vhLF0If7A2NwJS61YtA2xXYTJhQYYWyV3rihhdre8951M0RC4yHxMCwwtBzMTp99eqca3y1
 mW1yTJzheiSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="401025291"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by orsmga008.jf.intel.com with ESMTP; 19 Feb 2021 05:17:25 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Feb 2021 20:59:53 +0800
Message-Id: <20210219130001.49600-11-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210219130001.49600-1-haiyue.wang@intel.com>
References: <20210219130001.49600-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v4 10/18] ice: Add non-IP Layer2 protocol
 FDIR filter for AVF
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
Cc: cunming.liang@intel.com, Yahui Cao <yahui.cao@intel.com>,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

Add new filter type that allow forward non-IP Ethernet packets base on its
ethertype. The filter is only enabled when COMMS DDP package is loaded.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 15 +++++++
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_flow.c     | 17 +++++++-
 drivers/net/ethernet/intel/ice/ice_flow.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 41 +++++++++++++++++--
 6 files changed, 73 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 5f8d7a9ca068..b9c65d0c9271 100644
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
@@ -238,6 +244,11 @@ static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
 		sizeof(ice_fdir_ipv4_pkt), ice_fdir_ipv4_pkt,
 		sizeof(ice_fdir_ip4_tun_pkt), ice_fdir_ip4_tun_pkt,
 	},
+	{
+		ICE_FLTR_PTYPE_NON_IP_L2,
+		sizeof(ice_fdir_non_ip_l2_pkt), ice_fdir_non_ip_l2_pkt,
+		sizeof(ice_fdir_non_ip_l2_pkt), ice_fdir_non_ip_l2_pkt,
+	},
 	{
 		ICE_FLTR_PTYPE_NONF_IPV6_TCP,
 		sizeof(ice_fdir_tcpv6_pkt), ice_fdir_tcpv6_pkt,
@@ -674,6 +685,10 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				  input->ip.v4.proto);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
+	case ICE_FLTR_PTYPE_NON_IP_L2:
+		ice_pkt_insert_u16(loc, ICE_MAC_ETHTYPE_OFFSET,
+				   input->ext_data.ether_type);
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
 		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
 					 input->ip.v6.src_ip);
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index adf237925b3c..58c927cbc953 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -30,6 +30,7 @@
 #define ICE_IPV6_TC_OFFSET		14
 #define ICE_IPV6_HLIM_OFFSET		21
 #define ICE_IPV6_PROTO_OFFSET		20
+#define ICE_MAC_ETHTYPE_OFFSET		12
 
 #define ICE_FDIR_MAX_FLTRS		16384
 
@@ -116,6 +117,7 @@ struct ice_fdir_v6 {
 struct ice_fdir_extra {
 	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
 	u8 src_mac[ETH_ALEN];	/* src MAC address */
+	__be16 ether_type;      /* for NON_IP_L2 */
 	u32 usr_def[2];		/* user data */
 	__be16 vlan_type;	/* VLAN ethertype */
 	__be16 vlan_tag;	/* VLAN tag info */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 6260650ba809..d191619df320 100644
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
index a5434fcbce25..6d668216423c 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -135,6 +135,7 @@ enum ice_flow_seg_hdr {
 	ICE_FLOW_SEG_HDR_ESP		= 0x00100000,
 	ICE_FLOW_SEG_HDR_AH		= 0x00200000,
 	ICE_FLOW_SEG_HDR_NAT_T_ESP	= 0x00400000,
+	ICE_FLOW_SEG_HDR_ETH_NON_IP	= 0x00800000,
 	/* The following is an additive bit for ICE_FLOW_SEG_HDR_IPV4 and
 	 * ICE_FLOW_SEG_HDR_IPV6 which include the IPV4 other PTYPEs
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 7a57d5f88c96..dc8b6cb8e9f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -192,6 +192,7 @@ enum ice_fltr_ptype {
 	ICE_FLTR_PTYPE_NONF_IPV4_TCP,
 	ICE_FLTR_PTYPE_NONF_IPV4_SCTP,
 	ICE_FLTR_PTYPE_NONF_IPV4_OTHER,
+	ICE_FLTR_PTYPE_NON_IP_L2,
 	ICE_FLTR_PTYPE_FRAG_IPV4,
 	ICE_FLTR_PTYPE_NONF_IPV6_UDP,
 	ICE_FLTR_PTYPE_NONF_IPV6_TCP,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 9eeff91f9998..634481accddf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -26,6 +26,11 @@ struct virtchnl_fdir_fltr_conf {
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
@@ -86,7 +91,18 @@ struct virtchnl_fdir_pattern_match_item {
 	u64 *meta;
 };
 
-static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern[] = {
+static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_os[] = {
+	{vc_pattern_ipv4,                     0,         NULL},
+	{vc_pattern_ipv4_tcp,                 0,         NULL},
+	{vc_pattern_ipv4_udp,                 0,         NULL},
+	{vc_pattern_ipv4_sctp,                0,         NULL},
+	{vc_pattern_ipv6,                     0,         NULL},
+	{vc_pattern_ipv6_tcp,                 0,         NULL},
+	{vc_pattern_ipv6_udp,                 0,         NULL},
+	{vc_pattern_ipv6_sctp,                0,         NULL},
+};
+
+static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_comms[] = {
 	{vc_pattern_ipv4,                     0,         NULL},
 	{vc_pattern_ipv4_tcp,                 0,         NULL},
 	{vc_pattern_ipv4_udp,                 0,         NULL},
@@ -95,6 +111,7 @@ static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern[] = {
 	{vc_pattern_ipv6_tcp,                 0,         NULL},
 	{vc_pattern_ipv6_udp,                 0,         NULL},
 	{vc_pattern_ipv6_sctp,                0,         NULL},
+	{vc_pattern_ether,                    0,         NULL},
 };
 
 struct virtchnl_fdir_inset_map {
@@ -371,6 +388,9 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
 	struct device *dev = ice_pf_to_dev(vf->pf);
 
 	switch (flow) {
+	case ICE_FLTR_PTYPE_NON_IP_L2:
+		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_ETH_NON_IP);
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
 		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_IPV4 |
 				  ICE_FLOW_SEG_HDR_IPV_OTHER);
@@ -707,9 +727,18 @@ static const struct virtchnl_fdir_pattern_match_item *
 ice_vc_fdir_get_pattern(struct ice_vf *vf, int *len)
 {
 	const struct virtchnl_fdir_pattern_match_item *item;
+	struct ice_pf *pf = vf->pf;
+	struct ice_hw *hw;
 
-	item = vc_fdir_pattern;
-	*len = ARRAY_SIZE(vc_fdir_pattern);
+	hw = &pf->hw;
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
@@ -770,10 +799,16 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
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
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
