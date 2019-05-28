Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2242D8B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 11:10:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 93BB123B44;
	Wed, 29 May 2019 09:10:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HM-HgtQnJ9mL; Wed, 29 May 2019 09:10:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5E21D23335;
	Wed, 29 May 2019 09:10:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 063EF1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 03AAD22654
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sKihV2c8HVq7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 17:47:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id BC8582278C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:47:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 10:47:06 -0700
X-ExtLoop1: 1
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2019 10:47:06 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 28 May 2019 10:46:48 -0700
Message-Id: <1559065608-27888-8-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
In-Reply-To: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
X-Mailman-Approved-At: Wed, 29 May 2019 09:10:29 +0000
Subject: [Intel-wired-lan] [PATCH net-next v1 7/7] taprio: Adjust timestamps
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
index b892fa32ea2b..cadb2f5d16f0 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -22,6 +22,7 @@
 #include <net/pkt_cls.h>
 #include <net/sch_generic.h>
 #include <net/sock.h>
+#include <net/tcp.h>
 
 static LIST_HEAD(taprio_list);
 static DEFINE_SPINLOCK(taprio_list_lock);
@@ -280,6 +281,41 @@ static inline ktime_t get_cycle_start(struct sched_gate_list *sched,
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
@@ -297,7 +333,7 @@ static inline ktime_t get_cycle_start(struct sched_gate_list *sched,
  */
 static long get_packet_txtime(struct sk_buff *skb, struct Qdisc *sch)
 {
-	ktime_t transmit_end_time, interval_end, interval_start;
+	ktime_t transmit_end_time, interval_end, interval_start, tcp_tstamp;
 	int len, packet_transmit_time, sched_changed;
 	struct taprio_sched *q = qdisc_priv(sch);
 	ktime_t minimum_time, now, txtime;
@@ -307,6 +343,9 @@ static long get_packet_txtime(struct sk_buff *skb, struct Qdisc *sch)
 	now = taprio_get_time(q);
 	minimum_time = ktime_add_ns(now, q->txtime_delay);
 
+	tcp_tstamp = get_tcp_tstamp(q, skb);
+	minimum_time = max_t(ktime_t, minimum_time, tcp_tstamp);
+
 	rcu_read_lock();
 	admin = rcu_dereference(q->admin_sched);
 	sched = rcu_dereference(q->oper_sched);
-- 
2.17.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
