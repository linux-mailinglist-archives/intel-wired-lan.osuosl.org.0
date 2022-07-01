Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0935637F7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 18:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BE6D415B2;
	Fri,  1 Jul 2022 16:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BE6D415B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656693185;
	bh=qYlK3odiaYXgAG/OHHw/k9MnJ7kzVbpm/rSNIiKJnVw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=E7UqPLSgmgrM4Eaa+GqOYQnr34acIpDZWUpY8DoooVJ/j3JTAXkEDVAWw5EPG1D6h
	 LtpWYWRgpuVnOo5Xc7qJOiK1Sv31cvM2zw/lG0Rg04xBfCa3Xj0T0tzTTiVk9FPU7u
	 E3Nz1ilOKQvEeQR7vbBYAT+WHqkVD1GUiD3x4fjUReJ818Xl8lE1W1FUaP5RsJIQit
	 KWUDJ4s+6aZulbVE9FbY1Lo1tDUkK3W715FiTCQqN016LlvDXPCdcfnzPvCehfw2jf
	 b/WDNfbga+xnKDDfx0bJgI428VggiH+L2xD2vOoNkiOfpwq0KFJISfzQP52qBOQiT1
	 THH4CuTgUZ2uA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3758vS6b8H1Z; Fri,  1 Jul 2022 16:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C934403B3;
	Fri,  1 Jul 2022 16:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C934403B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 320811BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 16:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BD7A81758
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 16:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BD7A81758
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z81sBIw8tm2H for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 16:32:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3BE281516
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3BE281516
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 16:32:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="346675352"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="346675352"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 09:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="648407855"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2022 09:32:50 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 261GWn1v004017; Fri, 1 Jul 2022 17:32:49 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Jul 2022 18:32:22 +0200
Message-Id: <20220701163222.318531-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656693177; x=1688229177;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cfeZib/oqv3CAB6V43wKfGHubA/gbISvllzPmYUh34A=;
 b=egIqUCxiTQUkuxayt5pxMa7VMCXgq5OuPBsyRgOccTF31pf1F2uNsYUY
 UpVa3C5PpLXXWfw2hQG+CtkiErT3bME3uNzMwOsSp7oeVpAOpxcKZOjZk
 rlQU/sW1pOYPOx+Opmp7SKfZRtTivnDOMTvw8KSKYRQNn+EgYJY2L6mv2
 3LjPJU76064OyV2i/RLPj7ES5qxGh0e0M03zPCiqtRQXGCQo8f8BJOe23
 vJDaiGVALadauuuBGH8Hlf1zf2ReWblOy6tp2hgr/i+TLxsEQtI84dZXS
 5uyIa1L87ibAmBkmEtdkTWEm2hKo+ykbASCzltlUWwPGnpepnjY4IwR4j
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=egIqUCxi
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for ip TTL &
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

Note: matching on ipv6 hop_limit is currently not supported by DDP package.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 138 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |   6 +
 2 files changed, 140 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 14795157846b..f482715cdf7f 100644
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
@@ -252,6 +259,48 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 		i++;
 	}
 
+	if (fltr->inner_headers.l2_key.n_proto == htons(ETH_P_IP) &&
+	    flags & (ICE_TC_FLWR_FIELD_ENC_IP_TOS |
+		     ICE_TC_FLWR_FIELD_ENC_IP_TTL)) {
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
+	    flags & (ICE_TC_FLWR_FIELD_ENC_IP_TOS |
+		     ICE_TC_FLWR_FIELD_ENC_IP_TTL)) {
+		struct ice_ipv6_hdr *hdr_h, *hdr_m;
+
+		hdr_h = &list[i].h_u.ipv6_hdr;
+		hdr_m = &list[i].m_u.ipv6_hdr;
+		list[i].type = ice_proto_type_from_ipv6(false);
+
+		if (flags & ICE_TC_FLWR_FIELD_ENC_IP_TOS) {
+			hdr_h->be_ver_tc_flow |= htonl(hdr->l3_key.tos <<
+						       ICE_IPV6_HDR_TC_OFFSET);
+			hdr_m->be_ver_tc_flow |= htonl(hdr->l3_mask.tos <<
+						       ICE_IPV6_HDR_TC_OFFSET);
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
@@ -393,6 +442,48 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 		i++;
 	}
 
+	if (headers->l2_key.n_proto == htons(ETH_P_IP) &&
+	    flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL)) {
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
+	    flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL)) {
+		struct ice_ipv6_hdr *hdr_h, *hdr_m;
+
+		hdr_h = &list[i].h_u.ipv6_hdr;
+		hdr_m = &list[i].m_u.ipv6_hdr;
+		list[i].type = ice_proto_type_from_ipv6(inner);
+
+		if (flags & ICE_TC_FLWR_FIELD_IP_TOS) {
+			hdr_h->be_ver_tc_flow |= htonl(headers->l3_key.tos <<
+						       ICE_IPV6_HDR_TC_OFFSET);
+			hdr_m->be_ver_tc_flow |= htonl(headers->l3_mask.tos <<
+						       ICE_IPV6_HDR_TC_OFFSET);
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
@@ -786,6 +877,40 @@ ice_tc_set_ipv6(struct flow_match_ipv6_addrs *match,
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
@@ -915,10 +1040,7 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		struct flow_match_ip match;
 
 		flow_rule_match_enc_ip(rule, &match);
-		headers->l3_key.tos = match.key->tos;
-		headers->l3_key.ttl = match.key->ttl;
-		headers->l3_mask.tos = match.mask->tos;
-		headers->l3_mask.ttl = match.mask->ttl;
+		ice_tc_set_tos_ttl(&match, fltr, headers, true);
 	}
 
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS) &&
@@ -987,6 +1109,7 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IPV6_ADDRS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_PORTS) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_OPTS) |
+	      BIT(FLOW_DISSECTOR_KEY_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_ENC_IP) |
 	      BIT(FLOW_DISSECTOR_KEY_PORTS))) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported key used");
@@ -1148,6 +1271,13 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
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
index 0193874cd203..a083dcaed0c4 100644
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
 
+#define ICE_IPV6_HDR_TC_OFFSET 20
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
