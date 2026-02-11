Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WD19BnzQjGk1tgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 19:54:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89623126F73
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 19:54:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11E1C80EBB;
	Wed, 11 Feb 2026 18:54:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ilHEL9VcCj5r; Wed, 11 Feb 2026 18:54:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8675D80EEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770836089;
	bh=pRaFhJt63dV4qDJigIGmoVP/O1i7rIuTA9/Er5lJpZ0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QHBPwcpOx2vsRv4zQyw2LqsLeWduP2ipW7fV0AfyiF/hTh38xiIKvRXNCiHV/bIB7
	 a3baFS2hFehHaJXhbCzejX0OMDktnq2W6914GSiKdWlAy3J+16dDp0knZVwogJyv6y
	 rX0MVNLDbH/eRaSGaZJwzAI6sjTG80CGwKJC10xcG6+mC8AV7e4woeGPRmfvYfSICB
	 eUAS6JZcVaXGDuaOxUZOrKoo8Mec72QwQZ12ECw/yWMxNtwsfvIAh2cGQ8USkUB6K+
	 vmnTmBr0vJ3M8Jnq+W/pguZ20b3SOvGTafutJGtK+dWU2oVUF416eYgNgHfiiACJIv
	 suEAaGTDQl/Kw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8675D80EEE;
	Wed, 11 Feb 2026 18:54:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3657E1F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 18:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17E7A41B65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 18:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2s8y1OhV4ABB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 18:54:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4ECDC41B5F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4ECDC41B5F
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4ECDC41B5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 18:54:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3885660010;
 Wed, 11 Feb 2026 18:54:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29DC4C4CEF7;
 Wed, 11 Feb 2026 18:54:45 +0000 (UTC)
Date: Wed, 11 Feb 2026 10:54:44 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, Willem de Bruijn <willemb@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>, "David S.
 Miller" <davem@davemloft.net>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Message-ID: <20260211105444.1e370abd@kernel.org>
In-Reply-To: <87qzqr5vos.fsf@jax.kurt.home>
References: <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
 <willemdebruijn.kernel.459b2672b1e7@gmail.com>
 <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
 <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
 <20260209090621.GiZqTiMJ@linutronix.de>
 <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
 <20260209114836.GPU-vnnh@linutronix.de>
 <78e2af2c-40e6-43f1-9471-42f350e69389@linux.dev>
 <willemdebruijn.kernel.2e6213a98660b@gmail.com>
 <20260210121207.9kLHroS0@linutronix.de>
 <willemdebruijn.kernel.cceee43f5b9b@gmail.com>
 <87qzqr5vos.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770836085;
 bh=bwCaj3+4l+nv+6bgxf4XJU2CWB0++YRNTmcoh/FySrs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UIn44EGPl5OkdSl5yJAa36h95nEdNJ9pFUNFqV7XgaMk1bozEbHB0Vm45KmR9mDah
 mRFxB4QnhcHQNDhxGzDQkgkDSmzSeWAI4qVYv+HseRO4YUfbr6nYboHJPx8/9PpgJK
 HDp9bXCBkPs7ilXbgQon3x/FhE/GdAV181ueeJpcnhQVdRRWpYc2ut20jykDIjNp3n
 yLkPdGKKdL+ZFCRWhB29POHVEd/KbUYxV/TCzg3or+D7ngPZvR8+yR5MSs5Vus8rc3
 6ys9zdJJB2w0tvC9ZiDbQUJrlrtHBPQX4Kq2yoS8afA5aQBRMqR33Jbp2vPo4Wsaiw
 XLtYNdEWKFWtA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UIn44EGP
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,linutronix.de,linux.dev,google.com,redhat.com,davemloft.net,intel.com,molgen.mpg.de,vger.kernel.org,lunn.ch,lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:willemdebruijn.kernel@gmail.com,m:bigeasy@linutronix.de,m:vadim.fedorenko@linux.dev,m:willemb@google.com,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 89623126F73
X-Rspamd-Action: no action

On Wed, 11 Feb 2026 13:08:51 +0100 Kurt Kanzenbach wrote:
> On Tue Feb 10 2026, Willem de Bruijn wrote:
> > The core issue seems to be that the ptp_tx_work is not scheduled
> > quickly enough. I wonder if that is the issue to be fixed. When/why
> > is this too slow?  
> 
> The igb driver uses schedule_work() for the Tx timestamp retrieval. That
> means the ptp_tx_work item is queued to the kernel-global workqueue. In
> case there is load on the system, the kworker which handles ptp_tx_work
> might be delayed too much, which results in ptp4l timeouts.
> 
> Easy solution would be to tune the priority/affinity of the
> kworker. However, we have to figure which kworker it is. Furthermore,
> this kworker might handle other things as well, which are not related to
> igb timestamping at all. Therefore, tuning the priority of the kworker
> is not practical.
> 
> Moving the timestamping in IRQ looked like a good solution, because the
> device already signals that the Tx timestamp is available now. No need
> to schedule any worker/work at all. So, it'd be very nice if
> skb_tstamp_tx() could be called from IRQ context. BTW other drivers like
> igc call this function in IRQ context as well.
> 
> Alternative solution for igb is to move from schedule_work() to PTP AUX
> worker. That is a dedicated PTP worker thread called ptpX, which could
> handle the timestamping. This can be easily tuned with taskset and
> chrt. However, there's one difference to the kworker approach: The
> kworker always runs on the same CPU, where the IRQ triggered, the AUX
> worker not necessarily. This means, Miroslav needs to be aware of this
> and tune the AUX worker for his NTP use cases.
> 
> I hope, that makes the motivation for this patch and discussion clear.

Are you concerned about the latency of delivering the TS to the user
space app / socket? Or purely reading the TS out of the HW fifo to make
space for another packet to be timestamped?
