Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EBA9F5966
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 23:13:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F46984A02;
	Tue, 17 Dec 2024 22:13:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v13BFETraIGh; Tue, 17 Dec 2024 22:13:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91227849FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734473620;
	bh=u9QuBOniyMYck+y8PUbC//+oM4oKOj8t9nBe0JYSFFE=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c6PBNcsEc9g+WnAQZw9xTjvcU1ldg4LmhU1wMKa6af1mklwEsl87L7cVyEyqwOydZ
	 3vKCiPfsqZGMHgvHCDkgp2J/IZw/IIdbPf7pt4CZ8hRXB9FAvyZN+9bDpfMl059EMH
	 bzBGg77BFpqNuKIdh1sZkvtt+viGmo0YyM5OneVP5GPkBNR6K6I1HAjI1B0R4aMg4v
	 7ppA2tN3oLbOm/B/cOo5DYu1EIyA/wI9kJPLKIBHREMbgbMA76mQ9j1wteLKQas9LY
	 rNNJlTPBu1l+UAosm4Fqh2ClNYSgctB/mTrheXx1EkYuGsqoULpffA08VUFznFtEfL
	 ACVuNm71jiCJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91227849FA;
	Tue, 17 Dec 2024 22:13:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A1390CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 22:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 824A7849E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 22:13:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DhZt31HzizLg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 22:13:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::22c; helo=mail-oi1-x22c.google.com;
 envelope-from=jmaxwell37@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ACBA4849E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACBA4849E4
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ACBA4849E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 22:13:37 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id
 5614622812f47-3eba50d6da7so1327246b6e.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 14:13:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734473616; x=1735078416;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=u9QuBOniyMYck+y8PUbC//+oM4oKOj8t9nBe0JYSFFE=;
 b=DFvlcKaYcka5UlIJl1hAeqGYkg4WT5LJ67G2GxOLvnGvO/tLATLaHw/OgjejCjBOTk
 lqdYo+w/nhwfE0jRnz9DDDfVcaci3cOZuZQKPiZ0A/nAxUbVvuZWvuRgQ68kz9zDDQeQ
 SRTvmc0cNxIezUECcIkRVvngxrL3Jm9iJDKPF7RbSiTMR09Z7bAOvaUAaelZ7bL6u51W
 QEd80Q+GFMxMuyam+mIvr3VKPwFnAtJuNVGia5lPZNTLsedgBt/vBjaE5/CVPIMxljvz
 IusAevk7yBZHSMQpfLH2LZrnH8WT90XKgBJCgkuawgTsYdurviMDh+NZmocbB96miTUP
 OCyw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUeiaHfr53s1B+iIZI/VnpKEMRc++45XlA1HLNeZtfwtwYsxug/ZJrM3QAhrO+Pzt4L9xLdOW8VJjnD+nl7Jtg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy3dksJIWsGzV6ouzlc/PmzEtAoRLmJEH4ObqnL4pyvxnLKjk27
 II/Sum6aFty6T8bTxPMNKXbBp2WPGPg1IcaLJZDHpBtOOvyHqs6RwRJytxoxjK8Bap4kiMleCjY
 e2XWDKCzUZjb+uGcjTzb23DfyuqU=
X-Gm-Gg: ASbGncvJ6D0IxXRQOCjFG9ToEMa1PFfF1xMaNejHxgCKGhuah8GhZWtVu/mRqFLqKdn
 sxpDvOmL78B0JQLANEMPDoAQW1UB979RA+jQBqB0=
X-Google-Smtp-Source: AGHT+IF/zHxTNCbH+0IG4qfG4nasiicCiiEwLg7lIZarUEHvAnsCaIkPrT1dguYfLdST8cwE0omtiGPoDFTN/CE+GSQ=
X-Received: by 2002:a05:6808:3c4d:b0:3ea:4595:13fc with SMTP id
 5614622812f47-3eccc09aebcmr459934b6e.16.1734473616594; Tue, 17 Dec 2024
 14:13:36 -0800 (PST)
MIME-Version: 1.0
References: <20241216234850.494198-1-jmaxwell37@gmail.com>
 <aa49d578-dee4-4ee8-b17b-b6e941d9126c@intel.com>
In-Reply-To: <aa49d578-dee4-4ee8-b17b-b6e941d9126c@intel.com>
From: Jonathan Maxwell <jmaxwell37@gmail.com>
Date: Wed, 18 Dec 2024 09:13:00 +1100
Message-ID: <CAGHK07COaxjj4WJvDKFLj=ev9j-jRxuw5bXh_zCZtL75Twu7rQ@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734473616; x=1735078416; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=u9QuBOniyMYck+y8PUbC//+oM4oKOj8t9nBe0JYSFFE=;
 b=jVtYfIxgKvlKlPWc4TED+iZLksIRlpvf0qgqx9DMZHv2z1G+r+qlWyGHhbkRgbJ8eV
 lkWuJ+PKpQ8f0/+CI12Dm9AnXCWuE95/4Kr1IJO3NyXjEuQZXLNqUxaOTJi3y+PL1hLb
 NNF4fsdNBdJlKhoZQNg97HS6yJOaLMpzfGDJfSg8A3QA0tSEHKhI7yXDTaAcdN64iI8H
 keP/PcHtofG+A2aY7maBP3g4THLwtxU0ov8Phjn2vlo325+LqHC7EFxRrqOrDcJZ8KDU
 A0X8xrVKbEVK4aVA9pQzm5wmf1O4Egix4N+cDP9cIB1YW0/r1YefGAHRIzD648kYWx+u
 3iHQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=jVtYfIxg
Subject: Re: [Intel-wired-lan] [net-next] ice: expose non_eop_descs to
 ethtool
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

On Wed, Dec 18, 2024 at 1:49=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Jon Maxwell <jmaxwell37@gmail.com>
> Date: Tue, 17 Dec 2024 10:48:50 +1100
>
> > The ixgbe driver exposes non_eop_descs to ethtool. Do the same for ice.
>
> Only due to that?
> Why would we need it in the first place?
>

Not just that. We had a critical ice bug we were diagnosing and saw this
counter in the Vmcore. When we set up a reproducer we needed to check that
counter was incrementing. I added this patch to do that and thought that
it may aid trouble-shooting in the future as well so I sent it upstream.

Regards

Jon

> >
> > With this patch:
> >
> > ethtool -S ens2f0np0 | grep non_eop_descs
> >      non_eop_descs: 956719320
> >
> > Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice.h         | 1 +
> >  drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
> >  drivers/net/ethernet/intel/ice/ice_main.c    | 2 ++
> >  3 files changed, 4 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/etherne=
t/intel/ice/ice.h
> > index 2f5d6f974185..8ff94400864e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -345,6 +345,7 @@ struct ice_vsi {
> >       u32 rx_buf_failed;
> >       u32 rx_page_failed;
> >       u16 num_q_vectors;
> > +     u64 non_eop_descs;
> >       /* tell if only dynamic irq allocation is allowed */
> >       bool irq_dyn_alloc;
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net=
/ethernet/intel/ice/ice_ethtool.c
> > index 3072634bf049..e85b664fa647 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -65,6 +65,7 @@ static const struct ice_stats ice_gstrings_vsi_stats[=
] =3D {
> >       ICE_VSI_STAT("tx_linearize", tx_linearize),
> >       ICE_VSI_STAT("tx_busy", tx_busy),
> >       ICE_VSI_STAT("tx_restart", tx_restart),
> > +     ICE_VSI_STAT("non_eop_descs", non_eop_descs),
> >  };
> >
> >  enum ice_ethtool_test_id {
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/et=
hernet/intel/ice/ice_main.c
> > index 0ab35607e5d5..948c38c0770b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -6896,6 +6896,7 @@ static void ice_update_vsi_ring_stats(struct ice_=
vsi *vsi)
> >       vsi->tx_linearize =3D 0;
> >       vsi->rx_buf_failed =3D 0;
> >       vsi->rx_page_failed =3D 0;
> > +     vsi->non_eop_descs =3D 0;
> >
> >       rcu_read_lock();
> >
> > @@ -6916,6 +6917,7 @@ static void ice_update_vsi_ring_stats(struct ice_=
vsi *vsi)
> >               vsi_stats->rx_bytes +=3D bytes;
> >               vsi->rx_buf_failed +=3D ring_stats->rx_stats.alloc_buf_fa=
iled;
> >               vsi->rx_page_failed +=3D ring_stats->rx_stats.alloc_page_=
failed;
> > +             vsi->non_eop_descs +=3D ring_stats->rx_stats.non_eop_desc=
s;
> >       }
> >
> >       /* update XDP Tx rings counters */
>
> Thanks,
> Olek
