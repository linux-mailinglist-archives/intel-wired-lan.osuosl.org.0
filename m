Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3473BB56329
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Sep 2025 23:22:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9D4160ABF;
	Sat, 13 Sep 2025 21:22:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l7UW3tr0TBcd; Sat, 13 Sep 2025 21:22:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B9E860AC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757798540;
	bh=D5C7fkGF35hiR7LwAwgyg4oFIfaQBXBh0CwYsral4wc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3m1gVRA3ysiVi8q45zYbVF6ZI/u4GUJnqbDe3wTSyff8m5u0y4fG6DP3agcl8pLTa
	 Bp3md1Ps25BdftFK1lfKpyEhy1I27PLHqisrKK1Vl1uxpbuWtAG1/nBbC8EzIxam+6
	 I+dS4CxV5Uz5S3ZegDd09Qv4VOvtGvyHKeEGrP/EJGwPk5HHpIger3cPDhPZgbfXOL
	 NzsBRLZlO2QqkP70Nb4K5WB+trnILoeGsqyUXaGpDUu0krdKTN5Mj1PvAGXHkEZ1bV
	 o6JNEQbv2vz2iNVFpRowenroGI+QG2lNUudjZpZeKPIy7ctZCJ7P9c9uS/5FCCNEyo
	 H6/YNCOpY9OrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B9E860AC3;
	Sat, 13 Sep 2025 21:22:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B6BC25B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 21:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31D1C60ABE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 21:22:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qc6Y4WdvkvMU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Sep 2025 21:22:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 305D560ABA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 305D560ABA
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 305D560ABA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 21:22:17 +0000 (UTC)
Date: Sat, 13 Sep 2025 23:22:12 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20250913212212.3nwetWbI@linutronix.de>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost> <87ikhodotj.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87ikhodotj.fsf@jax.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1757798533;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D5C7fkGF35hiR7LwAwgyg4oFIfaQBXBh0CwYsral4wc=;
 b=WbjCJORVN0ATu4p4hmUogZc/L9UBJ89/tRVIqAzIJJjlA6TfROh6zz2X6/h3+Rfg1daidZ
 qJuqWdfnVaxrsERYmCVg30T1aGbinrqUbwSnoUQ820vuIMAdq1qFC61qD6ZVw01SOykHWs
 lx7ER1dv55Pm94Zjtw92ZMBCcvH4W7EUTSnk67hlsoT7km984upOsH/BSNyeq3xyDNspLp
 pOkLDqTM4CIpFtev/MRZXsr6XpWU/S4Ir6mCSGvGeLTUW17cNgIoScdqzNq85+quOTO6Q8
 3cVtpm2HbZdTR56JrSq8DJOn+Hx9wQMMSuYcPAVvMQqo3Vb0dRhsJQtZSFKYiw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1757798533;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D5C7fkGF35hiR7LwAwgyg4oFIfaQBXBh0CwYsral4wc=;
 b=zAsyiRek2uOkhkCW78BDEONvnrWYao3wF4Qn3FR6rk/pyn+8x23FC6gp3aUYuxJ6rJ3yoG
 pU4ScYThXEt00QBg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=WbjCJORV; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=zAsyiRek
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2025-09-12 11:04:24 [+0200], Kurt Kanzenbach wrote:
=E2=80=A6
> I did run the same test as you mentioned here. But, my numbers are
> completely different. Especially the number of hardware TX timestamps
> are significantly lower overall.
=E2=80=A6

Using the command line, I see hardly any difference over 5 runs. One
thing that made me curious:

| NTP packets received       : 1061901
| NTP daemon TX timestamps   : 565892
| NTP kernel TX timestamps   : 327905
| NTP hardware TX timestamps : 168104
| tx_hwstamp:395778

tx_hwstamp is a counter in igb_ptp_tx_tstamp_event() keeping track how
many packets it processed. So it processed ~395k packets but "NTP
hardware TX" says 168k. Reading the timestamp directly or via the
worker, it looks mostly like noise. I see on ntpperf side ~ 45% - 55%
loss.

If I do
| ntpperf -i X =E2=80=A6 -I -r 1000 -t 2

then there is no loss and on other side I see

| NTP packets received       : 2201
| NTP timestamps held        : 2101
| NTP daemon TX timestamps   : 200
| NTP kernel TX timestamps   : 901
| NTP hardware TX timestamps : 1100
| tx_hwstamp:2101

Here the tx_hwstamp counter colorates with "NTP timestamps held". Does
it this make any sense? I don't see this matching with the "larger" runs
where ntpperf reports loss.

> Thanks,
> Kurt

Sebastian
