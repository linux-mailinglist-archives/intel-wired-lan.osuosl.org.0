Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335EC845781
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:25:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2B2843672;
	Thu,  1 Feb 2024 12:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2B2843672
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790334;
	bh=pFjKjcppPTSc7/UnoKO2XZtjkk2vfRdvBQOIN3ODFXc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H8wNoSbVZFVy3YonQC0AbtCrAXWVVGAvq881NcV/BCU4kBUl1DKDEi4qxfIilkoC3
	 fd+8cICFJavdsyy8YhE8+vdy/BHAcb7GYDmNJfM0jxiswhymgdI3e0JWW/QF/9eXFp
	 SszQcTRmemM8Kh+DlEHA369zJCHsA0H7kkxQBu8hVpjsmAfAvyi0V2vvzFF23VU2rC
	 ooi1YXKEPlKTO+fPRH5p31/M2pxhrfFDeTuD4ZnUH3or7NDi4RwYf/FUDt60QRtL83
	 TSrzD3IkoUwkhLDUIQEHRT0nC3PvNt3ORbqb2Nwb5EpZJOpRlloLdDpH8hy0pMEEOr
	 q35AX9UV+MWfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGsckM4RJ8_R; Thu,  1 Feb 2024 12:25:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81C7A4047B;
	Thu,  1 Feb 2024 12:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81C7A4047B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 884BB1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 616A960B92
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 616A960B92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uUdnXaND0fgb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:25:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A925A60B74
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A925A60B74
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3747316"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3747316"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:25:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499234"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:25:12 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:22:15 +0100
Message-ID: <20240201122216.2634007-21-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790327; x=1738326327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dd/X/a3E7PTQCMqLWky4djaC4x8rNov+S5OGSCD8Vtk=;
 b=arg38sw4XeSUk5qkVuLdo+kzBuah2lTP0abqA7jeEm+dut9ZwhfRoMFd
 vyj4W143DsBpE2lmTSnmJynHzQQLMS6jUyrEwH87SdVodZ6pOHh5ouzIJ
 SgtrTJcn8ZKU/x2B+IQzJLCNiR9nsCuJnyxZFryku706VofbZ6dol6QU/
 dt1SFpYna1DEKp65OYfXvs3UVDz9ZKOziZ+ibsjzE5wAHjnDErrnM1Wt3
 1ulwGntjBVZTeayW5yf9WH3HKDY6Ny7CGH8Z/J/ChFVQHO7PZwZDAjNgE
 1pi+qQSKmwSBg22VoU9HZ1OAPE1U4q7z7bIn5MtNPnFJlQ6d180ywsgLY
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=arg38sw4
Subject: [Intel-wired-lan] [PATCH net-next v5 20/21] ice: refactor
 ICE_TC_FLWR_FIELD_ENC_OPTS
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>, Yury Norov <yury.norov@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 dm-devel@redhat.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <simon.horman@corigine.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, ntfs3@lists.linux.dev, Jiri Pirko <jiri@resnulli.us>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>

FLOW_DISSECTOR_KEY_ENC_OPTS can be used for multiple headers, but currently
it is treated as GTP-exclusive in ice. Rename ICE_TC_FLWR_FIELD_ENC_OPTS to
ICE_TC_FLWR_FIELD_GTP_OPTS and check for tunnel type earlier. After this
refactor, it is easier to add new headers using FLOW_DISSECTOR_KEY_ENC_OPTS
- instead of checking tunnel type in ice_tc_count_lkups() and
ice_tc_fill_tunnel_outer(), it needs to be checked only once, in
ice_parse_tunnel_attr().

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
index 65d387163a46..5d188ad7517a 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
@@ -22,7 +22,7 @@
 #define ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT	BIT(15)
 #define ICE_TC_FLWR_FIELD_ENC_DST_MAC		BIT(16)
 #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
-#define ICE_TC_FLWR_FIELD_ENC_OPTS		BIT(18)
+#define ICE_TC_FLWR_FIELD_GTP_OPTS		BIT(18)
 #define ICE_TC_FLWR_FIELD_CVLAN			BIT(19)
 #define ICE_TC_FLWR_FIELD_PPPOE_SESSID		BIT(20)
 #define ICE_TC_FLWR_FIELD_PPP_PROTO		BIT(21)
diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index b890410a2bc0..80797db9f2b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -35,7 +35,7 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	if (flags & ICE_TC_FLWR_FIELD_ENC_DST_MAC)
 		lkups_cnt++;
 
-	if (flags & ICE_TC_FLWR_FIELD_ENC_OPTS)
+	if (flags & ICE_TC_FLWR_FIELD_GTP_OPTS)
 		lkups_cnt++;
 
 	if (flags & (ICE_TC_FLWR_FIELD_ENC_SRC_IPV4 |
@@ -219,8 +219,7 @@ ice_tc_fill_tunnel_outer(u32 flags, struct ice_tc_flower_fltr *fltr,
 		i++;
 	}
 
-	if (flags & ICE_TC_FLWR_FIELD_ENC_OPTS &&
-	    (fltr->tunnel_type == TNL_GTPU || fltr->tunnel_type == TNL_GTPC)) {
+	if (flags & ICE_TC_FLWR_FIELD_GTP_OPTS) {
 		list[i].type = ice_proto_type_from_tunnel(fltr->tunnel_type);
 
 		if (fltr->gtp_pdu_info_masks.pdu_type) {
@@ -1401,7 +1400,8 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		}
 	}
 
-	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS)) {
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS) &&
+	    (fltr->tunnel_type == TNL_GTPU || fltr->tunnel_type == TNL_GTPC)) {
 		struct flow_match_enc_opts match;
 
 		flow_rule_match_enc_opts(rule, &match);
@@ -1412,7 +1412,7 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		memcpy(&fltr->gtp_pdu_info_masks, &match.mask->data[0],
 		       sizeof(struct gtp_pdu_session_info));
 
-		fltr->flags |= ICE_TC_FLWR_FIELD_ENC_OPTS;
+		fltr->flags |= ICE_TC_FLWR_FIELD_GTP_OPTS;
 	}
 
 	return 0;
-- 
2.43.0

