Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F81FA07E05
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2025 17:47:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76313606CB;
	Thu,  9 Jan 2025 16:47:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ILVd5XPvi5A; Thu,  9 Jan 2025 16:47:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91024606C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736441226;
	bh=5JPHuVCRp7+zQFOdQ8fHuST1GoGNN9SlNiLTtrR+sc4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OYSyTds+Tb8vvn+TXkVMh9g8ad7VUDZoU1asE3WODlq5HLsvPsGtTeDEhgLQS80YT
	 V7q5ynSloa8YI1naeBb6JDT6ruclwOpQ7+ko1a3YKLI8CAVsQvtMSPciSm7SNLNmjS
	 mnvXixgjD5wrVKCxD+fWLYu/3GpXcUJh6ICqyV7HacsK8FNG6HNmwN+28tgJZHNe0S
	 2ZzjfVStx+DgFW4eSJno6GowrHv2kPfyXA77w8d7jMxSJ4KSTIx/AedzUvM1t0TaA5
	 B1FPv31uBSrxAKTsjjjX4d24RYE4lq+QnQNSgQEA42G10E5nes3f9zF5YiKMD83jy7
	 v+4vkoG9Mpv5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91024606C5;
	Thu,  9 Jan 2025 16:47:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B516942
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 16:47:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B2814070C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 16:47:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YMskEJoEEbs6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 16:47:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wcosta@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 349474069D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 349474069D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 349474069D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 16:47:02 +0000 (UTC)
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-SVJ2Rk2dNvOD5KkYLFtrRw-1; Thu, 09 Jan 2025 11:47:00 -0500
X-MC-Unique: SVJ2Rk2dNvOD5KkYLFtrRw-1
X-Mimecast-MFC-AGG-ID: SVJ2Rk2dNvOD5KkYLFtrRw
Received: by mail-pj1-f71.google.com with SMTP id
 98e67ed59e1d1-2f2a9743093so2063826a91.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 Jan 2025 08:47:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736441219; x=1737046019;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5JPHuVCRp7+zQFOdQ8fHuST1GoGNN9SlNiLTtrR+sc4=;
 b=EzxUKuihJnB15ugoQv723h9sVfKPlwvlIngMZdZtN9rdh/WXWXldW/yn+aMLmTTLRw
 A48x6uy76JZ0NT5Piiy9xe0GJRHzEKwzW2jY5tVY1wtwM8Ob9PDBS00O7KmkAJfbGG2i
 zUlK6g0JZj3tupgLEwpduf0CicVAkiszojweQ3F/3VNtWgdNRMGmrGnlDO/vS3iTNWPj
 FaeXAoJgWnPwjXAvV5RTDVQQgRlQ81/YiEtMzqmKg4Q4nvt4ihf6gKjZc3aTQwvYZgVz
 KA97yBscbjbaWeTaN4LYNcVdmwi9zEbYm4sa3jIPEAbHpjOKw3txIn6DzAJPP+Jtg1i/
 SLiw==
X-Forwarded-Encrypted: i=1;
 AJvYcCURm0MaHHXTC2UIdL21+4ndGLmju6oURjH6n+OQmIAkOph8u19++2jdo9gWAeERQC7qYVfDXhOi+pG1z4IO+A4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxobS35A9C/XvAbXEFVSh9w1dFHDLPN53MqyA4XpdbTH1ZOi/5n
 tHxMXmHLk3TlXb2KZ9R4gEGVZO2/vFOwS1rtZTsjhBXZaAJpET7gvjsIY4GxulWFcjws+yZewos
 +0cQLaHiKIWEAsd2BSRkVyoa6IuX3Zvvst1sWbRB+ye+0kQuVuoMZcopx3TYECGTIq1FrGGLdwi
 3rOzGunbdwh13HgBZBMr5HUyGzSWkqn5HdFeSucSc5ng==
X-Gm-Gg: ASbGncvLuP74cfE+KsTZgjaqlfrxgw6Oz8AHCFvCzXTdC0/3CgHO/hL9tRg7K9vbPT+
 izGTx2WJJv/tgW2rt8soGvQ1ouB/cQyE2DMNqMg==
X-Received: by 2002:a17:90a:d648:b0:2f4:9e8b:6aad with SMTP id
 98e67ed59e1d1-2f548da4606mr12572623a91.0.1736441219375; 
 Thu, 09 Jan 2025 08:46:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHpM1xeYGQdWij9k8A8bJCGJl8L0XuzQRJzgPHF85+Q/4kUmrEx8hke+2dARHLCjk80AxjDtK2agKR7JR/4LpE=
X-Received: by 2002:a17:90a:d648:b0:2f4:9e8b:6aad with SMTP id
 98e67ed59e1d1-2f548da4606mr12572590a91.0.1736441219101; Thu, 09 Jan 2025
 08:46:59 -0800 (PST)
MIME-Version: 1.0
References: <20241204114229.21452-1-wander@redhat.com>
 <20250107135106.WWrtBMXY@linutronix.de>
 <taea3z7nof4szjir2azxsjtbouymqxyy4draa3hz35zbacqeeq@t3uidpha64k7>
 <20250108102532.VWnKWvoo@linutronix.de>
In-Reply-To: <20250108102532.VWnKWvoo@linutronix.de>
From: Wander Lairson Costa <wander@redhat.com>
Date: Thu, 9 Jan 2025 13:46:47 -0300
X-Gm-Features: AbW1kvZ8KQOnh86-GeyADaUmjIhlzOD5nmsf-y8x0xoFHG_aBcz-pakMV0aIxSU
Message-ID: <CAAq0SUnoS45Fctkzj4t4OxT=9qm9Bg8zu79=S3DUL_jcoLbC-A@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Jeff Garzik <jgarzik@redhat.com>, Auke Kok <auke-jan.h.kok@intel.com>, 
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, 
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, 
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8Zzp84UpQ9UTu4-HXuYCLSdXdyvRPvYfpFhKy6xsSIU_1736441219
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1736441221;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5JPHuVCRp7+zQFOdQ8fHuST1GoGNN9SlNiLTtrR+sc4=;
 b=Q2i3Has+GYv0rVtUMru9fJodOX7/YS2No21+ky8eenP2Dc2KcY99vFQRZFg8lFmRxv1MjR
 DY2RfpDPuv7CA6Gxsa23CQvqD8F8KPB4kPFdQKoFsCyKORHLZrjJr0JZ9IsoH0O2Jf/vKx
 /ivY+CswvzaqyY1yLlOz9lA1ZG6k0Os=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Q2i3Has+
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

On Wed, Jan 8, 2025 at 7:25=E2=80=AFAM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:
>
> On 2025-01-07 15:52:47 [-0300], Wander Lairson Costa wrote:
> > On Tue, Jan 07, 2025 at 02:51:06PM +0100, Sebastian Andrzej Siewior wro=
te:
> > > On 2024-12-04 08:42:23 [-0300], Wander Lairson Costa wrote:
> > > > This is the second attempt at fixing the behavior of igb_msix_other=
()
> > > > for PREEMPT_RT. The previous attempt [1] was reverted [2] following
> > > > concerns raised by Sebastian [3].
> > > >
> > > > The initial approach proposed converting vfs_lock to a raw_spinlock=
,
> > > > a minor change intended to make it safe. However, it became evident
> > > > that igb_rcv_msg_from_vf() invokes kcalloc with GFP_ATOMIC,
> > > > which is unsafe in interrupt context on PREEMPT_RT systems.
> > > >
> > > > To address this, the solution involves splitting igb_msg_task()
> > > > into two parts:
> > > >
> > > >     * One part invoked from the IRQ context.
> > > >     * Another part called from the threaded interrupt handler.
> > > >
> > > > To accommodate this, vfs_lock has been restructured into a double
> > > > lock: a spinlock_t and a raw_spinlock_t. In the revised design:
> > > >
> > > >     * igb_disable_sriov() locks both spinlocks.
> > > >     * Each part of igb_msg_task() locks the appropriate spinlock fo=
r
> > > >     its execution context.
> > >
> > > - Is this limited to PREEMPT_RT or does it also occur on PREEMPT syst=
ems
> > >   with threadirqs? And if this is PREEMPT_RT only, why?
> >
> > PREEMPT systems configured to use threadirqs should be affected as well=
,
> > although I never tested with this configuration. Honestly, until now I =
wasn't
> > aware of the possibility of a non PREEMPT_RT kernel with threaded IRQs =
by default.
>
> If the issue is indeed the use of threaded interrupts then the fix
> should not be limited to be PREEMPT_RT only.
>
Although I was not aware of this scenario, the patch should work for it as =
well,
as I am forcing it to run in interrupt context. I will test it to confirm.

> > > - What causes the failure? I see you reworked into two parts to behav=
e
> > >   similar to what happens without threaded interrupts. There is still=
 no
> > >   explanation for it. Is there a timing limit or was there another
> > >   register operation which removed the mailbox message?
> > >
> >
> > I explained the root cause of the issue in the last commit. Maybe I sho=
uld
> > have added the explanation to the cover letter as well.  Anyway, here i=
s a
> > partial verbatim copy of it:
> >
> > "During testing of SR-IOV, Red Hat QE encountered an issue where the
> > ip link up command intermittently fails for the igbvf interfaces when
> > using the PREEMPT_RT variant. Investigation revealed that
> > e1000_write_posted_mbx returns an error due to the lack of an ACK
> > from e1000_poll_for_ack.
>
> That ACK would have come if it would poll longer?
>
No, the service wouldn't be serviced while polling.

> > The underlying issue arises from the fact that IRQs are threaded by
> > default under PREEMPT_RT. While the exact hardware details are not
> > available, it appears that the IRQ handled by igb_msix_other must
> > be processed before e1000_poll_for_ack times out. However,
> > e1000_write_posted_mbx is called with preemption disabled, leading
> > to a scenario where the IRQ is serviced only after the failure of
> > e1000_write_posted_mbx."
>
> Where is this disabled preemption coming from? This should be one of the
> ops.write_posted() calls, right? I've been looking around and don't see
> anything obvious.

I don't remember if I found the answer by looking at the code or by
looking at the ftrace flags.
I am currently on sick leave with covid. I can check it when I come back.

> Couldn't you wait for an event instead of polling?
>
> > The call chain from igb_msg_task():
> >
> > igb_msg_task
> >       igb_rcv_msg_from_vf
> >               igb_set_vf_multicasts
> >                       igb_set_rx_mode
> >                               igb_write_mc_addr_list
> >                                       kmalloc
> >
> > Cannot happen from interrupt context under PREEMPT_RT. So this part of
> > the interrupt handler is deferred to a threaded IRQ handler.
> >
> > > > Cheers,
> > > > Wander
>
> Sebastian
>

