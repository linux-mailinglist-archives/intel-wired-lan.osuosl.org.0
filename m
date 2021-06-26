Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D023B4BA0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 02:34:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 754D383BC5;
	Sat, 26 Jun 2021 00:34:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJojNOFPyTWD; Sat, 26 Jun 2021 00:34:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A75A83BB3;
	Sat, 26 Jun 2021 00:34:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 413D71C11AD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AB404039F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4yjdf-EgVV9O for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jun 2021 00:33:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FF31400C3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:43 +0000 (UTC)
IronPort-SDR: YGGV5zgk8pfgcIG2YqrfpAbMlPrrjWjYUx2gHNzdhaHkC46ULjp3Glpr2YzNlCfUVm/jB6Bijy
 Idjb+rUaL0mQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="293393929"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="293393929"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:42 -0700
IronPort-SDR: /jLsiXYjJFYWokIPQC2hSdJBrS5ZQtMbuxp+QimkmN+gl2nRqIZwfpWE+L/1y8ilaWAh83Xzdy
 EsxGbWA8iMyA==
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="557008609"
Received: from aschmalt-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.160.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:42 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Jun 2021 17:33:07 -0700
Message-Id: <20210626003314.3159402-6-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210626003314.3159402-1-vinicius.gomes@intel.com>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 05/12] mqprio: Add support for
 frame preemption offload
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
Cc: mkubecek@suse.cz, jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com,
 jhs@mojatatu.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adds a way to configure which traffic classes are marked as
preemptible and which are marked as express.

Even if frame preemption is not a "real" offload, because it can't be
executed purely in software, having this information near where the
mapping of traffic classes to queues is specified, makes it,
hopefully, easier to use.

mqprio will receive the information of which traffic classes are
marked as express/preemptible, and when offloading frame preemption to
the driver will convert the information, so the driver receives which
queues are marked as express/preemptible.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 include/uapi/linux/pkt_sched.h |  1 +
 net/sched/sch_mqprio.c         | 41 ++++++++++++++++++++++++++++++++--
 2 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
index 830ce9c9ec6f..06aa155e46f7 100644
--- a/include/uapi/linux/pkt_sched.h
+++ b/include/uapi/linux/pkt_sched.h
@@ -738,6 +738,7 @@ enum {
 	TCA_MQPRIO_SHAPER,
 	TCA_MQPRIO_MIN_RATE64,
 	TCA_MQPRIO_MAX_RATE64,
+	TCA_MQPRIO_PREEMPT_TCS,
 	__TCA_MQPRIO_MAX,
 };
 
diff --git a/net/sched/sch_mqprio.c b/net/sched/sch_mqprio.c
index 8766ab5b8788..86e6012f180a 100644
--- a/net/sched/sch_mqprio.c
+++ b/net/sched/sch_mqprio.c
@@ -23,6 +23,7 @@ struct mqprio_sched {
 	u16 shaper;
 	int hw_offload;
 	u32 flags;
+	u32 preemptible_tcs;
 	u64 min_rate[TC_QOPT_MAX_QUEUE];
 	u64 max_rate[TC_QOPT_MAX_QUEUE];
 };
@@ -33,6 +34,13 @@ static void mqprio_destroy(struct Qdisc *sch)
 	struct mqprio_sched *priv = qdisc_priv(sch);
 	unsigned int ntx;
 
+	if (priv->preemptible_tcs && dev->netdev_ops->ndo_setup_tc) {
+		struct tc_preempt_qopt_offload preempt = { };
+
+		dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT,
+						    &preempt);
+	}
+
 	if (priv->qdiscs) {
 		for (ntx = 0;
 		     ntx < dev->num_tx_queues && priv->qdiscs[ntx];
@@ -112,6 +120,7 @@ static int mqprio_parse_opt(struct net_device *dev, struct tc_mqprio_qopt *qopt)
 static const struct nla_policy mqprio_policy[TCA_MQPRIO_MAX + 1] = {
 	[TCA_MQPRIO_MODE]	= { .len = sizeof(u16) },
 	[TCA_MQPRIO_SHAPER]	= { .len = sizeof(u16) },
+	[TCA_MQPRIO_PREEMPT_TCS] = { .type = NLA_U32 },
 	[TCA_MQPRIO_MIN_RATE64]	= { .type = NLA_NESTED },
 	[TCA_MQPRIO_MAX_RATE64]	= { .type = NLA_NESTED },
 };
@@ -171,8 +180,17 @@ static int mqprio_init(struct Qdisc *sch, struct nlattr *opt,
 		if (err < 0)
 			return err;
 
-		if (!qopt->hw)
-			return -EINVAL;
+		if (tb[TCA_MQPRIO_PREEMPT_TCS]) {
+			u32 preempt = nla_get_u32(tb[TCA_MQPRIO_PREEMPT_TCS]);
+			u32 all_tcs_mask = GENMASK(qopt->num_tc, 0);
+
+			if ((preempt & all_tcs_mask) == all_tcs_mask) {
+				NL_SET_ERR_MSG(extack, "At least one traffic class must be not be preemptible");
+				return -EINVAL;
+			}
+
+			priv->preemptible_tcs = preempt;
+		}
 
 		if (tb[TCA_MQPRIO_MODE]) {
 			priv->flags |= TC_MQPRIO_F_MODE;
@@ -217,6 +235,9 @@ static int mqprio_init(struct Qdisc *sch, struct nlattr *opt,
 		}
 	}
 
+	if (!qopt->hw && priv->flags)
+		return -EINVAL;
+
 	/* pre-allocate qdisc, attachment can't fail */
 	priv->qdiscs = kcalloc(dev->num_tx_queues, sizeof(priv->qdiscs[0]),
 			       GFP_KERNEL);
@@ -282,6 +303,18 @@ static int mqprio_init(struct Qdisc *sch, struct nlattr *opt,
 	for (i = 0; i < TC_BITMASK + 1; i++)
 		netdev_set_prio_tc_map(dev, i, qopt->prio_tc_map[i]);
 
+	if (priv->preemptible_tcs) {
+		struct tc_preempt_qopt_offload preempt = { };
+
+		preempt.preemptible_queues =
+			netdev_tc_map_to_queue_mask(dev, priv->preemptible_tcs);
+
+		err = dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT,
+						    &preempt);
+		if (err)
+			return err;
+	}
+
 	sch->flags |= TCQ_F_MQROOT;
 	return 0;
 }
@@ -450,6 +483,10 @@ static int mqprio_dump(struct Qdisc *sch, struct sk_buff *skb)
 	    (dump_rates(priv, &opt, skb) != 0))
 		goto nla_put_failure;
 
+	if (priv->preemptible_tcs &&
+	    nla_put_u32(skb, TCA_MQPRIO_PREEMPT_TCS, priv->preemptible_tcs))
+		goto nla_put_failure;
+
 	return nla_nest_end(skb, nla);
 nla_put_failure:
 	nlmsg_trim(skb, nla);
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
