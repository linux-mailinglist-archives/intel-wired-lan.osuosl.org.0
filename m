Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E83F34BFE1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 19:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87CDD85EF1;
	Wed, 19 Jun 2019 17:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cnn2gNFqxQyc; Wed, 19 Jun 2019 17:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D6BBA85E8A;
	Wed, 19 Jun 2019 17:40:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C32BC1BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C01878685D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1R87IudN4hAD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 17:40:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4AA386689
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 17:40:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 10:40:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="311413616"
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga004.jf.intel.com with ESMTP; 19 Jun 2019 10:40:25 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 19 Jun 2019 10:40:12 -0700
Message-Id: <1560966016-28254-4-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
In-Reply-To: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
References: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v4 3/7] taprio: calculate
 cycle_time when schedule is installed
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
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

cycle time for a particular schedule is calculated only when it is first
installed. So, it makes sense to just calculate it once right after the
'cycle_time' parameter has been parsed and store it in cycle_time.

Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 net/sched/sch_taprio.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 9ecfb8f5902a..a41d7d4434ee 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -108,22 +108,6 @@ static void switch_schedules(struct taprio_sched *q,
 	*admin = NULL;
 }
 
-static ktime_t get_cycle_time(struct sched_gate_list *sched)
-{
-	struct sched_entry *entry;
-	ktime_t cycle = 0;
-
-	if (sched->cycle_time != 0)
-		return sched->cycle_time;
-
-	list_for_each_entry(entry, &sched->entries, list)
-		cycle = ktime_add_ns(cycle, entry->interval);
-
-	sched->cycle_time = cycle;
-
-	return cycle;
-}
-
 static int taprio_enqueue(struct sk_buff *skb, struct Qdisc *sch,
 			  struct sk_buff **to_free)
 {
@@ -524,6 +508,15 @@ static int parse_taprio_schedule(struct nlattr **tb,
 	if (err < 0)
 		return err;
 
+	if (!new->cycle_time) {
+		struct sched_entry *entry;
+		ktime_t cycle = 0;
+
+		list_for_each_entry(entry, &new->entries, list)
+			cycle = ktime_add_ns(cycle, entry->interval);
+		new->cycle_time = cycle;
+	}
+
 	return 0;
 }
 
@@ -605,7 +598,7 @@ static int taprio_get_start_time(struct Qdisc *sch,
 		return 0;
 	}
 
-	cycle = get_cycle_time(sched);
+	cycle = sched->cycle_time;
 
 	/* The qdisc is expected to have at least one sched_entry.  Moreover,
 	 * any entry must have 'interval' > 0. Thus if the cycle time is zero,
@@ -632,7 +625,7 @@ static void setup_first_close_time(struct taprio_sched *q,
 	first = list_first_entry(&sched->entries,
 				 struct sched_entry, list);
 
-	cycle = get_cycle_time(sched);
+	cycle = sched->cycle_time;
 
 	/* FIXME: find a better place to do this */
 	sched->cycle_close_time = ktime_add_ns(base, cycle);
-- 
2.7.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
