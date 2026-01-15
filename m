Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B528CD28508
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jan 2026 21:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67164847EE;
	Thu, 15 Jan 2026 20:07:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rJFbpuwR0VDG; Thu, 15 Jan 2026 20:07:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C04F2847EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768507648;
	bh=AH1AMS4mgK+dyZF1tXid8a0is6o7PbaqjSCpA17U3aI=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=cmZa1yXJG87g/9AizhjWrtRI2T38LwA2tB+iREjUs/kr6Pe3bbHTC4llwVMKe7OeT
	 QEQVl2Zs+iCyPQXpm2KSn2G7rzEJ3SlHPfjeXhGCR4FCZ5JFiMf7hF6KilbXTi0EVd
	 Utza5lysKnAkztlmGVm8QpCYCg/tXBMyCnbFpscEQItGLXZWqswlfhbfmPNMBOoXIA
	 vlckhBqgwlyDYMNI/MAoDZCyewPoWpR+WYPp1cZZpJD6jkrSLzaF9JYuo9ErNYw1c0
	 tTnW6S1uZF8+WryK93wKbe7iXPpCBUn8o+ulx6z+ycpPcxpSQJ/U37MgPGrT+XVQnj
	 AT0h7zF1lRLTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C04F2847EF;
	Thu, 15 Jan 2026 20:07:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B211A1C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 20:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2DE4614C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 20:07:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ApR-26rNizuM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jan 2026 20:07:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112c; helo=mail-yw1-x112c.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D144F614C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D144F614C1
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com
 [IPv6:2607:f8b0:4864:20::112c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D144F614C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 20:07:25 +0000 (UTC)
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-790b7b3e594so12254877b3.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 12:07:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768507644; x=1769112444;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=AH1AMS4mgK+dyZF1tXid8a0is6o7PbaqjSCpA17U3aI=;
 b=heWbp+CjSgI0/4ex4VeaWBq2Q/mdr9fYP85en07y4IuCYpndtEx0ac7nI22hB4Zeop
 kpAruuLPdLncGJkzlGf3d5jQM/u9NIT17WAbQy1HgSxv0zguDFFRnYp7EyXfWLkaZAlO
 Xx8LhNmWwKfz7Ll1PcLlkhlAxV2DUaNsOaKgFLglKd7QmJElAjFguXaM7m9TyOIzfUf0
 YNCAX50F73udoFrYajcriXQezb631xGjp5xb8ceper1fFrwiFCC61Yb6bLdlkMAbMv5w
 +86Pjiifwix0Txl7VbuEKwefxIaUR1FfUTyQkeXOf7nOF/rZEfnTHNjjuuO59a+cXRqH
 xUqQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXwPfnK55J/1qmW+XmmZgRT8MlJAQeFcUhxKH9/2NpfxLdfcppC67Mb2FpAumS5/sEA2udSvbuDa/WQRZbhS88=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxal59EKb2ohrh4QUMdR7YxI2b8gKVpvEoJtV4BvYUgH1Vw+gH9
 qQUX1750zCp6WWOvD1AlSzILtb+3higg6Ec3eIRmx9jN6kYmKfCbltG90qV6V/hE5MAqL7WX+IC
 z39bFUkPMRkXfoQjV/ZMkMWhTRxNhmznAJJ3rBBSd
X-Gm-Gg: AY/fxX5XChu3xpyU8feXhDINfS5ymVn1rpzotneJ7RG+kKLukr9bI8jd4gQx5Gz3Ab8
 nBHr9s24b60DvppZ6GWE2ISVv3rsVcUDiSOknvQecNuG/XfYE1tTevV/dgPshB/TI1uGdzjSzP8
 ppPvz6nffLaZoni1VSPMA8UM2EgWwUuLI6mj6DnpbkdxW2ExB1nQvanE8qiT/Mm5xs0mybHqH9Y
 2B1ET4uKaWDbsXwaBQFudKiq52Z9RGUStCUkaxhTqrBb+8BryBTBjI2w/cn3ZsYPQipm0d4TZOU
 ghb4PdonIb1C1Ykw4CNKiIIf
X-Received: by 2002:a05:690c:6b88:b0:78d:1132:dad3 with SMTP id
 00721157ae682-793c526e1e8mr7421227b3.20.1768507644288; Thu, 15 Jan 2026
 12:07:24 -0800 (PST)
MIME-Version: 1.0
References: <20260112230944.3085309-1-boolli@google.com>
 <20260112230944.3085309-2-boolli@google.com>
 <164caca4-f57f-4363-a8f1-0e090a4eb192@molgen.mpg.de>
In-Reply-To: <164caca4-f57f-4363-a8f1-0e090a4eb192@molgen.mpg.de>
Date: Thu, 15 Jan 2026 12:07:12 -0800
X-Gm-Features: AZwV_Qi3-qSZFh24Z3X_f1hmLACqlT8waYll0ogUs48ORnOjL-Wwuabgffh4rfI
Message-ID: <CAODvEq6E-TLJ5Z0L3dfB3NgQrCRuQ9W=-g97hw+1yM+yJB_7iw@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768507644; x=1769112444; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AH1AMS4mgK+dyZF1tXid8a0is6o7PbaqjSCpA17U3aI=;
 b=CYBzCYqAsB3Dto81IDBCj06EpAy14sJP1nQYsygLhDWgTnNMU2vIr1rZarlEY5u7Wp
 REiZR/R+/oqxPRjLywGpw8ylPu1WlqF+WLotYbzzhCL7zZ4Dnk+2eVa/Bgal2HU9TH2d
 MLwCcQ3hAhC4j4XS/IBOXjnGzRJOGETVAwk610p1HCemlb5psJWczF7igemYH5Vyb5Uz
 HrOiSdRp7e2ehJQND9DxURGBuq0hT0hUSZYWg/WJHtaWGAZ/eBVNLR60lACZmIiUU8JJ
 mryMrCBmH1alyPm2FlK9Y9YiExxWijT7jYNHn22dmmchKHyPDwalw0m+3mDZOO48ItkH
 rAQA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=CYBzCYqA
Subject: Re: [Intel-wired-lan] [PATCH 1/2] idpf: skip deallocating bufq_sets
 from rx_qgrp if it is NULL.
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 12, 2026 at 10:31=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de=
> wrote:
>
> Dear Li,
>
>
> Thank you for your patch.
>
> Am 13.01.26 um 00:09 schrieb Li Li via Intel-wired-lan:
> > In idpf_rxq_group_alloc(), if rx_qgrp->splitq.bufq_sets failed to get
> > allocated:
> >
> >       rx_qgrp->splitq.bufq_sets =3D kcalloc(vport->num_bufqs_per_qgrp,
> >                                           sizeof(struct idpf_bufq_set),
> >                                           GFP_KERNEL);
> >       if (!rx_qgrp->splitq.bufq_sets) {
> >               err =3D -ENOMEM;
> >               goto err_alloc;
> >       }
> >
> > idpf_rxq_group_rel() would attempt to deallocate it in
> > idpf_rxq_sw_queue_rel(), causing a kernel panic:
> >
> > ```
> > [    7.967242] early-network-sshd-n-rexd[3148]: knetbase: Info: [    8.=
127804] BUG: kernel NULL pointer dereference, address: 00000000000000c0
> > ...
> > [    8.129779] RIP: 0010:idpf_rxq_group_rel+0x101/0x170
> > ...
> > [    8.133854] Call Trace:
> > [    8.133980]  <TASK>
> > [    8.134092]  idpf_vport_queues_alloc+0x286/0x500
> > [    8.134313]  idpf_vport_open+0x4d/0x3f0
> > [    8.134498]  idpf_open+0x71/0xb0
> > [    8.134668]  __dev_open+0x142/0x260
> > [    8.134840]  netif_open+0x2f/0xe0
> > [    8.135004]  dev_open+0x3d/0x70
> > [    8.135166]  bond_enslave+0x5ed/0xf50
> > [    8.135345]  ? nla_put_ifalias+0x3d/0x90
> > [    8.135533]  ? kvfree_call_rcu+0xb5/0x3b0
> > [    8.135725]  ? kvfree_call_rcu+0xb5/0x3b0
> > [    8.135916]  do_set_master+0x114/0x160
> > [    8.136098]  do_setlink+0x412/0xfb0
> > [    8.136269]  ? security_sock_rcv_skb+0x2a/0x50
> > [    8.136509]  ? sk_filter_trim_cap+0x7c/0x320
> > [    8.136714]  ? skb_queue_tail+0x20/0x50
> > [    8.136899]  ? __nla_validate_parse+0x92/0xe50
> > [    8.137112]  ? security_capable+0x35/0x60
> > [    8.137304]  rtnl_newlink+0x95c/0xa00
> > [    8.137483]  ? __rtnl_unlock+0x37/0x70
> > [    8.137664]  ? netdev_run_todo+0x63/0x530
> > [    8.137855]  ? allocate_slab+0x280/0x870
> > [    8.138044]  ? security_capable+0x35/0x60
> > [    8.138235]  rtnetlink_rcv_msg+0x2e6/0x340
> > [    8.138431]  ? __pfx_rtnetlink_rcv_msg+0x10/0x10
> > [    8.138650]  netlink_rcv_skb+0x16a/0x1a0
> > [    8.138840]  netlink_unicast+0x20a/0x320
> > [    8.139028]  netlink_sendmsg+0x304/0x3b0
> > [    8.139217]  __sock_sendmsg+0x89/0xb0
> > [    8.139399]  ____sys_sendmsg+0x167/0x1c0
> > [    8.139588]  ? ____sys_recvmsg+0xed/0x150
> > [    8.139780]  ___sys_sendmsg+0xdd/0x120
> > [    8.139960]  ? ___sys_recvmsg+0x124/0x1e0
> > [    8.140152]  ? rcutree_enqueue+0x1f/0xb0
> > [    8.140341]  ? rcutree_enqueue+0x1f/0xb0
> > [    8.140528]  ? call_rcu+0xde/0x2a0
> > [    8.140695]  ? evict+0x286/0x2d0
> > [    8.140856]  ? rcutree_enqueue+0x1f/0xb0
> > [    8.141043]  ? kmem_cache_free+0x2c/0x350
> > [    8.141236]  __x64_sys_sendmsg+0x72/0xc0
> > [    8.141424]  do_syscall_64+0x6f/0x890
> > [    8.141603]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> > [    8.141841] RIP: 0033:0x7f2799d21bd0
> > ...
> > [    8.149905] Kernel panic - not syncing: Fatal exception
> > [    8.175940] Kernel Offset: 0xf800000 from 0xffffffff81000000 (reloca=
tion range: 0xffffffff80000000-0xffffffffbfffffff)
> > [    8.176425] Rebooting in 10 seconds..
> > ```
> >
> > Tested: With this patch, the kernel panic no longer appears.
>
> Is it easy to reproduce?

In our internal environments, we have the idpf driver running on
machines with small RAM, and it's not uncommon for
them to run out of memory and encounter kalloc issues, especially in
kcallocs where we allocate higher order memory.

To reliably reproduce the issue in my own testing, I simply set
rx_qgrp->splitq.bufq_sets to NULL:

    rx_qgrp->splitq.bufq_sets =3D kcalloc(vport->num_bufqs_per_qgrp,
                                           sizeof(struct idpf_bufq_set),
                                           GFP_KERNEL);
    rx_qgrp->splitq.bufq_sets =3D NULL;

If the error path works correctly, we should not see a kernel panic.


>
> > Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
> >
>
> (Just for the future, a blank in the =E2=80=9Ctag section=E2=80=9D is unc=
ommon.)

Thank you for the info!

>
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/=
ethernet/intel/idpf/idpf_txrx.c
> > index e7b131dba200c..b4dab4a8ee11b 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -1337,6 +1337,8 @@ static void idpf_txq_group_rel(struct idpf_vport =
*vport)
> >   static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
> >   {
> >       int i, j;
> > +     if (!rx_qgrp->splitq.bufq_sets)
> > +             return;
> >
> >       for (i =3D 0; i < rx_qgrp->vport->num_bufqs_per_qgrp; i++) {
> >               struct idpf_bufq_set *bufq_set =3D &rx_qgrp->splitq.bufq_=
sets[i];
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul
