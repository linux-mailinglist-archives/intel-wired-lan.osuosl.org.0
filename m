Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BD2CFF81F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 19:40:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEA1580BC6;
	Wed,  7 Jan 2026 18:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j4gH4eP8_5wf; Wed,  7 Jan 2026 18:40:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19DAD80C52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767811227;
	bh=DtsftQdWvc92MJo/GOY9PADpHyfnOF52TK2njaD2TIA=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=flG9LXAO23kbZjNktR2zts7X/KSAgbLTG4u60krMhYb9MiVWzAmpC37mf0sFFIjUO
	 9I5xd9P9gkHEUAb/tPmkjrjVW0PlsEoATQPHznlCRhGOhUHkt7cjku5SQfTcBKv78z
	 +tqqv3qDXMs6nB5G5WYBxYtXA/H0LekW7WSliZ/++6zvnnnD8cEWbKg84z8yWahBro
	 aPoI8QhmudGVA9DTaPBrkVjB3MbcT05OA/669jdxIlCqtZokh8Cx8mig2GtI+OpLOi
	 07kGbFw6IAT4tk3kcW18M60cGjOxmDBWoCErSCTMSB/o3bAL/Rn8OKmMN+GIHKrASl
	 0WHJ+Juvrr1FA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19DAD80C52;
	Wed,  7 Jan 2026 18:40:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D0FB436
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 18:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A2C84035B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 18:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OzP2Mk66Nt24 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 18:40:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b134; helo=mail-yx1-xb134.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8F23A4000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F23A4000B
Received: from mail-yx1-xb134.google.com (mail-yx1-xb134.google.com
 [IPv6:2607:f8b0:4864:20::b134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F23A4000B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 18:40:24 +0000 (UTC)
Received: by mail-yx1-xb134.google.com with SMTP id
 956f58d0204a3-6446c2bbfe3so2024559d50.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Jan 2026 10:40:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767811223; x=1768416023;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=DtsftQdWvc92MJo/GOY9PADpHyfnOF52TK2njaD2TIA=;
 b=KjsP30YXXI+zAJcKuAK5wSDPSk0mQTl7fV5yZAYSSwiz0dXkZLYz8Ak8ImwBO/yNav
 58d/9pCTw81hm7TyYpfulD6qogMtOZFvB6Bj+gpCttB+uf4Hn8Z79QuCrW8jSx9HNeaE
 PKJqvT7CDCLKtit+5U0mxQNSmPAFYsj49Kxef7MvLPHCri5lWMMN9duPV/Gm/eK0pkMB
 VCJRQZ4I91GZZyzrvQl+dUsBb3I2LYLVvCFT1e9ioWtOi6+j2h3VEqMhliaNkwKUdRfk
 5LJgCrR2IEumfK4plviMinmbsJ+U+fg3wqllw5ycIOaVMnbEQdPfnETEfgeOl5TC6wiq
 sp4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXKCWp9MzYZmLzmCpCoYvAD/ysGJHep8ZHRGKw0TDue9muo4dwZiDjjLs6fS1fBkFAvJkK6iEyNExqKPdiUsTo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxRVvKbXrFNoKLrOXCRb7prmFk+NeST6vsUGz/SskvdBGm0keWU
 Nn0GHbujEEJI4WLeincSEAGp/rqskYp7tiw2C+d3xgYFtlM4BfjD5Ws6wZVOsddM9Vr0NrNTfEH
 7TVrcdikr3rTbKqtKnZ6rnynRGOx4lKyOVdYtWoBC
X-Gm-Gg: AY/fxX4Xh2wn22GMgkQbHNr9pm3Sggs+4ittveEhQ1MzFtI6OeKWa/jLwSz6icohx17
 iWmCz1l0uotDXotMELfeKjcEoS6X1MNhzUsGDUFBtMfPqRYAxh7SWIwXQu1bBylyYLmu7JmUCoz
 QHIhV5WiXN1Tx4s/g0J6bt8Z3h2unN6muOR0Uc8j62tH7ZOUAbR7kF+lZFsLtmN0GoG9sEG1FQa
 EuEdOwNm/h0HMOJ/Wxr0R4MmC25DvKsstqqjbfcOs+uI/MzKhvGuvmbECD1Ck4R0mhMsNxBQvb7
 BF9Aju+QrCOVPaSpFQghrpWHIA==
X-Google-Smtp-Source: AGHT+IFjytPWCRjgBg2Wc9JejGPrceLN1OzIIgu8DsxNWG6LoiDOWn9N99G3/90yQ8AkNTL5f6o/QaFr3PxKunb2Fr8=
X-Received: by 2002:a05:690e:14c9:b0:63e:3b29:f1e1 with SMTP id
 956f58d0204a3-64716c04ccfmr2869235d50.36.1767811222897; Wed, 07 Jan 2026
 10:40:22 -0800 (PST)
MIME-Version: 1.0
References: <20260107010503.2242163-1-boolli@google.com>
 <9cee39b6-edf5-4db2-8f0c-4550fa84b5b7@intel.com>
In-Reply-To: <9cee39b6-edf5-4db2-8f0c-4550fa84b5b7@intel.com>
Date: Wed, 7 Jan 2026 10:40:10 -0800
X-Gm-Features: AQt7F2r6bV6dIcmijk5Dw_7PVdGEoCOZKZRo7usguyrZU391ci6mo2WlJyu5eYk
Message-ID: <CAODvEq5L9dBHAfmhATtXmuUde7My1wCobMN1JRvACDKPwa3XRQ@mail.gmail.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1767811223; x=1768416023; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DtsftQdWvc92MJo/GOY9PADpHyfnOF52TK2njaD2TIA=;
 b=4vHbR/LIKbDzxMRi3MlHRQ6tH64K1lo67p1+zVDJ4pytIjX1dXPKal3HcPi59ray7I
 gKVzAHmIjeQH+mUHzayptPgYbMg7L0ISk26C+jigzMZEEL1vrgCKBajJcsTeARXHw+nf
 douGA9ATn0Ag8hGU87FXgqO1czDOG29dAM2Jo/NsAdACKZ60z2MWVLY6U+g70998lfwg
 ReZi1OXZvFkBAtdR3f1spTWNgvDa4vVsi1qT2YflNUORwN8lERW2nd4pxL8thEPVy/tG
 hWvjSKnvS6r1l7UumNxsP57Q/sZW8Z1Bm1YNXdzGAx7FPHV+fsynj64BtAs9dvTvpqkp
 Lt2A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=4vHbR/LI
Subject: Re: [Intel-wired-lan] [PATCH 1/5] idpf: skip getting/setting ring
 params if vport is NULL during HW reset
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

Please reject this patch series given the underlying issue is fixed in
an earlier patch
series already, thanks.

On Wed, Jan 7, 2026 at 9:41=E2=80=AFAM Tantilov, Emil S
<emil.s.tantilov@intel.com> wrote:
>
>
>
> On 1/6/2026 5:04 PM, Li Li via Intel-wired-lan wrote:
> > When an idpf HW reset is triggered, it clears the vport but does
> > not clear the netdev held by vport:
> >
> >      // In idpf_vport_dealloc() called by idpf_init_hard_reset(),
> >      // idpf_init_hard_reset() sets IDPF_HR_RESET_IN_PROG, so
> >      // idpf_decfg_netdev() doesn't get called.
> >      if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
> >          idpf_decfg_netdev(vport);
> >      // idpf_decfg_netdev() would clear netdev but it isn't called:
> >      unregister_netdev(vport->netdev);
> >      free_netdev(vport->netdev);
> >      vport->netdev =3D NULL;
> >      // Later in idpf_init_hard_reset(), the vport is cleared:
> >      kfree(adapter->vports);
> >      adapter->vports =3D NULL;
> >
> > During an idpf HW reset, when "ethtool -g/-G" is called on the netdev,
> > the vport associated with the netdev is NULL, and so a kernel panic
> > would happen:
> >
> > [  513.185327] BUG: kernel NULL pointer dereference, address: 000000000=
0000038
> > ...
> > [  513.232756] RIP: 0010:idpf_get_ringparam+0x45/0x80
> >
> > This can be reproduced reliably by injecting a TX timeout to cause
> > an idpf HW reset, and injecting a virtchnl error to cause the HW
> > reset to fail and retry, while calling "ethtool -g/-G" on the netdev
> > at the same time.
>
> I have posted series that resolves these issues in the reset path by
> reshuffling the flow a bit and adding netif_device_detach/attach to
> make sure the netdevs are better protected in the middle of a reset:
> https://lore.kernel.org/intel-wired-lan/20251121001218.4565-1-emil.s.tant=
ilov@intel.com/
>
> If you are still seeing issues with the above applied, let me know and I
> can take a look.

Thanks Emil! Yes I performed the experiment at a commit past your
patch series above, and it
does look like the kernel panic does appear anymore. Now performing
ethtool commands during
HW resets would result in "netlink error: No such device", which is
expected because we are detaching
the netdev at the start of the HW reset.

Please reject this patch series, thanks!

>
> >
> > With this patch applied, we see the following error but no kernel
> > panics anymore:
> >
> > [  476.323630] idpf 0000:05:00.0 eth1: failed to get ring params due to=
 no vport in netdev
> >
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 12 ++++++++++++
> >   1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/n=
et/ethernet/intel/idpf/idpf_ethtool.c
> > index d5711be0b8e69..6a4b630b786c2 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > @@ -639,6 +638,10 @@ static void idpf_get_ringparam(struct net_device *=
netdev,
> >
> >       idpf_vport_ctrl_lock(netdev);
> >       vport =3D idpf_netdev_to_vport(netdev);
> > +     if (!vport) {
>
> We used to have these all over the place, but the code was changed to
> rely on idpf_vport_ctrl_lock() for the protection of the vport state.
> Still some issues remain with the error paths (hence the series above),
> but in general we don't want to resort to vport NULL checks and rather
> fix the reset flows to rely on cleaner logic and locks.
>
> Thanks,
> Emil
>
> > +             netdev_err(netdev, "failed to get ring params due to no v=
port in netdev\n");
> > +             goto unlock;
> > +     }
> >
> >       ring->rx_max_pending =3D IDPF_MAX_RXQ_DESC;
> >       ring->tx_max_pending =3D IDPF_MAX_TXQ_DESC;
> > @@ -647,6 +651,7 @@ static void idpf_get_ringparam(struct net_device *n=
etdev,
> >
> >       kring->tcp_data_split =3D idpf_vport_get_hsplit(vport);
> >
> > +unlock:
> >       idpf_vport_ctrl_unlock(netdev);
> >   }
> >
> > @@ -673,6 +674,11 @@ static int idpf_set_ringparam(struct net_device *n=
etdev,
> >
> >       idpf_vport_ctrl_lock(netdev);
> >       vport =3D idpf_netdev_to_vport(netdev);
> > +     if (!vport) {
> > +             netdev_err(netdev, "ring params not changed due to no vpo=
rt in netdev\n");
> > +             err =3D -EFAULT;
> > +             goto unlock_mutex;
> > +     }
> >
> >       idx =3D vport->idx;
> >
>
