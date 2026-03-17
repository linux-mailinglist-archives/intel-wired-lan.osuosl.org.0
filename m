Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PL9NIRnuWmZDwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 15:39:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 545F62AC20E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 15:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF871415FE;
	Tue, 17 Mar 2026 14:38:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1QayhiLw4pH5; Tue, 17 Mar 2026 14:38:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32819415FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773758338;
	bh=4dwiQtjV0URScOIyDH89kknET1vSDADAowJTLNm5SWs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H4jNPZtbWdwUGtZSbScEL7aJ3qi2/42dpLaIqP1qL10G/ScXnQVq+4ZM1bcheYZx3
	 de9WL44YzGc0fzG3Th3JlFSY9toM7LRyb/NRufehaOuOSKzamXj/eD2E2x1TDAZQ4y
	 wIDmnwI+TDZOSp5DRryt538QvYPVSIk8j6YsIrKMYQsijtQxr1UJ2F/snDrtwrQ6Vu
	 36QFofADvyvo12aiEkIklSU9BH16aCwdQGCNO/QywJgLjVrprQGwAqxZBx1VdZKt2K
	 SI/ZnGBtEtPKotZASpkKyLovUOiPgbxogutPn8ibu7q98EOEn8H1oO/Wu2vUKxHjnd
	 fBXp78GGZb5Gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32819415FD;
	Tue, 17 Mar 2026 14:38:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CF253BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 14:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EAB040C1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 14:38:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tdDM1Zy95OQJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2026 14:38:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5E9814004D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E9814004D
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E9814004D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 14:38:55 +0000 (UTC)
Date: Tue, 17 Mar 2026 15:38:50 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, clrkwllms@kernel.org, rostedt@goodmis.org,
 linux-rt-devel@lists.linux.dev, sgzhang@google.com, boolli@google.com
Message-ID: <20260317143850.BLrnAox8@linutronix.de>
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
 <20260317090054.DuPZ6O0O@linutronix.de>
 <7247024b-fc8d-4a75-ba15-a10399db03bc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7247024b-fc8d-4a75-ba15-a10399db03bc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1773758332;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4dwiQtjV0URScOIyDH89kknET1vSDADAowJTLNm5SWs=;
 b=CAqrgaus2MC0i0ZA73W1BgaQkEPeGXkI36AQ10M7pSsfgysl9ZTEuCxyefNd2bwX+cTtgH
 reyD8HZoqjeRHtw2HeEZtk+C1T222jYnG1iwH+1olsve8OJUn4wuvgNhGL6G5v5YqCZbtZ
 f4j4w4+gKi3I9mps/rnIEBk2XJbNRLQQ8ZGRq4uxY6z7yF6Kpeo9jYkYo7G8poM71IPhPM
 fVhA0+hc9TUxZaIR64ZodGqKF7xWI6MTvwUvhfZgk/QBEAocv1SkZPYi5Fp+IVnCqizB+h
 oH2IgzEfULR3Pu05W8kBCo6NP+fS/LVwuS32HHSJI5/+I4SslxYugAvcfEciuQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1773758332;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4dwiQtjV0URScOIyDH89kknET1vSDADAowJTLNm5SWs=;
 b=84bu404IaCUK9e3YVljsj9RC5Ra9wg3tAMbQJPB3/MA7gyjRQM14VVZtJQH6QS/AJSLPzV
 WddHZhtlwmYG9SBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=CAqrgaus; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=84bu404I
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] idpf: virtchnl locking
 and async fixes
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,linutronix.de:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_SENDER(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 545F62AC20E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-17 07:20:18 [-0700], Tantilov, Emil S wrote:
> > Why is there a raw_spinlock_t? From a quick look a spinlock_t would do
> > just fine with not runtime change for !PREEMPT_RT.
> 
> The handling of the virtchannel messages is done via the completion API
> and the transactions are using the raw spinlock from struct
> swait_queue_head:
> 
> https://elixir.bootlin.com/linux/v6.19.8/source/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c#L298
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/tree/include/linux/swait.h?h=dev-queue#n44

I am aware that completions use a raw_spinlock_t. I don't see the link.
What would break if you make that lock a spinlock_t?

> Thanks,
> Emil

Sebastian
