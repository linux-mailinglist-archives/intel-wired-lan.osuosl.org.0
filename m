Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5075576276
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 15:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EA7C60E00;
	Fri, 15 Jul 2022 13:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EA7C60E00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657890323;
	bh=vjTwHXaRNk5e2VyWfnnR0XvlBwgUYwMznyI8kseRYK8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zV5ScE51tV9EKgGCVeXZ4mc20fBgisW3JedXGSp4hbsTp2pGGTJvTJULO2xPEv9ok
	 3fvm/0QUO1gaCSD3lb1D0I9L1cpvqi1KyEAMekL3C1YjL56C3x8SuPZZPN5N2nLaMv
	 9zOQCSVDBRvWn9URX40sT6T8qxV6QL+V+1FV5caJ20t6Wgvur3z/PiXGqRJIWyxCDv
	 Y2tTIir438nDWu0SCBRTwHxV6u1hB7pWMzDKz0FkJmE0zD9Q57CD/O01hYRmxI3EN6
	 K8w/W8NOLxlPp8xbJRnp/sPYkj8/5PXkdQAX37xCvsD0Ser5Ukx2MUaGlbgp08Fs+O
	 qAhQp0MIlsvqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id txU-XI1GkrJH; Fri, 15 Jul 2022 13:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7118160B9C;
	Fri, 15 Jul 2022 13:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7118160B9C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EC311BF30D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 13:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03D1D84E0B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 13:05:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03D1D84E0B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OzafExXt2l_X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 13:05:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C7CA84E01
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C7CA84E01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 13:05:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="285813851"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="285813851"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 06:05:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="664181548"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2022 06:05:01 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26FD4tXN013793; Fri, 15 Jul 2022 14:04:59 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri, 15 Jul 2022 15:04:29 +0200
Message-Id: <20220715130430.160029-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715130430.160029-1-marcin.szycik@linux.intel.com>
References: <20220715130430.160029-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657890307; x=1689426307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/3jKfVddZFMJjiZXptSv/Ilray6tuVp+Qc4AZLvGmzQ=;
 b=KNHszP/JGb5Fqgk0apDTdMU41lbKBrbNhAlPn8HFgFRVWTPRjGBoOf/3
 nUGTIdTzJ5YYxLaKsll9tCJtfT1GYgEhkaPArihL7MoGBpZhpPedJWoub
 QMGk8njzblZ04SoPtSISoLJj/0p6pAX3JL5Z+LfFzvtsSAcpUd16+F+hA
 mOSqbuCb3Du4WBCcCyZ5x8esjBjz8Vsu+2b4quJhnVZE/msSI4aRKx1ZI
 9inAqvh3o5UZ/KJd860GZhYHxlSXWRsONmYqC1wQE31EWKQ1AzQkFdMUd
 Sujd8JcqLHte9CNcxP0ho9bCzlfOaxrjX8/oOptgJ5WForeTnys6tzbl3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KNHszP/J
Subject: [Intel-wired-lan] [RFC PATCH net-next v5 3/4] flow_offload:
 Introduce flow_match_pppoe
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 paulus@samba.org, gnault@redhat.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, zhangkaiheb@126.com,
 pablo@netfilter.org, baowen.zheng@corigine.com, komachi.yoshiki@gmail.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 gustavoars@kernel.org, mostrows@speakeasy.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Allow to offload PPPoE filters by adding flow_rule_match_pppoe.
Drivers can extract PPPoE specific fields from now on.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/net/flow_offload.h | 6 ++++++
 net/core/flow_offload.c    | 7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/include/net/flow_offload.h b/include/net/flow_offload.h
index a8d8512b7059..2a9a9e42e7fd 100644
--- a/include/net/flow_offload.h
+++ b/include/net/flow_offload.h
@@ -76,6 +76,10 @@ struct flow_match_ct {
 	struct flow_dissector_key_ct *key, *mask;
 };
 
+struct flow_match_pppoe {
+	struct flow_dissector_key_pppoe *key, *mask;
+};
+
 struct flow_rule;
 
 void flow_rule_match_meta(const struct flow_rule *rule,
@@ -122,6 +126,8 @@ void flow_rule_match_enc_opts(const struct flow_rule *rule,
 			      struct flow_match_enc_opts *out);
 void flow_rule_match_ct(const struct flow_rule *rule,
 			struct flow_match_ct *out);
+void flow_rule_match_pppoe(const struct flow_rule *rule,
+			   struct flow_match_pppoe *out);
 
 enum flow_action_id {
 	FLOW_ACTION_ACCEPT		= 0,
diff --git a/net/core/flow_offload.c b/net/core/flow_offload.c
index 0d3075d3c8fb..8cfb63528d18 100644
--- a/net/core/flow_offload.c
+++ b/net/core/flow_offload.c
@@ -230,6 +230,13 @@ void flow_rule_match_ct(const struct flow_rule *rule,
 }
 EXPORT_SYMBOL(flow_rule_match_ct);
 
+void flow_rule_match_pppoe(const struct flow_rule *rule,
+			   struct flow_match_pppoe *out)
+{
+	FLOW_DISSECTOR_MATCH(rule, FLOW_DISSECTOR_KEY_PPPOE, out);
+}
+EXPORT_SYMBOL(flow_rule_match_pppoe);
+
 struct flow_block_cb *flow_block_cb_alloc(flow_setup_cb_t *cb,
 					  void *cb_ident, void *cb_priv,
 					  void (*release)(void *cb_priv))
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
