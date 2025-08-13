Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 938B5B2454B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 11:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37DAE818BE;
	Wed, 13 Aug 2025 09:23:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3uHJlZRhsQL7; Wed, 13 Aug 2025 09:23:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABF85812D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755077028;
	bh=nt3RxAJI4fKupz8WilY+ZuWni2sRIcUdlVwAYfMMlGU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IT6BdUlcdbOwMNHQESmBvIZSdtxNTvivsq90SDtXsNmPUQm+Y4w7+mVRPk2si+DT8
	 cNrmMdB2bBLzl+kmekyldGwblnfJqtfByHYer2LZAoAcsC8PEEbV9Gxm/f7Yh/UZpZ
	 EQ5mnWGPWmil84Yw2CtX4Bn5yvMRo72dpNwgrMrVkjac/phHw8dEpskqUx2npkP/k7
	 8dc3++tCDRa6smh8VXBv5Hmr+efIdoVyQoUPKGf+5BM3XVViLSNQ1NO7kAZB/8AwL9
	 I43oZRCnnUhvHDQwNS0SAWWQSkzpmygz54kXDbUcGugGP9V0ZbNaFa7FkcPGNAKpr2
	 K9GyBGBiHbV/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABF85812D5;
	Wed, 13 Aug 2025 09:23:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 960431C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 09:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F73881304
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 09:23:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e3TEQP--HhqM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 09:23:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=xtydtc@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B51A812D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B51A812D5
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B51A812D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 09:23:46 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-af9842df867so1123875866b.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 02:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755077024; x=1755681824;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nt3RxAJI4fKupz8WilY+ZuWni2sRIcUdlVwAYfMMlGU=;
 b=aSuZA284VtuQO58HTuotGp6A0yc/bnRWe5sU3JZZ2yjHFaXd28vDD99G3H2oSPL1mK
 OzLlsG9lr4s893svy5jnMIwjqK5tNzj3UcZ/sDGiXePR/j6k9TL5f/p1PsYbPid7fvGf
 553AMrcfMrXWYDb1G+QOkw/CDcXFjPIG3b720LIxUcG8cCQLL9aFLmpZsvthvqbAewNe
 Yer6hSGfOGXT6bdPylYbNjADlNtGn5SEbD692IZlJsLlO5Vkz+ifO2TQV16gCcLopGjk
 z8tZg+bV6OCTnnDB/2Dy4X0TfFqogxFowfMGilpL+8QgogyqCeLPRZfrgd8Hmww4dbYU
 2Z2A==
X-Forwarded-Encrypted: i=1;
 AJvYcCX0c/n6+WEu6gzbRgZ5m7CnklSnGlL1QRUhGvElDvJgvmzrswMqKvJps7M38TJza1sE5o38fD1CiJcuTLIe6qc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwHyStwtzcZ1XdpMuPdKTFYVnKdam2fBavzzATrKil2jzULQuAJ
 RobcWeX9KFT/uZa1UTPDxjwcFL21N766JecYTzy4TgDnRCAWw5GoqyEGe3qx7Jm7xh8Clp1O/Ic
 4HnyMG6UrsXpoWRRQvFXaiqqsVp3DQjw=
X-Gm-Gg: ASbGnct18iP/+J7KEojOcXqKcTYHRuxaerDzpQ864djNVXauQlHGP/2f7x0J2Y0Szmo
 P6aT7sLhu9hgTGYOJHa1gc8ti/j3Jkf5k5eWF2RrHhRqt1yNczTtra5GcNUCmsw0Psp5l7Rhpqe
 gzrBzrMRxm4IhkGnmrJMhDSakOZMCBYUj5UVREUiIg6zE/wNcEiiKIJQvWNdbTy5zYw2cmeblBS
 izQ7Ii3mgmh8qsJhsF2Cyu7T1AB90Ci+Fs9bj4=
X-Google-Smtp-Source: AGHT+IFWoqZ0GUuQxqb111LCAFrVz98IE+57VOHZdvREo1rpyYl1kzzlNp+a1qY/hqeDh1haW/eWTRkKsAum8Y7HPhk=
X-Received: by 2002:a17:907:3f0b:b0:ae9:c789:13f9 with SMTP id
 a640c23a62f3a-afca4e44435mr212623466b.30.1755077023940; Wed, 13 Aug 2025
 02:23:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250812131056.93963-1-tianyxu@cisco.com>
 <1940cd0a-f6c5-47ae-abaf-31a5f3579159@molgen.mpg.de>
In-Reply-To: <1940cd0a-f6c5-47ae-abaf-31a5f3579159@molgen.mpg.de>
From: Tianyu Xu <xtydtc@gmail.com>
Date: Wed, 13 Aug 2025 17:23:32 +0800
X-Gm-Features: Ac12FXypgyj_emLqfdF9BnTwWu2UN7VrhA9-QuqJEOoTcIBHQB9cysKCzdD-Mf8
Message-ID: <CAF-tjThBebBj3auCam04nMV44j5LNhXnfRKYy6_jjM49wWCOmg@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Tianyu Xu <tianyxu@cisco.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Joe Damato <joe@dama.to>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755077024; x=1755681824; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nt3RxAJI4fKupz8WilY+ZuWni2sRIcUdlVwAYfMMlGU=;
 b=NAOdob1kSHc7Yzedavmlrq1Zla6H4++5E/OvA88p81PhtEiqBeHkH+om+grRZ+52vk
 3FxRGCeaz3hbKF7cmHBxbvoAXH8gbYHbvuE8X1sF2Pt7jri3gBa6VfoR5XQoO25gqIPz
 aFZ1QLwIo8IwSRR7COPN/iFDYw+Crl7IoNTDsu+jxcKu3mJ9q7EC6VyWJ5yWIPDHlYF5
 W5mXzA49hhEhu2nHuUJyrHQAStD43XtNH2pl3pDbc3DkW0hlwSyTLuxOtwwo+5xeZVJ0
 c9JDHeSd+L16KEAs7y4nKSNoU/0itHvZ+mO+e5SiO1zOAtrJ8u3+ChTX4Rcdrf3j7dVW
 cq+w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=NAOdob1k
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix NULL pointer dereference
 in ethtool loopback test
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

Hi Paul,
On my board with i210 NIC, "ethtool -t eth0" got the NULL pointer dereferen=
ce.
After the fix, "ethtool -t eth0" works well.

Kind regards,
Tianyu.


Paul Menzel <pmenzel@molgen.mpg.de> =E4=BA=8E2025=E5=B9=B48=E6=9C=8812=E6=
=97=A5=E5=91=A8=E4=BA=8C 22:00=E5=86=99=E9=81=93=EF=BC=9A
>
> Dear Tianyu,
>
>
> Thank you for your patch.
>
> Am 12.08.25 um 15:10 schrieb Tianyu Xu:
> > The igb driver currently causes a NULL pointer dereference when executi=
ng
> > the ethtool loopback test. This occurs because there is no associated
>
> Where is this test located? Or, how do I run the test manually?
>
> > q_vector for the test ring when it is set up, as interrupts are typical=
ly
> > not added to the test rings.
> >
> > Since commit 5ef44b3cb43b removed the napi_id assignment in
> > __xdp_rxq_info_reg(), there is no longer a need to pass a napi_id to it=
.
> > Therefore, simply use 0 as the last parameter.
> >
> > Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Reviewed-by: Joe Damato <joe@dama.to>
> > Signed-off-by: Tianyu Xu <tianyxu@cisco.com>
> > ---
> > Thanks to Aleksandr and Joe for your feedback. I have added the Fixes t=
ag
> > and formatted the lines to 75 characters based on your comments.
> >
> >   drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
> >   1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/et=
hernet/intel/igb/igb_main.c
> > index a9a7a94ae..453deb6d1 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -4453,8 +4453,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ri=
ng)
> >       if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
> >               xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> >       res =3D xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> > -                            rx_ring->queue_index,
> > -                            rx_ring->q_vector->napi.napi_id);
> > +                            rx_ring->queue_index, 0);
> >       if (res < 0) {
> >               dev_err(dev, "Failed to register xdp_rxq index %u\n",
> >                       rx_ring->queue_index);
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul
