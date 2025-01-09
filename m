Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 582BEA07F26
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2025 18:45:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11608830D7;
	Thu,  9 Jan 2025 17:45:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S5x_ELjaObiZ; Thu,  9 Jan 2025 17:45:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ECBB830A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736444720;
	bh=ITDbkQWE/hIVhZw2Nq8W6mx+3e492XIMVSSt0BOfbNU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YR9RpuvZKwMlnAFQnbTV5Z2RBJqR5YLpBAVpkvV4Can00b3///AjVIbutjW9BFqeQ
	 k0dV152EnyMQaaUX+qQ9gTaaTq28aQU7xxwYZr6/3RTLyoE5MXNhC8GkaOeyXa37FR
	 DEZtJO+yGiq6hkUKgcuPEmwAuThlWl2kJwrc+KlSAkgP1/ZFfrn5B260MBEfntox4T
	 yRy9yYk+N02T6K6A3Yzi0RbIQXscoCfmpBMXDShzDuY0TY6w402NP4rfMQfB9Me7VQ
	 mKaEPwwANY1YGNyS54Tll0glx19tzXTf9S2OOZkpjtnXYRm3hXY6BMfVui8u8b4NCF
	 BavVKXbkOrtGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3ECBB830A7;
	Thu,  9 Jan 2025 17:45:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E627942
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E8514071D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:45:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2uHBpmsQU17W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 17:45:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6E66440718
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E66440718
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E66440718
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 17:45:17 +0000 (UTC)
Date: Thu, 9 Jan 2025 18:45:12 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Wander Lairson Costa <wander@redhat.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Jeff Garzik <jgarzik@redhat.com>,
 Auke Kok <auke-jan.h.kok@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
Message-ID: <20250109174512.At7ZERjU@linutronix.de>
References: <20241204114229.21452-1-wander@redhat.com>
 <20250107135106.WWrtBMXY@linutronix.de>
 <taea3z7nof4szjir2azxsjtbouymqxyy4draa3hz35zbacqeeq@t3uidpha64k7>
 <20250108102532.VWnKWvoo@linutronix.de>
 <CAAq0SUnoS45Fctkzj4t4OxT=9qm9Bg8zu79=S3DUL_jcoLbC-A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAAq0SUnoS45Fctkzj4t4OxT=9qm9Bg8zu79=S3DUL_jcoLbC-A@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1736444714;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ITDbkQWE/hIVhZw2Nq8W6mx+3e492XIMVSSt0BOfbNU=;
 b=wTdOlWbQ91hilUGbM16VU/8j5nkkTWdg5HJnuFCuQd/GAZAaWr+puLg3RtzuPF9cZXz+YX
 WkcVIjtFD+P4FdlEYxMNVG6JQ3Tc/wA3nrh/vIUDJ6OklF2IMhByt4DRQibSdUk6ByTpDq
 z2hchp5Z3Vmsqf1hWtdcHsdwjL2VuYCViTG9bnReSk4/27uV0sWHrbIPMalIESqSmtyaQl
 apXWsvjNjQpe28NHY1NLXpbmzSESTdHVy1Bqwrj24zApmWSu54gICF47aXNErnKTlBoH2u
 jgrtrBWmuKwchINQNd0UOt2ozMkbJySorYKiV0dsniatCnvepE7coKSI3kjhaA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1736444714;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ITDbkQWE/hIVhZw2Nq8W6mx+3e492XIMVSSt0BOfbNU=;
 b=yT3+jiuCw+WM1LYsNIad/JIuKA14d7jM3TedjhRkLbOSCxz3HARUlqSyEd5ZS4roS/3Eca
 N2TekSHFJbNwaeCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=wTdOlWbQ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=yT3+jiuC
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/4] igb: fix igb_msix_other()
 handling for PREEMPT_RT
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

On 2025-01-09 13:46:47 [-0300], Wander Lairson Costa wrote:
> > If the issue is indeed the use of threaded interrupts then the fix
> > should not be limited to be PREEMPT_RT only.
> >
> Although I was not aware of this scenario, the patch should work for it a=
s well,
> as I am forcing it to run in interrupt context. I will test it to confirm.

If I remember correctly there were "ifdef preempt_rt" things in it.

> > > > - What causes the failure? I see you reworked into two parts to beh=
ave
> > > >   similar to what happens without threaded interrupts. There is sti=
ll no
> > > >   explanation for it. Is there a timing limit or was there another
> > > >   register operation which removed the mailbox message?
> > > >
> > >
> > > I explained the root cause of the issue in the last commit. Maybe I s=
hould
> > > have added the explanation to the cover letter as well.  Anyway, here=
 is a
> > > partial verbatim copy of it:
> > >
> > > "During testing of SR-IOV, Red Hat QE encountered an issue where the
> > > ip link up command intermittently fails for the igbvf interfaces when
> > > using the PREEMPT_RT variant. Investigation revealed that
> > > e1000_write_posted_mbx returns an error due to the lack of an ACK
> > > from e1000_poll_for_ack.
> >
> > That ACK would have come if it would poll longer?
> >
> No, the service wouldn't be serviced while polling.

Hmm.=20

> > > The underlying issue arises from the fact that IRQs are threaded by
> > > default under PREEMPT_RT. While the exact hardware details are not
> > > available, it appears that the IRQ handled by igb_msix_other must
> > > be processed before e1000_poll_for_ack times out. However,
> > > e1000_write_posted_mbx is called with preemption disabled, leading
> > > to a scenario where the IRQ is serviced only after the failure of
> > > e1000_write_posted_mbx."
> >
> > Where is this disabled preemption coming from? This should be one of the
> > ops.write_posted() calls, right? I've been looking around and don't see
> > anything obvious.
>=20
> I don't remember if I found the answer by looking at the code or by
> looking at the ftrace flags.
> I am currently on sick leave with covid. I can check it when I come back.

Don't worry, get better first. I'm kind of off myself. I'm not sure if I
have the hardware needed to setup so I can look at it=E2=80=A6

Sebastian
