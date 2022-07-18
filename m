Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 577B157820A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 14:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB098801E9;
	Mon, 18 Jul 2022 12:19:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB098801E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658146744;
	bh=WG3qX7k664r8CINpzuMWO49k0gKImv/ynMTjrBA+6jA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WM0tcAh6CDm5VhIj+8tccHy2IBv6UOd2cQwLbJ5oc31oWp0fPrjyRYItgF3VDOMaJ
	 ogQd/2ke6BrMZbXY/tve/x9JE2s5yDeKOTb8JJUYofVrnRPN9HqdYzETnY43VldEqi
	 ZhRKCI8gS2WvCPsXL7Bo7M4kIj9RhotVA0fpmcHGVS5Uo+pMjH3W+ST/vOUJrmhSxR
	 mdCr9aKA99rQvVtkrFfwbTDVx2qjcSk7mqScDULLGyoJO5WUEWbweiBRa2ZpUkhoWr
	 7xL4DGObGRXkJo5VMfsyaaalRsL15Q5cTxeubYnDI+X2rIT3+ndRZP/gWWOpOGQQND
	 Af2EcdJvcgS4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2_xXUwBBKa6v; Mon, 18 Jul 2022 12:19:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B6CD8124D;
	Mon, 18 Jul 2022 12:19:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B6CD8124D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1830A1BF97C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E66B5410A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E66B5410A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMv5XErbttUO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 12:18:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB7FA410E0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB7FA410E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 12:18:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="265987751"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="265987751"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:18:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="739445857"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2022 05:18:47 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26ICIfCu016026; Mon, 18 Jul 2022 13:18:45 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Mon, 18 Jul 2022 14:18:11 +0200
Message-Id: <20220718121813.159102-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
References: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658146734; x=1689682734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6/rjPKXMLPEs79lEEWQlsiz5zvZY20eOg+E31o2j8qQ=;
 b=OHWQhTGiw8HFmVOafG61svdbTqIROEtNVzeTq7+k2Jojy9veiM2ibNeW
 /6YzfjX/K6JMEDRZKyiI8DYBWpEibeonmO+4DrzSDRUCFLBWFgoBtz+nw
 mgW0fDSNYp8f+VR4gEKHy+M3eVDNZXzA7gaZJF+BPwT5tH7maZDiKlEE2
 q0kGyKi6hdzYYfv7azdtZasJkqe0OR1kmNfANeEoT9Wj51QbrZjJ1Xq7g
 yZ8SQSutiS/T1jaXP6aYvrlJd9TpnQYM2Jz5C2fdeJ6xPIuQ7UXf8eXCy
 QM3JtYNPjY5AHgIOvP5rJVxDnNcBv4FYxkDNu1buDRk+RVWv/Jmhw9qSl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OHWQhTGi
Subject: [Intel-wired-lan] [RFC PATCH net-next v6 2/4] net/sched: flower:
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
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 gustavoars@kernel.org, mostrows@speakeasy.net, davem@davemloft.net
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
v4:
  * support of MPLS inner fields
  * session_id stored in __be16

 include/uapi/linux/pkt_cls.h |  3 ++
 net/sched/cls_flower.c       | 64 ++++++++++++++++++++++++++++++++++++
 2 files changed, 67 insertions(+)

diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
index 9a2ee1e39fad..c142c0f8ed8a 100644
--- a/include/uapi/linux/pkt_cls.h
+++ b/include/uapi/linux/pkt_cls.h
@@ -589,6 +589,9 @@ enum {
 
 	TCA_FLOWER_KEY_NUM_OF_VLANS,    /* u8 */
 
+	TCA_FLOWER_KEY_PPPOE_SID,	/* be16 */
+	TCA_FLOWER_KEY_PPP_PROTO,	/* be16 */
+
 	__TCA_FLOWER_MAX,
 };
 
diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
index 1a1e34480b7e..041d63ff809a 100644
--- a/net/sched/cls_flower.c
+++ b/net/sched/cls_flower.c
@@ -16,6 +16,7 @@
 #include <linux/in6.h>
 #include <linux/ip.h>
 #include <linux/mpls.h>
+#include <linux/ppp_defs.h>
 
 #include <net/sch_generic.h>
 #include <net/pkt_cls.h>
@@ -67,6 +68,7 @@ struct fl_flow_key {
 	struct flow_dissector_key_ct ct;
 	struct flow_dissector_key_hash hash;
 	struct flow_dissector_key_num_of_vlans num_of_vlans;
+	struct flow_dissector_key_pppoe pppoe;
 } __aligned(BITS_PER_LONG / 8); /* Ensure that we can do comparisons as longs. */
 
 struct fl_flow_mask_range {
@@ -708,6 +710,8 @@ static const struct nla_policy fl_policy[TCA_FLOWER_MAX + 1] = {
 	[TCA_FLOWER_KEY_HASH]		= { .type = NLA_U32 },
 	[TCA_FLOWER_KEY_HASH_MASK]	= { .type = NLA_U32 },
 	[TCA_FLOWER_KEY_NUM_OF_VLANS]	= { .type = NLA_U8 },
+	[TCA_FLOWER_KEY_PPPOE_SID]	= { .type = NLA_U16 },
+	[TCA_FLOWER_KEY_PPP_PROTO]	= { .type = NLA_U16 },
 
 };
 
@@ -1035,6 +1039,50 @@ static void fl_set_key_vlan(struct nlattr **tb,
 	}
 }
 
+static void fl_set_key_pppoe(struct nlattr **tb,
+			     struct flow_dissector_key_pppoe *key_val,
+			     struct flow_dissector_key_pppoe *key_mask,
+			     struct fl_flow_key *key,
+			     struct fl_flow_key *mask)
+{
+	/* key_val::type must be set to ETH_P_PPP_SES
+	 * because ETH_P_PPP_SES was stored in basic.n_proto
+	 * which might get overwritten by ppp_proto
+	 * or might be set to 0, the role of key_val::type
+	 * is simmilar to vlan_key::tpid
+	 */
+	key_val->type = htons(ETH_P_PPP_SES);
+	key_mask->type = cpu_to_be16(~0);
+
+	if (tb[TCA_FLOWER_KEY_PPPOE_SID]) {
+		key_val->session_id =
+			nla_get_be16(tb[TCA_FLOWER_KEY_PPPOE_SID]);
+		key_mask->session_id = cpu_to_be16(~0);
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
+		} else if (key_val->ppp_proto == htons(PPP_MPLS_UC)) {
+			key->basic.n_proto = htons(ETH_P_MPLS_UC);
+			mask->basic.n_proto = cpu_to_be16(~0);
+		} else if (key_val->ppp_proto == htons(PPP_MPLS_MC)) {
+			key->basic.n_proto = htons(ETH_P_MPLS_MC);
+			mask->basic.n_proto = cpu_to_be16(~0);
+		}
+	} else {
+		key->basic.n_proto = 0;
+		mask->basic.n_proto = cpu_to_be16(0);
+	}
+}
+
 static void fl_set_key_flag(u32 flower_key, u32 flower_mask,
 			    u32 *dissector_key, u32 *dissector_mask,
 			    u32 flower_flag_bit, u32 dissector_flag_bit)
@@ -1645,6 +1693,9 @@ static int fl_set_key(struct net *net, struct nlattr **tb,
 		}
 	}
 
+	if (key->basic.n_proto == htons(ETH_P_PPP_SES))
+		fl_set_key_pppoe(tb, &key->pppoe, &mask->pppoe, key, mask);
+
 	if (key->basic.n_proto == htons(ETH_P_IP) ||
 	    key->basic.n_proto == htons(ETH_P_IPV6)) {
 		fl_set_key_val(tb, &key->basic.ip_proto, TCA_FLOWER_KEY_IP_PROTO,
@@ -1917,6 +1968,8 @@ static void fl_init_dissector(struct flow_dissector *dissector,
 			     FLOW_DISSECTOR_KEY_HASH, hash);
 	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
 			     FLOW_DISSECTOR_KEY_NUM_OF_VLANS, num_of_vlans);
+	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
+			     FLOW_DISSECTOR_KEY_PPPOE, pppoe);
 
 	skb_flow_dissector_init(dissector, keys, cnt);
 }
@@ -3045,6 +3098,17 @@ static int fl_dump_key(struct sk_buff *skb, struct net *net,
 	    fl_dump_key_ip(skb, false, &key->ip, &mask->ip)))
 		goto nla_put_failure;
 
+	if (mask->pppoe.session_id) {
+		if (nla_put_be16(skb, TCA_FLOWER_KEY_PPPOE_SID,
+				 key->pppoe.session_id))
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
