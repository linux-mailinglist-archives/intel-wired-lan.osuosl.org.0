Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF81D3B4B97
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 02:34:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9478683BC5;
	Sat, 26 Jun 2021 00:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MLv4z00-TT1X; Sat, 26 Jun 2021 00:34:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72F7083BB3;
	Sat, 26 Jun 2021 00:34:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E9A21C11B8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2585F4045A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Buft6DacCbX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jun 2021 00:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 947B94039F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:44 +0000 (UTC)
IronPort-SDR: inJ7BMfuvI6RK6I8X8tmfAylo/GU2IzvCA25FUfSW+AZZTBtnOtR64oQMvzTAND9QsgN/eSm81
 X+Ct2+BxOXuw==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="268890551"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="268890551"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:41 -0700
IronPort-SDR: Pr0JP2enw6hUbLe4LFg4MRUpC7+NQmPauIFZtEZXyg7q0EvPQopTTcHA965lafuDTeHa/0ZpI6
 +u8aRcIahD4A==
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="557008600"
Received: from aschmalt-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.160.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:41 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Jun 2021 17:33:04 -0700
Message-Id: <20210626003314.3159402-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210626003314.3159402-1-vinicius.gomes@intel.com>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 02/12] taprio: Add support for
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

taprio will receive the information of which traffic classes are
marked as express/preemptible, and when offloading frame preemption to
the driver will convert the information, so the driver receives which
queues are marked as express/preemptible.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 include/linux/netdevice.h      |  1 +
 include/net/pkt_sched.h        |  4 ++++
 include/uapi/linux/pkt_sched.h |  1 +
 net/sched/sch_taprio.c         | 43 ++++++++++++++++++++++++++++++----
 4 files changed, 44 insertions(+), 5 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index be1dcceda5e4..af5d4c5b0ad5 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -923,6 +923,7 @@ enum tc_setup_type {
 	TC_SETUP_QDISC_TBF,
 	TC_SETUP_QDISC_FIFO,
 	TC_SETUP_QDISC_HTB,
+	TC_SETUP_PREEMPT,
 };
 
 /* These structures hold the attributes of bpf state that are being passed
diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h
index 6d7b12cba015..b4cb479d1cf5 100644
--- a/include/net/pkt_sched.h
+++ b/include/net/pkt_sched.h
@@ -178,6 +178,10 @@ struct tc_taprio_qopt_offload {
 	struct tc_taprio_sched_entry entries[];
 };
 
+struct tc_preempt_qopt_offload {
+	u32 preemptible_queues;
+};
+
 /* Reference counting */
 struct tc_taprio_qopt_offload *taprio_offload_get(struct tc_taprio_qopt_offload
 						  *offload);
diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
index 79a699f106b1..830ce9c9ec6f 100644
--- a/include/uapi/linux/pkt_sched.h
+++ b/include/uapi/linux/pkt_sched.h
@@ -1241,6 +1241,7 @@ enum {
 	TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME_EXTENSION, /* s64 */
 	TCA_TAPRIO_ATTR_FLAGS, /* u32 */
 	TCA_TAPRIO_ATTR_TXTIME_DELAY, /* u32 */
+	TCA_TAPRIO_ATTR_PREEMPT_TCS, /* u32 */
 	__TCA_TAPRIO_ATTR_MAX,
 };
 
diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 66fe2b82af9a..58586f98c648 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -64,6 +64,7 @@ struct taprio_sched {
 	struct Qdisc **qdiscs;
 	struct Qdisc *root;
 	u32 flags;
+	u32 preemptible_tcs;
 	enum tk_offsets tk_offset;
 	int clockid;
 	atomic64_t picos_per_byte; /* Using picoseconds because for 10Gbps+
@@ -786,6 +787,7 @@ static const struct nla_policy taprio_policy[TCA_TAPRIO_ATTR_MAX + 1] = {
 	[TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME_EXTENSION] = { .type = NLA_S64 },
 	[TCA_TAPRIO_ATTR_FLAGS]                      = { .type = NLA_U32 },
 	[TCA_TAPRIO_ATTR_TXTIME_DELAY]		     = { .type = NLA_U32 },
+	[TCA_TAPRIO_ATTR_PREEMPT_TCS]                = { .type = NLA_U32 },
 };
 
 static int fill_sched_entry(struct taprio_sched *q, struct nlattr **tb,
@@ -1284,6 +1286,7 @@ static int taprio_disable_offload(struct net_device *dev,
 				  struct netlink_ext_ack *extack)
 {
 	const struct net_device_ops *ops = dev->netdev_ops;
+	struct tc_preempt_qopt_offload preempt = { };
 	struct tc_taprio_qopt_offload *offload;
 	int err;
 
@@ -1302,13 +1305,15 @@ static int taprio_disable_offload(struct net_device *dev,
 	offload->enable = 0;
 
 	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
-	if (err < 0) {
+	if (err < 0)
 		NL_SET_ERR_MSG(extack,
-			       "Device failed to disable offload");
-		goto out;
-	}
+			       "Device failed to disable taprio offload");
+
+	err = ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT, &preempt);
+	if (err < 0)
+		NL_SET_ERR_MSG(extack,
+			       "Device failed to disable frame preemption offload");
 
-out:
 	taprio_offload_free(offload);
 
 	return err;
@@ -1525,6 +1530,29 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 					       mqprio->prio_tc_map[i]);
 	}
 
+	/* It's valid to enable frame preemption without any kind of
+	 * offloading being enabled, so keep it separated.
+	 */
+	if (tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]) {
+		u32 preempt = nla_get_u32(tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]);
+		struct tc_preempt_qopt_offload qopt = { };
+
+		if (preempt == U32_MAX) {
+			NL_SET_ERR_MSG(extack, "At least one queue must be not be preemptible");
+			err = -EINVAL;
+			goto free_sched;
+		}
+
+		qopt.preemptible_queues = tc_map_to_queue_mask(dev, preempt);
+
+		err = dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT,
+						    &qopt);
+		if (err)
+			goto free_sched;
+
+		q->preemptible_tcs = preempt;
+	}
+
 	if (FULL_OFFLOAD_IS_ENABLED(q->flags))
 		err = taprio_enable_offload(dev, q, new_admin, extack);
 	else
@@ -1681,6 +1709,7 @@ static int taprio_init(struct Qdisc *sch, struct nlattr *opt,
 	 */
 	q->clockid = -1;
 	q->flags = TAPRIO_FLAGS_INVALID;
+	q->preemptible_tcs = U32_MAX;
 
 	spin_lock(&taprio_list_lock);
 	list_add(&q->taprio_list, &taprio_list);
@@ -1899,6 +1928,10 @@ static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)
 	if (q->flags && nla_put_u32(skb, TCA_TAPRIO_ATTR_FLAGS, q->flags))
 		goto options_error;
 
+	if (q->preemptible_tcs != U32_MAX &&
+	    nla_put_u32(skb, TCA_TAPRIO_ATTR_PREEMPT_TCS, q->preemptible_tcs))
+		goto options_error;
+
 	if (q->txtime_delay &&
 	    nla_put_u32(skb, TCA_TAPRIO_ATTR_TXTIME_DELAY, q->txtime_delay))
 		goto options_error;
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
