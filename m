Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LyGZIzT0KmrrzwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 19:45:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C855C6741F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 19:45:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=ZpUYmjqI;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=none
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6874560AAE;
	Thu, 11 Jun 2026 17:45:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JiKypm6jDVqm; Thu, 11 Jun 2026 17:45:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D973160AA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781199920;
	bh=ZjFeNtnHaZ1EEJyx6GG9YvQEOfxIdYOtqwBD1/DD1wc=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZpUYmjqIJwABeF5fohUcrBbZp/1zq2XZHHaNW0xMd5zUnHwLB7ouBneMelEsYIxB4
	 kWmrkFK6mtuqqfJ7rjJ21BSfKRjPEfRAq/rekYKiVfPVkdkwot+qlxrCLjuf3SnDSg
	 SVeuvgoOACzARkK2D7Boyv4IHMJ/DJ1Ki5kMNM3hm7LNQU5X5FxTBLBmBg1he3Ul71
	 gbKuWHZaQk0XN17Wj9QZ7fL/Cnx9ShOJoV0WUxpIu4b1k0LUTSw4cTtMcWah2gRL08
	 pgqh0sRQzzTKIq/ipPayZa/LjArFpDTdLxOdFc2u5e25iUmcJJH+CsEj+Y9tSWPqyq
	 FIun1OCXyeHYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D973160AA6;
	Thu, 11 Jun 2026 17:45:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 42C8712F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 17:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2440A810CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 17:40:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lABbELyy66H2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 17:40:05 +0000 (UTC)
X-Greylist: delayed 325 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 11 Jun 2026 17:40:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E1911810CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1911810CA
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.146;
 helo=fout-b3-smtp.messagingengine.com; envelope-from=lillian@star-ark.net;
 receiver=<UNKNOWN> 
Received: from fout-b3-smtp.messagingengine.com
 (fout-b3-smtp.messagingengine.com [202.12.124.146])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E1911810CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 17:40:04 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id 18B2B1D000B8;
 Thu, 11 Jun 2026 13:34:38 -0400 (EDT)
Received: from phl-imap-16 ([10.202.2.88])
 by phl-compute-05.internal (MEProxy); Thu, 11 Jun 2026 13:34:38 -0400
X-ME-Sender: <xms:rfEqalwF-uwLDkqzcYrW6WqNiuBcuzFp-5rOGo1AJ2o_rIZ4BA9fzw>
 <xme:rfEqagHEoxt_VvycL_2H3tP_hb3qbsQRHhiWB7gf-f0HXei7y0vDxb3tUbAZpaiub
 dIs0OU_yvatSH4lIwvd_pHMRea-G17NkQOTHPpmGBRmLKKT8Vq59so>
X-ME-Proxy-Cause: dmFkZTGfN/3VR5h9JTIc50/7mMQex2RP91hTyNOm2mlJo9NjXExXiZOXNR0Nt+/1wjPiFC
 vgBnBwDckl2PHcpAJl8rX5JBvkdJ9DnKN+vu0457aqXbBfjZiOdBMtdB0vJ8bwlXUSOZJ4
 Vj5/IQvxhvW4F59L+EEWXx2Iwhz9ZW5xiFcODBOvq6LZVP9cypS5SpIcp5qc3PJKHYAhoj
 mqf8O+rXR2IaWhTxuzhRj6obHuLH8y6P/EEG78l6inOIzfghXWCYC47yYSpgZXRW3t/4rL
 AsBuFXtOHirmI9gPgK4OzQj7Flnl0n8Gz/Gi0NWrAzfB9/UO2ujdhot3q17kK67twGdFqU
 pyoAAxRiVbUcC+prMxvK1H+xzYX+VmA5YfrCCGYtAtlMKru47lryKi54kPD5pNGTuLSEGU
 7r+SPBldbWT6evx9OGYccqX8Nho4kdZ4+6O+VVu80rkOtd7xWqsHjqRV+kh9qUzWbtw7os
 rSWXr80VnqntMGe9/krtAdCvTkXoAKw2OOssy+m1MfSS7PcoR10+xrgUSoK2UIDoUPSLP6
 GxksmGB5ywP6nyUI2zzM7SLogGZld90W+0WW+VH7G4a5gFAHxqpGVSKnLfhY0apfantzvL
 8GnhQq3lx64cTRIpCrRAKCfx6WR7v6s/zbstFscasn7d6L+n/eGTzcjE8KeQ
X-ME-Proxy: <xmx:rfEqapvBzwng2wA2ZMxBuaB9WFS6gTLhi8KxzHIsh1iocxpEZ2wDQQ>
 <xmx:rfEqao0vtQyg-24COH9SIzolGBZFlFzyc05A9jbiWNTpYFOZsrgw_Q>
 <xmx:rfEqapAOysrtv94B5YeRCGOylXrlCPJ7DBWwOHNOfTOp5SEWuz9RgA>
 <xmx:rfEqauAyS5N0qG8qVxQ-v5fPtZu7B-JK9bdjY-a2xiOHh3QtBs1IeA>
 <xmx:rfEqakBzxnKp3HpmKrEc2NDznGsqkBIf_rVhODWBFqCQYsCUf5MbcCN9>
Feedback-ID: i8db94900:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 384B22CC0083; Thu, 11 Jun 2026 13:34:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Thu, 11 Jun 2026 13:34:36 -0400
From: "Lillian Berry" <lillian@star-ark.net>
To: intel-wired-lan@lists.osuosl.org
Cc: lillian@fly.io, ops@fly.io, "Tony Nguyen" <anthony.l.nguyen@intel.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-Id: <276d5659-cd79-474b-85d4-ab9ba522fead@app.fastmail.com>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 11 Jun 2026 17:45:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=star-ark.net; h=
 cc:cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:message-id:mime-version:reply-to
 :subject:subject:to:to; s=fm1; t=1781199277; x=1781285677; bh=Zj
 FeNtnHaZ1EEJyx6GG9YvQEOfxIdYOtqwBD1/DD1wc=; b=bLxB+ckL24vIQMZSdZ
 ReHOm9bfLfeWdzWYlDunMFx5bvHEOuN+E/btsgH4GxvFea/tRV/YXtDhIsgleHi6
 0HuRN9y7c0SyVkjtHZSpZZ6pLyxVenSZZg356dUKHzzBqqK9rTet7gaiPlORlppH
 rzbzEQHDX0o0mSTCWBm5WZQvFIUZ4jsKZvLWlZ5gMPwBlnhC2eEXcCMAev3x75kY
 9UOx5422bdLjMDE/Ffdaf/+QldYnogy4+3YjxPVNmQl9mtEik9JFI/yMaxEmul0C
 pSdyYM8snIdEIqiqRrSmKe0IDYVTX3AJZyW17ywWEjdfcrG4F155XWbB2I0BTLQg
 6cPA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1781199277; x=1781285677; bh=ZjFeNtnHaZ1EEJyx6GG9YvQEOfxI
 dYOtqwBD1/DD1wc=; b=hCTehMRUVwUsZAv6IKl6m8rPOSVIH1ICK3I9pqN3pu7V
 lm2Vjqh6AQ1n8OasdzgX4yTvtXOon2VvCfDY2coSse2aQCAd++1o+PuMbCKzTJcg
 bPMESFrKJrFVhJW9GTtjKIrcgcrV9ZSKhHaD7NgvaWE4TvGVAlPNCwSG4PHDwEVW
 FeySwAG4CdEWezQkpJmfAoPAmGoISXumiSh9D2SCJGpg/lh/NxCWcp879hIegWdL
 CEgvY/vkYuDaUB8CVTzVv+ZZ/hrddW2rlvKkqYOnsbOc3WJvPi6iUGVE1MmOG9c0
 6lfqHLMLgfR87ITNKh2z8MTGSEXx8T7RR4gYwMIsUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=star-ark.net
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=star-ark.net
 header.i=@star-ark.net header.a=rsa-sha256 header.s=fm1 header.b=bLxB+ckL; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=hCTehMRU
Subject: [Intel-wired-lan] i40e: panic when ethtool -G command is interrupted
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.70 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[star-ark.net];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[star-ark.net:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,app.fastmail.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lillian@star-ark.net,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C855C6741F6

Hi,

We are seeing reproducible kernel panics on the i40e driver when an
ethtool command is interrupted, for instance with OOM.

The issue reproduces on 7.0.0 as well as 7.1-rc7 (built with Clang
22.1.7), on Ubuntu 22.04 LTS
on a system with the following hardware: Gigabyte MZ92-FS1-00 - Dual
EPYC 7763 - Intel XL710 NIC (both ports connected)
with the following kernel parameters: mem=8G nr_cpus=128
then running this command while the system is under memory pressure:
ethtool -G $nic rx 4096 tx 4096

The ethtool command is killed by OOM and leaves the driver in an invalid
state; it then panics during packet processing.

Below is the full oops, including information from
./scripts/decode_stacktrace.sh:

[   33.028260] BUG: unable to handle page fault for address: 0000000000002000
[   33.035732] #PF: supervisor read access in kernel mode
[   33.035735] #PF: error_code(0x0000) - not-present page
[   33.035737] PGD 0 P4D 0
[   33.049543] Oops: Oops: 0000 [#1] SMP NOPTI
[   33.049548] CPU: 29 UID: 0 PID: 0 Comm: swapper/29 Not tainted 7.1.0-rc7-fly #glocaltest PREEMPT(full)
[   33.049553] Hardware name: GIGABYTE R182-Z93-00/MZ92-FS1-00, BIOS M10 11/23/2021
[   33.049555] RIP: 0010:i40e_napi_poll (??:0 drivers/net/ethernet/intel/i40e/i40e_txrx.c:942 drivers/net/ethernet/intel/i40e/i40e_txrx.c:2769) i40e
[   33.076892] Code: 00 00 00 00 4d 01 ef 41 c1 e7 03 4c 03 7b 28 48 8b 43 08 45 89 ec 41 c1 e4 04 49 01 c4 0f b7 8b 84 00 00 00 41 29 cd c1 e1 04 <8b> 0c 08 48 c1 e1 04 48 01 c1 48 89 8d 30 ff ff ff c7 45 cc 00 00
All code
========
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	4d 01 ef             	add    %r13,%r15
   7:	41 c1 e7 03          	shl    $0x3,%r15d
   b:	4c 03 7b 28          	add    0x28(%rbx),%r15
   f:	48 8b 43 08          	mov    0x8(%rbx),%rax
  13:	45 89 ec             	mov    %r13d,%r12d
  16:	41 c1 e4 04          	shl    $0x4,%r12d
  1a:	49 01 c4             	add    %rax,%r12
  1d:	0f b7 8b 84 00 00 00 	movzwl 0x84(%rbx),%ecx
  24:	41 29 cd             	sub    %ecx,%r13d
  27:	c1 e1 04             	shl    $0x4,%ecx
  2a:*	8b 0c 08             	mov    (%rax,%rcx,1),%ecx		<-- trapping instruction
  2d:	48 c1 e1 04          	shl    $0x4,%rcx
  31:	48 01 c1             	add    %rax,%rcx
  34:	48 89 8d 30 ff ff ff 	mov    %rcx,-0xd0(%rbp)
  3b:	c7                   	.byte 0xc7
  3c:	45 cc                	rex.RB int3
	...

Code starting with the faulting instruction
===========================================
   0:	8b 0c 08             	mov    (%rax,%rcx,1),%ecx
   3:	48 c1 e1 04          	shl    $0x4,%rcx
   7:	48 01 c1             	add    %rax,%rcx
   a:	48 89 8d 30 ff ff ff 	mov    %rcx,-0xd0(%rbp)
  11:	c7                   	.byte 0xc7
  12:	45 cc                	rex.RB int3
	...
[   33.076895] RSP: 0018:ffffd4a0c1034d30 EFLAGS: 00010216
[   33.096198] RAX: 0000000000000000 RBX: ffff8d0a53ea9800 RCX: 0000000000002000
[   33.096200] RDX: 0000000000000000 RSI: 0000000000000040 RDI: ffff8d0a53e99810
[   33.096202] RBP: ffffd4a0c1034e20 R08: ffffd4a0c1034ea0 R09: 0000000000000000
[   33.123880] R10: 0000000000000000 R11: ffffffffc0953970 R12: 0000000000000000
[   33.123881] R13: 00000000fffffe00 R14: ffffd4a0c1034eb7 R15: 0000000000000000
[   33.123884] FS:  0000000000000000(0000) GS:ffff8d0b871a0000(0000) knlGS:0000000000000000
[   33.147004] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   33.147006] CR2: 0000000000002000 CR3: 000000000383a005 CR4: 0000000000f70ef0
[   33.147008] PKRU: 55555554
[   33.147009] Call Trace:
[   33.147011]  <IRQ>
[   33.147023]  __napi_poll (net/core/dev.c:7733)
[   33.147029]  net_rx_action (net/core/dev.c:7796 net/core/dev.c:7953)
[   33.147037]  handle_softirqs (kernel/softirq.c:622)
[   33.147042]  __irq_exit_rcu (kernel/softirq.c:656 kernel/softirq.c:496 kernel/softirq.c:735)
[   33.147045]  irq_exit_rcu (kernel/softirq.c:752)
[   33.147047]  common_interrupt (arch/x86/kernel/irq.c:326)
[   33.147053]  </IRQ>
[   33.147054]  <TASK>
[   33.147056]  asm_common_interrupt (./arch/x86/include/asm/idtentry.h:688)
[   33.147059] RIP: 0010:cpuidle_enter_state (drivers/cpuidle/cpuidle.c:289 drivers/cpuidle/cpuidle.c:292)
[   33.147062] Code: ef ff ff 49 89 c5 8b 73 04 bf ff ff ff ff e8 75 bf c6 ff 31 ff e8 9e 31 dd fe 45 84 f6 74 05 e8 d4 bf c6 ff fb 0f 1f 44 00 00 <4c> 8b 45 d0 45 85 c0 0f 88 9b 00 00 00 45 89 c1 41 83 f8 0a 0f 83
All code
========
   0:	ef                   	out    %eax,(%dx)
   1:	ff                   	(bad)
   2:	ff 49 89             	decl   -0x77(%rcx)
   5:	c5 8b 73             	(bad)
   8:	04 bf                	add    $0xbf,%al
   a:	ff                   	(bad)
   b:	ff                   	(bad)
   c:	ff                   	(bad)
   d:	ff                   	(bad)
   e:	e8 75 bf c6 ff       	call   0xffffffffffc6bf88
  13:	31 ff                	xor    %edi,%edi
  15:	e8 9e 31 dd fe       	call   0xfffffffffedd31b8
  1a:	45 84 f6             	test   %r14b,%r14b
  1d:	74 05                	je     0x24
  1f:	e8 d4 bf c6 ff       	call   0xffffffffffc6bff8
  24:	fb                   	sti
  25:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  2a:*	4c 8b 45 d0          	mov    -0x30(%rbp),%r8		<-- trapping instruction
  2e:	45 85 c0             	test   %r8d,%r8d
  31:	0f 88 9b 00 00 00    	js     0xd2
  37:	45 89 c1             	mov    %r8d,%r9d
  3a:	41 83 f8 0a          	cmp    $0xa,%r8d
  3e:	0f                   	.byte 0xf
  3f:	83                   	.byte 0x83

Code starting with the faulting instruction
===========================================
   0:	4c 8b 45 d0          	mov    -0x30(%rbp),%r8
   4:	45 85 c0             	test   %r8d,%r8d
   7:	0f 88 9b 00 00 00    	js     0xa8
   d:	45 89 c1             	mov    %r8d,%r9d
  10:	41 83 f8 0a          	cmp    $0xa,%r8d
  14:	0f                   	.byte 0xf
  15:	83                   	.byte 0x83
[   33.147063] RSP: 0018:ffffd4a0c04a7e48 EFLAGS: 00000246
[   33.147065] RAX: 0000000000000000 RBX: ffff8d0a44fe7c00 RCX: 0000000000000000
[   33.147067] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
[   33.147068] RBP: ffffd4a0c04a7e90 R08: 0000000000000000 R09: 0000000000000000
[   33.147069] R10: 0000000000000000 R11: ffffffffaa9bfd20 R12: 0000000000000002
[   33.147070] R13: 00000007b0a32cf7 R14: 0000000000000000 R15: ffffffffabce2c70
[   33.147072]  ? __pfx_acpi_idle_enter+0x10/0x10
[   33.147078]  ? cpuidle_enter_state (drivers/cpuidle/cpuidle.c:286)
[   33.147081]  cpuidle_enter (drivers/cpuidle/cpuidle.c:391)
[   33.147084]  do_idle (kernel/sched/idle.c:161 kernel/sched/idle.c:247 kernel/sched/idle.c:352)
[   33.147089]  cpu_startup_entry (kernel/sched/idle.c:451)
[   33.147091]  start_secondary (arch/x86/kernel/smpboot.c:312)
[   33.147095]  common_startup_64 (arch/x86/kernel/head_64.S:418)
[   33.147101]  </TASK>
[   33.147102] Modules linked in: ip_set nvme_fabrics wireguard libcurve25519 ip6_udp_tunnel udp_tunnel nft_ct nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nfnetlink_log dm_thin_pool dm_persistent_data dm_bio_prison dm_bufio binfmt_misc ipmi_ssif nls_utf8 amd_atl intel_rapl_msr intel_rapl_common amd64_edac edac_mce_amd kvm_amd kvm irqbypass rapl bonding wmi_bmof tls igb joydev input_leds ast cdc_ether dca mac_hid i2c_algo_bit usbnet mii i40e libie_adminq libie i2c_piix4 ptdma k10temp i2c_smbus acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler sch_fq dm_multipath nf_tables scsi_dh_rdac scsi_dh_emc nfnetlink scsi_dh_alua efi_pstore ip_tables x_tables raid1 nvme nvme_core nvme_keyring ahci uas nvme_auth libahci ccp usb_storage wmi hid_generic usbhid hid tcp_bbr autofs4 aesni_intel gf128mul
[   33.147185] CR2: 0000000000002000
[   33.147187] ---[ end trace 0000000000000000 ]---

I will post the full dmesg and .config in a followup mail.

I'm not familiar with this driver, but from a quick look this appears to
be related to, but not the exact same issue as, this previous report
from Jakub Kicinski:
https://lore.kernel.org/intel-wired-lan/20260315125451.3741843c@kernel.org/

Kindly,
Lillian
