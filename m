Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED802C1E59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Nov 2020 07:38:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D39BF85A00;
	Tue, 24 Nov 2020 06:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D9yKz5MngAoL; Tue, 24 Nov 2020 06:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6896485A6A;
	Tue, 24 Nov 2020 06:38:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 551821BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:38:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 517EA86655
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h3U+yXHwhbMM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 06:38:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B25EB86681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:38:12 +0000 (UTC)
IronPort-SDR: s//MjQPHc7F9P0TZcqQFez5ksgmKiONQbgBSM2h79R+jaVmRB0fncwtVQvr8HcFaQ50TzmHFI1
 bOixuy3HJGew==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="171994798"
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="171994798"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 22:38:08 -0800
IronPort-SDR: TJc8WUb2GlPy4AcLZk3oZqBOL4FB/b7QazP1L0V4E3fizwvoMY8ur9MugMl9+ZiEzqCxQEoK19
 kM1FLuZKMI6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="361747204"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.203])
 by fmsmga004.fm.intel.com with ESMTP; 23 Nov 2020 22:38:05 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Nov 2020 14:23:56 +0800
Message-Id: <20201124062410.6824-7-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201124062410.6824-1-haiyue.wang@intel.com>
References: <20201124062410.6824-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC 06/20] ice: Enable RSS Configure for AVF
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
Cc: cunming.liang@intel.com, Jeff Guo <jia.guo@intel.com>, qi.z.zhang@intel.com,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

The virtual channel is going to be extended to support FDIR and
RSS configure from AVF. New data structures and OP codes will be
added, the patch enable the RSS part.

To support above advanced AVF feature, we need to figure out
what kind of data structure should be passed from VF to PF to describe
an FDIR rule or RSS config rule. The common part of the requirement is
we need a data structure to represent the input set selection of a rule's
hash key.

An input set selection is a group of fields be selected from one or more
network protocol layers that could be identified as a specific flow.
For example, select dst IP address from an IPv4 header combined with
dst port from the TCP header as the input set for an IPv4/TCP flow.

The patch adds a new data structure virtchnl_proto_hdrs to abstract
a network protocol headers group which is composed of layers of network
protocol header(virtchnl_proto_hdr).

A protocol header contains a 32 bits mask (field_selector) to describe
which fields are selected as input sets, as well as a header type
(enum virtchnl_proto_hdr_type). Each bit is mapped to a field in
enum virtchnl_proto_hdr_field guided by its header type.

+------------+-----------+------------------------------+
|            | Proto Hdr | Header Type A                |
|            |           +------------------------------+
|            |           | BIT 31 | ... | BIT 1 | BIT 0 |
|            |-----------+------------------------------+
|Proto Hdrs  | Proto Hdr | Header Type B                |
|            |           +------------------------------+
|            |           | BIT 31 | ... | BIT 1 | BIT 0 |
|            |-----------+------------------------------+
|            | Proto Hdr | Header Type C                |
|            |           +------------------------------+
|            |           | BIT 31 | ... | BIT 1 | BIT 0 |
|            |-----------+------------------------------+
|            |    ....                                  |
+-------------------------------------------------------+

All fields in enum virtchnl_proto_hdr_fields are grouped with header type
and the value of the first field of a header type is always 32 aligned.

enum proto_hdr_type {
        header_type_A = 0;
        header_type_B = 1;
        ....
}

enum proto_hdr_field {
        /* header type A */
        header_A_field_0 = 0,
        header_A_field_1 = 1,
        header_A_field_2 = 2,
        header_A_field_3 = 3,

        /* header type B */
        header_B_field_0 = 32, // = header_type_B << 5
        header_B_field_0 = 33,
        header_B_field_0 = 34
        header_B_field_0 = 35,
        ....
};

So we have:
proto_hdr_type = proto_hdr_field / 32
bit offset = proto_hdr_field % 32

To simply the protocol header's operations, couple help macros are added.
For example, to select src IP and dst port as input set for an IPv4/UDP
flow.

we have:
struct virtchnl_proto_hdr hdr[2];

VIRTCHNL_SET_PROTO_HDR_TYPE(&hdr[0], IPV4)
VIRTCHNL_ADD_PROTO_HDR_FIELD(&hdr[0], IPV4, SRC)

VIRTCHNL_SET_PROTO_HDR_TYPE(&hdr[1], UDP)
VIRTCHNL_ADD_PROTO_HDR_FIELD(&hdr[1], UDP, DST)

A protocol header also contains a byte array, this field should only
be used by an FDIR rule and should be ignored by RSS. For an FDIR rule,
the byte array is used to store the protocol header of a training
package. The byte array must be network order.

Signed-off-by: Jeff Guo <jia.guo@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.h     |   3 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 454 ++++++++++++++++++
 include/linux/avf/virtchnl.h                  | 171 +++++++
 3 files changed, 628 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 9967c4b4ab5a..5a3229d51344 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -10,6 +10,9 @@
 #define ICE_FLOW_FLD_OFF_INVAL		0xffff
 
 /* Generate flow hash field from flow field type(s) */
+#define ICE_FLOW_HASH_ETH	\
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_DA) | \
+	 BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_SA))
 #define ICE_FLOW_HASH_IPV4	\
 	(BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) | \
 	 BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA))
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index aa19eb6190f9..411a8a5a7fa2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -5,6 +5,246 @@
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_fltr.h"
+#include "ice_flow.h"
+
+#define FIELD_SELECTOR(proto_hdr_field) \
+		(1UL << ((proto_hdr_field) & PROTO_HDR_FIELD_MASK))
+
+struct ice_vc_hdr_match_type {
+	u32 vc_hdr;	/* virtchnl headers (VIRTCHNL_PROTO_HDR_XXX) */
+	u32 ice_hdr;	/* ice headers (ICE_FLOW_SEG_HDR_XXX) */
+};
+
+static const struct ice_vc_hdr_match_type ice_vc_hdr_list_os[] = {
+	{VIRTCHNL_PROTO_HDR_NONE,	ICE_FLOW_SEG_HDR_NONE},
+	{VIRTCHNL_PROTO_HDR_IPV4,	ICE_FLOW_SEG_HDR_IPV4 |
+					ICE_FLOW_SEG_HDR_IPV_OTHER},
+	{VIRTCHNL_PROTO_HDR_IPV6,	ICE_FLOW_SEG_HDR_IPV6 |
+					ICE_FLOW_SEG_HDR_IPV_OTHER},
+	{VIRTCHNL_PROTO_HDR_TCP,	ICE_FLOW_SEG_HDR_TCP},
+	{VIRTCHNL_PROTO_HDR_UDP,	ICE_FLOW_SEG_HDR_UDP},
+	{VIRTCHNL_PROTO_HDR_SCTP,	ICE_FLOW_SEG_HDR_SCTP},
+};
+
+static const struct ice_vc_hdr_match_type ice_vc_hdr_list_comms[] = {
+	{VIRTCHNL_PROTO_HDR_NONE,	ICE_FLOW_SEG_HDR_NONE},
+	{VIRTCHNL_PROTO_HDR_ETH,	ICE_FLOW_SEG_HDR_ETH},
+	{VIRTCHNL_PROTO_HDR_S_VLAN,	ICE_FLOW_SEG_HDR_VLAN},
+	{VIRTCHNL_PROTO_HDR_C_VLAN,	ICE_FLOW_SEG_HDR_VLAN},
+	{VIRTCHNL_PROTO_HDR_IPV4,	ICE_FLOW_SEG_HDR_IPV4 |
+					ICE_FLOW_SEG_HDR_IPV_OTHER},
+	{VIRTCHNL_PROTO_HDR_IPV6,	ICE_FLOW_SEG_HDR_IPV6 |
+					ICE_FLOW_SEG_HDR_IPV_OTHER},
+	{VIRTCHNL_PROTO_HDR_TCP,	ICE_FLOW_SEG_HDR_TCP},
+	{VIRTCHNL_PROTO_HDR_UDP,	ICE_FLOW_SEG_HDR_UDP},
+	{VIRTCHNL_PROTO_HDR_SCTP,	ICE_FLOW_SEG_HDR_SCTP},
+	{VIRTCHNL_PROTO_HDR_PPPOE,	ICE_FLOW_SEG_HDR_PPPOE},
+	{VIRTCHNL_PROTO_HDR_GTPU_IP,	ICE_FLOW_SEG_HDR_GTPU_IP},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH,	ICE_FLOW_SEG_HDR_GTPU_EH},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_DWN,
+					ICE_FLOW_SEG_HDR_GTPU_DWN},
+	{VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_UP,
+					ICE_FLOW_SEG_HDR_GTPU_UP},
+	{VIRTCHNL_PROTO_HDR_L2TPV3,	ICE_FLOW_SEG_HDR_L2TPV3},
+	{VIRTCHNL_PROTO_HDR_ESP,	ICE_FLOW_SEG_HDR_ESP},
+	{VIRTCHNL_PROTO_HDR_AH,		ICE_FLOW_SEG_HDR_AH},
+	{VIRTCHNL_PROTO_HDR_PFCP,	ICE_FLOW_SEG_HDR_PFCP_SESSION},
+};
+
+struct ice_vc_hash_field_match_type {
+	u32 vc_hdr;		/* virtchnl headers
+				 * (VIRTCHNL_PROTO_HDR_XXX)
+				 */
+	u32 vc_hash_field;	/* virtchnl hash fields selector
+				 * FIELD_SELECTOR((VIRTCHNL_PROTO_HDR_ETH_XXX))
+				 */
+	u64 ice_hash_field;	/* ice hash fields
+				 * (BIT_ULL(ICE_FLOW_FIELD_IDX_XXX))
+				 */
+};
+
+static const struct
+ice_vc_hash_field_match_type ice_vc_hash_field_list_os[] = {
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
+		ICE_FLOW_HASH_IPV4},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		ICE_FLOW_HASH_IPV4 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
+		ICE_FLOW_HASH_IPV6},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		ICE_FLOW_HASH_IPV6 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
+		ICE_FLOW_HASH_TCP_PORT},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
+		ICE_FLOW_HASH_UDP_PORT},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
+		ICE_FLOW_HASH_SCTP_PORT},
+};
+
+static const struct
+ice_vc_hash_field_match_type ice_vc_hash_field_list_comms[] = {
+	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_SA)},
+	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_DA)},
+	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_DST),
+		ICE_FLOW_HASH_ETH},
+	{VIRTCHNL_PROTO_HDR_ETH,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_ETHERTYPE),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_TYPE)},
+	{VIRTCHNL_PROTO_HDR_S_VLAN,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_S_VLAN_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_S_VLAN)},
+	{VIRTCHNL_PROTO_HDR_C_VLAN,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_C_VLAN_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_C_VLAN)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
+		ICE_FLOW_HASH_IPV4},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		ICE_FLOW_HASH_IPV4 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
+		ICE_FLOW_HASH_IPV6},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA) |
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		ICE_FLOW_HASH_IPV6 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_TCP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
+		ICE_FLOW_HASH_TCP_PORT},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_UDP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
+		ICE_FLOW_HASH_UDP_PORT},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)},
+	{VIRTCHNL_PROTO_HDR_SCTP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
+		ICE_FLOW_HASH_SCTP_PORT},
+	{VIRTCHNL_PROTO_HDR_PPPOE,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PPPOE_SESS_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID)},
+	{VIRTCHNL_PROTO_HDR_GTPU_IP,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_GTPU_IP_TEID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_IP_TEID)},
+	{VIRTCHNL_PROTO_HDR_L2TPV3,
+		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_L2TPV3_SESS_ID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_L2TPV3_SESS_ID)},
+	{VIRTCHNL_PROTO_HDR_ESP, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ESP_SPI),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_ESP_SPI)},
+	{VIRTCHNL_PROTO_HDR_AH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_AH_SPI),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_AH_SPI)},
+	{VIRTCHNL_PROTO_HDR_PFCP, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_PFCP_SEID),
+		BIT_ULL(ICE_FLOW_FIELD_IDX_PFCP_SEID)},
+};
 
 /**
  * ice_validate_vf_id - helper to check if VF ID is valid
@@ -1979,6 +2219,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
 
+	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
+		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF;
+
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
@@ -2086,6 +2329,211 @@ static bool ice_vc_isvalid_ring_len(u16 ring_len)
 		!(ring_len % ICE_REQ_DESC_MULTIPLE));
 }
 
+/**
+ * ice_vc_parse_rss_cfg - parses hash fields and headers from
+ * a specific virtchnl RSS cfg
+ * @hw: pointer to the hardware
+ * @rss_cfg: pointer to the virtchnl rss cfg
+ * @addl_hdrs: pointer to the protocol header fields (ICE_FLOW_SEG_HDR_*)
+ * to configure
+ * @hash_flds: pointer to the hash bit fields (ICE_FLOW_HASH_*) to configure
+ *
+ * Return true if all the protocol header and hash fields in the rss cfg could
+ * be parsed, else return false
+ *
+ * This function parses the virtchnl rss cfg to be the intended
+ * hash fields and the intended header for RSS configuration
+ */
+static bool
+ice_vc_parse_rss_cfg(struct ice_hw *hw, struct virtchnl_rss_cfg *rss_cfg,
+		     u32 *addl_hdrs, u64 *hash_flds)
+{
+	const struct ice_vc_hash_field_match_type *hf_list;
+	const struct ice_vc_hdr_match_type *hdr_list;
+	int i, hf_list_len, hdr_list_len;
+
+	if (!strncmp(hw->active_pkg_name, "ICE COMMS Package",
+		     sizeof(hw->active_pkg_name))) {
+		hf_list = ice_vc_hash_field_list_comms;
+		hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list_comms);
+		hdr_list = ice_vc_hdr_list_comms;
+		hdr_list_len = ARRAY_SIZE(ice_vc_hdr_list_comms);
+	} else {
+		hf_list = ice_vc_hash_field_list_os;
+		hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list_os);
+		hdr_list = ice_vc_hdr_list_os;
+		hdr_list_len = ARRAY_SIZE(ice_vc_hdr_list_os);
+	}
+
+	for (i = 0; i < rss_cfg->proto_hdrs.count; i++) {
+		struct virtchnl_proto_hdr *proto_hdr = &rss_cfg->proto_hdrs.proto_hdr[i];
+		bool hdr_found = false;
+		int j;
+
+		/* Find matched ice headers according to virtchnl headers. */
+		for (j = 0; j < hdr_list_len; j++) {
+			struct ice_vc_hdr_match_type hdr_map = hdr_list[j];
+
+			if (proto_hdr->type == hdr_map.vc_hdr) {
+				*addl_hdrs |= hdr_map.ice_hdr;
+				hdr_found = true;
+			}
+		}
+
+		if (!hdr_found)
+			return false;
+
+		/* Find matched ice hash fields according to
+		 * virtchnl hash fields.
+		 */
+		for (j = 0; j < hf_list_len; j++) {
+			struct ice_vc_hash_field_match_type hf_map = hf_list[j];
+
+			if (proto_hdr->type == hf_map.vc_hdr &&
+			    proto_hdr->field_selector == hf_map.vc_hash_field) {
+				*hash_flds |= hf_map.ice_hash_field;
+				break;
+			}
+		}
+	}
+
+	return true;
+}
+
+/**
+ * ice_vf_adv_rss_offload_ena - determine if capabilities support advanced
+ * rss offloads
+ * @caps: VF driver negotiated capabilities
+ *
+ * Return true if VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF capability is set,
+ * else return false
+ */
+static bool ice_vf_adv_rss_offload_ena(u32 caps)
+{
+	return !!(caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF);
+}
+
+/**
+ * ice_vc_handle_rss_cfg
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer
+ * @add: add a rss cfg if true, otherwise delete a rss cfg
+ *
+ * This function adds/deletes a rss cfg
+ */
+static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
+{
+	u32 v_opcode = add ? VIRTCHNL_OP_ADD_RSS_CFG : VIRTCHNL_OP_DEL_RSS_CFG;
+	struct virtchnl_rss_cfg *rss_cfg = (struct virtchnl_rss_cfg *)msg;
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_hw *hw = &vf->pf->hw;
+	struct ice_vsi *vsi;
+
+	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
+		dev_dbg(dev, "VF %d attempting to configure RSS, but RSS is not supported by the PF\n",
+			vf->vf_id);
+		v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
+		goto error_param;
+	}
+
+	if (!ice_vf_adv_rss_offload_ena(vf->driver_caps)) {
+		dev_dbg(dev, "VF %d attempting to configure RSS, but Advanced RSS offload is not supported\n",
+			vf->vf_id);
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (rss_cfg->proto_hdrs.count > VIRTCHNL_MAX_NUM_PROTO_HDRS ||
+	    rss_cfg->rss_algorithm < VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC ||
+	    rss_cfg->rss_algorithm > VIRTCHNL_RSS_ALG_XOR_SYMMETRIC) {
+		dev_dbg(dev, "VF %d attempting to configure RSS, but RSS configuration is not valid\n",
+			vf->vf_id);
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
+	if (rss_cfg->rss_algorithm == VIRTCHNL_RSS_ALG_R_ASYMMETRIC) {
+		struct ice_vsi_ctx *ctx;
+		enum ice_status status;
+		u8 lut_type, hash_type;
+
+		lut_type = ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
+		hash_type = add ? ICE_AQ_VSI_Q_OPT_RSS_XOR :
+				ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
+
+		ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+		if (!ctx) {
+			v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+			goto error_param;
+		}
+
+		ctx->info.q_opt_rss = ((lut_type <<
+					ICE_AQ_VSI_Q_OPT_RSS_LUT_S) &
+				       ICE_AQ_VSI_Q_OPT_RSS_LUT_M) |
+				       (hash_type &
+					ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
+
+		/* Preserve existing queueing option setting */
+		ctx->info.q_opt_rss |= (vsi->info.q_opt_rss &
+					  ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M);
+		ctx->info.q_opt_tc = vsi->info.q_opt_tc;
+		ctx->info.q_opt_flags = vsi->info.q_opt_rss;
+
+		ctx->info.valid_sections =
+				cpu_to_le16(ICE_AQ_VSI_PROP_Q_OPT_VALID);
+
+		status = ice_update_vsi(hw, vsi->idx, ctx, NULL);
+		if (status) {
+			dev_err(dev,
+				"update VSI for RSS failed, err %s aq_err %s\n",
+				ice_stat_str(status),
+				ice_aq_str(hw->adminq.sq_last_status));
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		} else {
+			vsi->info.q_opt_rss = ctx->info.q_opt_rss;
+		}
+
+		kfree(ctx);
+	} else {
+		u32 addl_hdrs = ICE_FLOW_SEG_HDR_NONE;
+		u64 hash_flds = ICE_HASH_INVALID;
+
+		if (!ice_vc_parse_rss_cfg(hw, rss_cfg, &addl_hdrs,
+					  &hash_flds)) {
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto error_param;
+		}
+
+		if (add) {
+			if (ice_add_rss_cfg(hw, vsi->idx, hash_flds,
+					    addl_hdrs)) {
+				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+				dev_err(dev,
+					"ice_add_rss_cfg failed for vsi = %d, v_ret = %d\n",
+					vsi->vsi_num, v_ret);
+			}
+		} else {
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			dev_err(dev, "RSS removal not support\n");
+		}
+	}
+
+error_param:
+	return ice_vc_send_msg_to_vf(vf, v_opcode, v_ret, NULL, 0);
+}
+
 /**
  * ice_vc_config_rss_key
  * @vf: pointer to the VF info
@@ -3894,6 +4342,12 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
 		err = ice_vc_dis_vlan_stripping(vf);
 		break;
+	case VIRTCHNL_OP_ADD_RSS_CFG:
+		err = ice_vc_handle_rss_cfg(vf, msg, true);
+		break;
+	case VIRTCHNL_OP_DEL_RSS_CFG:
+		err = ice_vc_handle_rss_cfg(vf, msg, false);
+		break;
 	case VIRTCHNL_OP_UNKNOWN:
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 8da594a5cf5c..1835d4be7cf6 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -136,6 +136,9 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_CHANNELS = 31,
 	VIRTCHNL_OP_ADD_CLOUD_FILTER = 32,
 	VIRTCHNL_OP_DEL_CLOUD_FILTER = 33,
+	/* opcode 34 - 44 are reserved */
+	VIRTCHNL_OP_ADD_RSS_CFG = 45,
+	VIRTCHNL_OP_DEL_RSS_CFG = 46,
 	/* New major set of opcodes introduced and so leaving room for
 	 * old misc opcodes to be added in future. Also these opcodes may only
 	 * be used if both the PF and VF have successfully negotiated the
@@ -275,6 +278,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM		0X00200000
 #define VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM	0X00400000
 #define VIRTCHNL_VF_OFFLOAD_ADQ			0X00800000
+#define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		0X08000000
 
 /* Define below the capability flags that are not offloads */
 #define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		0x00000080
@@ -1143,6 +1147,169 @@ struct virtchnl_sriov_vfs_info {
 
 VIRTCHNL_CHECK_STRUCT_LEN(2, virtchnl_sriov_vfs_info);
 
+#define VIRTCHNL_MAX_NUM_PROTO_HDRS	32
+#define PROTO_HDR_SHIFT			5
+#define PROTO_HDR_FIELD_START(proto_hdr_type) ((proto_hdr_type) << PROTO_HDR_SHIFT)
+#define PROTO_HDR_FIELD_MASK ((1UL << PROTO_HDR_SHIFT) - 1)
+
+/* VF use these macros to configure each protocol header.
+ * Specify which protocol headers and protocol header fields base on
+ * virtchnl_proto_hdr_type and virtchnl_proto_hdr_field.
+ * @param hdr: a struct of virtchnl_proto_hdr
+ * @param hdr_type: ETH/IPV4/TCP, etc
+ * @param field: SRC/DST/TEID/SPI, etc
+ */
+#define VIRTCHNL_ADD_PROTO_HDR_FIELD(hdr, field) \
+	((hdr)->field_selector |= BIT((field) & PROTO_HDR_FIELD_MASK))
+#define VIRTCHNL_DEL_PROTO_HDR_FIELD(hdr, field) \
+	((hdr)->field_selector &= ~BIT((field) & PROTO_HDR_FIELD_MASK))
+#define VIRTCHNL_TEST_PROTO_HDR_FIELD(hdr, val) \
+	((hdr)->field_selector & BIT((val) & PROTO_HDR_FIELD_MASK))
+#define VIRTCHNL_GET_PROTO_HDR_FIELD(hdr)	((hdr)->field_selector)
+
+#define VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, hdr_type, field) \
+	(VIRTCHNL_ADD_PROTO_HDR_FIELD(hdr, \
+		VIRTCHNL_PROTO_HDR_ ## hdr_type ## _ ## field))
+#define VIRTCHNL_DEL_PROTO_HDR_FIELD_BIT(hdr, hdr_type, field) \
+	(VIRTCHNL_DEL_PROTO_HDR_FIELD(hdr, \
+		VIRTCHNL_PROTO_HDR_ ## hdr_type ## _ ## field))
+
+#define VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, hdr_type) \
+	((hdr)->type = VIRTCHNL_PROTO_HDR_ ## hdr_type)
+#define VIRTCHNL_GET_PROTO_HDR_TYPE(hdr) \
+	(((hdr)->type) >> PROTO_HDR_SHIFT)
+#define VIRTCHNL_TEST_PROTO_HDR_TYPE(hdr, val) \
+	((hdr)->type == ((val) >> PROTO_HDR_SHIFT))
+#define VIRTCHNL_TEST_PROTO_HDR(hdr, val) \
+	(VIRTCHNL_TEST_PROTO_HDR_TYPE((hdr), (val)) && \
+	 VIRTCHNL_TEST_PROTO_HDR_FIELD((hdr), (val)))
+
+/* Protocol header type within a packet segment. A segment consists of one or
+ * more protocol headers that make up a logical group of protocol headers. Each
+ * logical group of protocol headers encapsulates or is encapsulated using/by
+ * tunneling or encapsulation protocols for network virtualization.
+ */
+enum virtchnl_proto_hdr_type {
+	VIRTCHNL_PROTO_HDR_NONE,
+	VIRTCHNL_PROTO_HDR_ETH,
+	VIRTCHNL_PROTO_HDR_S_VLAN,
+	VIRTCHNL_PROTO_HDR_C_VLAN,
+	VIRTCHNL_PROTO_HDR_IPV4,
+	VIRTCHNL_PROTO_HDR_IPV6,
+	VIRTCHNL_PROTO_HDR_TCP,
+	VIRTCHNL_PROTO_HDR_UDP,
+	VIRTCHNL_PROTO_HDR_SCTP,
+	VIRTCHNL_PROTO_HDR_GTPU_IP,
+	VIRTCHNL_PROTO_HDR_GTPU_EH,
+	VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_DWN,
+	VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_UP,
+	VIRTCHNL_PROTO_HDR_PPPOE,
+	VIRTCHNL_PROTO_HDR_L2TPV3,
+	VIRTCHNL_PROTO_HDR_ESP,
+	VIRTCHNL_PROTO_HDR_AH,
+	VIRTCHNL_PROTO_HDR_PFCP,
+};
+
+/* Protocol header field within a protocol header. */
+enum virtchnl_proto_hdr_field {
+	/* ETHER */
+	VIRTCHNL_PROTO_HDR_ETH_SRC =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_ETH),
+	VIRTCHNL_PROTO_HDR_ETH_DST,
+	VIRTCHNL_PROTO_HDR_ETH_ETHERTYPE,
+	/* S-VLAN */
+	VIRTCHNL_PROTO_HDR_S_VLAN_ID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_S_VLAN),
+	/* C-VLAN */
+	VIRTCHNL_PROTO_HDR_C_VLAN_ID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_C_VLAN),
+	/* IPV4 */
+	VIRTCHNL_PROTO_HDR_IPV4_SRC =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV4),
+	VIRTCHNL_PROTO_HDR_IPV4_DST,
+	VIRTCHNL_PROTO_HDR_IPV4_DSCP,
+	VIRTCHNL_PROTO_HDR_IPV4_TTL,
+	VIRTCHNL_PROTO_HDR_IPV4_PROT,
+	/* IPV6 */
+	VIRTCHNL_PROTO_HDR_IPV6_SRC =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV6),
+	VIRTCHNL_PROTO_HDR_IPV6_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_TC,
+	VIRTCHNL_PROTO_HDR_IPV6_HOP_LIMIT,
+	VIRTCHNL_PROTO_HDR_IPV6_PROT,
+	/* TCP */
+	VIRTCHNL_PROTO_HDR_TCP_SRC_PORT =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_TCP),
+	VIRTCHNL_PROTO_HDR_TCP_DST_PORT,
+	/* UDP */
+	VIRTCHNL_PROTO_HDR_UDP_SRC_PORT =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_UDP),
+	VIRTCHNL_PROTO_HDR_UDP_DST_PORT,
+	/* SCTP */
+	VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_SCTP),
+	VIRTCHNL_PROTO_HDR_SCTP_DST_PORT,
+	/* GTPU_IP */
+	VIRTCHNL_PROTO_HDR_GTPU_IP_TEID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPU_IP),
+	/* GTPU_EH */
+	VIRTCHNL_PROTO_HDR_GTPU_EH_PDU =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPU_EH),
+	VIRTCHNL_PROTO_HDR_GTPU_EH_QFI,
+	/* PPPOE */
+	VIRTCHNL_PROTO_HDR_PPPOE_SESS_ID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_PPPOE),
+	/* L2TPV3 */
+	VIRTCHNL_PROTO_HDR_L2TPV3_SESS_ID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_L2TPV3),
+	/* ESP */
+	VIRTCHNL_PROTO_HDR_ESP_SPI =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_ESP),
+	/* AH */
+	VIRTCHNL_PROTO_HDR_AH_SPI =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_AH),
+	/* PFCP */
+	VIRTCHNL_PROTO_HDR_PFCP_S_FIELD =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_PFCP),
+	VIRTCHNL_PROTO_HDR_PFCP_SEID,
+};
+
+struct virtchnl_proto_hdr {
+	enum virtchnl_proto_hdr_type type;
+	u32 field_selector; /* a bit mask to select field for header type */
+	u8 buffer[64];
+	/**
+	 * binary buffer in network order for specific header type.
+	 * For example, if type = VIRTCHNL_PROTO_HDR_IPV4, a IPv4
+	 * header is expected to be copied into the buffer.
+	 */
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_proto_hdr);
+
+struct virtchnl_proto_hdrs {
+	u8 tunnel_level;
+	/**
+	 * specify where protocol header start from.
+	 * 0 - from the outer layer
+	 * 1 - from the first inner layer
+	 * 2 - from the second inner layer
+	 * ....
+	 **/
+	int count; /* the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS */
+	struct virtchnl_proto_hdr proto_hdr[VIRTCHNL_MAX_NUM_PROTO_HDRS];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl_proto_hdrs);
+
+struct virtchnl_rss_cfg {
+	struct virtchnl_proto_hdrs proto_hdrs;	   /* protocol headers */
+	enum virtchnl_rss_algorithm rss_algorithm; /* rss algorithm type */
+	u8 reserved[128];                          /* reserve for future */
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl_rss_cfg);
+
 /**
  * virtchnl_vc_validate_vf_msg
  * @ver: Virtchnl version info
@@ -1461,6 +1628,10 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DESTROY_VFS:
 		valid_len = sizeof(struct virtchnl_sriov_vfs_info);
 		break;
+	case VIRTCHNL_OP_ADD_RSS_CFG:
+	case VIRTCHNL_OP_DEL_RSS_CFG:
+		valid_len = sizeof(struct virtchnl_rss_cfg);
+		break;
 	/* These are always errors coming from the VF. */
 	case VIRTCHNL_OP_EVENT:
 	case VIRTCHNL_OP_UNKNOWN:
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
