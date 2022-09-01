Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 172495A9641
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 14:05:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 695AE61154;
	Thu,  1 Sep 2022 12:05:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 695AE61154
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662033901;
	bh=YDIDR0Ha3rGfHOLqrF66/XIcmW6TcEIA4aUzBs4fa+A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LgygKXFnbNn1MW9yQd1HQ1egFwU194Nz1cZgc2yyCub5O2ms9js9uqJTyADUSeBN+
	 EGMGk3V1uqqvnUFKfRaFcsLy7N0uaASxclgXKhQnhYlCBdMb9DnNcu38H1Mu+fPCvT
	 E9VOoC43u1jgS9edKW4RupFDXOuqbxr17rkLznNeEprbNdUqcSJ/CdVLs7bSvda9JR
	 N0dF988qGwC95auUfRWQ5s5JDADz7HT6sEZwlSPrE0fKDob+lM3GO1F5qG9a+MIbwZ
	 dBFTiFnd+e9AYWXv+rdhsUILj2KJ25COugd/WRvVOQsfnLxt2pY33H8zQYYrhidzph
	 o5j5W8hw+qDgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JouBwPzWkLzm; Thu,  1 Sep 2022 12:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C4AF60C25;
	Thu,  1 Sep 2022 12:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C4AF60C25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E24E1BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1721C41A55
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1721C41A55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YJ1XAyL8AmSQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 12:04:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FD9C41A54
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FD9C41A54
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="357413655"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="357413655"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:04:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="738470652"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 01 Sep 2022 05:04:39 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 281C4XRj024211; Thu, 1 Sep 2022 13:04:37 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  1 Sep 2022 14:01:29 +0200
Message-Id: <20220901120131.1373568-4-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220901120131.1373568-1-wojciech.drewek@intel.com>
References: <20220901120131.1373568-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662033885; x=1693569885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xLHvtWB8Mdu1BTf/v6Bgi0v4Trg04AHk3BkNIZhLIqQ=;
 b=bJmB5oIscamKsdLalPD8DlUY0fTx4UXYUDlfuM9WBH1CknaGgRYGJ5UH
 EMgN6PNAd4jqlIrp3DcUcgJjm8QUaR3VECOdpGBHU4qTzGK/54LT15KKj
 egoEYIh7hNmchSOZFBTi9lOsfWOiy5JCKbBJjB7qqnsc1uxMfareo5cLl
 ihMuibTZDriCWK09EJTFV81OyaVeSLBuMQ5tGvHvWBtL3hFDxBr0iprEi
 kNmmGE4NM+ujmyKKZzfee56q0o/BX0UW/A9gfbvc/tvmfxigvuAnLFNw/
 2DuJAvcLMXy8fHsWsVhqY3FxNsUr9a26aLAmLase/d1/Dl3UXa73EzbfV
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bJmB5oIs
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 3/5] net/sched: flower:
 Add L2TPv3 filter
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

Acked-by: Guillaume Nault <gnault@redhat.com>
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
