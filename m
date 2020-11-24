Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4149B2C1E62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Nov 2020 07:38:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93D4187143;
	Tue, 24 Nov 2020 06:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vBLA8suD1yMo; Tue, 24 Nov 2020 06:38:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 734A187158;
	Tue, 24 Nov 2020 06:38:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A211A1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 979FB86661
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ixRoFZABb-WA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 06:38:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4A7F086723
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:38:30 +0000 (UTC)
IronPort-SDR: VR5j4V3+drd8qo75v3AVvshBUJFSn37dhV0HesZ2L1XwtUl1jgmNCoG282xpOHWTuatPtBOwyl
 zUsykXD8bO1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="171994855"
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="171994855"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 22:38:29 -0800
IronPort-SDR: yguygvUrp64tbaFwggwYtJJ05nU1t9NzXvzZ1QiBYX+BbkwXKMZ5xu+ddM7CDUsltmN2BhV/Am
 udz5J8wyJHQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="361747274"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.203])
 by fmsmga004.fm.intel.com with ESMTP; 23 Nov 2020 22:38:27 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Nov 2020 14:24:03 +0800
Message-Id: <20201124062410.6824-14-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201124062410.6824-1-haiyue.wang@intel.com>
References: <20201124062410.6824-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC 13/20] ice: Add GTPU FDIR filter for AVF
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
 qi.z.zhang@intel.com, kuba@kernel.org, davem@davemloft.net
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
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 135 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  25 +++-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  74 ++++++++++
 4 files changed, 237 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index f4c2389c8d7f..93390603c934 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -40,6 +40,84 @@ static const u8 ice_fdir_ipv4_pkt[] = {
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
+static const u8 ice_fdir_ipv6_gtpu6_pkt[] = {
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x86, 0xdd, 0x60, 0x00,
+	0x00, 0x00, 0x00, 0x44, 0x11, 0x40, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x08, 0x68,
+	0x08, 0x68, 0x00, 0x44, 0x7f, 0xed, 0x34, 0xff,
+	0x00, 0x34, 0x12, 0x34, 0x56, 0x78, 0x00, 0x00,
+	0x00, 0x85, 0x02, 0x00, 0x33, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x3b, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
 static const u8 ice_fdir_non_ip_l2_pkt[] = {
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
@@ -244,6 +322,34 @@ static const struct ice_fdir_base_pkt ice_fdir_pkt[] = {
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
@@ -491,6 +597,22 @@ static void ice_pkt_insert_ipv6_addr(u8 *pkt, int offset, __be32 *addr)
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
@@ -685,6 +807,19 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
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
index a8d1da5f8d9e..76f84453077f 100644
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
index 5fe9ad8cda2d..e485a6a5f527 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -193,6 +193,10 @@ enum ice_fltr_ptype {
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
index 5c023c2983c1..0450f0f340a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -23,8 +23,19 @@
 	(u64)(((((flow) + (tun_offs)) & ICE_FLOW_PROF_TYPE_M)) | \
 	      (((u64)(vsi) << ICE_FLOW_PROF_VSI_S) & ICE_FLOW_PROF_VSI_M))
 
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
@@ -86,6 +97,23 @@ static enum virtchnl_proto_hdr_type vc_pattern_ipv6_sctp[] = {
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
@@ -113,6 +141,8 @@ static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_comms[] = {
 	{vc_pattern_ipv6_udp,                 0,         NULL},
 	{vc_pattern_ipv6_sctp,                0,         NULL},
 	{vc_pattern_ether,                    0,         NULL},
+	{vc_pattern_ipv4_gtpu,                0,         NULL},
+	{vc_pattern_ipv4_gtpu_eh,             0,         NULL},
 };
 
 struct virtchnl_fdir_inset_map {
@@ -137,6 +167,8 @@ static const struct virtchnl_fdir_inset_map fdir_inset_map[] = {
 	{VIRTCHNL_PROTO_HDR_TCP_DST_PORT, ICE_FLOW_FIELD_IDX_TCP_DST_PORT},
 	{VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT, ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT},
 	{VIRTCHNL_PROTO_HDR_SCTP_DST_PORT, ICE_FLOW_FIELD_IDX_SCTP_DST_PORT},
+	{VIRTCHNL_PROTO_HDR_GTPU_IP_TEID, ICE_FLOW_FIELD_IDX_GTPU_IP_TEID},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH_QFI, ICE_FLOW_FIELD_IDX_GTPU_EH_QFI},
 };
 
 /**
@@ -386,6 +418,7 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
 			 struct ice_flow_seg_info *seg)
 {
 	enum ice_fltr_ptype flow = conf->input.flow_type;
+	enum ice_fdir_tunnel_type ttype = conf->ttype;
 	struct device *dev = ice_pf_to_dev(vf->pf);
 
 	switch (flow) {
@@ -406,6 +439,25 @@ ice_vc_fdir_set_flow_hdr(struct ice_vf *vf,
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
@@ -803,6 +855,7 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 		struct tcphdr *tcph;
 		struct ethhdr *eth;
 		struct iphdr *iph;
+		u8 *rawh;
 
 		switch (hdr->type) {
 		case VIRTCHNL_PROTO_HDR_ETH:
@@ -895,6 +948,21 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
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
@@ -1020,12 +1088,18 @@ ice_vc_fdir_comp_rules(struct virtchnl_fdir_fltr_conf *conf_a,
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
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
