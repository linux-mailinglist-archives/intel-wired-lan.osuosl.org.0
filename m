Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF8255B66
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 00:38:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA07886689;
	Tue, 25 Jun 2019 22:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KF0axER1qzXY; Tue, 25 Jun 2019 22:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45C1D866BD;
	Tue, 25 Jun 2019 22:38:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6689A1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 22:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 637EC85F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 22:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PU07GRHeBnD1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2019 22:07:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D4AF085F53
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 22:07:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 15:07:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="172511977"
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga002.jf.intel.com with ESMTP; 25 Jun 2019 15:07:31 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 25 Jun 2019 15:07:18 -0700
Message-Id: <1561500439-30276-8-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
In-Reply-To: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
References: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
X-Mailman-Approved-At: Tue, 25 Jun 2019 22:38:08 +0000
Subject: [Intel-wired-lan] [PATCH net-next v6 7/8] taprio: make clock
 reference conversions easier
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
Cc: jiri@resnulli.us, l@dorileo.org, sergei.shtylyov@cogentembedded.com,
 jakub.kicinski@netronome.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 eric.dumazet@gmail.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Later in this series we will need to transform from
CLOCK_MONOTONIC (used in TCP) to the clock reference used in TAPRIO.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 net/sched/sch_taprio.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 078230e44471..5c5e7db520dc 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -61,6 +61,7 @@ struct taprio_sched {
 	struct Qdisc **qdiscs;
 	struct Qdisc *root;
 	u32 flags;
+	enum tk_offsets tk_offset;
 	int clockid;
 	atomic64_t picos_per_byte; /* Using picoseconds because for 10Gbps+
 				    * speeds it's sub-nanoseconds per byte
@@ -71,7 +72,6 @@ struct taprio_sched {
 	struct sched_entry __rcu *current_entry;
 	struct sched_gate_list __rcu *oper_sched;
 	struct sched_gate_list __rcu *admin_sched;
-	ktime_t (*get_time)(void);
 	struct hrtimer advance_timer;
 	struct list_head taprio_list;
 	int txtime_delay;
@@ -85,6 +85,20 @@ static ktime_t sched_base_time(const struct sched_gate_list *sched)
 	return ns_to_ktime(sched->base_time);
 }
 
+static ktime_t taprio_get_time(struct taprio_sched *q)
+{
+	ktime_t mono = ktime_get();
+
+	switch (q->tk_offset) {
+	case TK_OFFS_MAX:
+		return mono;
+	default:
+		return ktime_mono_to_any(mono, q->tk_offset);
+	}
+
+	return KTIME_MAX;
+}
+
 static void taprio_free_sched_cb(struct rcu_head *head)
 {
 	struct sched_gate_list *sched = container_of(head, struct sched_gate_list, rcu);
@@ -278,7 +292,7 @@ static long get_packet_txtime(struct sk_buff *skb, struct Qdisc *sch)
 	struct sched_entry *entry;
 	bool sched_changed;
 
-	now = q->get_time();
+	now = taprio_get_time(q);
 	minimum_time = ktime_add_ns(now, q->txtime_delay);
 
 	rcu_read_lock();
@@ -469,7 +483,7 @@ static struct sk_buff *taprio_dequeue(struct Qdisc *sch)
 			continue;
 
 		len = qdisc_pkt_len(skb);
-		guard = ktime_add_ns(q->get_time(),
+		guard = ktime_add_ns(taprio_get_time(q),
 				     length_to_duration(q, len));
 
 		/* In the case that there's no gate entry, there's no
@@ -838,7 +852,7 @@ static int taprio_get_start_time(struct Qdisc *sch,
 	s64 n;
 
 	base = sched_base_time(sched);
-	now = q->get_time();
+	now = taprio_get_time(q);
 
 	if (ktime_after(base, now)) {
 		*start = base;
@@ -1084,16 +1098,16 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 
 	switch (q->clockid) {
 	case CLOCK_REALTIME:
-		q->get_time = ktime_get_real;
+		q->tk_offset = TK_OFFS_REAL;
 		break;
 	case CLOCK_MONOTONIC:
-		q->get_time = ktime_get;
+		q->tk_offset = TK_OFFS_MAX;
 		break;
 	case CLOCK_BOOTTIME:
-		q->get_time = ktime_get_boottime;
+		q->tk_offset = TK_OFFS_BOOT;
 		break;
 	case CLOCK_TAI:
-		q->get_time = ktime_get_clocktai;
+		q->tk_offset = TK_OFFS_TAI;
 		break;
 	default:
 		NL_SET_ERR_MSG(extack, "Invalid 'clockid'");
-- 
2.7.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
