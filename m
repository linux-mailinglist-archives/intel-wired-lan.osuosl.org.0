Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D8285B9AE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 11:55:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E91841482;
	Tue, 20 Feb 2024 10:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GOOE356nJHFf; Tue, 20 Feb 2024 10:55:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21CB341499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708426549;
	bh=gPFXxOJgGkJrlIhBoSgnkst4MFfYEjcQw4pG6SjY4zk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eKIL96EdAEz9fVXUouX9P6+OeHY3scu99IyGjy/T5oEcDCeEhOvDk9TpOvVpFWpEw
	 1oLgYzHiQaGjgfE5StZK9q5Qdw3juCqtZCU+9vBN45oZa0wAoOfSYR+fr9ILQhiW7Z
	 KZYmquTkygtI+yBiRqvqXfLPbzDSM6z3RU57oQ37Bzj9/SUtCeEp35BQUm/h4kKoSd
	 cCEXPSPS2cK8G4/tE4DeJ8zbevhuTzKT/zl3Le7oeru0NnsAugE3oK+ezZlyASIqUo
	 1mveuL0/tnUKKLMmtCjni7/BM9TLQ0E+KwTRDIhTd6tBh/het6NcDAFkLXaobvyR8l
	 OJNYMmwYZfqMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21CB341499;
	Tue, 20 Feb 2024 10:55:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19BB61BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 074AF41586
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UG_KXbh5ye4d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 10:55:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 591864157C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 591864157C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 591864157C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="13934166"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="13934166"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 02:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="4734494"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa010.fm.intel.com with ESMTP; 20 Feb 2024 02:55:42 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 11:59:50 +0100
Message-ID: <20240220105950.6814-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
References: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708426544; x=1739962544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qRdd7V9+5UqspDmYuA4NwNeiQqMIyHWNaPrJQWScN5A=;
 b=TY6mley+3apvJ/X+r8t5kMb8yuvHREu/OjI6dxuSVoLH9Xwa0VFwR02R
 SEHFFg4tYi1+IKVfDggpPep/S6LvBsOJ06uqWSXyJw1KXq5DgXcXoQflZ
 Pk69yO2dVJbPzMII4Bl43zx685oKb68gVrchgg1zjAwmLZQ1udclOaOzE
 uOKya1aRNuVl/stWYXIrkFPLdiWADkyhe8LnqbQirMqKD0VL/1jF6MjZ5
 VebRxbp2knXeKWgKKLaAbLZStYxBM+FFG0v9pSsTVYBLU06g/Kdiw79+0
 0nj9lbSKaE7sCQ+iWkU7/ocHmk7s6Ki5fs/3T5xqpvomP0GrE6e59VGue
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TY6mley+
Subject: [Intel-wired-lan] [iwl-next v1 2/2] ice: tc: allow ip_proto matching
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, sridhar.samudrala@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add new matching type. There is no encap version of ip_proto field.

Use it in the same lookup type as for TTL. In hardware it have the same
protocol ID, but different offset.

Example command to add filter with ip_proto:
$tc filter add dev eth10 ingress protocol ip flower ip_proto icmp \
 skip_sw action mirred egress redirect dev eth0

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 17 +++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  1 +
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 49ed5fd7db10..f7c0f62fb730 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -78,7 +78,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 		     ICE_TC_FLWR_FIELD_DEST_IPV6 | ICE_TC_FLWR_FIELD_SRC_IPV6))
 		lkups_cnt++;
 
-	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))
+	if (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL |
+		     ICE_TC_FLWR_FIELD_IP_PROTO))
 		lkups_cnt++;
 
 	/* are L2TPv3 options specified? */
@@ -530,7 +531,8 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 	}
 
 	if (headers->l2_key.n_proto == htons(ETH_P_IP) &&
-	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL))) {
+	    (flags & (ICE_TC_FLWR_FIELD_IP_TOS | ICE_TC_FLWR_FIELD_IP_TTL |
+		      ICE_TC_FLWR_FIELD_IP_PROTO))) {
 		list[i].type = ice_proto_type_from_ipv4(inner);
 
 		if (flags & ICE_TC_FLWR_FIELD_IP_TOS) {
@@ -545,6 +547,13 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 				headers->l3_mask.ttl;
 		}
 
+		if (flags & ICE_TC_FLWR_FIELD_IP_PROTO) {
+			list[i].h_u.ipv4_hdr.protocol =
+				headers->l3_key.ip_proto;
+			list[i].m_u.ipv4_hdr.protocol =
+				headers->l3_mask.ip_proto;
+		}
+
 		i++;
 	}
 
@@ -1515,7 +1524,11 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 
 		headers->l2_key.n_proto = cpu_to_be16(n_proto_key);
 		headers->l2_mask.n_proto = cpu_to_be16(n_proto_mask);
+
+		if (match.key->ip_proto)
+			fltr->flags |= ICE_TC_FLWR_FIELD_IP_PROTO;
 		headers->l3_key.ip_proto = match.key->ip_proto;
+		headers->l3_mask.ip_proto = match.mask->ip_proto;
 	}
 
 	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 65d387163a46..856f371d0687 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -34,6 +34,7 @@
 #define ICE_TC_FLWR_FIELD_VLAN_PRIO		BIT(27)
 #define ICE_TC_FLWR_FIELD_CVLAN_PRIO		BIT(28)
 #define ICE_TC_FLWR_FIELD_VLAN_TPID		BIT(29)
+#define ICE_TC_FLWR_FIELD_IP_PROTO		BIT(30)
 
 #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
 
-- 
2.42.0

