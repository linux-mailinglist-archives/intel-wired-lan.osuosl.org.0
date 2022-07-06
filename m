Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71871568F18
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jul 2022 18:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A48E760C09;
	Wed,  6 Jul 2022 16:27:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A48E760C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657124832;
	bh=nAaJoNTJPW7LqrgqscfmO8CjH3sz6RmAmsSyC5nNSDc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=82438gTYyKXqIl7IecETUdaQMtOK6zvIMcE0BNA5GyQlPk68XzCV1HvLGzhY2cIT7
	 gDEpj6jqLH1GKvL3pL/qP7FjfObyITrWR553hiKaIhyrIslTBYJ+unz8szLKK9PguO
	 bhC/FH64XRPpfV7wysnRTZs37a11obIvaZvnlWRma9NBCSlIYuW+JI5FRDtkNnR+qV
	 A/XcvS65CXhQh7dybzc6aJRdBmYgiAc9kDi1BGHX2BA6ko8EHbV/yOnEFpEJIfBr0q
	 /efTtSK15QTrcmcqibL4awOxSfdB3sAKzPJodiMOJWrs+KEIgKp3+THs9OEeKgfZc6
	 7rLQ5VwSAVTXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 93UtTBHq2lUK; Wed,  6 Jul 2022 16:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 616C5607F5;
	Wed,  6 Jul 2022 16:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 616C5607F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BD6E1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 16:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19C1740ADA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 16:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19C1740ADA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UtMRs7Gt_okZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jul 2022 16:27:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B06F400C6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B06F400C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 16:27:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="309357430"
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="309357430"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 09:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="839596979"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jul 2022 09:27:03 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 266GR2gt017656; Wed, 6 Jul 2022 17:27:02 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Jul 2022 18:26:39 +0200
Message-Id: <20220706162639.8897-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657124826; x=1688660826;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wejjt1GjNPZ/YeYzycbgdIKfM2gPxYwOdeUMtJoySWQ=;
 b=QSFRu3h0OO1OxTd1huGHOv9SSjvCdX7pEl2Cs/i7xlBjFHOJFYuXrXpl
 1FBJwEp75MhxWJ4UAVCxWX4WtGUuxRWxrfJwggE0Hyt/wpzGcSCd/lT9Q
 8pSVhlP20w5JR6FGd9JmdKlmnr/fzu3hEv4MzS/wmO0f8NQrIBsCXZ4Gs
 L9NIbvrOcO3U3z+c8Ko8bfZT8DHPSE0tiX0sNaGfR4tW0UuDJiK+gzoaF
 Njl2v9bX8zBDWvExTk5vAlOgnoD3XSaiZUQhmNMUZfDLyOnhrz2iS49gN
 KJkE5tjleRNJUSF1hFaMO3V9UyQQacAMgMQrFrpcgVzUXerB7HyKp3Kz4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QSFRu3h0
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for ip TTL &
 ToS offload
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

Add support for parsing TTL and ToS (Hop Limit and Traffic Class) tc fields
and matching on those fields in filters. Incomplete part of implementation
was already in place (getting enc_ip and enc_tos from flow_match_ip and
writing them to filter header).

Note: matching on ipv6 ip_ttl, enc_ttl and enc_tos is currently not
supported by the DDP package.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v2: wrap bitops conditions in brackets, use be32p_replace_bits to set
    TC field in ipv6 header (thanks Alex!)

 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 142 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |   6 +
 2 files changed, 144 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 14795157846b..668d5ef0d1a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -36,6 +36,10 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 		     ICE_TC_FLWR_FIELD_ENC_DEST_IPV6))
 		lkups_cnt++;
 
+	if (flags & (ICE_TC_FLWR_FIELD_ENC_IP_TOS |
+		     ICE_TC_FLWR_FIELD_ENC_IP_TTL))
+		lkups_cnt++;
+
 	if (flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT)
 		lkups_cnt++;
 
@@ -59,6 +63,9 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
 		lkups_cnt++;
 
+	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))
+		lkups_cnt++;
+
 	/* is L4 (TCP/UDP/any other L4 protocol fields) specified? */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_L4_PORT |
 		     ICE_TC_FLWR_FIELD_SRC_L4_PORT))
@@ -252,6 +259,50 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 		i++;
 	}
 
+	if (fltr->inner_headers.l2_key.n_proto == htons(ETH_P_IP) &&
+	    (flags & (ICE_TC_FLWR_FIELD_ENC_IP_TOS |
+		      ICE_TC_FLWR_FIELD_ENC_IP_TTL))) {
+		list[i].type = ice_proto_type_from_ipv4(false);
+
+		if (flags & ICE_TC_FLWR_FIELD_ENC_IP_TOS) {
+			list[i].h_u.ipv4_hdr.tos = hdr->l3_key.tos;
+			list[i].m_u.ipv4_hdr.tos = hdr->l3_mask.tos;
+		}
+
+		if (flags & ICE_TC_FLWR_FIELD_ENC_IP_TTL) {
+			list[i].h_u.ipv4_hdr.time_to_live = hdr->l3_key.ttl;
+			list[i].m_u.ipv4_hdr.time_to_live = hdr->l3_mask.ttl;
+		}
+
+		i++;
+	}
+
+	if (fltr->inner_headers.l2_key.n_proto == htons(ETH_P_IPV6) &&
+	    (flags & (ICE_TC_FLWR_FIELD_ENC_IP_TOS |
+		      ICE_TC_FLWR_FIELD_ENC_IP_TTL))) {
+		struct ice_ipv6_hdr *hdr_h, *hdr_m;
+
+		hdr_h = &list[i].h_u.ipv6_hdr;
+		hdr_m = &list[i].m_u.ipv6_hdr;
+		list[i].type = ice_proto_type_from_ipv6(false);
+
+		if (flags & ICE_TC_FLWR_FIELD_ENC_IP_TOS) {
+			be32p_replace_bits(&hdr_h->be_ver_tc_flow,
+					   hdr->l3_key.tos,
+					   ICE_IPV6_HDR_TC_MASK);
+			be32p_replace_bits(&hdr_m->be_ver_tc_flow,
+					   hdr->l3_mask.tos,
+					   ICE_IPV6_HDR_TC_MASK);
+		}
+
+		if (flags & ICE_TC_FLWR_FIELD_ENC_IP_TTL) {
+			hdr_h->hop_limit = hdr->l3_key.ttl;
+			hdr_m->hop_limit = hdr->l3_mask.ttl;
+		}
+
+		i++;
+	}
+
 	if ((flags & ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT) &&
 	    hdr->l3_key.ip_proto == IPPROTO_UDP) {
 		list[i].type = ICE_UDP_OF;
@@ -393,6 +444,50 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		i++;
 	}
 
+	if (headers->l2_key.n_proto == htons(ETH_P_IP) &&
+	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))) {
+		list[i].type = ice_proto_type_from_ipv4(inner);
+
+		if (flags & ICE_TC_FLWR_FIELD_IP_TOS) {
+			list[i].h_u.ipv4_hdr.tos = headers->l3_key.tos;
+			list[i].m_u.ipv4_hdr.tos = headers->l3_mask.tos;
+		}
+
+		if (flags & ICE_TC_FLWR_FIELD_IP_TTL) {
+			list[i].h_u.ipv4_hdr.time_to_live =
+				headers->l3_key.ttl;
+			list[i].m_u.ipv4_hdr.time_to_live =
+				headers->l3_mask.ttl;
+		}
+
+		i++;
+	}
+
+	if (headers->l2_key.n_proto == htons(ETH_P_IPV6) &&
+	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))) {
+		struct ice_ipv6_hdr *hdr_h, *hdr_m;
+
+		hdr_h = &list[i].h_u.ipv6_hdr;
+		hdr_m = &list[i].m_u.ipv6_hdr;
+		list[i].type = ice_proto_type_from_ipv6(inner);
+
+		if (flags & ICE_TC_FLWR_FIELD_IP_TOS) {
+			be32p_replace_bits(&hdr_h->be_ver_tc_flow,
+					   headers->l3_key.tos,
+					   ICE_IPV6_HDR_TC_MASK);
+			be32p_replace_bits(&hdr_m->be_ver_tc_flow,
+					   headers->l3_mask.tos,
+					   ICE_IPV6_HDR_TC_MASK);
+		}
+
+		if (flags & ICE_TC_FLWR_FIELD_IP_TTL) {
+			hdr_h->hop_limit = headers->l3_key.ttl;
+			hdr_m->hop_limit = headers->l3_mask.ttl;
+		}
+
+		i++;
+	}
+
 	/* copy L4 (src, dest) port */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_L4_PORT |
 		     ICE_TC_FLWR_FIELD_SRC_L4_PORT)) {
@@ -786,6 +881,40 @@ ice_tc_set_ipv6(struct flow_match_ipv6_addrs *match,
 	return 0;
 }
 
+/**
+ * ice_tc_set_tos_ttl - Parse IP ToS/TTL from TC flower filter
+ * @match: Pointer to flow match structure
+ * @fltr: Pointer to filter structure
+ * @headers: inner or outer header fields
+ * @is_encap: set true for tunnel
+ */
+static void
+ice_tc_set_tos_ttl(struct flow_match_ip *match,
+		   struct ice_tc_flower_fltr *fltr,
+		   struct ice_tc_flower_lyr_2_4_hdrs *headers,
+		   bool is_encap)
+{
+	if (match->mask->tos) {
+		if (is_encap)
+			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_IP_TOS;
+		else
+			fltr->flags |= ICE_TC_FLWR_FIELD_IP_TOS;
+
+		headers->l3_key.tos = match->key->tos;
+		headers->l3_mask.tos = match->mask->tos;
+	}
+
+	if (match->mask->ttl) {
+		if (is_encap)
+			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_IP_TTL;
+		else
+			fltr->flags |= ICE_TC_FLWR_FIELD_IP_TTL;
+
+		headers->l3_key.ttl = match->key->ttl;
+		headers->l3_mask.ttl = match->mask->ttl;
+	}
+}
+
 /**
  * ice_tc_set_port - Parse ports from TC flower filter
  * @match: Flow match structure
@@ -915,10 +1044,7 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		struct flow_match_ip match;
 
 		flow_rule_match_enc_ip(rule, &match);
-		headers->l3_key.tos = match.key->tos;
-		headers->l3_key.ttl = match.key->ttl;
-		headers->l3_mask.tos = match.mask->tos;
-		headers->l3_mask.ttl = match.mask->ttl;
+		ice_tc_set_tos_ttl(&match, fltr, headers, true);
 	}
 
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS) &&
@@ -987,6 +1113,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_PORTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_OPTS) |
+	      BIT(FLOW_DISSECTOR_KEY_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
@@ -1148,6 +1275,13 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 			return -EINVAL;
 	}
 
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_IP)) {
+		struct flow_match_ip match;
+
+		flow_rule_match_ip(rule, &match);
+		ice_tc_set_tos_ttl(&match, fltr, headers, false);
+	}
+
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_PORTS)) {
 		struct flow_match_ports match;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 0193874cd203..7da9b92e3b49 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -24,9 +24,15 @@
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
 #define ICE_TC_FLWR_FIELD_ENC_OPTS		BIT(18)
 #define ICE_TC_FLWR_FIELD_CVLAN			BIT(19)
+#define ICE_TC_FLWR_FIELD_IP_TOS		BIT(20)
+#define ICE_TC_FLWR_FIELD_IP_TTL		BIT(21)
+#define ICE_TC_FLWR_FIELD_ENC_IP_TOS		BIT(22)
+#define ICE_TC_FLWR_FIELD_ENC_IP_TTL		BIT(23)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
+#define ICE_IPV6_HDR_TC_MASK 0xFF00000
+
 struct ice_indr_block_priv {
 	struct net_device *netdev;
 	struct ice_netdev_priv *np;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
