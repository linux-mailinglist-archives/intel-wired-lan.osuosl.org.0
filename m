Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3048E4CD94E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Mar 2022 17:41:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C67A060F99;
	Fri,  4 Mar 2022 16:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHqEX5pxhhQd; Fri,  4 Mar 2022 16:41:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A233360F8A;
	Fri,  4 Mar 2022 16:41:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C43D1BF275
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 16:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B534140232
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 16:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mPEu53OvOes4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Mar 2022 16:41:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B24A40160
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 16:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646412080; x=1677948080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nYHTmHU0I8H3U7UP46dioeOgwmr2XyT/kNt8L1zZ3Ts=;
 b=AtcmQq9QUE5ynUc5bB2N0dROHv0GT+2GG4sj1Y31nyq3Gv7wLlbYXyga
 qwvW8iV/JPHMVoh+JjsUmCc+9mKAF2jF9s3QdoONI3VeOq37hrjsynjOE
 SEcV1o6hHSIEcyNSWgrZv1lQ2jwN5T19IppwMSe3B+p3YsCUfKUFxa0Z2
 kjiQz+fozTuRPcnzLquAcACEtDE7AVceedwFMKTQcrvb3PE2O8TQ/W62E
 fyVwHEfZZd4LAuhL1frkLM9pedigNz/5xUsstcX0i/87PqsI3Rm4wx8V0
 SXUmxkPeWsD9FBFHc90wsT0l76Y9RK2QuTuWHCn+VoyKLZEEhOjwrPudI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="234618178"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="234618178"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:41:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="710386234"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 04 Mar 2022 08:41:09 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 224Gf12N020994; Fri, 4 Mar 2022 16:41:08 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri,  4 Mar 2022 17:40:48 +0100
Message-Id: <20220304164048.476900-8-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
References: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v10 7/7] ice: Support GTP-U and
 GTP-C offload in switchdev
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
Cc: jiri@resnulli.us, xiyou.wangcong@gmail.com,
 osmocom-net-gprs@lists.osmocom.org, jhs@mojatatu.com, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for creating filters for GTP-U and GTP-C in switchdev mode. Add
support for parsing GTP-specific options (QFI and PDU type) and TEID.

By default, a filter for GTP-U will be added. To add a filter for GTP-C,
specify enc_dst_port = 2123, e.g.:

tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
enc_dst_port 2123 action mirred egress redirect dev $VF1_PR

Note: GTP-U with outer IPv6 offload is not supported yet.
Note: GTP-U with no payload offload is not supported yet.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v7: Fix ice_get_sw_prof_type kernel-doc
v9: Fix GTP-C dummy packet selection, GTP-C IPv6 offload working
v10: Rebase
---
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  31 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   6 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  19 +
 drivers/net/ethernet/intel/ice/ice_switch.c   | 604 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 105 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   3 +
 8 files changed, 760 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index dc42ff92dbad..088d9dc6a424 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -51,6 +51,7 @@
 #include <net/gre.h>
 #include <net/udp_tunnel.h>
 #include <net/vxlan.h>
+#include <net/gtp.h>
 #if IS_ENABLED(CONFIG_DCB)
 #include <scsi/iscsi_proto.h>
 #endif /* CONFIG_DCB */
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index c9bb338789ed..6a336e8d4e4d 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1804,16 +1804,43 @@ static struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw)
 	return bld;
 }
 
+static bool ice_is_gtp_u_profile(u16 prof_idx)
+{
+	return (prof_idx >= ICE_PROFID_IPV6_GTPU_TEID &&
+		prof_idx <= ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER) ||
+	       prof_idx == ICE_PROFID_IPV4_GTPU_TEID;
+}
+
+static bool ice_is_gtp_c_profile(u16 prof_idx)
+{
+	switch (prof_idx) {
+	case ICE_PROFID_IPV4_GTPC_TEID:
+	case ICE_PROFID_IPV4_GTPC_NO_TEID:
+	case ICE_PROFID_IPV6_GTPC_TEID:
+	case ICE_PROFID_IPV6_GTPC_NO_TEID:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * ice_get_sw_prof_type - determine switch profile type
  * @hw: pointer to the HW structure
  * @fv: pointer to the switch field vector
+ * @prof_idx: profile index to check
  */
 static enum ice_prof_type
-ice_get_sw_prof_type(struct ice_hw *hw, struct ice_fv *fv)
+ice_get_sw_prof_type(struct ice_hw *hw, struct ice_fv *fv, u32 prof_idx)
 {
 	u16 i;
 
+	if (ice_is_gtp_c_profile(prof_idx))
+		return ICE_PROF_TUN_GTPC;
+
+	if (ice_is_gtp_u_profile(prof_idx))
+		return ICE_PROF_TUN_GTPU;
+
 	for (i = 0; i < hw->blk[ICE_BLK_SW].es.fvw; i++) {
 		/* UDP tunnel will have UDP_OF protocol ID and VNI offset */
 		if (fv->ew[i].prot_id == (u8)ICE_PROT_UDP_OF &&
@@ -1860,7 +1887,7 @@ ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type req_profs,
 
 		if (fv) {
 			/* Determine field vector type */
-			prof_type = ice_get_sw_prof_type(hw, fv);
+			prof_type = ice_get_sw_prof_type(hw, fv, offset);
 
 			if (req_profs & prof_type)
 				set_bit((u16)offset, bm);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 5735e9542a49..974d14a83b2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -417,6 +417,8 @@ enum ice_tunnel_type {
 	TNL_VXLAN = 0,
 	TNL_GENEVE,
 	TNL_GRETAP,
+	TNL_GTPC,
+	TNL_GTPU,
 	__TNL_TYPE_CNT,
 	TNL_LAST = 0xFF,
 	TNL_ALL = 0xFF,
@@ -673,7 +675,9 @@ enum ice_prof_type {
 	ICE_PROF_NON_TUN = 0x1,
 	ICE_PROF_TUN_UDP = 0x2,
 	ICE_PROF_TUN_GRE = 0x4,
-	ICE_PROF_TUN_ALL = 0x6,
+	ICE_PROF_TUN_GTPU = 0x8,
+	ICE_PROF_TUN_GTPC = 0x10,
+	ICE_PROF_TUN_ALL = 0x1E,
 	ICE_PROF_ALL = 0xFF,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
index 695b6dd61dc2..5f8a0819bc87 100644
--- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
@@ -40,6 +40,8 @@ enum ice_protocol_type {
 	ICE_VXLAN,
 	ICE_GENEVE,
 	ICE_NVGRE,
+	ICE_GTP,
+	ICE_GTP_NO_PAY,
 	ICE_VXLAN_GPE,
 	ICE_SCTP_IL,
 	ICE_PROTOCOL_LAST
@@ -51,6 +53,8 @@ enum ice_sw_tunnel_type {
 	ICE_SW_TUN_VXLAN,
 	ICE_SW_TUN_GENEVE,
 	ICE_SW_TUN_NVGRE,
+	ICE_SW_TUN_GTPU,
+	ICE_SW_TUN_GTPC,
 	ICE_ALL_TUNNELS /* All tunnel types including NVGRE */
 };
 
@@ -180,6 +184,20 @@ struct ice_udp_tnl_hdr {
 	__be32 vni;     /* only use lower 24-bits */
 };
 
+struct ice_udp_gtp_hdr {
+	u8 flags;
+	u8 msg_type;
+	__be16 rsrvd_len;
+	__be32 teid;
+	__be16 rsrvd_seq_nbr;
+	u8 rsrvd_n_pdu_nbr;
+	u8 rsrvd_next_ext;
+	u8 rsvrd_ext_len;
+	u8 pdu_type;
+	u8 qfi;
+	u8 rsvrd;
+};
+
 struct ice_nvgre_hdr {
 	__be16 flags;
 	__be16 protocol;
@@ -196,6 +214,7 @@ union ice_prot_hdr {
 	struct ice_sctp_hdr sctp_hdr;
 	struct ice_udp_tnl_hdr tnl_hdr;
 	struct ice_nvgre_hdr nvgre_hdr;
+	struct ice_udp_gtp_hdr gtp_hdr;
 };
 
 /* This is mapping table entry that maps every word within a given protocol
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 18981af6a4cb..b7aa99efb341 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -500,6 +500,495 @@ static const u8 dummy_vlan_udp_ipv6_packet[] = {
 	0x00, 0x00, /* 2 bytes for 4 byte alignment */
 };
 
+/* Outer IPv4 + Outer UDP + GTP + Inner IPv4 + Inner TCP */
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP,		42 },
+	{ ICE_IPV4_IL,		62 },
+	{ ICE_TCP_IL,		82 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv4_gtpu_ipv4_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x58, /* IP 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 34 */
+	0x00, 0x44, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x34, /* ICE_GTP Header 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x28, /* IP 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* TCP 82 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+/* Outer IPv4 + Outer UDP + GTP + Inner IPv4 + Inner UDP */
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv4_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP,		42 },
+	{ ICE_IPV4_IL,		62 },
+	{ ICE_UDP_ILOS,		82 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv4_gtpu_ipv4_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x4c, /* IP 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 34 */
+	0x00, 0x38, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x28, /* ICE_GTP Header 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x1c, /* IP 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* UDP 82 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+/* Outer IPv6 + Outer UDP + GTP + Inner IPv4 + Inner TCP */
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv6_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP,		42 },
+	{ ICE_IPV6_IL,		62 },
+	{ ICE_TCP_IL,		102 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv4_gtpu_ipv6_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x6c, /* IP 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 34 */
+	0x00, 0x58, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x48, /* ICE_GTP Header 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 62 */
+	0x00, 0x14, 0x06, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* TCP 102 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtpu_ipv6_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP,		42 },
+	{ ICE_IPV6_IL,		62 },
+	{ ICE_UDP_ILOS,		102 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv4_gtpu_ipv6_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x60, /* IP 14 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 34 */
+	0x00, 0x4c, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x3c, /* ICE_GTP Header 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 62 */
+	0x00, 0x08, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* UDP 102 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv4_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP,		62 },
+	{ ICE_IPV4_IL,		82 },
+	{ ICE_TCP_IL,		102 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtpu_ipv4_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 14 */
+	0x00, 0x44, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 54 */
+	0x00, 0x44, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x34, /* ICE_GTP Header 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 74 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x28, /* IP 82 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x06, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* TCP 102 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv4_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP,		62 },
+	{ ICE_IPV4_IL,		82 },
+	{ ICE_UDP_ILOS,		102 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtpu_ipv4_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 14 */
+	0x00, 0x38, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 54 */
+	0x00, 0x38, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x28, /* ICE_GTP Header 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 74 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x1c, /* IP 82 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* UDP 102 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv6_tcp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP,		62 },
+	{ ICE_IPV6_IL,		82 },
+	{ ICE_TCP_IL,		122 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtpu_ipv6_tcp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 14 */
+	0x00, 0x58, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 54 */
+	0x00, 0x58, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x48, /* ICE_GTP Header 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 74 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 82 */
+	0x00, 0x14, 0x06, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* TCP 122 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x50, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtpu_ipv6_udp_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP,		62 },
+	{ ICE_IPV6_IL,		82 },
+	{ ICE_UDP_ILOS,		122 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtpu_ipv6_udp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* Ethernet 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 14 */
+	0x00, 0x4c, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x08, 0x68, /* UDP 54 */
+	0x00, 0x4c, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x3c, /* ICE_GTP Header 62 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* GTP_PDUSession_ExtensionHeader 74 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x60, 0x00, 0x00, 0x00, /* IPv6 82 */
+	0x00, 0x08, 0x11, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00, 0x00, 0x00, /* UDP 122 */
+	0x00, 0x08, 0x00, 0x00,
+
+	0x00, 0x00, /* 2 bytes for 4 byte alignment */
+};
+
+static const u8 dummy_ipv4_gtpu_ipv4_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x08, 0x00,
+
+	0x45, 0x00, 0x00, 0x44, /* ICE_IPV4_OFOS 14 */
+	0x00, 0x00, 0x40, 0x00,
+	0x40, 0x11, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x68, 0x08, 0x68, /* ICE_UDP_OF 34 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x34, 0xff, 0x00, 0x28, /* ICE_GTP 42 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x85,
+
+	0x02, 0x00, 0x00, 0x00, /* PDU Session extension header */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x45, 0x00, 0x00, 0x14, /* ICE_IPV4_IL 62 */
+	0x00, 0x00, 0x40, 0x00,
+	0x40, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00,
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv4_gtp_no_pay_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV4_OFOS,	14 },
+	{ ICE_UDP_OF,		34 },
+	{ ICE_GTP_NO_PAY,	42 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const
+struct ice_dummy_pkt_offsets dummy_ipv6_gtp_no_pay_packet_offsets[] = {
+	{ ICE_MAC_OFOS,		0 },
+	{ ICE_IPV6_OFOS,	14 },
+	{ ICE_UDP_OF,		54 },
+	{ ICE_GTP_NO_PAY,	62 },
+	{ ICE_PROTOCOL_LAST,	0 },
+};
+
+static const u8 dummy_ipv6_gtp_packet[] = {
+	0x00, 0x00, 0x00, 0x00, /* ICE_MAC_OFOS 0 */
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x86, 0xdd,
+
+	0x60, 0x00, 0x00, 0x00, /* ICE_IPV6_OFOS 14 */
+	0x00, 0x6c, 0x11, 0x00, /* Next header UDP*/
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00,
+
+	0x08, 0x68, 0x08, 0x68, /* ICE_UDP_OF 54 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x30, 0x00, 0x00, 0x28, /* ICE_GTP 62 */
+	0x00, 0x00, 0x00, 0x00,
+
+	0x00, 0x00,
+};
+
 #define ICE_SW_RULE_RX_TX_ETH_HDR_SIZE \
 	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr) + \
 	 (DUMMY_ETH_HDR_LEN * \
@@ -3830,7 +4319,9 @@ static const struct ice_prot_ext_tbl_entry ice_prot_ext[ICE_PROTOCOL_LAST] = {
 	{ ICE_UDP_ILOS,		{ 0, 2 } },
 	{ ICE_VXLAN,		{ 8, 10, 12, 14 } },
 	{ ICE_GENEVE,		{ 8, 10, 12, 14 } },
-	{ ICE_NVGRE,            { 0, 2, 4, 6 } },
+	{ ICE_NVGRE,		{ 0, 2, 4, 6 } },
+	{ ICE_GTP,		{ 8, 10, 12, 14, 16, 18, 20, 22 } },
+	{ ICE_GTP_NO_PAY,	{ 8, 10, 12, 14 } },
 };
 
 static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
@@ -3847,7 +4338,9 @@ static struct ice_protocol_entry ice_prot_id_tbl[ICE_PROTOCOL_LAST] = {
 	{ ICE_UDP_ILOS,		ICE_UDP_ILOS_HW },
 	{ ICE_VXLAN,		ICE_UDP_OF_HW },
 	{ ICE_GENEVE,		ICE_UDP_OF_HW },
-	{ ICE_NVGRE,            ICE_GRE_OF_HW },
+	{ ICE_NVGRE,		ICE_GRE_OF_HW },
+	{ ICE_GTP,		ICE_UDP_OF_HW },
+	{ ICE_GTP_NO_PAY,	ICE_UDP_ILOS_HW },
 };
 
 /**
@@ -4517,6 +5010,8 @@ static bool ice_tun_type_match_word(enum ice_sw_tunnel_type tun_type, u16 *mask)
 	case ICE_SW_TUN_GENEVE:
 	case ICE_SW_TUN_VXLAN:
 	case ICE_SW_TUN_NVGRE:
+	case ICE_SW_TUN_GTPU:
+	case ICE_SW_TUN_GTPC:
 		*mask = ICE_TUN_FLAG_MASK;
 		return true;
 
@@ -4582,6 +5077,12 @@ ice_get_compat_fv_bitmap(struct ice_hw *hw, struct ice_adv_rule_info *rinfo,
 	case ICE_SW_TUN_NVGRE:
 		prof_type = ICE_PROF_TUN_GRE;
 		break;
+	case ICE_SW_TUN_GTPU:
+		prof_type = ICE_PROF_TUN_GTPU;
+		break;
+	case ICE_SW_TUN_GTPC:
+		prof_type = ICE_PROF_TUN_GTPC;
+		break;
 	case ICE_SW_TUN_AND_NON_TUN:
 	default:
 		prof_type = ICE_PROF_ALL;
@@ -4782,16 +5283,17 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		      const u8 **pkt, u16 *pkt_len,
 		      const struct ice_dummy_pkt_offsets **offsets)
 {
-	bool tcp = false, udp = false, ipv6 = false, vlan = false;
+	bool inner_tcp = false, inner_udp = false, outer_ipv6 = false;
+	bool vlan = false, inner_ipv6 = false, gtp_no_pay = false;
 	u16 i;
 
 	for (i = 0; i < lkups_cnt; i++) {
 		if (lkups[i].type == ICE_UDP_ILOS)
-			udp = true;
+			inner_udp = true;
 		else if (lkups[i].type == ICE_TCP_IL)
-			tcp = true;
+			inner_tcp = true;
 		else if (lkups[i].type == ICE_IPV6_OFOS)
-			ipv6 = true;
+			outer_ipv6 = true;
 		else if (lkups[i].type == ICE_VLAN_OFOS)
 			vlan = true;
 		else if (lkups[i].type == ICE_ETYPE_OL &&
@@ -4799,11 +5301,85 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 				cpu_to_be16(ICE_IPV6_ETHER_ID) &&
 			 lkups[i].m_u.ethertype.ethtype_id ==
 					cpu_to_be16(0xFFFF))
-			ipv6 = true;
+			outer_ipv6 = true;
+		else if (lkups[i].type == ICE_IPV6_IL)
+			inner_ipv6 = true;
+		else if (lkups[i].type == ICE_GTP_NO_PAY)
+			gtp_no_pay = true;
+	}
+
+	if (tun_type == ICE_SW_TUN_GTPU) {
+		if (outer_ipv6) {
+			if (gtp_no_pay) {
+				*pkt = dummy_ipv6_gtp_packet;
+				*pkt_len = sizeof(dummy_ipv6_gtp_packet);
+				*offsets = dummy_ipv6_gtp_no_pay_packet_offsets;
+			} else if (inner_ipv6) {
+				if (inner_udp) {
+					*pkt = dummy_ipv6_gtpu_ipv6_udp_packet;
+					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv6_udp_packet);
+					*offsets = dummy_ipv6_gtpu_ipv6_udp_packet_offsets;
+				} else {
+					*pkt = dummy_ipv6_gtpu_ipv6_tcp_packet;
+					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv6_tcp_packet);
+					*offsets = dummy_ipv6_gtpu_ipv6_tcp_packet_offsets;
+				}
+			} else {
+				if (inner_udp) {
+					*pkt = dummy_ipv6_gtpu_ipv4_udp_packet;
+					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv4_udp_packet);
+					*offsets = dummy_ipv6_gtpu_ipv4_udp_packet_offsets;
+				} else {
+					*pkt = dummy_ipv6_gtpu_ipv4_tcp_packet;
+					*pkt_len = sizeof(dummy_ipv6_gtpu_ipv4_tcp_packet);
+					*offsets = dummy_ipv6_gtpu_ipv4_tcp_packet_offsets;
+				}
+			}
+		} else {
+			if (gtp_no_pay) {
+				*pkt = dummy_ipv4_gtpu_ipv4_packet;
+				*pkt_len = sizeof(dummy_ipv4_gtpu_ipv4_packet);
+				*offsets = dummy_ipv4_gtp_no_pay_packet_offsets;
+			} else if (inner_ipv6) {
+				if (inner_udp) {
+					*pkt = dummy_ipv4_gtpu_ipv6_udp_packet;
+					*pkt_len = sizeof(dummy_ipv4_gtpu_ipv6_udp_packet);
+					*offsets = dummy_ipv4_gtpu_ipv6_udp_packet_offsets;
+				} else {
+					*pkt = dummy_ipv4_gtpu_ipv6_tcp_packet;
+					*pkt_len = sizeof(dummy_ipv4_gtpu_ipv6_tcp_packet);
+					*offsets = dummy_ipv4_gtpu_ipv6_tcp_packet_offsets;
+				}
+			} else {
+				if (inner_udp) {
+					*pkt = dummy_ipv4_gtpu_ipv4_udp_packet;
+					*pkt_len = sizeof(dummy_ipv4_gtpu_ipv4_udp_packet);
+					*offsets = dummy_ipv4_gtpu_ipv4_udp_packet_offsets;
+				} else {
+					*pkt = dummy_ipv4_gtpu_ipv4_tcp_packet;
+					*pkt_len = sizeof(dummy_ipv4_gtpu_ipv4_tcp_packet);
+					*offsets = dummy_ipv4_gtpu_ipv4_tcp_packet_offsets;
+				}
+			}
+		}
+		return;
+	}
+
+	if (tun_type == ICE_SW_TUN_GTPC) {
+		if (outer_ipv6) {
+			*pkt = dummy_ipv6_gtp_packet;
+			*pkt_len = sizeof(dummy_ipv6_gtp_packet);
+			*offsets = dummy_ipv6_gtp_no_pay_packet_offsets;
+		} else {
+			*pkt = dummy_ipv4_gtpu_ipv4_packet;
+			*pkt_len = sizeof(dummy_ipv4_gtpu_ipv4_packet);
+			*offsets = dummy_ipv4_gtp_no_pay_packet_offsets;
+		}
+		return;
 	}
 
 	if (tun_type == ICE_SW_TUN_NVGRE) {
-		if (tcp) {
+		if (inner_tcp) {
 			*pkt = dummy_gre_tcp_packet;
 			*pkt_len = sizeof(dummy_gre_tcp_packet);
 			*offsets = dummy_gre_tcp_packet_offsets;
@@ -4818,7 +5394,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 
 	if (tun_type == ICE_SW_TUN_VXLAN ||
 	    tun_type == ICE_SW_TUN_GENEVE) {
-		if (tcp) {
+		if (inner_tcp) {
 			*pkt = dummy_udp_tun_tcp_packet;
 			*pkt_len = sizeof(dummy_udp_tun_tcp_packet);
 			*offsets = dummy_udp_tun_tcp_packet_offsets;
@@ -4831,7 +5407,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		return;
 	}
 
-	if (udp && !ipv6) {
+	if (inner_udp && !outer_ipv6) {
 		if (vlan) {
 			*pkt = dummy_vlan_udp_packet;
 			*pkt_len = sizeof(dummy_vlan_udp_packet);
@@ -4842,7 +5418,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		*pkt_len = sizeof(dummy_udp_packet);
 		*offsets = dummy_udp_packet_offsets;
 		return;
-	} else if (udp && ipv6) {
+	} else if (inner_udp && outer_ipv6) {
 		if (vlan) {
 			*pkt = dummy_vlan_udp_ipv6_packet;
 			*pkt_len = sizeof(dummy_vlan_udp_ipv6_packet);
@@ -4853,7 +5429,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		*pkt_len = sizeof(dummy_udp_ipv6_packet);
 		*offsets = dummy_udp_ipv6_packet_offsets;
 		return;
-	} else if ((tcp && ipv6) || ipv6) {
+	} else if ((inner_tcp && outer_ipv6) || outer_ipv6) {
 		if (vlan) {
 			*pkt = dummy_vlan_tcp_ipv6_packet;
 			*pkt_len = sizeof(dummy_vlan_tcp_ipv6_packet);
@@ -4958,6 +5534,10 @@ ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 		case ICE_GENEVE:
 			len = sizeof(struct ice_udp_tnl_hdr);
 			break;
+		case ICE_GTP_NO_PAY:
+		case ICE_GTP:
+			len = sizeof(struct ice_udp_gtp_hdr);
+			break;
 		default:
 			return -EINVAL;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 7b42c51a3eb0..ed3d1d03befa 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -14,6 +14,15 @@
 #define ICE_VSI_INVAL_ID 0xffff
 #define ICE_INVAL_Q_HANDLE 0xFFFF
 
+/* Switch Profile IDs for Profile related switch rules */
+#define ICE_PROFID_IPV4_GTPC_TEID			41
+#define ICE_PROFID_IPV4_GTPC_NO_TEID			42
+#define ICE_PROFID_IPV4_GTPU_TEID			43
+#define ICE_PROFID_IPV6_GTPC_TEID			44
+#define ICE_PROFID_IPV6_GTPC_NO_TEID			45
+#define ICE_PROFID_IPV6_GTPU_TEID			46
+#define ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER		70
+
 #define ICE_SW_RULE_RX_TX_NO_HDR_SIZE \
 	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr))
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 65cf32eb4046..c9eb278862b7 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -24,6 +24,9 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
 		lkups_cnt++;
 
+	if (flags & ICE_TC_FLWR_FIELD_ENC_OPTS)
+		lkups_cnt++;
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_SRC_IPV6 |
@@ -96,6 +99,11 @@ ice_proto_type_from_tunnel(enum ice_tunnel_type type)
 		return ICE_GENEVE;
 	case TNL_GRETAP:
 		return ICE_NVGRE;
+	case TNL_GTPU:
+		/* NO_PAY profiles will not work with GTP-U */
+		return ICE_GTP;
+	case TNL_GTPC:
+		return ICE_GTP_NO_PAY;
 	default:
 		return 0;
 	}
@@ -111,6 +119,10 @@ ice_sw_type_from_tunnel(enum ice_tunnel_type type)
 		return ICE_SW_TUN_GENEVE;
 	case TNL_GRETAP:
 		return ICE_SW_TUN_NVGRE;
+	case TNL_GTPU:
+		return ICE_SW_TUN_GTPU;
+	case TNL_GTPC:
+		return ICE_SW_TUN_GTPC;
 	default:
 		return ICE_NON_TUN;
 	}
@@ -137,7 +149,15 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 			break;
 		case TNL_GRETAP:
 			list[i].h_u.nvgre_hdr.tni_flow = fltr->tenant_id;
-			memcpy(&list[i].m_u.nvgre_hdr.tni_flow, "\xff\xff\xff\xff", 4);
+			memcpy(&list[i].m_u.nvgre_hdr.tni_flow,
+			       "\xff\xff\xff\xff", 4);
+			i++;
+			break;
+		case TNL_GTPC:
+		case TNL_GTPU:
+			list[i].h_u.gtp_hdr.teid = fltr->tenant_id;
+			memcpy(&list[i].m_u.gtp_hdr.teid,
+			       "\xff\xff\xff\xff", 4);
 			i++;
 			break;
 		default:
@@ -145,6 +165,24 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 		}
 	}
 
+	if (flags & ICE_TC_FLWR_FIELD_ENC_OPTS &&
+	    (fltr->tunnel_type == TNL_GTPU || fltr->tunnel_type == TNL_GTPC)) {
+		list[i].type = ice_proto_type_from_tunnel(fltr->tunnel_type);
+
+		if (fltr->gtp_pdu_info_masks.pdu_type) {
+			list[i].h_u.gtp_hdr.pdu_type =
+				fltr->gtp_pdu_info_keys.pdu_type << 4;
+			memcpy(&list[i].m_u.gtp_hdr.pdu_type, "\xf0", 1);
+		}
+
+		if (fltr->gtp_pdu_info_masks.qfi) {
+			list[i].h_u.gtp_hdr.qfi = fltr->gtp_pdu_info_keys.qfi;
+			memcpy(&list[i].m_u.gtp_hdr.qfi, "\x3f", 1);
+		}
+
+		i++;
+	}
+
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV4)) {
 		list[i].type = ice_proto_type_from_ipv4(false);
@@ -344,6 +382,12 @@ static int ice_tc_tun_get_type(struct net_device *tunnel_dev)
 	if (netif_is_gretap(tunnel_dev) ||
 	    netif_is_ip6gretap(tunnel_dev))
 		return TNL_GRETAP;
+
+	/* Assume GTP-U by default in case of GTP netdev.
+	 * GTP-C may be selected later, based on enc_dst_port.
+	 */
+	if (netif_is_gtp(tunnel_dev))
+		return TNL_GTPU;
 	return TNL_LAST;
 }
 
@@ -743,6 +787,40 @@ ice_get_tunnel_device(struct net_device *dev, struct flow_rule *rule)
 	return NULL;
 }
 
+/**
+ * ice_parse_gtp_type - Sets GTP tunnel type to GTP-U or GTP-C
+ * @match: Flow match structure
+ * @fltr: Pointer to filter structure
+ *
+ * GTP-C/GTP-U is selected based on destination port number (enc_dst_port).
+ * Before calling this funtcion, fltr->tunnel_type should be set to TNL_GTPU,
+ * therefore making GTP-U the default choice (when destination port number is
+ * not specified).
+ */
+static int
+ice_parse_gtp_type(struct flow_match_ports match,
+		   struct ice_tc_flower_fltr *fltr)
+{
+	u16 dst_port;
+
+	if (match.key->dst) {
+		dst_port = be16_to_cpu(match.key->dst);
+
+		switch (dst_port) {
+		case 2152:
+			break;
+		case 2123:
+			fltr->tunnel_type = TNL_GTPC;
+			break;
+		default:
+			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported GTP port number");
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 static int
 ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		      struct ice_tc_flower_fltr *fltr)
@@ -798,8 +876,28 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		struct flow_match_ports match;
 
 		flow_rule_match_enc_ports(rule, &match);
-		if (ice_tc_set_port(match, fltr, headers, true))
-			return -EINVAL;
+
+		if (fltr->tunnel_type != TNL_GTPU) {
+			if (ice_tc_set_port(match, fltr, headers, true))
+				return -EINVAL;
+		} else {
+			if (ice_parse_gtp_type(match, fltr))
+				return -EINVAL;
+		}
+	}
+
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS)) {
+		struct flow_match_enc_opts match;
+
+		flow_rule_match_enc_opts(rule, &match);
+
+		memcpy(&fltr->gtp_pdu_info_keys, &match.key->data[0],
+		       sizeof(struct gtp_pdu_session_info));
+
+		memcpy(&fltr->gtp_pdu_info_masks, &match.mask->data[0],
+		       sizeof(struct gtp_pdu_session_info));
+
+		fltr->flags |= ICE_TC_FLWR_FIELD_ENC_OPTS;
 	}
 
 	return 0;
@@ -837,6 +935,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV4_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_PORTS) |
+	      BIT(FLOW_DISSECTOR_KEY_ENC_OPTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 319049477959..e25e958f4396 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -22,6 +22,7 @@
 #define ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT	BIT(15)
 #define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
+#define ICE_TC_FLWR_FIELD_ENC_OPTS		BIT(18)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
@@ -119,6 +120,8 @@ struct ice_tc_flower_fltr {
 	struct ice_tc_flower_lyr_2_4_hdrs inner_headers;
 	struct ice_vsi *src_vsi;
 	__be32 tenant_id;
+	struct gtp_pdu_session_info gtp_pdu_info_keys;
+	struct gtp_pdu_session_info gtp_pdu_info_masks;
 	u32 flags;
 	u8 tunnel_type;
 	struct ice_tc_flower_action	action;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
