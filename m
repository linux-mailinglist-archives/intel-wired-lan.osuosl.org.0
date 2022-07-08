Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E23256B999
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jul 2022 14:25:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADFAC42550;
	Fri,  8 Jul 2022 12:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADFAC42550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657283117;
	bh=bHHDwNgbRiwugS0U3ZkjL7lGRAmK1cqsvG2aSJs5xoE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xRuwB2CVm/5rkccMUQZ5Ue7Cah8tAL0UnDK068jc34QeVeUZH05sNfeMBDuuAcRi7
	 NUpVtMR5W2NYW+hy216N7WWtLEF4uF9eUHBoft6NgqFN4jb/yP110bVVTmp2PKZk3+
	 YxZylsDWgRzC09bnlhOY/OxhJmZbqVrBUwZtDZ0McIMyl9mwIoUhCN82bDnrQyWYwj
	 ZonA3OcoC6tlkxA2ht70OahgCwmuBl6gIUhCCpoy53vNbG8XbQc8BpbyRLNMrSwNWZ
	 Htp3OXESa50LNu5qLIJsOhEFBYyqMe3eJPjz0NVH9QKupPpGkx09bd2RGYdTAIOoN4
	 bT38K8jRAKE9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kyft9SXDkS3e; Fri,  8 Jul 2022 12:25:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39C00425AD;
	Fri,  8 Jul 2022 12:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39C00425AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29C821BF32A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1200640494
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:25:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1200640494
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pdYsMuPM7rkR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jul 2022 12:25:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71BE24014C
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 71BE24014C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jul 2022 12:25:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="309836586"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="309836586"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 05:25:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="621198433"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 08 Jul 2022 05:24:55 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 268COncb014111; Fri, 8 Jul 2022 13:24:53 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri,  8 Jul 2022 14:24:20 +0200
Message-Id: <20220708122421.19309-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657283101; x=1688819101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L4H1ia+czzedEKJRAgfchzILqKSfJxhzzsSV0Hsf6k4=;
 b=mEtYKVfeNNegef2IDo0g5kELg874lYws1l/LyV+vLcur8BApipTSfKvk
 JhqEhmih+kPqxKVDZHP79SLBZOoT4nPiWFt9QaopW7lNfrDPs0G/Yxl1b
 D1NUhUjWJ82ZKj4m2RsOVQ4qOkr5qyAXTWjyBBBRZ3hEwHqqb9Bg1mfS3
 vCrTQBxc8VBH+UYlvHMP85iNNVSNy2sEF7Z5Jzao5Eaxd2dXTGRGqQKLQ
 I5/ShmhISNxxVzI3etEoXytOj8RUfU4L0DX/Ukf3D1h4v3rTKdi8UfOue
 OwT+y54AI1kHZ/72iGytU/x8uwUg7CLnISCb3nzkERFgoxZ/UT5/hS86G
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mEtYKVfe
Subject: [Intel-wired-lan] [RFC PATCH net-next v4 3/4] flow_offload:
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
 jhs@mojatatu.com, mostrows@earthlink.net, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, gustavoars@kernel.org, davem@davemloft.net
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
index 7ac313858037..8826606c8464 100644
--- a/include/net/flow_offload.h
+++ b/include/net/flow_offload.h
@@ -72,6 +72,10 @@ struct flow_match_ct {
 	struct flow_dissector_key_ct *key, *mask;
 };
 
+struct flow_match_pppoe {
+	struct flow_dissector_key_pppoe *key, *mask;
+};
+
 struct flow_rule;
 
 void flow_rule_match_meta(const struct flow_rule *rule,
@@ -116,6 +120,8 @@ void flow_rule_match_enc_opts(const struct flow_rule *rule,
 			      struct flow_match_enc_opts *out);
 void flow_rule_match_ct(const struct flow_rule *rule,
 			struct flow_match_ct *out);
+void flow_rule_match_pppoe(const struct flow_rule *rule,
+			   struct flow_match_pppoe *out);
 
 enum flow_action_id {
 	FLOW_ACTION_ACCEPT		= 0,
diff --git a/net/core/flow_offload.c b/net/core/flow_offload.c
index 929f6379a279..d13d293e3de2 100644
--- a/net/core/flow_offload.c
+++ b/net/core/flow_offload.c
@@ -223,6 +223,13 @@ void flow_rule_match_ct(const struct flow_rule *rule,
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
