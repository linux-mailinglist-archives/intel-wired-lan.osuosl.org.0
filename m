Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F0F331D83
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 04:26:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFADE83D50;
	Tue,  9 Mar 2021 03:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xhfSRvgq16Qe; Tue,  9 Mar 2021 03:26:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E022835B1;
	Tue,  9 Mar 2021 03:26:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B61C51BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A5C0183595
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 63BsxUMYU5rs for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 03:26:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7FF3583903
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 03:26:17 +0000 (UTC)
IronPort-SDR: 3psSIDlVJIHmnG1NOgveRLBGGvDigrI+Cs0ph2hhXxeaadtrmvQ8cu1EiNTfJXTIB2RK7NPOX4
 Mvt+ETxiFkIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="187512351"
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="187512351"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 19:26:17 -0800
IronPort-SDR: ijQ+ym8BUituQp9f8iAaEiviWsIdLz9wEGgCm8kX0COOmBxldXXlhhxK766DH+w9EhXToMN7CU
 H63JYOYTbZGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; d="scan'208";a="602436898"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga005.fm.intel.com with ESMTP; 08 Mar 2021 19:26:14 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Mar 2021 11:08:08 +0800
Message-Id: <20210309030815.5299-12-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210309030815.5299-1-haiyue.wang@intel.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v5 11/18] ice: Add GTPU FDIR filter for AVF
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

Add new FDIR filter type to forward GTPU packets by matching TEID or QFI.
The filter is only enabled when COMMS DDP package is downloaded.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 117 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  25 +++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  74 +++++++++++
 4 files changed, 219 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index b9c65d0c9271..63541df1bf0f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -40,6 +40,66 @@ static const u8 ice_fdir_ipv4_pkt[] = {
 	0x00, 0x00
 };
 
+static const u8 ice_fdir_udp4_gtpu4_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x4c, 0x00, 0x00, 0x40, 0x00, 0x40, 0x11,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x08, 0x68, 0x08, 0x68, 0x00, 0x00,
+	0x00, 0x00, 0x34, 0xff, 0x00, 0x28, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x85, 0x02, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x00,
+	0x00, 0x1c, 0x00, 0x00, 0x40, 0x00, 0x40, 0x11,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
+static const u8 ice_fdir_tcp4_gtpu4_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x58, 0x00, 0x00, 0x40, 0x00, 0x40, 0x11,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x08, 0x68, 0x08, 0x68, 0x00, 0x00,
+	0x00, 0x00, 0x34, 0xff, 0x00, 0x28, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x85, 0x02, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x00,
+	0x00, 0x28, 0x00, 0x00, 0x40, 0x00, 0x40, 0x06,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+};
+
+static const u8 ice_fdir_icmp4_gtpu4_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x4c, 0x00, 0x00, 0x40, 0x00, 0x40, 0x11,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x08, 0x68, 0x08, 0x68, 0x00, 0x00,
+	0x00, 0x00, 0x34, 0xff, 0x00, 0x28, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x85, 0x02, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x00,
+	0x00, 0x1c, 0x00, 0x00, 0x40, 0x00, 0x40, 0x01,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
+static const u8 ice_fdir_ipv4_gtpu4_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x45, 0x00,
+	0x00, 0x44, 0x00, 0x00, 0x40, 0x00, 0x40, 0x11,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x08, 0x68, 0x08, 0x68, 0x00, 0x00,
+	0x00, 0x00, 0x34, 0xff, 0x00, 0x28, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x85, 0x02, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x00,
+	0x00, 0x14, 0x00, 0x00, 0x40, 0x00, 0x40, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
 static const u8 ice_fdir_non_ip_l2_pkt[] = {
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
@@ -244,6 +304,34 @@ static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
 		sizeof(ice_fdir_ipv4_pkt), ice_fdir_ipv4_pkt,
 		sizeof(ice_fdir_ip4_tun_pkt), ice_fdir_ip4_tun_pkt,
 	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_UDP,
+		sizeof(ice_fdir_udp4_gtpu4_pkt),
+		ice_fdir_udp4_gtpu4_pkt,
+		sizeof(ice_fdir_udp4_gtpu4_pkt),
+		ice_fdir_udp4_gtpu4_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP,
+		sizeof(ice_fdir_tcp4_gtpu4_pkt),
+		ice_fdir_tcp4_gtpu4_pkt,
+		sizeof(ice_fdir_tcp4_gtpu4_pkt),
+		ice_fdir_tcp4_gtpu4_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP,
+		sizeof(ice_fdir_icmp4_gtpu4_pkt),
+		ice_fdir_icmp4_gtpu4_pkt,
+		sizeof(ice_fdir_icmp4_gtpu4_pkt),
+		ice_fdir_icmp4_gtpu4_pkt,
+	},
+	{
+		ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER,
+		sizeof(ice_fdir_ipv4_gtpu4_pkt),
+		ice_fdir_ipv4_gtpu4_pkt,
+		sizeof(ice_fdir_ipv4_gtpu4_pkt),
+		ice_fdir_ipv4_gtpu4_pkt,
+	},
 	{
 		ICE_FLTR_PTYPE_NON_IP_L2,
 		sizeof(ice_fdir_non_ip_l2_pkt), ice_fdir_non_ip_l2_pkt,
@@ -491,6 +579,22 @@ static void ice_pkt_insert_ipv6_addr(u8 *pkt, int offset, __be32 *addr)
 		       sizeof(*addr));
 }
 
+/**
+ * ice_pkt_insert_u6_qfi - insert a u6 value qfi into a memory buffer for gtpu
+ * @pkt: packet buffer
+ * @offset: offset into buffer
+ * @data: 8 bit value to convert and insert into pkt at offset
+ *
+ * This function is designed for inserting qfi (6 bits) for gtpu.
+ */
+static void ice_pkt_insert_u6_qfi(u8 *pkt, int offset, u8 data)
+{
+	u8 ret;
+
+	ret = (data & 0x3F) + (*(pkt + offset) & 0xC0);
+	memcpy(pkt + offset, &ret, sizeof(ret));
+}
+
 /**
  * ice_pkt_insert_u8 - insert a u8 value into a memory buffer.
  * @pkt: packet buffer
@@ -685,6 +789,19 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
 				  input->ip.v4.proto);
 		ice_pkt_insert_mac_addr(loc, input->ext_data.dst_mac);
 		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_UDP:
+	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP:
+	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP:
+	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER:
+		ice_pkt_insert_u32(loc, ICE_IPV4_DST_ADDR_OFFSET,
+				   input->ip.v4.src_ip);
+		ice_pkt_insert_u32(loc, ICE_IPV4_SRC_ADDR_OFFSET,
+				   input->ip.v4.dst_ip);
+		ice_pkt_insert_u32(loc, ICE_IPV4_GTPU_TEID_OFFSET,
+				   input->gtpu_data.teid);
+		ice_pkt_insert_u6_qfi(loc, ICE_IPV4_GTPU_QFI_OFFSET,
+				      input->gtpu_data.qfi);
+		break;
 	case ICE_FLTR_PTYPE_NON_IP_L2:
 		ice_pkt_insert_u16(loc, ICE_MAC_ETHTYPE_OFFSET,
 				   input->ext_data.ether_type);
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 58c927cbc953..c4a6fb76276d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -25,12 +25,14 @@
 #define ICE_IPV6_UDP_DST_PORT_OFFSET	56
 #define ICE_IPV6_SCTP_SRC_PORT_OFFSET	54
 #define ICE_IPV6_SCTP_DST_PORT_OFFSET	56
+#define ICE_MAC_ETHTYPE_OFFSET		12
 #define ICE_IPV4_TOS_OFFSET		15
 #define ICE_IPV4_TTL_OFFSET		22
 #define ICE_IPV6_TC_OFFSET		14
 #define ICE_IPV6_HLIM_OFFSET		21
 #define ICE_IPV6_PROTO_OFFSET		20
-#define ICE_MAC_ETHTYPE_OFFSET		12
+#define ICE_IPV4_GTPU_TEID_OFFSET	46
+#define ICE_IPV4_GTPU_QFI_OFFSET	56
 
 #define ICE_FDIR_MAX_FLTRS		16384
 
@@ -114,6 +116,24 @@ struct ice_fdir_v6 {
 	u8 hlim;
 };
 
+struct ice_fdir_udp_gtp {
+	u8 flags;
+	u8 msg_type;
+	__be16 rsrvd_len;
+	__be32 teid;
+	__be16 rsrvd_seq_nbr;
+	u8 rsrvd_n_pdu_nbr;
+	u8 rsrvd_next_ext_type;
+	u8 rsvrd_ext_len;
+	u8	pdu_type:4,
+		spare:4;
+	u8	ppp:1,
+		rqi:1,
+		qfi:6;
+	u32 rsvrd;
+	u8 next_ext;
+};
+
 struct ice_fdir_extra {
 	u8 dst_mac[ETH_ALEN];	/* dest MAC address */
 	u8 src_mac[ETH_ALEN];	/* src MAC address */
@@ -132,6 +152,9 @@ struct ice_fdir_fltr {
 		struct ice_fdir_v6 v6;
 	} ip, mask;
 
+	struct ice_fdir_udp_gtp gtpu_data;
+	struct ice_fdir_udp_gtp gtpu_mask;
+
 	struct ice_fdir_extra ext_data;
 	struct ice_fdir_extra ext_mask;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index dc8b6cb8e9f2..72c74dfbcb83 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -192,6 +192,10 @@ enum ice_fltr_ptype {
 	ICE_FLTR_PTYPE_NONF_IPV4_TCP,
 	ICE_FLTR_PTYPE_NONF_IPV4_SCTP,
 	ICE_FLTR_PTYPE_NONF_IPV4_OTHER,
+	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_UDP,
+	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP,
+	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP,
+	ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER,
 	ICE_FLTR_PTYPE_NON_IP_L2,
 	ICE_FLTR_PTYPE_FRAG_IPV4,
 	ICE_FLTR_PTYPE_NONF_IPV6_UDP,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 634481accddf..a6bc80ad6d9d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -22,8 +22,19 @@
 	((u64)(((((flow) + (tun_offs)) & ICE_FLOW_PROF_TYPE_M)) | \
 	      (((u64)(vsi) << ICE_FLOW_PROF_VSI_S) & ICE_FLOW_PROF_VSI_M)))
 
+#define GTPU_TEID_OFFSET 4
+#define GTPU_EH_QFI_OFFSET 1
+#define GTPU_EH_QFI_MASK 0x3F
+
+enum ice_fdir_tunnel_type {
+	ICE_FDIR_TUNNEL_TYPE_NONE = 0,
+	ICE_FDIR_TUNNEL_TYPE_GTPU,
+	ICE_FDIR_TUNNEL_TYPE_GTPU_EH,
+};
+
 struct virtchnl_fdir_fltr_conf {
 	struct ice_fdir_fltr input;
+	enum ice_fdir_tunnel_type ttype;
 };
 
 static enum virtchnl_proto_hdr_type vc_pattern_ether[] = {
@@ -85,6 +96,23 @@ static enum virtchnl_proto_hdr_type vc_pattern_ipv6_sctp[] = {
 	VIRTCHNL_PROTO_HDR_NONE,
 };
 
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_GTPU_IP,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
+static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu_eh[] = {
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_GTPU_IP,
+	VIRTCHNL_PROTO_HDR_GTPU_EH,
+	VIRTCHNL_PROTO_HDR_NONE,
+};
+
 struct virtchnl_fdir_pattern_match_item {
 	enum virtchnl_proto_hdr_type *list;
 	u64 input_set;
@@ -112,6 +140,8 @@ static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_comms[] = {
 	{vc_pattern_ipv6_udp,                 0,         NULL},
 	{vc_pattern_ipv6_sctp,                0,         NULL},
 	{vc_pattern_ether,                    0,         NULL},
+	{vc_pattern_ipv4_gtpu,                0,         NULL},
+	{vc_pattern_ipv4_gtpu_eh,             0,         NULL},
 };
 
 struct virtchnl_fdir_inset_map {
@@ -136,6 +166,8 @@ static const struct virtchnl_fdir_inset_map fdir_inset_map[] = {
 	{VIRTCHNL_PROTO_HDR_TCP_DST_PORT, ICE_FLOW_FIELD_IDX_TCP_DST_PORT},
 	{VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT, ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT},
 	{VIRTCHNL_PROTO_HDR_SCTP_DST_PORT, ICE_FLOW_FIELD_IDX_SCTP_DST_PORT},
+	{VIRTCHNL_PROTO_HDR_GTPU_IP_TEID, ICE_FLOW_FIELD_IDX_GTPU_IP_TEID},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH_QFI, ICE_FLOW_FIELD_IDX_GTPU_EH_QFI},
 };
 
 /**
@@ -385,6 +417,7 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
 			 struct ice_flow_seg_info *seg)
 {
 	enum ice_fltr_ptype flow = conf->input.flow_type;
+	enum ice_fdir_tunnel_type ttype = conf->ttype;
 	struct device *dev = ice_pf_to_dev(vf->pf);
 
 	switch (flow) {
@@ -405,6 +438,25 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
 				  ICE_FLOW_SEG_HDR_IPV4 |
 				  ICE_FLOW_SEG_HDR_IPV_OTHER);
 		break;
+	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_UDP:
+	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_TCP:
+	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_ICMP:
+	case ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER:
+		if (ttype == ICE_FDIR_TUNNEL_TYPE_GTPU) {
+			ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_GTPU_IP |
+					  ICE_FLOW_SEG_HDR_IPV4 |
+					  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		} else if (ttype == ICE_FDIR_TUNNEL_TYPE_GTPU_EH) {
+			ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_GTPU_EH |
+					  ICE_FLOW_SEG_HDR_GTPU_IP |
+					  ICE_FLOW_SEG_HDR_IPV4 |
+					  ICE_FLOW_SEG_HDR_IPV_OTHER);
+		} else {
+			dev_dbg(dev, "Invalid tunnel type 0x%x for VF %d\n",
+				flow, vf->vf_id);
+			return -EINVAL;
+		}
+		break;
 	case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
 		ICE_FLOW_SET_HDRS(seg, ICE_FLOW_SEG_HDR_SCTP |
 				  ICE_FLOW_SEG_HDR_IPV4 |
@@ -801,6 +853,7 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 		struct tcphdr *tcph;
 		struct ethhdr *eth;
 		struct iphdr *iph;
+		u8 *rawh;
 
 		switch (hdr->type) {
 		case VIRTCHNL_PROTO_HDR_ETH:
@@ -892,6 +945,21 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 				}
 			}
 			break;
+		case VIRTCHNL_PROTO_HDR_GTPU_IP:
+			rawh = (u8 *)hdr->buffer;
+			input->flow_type = ICE_FLTR_PTYPE_NONF_IPV4_GTPU_IPV4_OTHER;
+
+			if (hdr->field_selector)
+				input->gtpu_data.teid = *(__be32 *)(&rawh[GTPU_TEID_OFFSET]);
+			conf->ttype = ICE_FDIR_TUNNEL_TYPE_GTPU;
+			break;
+		case VIRTCHNL_PROTO_HDR_GTPU_EH:
+			rawh = (u8 *)hdr->buffer;
+
+			if (hdr->field_selector)
+				input->gtpu_data.qfi = rawh[GTPU_EH_QFI_OFFSET] & GTPU_EH_QFI_MASK;
+			conf->ttype = ICE_FDIR_TUNNEL_TYPE_GTPU_EH;
+			break;
 		default:
 			dev_dbg(dev, "Invalid header type 0x:%x for VF %d\n",
 				hdr->type, vf->vf_id);
@@ -1017,12 +1085,18 @@ ice_vc_fdir_comp_rules(struct virtchnl_fdir_fltr_conf *conf_a,
 	struct ice_fdir_fltr *a = &conf_a->input;
 	struct ice_fdir_fltr *b = &conf_b->input;
 
+	if (conf_a->ttype != conf_b->ttype)
+		return false;
 	if (a->flow_type != b->flow_type)
 		return false;
 	if (memcmp(&a->ip, &b->ip, sizeof(a->ip)))
 		return false;
 	if (memcmp(&a->mask, &b->mask, sizeof(a->mask)))
 		return false;
+	if (memcmp(&a->gtpu_data, &b->gtpu_data, sizeof(a->gtpu_data)))
+		return false;
+	if (memcmp(&a->gtpu_mask, &b->gtpu_mask, sizeof(a->gtpu_mask)))
+		return false;
 	if (memcmp(&a->ext_data, &b->ext_data, sizeof(a->ext_data)))
 		return false;
 	if (memcmp(&a->ext_mask, &b->ext_mask, sizeof(a->ext_mask)))
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
