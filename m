Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGZZGNsY4WmmpAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:14:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43596412726
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:14:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35BA06081B;
	Thu, 16 Apr 2026 17:14:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6cDzFjDh5ts; Thu, 16 Apr 2026 17:13:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8303860825
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776359638;
	bh=6dT7mVhVdBcQKxdxp7R9P647sFHOGPHf4omAX9xtygM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rqoLdFwOAicWA2w/H8wyTS2rkprnFIS6i0JQX8a3jUqdGPoAgSx6DN2bVymlbwHLV
	 WtQFRZcEoXvm0tPtreMBc3tz3wQ7MB/0OBOsHULlSasjUfvIBNjIj59zHJ4vwK+2Hz
	 c3vngrreCV3iTVO85e8/z+hx223cCcroHxOHuMoP+pzuG120fxE1a/iKrt1tsoFp64
	 sLlq72WycV+KGHWghrJdx7RAFytf/wQX4wr+PG3+/Nq0gMGXO9wQAexQH21a7StIxj
	 5hrae4ptgSzOOUWa6rHLYl/2+9wJdwVBKmWbkSXyLP1uigWOMhHB1a7OHcKdksbhSn
	 LnGfleMYUHOSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8303860825;
	Thu, 16 Apr 2026 17:13:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 47ED22CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E11F409C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IdWruLLilGlp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 17:13:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 27C2C409BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27C2C409BE
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27C2C409BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:13:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1893F60127;
 Thu, 16 Apr 2026 17:13:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7216FC2BCAF;
 Thu, 16 Apr 2026 17:13:51 +0000 (UTC)
Date: Thu, 16 Apr 2026 18:13:49 +0100
From: Simon Horman <horms@kernel.org>
To: Michael Bommarito <michael.bommarito@gmail.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20260416171349.GC863718@horms.kernel.org>
References: <20260413182427.298513-1-michael.bommarito@gmail.com>
 <20260415161720.GN772670@horms.kernel.org>
 <CAJJ9bXwQyd-cZ0h_FCNj29GZYpXyCBu444VhLGLZkf1bWYqoKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJJ9bXwQyd-cZ0h_FCNj29GZYpXyCBu444VhLGLZkf1bWYqoKQ@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776359633;
 bh=bJJnwIqGgN/xbz1eE9VEZDGKUIy6M0vd1On7Is6eFjE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ot+kKNVTkgSEY/NdD/vI6f0xBKHo8Py6GQW1pXDEh3M/7Q/OwJ6HZ8hopNSqBUI/X
 ag/LSrtSnsukdkgcKwWS3ArQaDxJU0xJlEaFd6ZTdQt68sHB7/M0Tpkvd5bQlvIdZL
 LW3SpuZmKFIR0jtNddMsLQCw/zKGpW3JGR/VKIfdxID4rM5DZ4jGRPAyAmwjhDKoxL
 TyhE3LH0AADiHcciCPqfybG32LDUeXUGykiWAB/bCsDS2WjXBOJrc7duJlEKAC/SUI
 vxtBGmuK6C4+83EiKKwACA3HWHV44Je8NtiyorYGblvruzjh62v1fr7PCW+U6IYlud
 WJPIFmqiGvj1g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ot+kKNVT
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbevf: fix use-after-free in
 VEPA multicast source pruning
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michael.bommarito@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:michaelbommarito@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 43596412726
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 12:30:45PM -0400, Michael Bommarito wrote:
> On Wed, Apr 15, 2026 at 12:17 PM Simon Horman <horms@kernel.org> wrote:
> > Sashiko flags a number of issues in the same function that
> > do not seem related to your patch.
> >
> > I'd suggest looking over them if you are interested in
> > follow-up work in this area.
> 
> Sure, I'd be happy to keep going here if you're open to more hardening
> patches.

Speaking for myself: I'm happy to review patches that correct bugs.

I'm also happy to review patches that otherwise improve the code.
But I think the Intel people might be able to provide better guidance here.

Please be aware of the Netdev guidance on cleanups:

> 
> Two Qs for you:
> 
> 1. Do you want smaller patches for each or bigger method-level patches?

The general rule of thumb is one patch per problem.
Personally, I prefer small patches.

> 
> 2. Anything on my list below that you would *not* want me touching?
> I'll combine with anything I can find from your Sashiko items

...

>     3. line 2769
>        rule:   semgrep signed-int-as-size-param-kmalloc
>        match:  q_vector = kzalloc(size, GFP_KERNEL)  (signed size)
>        status: untriaged
> 
>     4. line 3452
>        rule:   semgrep signed-int-as-size-param-kmalloc
>        match:  tx_ring->tx_buffer_info = vmalloc(size)  (signed size)
>        status: untriaged
> 
>     5. line 3530
>        rule:   semgrep signed-int-as-size-param-kmalloc
>        match:  rx_ring->rx_buffer_info = vmalloc(size)  (signed size)
>        status: untriaged

I didn't look closely, but: I am a little skeptical that these signed size
problems are worth fixing; while the other items on your list look worth
fixing to me.

...
