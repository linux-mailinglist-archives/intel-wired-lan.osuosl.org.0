Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E36248F3F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2019 21:31:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AFCE855B5;
	Mon, 17 Jun 2019 19:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lfrFhymKuonN; Mon, 17 Jun 2019 19:31:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4039C85623;
	Mon, 17 Jun 2019 19:31:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC7011BF94B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 19:31:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A60BD85E14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 19:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UeZmVr4y9WL0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2019 19:31:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2143185899
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2019 19:31:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 12:31:27 -0700
X-ExtLoop1: 1
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga007.jf.intel.com with ESMTP; 17 Jun 2019 12:31:26 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 17 Jun 2019 12:31:10 -0700
Message-Id: <1560799870-18956-7-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
In-Reply-To: <1560799870-18956-1-git-send-email-vedang.patel@intel.com>
References: <1560799870-18956-1-git-send-email-vedang.patel@intel.com>
Subject: [Intel-wired-lan] [PATCH net-next v3 6/6] taprio: Adjust timestamps
 for TCP packets.
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

When the taprio qdisc is running in "txtime offload" mode, it will
set the launchtime value (in skb->tstamp) for all the packets which do
not have the SO_TXTIME socket option. But, the TCP packets already have
this value set and it indicates the earliest departure time represented
in CLOCK_MONOTONIC clock.

We need to respect the timestamp set by the TCP subsystem. So, convert
this time to the clock which taprio is using and ensure that the packet
is not transmitted before the deadline set by TCP.

Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 net/sched/sch_taprio.c | 41 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index f63cc3a9e69a..ae261af16c13 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -22,6 +22,7 @@
 #include <net/pkt_cls.h>
 #include <net/sch_generic.h>
 #include <net/sock.h>
+#include <net/tcp.h>
 
 static LIST_HEAD(taprio_list);
 static DEFINE_SPINLOCK(taprio_list_lock);
@@ -277,6 +278,41 @@ static inline ktime_t get_cycle_start(struct sched_gate_list *sched,
 	return ktime_sub(time, cycle_elapsed);
 }
 
+/* This returns the tstamp value set by TCP in terms of the set clock. */
+static ktime_t get_tcp_tstamp(struct taprio_sched *q, struct sk_buff *skb)
+{
+	unsigned int offset = skb_network_offset(skb);
+	const struct ipv6hdr *ipv6h;
+	const struct iphdr *iph;
+	struct ipv6hdr _ipv6h;
+
+	ipv6h = skb_header_pointer(skb, offset, sizeof(_ipv6h), &_ipv6h);
+	if (!ipv6h)
+		return 0;
+
+	if (ipv6h->version == 4) {
+		iph = (struct iphdr *)ipv6h;
+		offset += iph->ihl * 4;
+
+		/* special-case 6in4 tunnelling, as that is a common way to get
+		 * v6 connectivity in the home
+		 */
+		if (iph->protocol == IPPROTO_IPV6) {
+			ipv6h = skb_header_pointer(skb, offset,
+						   sizeof(_ipv6h), &_ipv6h);
+
+			if (!ipv6h || ipv6h->nexthdr != IPPROTO_TCP)
+				return 0;
+		} else if (iph->protocol != IPPROTO_TCP) {
+			return 0;
+		}
+	} else if (ipv6h->version == 6 && ipv6h->nexthdr != IPPROTO_TCP) {
+		return 0;
+	}
+
+	return ktime_mono_to_any(skb->skb_mstamp_ns, q->tk_offset);
+}
+
 /* There are a few scenarios where we will have to modify the txtime from
  * what is read from next_txtime in sched_entry. They are:
  * 1. If txtime is in the past,
@@ -294,7 +330,7 @@ static inline ktime_t get_cycle_start(struct sched_gate_list *sched,
  */
 static long get_packet_txtime(struct sk_buff *skb, struct Qdisc *sch)
 {
-	ktime_t transmit_end_time, interval_end, interval_start;
+	ktime_t transmit_end_time, interval_end, interval_start, tcp_tstamp;
 	struct taprio_sched *q = qdisc_priv(sch);
 	struct sched_gate_list *sched, *admin;
 	ktime_t minimum_time, now, txtime;
@@ -305,6 +341,9 @@ static long get_packet_txtime(struct sk_buff *skb, struct Qdisc *sch)
 	now = taprio_get_time(q);
 	minimum_time = ktime_add_ns(now, q->txtime_delay);
 
+	tcp_tstamp = get_tcp_tstamp(q, skb);
+	minimum_time = max_t(ktime_t, minimum_time, tcp_tstamp);
+
 	rcu_read_lock();
 	admin = rcu_dereference(q->admin_sched);
 	sched = rcu_dereference(q->oper_sched);
-- 
2.7.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
