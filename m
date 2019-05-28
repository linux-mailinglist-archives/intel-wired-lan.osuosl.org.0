Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AE92D8B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 11:10:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96AAD86BC4;
	Wed, 29 May 2019 09:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6EUKbpCCfyo; Wed, 29 May 2019 09:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F4B986BEC;
	Wed, 29 May 2019 09:10:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61CDB1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F4E9234AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B5mj08YTEWy2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 17:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 6792722654
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:47:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 10:47:03 -0700
X-ExtLoop1: 1
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2019 10:47:03 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 28 May 2019 10:46:44 -0700
Message-Id: <1559065608-27888-4-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
In-Reply-To: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
X-Mailman-Approved-At: Wed, 29 May 2019 09:10:29 +0000
Subject: [Intel-wired-lan] [PATCH net-next v1 3/7] taprio: Add the skeleton
 to enable hardware offloading
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
Cc: jiri@resnulli.us, l@dorileo.org, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

This adds the UAPI and the core bits necessary for userspace to
request hardware offloading to be enabled.

The future commits will enable hybrid or full offloading for taprio. This
commit sets up the infrastructure to enable it via the netlink interface.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 include/uapi/linux/pkt_sched.h |   4 +
 net/sched/sch_taprio.c         | 156 ++++++++++++++++++++++++++++++++-
 2 files changed, 158 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
index 69fc52e4d6bd..3319255ffa25 100644
--- a/include/uapi/linux/pkt_sched.h
+++ b/include/uapi/linux/pkt_sched.h
@@ -1159,6 +1159,9 @@ enum {
  *       [TCA_TAPRIO_ATTR_SCHED_ENTRY_INTERVAL]
  */
 
+#define TCA_TAPRIO_ATTR_OFFLOAD_FLAG_FULL_OFFLOAD 0x1
+#define TCA_TAPRIO_ATTR_OFFLOAD_FLAG_TXTIME_OFFLOAD 0x2
+
 enum {
 	TCA_TAPRIO_ATTR_UNSPEC,
 	TCA_TAPRIO_ATTR_PRIOMAP, /* struct tc_mqprio_qopt */
@@ -1170,6 +1173,7 @@ enum {
 	TCA_TAPRIO_ATTR_ADMIN_SCHED, /* The admin sched, only used in dump */
 	TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME, /* s64 */
 	TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME_EXTENSION, /* s64 */
+	TCA_TAPRIO_ATTR_OFFLOAD_FLAGS, /* u32 */
 	__TCA_TAPRIO_ATTR_MAX,
 };
 
diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 9ecfb8f5902a..cee6b7a3dd85 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -26,6 +26,11 @@ static LIST_HEAD(taprio_list);
 static DEFINE_SPINLOCK(taprio_list_lock);
 
 #define TAPRIO_ALL_GATES_OPEN -1
+#define VALID_OFFLOAD(flags) ((flags) != U32_MAX)
+#define FULL_OFFLOAD_IS_ON(flags) (VALID_OFFLOAD((flags)) && \
+				   ((flags) & TCA_TAPRIO_ATTR_OFFLOAD_FLAG_FULL_OFFLOAD))
+#define TXTIME_OFFLOAD_IS_ON(flags) (VALID_OFFLOAD((flags)) && \
+				     ((flags) & TCA_TAPRIO_ATTR_OFFLOAD_FLAG_TXTIME_OFFLOAD))
 
 struct sched_entry {
 	struct list_head list;
@@ -55,6 +60,7 @@ struct sched_gate_list {
 struct taprio_sched {
 	struct Qdisc **qdiscs;
 	struct Qdisc *root;
+	u32 offload_flags;
 	int clockid;
 	atomic64_t picos_per_byte; /* Using picoseconds because for 10Gbps+
 				    * speeds it's sub-nanoseconds per byte
@@ -66,6 +72,8 @@ struct taprio_sched {
 	struct sched_gate_list __rcu *oper_sched;
 	struct sched_gate_list __rcu *admin_sched;
 	ktime_t (*get_time)(void);
+	struct sk_buff *(*dequeue)(struct Qdisc *sch);
+	struct sk_buff *(*peek)(struct Qdisc *sch);
 	struct hrtimer advance_timer;
 	struct list_head taprio_list;
 };
@@ -143,7 +151,30 @@ static int taprio_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 	return qdisc_enqueue(skb, child, to_free);
 }
 
-static struct sk_buff *taprio_peek(struct Qdisc *sch)
+static struct sk_buff *taprio_peek_offload(struct Qdisc *sch)
+{
+	struct taprio_sched *q = qdisc_priv(sch);
+	struct net_device *dev = qdisc_dev(sch);
+	struct sk_buff *skb;
+	int i;
+
+	for (i = 0; i < dev->num_tx_queues; i++) {
+		struct Qdisc *child = q->qdiscs[i];
+
+		if (unlikely(!child))
+			continue;
+
+		skb = child->ops->peek(child);
+		if (!skb)
+			continue;
+
+		return skb;
+	}
+
+	return NULL;
+}
+
+static struct sk_buff *taprio_peek_soft(struct Qdisc *sch)
 {
 	struct taprio_sched *q = qdisc_priv(sch);
 	struct net_device *dev = qdisc_dev(sch);
@@ -184,6 +215,13 @@ static struct sk_buff *taprio_peek(struct Qdisc *sch)
 	return NULL;
 }
 
+static struct sk_buff *taprio_peek(struct Qdisc *sch)
+{
+	struct taprio_sched *q = qdisc_priv(sch);
+
+	return q->peek(sch);
+}
+
 static inline int length_to_duration(struct taprio_sched *q, int len)
 {
 	return div_u64(len * atomic64_read(&q->picos_per_byte), 1000);
@@ -196,7 +234,7 @@ static void taprio_set_budget(struct taprio_sched *q, struct sched_entry *entry)
 			     atomic64_read(&q->picos_per_byte)));
 }
 
-static struct sk_buff *taprio_dequeue(struct Qdisc *sch)
+static struct sk_buff *taprio_dequeue_soft(struct Qdisc *sch)
 {
 	struct taprio_sched *q = qdisc_priv(sch);
 	struct net_device *dev = qdisc_dev(sch);
@@ -275,6 +313,40 @@ static struct sk_buff *taprio_dequeue(struct Qdisc *sch)
 	return skb;
 }
 
+static struct sk_buff *taprio_dequeue_offload(struct Qdisc *sch)
+{
+	struct taprio_sched *q = qdisc_priv(sch);
+	struct net_device *dev = qdisc_dev(sch);
+	struct sk_buff *skb;
+	int i;
+
+	for (i = 0; i < dev->num_tx_queues; i++) {
+		struct Qdisc *child = q->qdiscs[i];
+
+		if (unlikely(!child))
+			continue;
+
+		skb = child->ops->dequeue(child);
+		if (unlikely(!skb))
+			continue;
+
+		qdisc_bstats_update(sch, skb);
+		qdisc_qstats_backlog_dec(sch, skb);
+		sch->q.qlen--;
+
+		return skb;
+	}
+
+	return NULL;
+}
+
+static struct sk_buff *taprio_dequeue(struct Qdisc *sch)
+{
+	struct taprio_sched *q = qdisc_priv(sch);
+
+	return q->dequeue(sch);
+}
+
 static bool should_restart_cycle(const struct sched_gate_list *oper,
 				 const struct sched_entry *entry)
 {
@@ -707,6 +779,59 @@ static int taprio_dev_notifier(struct notifier_block *nb, unsigned long event,
 	return NOTIFY_DONE;
 }
 
+static void taprio_disable_offload(struct net_device *dev,
+				   struct taprio_sched *q)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+
+	if (!q->offload_flags)
+		return;
+
+	if (!ops->ndo_setup_tc)
+		return;
+
+	/* FIXME: disable offloading */
+
+	/* Just to be sure to keep the function pointers in a
+	 * consistent state always.
+	 */
+	q->dequeue = taprio_dequeue_soft;
+	q->peek = taprio_peek_soft;
+
+	q->offload_flags = 0;
+}
+
+static int taprio_enable_offload(struct net_device *dev,
+				 struct tc_mqprio_qopt *mqprio,
+				 struct taprio_sched *q,
+				 struct sched_gate_list *sched,
+				 struct netlink_ext_ack *extack,
+				 u32 offload_flags)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+	int err = 0;
+
+	if (!FULL_OFFLOAD_IS_ON(offload_flags)) {
+		NL_SET_ERR_MSG(extack, "Offload mode is not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (!ops->ndo_setup_tc) {
+		NL_SET_ERR_MSG(extack, "Specified device does not support taprio offload");
+		return -EOPNOTSUPP;
+	}
+
+	/* FIXME: enable offloading */
+
+	q->dequeue = taprio_dequeue_offload;
+	q->peek = taprio_peek_offload;
+
+	if (err == 0)
+		q->offload_flags = offload_flags;
+
+	return err;
+}
+
 static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 			 struct netlink_ext_ack *extack)
 {
@@ -715,6 +840,7 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 	struct taprio_sched *q = qdisc_priv(sch);
 	struct net_device *dev = qdisc_dev(sch);
 	struct tc_mqprio_qopt *mqprio = NULL;
+	u32 offload_flags = U32_MAX;
 	int i, err, clockid;
 	unsigned long flags;
 	ktime_t start;
@@ -731,6 +857,9 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 	if (err < 0)
 		return err;
 
+	if (tb[TCA_TAPRIO_ATTR_OFFLOAD_FLAGS])
+		offload_flags = nla_get_u32(tb[TCA_TAPRIO_ATTR_OFFLOAD_FLAGS]);
+
 	new_admin = kzalloc(sizeof(*new_admin), GFP_KERNEL);
 	if (!new_admin) {
 		NL_SET_ERR_MSG(extack, "Not enough memory for a new schedule");
@@ -749,6 +878,12 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 		goto free_sched;
 	}
 
+	if (offload_flags != U32_MAX && (oper || admin)) {
+		NL_SET_ERR_MSG(extack, "Changing 'offload' of a running schedule is not supported");
+		err = -ENOTSUPP;
+		goto free_sched;
+	}
+
 	err = parse_taprio_schedule(tb, new_admin, extack);
 	if (err < 0)
 		goto free_sched;
@@ -823,6 +958,15 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 		goto unlock;
 	}
 
+	if (!offload_flags) {
+		taprio_disable_offload(dev, q);
+	} else if (VALID_OFFLOAD(offload_flags) || q->offload_flags) {
+		err = taprio_enable_offload(dev, mqprio, q,
+					    new_admin, extack, offload_flags);
+		if (err)
+			goto unlock;
+	}
+
 	err = taprio_get_start_time(sch, new_admin, &start);
 	if (err < 0) {
 		NL_SET_ERR_MSG(extack, "Internal error: failed get start time");
@@ -866,6 +1010,8 @@ static void taprio_destroy(struct Qdisc *sch)
 
 	hrtimer_cancel(&q->advance_timer);
 
+	taprio_disable_offload(dev, q);
+
 	if (q->qdiscs) {
 		for (i = 0; i < dev->num_tx_queues && q->qdiscs[i]; i++)
 			qdisc_put(q->qdiscs[i]);
@@ -895,6 +1041,9 @@ static int taprio_init(struct Qdisc *sch, struct nlattr *opt,
 	hrtimer_init(&q->advance_timer, CLOCK_TAI, HRTIMER_MODE_ABS);
 	q->advance_timer.function = advance_sched;
 
+	q->dequeue = taprio_dequeue_soft;
+	q->peek = taprio_peek_soft;
+
 	q->root = sch;
 
 	/* We only support static clockids. Use an invalid value as default
@@ -1080,6 +1229,9 @@ static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)
 	if (nla_put_s32(skb, TCA_TAPRIO_ATTR_SCHED_CLOCKID, q->clockid))
 		goto options_error;
 
+	if (nla_put_u32(skb, TCA_TAPRIO_ATTR_OFFLOAD_FLAGS, q->offload_flags))
+		goto options_error;
+
 	if (oper && dump_schedule(skb, oper))
 		goto options_error;
 
-- 
2.17.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
