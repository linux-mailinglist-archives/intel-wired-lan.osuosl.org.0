Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B8A5A4665
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Aug 2022 11:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7ADEF82AA2;
	Mon, 29 Aug 2022 09:47:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7ADEF82AA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661766471;
	bh=sGhqh+1UTJoGIvAtb+BpnJNFpKf9SbkFARRlmyVxrrg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KibxwK5cWJdxPTcc838AOl2Yc00kbzYfFAfiB5gH9kXfDXVROAxm9JCcfAeaQ6Pal
	 9EeM9S4JYOmmq3LZJDJ9aTl2Q+M7yAuarzbOcnk0Mgmesc0u5mEzRRn0ker2i8puLM
	 JJlbHeVzNLunThj6KK0lYUAN9kL5HMvVhgk44aBx1PRIVUvJqn0UjVUYPJbwJg3YOc
	 rSuoRls5I+AB0aArSLtzij2AZ+dz1UDpoj2x+ZFbmQVvYeB5/MVyjoxYWFGKkOqcKd
	 uaQnjqMDOSDFBJ5/hrOrgopolAG+Mh+C1DH5CW8uEna3QRF3Xd8y/toiVGuIzDYxFa
	 evZEUTfxjAF4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IU6ek4znpOrS; Mon, 29 Aug 2022 09:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DB9182974;
	Mon, 29 Aug 2022 09:47:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DB9182974
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FEDD1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 09:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3846882974
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 09:47:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3846882974
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eZE59O-DXiGc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Aug 2022 09:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98A9F82FE7
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98A9F82FE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 09:47:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10453"; a="293600061"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="293600061"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 02:47:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="737281244"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 29 Aug 2022 02:47:28 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27T9lK8h021475; Mon, 29 Aug 2022 10:47:26 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 29 Aug 2022 11:44:11 +0200
Message-Id: <20220829094412.554018-5-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220829094412.554018-1-wojciech.drewek@intel.com>
References: <20220829094412.554018-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661766455; x=1693302455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ERh9FN6XBrS+my2+cyzr9hMAr8OTT3qzzCLuWO3wz+o=;
 b=BZUWMOPfUBVrPwQ0EwN9JxPBrvOblNT6inkkspxtow+OYn2TFypOClbE
 jpI0t0rb6vf5gHptACXxoK9kl0fsY3aNWy2pNW2syp58K2H0qpoXZGPpj
 GUh70/pExJTsWGvfApWvvROsPpGwzvVCI9IRxj2ANWOUOHyjGbb+KgKgm
 EYbPkrnzNcml9z9QpjJZZ5rY+L5BVFl1PJWkl0HzjtfeCoeCepzNYw8jZ
 C14nMsZYNoDqmlwz86ZBi1mubz+B6tJnJ+DGV9KpLWgoUUFh2wnbUA16c
 /WDqrlm6k2NUjzo1hHupHpjs7vgs2L1ZsniX2CfEwWh4cDZElFBE54wEY
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BZUWMOPf
Subject: [Intel-wired-lan] [RFC PATCH net-next v2 4/5] flow_offload:
 Introduce flow_match_l2tpv3
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
