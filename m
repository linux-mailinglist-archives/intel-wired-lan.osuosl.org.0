Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEDD3CBF49
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jul 2021 00:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4043483D63;
	Fri, 16 Jul 2021 22:29:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id shveaRd8y8HC; Fri, 16 Jul 2021 22:29:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD38A83D72;
	Fri, 16 Jul 2021 22:29:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21EF01BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F04FA60679
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doo31RDJSdCn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A877D60630
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jul 2021 22:29:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="208981787"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="208981787"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 15:29:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="497176525"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jul 2021 15:29:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Jul 2021 15:16:43 -0700
Message-Id: <20210716221644.45946-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 6/7] ice: refactor PTYPE
 validating
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jeff Guo <jia.guo@intel.com>

Since the capability of a PTYPE within a specific package could be
negotiated by checking the HW bit map, it means that there's no need
to maintain a different PTYPE list for each type of the package when
parsing PTYPE. So refactor the PTYPE validating mechanism.

Signed-off-by: Jeff Guo <jia.guo@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_flex_type.h    |  22 ++
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 274 +-----------------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 207 ++++++-------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   2 +
 4 files changed, 133 insertions(+), 372 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index 647304f88b78..6358e5776e02 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -200,6 +200,24 @@ enum ice_sect {
 	ICE_SECT_COUNT
 };
 
+/* Packet Type (PTYPE) values */
+#define ICE_PTYPE_MAC_PAY		1
+#define ICE_PTYPE_IPV4_PAY		23
+#define ICE_PTYPE_IPV4_UDP_PAY		24
+#define ICE_PTYPE_IPV4_TCP_PAY		26
+#define ICE_PTYPE_IPV4_SCTP_PAY		27
+#define ICE_PTYPE_IPV6_PAY		89
+#define ICE_PTYPE_IPV6_UDP_PAY		90
+#define ICE_PTYPE_IPV6_TCP_PAY		92
+#define ICE_PTYPE_IPV6_SCTP_PAY		93
+#define ICE_MAC_IPV4_ESP		160
+#define ICE_MAC_IPV6_ESP		161
+#define ICE_MAC_IPV4_AH			162
+#define ICE_MAC_IPV6_AH			163
+#define ICE_MAC_IPV4_NAT_T_ESP		164
+#define ICE_MAC_IPV6_NAT_T_ESP		165
+#define ICE_MAC_IPV4_GTPU		329
+#define ICE_MAC_IPV6_GTPU		330
 #define ICE_MAC_IPV4_GTPU_IPV4_FRAG	331
 #define ICE_MAC_IPV4_GTPU_IPV4_PAY	332
 #define ICE_MAC_IPV4_GTPU_IPV4_UDP_PAY	333
@@ -220,6 +238,10 @@ enum ice_sect {
 #define ICE_MAC_IPV6_GTPU_IPV6_UDP_PAY	348
 #define ICE_MAC_IPV6_GTPU_IPV6_TCP	349
 #define ICE_MAC_IPV6_GTPU_IPV6_ICMPV6	350
+#define ICE_MAC_IPV4_PFCP_SESSION	352
+#define ICE_MAC_IPV6_PFCP_SESSION	354
+#define ICE_MAC_IPV4_L2TPV3		360
+#define ICE_MAC_IPV6_L2TPV3		361
 
 /* Attributes that can modify PTYPE definitions.
  *
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index eee180d8c024..6abf9ed1dd2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -47,197 +47,6 @@ struct virtchnl_fdir_fltr_conf {
 	u32 flow_id;
 };
 
-static enum virtchnl_proto_hdr_type vc_pattern_ether[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_tcp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_TCP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_udp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_UDP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_sctp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_SCTP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6_tcp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_TCP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6_udp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_UDP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6_sctp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_SCTP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_UDP,
-	VIRTCHNL_PROTO_HDR_GTPU_IP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_gtpu_eh[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_UDP,
-	VIRTCHNL_PROTO_HDR_GTPU_IP,
-	VIRTCHNL_PROTO_HDR_GTPU_EH,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_l2tpv3[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_L2TPV3,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6_l2tpv3[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_L2TPV3,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_esp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_ESP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6_esp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_ESP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_ah[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_AH,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6_ah[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_AH,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_nat_t_esp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_UDP,
-	VIRTCHNL_PROTO_HDR_ESP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6_nat_t_esp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_UDP,
-	VIRTCHNL_PROTO_HDR_ESP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv4_pfcp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV4,
-	VIRTCHNL_PROTO_HDR_UDP,
-	VIRTCHNL_PROTO_HDR_PFCP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-static enum virtchnl_proto_hdr_type vc_pattern_ipv6_pfcp[] = {
-	VIRTCHNL_PROTO_HDR_ETH,
-	VIRTCHNL_PROTO_HDR_IPV6,
-	VIRTCHNL_PROTO_HDR_UDP,
-	VIRTCHNL_PROTO_HDR_PFCP,
-	VIRTCHNL_PROTO_HDR_NONE,
-};
-
-struct virtchnl_fdir_pattern_match_item {
-	enum virtchnl_proto_hdr_type *list;
-	u64 input_set;
-	u64 *meta;
-};
-
-static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_os[] = {
-	{vc_pattern_ipv4,                     0,         NULL},
-	{vc_pattern_ipv4_tcp,                 0,         NULL},
-	{vc_pattern_ipv4_udp,                 0,         NULL},
-	{vc_pattern_ipv4_sctp,                0,         NULL},
-	{vc_pattern_ipv6,                     0,         NULL},
-	{vc_pattern_ipv6_tcp,                 0,         NULL},
-	{vc_pattern_ipv6_udp,                 0,         NULL},
-	{vc_pattern_ipv6_sctp,                0,         NULL},
-};
-
-static const struct virtchnl_fdir_pattern_match_item vc_fdir_pattern_comms[] = {
-	{vc_pattern_ipv4,                     0,         NULL},
-	{vc_pattern_ipv4_tcp,                 0,         NULL},
-	{vc_pattern_ipv4_udp,                 0,         NULL},
-	{vc_pattern_ipv4_sctp,                0,         NULL},
-	{vc_pattern_ipv6,                     0,         NULL},
-	{vc_pattern_ipv6_tcp,                 0,         NULL},
-	{vc_pattern_ipv6_udp,                 0,         NULL},
-	{vc_pattern_ipv6_sctp,                0,         NULL},
-	{vc_pattern_ether,                    0,         NULL},
-	{vc_pattern_ipv4_gtpu,                0,         NULL},
-	{vc_pattern_ipv4_gtpu_eh,             0,         NULL},
-	{vc_pattern_ipv4_l2tpv3,              0,         NULL},
-	{vc_pattern_ipv6_l2tpv3,              0,         NULL},
-	{vc_pattern_ipv4_esp,                 0,         NULL},
-	{vc_pattern_ipv6_esp,                 0,         NULL},
-	{vc_pattern_ipv4_ah,                  0,         NULL},
-	{vc_pattern_ipv6_ah,                  0,         NULL},
-	{vc_pattern_ipv4_nat_t_esp,           0,         NULL},
-	{vc_pattern_ipv6_nat_t_esp,           0,         NULL},
-	{vc_pattern_ipv4_pfcp,                0,         NULL},
-	{vc_pattern_ipv6_pfcp,                0,         NULL},
-};
-
 struct virtchnl_fdir_inset_map {
 	enum virtchnl_proto_hdr_field field;
 	enum ice_flow_field fld;
@@ -910,83 +719,6 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	return ret;
 }
 
-/**
- * ice_vc_fdir_match_pattern
- * @fltr: virtual channel add cmd buffer
- * @type: virtual channel protocol filter header type
- *
- * Matching the header type by comparing fltr and type's value.
- *
- * Return: true on success, and false on error.
- */
-static bool
-ice_vc_fdir_match_pattern(struct virtchnl_fdir_add *fltr,
-			  enum virtchnl_proto_hdr_type *type)
-{
-	struct virtchnl_proto_hdrs *proto = &fltr->rule_cfg.proto_hdrs;
-	int i = 0;
-
-	while ((i < proto->count) &&
-	       (*type == proto->proto_hdr[i].type) &&
-	       (*type != VIRTCHNL_PROTO_HDR_NONE)) {
-		type++;
-		i++;
-	}
-
-	return ((i == proto->count) && (*type == VIRTCHNL_PROTO_HDR_NONE));
-}
-
-/**
- * ice_vc_fdir_get_pattern - get while list pattern
- * @vf: pointer to the VF info
- * @len: filter list length
- *
- * Return: pointer to allowed filter list
- */
-static const struct virtchnl_fdir_pattern_match_item *
-ice_vc_fdir_get_pattern(struct ice_vf *vf, int *len)
-{
-	const struct virtchnl_fdir_pattern_match_item *item;
-	struct ice_pf *pf = vf->pf;
-	struct ice_hw *hw;
-
-	hw = &pf->hw;
-	if (!strncmp(hw->active_pkg_name, "ICE COMMS Package",
-		     sizeof(hw->active_pkg_name))) {
-		item = vc_fdir_pattern_comms;
-		*len = ARRAY_SIZE(vc_fdir_pattern_comms);
-	} else {
-		item = vc_fdir_pattern_os;
-		*len = ARRAY_SIZE(vc_fdir_pattern_os);
-	}
-
-	return item;
-}
-
-/**
- * ice_vc_fdir_search_pattern
- * @vf: pointer to the VF info
- * @fltr: virtual channel add cmd buffer
- *
- * Search for matched pattern from supported pattern list
- *
- * Return: 0 on success, and other on error.
- */
-static int
-ice_vc_fdir_search_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr)
-{
-	const struct virtchnl_fdir_pattern_match_item *pattern;
-	int len, i;
-
-	pattern = ice_vc_fdir_get_pattern(vf, &len);
-
-	for (i = 0; i < len; i++)
-		if (ice_vc_fdir_match_pattern(fltr, pattern[i].list))
-			return 0;
-
-	return -EINVAL;
-}
-
 /**
  * ice_vc_fdir_parse_pattern
  * @vf: pointer to the VF info
@@ -1299,11 +1031,11 @@ static int
 ice_vc_validate_fdir_fltr(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 			  struct virtchnl_fdir_fltr_conf *conf)
 {
+	struct virtchnl_proto_hdrs *proto = &fltr->rule_cfg.proto_hdrs;
 	int ret;
 
-	ret = ice_vc_fdir_search_pattern(vf, fltr);
-	if (ret)
-		return ret;
+	if (!ice_vc_validate_pattern(vf, proto))
+		return -EINVAL;
 
 	ret = ice_vc_fdir_parse_pattern(vf, fltr, conf);
 	if (ret)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0a2e0b2c9227..f6ccfd6f3977 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -8,6 +8,7 @@
 #include "ice_flow.h"
 #include "ice_eswitch.h"
 #include "ice_virtchnl_allowlist.h"
+#include "ice_flex_pipe.h"
 
 #define FIELD_SELECTOR(proto_hdr_field) \
 		BIT((proto_hdr_field) & PROTO_HDR_FIELD_MASK)
@@ -17,18 +18,7 @@ struct ice_vc_hdr_match_type {
 	u32 ice_hdr;	/* ice headers (ICE_FLOW_SEG_HDR_XXX) */
 };
 
-static const struct ice_vc_hdr_match_type ice_vc_hdr_list_os[] = {
-	{VIRTCHNL_PROTO_HDR_NONE,	ICE_FLOW_SEG_HDR_NONE},
-	{VIRTCHNL_PROTO_HDR_IPV4,	ICE_FLOW_SEG_HDR_IPV4 |
-					ICE_FLOW_SEG_HDR_IPV_OTHER},
-	{VIRTCHNL_PROTO_HDR_IPV6,	ICE_FLOW_SEG_HDR_IPV6 |
-					ICE_FLOW_SEG_HDR_IPV_OTHER},
-	{VIRTCHNL_PROTO_HDR_TCP,	ICE_FLOW_SEG_HDR_TCP},
-	{VIRTCHNL_PROTO_HDR_UDP,	ICE_FLOW_SEG_HDR_UDP},
-	{VIRTCHNL_PROTO_HDR_SCTP,	ICE_FLOW_SEG_HDR_SCTP},
-};
-
-static const struct ice_vc_hdr_match_type ice_vc_hdr_list_comms[] = {
+static const struct ice_vc_hdr_match_type ice_vc_hdr_list[] = {
 	{VIRTCHNL_PROTO_HDR_NONE,	ICE_FLOW_SEG_HDR_NONE},
 	{VIRTCHNL_PROTO_HDR_ETH,	ICE_FLOW_SEG_HDR_ETH},
 	{VIRTCHNL_PROTO_HDR_S_VLAN,	ICE_FLOW_SEG_HDR_VLAN},
@@ -66,83 +56,7 @@ struct ice_vc_hash_field_match_type {
 };
 
 static const struct
-ice_vc_hash_field_match_type ice_vc_hash_field_list_os[] = {
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST),
-		ICE_FLOW_HASH_IPV4},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA) |
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA) |
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_DST) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
-		ICE_FLOW_HASH_IPV4 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV4, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV4_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST),
-		ICE_FLOW_HASH_IPV6},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA) |
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA) |
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_SRC) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_DST) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
-		ICE_FLOW_HASH_IPV6 | BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
-	{VIRTCHNL_PROTO_HDR_IPV6, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_IPV6_PROT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_PROT)},
-	{VIRTCHNL_PROTO_HDR_TCP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)},
-	{VIRTCHNL_PROTO_HDR_TCP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)},
-	{VIRTCHNL_PROTO_HDR_TCP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_SRC_PORT) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_TCP_DST_PORT),
-		ICE_FLOW_HASH_TCP_PORT},
-	{VIRTCHNL_PROTO_HDR_UDP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)},
-	{VIRTCHNL_PROTO_HDR_UDP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)},
-	{VIRTCHNL_PROTO_HDR_UDP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_SRC_PORT) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_UDP_DST_PORT),
-		ICE_FLOW_HASH_UDP_PORT},
-	{VIRTCHNL_PROTO_HDR_SCTP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)},
-	{VIRTCHNL_PROTO_HDR_SCTP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
-		BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)},
-	{VIRTCHNL_PROTO_HDR_SCTP,
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT) |
-		FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_SCTP_DST_PORT),
-		ICE_FLOW_HASH_SCTP_PORT},
-};
-
-static const struct
-ice_vc_hash_field_match_type ice_vc_hash_field_list_comms[] = {
+ice_vc_hash_field_match_type ice_vc_hash_field_list[] = {
 	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_SRC),
 		BIT_ULL(ICE_FLOW_FIELD_IDX_ETH_SA)},
 	{VIRTCHNL_PROTO_HDR_ETH, FIELD_SELECTOR(VIRTCHNL_PROTO_HDR_ETH_DST),
@@ -2484,6 +2398,100 @@ static bool ice_vc_isvalid_ring_len(u16 ring_len)
 		!(ring_len % ICE_REQ_DESC_MULTIPLE));
 }
 
+/**
+ * ice_vc_validate_pattern
+ * @vf: pointer to the VF info
+ * @proto: virtchnl protocol headers
+ *
+ * validate the pattern is supported or not.
+ *
+ * Return: true on success, false on error.
+ */
+bool
+ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto)
+{
+	bool is_ipv4 = false;
+	bool is_ipv6 = false;
+	bool is_udp = false;
+	u16 ptype = -1;
+	int i = 0;
+
+	while (i < proto->count &&
+	       proto->proto_hdr[i].type != VIRTCHNL_PROTO_HDR_NONE) {
+		switch (proto->proto_hdr[i].type) {
+		case VIRTCHNL_PROTO_HDR_ETH:
+			ptype = ICE_PTYPE_MAC_PAY;
+			break;
+		case VIRTCHNL_PROTO_HDR_IPV4:
+			ptype = ICE_PTYPE_IPV4_PAY;
+			is_ipv4 = true;
+			break;
+		case VIRTCHNL_PROTO_HDR_IPV6:
+			ptype = ICE_PTYPE_IPV6_PAY;
+			is_ipv6 = true;
+			break;
+		case VIRTCHNL_PROTO_HDR_UDP:
+			if (is_ipv4)
+				ptype = ICE_PTYPE_IPV4_UDP_PAY;
+			else if (is_ipv6)
+				ptype = ICE_PTYPE_IPV6_UDP_PAY;
+			is_udp = true;
+			break;
+		case VIRTCHNL_PROTO_HDR_TCP:
+			if (is_ipv4)
+				ptype = ICE_PTYPE_IPV4_TCP_PAY;
+			else if (is_ipv6)
+				ptype = ICE_PTYPE_IPV6_TCP_PAY;
+			break;
+		case VIRTCHNL_PROTO_HDR_SCTP:
+			if (is_ipv4)
+				ptype = ICE_PTYPE_IPV4_SCTP_PAY;
+			else if (is_ipv6)
+				ptype = ICE_PTYPE_IPV6_SCTP_PAY;
+			break;
+		case VIRTCHNL_PROTO_HDR_GTPU_IP:
+		case VIRTCHNL_PROTO_HDR_GTPU_EH:
+			if (is_ipv4)
+				ptype = ICE_MAC_IPV4_GTPU;
+			else if (is_ipv6)
+				ptype = ICE_MAC_IPV6_GTPU;
+			goto out;
+		case VIRTCHNL_PROTO_HDR_L2TPV3:
+			if (is_ipv4)
+				ptype = ICE_MAC_IPV4_L2TPV3;
+			else if (is_ipv6)
+				ptype = ICE_MAC_IPV6_L2TPV3;
+			goto out;
+		case VIRTCHNL_PROTO_HDR_ESP:
+			if (is_ipv4)
+				ptype = is_udp ? ICE_MAC_IPV4_NAT_T_ESP :
+						ICE_MAC_IPV4_ESP;
+			else if (is_ipv6)
+				ptype = is_udp ? ICE_MAC_IPV6_NAT_T_ESP :
+						ICE_MAC_IPV6_ESP;
+			goto out;
+		case VIRTCHNL_PROTO_HDR_AH:
+			if (is_ipv4)
+				ptype = ICE_MAC_IPV4_AH;
+			else if (is_ipv6)
+				ptype = ICE_MAC_IPV6_AH;
+			goto out;
+		case VIRTCHNL_PROTO_HDR_PFCP:
+			if (is_ipv4)
+				ptype = ICE_MAC_IPV4_PFCP_SESSION;
+			else if (is_ipv6)
+				ptype = ICE_MAC_IPV6_PFCP_SESSION;
+			goto out;
+		default:
+			break;
+		}
+		i++;
+	}
+
+out:
+	return ice_hw_ptype_ena(&vf->pf->hw, ptype);
+}
+
 /**
  * ice_vc_parse_rss_cfg - parses hash fields and headers from
  * a specific virtchnl RSS cfg
@@ -2507,18 +2515,10 @@ ice_vc_parse_rss_cfg(struct ice_hw *hw, struct virtchnl_rss_cfg *rss_cfg,
 	const struct ice_vc_hdr_match_type *hdr_list;
 	int i, hf_list_len, hdr_list_len;
 
-	if (!strncmp(hw->active_pkg_name, "ICE COMMS Package",
-		     sizeof(hw->active_pkg_name))) {
-		hf_list = ice_vc_hash_field_list_comms;
-		hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list_comms);
-		hdr_list = ice_vc_hdr_list_comms;
-		hdr_list_len = ARRAY_SIZE(ice_vc_hdr_list_comms);
-	} else {
-		hf_list = ice_vc_hash_field_list_os;
-		hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list_os);
-		hdr_list = ice_vc_hdr_list_os;
-		hdr_list_len = ARRAY_SIZE(ice_vc_hdr_list_os);
-	}
+	hf_list = ice_vc_hash_field_list;
+	hf_list_len = ARRAY_SIZE(ice_vc_hash_field_list);
+	hdr_list = ice_vc_hdr_list;
+	hdr_list_len = ARRAY_SIZE(ice_vc_hdr_list);
 
 	for (i = 0; i < rss_cfg->proto_hdrs.count; i++) {
 		struct virtchnl_proto_hdr *proto_hdr =
@@ -2620,6 +2620,11 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		goto error_param;
 	}
 
+	if (!ice_vc_validate_pattern(vf, &rss_cfg->proto_hdrs)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
 	if (rss_cfg->rss_algorithm == VIRTCHNL_RSS_ALG_R_ASYMMETRIC) {
 		struct ice_vsi_ctx *ctx;
 		enum ice_status status;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 6bad277d16fc..9c1292cf17c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -189,6 +189,8 @@ void
 ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_print_vfs_mdd_events(struct ice_pf *pf);
 void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
+bool
+ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto);
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
 int
 ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
