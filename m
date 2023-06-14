Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFAE73013F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:07:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB34B817E4;
	Wed, 14 Jun 2023 14:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB34B817E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686751674;
	bh=4ZwVFuDohEvSsRJb3EMW8Ey9Ac/HSm8N71YtO9Kn1Ck=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AZG3rr0jBSYyeLEZFH3qSCtpD0YWfSqfnbrqRTC8X5HdW9RPXhzqygW4KD1ReGTa9
	 +hj71vNjsslbkkgmFl2AIw5XTfqTjQO6gCV2kxp955ncgVKl6saAqoiL3qzmcXvmhF
	 R8nc8VdeOKjKgl2HUBrCFdPLO4fvev+j3qTNtQpnjYyFT1iCqh1leT6yRLxUytqoj5
	 JRyCvF7EV5CPw9H7+5R/t/E8DL2oI+Xj0pNWVq9wiN9s6pDNOvrCA5XFgvqWwMTmsV
	 HfqMPhRIzPmSxb6Wqc+ZZm+3o+qXneDSK43vFucioBNHUlZRBnQ/FopE0lU4kUBbGE
	 /5XB+XDsedMdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YuVtFFIZQTxK; Wed, 14 Jun 2023 14:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4F6283947;
	Wed, 14 Jun 2023 14:07:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4F6283947
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD5461BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85B0040C0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85B0040C0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nAgEU8-4Wf0j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:07:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0569E40146
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0569E40146
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:34 +0000 (UTC)
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
Date: Wed, 14 Jun 2023 16:07:12 +0200
Message-Id: <20230614140714.14443-5-florian.kauer@linutronix.de>
In-Reply-To: <20230614140714.14443-1-florian.kauer@linutronix.de>
References: <20230614140714.14443-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1686751653;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TCMbNNv1wUCpp0eUsLbLvQKi9uBHfNttKgJxjYAeb0M=;
 b=y3apSj/1vJ6DYmeRmtuz58yggKV/HUKT/ugbiKU51svYY4S7rF0nFts3eNFdT4vrYcwIb4
 0gFFhhcWdvwGUTGZYVdzMMrHQhbN4ffJSx2y+GYO9Ql1OVwUYF2H4PvV4z3mX2DEbhdlWX
 BExwMnc4Me9dpiUusAf863WxGpSNMRsl88WWAjDLoRKfh5gOG9df7dOrl8d5Et8zTZgB3l
 vHlj8eDL3UtLgppTuUt5rYQL/bW8lr8J9zeroaaNIUs4ZP37MPZBIx34CM6CUv7grPSlx1
 eTj52atV/m9E4QcSQDjgK0q4SGarto1XZ5eKL2955mvoCwCkX6fCr9XdWkoaAQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1686751653;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TCMbNNv1wUCpp0eUsLbLvQKi9uBHfNttKgJxjYAeb0M=;
 b=4wvkId7pYYzXqtq36DOtC/f7wZFtHHd/o9YUg5/t8OkzDtR3DsoCiV85Z5FybSDkQi0lzl
 5V2zDazABw5qxdCQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=y3apSj/1; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=4wvkId7p
Subject: [Intel-wired-lan] [PATCH net-next 4/6] igc: No strict mode in pure
 launchtime/CBS offload
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

The flags IGC_TXQCTL_STRICT_CYCLE and IGC_TXQCTL_STRICT_END
prevent the packet transmission over slot and cycle boundaries.
This is important for taprio offload where the slots and
cycles correspond to the slots and cycles configured for the
network.

However, the Qbv offload feature of the i225 is also used for
enabling TX launchtime / ETF offload. In that case, however,
the cycle has no meaning for the network and is only used
internally to adapt the base time register after a second has
passed.

Enabling strict mode in this case would unneccesarily prevent
the transmission of certain packets (i.e. at the boundary of a
second) and thus interfers with the ETF qdisc that promises
transmission at a certain point in time.

Similar to ETF, this also applies to CBS offload that also should
not be influenced by strict mode unless taprio offload would be
enabled at the same time.

This fully reverts
commit d8f45be01dd9 ("igc: Use strict cycles for Qbv scheduling")
but its commit message only describes what was already implemented
before that commit. The difference to a plain revert of that commit
is that it now copes with the base_time = 0 case that was fixed with
commit e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")

In particular, enabling strict mode leads to TX hang situations
under high traffic if taprio is applied WITHOUT taprio offload
but WITH ETF offload, e.g. as in

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
   TDH                  <d0>
   TDT                  <f0>
   next_to_use          <f0>
   next_to_clean        <d0>
 buffer_info[next_to_clean]
   time_stamp           <ffff661f>
   next_to_watch        <00000000245a4efb>
   jiffies              <ffff6e48>
   desc.status          <1048000>

Fixes: d8f45be01dd9 ("igc: Use strict cycles for Qbv scheduling")
Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index c6636a7264d5..63d410e7b876 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -133,8 +133,28 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		wr32(IGC_STQT(i), ring->start_time);
 		wr32(IGC_ENDQT(i), ring->end_time);
 
-		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
-			IGC_TXQCTL_STRICT_END;
+		if (adapter->taprio_offload_enable) {
+			/* If taprio_offload_enable is set we are in "taprio"
+			 * mode and we need to be strict about the
+			 * cycles: only transmit a packet if it can be
+			 * completed during that cycle.
+			 *
+			 * If taprio_offload_enable is NOT true when
+			 * enabling TSN offload, the cycle should have
+			 * no external effects, but is only used internally
+			 * to adapt the base time register after a second
+			 * has passed.
+			 *
+			 * Enabling strict mode in this case would
+			 * unneccesarily prevent the transmission of
+			 * certain packets (i.e. at the boundary of a
+			 * second) and thus interfer with the launchtime
+			 * feature that promises transmission at a
+			 * certain point in time.
+			 */
+			txqctl |= IGC_TXQCTL_STRICT_CYCLE |
+				IGC_TXQCTL_STRICT_END;
+		}
 
 		if (ring->launchtime_enable)
 			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
