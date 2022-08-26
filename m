Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AE65A2673
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 13:04:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 057EB404E0;
	Fri, 26 Aug 2022 11:04:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 057EB404E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661511880;
	bh=sGhqh+1UTJoGIvAtb+BpnJNFpKf9SbkFARRlmyVxrrg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y8le/WOvt04IGwUsaGiITFBU//9Ec+KYGiyBZusjvhgZHEax0+H8W1O7SVsbXDd/g
	 VUUd2f/rzFpXf84XO6pVrlld7g76PQrgRJXFWa1ApRBfbHd76w9842SF61iq6Lw6No
	 W7To5QcUWsCZi77A/SPlItzRG6GL/iwQNIQGwk/KynP5yfF8n0H4s2l8rozIO2c+ct
	 NfoRplO1oTCAZK5fd/m6qTYKod5kae2BSjuliexVAYwJEqPkYyadx+jUj5Me6oEsZU
	 lr1MMwCacUSVrRl6DaDM9Y8IwlkYYZv4UUuEzP7Och2z5bAxMWl3BRWO10F/oXMqi1
	 301lzH2HfsDsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 64SjA4j8jv8Q; Fri, 26 Aug 2022 11:04:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6E3040192;
	Fri, 26 Aug 2022 11:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6E3040192
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECC5C1BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5725404C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5725404C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IlY5oTfUGUm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 11:04:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30640404B9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30640404B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="281453051"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="281453051"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 04:04:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="587263977"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 26 Aug 2022 04:04:20 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27QB4CLu024087; Fri, 26 Aug 2022 12:04:18 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 26 Aug 2022 13:00:58 +0200
Message-Id: <20220826110059.119927-5-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220826110059.119927-1-wojciech.drewek@intel.com>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661511867; x=1693047867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ERh9FN6XBrS+my2+cyzr9hMAr8OTT3qzzCLuWO3wz+o=;
 b=UWh4bVAJP0XdotrgUvq8tzhmC0tdgEzgNUIdeahfzcXCpDZRj5I6I0Mu
 YWAWQpCimr7OIYi/mFKDA5klwVBLSEL0qOKoZTFbSanVQy4FCn09Fu0ni
 sCPGwV1vD39Q2/Ao8VeH+gjoyKVunZEK04pwjrLod/7FP2V6uWkEpmqHW
 65LPmUO0Fhj9ijd7eobf95J2S0iEpBIR9thvuQq+powGXSE6erbSbOnkj
 N0nSVrfrPHB6UHJpuyZewVb5Qd3oMtsOY97++ZWpdnCrEkSkZRqg98c2I
 ZFXPwK3bGPr0zHWYWdJNoU7aHU7tNyMSRfLoZHWGQeTGDq6k4LkkUWDM1
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UWh4bVAJ
Subject: [Intel-wired-lan] [RFC PATCH net-next 4/5] flow_offload: Introduce
 flow_match_l2tpv3
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, komachi.yoshiki@gmail.com,
 jchapman@katalix.com, edumazet@google.com, boris.sukholitko@broadcom.com,
 louis.peens@corigine.com, gnault@redhat.com, intel-wired-lan@lists.osuosl.org,
 vladbu@nvidia.com, kuba@kernel.org, pabeni@redhat.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, maksym.glubokiy@plvision.eu, jiri@resnulli.us,
 paulb@nvidia.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow to offload L2TPv3 filters by adding flow_rule_match_l2tpv3.
Drivers can extract L2TPv3 specific fields from now on.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/net/flow_offload.h | 6 ++++++
 net/core/flow_offload.c    | 7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/include/net/flow_offload.h b/include/net/flow_offload.h
index 2a9a9e42e7fd..e343f9f8363e 100644
--- a/include/net/flow_offload.h
+++ b/include/net/flow_offload.h
@@ -80,6 +80,10 @@ struct flow_match_pppoe {
 	struct flow_dissector_key_pppoe *key, *mask;
 };
 
+struct flow_match_l2tpv3 {
+	struct flow_dissector_key_l2tpv3 *key, *mask;
+};
+
 struct flow_rule;
 
 void flow_rule_match_meta(const struct flow_rule *rule,
@@ -128,6 +132,8 @@ void flow_rule_match_ct(const struct flow_rule *rule,
 			struct flow_match_ct *out);
 void flow_rule_match_pppoe(const struct flow_rule *rule,
 			   struct flow_match_pppoe *out);
+void flow_rule_match_l2tpv3(const struct flow_rule *rule,
+			    struct flow_match_l2tpv3 *out);
 
 enum flow_action_id {
 	FLOW_ACTION_ACCEPT		= 0,
diff --git a/net/core/flow_offload.c b/net/core/flow_offload.c
index 8cfb63528d18..abe423fd5736 100644
--- a/net/core/flow_offload.c
+++ b/net/core/flow_offload.c
@@ -237,6 +237,13 @@ void flow_rule_match_pppoe(const struct flow_rule *rule,
 }
 EXPORT_SYMBOL(flow_rule_match_pppoe);
 
+void flow_rule_match_l2tpv3(const struct flow_rule *rule,
+			    struct flow_match_l2tpv3 *out)
+{
+	FLOW_DISSECTOR_MATCH(rule, FLOW_DISSECTOR_KEY_L2TPV3, out);
+}
+EXPORT_SYMBOL(flow_rule_match_l2tpv3);
+
 struct flow_block_cb *flow_block_cb_alloc(flow_setup_cb_t *cb,
 					  void *cb_ident, void *cb_priv,
 					  void (*release)(void *cb_priv))
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
