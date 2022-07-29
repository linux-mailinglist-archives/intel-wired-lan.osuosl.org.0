Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3BE584F54
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 13:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1E6540B63;
	Fri, 29 Jul 2022 11:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1E6540B63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659092693;
	bh=MKYRGxOB5rjfMd6Tt1eG9DnLs41qocsf2tOcM0whpc4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FuZ9vNH/sUjX8e6gHeJUqUmKoR3HoiRXoC8I/yANUueaPPXqKKtQWfMWswALOgTi7
	 5QvLo8uY11NZmZXc9hmetHZq/9e701uD2sPRI9zZfuWlEp5rFJRBHiWCTOWLvb6h9M
	 xRX8VK8ubhgp4t3VSIEnROEQHhu5bbNckHdkG7fwt07l1Eniy+T5xIfaBucO9Mj9WH
	 yrppHVK91gFupU6rvsGicOsAchgI4KCv/qmb469iliq4ri0YxLTzshnhPVEksadtq+
	 lI469Ge5OMpkIfP9YB34OhI5l+IY3HmD66EbiSLFUGYy901NKdHWFkb3InMy+HL0UX
	 MSPQq0xFJaCoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h_XHPfOyNPYp; Fri, 29 Jul 2022 11:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66AC340486;
	Fri, 29 Jul 2022 11:04:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66AC340486
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3F951BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 11:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD27760F25
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 11:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD27760F25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E0HtCGlzjZ7n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 11:04:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B786E60B56
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B786E60B56
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 11:04:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="289514744"
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="289514744"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 04:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="727712937"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 29 Jul 2022 04:04:16 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26TB4FSr030915; Fri, 29 Jul 2022 12:04:15 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Jul 2022 13:03:37 +0200
Message-Id: <20220729110337.11243-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659092686; x=1690628686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Cl/xYsrv8Pdt/rBnu7MI2Qk4CJKpa8cnsom0j6G443o=;
 b=EdIEbgt3r752jqH77ibbJfeZEXD7FiUGx2Io1k35jj2ZnHojt6RlVgvQ
 HKOJD5Zc1SrqQJcM19PqpHXHH82HIne8rsEpgFvRcOzGW2AvE25voqqWN
 TL03hEN1cqwcSXQCp47vMIql1lA0uNs6Wdz6WXh5nX1Ait78mMD3fiKtm
 x8yDuWgPxplJSBGY84z9ipHuNIlA4ZuezJDQ56K5qMebSZ05Mm1DB78Nh
 4g4ji3FIV2ZwQO7vzmE3LKR1H8GsiR0sIX3UkamjJO20ZFYG65S1owaSh
 lfdprGkxLm8do+GZYcGSTcOtIiGmhOJfcBv30JA/Puzpd61PYzltAy8vp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EdIEbgt3
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Add support for ip TTL &
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
v3: rebase (update ICE_TC_FLWR_FIELD_*)
v2: wrap bitops conditions in brackets, use be32p_replace_bits to set
    TC field in ipv6 header (thanks Alex!)

 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 142 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |   6 +
 2 files changed, 144 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index a298862857a8..42df686e0215 100644
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
 
@@ -64,6 +68,9 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
 		lkups_cnt++;
 
+	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))
+		lkups_cnt++;
+
 	/* is L4 (TCP/UDP/any other L4 protocol fields) specified? */
 	if (flags & (ICE_TC_FLWR_FIELD_DEST_L4_PORT |
 		     ICE_TC_FLWR_FIELD_SRC_L4_PORT))
@@ -257,6 +264,50 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
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
@@ -420,6 +471,50 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
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
@@ -838,6 +933,40 @@ ice_tc_set_ipv6(struct flow_match_ipv6_addrs *match,
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
@@ -967,10 +1096,7 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		struct flow_match_ip match;
 
 		flow_rule_match_enc_ip(rule, &match);
-		headers->l3_key.tos = match.key->tos;
-		headers->l3_key.ttl = match.key->ttl;
-		headers->l3_mask.tos = match.mask->tos;
-		headers->l3_mask.ttl = match.mask->ttl;
+		ice_tc_set_tos_ttl(&match, fltr, headers, true);
 	}
 
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS) &&
@@ -1039,6 +1165,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_PORTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_OPTS) |
+	      BIT(FLOW_DISSECTOR_KEY_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_PORTS) |
 	      BIT(FLOW_DISSECTOR_KEY_PPPOE))) {
@@ -1217,6 +1344,13 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
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
index 91cd3d3778c7..f397ed02606d 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -26,9 +26,15 @@
 #define ICE_TC_FLWR_FIELD_CVLAN			BIT(19)
 #define ICE_TC_FLWR_FIELD_PPPOE_SESSID		BIT(20)
 #define ICE_TC_FLWR_FIELD_PPP_PROTO		BIT(21)
+#define ICE_TC_FLWR_FIELD_IP_TOS		BIT(22)
+#define ICE_TC_FLWR_FIELD_IP_TTL		BIT(23)
+#define ICE_TC_FLWR_FIELD_ENC_IP_TOS		BIT(24)
+#define ICE_TC_FLWR_FIELD_ENC_IP_TTL		BIT(25)
 
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
