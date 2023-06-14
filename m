Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEF2730142
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73D0783A46;
	Wed, 14 Jun 2023 14:08:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73D0783A46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686751682;
	bh=66DLvQutLKz1mD9VPYvNmcmgzoAr7DtfJpYLqlLb50M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BG+SmofpSqAi6Sze6Ip+4kphtlf0R+IVNu/Bk24COj7tBzc/LpYT6SOTwQs0NcVVi
	 Q56ORVM2Ig6vO7rNqMj7RSgd6kqiTMa3pl3upg/Xy7KfqtnCrlLA8T0Eezx2c7sivK
	 G48E1d/23G6eVWUwkQJnsZDWLxGXsS90o5O1mysyxZb+q+McXkPBEZsbkpwez7z6or
	 1g5tIe1+C7B1Hg7JqXnToxbHXsAAQavWGHA2JI2W+IXkJgJGt1gnVF1E/kUPOaeBXB
	 c0yjGtMpFcdss142dDwXC0KPSeGyjeTrK3wuRiWieJVwtpPOpIzC1+SPdFsTuU5TUC
	 qf4DN5wS6uJvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FLTyu3kfnGrg; Wed, 14 Jun 2023 14:08:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2492581DE4;
	Wed, 14 Jun 2023 14:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2492581DE4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D2F21BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9B8440146
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9B8440146
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NZjZetu0zQVw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:07:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4243400F1
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4243400F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:40 +0000 (UTC)
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
Date: Wed, 14 Jun 2023 16:07:14 +0200
Message-Id: <20230614140714.14443-7-florian.kauer@linutronix.de>
In-Reply-To: <20230614140714.14443-1-florian.kauer@linutronix.de>
References: <20230614140714.14443-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1686751659;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q1hYNE6dCTQuk9WVmYS4k1xlOgvvBhb4CT2be2LL7DM=;
 b=ZZvYV1zwPCWYO/QJxWCTeJyNCkmnzf432jgNJvSDhZlVIMN27BnuXbf0i31BtLI3gV/+YA
 FVz6Ic0Y69dCCdRV1A/qfWvkosFGNADeBdWJueyQ1q3kIwsdmNGLKXQrEEVrNum87qnrOn
 dlzBLjNaRmPCAGL1pGEZzrY+4EOtDVdBv7o/B3ClKaJHiRwtEGivNNdv2jm7scRPu9adob
 R9JMzXwSYTxW5qjG+SRx8WWYw8SE0vDm5LtwWT0pkObGsW9ckb6ml+3m5JKtV+Xb6WNue5
 37sEu1gU/uwYLRcNEAG7C72Xb+kpOeavkDFTgRJ3XiMMugOt2xi1+LKVQztVwQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1686751659;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q1hYNE6dCTQuk9WVmYS4k1xlOgvvBhb4CT2be2LL7DM=;
 b=yHOFDzNtJEKU4s4MeGdhgcrNo8WlP4GxqaRe2tJ06SItoPxdsOzaIf8OR6Ie4RfzqKCNtO
 T8JTtGrn54Bj37CA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=ZZvYV1zw; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=yHOFDzNt
Subject: [Intel-wired-lan] [PATCH net-next 6/6] igc: Fix inserting of empty
 frame for launchtime
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

The insertion of an empty frame was introduced with
commit db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
in order to ensure that the current cycle has at least one packet if
there is some packet to be scheduled for the next cycle.

However, the current implementation does not properly check if
a packet is already scheduled for the current cycle. Currently,
an empty packet is always inserted if and only if
txtime >= end_of_cycle && txtime > last_tx_cycle
but since last_tx_cycle is always either the end of the current
cycle (end_of_cycle) or the end of a previous cycle, the
second part (txtime > last_tx_cycle) is always true unless
txtime == last_tx_cycle.

What actually needs to be checked here is if the last_tx_cycle
was already written within the current cycle, so an empty frame
should only be inserted if and only if
txtime >= end_of_cycle && end_of_cycle > last_tx_cycle.

This patch does not only avoid an unnecessary insertion, but it
can actually be harmful to insert an empty packet if packets
are already scheduled in the current cycle, because it can lead
to a situation where the empty packet is actually processed
as the first packet in the upcoming cycle shifting the packet
with the first_flag even one cycle into the future, finally leading
to a TX hang.

The TX hang can be reproduced on a i225 with:

    sudo tc qdisc replace dev enp1s0 parent root handle 100 taprio \
	    num_tc 1 \
	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
	    queues 1@0 \
	    base-time 0 \
	    sched-entry S 01 300000 \
	    flags 0x1 \
	    txtime-delay 500000 \
	    clockid CLOCK_TAI
    sudo tc qdisc replace dev enp1s0 parent 100:1 etf \
	    clockid CLOCK_TAI \
	    delta 500000 \
	    offload \
	    skip_sock_check

and traffic generator

    sudo trafgen -i traffic.cfg -o enp1s0 --cpp -n0 -q -t1400ns

with traffic.cfg

    #define ETH_P_IP        0x0800

    {
      /* Ethernet Header */
      0x30, 0x1f, 0x9a, 0xd0, 0xf0, 0x0e,  # MAC Dest - adapt as needed
      0x24, 0x5e, 0xbe, 0x57, 0x2e, 0x36,  # MAC Src  - adapt as needed
      const16(ETH_P_IP),

      /* IPv4 Header */
      0b01000101, 0,   # IPv4 version, IHL, TOS
      const16(1028),   # IPv4 total length (UDP length + 20 bytes (IP header))
      const16(2),      # IPv4 ident
      0b01000000, 0,   # IPv4 flags, fragmentation off
      64,              # IPv4 TTL
      17,              # Protocol UDP
      csumip(14, 33),  # IPv4 checksum

      /* UDP Header */
      10,  0, 48, 1,   # IP Src - adapt as needed
      10,  0, 48, 10,  # IP Dest - adapt as needed
      const16(5555),   # UDP Src Port
      const16(6666),   # UDP Dest Port
      const16(1008),   # UDP length (UDP header 8 bytes + payload length)
      csumudp(14, 34), # UDP checksum

      /* Payload */
      fill('W', 1000),
    }

and the observed message with that is for example

 igc 0000:01:00.0 enp1s0: Detected Tx Unit Hang
   Tx Queue             <0>
   TDH                  <32>
   TDT                  <3c>
   next_to_use          <3c>
   next_to_clean        <32>
 buffer_info[next_to_clean]
   time_stamp           <ffff26a8>
   next_to_watch        <00000000632a1828>
   jiffies              <ffff27f8>
   desc.status          <1048000>

Fixes: db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ec8649751d19..1556beaefbc3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1023,7 +1023,7 @@ static __le32 igc_tx_launchtime(struct igc_ring *ring, ktime_t txtime,
 			*first_flag = true;
 			ring->last_ff_cycle = baset_est;
 
-			if (ktime_compare(txtime, ring->last_tx_cycle) > 0)
+			if (ktime_compare(end_of_cycle, ring->last_tx_cycle) > 0)
 				*insert_empty = true;
 		}
 	}
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
