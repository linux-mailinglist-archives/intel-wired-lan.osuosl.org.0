Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB096560349
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 16:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD0CC408CD;
	Wed, 29 Jun 2022 14:40:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD0CC408CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656513638;
	bh=FfxQwCNS7gVWcXwFbwvhdJF8UtOW/HfAQo5yVq+yFtM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bJ6aBptns7p1zF8/HHH+OSECJsbxgNZJHoY0+Qn07YBN8zl9f50HH0p5wBoUZsGXd
	 r4MXrxUTOLh//GbOiusL7NDFr1e7JBqvFb10JJKccQaXfP/TCIPXSC6e5sFce/Cw91
	 EYTKCW3i7KcaR5CbOzQh2dLgWVnDkiESBUHMoSbP9+gGElxwkGJRlBo3yPK00o/37E
	 A8Rr9o5dz8lDkSXWQUDCLa7UpKJORzOPEuR6dcNwB27PT5QU/thirPmL7X3vLKgcL5
	 8+VduUpTLR+zLnTa9xgBB7mTdAAd+Gk3q/j2TmfbLduq3n+kYFfP1n2tPuJwEOx1ZY
	 pGtidJxt9AVwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uZP5Nods5QAM; Wed, 29 Jun 2022 14:40:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C04441799;
	Wed, 29 Jun 2022 14:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C04441799
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA9021BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95FEF84090
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95FEF84090
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LAXBwUKkWp7B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:40:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C170E83F9C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C170E83F9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:40:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="282079367"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="282079367"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 07:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="693601646"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jun 2022 07:40:23 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25TEeJ3Z022901; Wed, 29 Jun 2022 15:40:22 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Wed, 29 Jun 2022 16:38:57 +0200
Message-Id: <20220629143859.209028-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656513628; x=1688049628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rp7DqZciaDZD8fI0/PA8Yg3M9PSYbqaDGgFpfZThO5E=;
 b=YRNK/VrWKwL77HBisM+9EMRUi0wL7LWyW7nCWKoRUM/XvtIhJj2OOdxi
 eG33+vfxbdvDi7oQ/nQQUX9G9Ww6ZSqUNHHzKZIE+YvNEo2h9Y7IhfhtL
 3ZTP5kLVRGOdDKgrUkYnOLDnouPyHBnctJBxWp91imF0pMwfRrzCGLzdm
 36veDGrXaEAdAqZplhbGX09pwMApbCa4n1gZATkFTm/jhfxrYIcZk/ikC
 MNkpviqp/Vc9tuJngisP6OkELQNQA/aJsT26Zd/8fAEtFtVutH1f5CK2I
 PNFVhv4Rt5agklu6HKvblbHVTAgj3FTLxB3Qcid3Xk+v9j3QHSruQntVA
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YRNK/VrW
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 2/4] net/sched: flower:
 Add PPPoE filter
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

Add support for PPPoE specific fields for tc-flower.
Those fields can be provided only when protocol was set
to ETH_P_PPP_SES. Defines, dump, load and set are being done here.

Overwrite basic.n_proto only in case of PPP_IP and PPP_IPV6,
otherwise leave it as ETH_P_PPP_SES.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/uapi/linux/pkt_cls.h |  3 +++
 net/sched/cls_flower.c       | 46 ++++++++++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+)

diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
index 9a2ee1e39fad..a67dcd8294c9 100644
--- a/include/uapi/linux/pkt_cls.h
+++ b/include/uapi/linux/pkt_cls.h
@@ -589,6 +589,9 @@ enum {
 
 	TCA_FLOWER_KEY_NUM_OF_VLANS,    /* u8 */
 
+	TCA_FLOWER_KEY_PPPOE_SID,	/* u16 */
+	TCA_FLOWER_KEY_PPP_PROTO,	/* be16 */
+
 	__TCA_FLOWER_MAX,
 };
 
diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
index dcca70144dff..f6a0bb87f869 100644
--- a/net/sched/cls_flower.c
+++ b/net/sched/cls_flower.c
@@ -16,6 +16,7 @@
 #include <linux/in6.h>
 #include <linux/ip.h>
 #include <linux/mpls.h>
+#include <linux/ppp_defs.h>
 
 #include <net/sch_generic.h>
 #include <net/pkt_cls.h>
@@ -73,6 +74,7 @@ struct fl_flow_key {
 	struct flow_dissector_key_ct ct;
 	struct flow_dissector_key_hash hash;
 	struct flow_dissector_key_num_of_vlans num_of_vlans;
+	struct flow_dissector_key_pppoe pppoe;
 } __aligned(BITS_PER_LONG / 8); /* Ensure that we can do comparisons as longs. */
 
 struct fl_flow_mask_range {
@@ -714,6 +716,8 @@ static const struct nla_policy fl_policy[TCA_FLOWER_MAX + 1] = {
 	[TCA_FLOWER_KEY_HASH]		= { .type = NLA_U32 },
 	[TCA_FLOWER_KEY_HASH_MASK]	= { .type = NLA_U32 },
 	[TCA_FLOWER_KEY_NUM_OF_VLANS]	= { .type = NLA_U8 },
+	[TCA_FLOWER_KEY_PPPOE_SID]	= { .type = NLA_U16 },
+	[TCA_FLOWER_KEY_PPP_PROTO]	= { .type = NLA_U16 },
 
 };
 
@@ -1041,6 +1045,32 @@ static void fl_set_key_vlan(struct nlattr **tb,
 	}
 }
 
+static void fl_set_key_pppoe(struct nlattr **tb,
+			     struct flow_dissector_key_pppoe *key_val,
+			     struct flow_dissector_key_pppoe *key_mask,
+			     struct fl_flow_key *key,
+			     struct fl_flow_key *mask)
+{
+	if (tb[TCA_FLOWER_KEY_PPPOE_SID]) {
+		key_val->session_id =
+			nla_get_u16(tb[TCA_FLOWER_KEY_PPPOE_SID]);
+		key_mask->session_id = 0xffff;
+	}
+	if (tb[TCA_FLOWER_KEY_PPP_PROTO]) {
+		key_val->ppp_proto =
+			nla_get_be16(tb[TCA_FLOWER_KEY_PPP_PROTO]);
+		key_mask->ppp_proto = cpu_to_be16(~0);
+
+		if (key_val->ppp_proto == htons(PPP_IP)) {
+			key->basic.n_proto = htons(ETH_P_IP);
+			mask->basic.n_proto = cpu_to_be16(~0);
+		} else if (key_val->ppp_proto == htons(PPP_IPV6)) {
+			key->basic.n_proto = htons(ETH_P_IPV6);
+			mask->basic.n_proto = cpu_to_be16(~0);
+		}
+	}
+}
+
 static void fl_set_key_flag(u32 flower_key, u32 flower_mask,
 			    u32 *dissector_key, u32 *dissector_mask,
 			    u32 flower_flag_bit, u32 dissector_flag_bit)
@@ -1651,6 +1681,9 @@ static int fl_set_key(struct net *net, struct nlattr **tb,
 		}
 	}
 
+	if (key->basic.n_proto == htons(ETH_P_PPP_SES))
+		fl_set_key_pppoe(tb, &key->pppoe, &mask->pppoe, key, mask);
+
 	if (key->basic.n_proto == htons(ETH_P_IP) ||
 	    key->basic.n_proto == htons(ETH_P_IPV6)) {
 		fl_set_key_val(tb, &key->basic.ip_proto, TCA_FLOWER_KEY_IP_PROTO,
@@ -1923,6 +1956,8 @@ static void fl_init_dissector(struct flow_dissector *dissector,
 			     FLOW_DISSECTOR_KEY_HASH, hash);
 	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
 			     FLOW_DISSECTOR_KEY_NUM_OF_VLANS, num_of_vlans);
+	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
+			     FLOW_DISSECTOR_KEY_PPPOE, pppoe);
 
 	skb_flow_dissector_init(dissector, keys, cnt);
 }
@@ -3051,6 +3086,17 @@ static int fl_dump_key(struct sk_buff *skb, struct net *net,
 	    fl_dump_key_ip(skb, false, &key->ip, &mask->ip)))
 		goto nla_put_failure;
 
+	if (mask->pppoe.session_id) {
+		if (nla_put_u16(skb, TCA_FLOWER_KEY_PPPOE_SID,
+				key->pppoe.session_id))
+			goto nla_put_failure;
+	}
+	if (mask->basic.n_proto && mask->pppoe.ppp_proto) {
+		if (nla_put_be16(skb, TCA_FLOWER_KEY_PPP_PROTO,
+				 key->pppoe.ppp_proto))
+			goto nla_put_failure;
+	}
+
 	if (key->control.addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS &&
 	    (fl_dump_key_val(skb, &key->ipv4.src, TCA_FLOWER_KEY_IPV4_SRC,
 			     &mask->ipv4.src, TCA_FLOWER_KEY_IPV4_SRC_MASK,
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
