Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169A575C9B6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 16:22:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A42DF417B5;
	Fri, 21 Jul 2023 14:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A42DF417B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689949329;
	bh=Dgqev9nxhU2A1BjieusWoOgEiimIxy0dBOEGhqmtBtY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=26BzEj84uUwWnOpvF8JqFy1EqR28E/9hvRVzLZ9QYkqwgQqzF8cjmyDohE9uPHPOk
	 aCxVH4vG4tOr3+0Lf9YKszqhVhTzUpBuhAQQOfNIgCi38B+swl1VeIcHyOPPKEas6l
	 z/AuhPoAvh8m0u7xYcXWDZf2vfRZRep/Phif2qRXldA82o+Tb71f1GuJ6nmrVY9qX5
	 12qftxXE06fGqIdApQrQFgdyfZuD8ckIxeasYOQ9IKBZo+3jnTLTeE0FG6xclRFvb1
	 QYZak6goLHHmlXTLPXMIWb9pzGy+mB8RSZ8emshE4rd4Y51pVmdEmhZIXbPX9LgKmn
	 NHH+zyA1e4NeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fAEnCk0zlcvM; Fri, 21 Jul 2023 14:22:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DEBF40135;
	Fri, 21 Jul 2023 14:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DEBF40135
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EF791BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13B714178F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:21:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13B714178F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhtrt_xzsYOd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 14:21:57 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EC9241790
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:21:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EC9241790
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="433263417"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="433263417"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 07:14:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="868256468"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2023 07:14:50 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F166A35803;
 Fri, 21 Jul 2023 15:14:47 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jul 2023 09:15:31 +0200
Message-ID: <20230721071532.613888-6-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689949317; x=1721485317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hbZf4l/3QAycDS9sbgmRPeTHg9LjdaKBxHkywjTDghM=;
 b=FsemAiTVNPrb5MByKUj70J+29Md+IjX+SnN5teaRP5fGixUQEidVAt2U
 qouI3JrxgKK2fw3EBmeiEcIjX+IvzROpp8bdcoYzm6G3Ft4GaiuRt2KWB
 uJAs+k0vpUc+HO9QOeztNf95STLoWuBcz3HIDtOmZSQnrDb1KxtHecay0
 4fp6cDcPQ02yA9gJew+UJdkZeTgJBreWAYywZk0/SD9P6JdQ8pA94T7xF
 /TBx/1o3lwp+Nk2Rz6scW+NXBsPdwkQZTNX50gY4IwJAA7/RTGAbqeaVC
 nT5subMzi+ZCBi+NFZFi+GaGA0xWEgjRK+6WYT2JhDALbTorwWKmkPnWL
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FsemAiTV
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/6] ice: refactor
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
Cc: jiri@resnulli.us, andy@kernel.org, netdev@vger.kernel.org,
 idosch@nvidia.com, jesse.brandeburg@intel.com, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

FLOW_DISSECTOR_KEY_ENC_OPTS can be used for multiple headers, but currently
it is treated as GTP-exclusive in ice. Rename ICE_TC_FLWR_FIELD_ENC_OPTS to
ICE_TC_FLWR_FIELD_GTP_OPTS and check for tunnel type earlier. After this
refactor, it is easier to add new headers using FLOW_DISSECTOR_KEY_ENC_OPTS
- instead of checking tunnel type in ice_tc_count_lkups() and
ice_tc_fill_tunnel_outer(), it needs to be checked only once, in
ice_parse_tunnel_attr().

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index a3f96e889454..4355dc7c122b 100644
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
@@ -1305,7 +1304,8 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		}
 	}
 
-	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS)) {
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS) &&
+	    (fltr->tunnel_type == TNL_GTPU || fltr->tunnel_type == TNL_GTPC)) {
 		struct flow_match_enc_opts match;
 
 		flow_rule_match_enc_opts(rule, &match);
@@ -1316,7 +1316,7 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		memcpy(&fltr->gtp_pdu_info_masks, &match.mask->data[0],
 		       sizeof(struct gtp_pdu_session_info));
 
-		fltr->flags |= ICE_TC_FLWR_FIELD_ENC_OPTS;
+		fltr->flags |= ICE_TC_FLWR_FIELD_GTP_OPTS;
 	}
 
 	return 0;
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
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
