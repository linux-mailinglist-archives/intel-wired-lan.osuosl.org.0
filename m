Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EC12223F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 15:35:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC30A8A693;
	Thu, 16 Jul 2020 13:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9hZ+xlKBpTJf; Thu, 16 Jul 2020 13:35:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99BD18A689;
	Thu, 16 Jul 2020 13:35:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C15981BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BBFD08A641
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AFztSUuCnhcr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 13:35:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 602838A477
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:41 +0000 (UTC)
IronPort-SDR: zJHHw0boQC+7vw/snofWTfLeZkz1QL7WdshzKqUImLFV1QIMoL1wHUw79VrBgxOBx3FhA4ralA
 y6f98YYf175Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="147366304"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="147366304"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 06:35:41 -0700
IronPort-SDR: 7NjzLgo0i+5+bfyKkyr6/ublne3I/6a/GDZKoD6T1/IYmgscIpfEGZ5GPO+vNCrL0hPKjj5X1z
 HUyV2wqVj8zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460474278"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2020 06:35:39 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jul 2020 21:39:24 +0800
Message-Id: <20200716133938.46921-3-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20200716133938.46921-1-qi.z.zhang@intel.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
Subject: [Intel-wired-lan] [PATCH S48 v6 02/16] ice: Add more basic protocol
 support for flow filter
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

Add more protocol and field support for flow filter include:
ETH, VLAN, ICMP, ARP and TCP flag.

Signed-off-by: Kevin Scott <kevin.c.scott@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c          |  20 +++
 drivers/net/ethernet/intel/ice/ice_fdir.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_flow.c          | 181 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_flow.h          |  20 +++
 drivers/net/ethernet/intel/ice/ice_protocol_type.h |   6 +
 5 files changed, 222 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 6834df14332f..810c81c33286 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -493,6 +493,16 @@ static void ice_pkt_insert_u32(u8 *pkt, int offset, __be32 data)
 }
 
 /**
+ * ice_pkt_insert_mac_addr - insert a MAC addr into a memory buffer.
+ * @pkt: packet buffer
+ * @addr: MAC address to convert and insert into pkt at offset
+ */
+static void ice_pkt_insert_mac_addr(u8 *pkt, u8 *addr)
+{
+	ether_addr_copy(pkt, addr);
+}
+
+/**
  * ice_fdir_get_gen_prgm_pkt - generate a training packet
  * @hw: pointer to the hardware structure
  * @input: flow director filter data structure
@@ -580,6 +590,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v4.dst_ip);
 		ice_pkt_insert_u16(loc, ICE_IPV4_TCP_SRC_PORT_OFFSET,
 				   input->ip.v4.dst_port);
+		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		if (frag)
 			loc[20] = ICE_FDIR_IPV4_PKT_FLAG_DF;
 		break;
@@ -592,6 +603,9 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v4.dst_ip);
 		ice_pkt_insert_u16(loc, ICE_IPV4_UDP_SRC_PORT_OFFSET,
 				   input->ip.v4.dst_port);
+		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
+		ice_pkt_insert_mac_addr(loc + ETH_ALEN,
+					input->ext_data.src_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
 		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
@@ -602,6 +616,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v4.dst_ip);
 		ice_pkt_insert_u16(loc, ICE_IPV4_SCTP_SRC_PORT_OFFSET,
 				   input->ip.v4.dst_port);
+		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
 		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
@@ -609,6 +624,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 		ice_pkt_insert_u32(loc, ICE_IPV4_SRC_ADDR_OFFSET,
 				   input->ip.v4.dst_ip);
 		ice_pkt_insert_u16(loc, ICE_IPV4_PROTO_OFFSET, 0);
+		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
 		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
@@ -619,6 +635,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v6.src_port);
 		ice_pkt_insert_u16(loc, ICE_IPV6_TCP_SRC_PORT_OFFSET,
 				   input->ip.v6.dst_port);
+		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
 		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
@@ -629,6 +646,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v6.src_port);
 		ice_pkt_insert_u16(loc, ICE_IPV6_UDP_SRC_PORT_OFFSET,
 				   input->ip.v6.dst_port);
+		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
 		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
@@ -639,12 +657,14 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				   input->ip.v6.src_port);
 		ice_pkt_insert_u16(loc, ICE_IPV6_SCTP_SRC_PORT_OFFSET,
 				   input->ip.v6.dst_port);
+		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
 		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_DST_ADDR_OFFSET,
 					 input->ip.v6.src_ip);
 		ice_pkt_insert_ipv6_addr(loc, ICE_IPV6_SRC_ADDR_OFFSET,
 					 input->ip.v6.dst_ip);
+		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
 	default:
 		return ICE_ERR_PARAM;
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 1c587766daab..31623545ebae 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -103,6 +103,7 @@ struct ice_fdir_v6 {
 
 struct ice_fdir_extra {
 	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
+	u8 src_mac[ETH_ALEN];	/* src MAC address */
 	u32 usr_def[2];		/* user data */
 	__be16 vlan_type;	/* VLAN ethertype */
 	__be16 vlan_tag;	/* VLAN tag info */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index d74e5290677f..07baeb2ddca7 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -20,6 +20,17 @@ struct ice_flow_field_info {
 /* Table containing properties of supported protocol header fields */
 static const
 struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
+	/* Ether */
+	/* ICE_FLOW_FIELD_IDX_ETH_DA */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, ETH_ALEN),
+	/* ICE_FLOW_FIELD_IDX_ETH_SA */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, ETH_ALEN, ETH_ALEN),
+	/* ICE_FLOW_FIELD_IDX_S_VLAN */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_VLAN, 12, sizeof(__be16)),
+	/* ICE_FLOW_FIELD_IDX_C_VLAN */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_VLAN, 14, sizeof(__be16)),
+	/* ICE_FLOW_FIELD_IDX_ETH_TYPE */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ETH, 0, sizeof(__be16)),
 	/* IPv4 / IPv6 */
 	/* ICE_FLOW_FIELD_IDX_IPV4_SA */
 	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_IPV4, 12, sizeof(struct in_addr)),
@@ -42,6 +53,24 @@ struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
 	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_SCTP, 0, sizeof(__be16)),
 	/* ICE_FLOW_FIELD_IDX_SCTP_DST_PORT */
 	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_SCTP, 2, sizeof(__be16)),
+	/* ICE_FLOW_FIELD_IDX_TCP_FLAGS */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_TCP, 13, 1),
+	/* ARP */
+	/* ICE_FLOW_FIELD_IDX_ARP_SIP */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 14, sizeof(struct in_addr)),
+	/* ICE_FLOW_FIELD_IDX_ARP_DIP */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 24, sizeof(struct in_addr)),
+	/* ICE_FLOW_FIELD_IDX_ARP_SHA */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 8, ETH_ALEN),
+	/* ICE_FLOW_FIELD_IDX_ARP_DHA */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 18, ETH_ALEN),
+	/* ICE_FLOW_FIELD_IDX_ARP_OP */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ARP, 6, sizeof(__be16)),
+	/* ICMP */
+	/* ICE_FLOW_FIELD_IDX_ICMP_TYPE */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ICMP, 0, 1),
+	/* ICE_FLOW_FIELD_IDX_ICMP_CODE */
+	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_ICMP, 1, 1),
 	/* GRE */
 	/* ICE_FLOW_FIELD_IDX_GRE_KEYID */
 	ICE_FLOW_FLD_INFO(ICE_FLOW_SEG_HDR_GRE, 12,
@@ -50,8 +79,32 @@ struct ice_flow_field_info ice_flds_info[ICE_FLOW_FIELD_IDX_MAX] = {
 
 /* Bitmaps indicating relevant packet types for a particular protocol header
  *
- * Packet types for packets with an Outer/First/Single IPv4 header
+ * Packet types for packets with an Outer/First/Single MAC header
  */
+static const u32 ice_ptypes_mac_ofos[] = {
+	0xFDC00846, 0xBFBF7F7E, 0xF70001DF, 0xFEFDFDFB,
+	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
+	0x00400000, 0x03FFF000, 0x7FFFFFE0, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Innermost/Last MAC VLAN header */
+static const u32 ice_ptypes_macvlan_il[] = {
+	0x00000000, 0xBC000000, 0x000001DF, 0xF0000000,
+	0x0000077E, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Outer/First/Single IPv4 header */
 static const u32 ice_ptypes_ipv4_ofos[] = {
 	0x1DC00000, 0x04000800, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
@@ -99,6 +152,18 @@ static const u32 ice_ptypes_ipv6_il[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
+/* Packet types for packets with an Outermost/First ARP header */
+static const u32 ice_ptypes_arp_of[] = {
+	0x00000800, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
 /* UDP Packet types for non-tunneled packets or tunneled
  * packets with inner UDP.
  */
@@ -134,6 +199,29 @@ static const u32 ice_ptypes_sctp_il[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Outermost/First ICMP header */
+static const u32 ice_ptypes_icmp_of[] = {
+	0x10000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+};
+
+/* Packet types for packets with an Innermost/Last ICMP header */
+static const u32 ice_ptypes_icmp_il[] = {
+	0x00000000, 0x02040408, 0x40000102, 0x08101020,
+	0x00000408, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x42108000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
@@ -149,6 +237,18 @@ static const u32 ice_ptypes_gre_of[] = {
 	0x00000000, 0x00000000, 0x00000000, 0x00000000,
 };
 
+/* Packet types for packets with an Innermost/Last MAC header */
+static const u32 ice_ptypes_mac_il[] = {
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00000000, 0x00000000,
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
@@ -164,9 +264,11 @@ struct ice_flow_prof_params {
 };
 
 #define ICE_FLOW_SEG_HDRS_L3_MASK	\
-	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6)
+	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6 | \
+	 ICE_FLOW_SEG_HDR_ARP)
 #define ICE_FLOW_SEG_HDRS_L4_MASK	\
-	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_SCTP)
+	(ICE_FLOW_SEG_HDR_ICMP | ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | \
+	 ICE_FLOW_SEG_HDR_SCTP)
 
 /**
  * ice_flow_val_hdrs - validates packet segments for valid protocol headers
@@ -195,8 +297,11 @@ ice_flow_val_hdrs(struct ice_flow_seg_info *segs, u8 segs_cnt)
 
 /* Sizes of fixed known protocol headers without header options */
 #define ICE_FLOW_PROT_HDR_SZ_MAC	14
+#define ICE_FLOW_PROT_HDR_SZ_MAC_VLAN	(ICE_FLOW_PROT_HDR_SZ_MAC + 2)
 #define ICE_FLOW_PROT_HDR_SZ_IPV4	20
 #define ICE_FLOW_PROT_HDR_SZ_IPV6	40
+#define ICE_FLOW_PROT_HDR_SZ_ARP	28
+#define ICE_FLOW_PROT_HDR_SZ_ICMP	8
 #define ICE_FLOW_PROT_HDR_SZ_TCP	20
 #define ICE_FLOW_PROT_HDR_SZ_UDP	8
 #define ICE_FLOW_PROT_HDR_SZ_SCTP	12
@@ -208,16 +313,27 @@ ice_flow_val_hdrs(struct ice_flow_seg_info *segs, u8 segs_cnt)
  */
 static u16 ice_flow_calc_seg_sz(struct ice_flow_prof_params *params, u8 seg)
 {
-	u16 sz = ICE_FLOW_PROT_HDR_SZ_MAC;
+	u16 sz;
+
+	/* L2 headers */
+	sz = (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_VLAN) ?
+		ICE_FLOW_PROT_HDR_SZ_MAC_VLAN : ICE_FLOW_PROT_HDR_SZ_MAC;
 
 	/* L3 headers */
 	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV4)
 		sz += ICE_FLOW_PROT_HDR_SZ_IPV4;
 	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV6)
 		sz += ICE_FLOW_PROT_HDR_SZ_IPV6;
+	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_ARP)
+		sz += ICE_FLOW_PROT_HDR_SZ_ARP;
+	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDRS_L4_MASK)
+		/* A L3 header is required if L4 is specified */
+		return 0;
 
 	/* L4 headers */
-	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_TCP)
+	if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_ICMP)
+		sz += ICE_FLOW_PROT_HDR_SZ_ICMP;
+	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_TCP)
 		sz += ICE_FLOW_PROT_HDR_SZ_TCP;
 	else if (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_UDP)
 		sz += ICE_FLOW_PROT_HDR_SZ_UDP;
@@ -250,6 +366,25 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 
 		hdrs = prof->segs[i].hdrs;
 
+		if (hdrs & ICE_FLOW_SEG_HDR_ETH) {
+			src = !i ? (const unsigned long *)ice_ptypes_mac_ofos :
+				(const unsigned long *)ice_ptypes_mac_il;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		}
+
+		if (i && hdrs & ICE_FLOW_SEG_HDR_VLAN) {
+			src = (const unsigned long *)ice_ptypes_macvlan_il;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
+		}
+
+		if (!i && hdrs & ICE_FLOW_SEG_HDR_ARP) {
+			bitmap_and(params->ptypes, params->ptypes,
+				   (const unsigned long *)ice_ptypes_arp_of,
+				   ICE_FLOW_PTYPE_MAX);
+		}
+
 		if (hdrs & ICE_FLOW_SEG_HDR_IPV4) {
 			src = !i ? (const unsigned long *)ice_ptypes_ipv4_ofos :
 				(const unsigned long *)ice_ptypes_ipv4_il;
@@ -274,6 +409,13 @@ ice_flow_proc_seg_hdrs(struct ice_flow_prof_params *params)
 			src = (const unsigned long *)ice_ptypes_sctp_il;
 			bitmap_and(params->ptypes, params->ptypes, src,
 				   ICE_FLOW_PTYPE_MAX);
+		}
+
+		if (hdrs & ICE_FLOW_SEG_HDR_ICMP) {
+			src = !i ? (const unsigned long *)ice_ptypes_icmp_of :
+				(const unsigned long *)ice_ptypes_icmp_il;
+			bitmap_and(params->ptypes, params->ptypes, src,
+				   ICE_FLOW_PTYPE_MAX);
 		} else if (hdrs & ICE_FLOW_SEG_HDR_GRE) {
 			if (!i) {
 				src = (const unsigned long *)ice_ptypes_gre_of;
@@ -310,6 +452,15 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 	flds = params->prof->segs[seg].fields;
 
 	switch (fld) {
+	case ICE_FLOW_FIELD_IDX_ETH_DA:
+	case ICE_FLOW_FIELD_IDX_ETH_SA:
+	case ICE_FLOW_FIELD_IDX_S_VLAN:
+	case ICE_FLOW_FIELD_IDX_C_VLAN:
+		prot_id = seg == 0 ? ICE_PROT_MAC_OF_OR_S : ICE_PROT_MAC_IL;
+		break;
+	case ICE_FLOW_FIELD_IDX_ETH_TYPE:
+		prot_id = seg == 0 ? ICE_PROT_ETYPE_OL : ICE_PROT_ETYPE_IL;
+		break;
 	case ICE_FLOW_FIELD_IDX_IPV4_SA:
 	case ICE_FLOW_FIELD_IDX_IPV4_DA:
 		prot_id = seg == 0 ? ICE_PROT_IPV4_OF_OR_S : ICE_PROT_IPV4_IL;
@@ -320,6 +471,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 		break;
 	case ICE_FLOW_FIELD_IDX_TCP_SRC_PORT:
 	case ICE_FLOW_FIELD_IDX_TCP_DST_PORT:
+	case ICE_FLOW_FIELD_IDX_TCP_FLAGS:
 		prot_id = ICE_PROT_TCP_IL;
 		break;
 	case ICE_FLOW_FIELD_IDX_UDP_SRC_PORT:
@@ -330,6 +482,19 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
 	case ICE_FLOW_FIELD_IDX_SCTP_DST_PORT:
 		prot_id = ICE_PROT_SCTP_IL;
 		break;
+	case ICE_FLOW_FIELD_IDX_ARP_SIP:
+	case ICE_FLOW_FIELD_IDX_ARP_DIP:
+	case ICE_FLOW_FIELD_IDX_ARP_SHA:
+	case ICE_FLOW_FIELD_IDX_ARP_DHA:
+	case ICE_FLOW_FIELD_IDX_ARP_OP:
+		prot_id = ICE_PROT_ARP_OF;
+		break;
+	case ICE_FLOW_FIELD_IDX_ICMP_TYPE:
+	case ICE_FLOW_FIELD_IDX_ICMP_CODE:
+		/* ICMP type and code share the same extraction seq. entry */
+		prot_id = (params->prof->segs[seg].hdrs & ICE_FLOW_SEG_HDR_IPV4) ?
+				ICE_PROT_ICMP_IL : ICE_PROT_ICMPV6_IL;
+		break;
 	case ICE_FLOW_FIELD_IDX_GRE_KEYID:
 		prot_id = ICE_PROT_GRE_OF;
 		break;
@@ -1093,6 +1258,9 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
 	seg->raws_cnt++;
 }
 
+#define ICE_FLOW_RSS_SEG_HDR_L2_MASKS \
+	(ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN)
+
 #define ICE_FLOW_RSS_SEG_HDR_L3_MASKS \
 	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6)
 
@@ -1100,7 +1268,8 @@ ice_flow_add_fld_raw(struct ice_flow_seg_info *seg, u16 off, u8 len,
 	(ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_SCTP)
 
 #define ICE_FLOW_RSS_SEG_HDR_VAL_MASKS \
-	(ICE_FLOW_RSS_SEG_HDR_L3_MASKS | \
+	(ICE_FLOW_RSS_SEG_HDR_L2_MASKS | \
+	 ICE_FLOW_RSS_SEG_HDR_L3_MASKS | \
 	 ICE_FLOW_RSS_SEG_HDR_L4_MASKS)
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 3913da2116d2..234f8f5c99cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -38,8 +38,12 @@
  */
 enum ice_flow_seg_hdr {
 	ICE_FLOW_SEG_HDR_NONE		= 0x00000000,
+	ICE_FLOW_SEG_HDR_ETH		= 0x00000001,
+	ICE_FLOW_SEG_HDR_VLAN		= 0x00000002,
 	ICE_FLOW_SEG_HDR_IPV4		= 0x00000004,
 	ICE_FLOW_SEG_HDR_IPV6		= 0x00000008,
+	ICE_FLOW_SEG_HDR_ARP		= 0x00000010,
+	ICE_FLOW_SEG_HDR_ICMP		= 0x00000020,
 	ICE_FLOW_SEG_HDR_TCP		= 0x00000040,
 	ICE_FLOW_SEG_HDR_UDP		= 0x00000080,
 	ICE_FLOW_SEG_HDR_SCTP		= 0x00000100,
@@ -47,6 +51,12 @@ enum ice_flow_seg_hdr {
 };
 
 enum ice_flow_field {
+	/* L2 */
+	ICE_FLOW_FIELD_IDX_ETH_DA,
+	ICE_FLOW_FIELD_IDX_ETH_SA,
+	ICE_FLOW_FIELD_IDX_S_VLAN,
+	ICE_FLOW_FIELD_IDX_C_VLAN,
+	ICE_FLOW_FIELD_IDX_ETH_TYPE,
 	/* L3 */
 	ICE_FLOW_FIELD_IDX_IPV4_SA,
 	ICE_FLOW_FIELD_IDX_IPV4_DA,
@@ -59,6 +69,16 @@ enum ice_flow_field {
 	ICE_FLOW_FIELD_IDX_UDP_DST_PORT,
 	ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT,
 	ICE_FLOW_FIELD_IDX_SCTP_DST_PORT,
+	ICE_FLOW_FIELD_IDX_TCP_FLAGS,
+	/* ARP */
+	ICE_FLOW_FIELD_IDX_ARP_SIP,
+	ICE_FLOW_FIELD_IDX_ARP_DIP,
+	ICE_FLOW_FIELD_IDX_ARP_SHA,
+	ICE_FLOW_FIELD_IDX_ARP_DHA,
+	ICE_FLOW_FIELD_IDX_ARP_OP,
+	/* ICMP */
+	ICE_FLOW_FIELD_IDX_ICMP_TYPE,
+	ICE_FLOW_FIELD_IDX_ICMP_CODE,
 	/* GRE */
 	ICE_FLOW_FIELD_IDX_GRE_KEYID,
 	/* The total number of enums must not exceed 64 */
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 7f4c1ec1eff2..fac5f15a692c 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -13,6 +13,9 @@
 enum ice_prot_id {
 	ICE_PROT_ID_INVAL	= 0,
 	ICE_PROT_MAC_OF_OR_S	= 1,
+	ICE_PROT_MAC_IL		= 4,
+	ICE_PROT_ETYPE_OL	= 9,
+	ICE_PROT_ETYPE_IL	= 10,
 	ICE_PROT_IPV4_OF_OR_S	= 32,
 	ICE_PROT_IPV4_IL	= 33,
 	ICE_PROT_IPV6_OF_OR_S	= 40,
@@ -22,6 +25,9 @@ enum ice_prot_id {
 	ICE_PROT_UDP_IL_OR_S	= 53,
 	ICE_PROT_GRE_OF		= 64,
 	ICE_PROT_SCTP_IL	= 96,
+	ICE_PROT_ICMP_IL	= 98,
+	ICE_PROT_ICMPV6_IL	= 100,
+	ICE_PROT_ARP_OF		= 118,
 	ICE_PROT_META_ID	= 255, /* when offset == metadata */
 	ICE_PROT_INVALID	= 255  /* when offset == ICE_FV_OFFSET_INVAL */
 };
-- 
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
