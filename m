Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099B15A2672
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 13:04:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16977404C6;
	Fri, 26 Aug 2022 11:04:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16977404C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661511876;
	bh=/yhKhLvEeE8TfIS43J/avWjUFW1E9z75tHNss4dGI4o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fLccO2gr6y/kn/alWw/a973TrYB2dDNOvCEmUz21Et3RgRdIjuIuwrWcqGFXx3QLG
	 9H1w4IYSutEbpW6Ugto/2MFwdRija53VeoyL+hfMb7AIZObFIuBIwdpJuYBh0JBTm5
	 QMXrBOzxR1rvm3cVCuudVzmTwDEhDtcuXF47vDzhDYGLiTmbl/XqRQxG3wRrExhYSv
	 W4+TLQTMKHuFktcrEY7Y0P4MN3NCAsd1xrtnGjmXI81cmcR72EFJNJCsUG7ynBTTLV
	 3WSrcMm/QHc620LAu8kLgIcTB1mAXy9dk7oAm2jyQRYRLfjfn3APNo4p5JoHVbsRJ1
	 KcDAsRyquvWGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MjwkuhDksqAc; Fri, 26 Aug 2022 11:04:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D12B940192;
	Fri, 26 Aug 2022 11:04:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D12B940192
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0F571BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C182610D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C182610D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4XPSz6hOukbK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 11:04:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEB8A60B8D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEB8A60B8D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="295755183"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="295755183"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 04:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="610532773"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 26 Aug 2022 04:04:19 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27QB4CLt024087; Fri, 26 Aug 2022 12:04:17 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 26 Aug 2022 13:00:57 +0200
Message-Id: <20220826110059.119927-4-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220826110059.119927-1-wojciech.drewek@intel.com>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661511864; x=1693047864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7TkI2g42TiyDpYroOfN0n4SxRBLUdO83QwuhHROSfFc=;
 b=CimjKLTSHT70yJAEcWSJzTyzTjoOFsShoEf/3vfV3vzaW/l8n/ebnXwl
 RVZ4XHyG6Mftter58jgdyc35QAhXrswKCK0wmKNXyzHrdR79jVK/G5wOe
 +4RwbCY8wmSzFoQ5KKCCS72HaLyyouT4EG+brpnKgqfZ7zm/5268p7CVl
 u1ixbXSNoXl2MCYFtRE9nddz4krZzgp5vre+bH02loJwZrZ8q3GnnTIvb
 wRqQFKAbkaTGvSU4m57Sf4E8OJm/b1N8vIVFJtjMEqr4BwEhUhhtuzRQ/
 8uW4ZuEbvFUT+NRQQLrhQNO6hZxKt38J6gAj86+WwHzw3m+lVpIgVBpxa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CimjKLTS
Subject: [Intel-wired-lan] [RFC PATCH net-next 3/5] net/sched: flower: Add
 L2TPv3 filter
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

Add support for matching on L2TPv3 session ID.
Session ID can be specified only when ip proto was
set to IPPROTO_L2TP.

Example filter:
  # tc filter add dev $PF1 ingress prio 1 protocol ip \
      flower \
        ip_proto l2tp \
        l2tpv3_sid 1234 \
        skip_sw \
      action mirred egress redirect dev $VF1_PR

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/uapi/linux/pkt_cls.h |  2 ++
 net/sched/cls_flower.c       | 16 ++++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
index 877309d6ca3c..648a82f32666 100644
--- a/include/uapi/linux/pkt_cls.h
+++ b/include/uapi/linux/pkt_cls.h
@@ -592,6 +592,8 @@ enum {
 	TCA_FLOWER_KEY_PPPOE_SID,	/* be16 */
 	TCA_FLOWER_KEY_PPP_PROTO,	/* be16 */
 
+	TCA_FLOWER_KEY_L2TPV3_SID,	/* be32 */
+
 	__TCA_FLOWER_MAX,
 };
 
diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
index 041d63ff809a..22d32b82bc09 100644
--- a/net/sched/cls_flower.c
+++ b/net/sched/cls_flower.c
@@ -69,6 +69,7 @@ struct fl_flow_key {
 	struct flow_dissector_key_hash hash;
 	struct flow_dissector_key_num_of_vlans num_of_vlans;
 	struct flow_dissector_key_pppoe pppoe;
+	struct flow_dissector_key_l2tpv3 l2tpv3;
 } __aligned(BITS_PER_LONG / 8); /* Ensure that we can do comparisons as longs. */
 
 struct fl_flow_mask_range {
@@ -712,6 +713,7 @@ static const struct nla_policy fl_policy[TCA_FLOWER_MAX + 1] = {
 	[TCA_FLOWER_KEY_NUM_OF_VLANS]	= { .type = NLA_U8 },
 	[TCA_FLOWER_KEY_PPPOE_SID]	= { .type = NLA_U16 },
 	[TCA_FLOWER_KEY_PPP_PROTO]	= { .type = NLA_U16 },
+	[TCA_FLOWER_KEY_L2TPV3_SID]	= { .type = NLA_U32 },
 
 };
 
@@ -1790,6 +1792,11 @@ static int fl_set_key(struct net *net, struct nlattr **tb,
 		fl_set_key_val(tb, key->arp.tha, TCA_FLOWER_KEY_ARP_THA,
 			       mask->arp.tha, TCA_FLOWER_KEY_ARP_THA_MASK,
 			       sizeof(key->arp.tha));
+	} else if (key->basic.ip_proto == IPPROTO_L2TP) {
+		fl_set_key_val(tb, &key->l2tpv3.session_id,
+			       TCA_FLOWER_KEY_L2TPV3_SID,
+			       &mask->l2tpv3.session_id, TCA_FLOWER_UNSPEC,
+			       sizeof(key->l2tpv3.session_id));
 	}
 
 	if (key->basic.ip_proto == IPPROTO_TCP ||
@@ -1970,6 +1977,8 @@ static void fl_init_dissector(struct flow_dissector *dissector,
 			     FLOW_DISSECTOR_KEY_NUM_OF_VLANS, num_of_vlans);
 	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
 			     FLOW_DISSECTOR_KEY_PPPOE, pppoe);
+	FL_KEY_SET_IF_MASKED(mask, keys, cnt,
+			     FLOW_DISSECTOR_KEY_L2TPV3, l2tpv3);
 
 	skb_flow_dissector_init(dissector, keys, cnt);
 }
@@ -3196,6 +3205,13 @@ static int fl_dump_key(struct sk_buff *skb, struct net *net,
 				  mask->arp.tha, TCA_FLOWER_KEY_ARP_THA_MASK,
 				  sizeof(key->arp.tha))))
 		goto nla_put_failure;
+	else if (key->basic.ip_proto == IPPROTO_L2TP &&
+		 fl_dump_key_val(skb, &key->l2tpv3.session_id,
+				 TCA_FLOWER_KEY_L2TPV3_SID,
+				 &mask->l2tpv3.session_id,
+				 TCA_FLOWER_UNSPEC,
+				 sizeof(key->l2tpv3.session_id)))
+		goto nla_put_failure;
 
 	if ((key->basic.ip_proto == IPPROTO_TCP ||
 	     key->basic.ip_proto == IPPROTO_UDP ||
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
