Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BD548F32
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2019 21:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E0D9852DB;
	Mon, 17 Jun 2019 19:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJ1vxkSmwZMh; Mon, 17 Jun 2019 19:31:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C584384974;
	Mon, 17 Jun 2019 19:31:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F294E1BF94B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 19:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF07585E14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 19:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0dEQXQZGSqLM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2019 19:31:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5704C85899
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 19:31:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 12:31:23 -0700
X-ExtLoop1: 1
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga007.jf.intel.com with ESMTP; 17 Jun 2019 12:31:23 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 17 Jun 2019 12:31:06 -0700
Message-Id: <1560799870-18956-3-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
In-Reply-To: <1560799870-18956-1-git-send-email-vedang.patel@intel.com>
References: <1560799870-18956-1-git-send-email-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v3 2/6] etf: Add skip_sock_check
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

Currently, etf expects a socket with SO_TXTIME option set for each packet
it encounters. So, it will drop all other packets. But, in the future
commits we are planning to add functionality which where tstamp value will
be set by another qdisc. Also, some packets which are generated from within
the kernel (e.g. ICMP packets) do not have any socket associated with them.

So, this commit adds support for skip_sock_check. When this option is set,
etf will skip checking for a socket and other associated options for all
skbs.

Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 include/uapi/linux/pkt_sched.h |  1 +
 net/sched/sch_etf.c            | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
index 8b2f993cbb77..69fc52e4d6bd 100644
--- a/include/uapi/linux/pkt_sched.h
+++ b/include/uapi/linux/pkt_sched.h
@@ -990,6 +990,7 @@ struct tc_etf_qopt {
 	__u32 flags;
 #define TC_ETF_DEADLINE_MODE_ON	BIT(0)
 #define TC_ETF_OFFLOAD_ON	BIT(1)
+#define TC_ETF_SKIP_SOCK_CHECK  BIT(2)
 };
 
 enum {
diff --git a/net/sched/sch_etf.c b/net/sched/sch_etf.c
index db0c2ba1d156..cebfb65d8556 100644
--- a/net/sched/sch_etf.c
+++ b/net/sched/sch_etf.c
@@ -22,10 +22,12 @@
 
 #define DEADLINE_MODE_IS_ON(x) ((x)->flags & TC_ETF_DEADLINE_MODE_ON)
 #define OFFLOAD_IS_ON(x) ((x)->flags & TC_ETF_OFFLOAD_ON)
+#define SKIP_SOCK_CHECK_IS_SET(x) ((x)->flags & TC_ETF_SKIP_SOCK_CHECK)
 
 struct etf_sched_data {
 	bool offload;
 	bool deadline_mode;
+	bool skip_sock_check;
 	int clockid;
 	int queue;
 	s32 delta; /* in ns */
@@ -77,6 +79,9 @@ static bool is_packet_valid(struct Qdisc *sch, struct sk_buff *nskb)
 	struct sock *sk = nskb->sk;
 	ktime_t now;
 
+	if (q->skip_sock_check)
+		goto skip;
+
 	if (!sk)
 		return false;
 
@@ -92,6 +97,7 @@ static bool is_packet_valid(struct Qdisc *sch, struct sk_buff *nskb)
 	if (sk->sk_txtime_deadline_mode != q->deadline_mode)
 		return false;
 
+skip:
 	now = q->get_time();
 	if (ktime_before(txtime, now) || ktime_before(txtime, q->last))
 		return false;
@@ -385,6 +391,7 @@ static int etf_init(struct Qdisc *sch, struct nlattr *opt,
 	q->clockid = qopt->clockid;
 	q->offload = OFFLOAD_IS_ON(qopt);
 	q->deadline_mode = DEADLINE_MODE_IS_ON(qopt);
+	q->skip_sock_check = SKIP_SOCK_CHECK_IS_SET(qopt);
 
 	switch (q->clockid) {
 	case CLOCK_REALTIME:
@@ -473,6 +480,9 @@ static int etf_dump(struct Qdisc *sch, struct sk_buff *skb)
 	if (q->deadline_mode)
 		opt.flags |= TC_ETF_DEADLINE_MODE_ON;
 
+	if (q->skip_sock_check)
+		opt.flags |= TC_ETF_SKIP_SOCK_CHECK;
+
 	if (nla_put(skb, TCA_ETF_PARMS, sizeof(opt), &opt))
 		goto nla_put_failure;
 
-- 
2.7.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
