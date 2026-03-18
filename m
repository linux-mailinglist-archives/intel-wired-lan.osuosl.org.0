Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEjTBkJTumm8UQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 08:24:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D419C2B6E25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 08:24:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 182D241673;
	Wed, 18 Mar 2026 07:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eOQ7RlIEeZgS; Wed, 18 Mar 2026 07:24:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60C37415ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773818685;
	bh=GMXojMRx2DusSv/c5foBS++mXTfilxtffy+hvVganPA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TmB8OvKIof3svtcqIUH5iV95EbHKLxtAPhWNuekFKlIe25f0/t8OLCZOQ6r9EvVbR
	 O4TYpbWnSrIgpBiaRdD51Vl4JjQmyLFM/Ld9rBXOtUpELhHSUrr/C+rRalQzjp1Nox
	 OalGTrePRIQAN0iUUJWDVBiY7KJkkKU4YPtBQivgRqStOF9a4JMEV3NCiPKcYPl8R1
	 0ZNxTMHCYuXaHRerXkX/9LMcgTf7A6bnppw17zJXa/yEbkH+ZXBM6RzSvY+rJUL0/0
	 5NjuQw/11mhp8nPwgLhz4ukul2g+XTRlevu5qRisu86T7lZQFufb1EaTe9o0wnzIXK
	 eefu6+n806h/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60C37415ED;
	Wed, 18 Mar 2026 07:24:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E5FE7D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 07:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C73CD608F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 07:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GrHUB3gx4BoN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 07:24:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B6BE4608DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6BE4608DF
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6BE4608DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 07:24:42 +0000 (UTC)
Date: Wed, 18 Mar 2026 08:24:36 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, clrkwllms@kernel.org, rostedt@goodmis.org,
 linux-rt-devel@lists.linux.dev, sgzhang@google.com, boolli@google.com
Message-ID: <20260318072436.4JmVdDfK@linutronix.de>
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
 <20260317090054.DuPZ6O0O@linutronix.de>
 <7247024b-fc8d-4a75-ba15-a10399db03bc@intel.com>
 <20260317143850.BLrnAox8@linutronix.de>
 <f77ad6b1-1fff-4f3c-a411-5115bb66e31d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f77ad6b1-1fff-4f3c-a411-5115bb66e31d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1773818678;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GMXojMRx2DusSv/c5foBS++mXTfilxtffy+hvVganPA=;
 b=S7lNnBevReHY99KsphuvNO/RK9P26Ns+4nArqabBAs1aBiuHflX+bv+F5qvBlR4+2ljCsv
 4ghLWAw7eXvoyKM4agFSwLDTsQirl6Cb3lYs15mATHR4H9Suz0KRc7xYxnPuwdz/K6v7xt
 OjyBiWzESZ7awsJbWfKleMx6+RkAYeR3iQK0sATcjWYzoLKnpgtiOdn/MSeJcdEuQmv2j2
 rzQAbKFWbZDajTEQZPXi3OVDJ7cuhgvblcvgWupHh+1hf99uXLAhv3JkQP+m3pZMcabAdC
 j3BjhQUMOeqD5xSj5xJt8twr4bWoUUnSx15waNrj2TS6URBSezG/HxHhTSvkPw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1773818678;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GMXojMRx2DusSv/c5foBS++mXTfilxtffy+hvVganPA=;
 b=sYJiqZbWtA9QAURWngFUcR85rU8xJ40MigLKGcHADExuVS2kSkbUQ+itgzSefupLqBrc/8
 N4d7P2Q42WVCnhDw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=S7lNnBev; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=sYJiqZbW
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,osuosl.org:dkim];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D419C2B6E25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-17 12:30:39 [-0700], Tantilov, Emil S wrote:
> > What would break if you make that lock a spinlock_t?
> 
> Right. Scope and risk - these fixes are specifically for the async
> handler and I did not want to touch the global locking that will
> impact the entire VC handling. We do have series in flight for -next
> that refactor that code, while moving it to libie:
> https://lore.kernel.org/netdev/20251117134912.18566-10-larysa.zaremba@intel.com/

Now I understood. You fiddle with the completion's lock. That is
something that should not have been done.

> ... that also remove the raw spinlock. With that being said, I can look
> into converting the lock to spinlock_t if that is the preferred approach.

The preferred approach is that, if you pick raw_spinlock_t for locking,
you are aware of all the consequences and you have a solid reason for
it. The comment in the file says
| For now, this API is only used from within a workqueue context;
| - * raw_spin_lock() is enough.

that is not it.

> Thanks,
> Emil

Sebastian
