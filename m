Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F12853E512
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jun 2022 16:30:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6E60402F7;
	Mon,  6 Jun 2022 14:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nS8g96HSNZBC; Mon,  6 Jun 2022 14:30:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9705140127;
	Mon,  6 Jun 2022 14:30:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 757491BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 09:28:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 684A584182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 09:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="pmuXX6a3";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="fHb7pCB0"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFesiou-T07V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jun 2022 09:28:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADC3C8417B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jun 2022 09:28:09 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1654507685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=h0mv3Rgx96FN+/OFOGtmFOM6oVf6bWOhe0iKb3I5DyM=;
 b=pmuXX6a324DjO+/TQPmrwMd0vfnwotl2m96Im1D6qL507Q+L2knsTK+i/adcmrb1eYN2Ug
 yX0QdD+tNwA2aofYuPVF94TkM7clBJ90DqNU9iylT5iA7ritZT3aZoR8EIV2I2/5nrN97k
 ko6H9S1HK3uLesOHbuGJ4hOWuB9/qXWC3zW98/cqVWoViPsifGdZrjJRzHxsDvO6c9nrAB
 a/CEbYPayKTc38HByFysAdPnfJBbhsHy3K+nnZXKTKLYPFUaZ3OILAsz823nDfO/h4fa17
 +3dg0riubK0RxbHpbB7MJVXTOfJX/LoixuKNo6xpq6GgSLSTAaEwgvx3q9AgGg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1654507685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=h0mv3Rgx96FN+/OFOGtmFOM6oVf6bWOhe0iKb3I5DyM=;
 b=fHb7pCB0G9Cs8FkAm0TdMvAGKMFbCAw//JRMu47w5/m6fLgfA4NalLIrBWZZVqEURy1Ehw
 Sio9RoLyMtY0RTAw==
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Mon,  6 Jun 2022 11:27:47 +0200
Message-Id: <20220606092747.16730-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 06 Jun 2022 14:30:38 +0000
Subject: [Intel-wired-lan] [PATCH net-next] igc: Lift TAPRIO schedule
 restriction
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for Qbv schedules where one queue stays open
in consecutive entries. Currently that's not supported.

Example schedule:

|tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_tc 3 \
|   map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
|   queues 1@0 1@1 2@2 \
|   base-time ${BASETIME} \
|   sched-entry S 0x01 300000 \ # Stream High/Low
|   sched-entry S 0x06 500000 \ # Management and Best Effort
|   sched-entry S 0x04 200000 \ # Best Effort
|   flags 0x02

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ae17af44fe02..4758bdbe5df3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5813,9 +5813,10 @@ static bool validate_schedule(struct igc_adapter *adapter,
 		return false;
 
 	for (n = 0; n < qopt->num_entries; n++) {
-		const struct tc_taprio_sched_entry *e;
+		const struct tc_taprio_sched_entry *e, *prev;
 		int i;
 
+		prev = n ? &qopt->entries[n - 1] : NULL;
 		e = &qopt->entries[n];
 
 		/* i225 only supports "global" frame preemption
@@ -5828,7 +5829,12 @@ static bool validate_schedule(struct igc_adapter *adapter,
 			if (e->gate_mask & BIT(i))
 				queue_uses[i]++;
 
-			if (queue_uses[i] > 1)
+			/* There are limitations: A single queue cannot be
+			 * opened and closed multiple times per cycle unless the
+			 * gate stays open. Check for it.
+			 */
+			if (queue_uses[i] > 1 &&
+			    !(prev->gate_mask & BIT(i)))
 				return false;
 		}
 	}
@@ -5872,6 +5878,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 				 struct tc_taprio_qopt_offload *qopt)
 {
+	bool queue_configured[IGC_MAX_TX_QUEUES] = { };
 	u32 start_time = 0, end_time = 0;
 	size_t n;
 
@@ -5887,9 +5894,6 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	adapter->cycle_time = qopt->cycle_time;
 	adapter->base_time = qopt->base_time;
 
-	/* FIXME: be a little smarter about cases when the gate for a
-	 * queue stays open for more than one entry.
-	 */
 	for (n = 0; n < qopt->num_entries; n++) {
 		struct tc_taprio_sched_entry *e = &qopt->entries[n];
 		int i;
@@ -5902,8 +5906,15 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 			if (!(e->gate_mask & BIT(i)))
 				continue;
 
-			ring->start_time = start_time;
+			/* Check whether a queue stays open for more than one
+			 * entry. If so, keep the start and advance the end
+			 * time.
+			 */
+			if (!queue_configured[i])
+				ring->start_time = start_time;
 			ring->end_time = end_time;
+
+			queue_configured[i] = true;
 		}
 
 		start_time += e->interval;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
