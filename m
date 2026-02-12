Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ/QNgcdjmmg/gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 19:33:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 681A41304A4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 19:33:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3C5783DCA;
	Thu, 12 Feb 2026 18:33:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qkriORgtOOLV; Thu, 12 Feb 2026 18:33:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DCD583D88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770921221;
	bh=kcQnh022aC2Z+7p6gcLCoz38vdpYDUmqlEBkvoc4gIk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IxrG5QZchedwEAUsAI3ml2VOnmdpPysU8CISEtsUkmCPiFtOYHGpr6exAg1ysRsYy
	 0btYXC1ATNE7MhgqL41dJxV2Bx1sKKyP30JOKJLN6tLY/hPG6ihrzAK3aqRwk2pT0F
	 RhIaN057F3Zn97YfuP1WTKIGQLh9gcnfD383LCqz54vEI6RDuwk8wbOg/hEwpxjfRJ
	 bphCDIJoJcLV+iG7lczr4qfoiva5n+nDW7iSZU9PvQOsQELc8TF5VGRUNLH3Qy2bFm
	 uJkm+YmC5xlw+pntSDQSWhslHsY5/3LuCud+Fb8wPWjDr6fE0V1YrMd4fHbGXYUQ8L
	 qa9M8VAggyz7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DCD583D88;
	Thu, 12 Feb 2026 18:33:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E95101CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CDE6E40064
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:33:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOYhz2SvbSS1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 18:33:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 12C7B40027
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12C7B40027
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12C7B40027
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:33:38 +0000 (UTC)
Date: Thu, 12 Feb 2026 19:33:33 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Willem de Bruijn <willemb@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20260212183333.7xQmtLRY@linutronix.de>
References: <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
 <20260209090621.GiZqTiMJ@linutronix.de>
 <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
 <20260209114836.GPU-vnnh@linutronix.de>
 <78e2af2c-40e6-43f1-9471-42f350e69389@linux.dev>
 <willemdebruijn.kernel.2e6213a98660b@gmail.com>
 <20260210121207.9kLHroS0@linutronix.de>
 <willemdebruijn.kernel.cceee43f5b9b@gmail.com>
 <87qzqr5vos.fsf@jax.kurt.home>
 <willemdebruijn.kernel.2759f838d176e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <willemdebruijn.kernel.2759f838d176e@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1770921215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kcQnh022aC2Z+7p6gcLCoz38vdpYDUmqlEBkvoc4gIk=;
 b=I5HH8WYWA4BkepNZSdnP4Dr+ER8kkScG6f40dlArA+Cj3Hpxntd+yuJXi1CH+12cV4Pxa3
 W5x7FvPv8xsQxCeUbECiwKp6BqHvSL6BvAncIt2oL2YxsdDc5gxZVhKJKfyfQ597Q7BfTR
 5wueV7IkDbaxZRQ89PHtT2G2j8iRI80WiVYEbF1acrPf/ZNnrisMlvwWy1ZNtXVpyZfwDT
 wjD2GKtYkTNvwD/Pkd0TV8A2fzOlsdZgpU/jPABGIAjFibl9azuS96P8PhEjt/CAPP7FcH
 Td0nesceEtJobaIcLnFdpXWko28mN2VDbFvJQyUVAu+C4KDLpdXjqiRfdaI3EQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1770921215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kcQnh022aC2Z+7p6gcLCoz38vdpYDUmqlEBkvoc4gIk=;
 b=pi/jkldNdevyqJBax/WTCm/DZPNoUUzRLh7IVtMb/LNANHFXl7e1d0BbDd0vw0v5FIscFW
 0jdd0+UsBX7AREAA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=I5HH8WYW; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=pi/jkldN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:willemdebruijn.kernel@gmail.com,m:kurt@linutronix.de,m:vadim.fedorenko@linux.dev,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[linutronix.de,linux.dev,google.com,kernel.org,redhat.com,davemloft.net,intel.com,molgen.mpg.de,vger.kernel.org,gmail.com,lunn.ch,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,linutronix.de:mid,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 681A41304A4
X-Rspamd-Action: no action

On 2026-02-11 11:29:43 [-0500], Willem de Bruijn wrote:
> I think we should look at the locking. It is not clear to me that
> sk_callback_lock needs to be held here at all.
> 
> From the lock documentation itself its use is more limited.
> 
> sk->sk_socket->file is indeed dereferenced elsewhere without holding
> such locks.
>
> sk_capable is another indication.

That skb has a socket reference so that skbs should have a reference on
'sk' so it can't go away while the skb is around.
sk_socket should be assigned once while sk is created and not change.
Also that ->file should be assigned on accept and remain stable.
That assignment happens in sock_graft() under the lock or in
sock_init_data_uid() without it (but it both cases it should be new).

If you close that socket then I think sock_close() will be invoked which
ends in __sock_release() and assigns NULL to ->file. The filep itself
is SLAB_TYPESAFE_BY_RCU (as it comes from alloc_file_pseudo()) so it
safe to access it while in IRQ/ softirq because it can not go away.
It should invoke sock_orphan() which sets ->sk_socket to NULL under the
lock. I don't think that orphan can be called from outside the close
path. And inode (socket) remains around as long as the filep is there.

So based on this, if sk->sk_socket->file is accessed from within a
syscall then the chain up to file should be valid because the fd can not
be closed and so anything in that chain up to file become NULL.
From within the IRQ/ softirq a close on the fd/ socket should not result
in an immediate release. I *think* the skb holds sock holds the socket.
If so that skb would hold the destruction of the socket back and this
would make it safe to access it without the lock.
This is the theory so far.

Sebastian
