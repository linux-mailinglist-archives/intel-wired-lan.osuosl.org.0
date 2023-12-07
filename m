Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 489A6808DCB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 17:49:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6FED83D30;
	Thu,  7 Dec 2023 16:49:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6FED83D30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701967742;
	bh=HtlpQU+BZ0jkWkfOKjcKzMmjhtXJYlFzoHWNwMR4AGM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SfrMV6fPJXJiA2MXJAWhGme1bD3gdzzrZqc6xKbyoIKlIUyEqH1d75+qLAHgx+yCg
	 o0mdeJLvm/c3QU5Z9kWBA7Lze5jUPKdAJHqPDWgVoqJdVKTmliFW1wvYnzQ/2ht0/F
	 VKXluKLMhADydFSK5jY/2KsPVfLQq2FCgU2oc8FFf8wN0OLsE54U3ZkjQBMbvmaHRe
	 3F8MxCubn4hHLL72E+Hr0XASEKRiB4WMus8lv2UYc1briIE8GymgtT86IMbABaC676
	 2inObBrYuy6hWW+vFlyXdA8jeJ9rJupv+05gggk8d+UF+/7hvUK3Y94mAiYnQpE1Ev
	 60QPzcPXZnChA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8qAJFhI67MbU; Thu,  7 Dec 2023 16:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C81F83CED;
	Thu,  7 Dec 2023 16:49:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C81F83CED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 141241BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97B84420F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97B84420F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CoMliJTHGWQK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 16:48:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE0F842132
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 16:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE0F842132
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="373759570"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="373759570"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 08:48:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="775477354"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="775477354"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2023 08:48:40 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9678735430;
 Thu,  7 Dec 2023 16:48:38 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Dec 2023 17:49:10 +0100
Message-ID: <20231207164911.14330-7-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701967722; x=1733503722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+MHAjFDqdjBN6ROQjoXHXlVgXAmbFcDuRBbJ65W00nQ=;
 b=Fy0ykEl6rDG1gqe7uQTQkYqgj0xkd8C+r36L7hYePzUgQHk7aVikK7h6
 XPBUSSLRAbxKhbWvfmfTm55go8AspqtesEES3WsRUPLKkQGyQsFZS0O5A
 EFbVIHeVEgbFsl9chx4XuokwJbO8zO0b/SK+CDNcKDrUTIgALKfqyWhAv
 a9p1wn6Wed3vC7/44tZJ3nWhD6NsFxv+A9AIw6uSFYY8DsLbDEIZYrBKs
 SJAut+tkMZP4Wc42b99yCAZ5AzaXG9FN/E2qPrtQXqVDWyWMIob5U3oaV
 QUTDYM/eQhDu+QnkKCa8mWQQPqZTNFnVwkLEPFP74L2vM0OX4ArT7LxDd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fy0ykEl6
Subject: [Intel-wired-lan] [PATCH iwl-next v4 6/7] ice: refactor
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
Cc: jiri@resnulli.us, andy@kernel.org, wojciech.drewek@intel.com,
 netdev@vger.kernel.org, idosch@nvidia.com, jesse.brandeburg@intel.com,
 aleksander.lobakin@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
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

Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_tc_lib.h |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 08d3bbf4b44c..e9acab2ede10 100644
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
@@ -1360,7 +1359,8 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
 		}
 	}
 
-	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS)) {
+	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS) &&
+	    (fltr->tunnel_type == TNL_GTPU || fltr->tunnel_type == TNL_GTPC)) {
 		struct flow_match_enc_opts match;
 
 		flow_rule_match_enc_opts(rule, &match);
@@ -1371,7 +1371,7 @@ ice_parse_tunnel_attr(struct net_device *dev, struct flow_rule *rule,
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
