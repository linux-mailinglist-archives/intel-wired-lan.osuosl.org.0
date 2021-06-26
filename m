Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7B83B4B9D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 02:34:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EADD783BC5;
	Sat, 26 Jun 2021 00:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DYGNBmV7qXb4; Sat, 26 Jun 2021 00:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A08D83BB3;
	Sat, 26 Jun 2021 00:34:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6B431C11AD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A7D70404D7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FO3xRw8TwgTc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jun 2021 00:33:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2542404B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:44 +0000 (UTC)
IronPort-SDR: HGHU+lDdfi1+qFjHUdBI6ILK3WdC1YfHZXusCr4XD5Gnf1esL5Enll3ZL3EnRNGSpGhhYRvFPv
 lv+lFi2HSKmw==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="268890555"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="268890555"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:43 -0700
IronPort-SDR: WOmR0nQg/8nF1b3TfYd7pXKwt61TzWUwcueqhEWb0gMfL+UHvLpsDch+THC/qWpDEA5iwjoyhI
 bT9kFDPLq/Tw==
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="557008606"
Received: from aschmalt-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.160.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:41 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Jun 2021 17:33:06 -0700
Message-Id: <20210626003314.3159402-5-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210626003314.3159402-1-vinicius.gomes@intel.com>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 04/12] taprio: Replace
 tc_map_to_queue_mask()
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

Replaces tc_map_to_queue_mask() by netdev_tc_map_to_queue_mask() that
was just introduced.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 net/sched/sch_taprio.c | 26 ++++----------------------
 1 file changed, 4 insertions(+), 22 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 58586f98c648..4e411ca3a9eb 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -1201,25 +1201,6 @@ static void taprio_offload_config_changed(struct taprio_sched *q)
 	spin_unlock(&q->current_entry_lock);
 }
 
-static u32 tc_map_to_queue_mask(struct net_device *dev, u32 tc_mask)
-{
-	u32 i, queue_mask = 0;
-
-	for (i = 0; i < dev->num_tc; i++) {
-		u32 offset, count;
-
-		if (!(tc_mask & BIT(i)))
-			continue;
-
-		offset = dev->tc_to_txq[i].offset;
-		count = dev->tc_to_txq[i].count;
-
-		queue_mask |= GENMASK(offset + count - 1, offset);
-	}
-
-	return queue_mask;
-}
-
 static void taprio_sched_to_offload(struct net_device *dev,
 				    struct sched_gate_list *sched,
 				    struct tc_taprio_qopt_offload *offload)
@@ -1236,7 +1217,7 @@ static void taprio_sched_to_offload(struct net_device *dev,
 
 		e->command = entry->command;
 		e->interval = entry->interval;
-		e->gate_mask = tc_map_to_queue_mask(dev, entry->gate_mask);
+		e->gate_mask = netdev_tc_map_to_queue_mask(dev, entry->gate_mask);
 
 		i++;
 	}
@@ -1536,14 +1517,15 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 	if (tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]) {
 		u32 preempt = nla_get_u32(tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]);
 		struct tc_preempt_qopt_offload qopt = { };
+		u32 all_tcs_mask = GENMASK(mqprio->num_tc, 0);
 
-		if (preempt == U32_MAX) {
+		if ((preempt & all_tcs_mask) == all_tcs_mask) {
 			NL_SET_ERR_MSG(extack, "At least one queue must be not be preemptible");
 			err = -EINVAL;
 			goto free_sched;
 		}
 
-		qopt.preemptible_queues = tc_map_to_queue_mask(dev, preempt);
+		qopt.preemptible_queues = netdev_tc_map_to_queue_mask(dev, preempt);
 
 		err = dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT,
 						    &qopt);
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
