Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F331730139
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:07:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFF32839E0;
	Wed, 14 Jun 2023 14:07:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFF32839E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686751665;
	bh=CMysB1qFF1v0KL25OP2Sdyl4LW7ux6P2QkHbw7BFhaE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CyIEAVkRUttjkhm9kBjHyqMLDE3mbs2Aovkbc2BfzzdKXve1eyTJ5/0THjHVX3FIJ
	 AmoYertrXzquQRnSjYn6A9zcclmTGQN7OPwa7oUBj6n+ZGIdNmWx4CzOHwQkXuL3/j
	 4uw9DuoHA3PhSER3qVJrd+pJKVsnCKSHRu8dYigp8HpiHNfI3hMcsuBYTKoAE6YKgD
	 Y2QfpBKnG8tGMAY5VqTRoyLwqlNPrmPe2J/rGwrbGtBdI9o68bXivJqGuTWaFHmhGE
	 UeYsUCxCtc6He1OzXht/Cq2WA+ALrunKnTO4KhU0B0+56xmUZsqZxcynrI6XgaegE+
	 9NH8BpyIfMJOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xIOi8JrD3hAJ; Wed, 14 Jun 2023 14:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD7DA817E4;
	Wed, 14 Jun 2023 14:07:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD7DA817E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DEC11BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1584341C62
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1584341C62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id btkBPn7GtFyS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:07:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 092D041D88
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 092D041D88
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:32 +0000 (UTC)
From: Florian Kauer <florian.kauer@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>
Date: Wed, 14 Jun 2023 16:07:10 +0200
Message-Id: <20230614140714.14443-3-florian.kauer@linutronix.de>
In-Reply-To: <20230614140714.14443-1-florian.kauer@linutronix.de>
References: <20230614140714.14443-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1686751650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E4YEaT+aOUEFj7DigAgxbM4RznI4oXWfWpU3L2Qmto8=;
 b=rjLACA+DkXLZcQ8DPRtCD+qKMo3cdMoczMFVfOTbljMvVI1NcqDBFtd1CowbR+vc9Lw1nl
 OQkVYe86r2bM7oUXQD+jXcV2R4KHwEDFHofHRoc8wMTSoia3jYXGYDGItfXxntszkKP2i1
 Smg0tlGgkA9aIgQrr/BZrDg3UDYZa1Si2zxbqKlJHKFDb6r9vpiqdcaUqZBPeQcvMRbUKm
 YICM057FYGS7+a/ioswIVImlEwWUL2neuYHYuwVwRd0hqUnjL3UKdJqaVWWN+iQSBDpOhs
 UikjIFKnD4IVL3sIYWttT4bpp+92PiK7nM5osOMOfpRihV02MAF+c3nk7cYbqQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1686751650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E4YEaT+aOUEFj7DigAgxbM4RznI4oXWfWpU3L2Qmto8=;
 b=CW5qpZOAMqDU1sPWk664/S4CRHxPNDe9AjuXmorNFQopfnw+ZTuA7G8d5OIaYDMVmiuVo9
 tpyerRmHrWiRV7CQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=rjLACA+D; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=CW5qpZOA
Subject: [Intel-wired-lan] [PATCH net-next 2/6] igc: Do not enable taprio
 offload for invalid arguments
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Only set adapter->taprio_offload_enable after validating the arguments.
Otherwise, it stays set even if the offload was not enabled.
Since the subsequent code does not get executed in case of invalid
arguments, it will not be read at first.
However, by activating and then deactivating another offload
(e.g. ETF/TX launchtime offload), taprio_offload_enable is read
and erroneously keeps the offload feature of the NIC enabled.

This can be reproduced as follows:

    # TAPRIO offload (flags == 0x2) and negative base-time leading to expected -ERANGE
    sudo tc qdisc replace dev enp1s0 parent root handle 100 stab overhead 24 taprio \
	    num_tc 1 \
	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
	    queues 1@0 \
	    base-time -1000 \
	    sched-entry S 01 300000 \
	    flags 0x2

    # IGC_TQAVCTRL is 0x0 as expected (iomem=relaxed for reading register)
    sudo pcimem /sys/bus/pci/devices/0000:01:00.0/resource0 0x3570 w*1

    # Activate ETF offload
    sudo tc qdisc replace dev enp1s0 parent root handle 6666 mqprio \
	    num_tc 3 \
	    map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
	    queues 1@0 1@1 2@2 \
	    hw 0
    sudo tc qdisc add dev enp1s0 parent 6666:1 etf \
	    clockid CLOCK_TAI \
	    delta 500000 \
	    offload

    # IGC_TQAVCTRL is 0x9 as expected
    sudo pcimem /sys/bus/pci/devices/0000:01:00.0/resource0 0x3570 w*1

    # Deactivate ETF offload again
    sudo tc qdisc delete dev enp1s0 parent 6666:1

    # IGC_TQAVCTRL should now be 0x0 again, but is observed as 0x9
    sudo pcimem /sys/bus/pci/devices/0000:01:00.0/resource0 0x3570 w*1

Fixes: e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 56117846b8da..122158b321d5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6091,6 +6091,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 
 	adapter->base_time = 0;
 	adapter->cycle_time = NSEC_PER_SEC;
+	adapter->taprio_offload_enable = false;
 	adapter->qbv_config_change_errors = 0;
 
 	for (i = 0; i < adapter->num_tx_queues; i++) {
@@ -6113,20 +6114,12 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	size_t n;
 	int i;
 
-	switch (qopt->cmd) {
-	case TAPRIO_CMD_REPLACE:
-		adapter->taprio_offload_enable = true;
-		break;
-	case TAPRIO_CMD_DESTROY:
-		adapter->taprio_offload_enable = false;
-		break;
-	default:
-		return -EOPNOTSUPP;
-	}
-
-	if (!adapter->taprio_offload_enable)
+	if (qopt->cmd == TAPRIO_CMD_DESTROY)
 		return igc_tsn_clear_schedule(adapter);
 
+	if (qopt->cmd != TAPRIO_CMD_REPLACE)
+		return -EOPNOTSUPP;
+
 	if (qopt->base_time < 0)
 		return -ERANGE;
 
@@ -6138,6 +6131,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 
 	adapter->cycle_time = qopt->cycle_time;
 	adapter->base_time = qopt->base_time;
+	adapter->taprio_offload_enable = true;
 
 	for (n = 0; n < qopt->num_entries; n++) {
 		struct tc_taprio_sched_entry *e = &qopt->entries[n];
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
