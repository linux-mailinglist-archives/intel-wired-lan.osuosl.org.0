Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FE86B0A2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 22:50:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DAB5087E5F;
	Tue, 16 Jul 2019 20:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WELgIgdlQ8Cg; Tue, 16 Jul 2019 20:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4465B87C0D;
	Tue, 16 Jul 2019 20:50:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 599461BF360
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 19:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 559BE857D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 19:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xZf86gONQ4nv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 19:52:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 658BD857A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 19:52:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 12:52:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,271,1559545200"; d="scan'208";a="161529509"
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga008.jf.intel.com with ESMTP; 16 Jul 2019 12:52:29 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 16 Jul 2019 12:52:18 -0700
Message-Id: <1563306738-2779-1-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
X-Mailman-Approved-At: Tue, 16 Jul 2019 20:50:01 +0000
Subject: [Intel-wired-lan] [PATCH net-next v1] fix: taprio: Change type of
 txtime-delay parameter to u32
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
 jakub.kicinski@netronome.com, jhs@mojatatu.com, stephen@networkplumber.org,
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org,
 xiyou.wangcong@gmail.com, eric.dumazet@gmail.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During the review of the iproute2 patches for txtime-assist mode, it was
pointed out that it does not make sense for the txtime-delay parameter to
be negative. So, change the type of the parameter from s32 to u32.

Fixes: 4cfd5779bd6e ("taprio: Add support for txtime-assist mode")
Reported-by: Stephen Hemminger <stephen@networkplumber.org>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 include/uapi/linux/pkt_sched.h | 2 +-
 net/sched/sch_taprio.c         | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
index 1f623252abe8..18f185299f47 100644
--- a/include/uapi/linux/pkt_sched.h
+++ b/include/uapi/linux/pkt_sched.h
@@ -1174,7 +1174,7 @@ enum {
 	TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME, /* s64 */
 	TCA_TAPRIO_ATTR_SCHED_CYCLE_TIME_EXTENSION, /* s64 */
 	TCA_TAPRIO_ATTR_FLAGS, /* u32 */
-	TCA_TAPRIO_ATTR_TXTIME_DELAY, /* s32 */
+	TCA_TAPRIO_ATTR_TXTIME_DELAY, /* u32 */
 	__TCA_TAPRIO_ATTR_MAX,
 };
 
diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 388750ddc57a..c39db507ba3f 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -75,7 +75,7 @@ struct taprio_sched {
 	struct sched_gate_list __rcu *admin_sched;
 	struct hrtimer advance_timer;
 	struct list_head taprio_list;
-	int txtime_delay;
+	u32 txtime_delay;
 };
 
 static ktime_t sched_base_time(const struct sched_gate_list *sched)
@@ -1113,7 +1113,7 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
 			goto unlock;
 		}
 
-		q->txtime_delay = nla_get_s32(tb[TCA_TAPRIO_ATTR_TXTIME_DELAY]);
+		q->txtime_delay = nla_get_u32(tb[TCA_TAPRIO_ATTR_TXTIME_DELAY]);
 	}
 
 	if (!TXTIME_ASSIST_IS_ENABLED(taprio_flags) &&
@@ -1430,7 +1430,7 @@ static int taprio_dump(struct Qdisc *sch, struct sk_buff *skb)
 		goto options_error;
 
 	if (q->txtime_delay &&
-	    nla_put_s32(skb, TCA_TAPRIO_ATTR_TXTIME_DELAY, q->txtime_delay))
+	    nla_put_u32(skb, TCA_TAPRIO_ATTR_TXTIME_DELAY, q->txtime_delay))
 		goto options_error;
 
 	if (oper && dump_schedule(skb, oper))
-- 
2.7.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
