Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5EA2CB40D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 05:53:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CDFC86D20;
	Wed,  2 Dec 2020 04:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MViQcEmouvAm; Wed,  2 Dec 2020 04:53:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4D8986CAE;
	Wed,  2 Dec 2020 04:53:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 79AC81BF30A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 73C0F2E1EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XHqdBmVjWsLr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 04:53:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 6B1752E1ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 04:53:50 +0000 (UTC)
IronPort-SDR: 5V3kL0EE25PBr/nOLBshYiDCYLgO4YSQLlUK3HTKpDC+acLrJJ4EaW4cStGZPWg/f0c4MqgQIR
 otgqxGgxuRQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234558817"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="234558817"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:48 -0800
IronPort-SDR: QEkx5IKF1j1R+3BDnUUL/jUyX8o95LQF8VDM9afyt12KFJPSFyEkSzORatRkF2P3XwvhlNywhO
 Ia4ZhhddrIng==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549888366"
Received: from shivanif-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.152.222])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:53:47 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Dec 2020 20:53:18 -0800
Message-Id: <20201202045325.3254757-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201202045325.3254757-1-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 2/9] taprio: Add support for
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This adds a way to configure which queues are marked as preemptible
and which are marked as express.

Even if this is not a "real" offload, because it can't be executed
purely in software, having this information near where the mapping of
queues is specified, makes it, hopefully, easier to understand.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 include/linux/netdevice.h      |  1 +
 include/net/pkt_sched.h        |  4 ++++
 include/uapi/linux/pkt_sched.h |  1 +
 net/sched/sch_taprio.c         | 41 ++++++++++++++++++++++++++++++----
 4 files changed, 43 insertions(+), 4 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 8eeb73ac58bd..d7a99e769e79 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -852,6 +852,7 @@ enum tc_setup_type {
 	TC_SETUP_QDISC_ETS,
 	TC_SETUP_QDISC_TBF,
 	TC_SETUP_QDISC_FIFO,
+	TC_SETUP_PREEMPT,
 };
 
 /* These structures hold the attributes of bpf state that are being passed
diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h
index 15b1b30f454e..be5ff1535332 100644
--- a/include/net/pkt_sched.h
+++ b/include/net/pkt_sched.h
@@ -183,6 +183,10 @@ struct tc_taprio_qopt_offload {
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
index 9e7c2c607845..f0240ddaeee3 100644
--- a/include/uapi/linux/pkt_sched.h
+++ b/include/uapi/linux/pkt_sched.h
@@ -1240,6 +1240,7 @@ enum {
 	TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME_EXTENSION, /* s64 */
 	TCA_TAPRIO_ATTR_FLAGS, /* u32 */
 	TCA_TAPRIO_ATTR_TXTIME_DELAY, /* u32 */
+	TCA_TAPRIO_ATTR_PREEMPT_QUEUES, /* u32 */
 	__TCA_TAPRIO_ATTR_MAX,
 };
 
diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 26fb8a62996b..c482c5d211bb 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -64,6 +64,7 @@ struct taprio_sched {
 	struct Qdisc **qdiscs;
 	struct Qdisc *root;
 	u32 flags;
+	u32 preemptible_queues;
 	enum tk_offsets tk_offset;
 	int clockid;
 	atomic64_t picos_per_byte; /* Using picoseconds because for 10Gbps+
@@ -776,6 +777,7 @@ static const struct nla_policy taprio_policy[TCA_TAPRIO_ATTR_MAX + 1] = {
 	[TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME_EXTENSION] = { .type = NLA_S64 },
 	[TCA_TAPRIO_ATTR_FLAGS]                      = { .type = NLA_U32 },
 	[TCA_TAPRIO_ATTR_TXTIME_DELAY]		     = { .type = NLA_U32 },
+	[TCA_TAPRIO_ATTR_PREEMPT_QUEUES]	     = { .type = NLA_U32 },
 };
 
 static int fill_sched_entry(struct taprio_sched *q, struct nlattr **tb,
@@ -1268,6 +1270,7 @@ static int taprio_disable_offload(struct net_device *dev,
 				  struct netlink_ext_ack *extack)
 {
 	const struct net_device_ops *ops = dev->netdev_ops;
+	struct tc_preempt_qopt_offload preempt = { };
 	struct tc_taprio_qopt_offload *offload;
 	int err;
 
@@ -1286,13 +1289,15 @@ static int taprio_disable_offload(struct net_device *dev,
 	offload->enable = 0;
 
 	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
-	if (err < 0) {
+	if (err < 0)
+		NL_SET_ERR_MSG(extack,
+			       "Device failed to disable offload");
+
+	err = ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT, &preempt);
+	if (err < 0)
 		NL_SET_ERR_MSG(extack,
 			       "Device failed to disable offload");
-		goto out;
-	}
 
-out:
 	taprio_offload_free(offload);
 
 	return err;
@@ -1509,6 +1514,29 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 					       mqprio->prio_tc_map[i]);
 	}
 
+	/* It's valid to enable frame preemption without any kind of
+	 * offloading being enabled, so keep it separated.
+	 */
+	if (tb[TCA_TAPRIO_ATTR_PREEMPT_QUEUES]) {
+		u32 preempt = nla_get_u32(tb[TCA_TAPRIO_ATTR_PREEMPT_QUEUES]);
+		struct tc_preempt_qopt_offload qopt = { };
+
+		if (preempt == U32_MAX) {
+			NL_SET_ERR_MSG(extack, "At least one queue must be not be preemptible");
+			err = -EINVAL;
+			goto free_sched;
+		}
+
+		qopt.preemptible_queues = preempt;
+
+		err = dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT,
+						    &qopt);
+		if (err)
+			goto free_sched;
+
+		q->preemptible_queues = preempt;
+	}
+
 	if (FULL_OFFLOAD_IS_ENABLED(q->flags))
 		err = taprio_enable_offload(dev, q, new_admin, extack);
 	else
@@ -1650,6 +1678,7 @@ static int taprio_init(struct Qdisc *sch, struct nlattr *opt,
 	 */
 	q->clockid = -1;
 	q->flags = TAPRIO_FLAGS_INVALID;
+	q->preemptible_queues = U32_MAX;
 
 	spin_lock(&taprio_list_lock);
 	list_add(&q->taprio_list, &taprio_list);
@@ -1833,6 +1862,10 @@ static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)
 	if (q->flags && nla_put_u32(skb, TCA_TAPRIO_ATTR_FLAGS, q->flags))
 		goto options_error;
 
+	if (q->preemptible_queues != U32_MAX &&
+	    nla_put_u32(skb, TCA_TAPRIO_ATTR_PREEMPT_QUEUES, q->preemptible_queues))
+		goto options_error;
+
 	if (q->txtime_delay &&
 	    nla_put_u32(skb, TCA_TAPRIO_ATTR_TXTIME_DELAY, q->txtime_delay))
 		goto options_error;
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
