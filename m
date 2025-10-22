Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B427BFA8BE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 09:29:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2278F40B53;
	Wed, 22 Oct 2025 07:29:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HatcpNBgzChf; Wed, 22 Oct 2025 07:29:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E0AE40B5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761118161;
	bh=/xWsLx8kXa1EhoyDlGrX8mNfXD+60A38wfmzRpmXo5g=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2O79e2BBFmuObLLIAFSH5PujxyIK5O1OjIVX/b8WH0c0dV5f1MJQ8ENdSgE8PO+da
	 El2sjiQgokI/4Ymiyazqlasdv9RI+vAUrMfjQhEFM+hbbnTbL2xddo3ZFwYo4Tabqh
	 gPaRhmrAWF2U9FQutkL8DDnFPEbDUphgQJXck7GNdOr3BdXgxF5VWA8h+xpdP03C/u
	 mqsTV/5cJ2QbO8rxZBVGI7lbv25EbqWlfkafWwWQeSUQZOwWwiFH0s8yLFCfu0eMYS
	 oZMCK9fWI29KJ1X2W9Ze6Lf/aCcosZg/R0ntovjTHqr8+znE4bjycNCKjyXTO0lXaS
	 egXRLWy96UEBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E0AE40B5B;
	Wed, 22 Oct 2025 07:29:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 524E970A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 07:29:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E93C40B44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 07:29:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tp71TlSBXKj6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 07:29:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132; helo=mail-il1-x132.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2639740B32
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2639740B32
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2639740B32
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 07:29:17 +0000 (UTC)
Received: by mail-il1-x132.google.com with SMTP id
 e9e14a558f8ab-430bf3b7608so58276175ab.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 00:29:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761118157; x=1761722957;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/xWsLx8kXa1EhoyDlGrX8mNfXD+60A38wfmzRpmXo5g=;
 b=l+7ibUP5JSDYCT1fsgi9RYeHbZbRHVA2gn1r/Zvn/4nMN53zYmvfX+SaxrhBJhc5x3
 Bl3OlNQ/JujA4p4DBZaibibMSCiP5ayw/hewvdVp6NIuOaPM+QoFraDgVF/GYe+Dz5V6
 CcOvvLSJZhBQ5Z+xhwbgsxPQjm8JcvNKeekNBnoGtMw2GvH9BiEHSX3an7WKwhQKnB9D
 osoiMGoHIexX1bpsCRO4sIPOkLdL0UmZP8zrvam0YZysWGTq7WlpQrs1UMRVrcNV/6Zf
 +wZg8YL/dD1Vq6nTmvFFZqbo1njXnU+nzHlhFMjjvLbg3PrT6OdPKD1AsR9c6SBSI4XU
 gNcQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+v2fywylH4bEcZzHB/YEkKpYczCyuVBNHnuK0KhymPh9FI1Ol0rPKkRPfiPp+c26nk4yXeeZgmmzZqJSOqkc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxTZBYf/R+L0Tzoszv1NIwl+ysy0BD8pu7o3Ud1bLY1r07Kx+01
 6fwO1/kqryy5FBvMY5iuAANe0z0uIKXcBk4+gAlWMS+84eOHdNMvyIU33ioD2Nyn+xtXeRVGtBd
 aWSlqzleRhe4ebYv31C0aBhifTq6F5kA=
X-Gm-Gg: ASbGncvw21FcCA1OiFigQIrxTNznvChiMRLSgUUZlYTJekfrJdEJFDOAVOoNx1TGwBE
 XxEng727N1MDQm0Rj4DRVeJ+eBIDDl38fHnlJYwbyKmzBu3GJg9yxrz/80MKzQW6g9Ry7+k1pEj
 vDbST5IDYl8bFA50PG02ps7RkTlB86z878GFSHMIPYqsSP9SNOfblMLhLD9jldCqCj6CpwZBXLo
 rR1y88n2tmp0IK4Iky+mWJiV0CYUFn6CQ8+UUVoxECQ8VlgwzuSihJRrFsP
X-Google-Smtp-Source: AGHT+IED9n+RqHtN1Th1MJ7JnCSzY0Rl5WA7S8AQjtZkIJPKqYfBIw2vQZWOdi7nfIlSGidEA+5NpJL057JdqlYVYy4=
X-Received: by 2002:a05:6e02:152d:b0:42f:9dd5:3ebb with SMTP id
 e9e14a558f8ab-430c529a04bmr264434365ab.24.1761118156832; Wed, 22 Oct 2025
 00:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <20251021173200.7908-1-alessandro.d@gmail.com>
 <20251021173200.7908-2-alessandro.d@gmail.com>
 <CAL+tcoCwGQyNSv9BZ_jfsia6YFoyT790iknqxG7bB7wVi3C_vQ@mail.gmail.com>
 <SA1SPRMB0026CD60501E3684B5EC67F290F3A@SA1SPRMB0026.namprd11.prod.outlook.com>
In-Reply-To: <SA1SPRMB0026CD60501E3684B5EC67F290F3A@SA1SPRMB0026.namprd11.prod.outlook.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 22 Oct 2025 15:28:40 +0800
X-Gm-Features: AS18NWAhx58WtTUi2JT6G4CTg1bh9I5sPKQJwMylvFKZ_SujWev48qLzNJTayaU
Message-ID: <CAL+tcoD0Mu0ShAN3Jp5Kt=bheQzm-4Q999_Fzw=y8zt7L9GuLg@mail.gmail.com>
To: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>
Cc: Alessandro Decina <alessandro.d@gmail.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761118157; x=1761722957; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/xWsLx8kXa1EhoyDlGrX8mNfXD+60A38wfmzRpmXo5g=;
 b=ASuH/sgYlys9B+y2WfTEb091uJkduks9fy90GgcMFgwYwfOrcuq+YVdv0N0h77WlME
 9qqxLsiOIFXjgxOTjCdbFB6mxannV8dAE/gG+ZZWdn0gOXglqyExWs50F031h/YxNKqh
 SLno5qbe6aCI1KV3tTAasAzq6liVCX8cqWfLAHm1E1zfDOgFuxYV7aFobutHSuSbwSxz
 l7U+81KrDIzp987XHX1vhXJCf4ebZcKzlAVoxCs+JC1s/mtOjtMQuIeE4Q3qZngzY+lz
 skTobEWoUnBvhPQGS5dxvQlYojwHAyuLvzSmSwXER4jFl9va1BCLSpRZhQM8LV2qp46Y
 OXKg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ASuH/sgY
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] i40e: xsk: advance
 next_to_clean on status descriptors
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

On Wed, Oct 22, 2025 at 1:41=E2=80=AFPM Sarkar, Tirthendu
<tirthendu.sarkar@intel.com> wrote:
>
> > From: Jason Xing <kerneljasonxing@gmail.com>
> > Sent: 22 October 2025 08:41
> > On Wed, Oct 22, 2025 at 1:33=E2=80=AFAM Alessandro Decina
> > <alessandro.d@gmail.com> wrote:
> > >
> > > Whenever a status descriptor is received, i40e processes and skips ov=
er
> > > it, correctly updating next_to_process but forgetting to update
> > > next_to_clean. In the next iteration this accidentally causes the
> > > creation of an invalid multi-buffer xdp_buff where the first fragment
> > > is the status descriptor.
> > >
> > > If then a skb is constructed from such an invalid buffer - because th=
e
> > > eBPF program returns XDP_PASS - a panic occurs:
> > >
> > > [ 5866.367317] BUG: unable to handle page fault for address:
> > ffd31c37eab1c980
> > > [ 5866.375050] #PF: supervisor read access in kernel mode
> > > [ 5866.380825] #PF: error_code(0x0000) - not-present page
> > > [ 5866.386602] PGD 0
> > > [ 5866.388867] Oops: Oops: 0000 [#1] SMP NOPTI
> > > [ 5866.393575] CPU: 34 UID: 0 PID: 0 Comm: swapper/34 Not tainted
> > 6.17.0-custom #1 PREEMPT(voluntary)
> > > [ 5866.403740] Hardware name: Supermicro AS -2115GT-HNTR/H13SST-G,
> > BIOS 3.2 03/20/2025
> > > [ 5866.412339] RIP: 0010:memcpy+0x8/0x10
> > > [ 5866.416454] Code: cc cc 90 cc cc cc cc cc cc cc cc cc cc cc cc cc =
cc cc 90 90
> > 90 90 90 90 90 90 90 90 90 90 90 90 90 90 66 90 48 89 f8 48 89 d1 <f3> =
a4
> > e9 fc 26 c0 fe 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
> > > [ 5866.437538] RSP: 0018:ff428d9ec0bb0ca8 EFLAGS: 00010286
> > > [ 5866.443415] RAX: ff2dd26dbd8f0000 RBX: ff2dd265ad161400 RCX:
> > 00000000000004e1
> > > [ 5866.451435] RDX: 00000000000004e1 RSI: ffd31c37eab1c980 RDI:
> > ff2dd26dbd8f0000
> > > [ 5866.459454] RBP: ff428d9ec0bb0d40 R08: 0000000000000000 R09:
> > 0000000000000000
> > > [ 5866.467470] R10: 0000000000000000 R11: 0000000000000000 R12:
> > ff428d9eec726ef8
> > > [ 5866.475490] R13: ff2dd26dbd8f0000 R14: ff2dd265ca2f9fc0 R15:
> > ff2dd26548548b80
> > > [ 5866.483509] FS:  0000000000000000(0000)
> > GS:ff2dd2c363592000(0000) knlGS:0000000000000000
> > > [ 5866.492600] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > [ 5866.499060] CR2: ffd31c37eab1c980 CR3: 0000000178d7b040 CR4:
> > 0000000000f71ef0
> > > [ 5866.507079] PKRU: 55555554
> > > [ 5866.510125] Call Trace:
> > > [ 5866.512867]  <IRQ>
> > > [ 5866.515132]  ? i40e_clean_rx_irq_zc+0xc50/0xe60 [i40e]
> > > [ 5866.520921]  i40e_napi_poll+0x2d8/0x1890 [i40e]
> > > [ 5866.526022]  ? srso_alias_return_thunk+0x5/0xfbef5
> > > [ 5866.531408]  ? raise_softirq+0x24/0x70
> > > [ 5866.535623]  ? srso_alias_return_thunk+0x5/0xfbef5
> > > [ 5866.541011]  ? srso_alias_return_thunk+0x5/0xfbef5
> > > [ 5866.546397]  ? rcu_sched_clock_irq+0x225/0x1800
> > > [ 5866.551493]  __napi_poll+0x30/0x230
> > > [ 5866.555423]  net_rx_action+0x20b/0x3f0
> > > [ 5866.559643]  handle_softirqs+0xe4/0x340
> > > [ 5866.563962]  __irq_exit_rcu+0x10e/0x130
> > > [ 5866.568283]  irq_exit_rcu+0xe/0x20
> > > [ 5866.572110]  common_interrupt+0xb6/0xe0
> > > [ 5866.576425]  </IRQ>
> > > [ 5866.578791]  <TASK>
> > >
> > > Advance next_to_clean to ensure invalid xdp_buff(s) aren't created.
> > >
> > > Fixes: 1c9ba9c14658 ("i40e: xsk: add RX multi-buffer support")
> > > Signed-off-by: Alessandro Decina <alessandro.d@gmail.com>
> > > ---
> > >  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 7 ++++++-
> > >  1 file changed, 6 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > index 9f47388eaba5..dbc19083bbb7 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > @@ -441,13 +441,18 @@ int i40e_clean_rx_irq_zc(struct i40e_ring
> > *rx_ring, int budget)
> > >                 dma_rmb();
> > >
> > >                 if (i40e_rx_is_programming_status(qword)) {
> > > +                       u16 ntp;
> > > +
> > >                         i40e_clean_programming_status(rx_ring,
> > >                                                       rx_desc->raw.qw=
ord[0],
> > >                                                       qword);
> > >                         bi =3D *i40e_rx_bi(rx_ring, next_to_process);
> > >                         xsk_buff_free(bi);
> > > -                       if (++next_to_process =3D=3D count)
> > > +                       ntp =3D next_to_process++;
> > > +                       if (next_to_process =3D=3D count)
> > >                                 next_to_process =3D 0;
> > > +                       if (next_to_clean =3D=3D ntp)
> > > +                               next_to_clean =3D next_to_process;
> > >                         continue;
> > >                 }
> > >
> > > --
> > > 2.43.0
> > >
> > >
> >
> > I'm copying your reply from v1 as shown below so that we can continue
> > with the discussion :)
> >
> > > It really depends on whether a status descriptor can be received in t=
he
> > > middle of multi-buffer packet. Based on the existing code, I assumed =
it
> > > can. Therefore, consider this case:
> > >
> > > [valid_1st_packet][status_descriptor][valid_2nd_packet]
> > >
> > > In this case you want to skip status_descriptor but keep the existing
> > > logic that leads to:
> > >
> > >     first =3D next_to_clean =3D valid_1st_packet
> > >
> > > so then you can go and add valid_2nd_packet as a fragment to the firs=
t.
> >
> > Sorry, honestly, I still don't follow you.
> >
> > Looking at the case you provided, I think @first always pointing to
> > valid_1st_packet is valid which does not bring any trouble. You mean
> > the case is what you're trying to handle?
> >
> > You patch updates next_to_clean that is only used at the very
> > beginning, so it will not affect @first. Imaging the following case:
> >
> >      [status_descriptor][valid_1st_packet][valid_2nd_packet]
> >
> > Even if the next_to_clean is updated, the @first still points to
> > [status_descriptor] that is invalid and that will later cause the
> > panic when constructing the skb.
> >
> > I'm afraid that we're not on the same page. Let me confirm that it is
> > @first that points to the status descriptor that causes the panic,
> > right? Could you share with us the exact case just like you did as
> > above. Thank you.
> >
> > Thanks,
> > Jason
>
> I believe the issue is not that status_descriptor is getting into multi-b=
uffer packet but not updating next_to_clean results in I40E_DESC_UNUSED() t=
o return incorrect values.
> A similar issue was reported and fixed on the non-ZC path: https://lore.k=
ernel.org/netdev/20231004083454.20143-1-tirthendu.sarkar@intel.com/

Great, thanks! Now everything is clear to me. I think it would be
great if Alessandro can add/revise something like this in the commit
message.

Anyway, as to the code itself, feel free to add my tag:
Reviewed-by: Jason Xing <kerneljasonxing@gmail.com>

Thanks,
Jason

>
> Thanks,
> Tirthendu
