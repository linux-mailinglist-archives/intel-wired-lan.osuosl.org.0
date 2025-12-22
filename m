Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF0BCD7661
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 00:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5D8760B42;
	Mon, 22 Dec 2025 23:00:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p9fMGyWxeiIv; Mon, 22 Dec 2025 23:00:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDD0E60B4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766444429;
	bh=/GiffbNV/tBskPZdgVWnbq8D6KwPgfDWsmkGacg7NIk=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=QNjlYbcEJB+djGEF260jz7up94XEGvEOQ3wldA5OHJruFyTQ8x/24pcKx/Y4JbcWI
	 JpCNX51jJw+7k5RGdy1Hmppwb/fYayP3BIOwUU33zS1znaLBV/wbNZRP8sq9VuPqtt
	 4eXNV/CgrQgU+uWwY2iuvLchuXkV3OoOqjTKHtKyNWh/+e30T9kjYBTG5K8oBdyOdG
	 ExSWFjYuo1O04R8VV7zGC3OWSrOl6Skmi9yu1aY1fY0swAch0gWTzcDFgjEhXiRIYj
	 bF33fOBy8tJC2SNmn/G8eNdYR5hBKK4zvZAfkteUm3tWduCMy9jkqC41v86KsjQsT/
	 +wOHNGcgZyIlg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDD0E60B4C;
	Mon, 22 Dec 2025 23:00:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 739E5119
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 23:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61FD782281
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 23:00:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m-OJ9CDyE7qP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Dec 2025 23:00:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::132; helo=mail-lf1-x132.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2BECC816E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BECC816E2
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BECC816E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 23:00:25 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-5957eeb9d8aso26105e87.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 15:00:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1766444424; cv=none;
 d=google.com; s=arc-20240605;
 b=U1y7hRp70VK3TRRQkcHOdxDJdIVCzxeJoLK9Ru9BOKbbLwOwcgceNfFLWFoB+rJYo2
 0qt3tKHIre6zX4Pbf1JREBH89iSukzTzKyoBIV9Zp9BdM8bkgmOhhc2TUD/gG1GeCiNQ
 93BCiTrauvRVoLQsBpcALcr76vnFAldB+V41K4F7lE7cRrytkOjHg8iQh/g5ZY5ulEKG
 HHrLPpyQBPOZ0V/vo+tPwNEn0ssIzOM+BSq4WafI9nYjGkRVQGhWb/U06nDw34eJDHTu
 9ytCU+Br2lRKR2gr8L7yn8fe/7E0bFrXaZ4g9Sn7C7agM1bXq2QQtTJamWagn8KVG6No
 LRqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=/GiffbNV/tBskPZdgVWnbq8D6KwPgfDWsmkGacg7NIk=;
 fh=fRB5jtJ6AfUeO+tYgUfKmcn5qQavQ9bQrCcCwIEF5Sw=;
 b=C7IK0D/a1ccl3gxgpRUJHDLYqk7/UCGd/MDy+o2Vz94bjwPu0qCbhm7jc9YO92n50/
 MRNo+bFu2jrs/MkNBjNl5M8a3dNboVd9UvrnKmw1/c0rH0TFmB8v+B5dE9aroAdxC/Fh
 eAXur3DiEWtEhMXg3Lxrpgq6W9JxqTHSP96groJqGefWGidSUw99sLr+gCAjttNQPYY1
 pmI0PpDIqsn3tJL426JVqUUgM6IRsagdH82z+h+2U3857hfiuRMlkBQunnroqREEIbxm
 BnQkOso8f/otk4j0byvNjpaa1MBvvFDfanVBhE49O1mFsLXKYEFPdVGL54zZV1O5CiJe
 IOvQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766444424; x=1767049224;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=/GiffbNV/tBskPZdgVWnbq8D6KwPgfDWsmkGacg7NIk=;
 b=thIDEhLmK4PLMTESoNiw0WZWURT4eA9usbP5UlqO1T5Co4174srlkhcsLVbDOKiBU4
 IqGcYC6F9BMyhk3MogNyOHAzFxj2rqhP1FX6PbYgfWHhMyYdtS4vCmb+mQBpbQyPJzBp
 EqrKoyPmHZ/wtn86OOwcC3v+7QbuaGWjHlH32NgoUmvJSNJgIFb4FZX4FsK2gjyH+mvf
 HQzJJCjTdlFRKnaxq2RqdMnmIMCNSnz+YACSNx9V9u6b2irvZktmP/+KA2ckdSnuATSn
 /AJzYBgSLaJsCs8mCDHHTAJqXzUK6kuwLdq9uoL5Nbo5EDOJfhUWqMB3SemvwSAZuMBB
 RbRg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUkKEdIq4fRYHL9Yz4FC500tAwdXRAmHNr2lrQzEATxD6b6TG/DPldCfn9Iiy8K6mW56RtJJH/FSB5g6XeKlFY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzcppzGqmcVDkWjm7dmtdUU9zUlO1PdTNcKGxqOvOqBgJ5T0BAJ
 s+8MedqQEuaCFSRmOxBU+iBKBqmIqb+U6usPOZnSby97F/KNjxBWrkoCV9EAwqXdA4OaAfaY/4p
 9mSc9Qz2mabIkyR2QnK9foCfIY72v8QybDuMFbDGY
X-Gm-Gg: AY/fxX7s7Rc1EmGn9332iYQygSqspSTmZXIB32M5a4OYXo0BZajjuEMOPTLDXDnUbIF
 kmvb8zR6ZbQD33Q+cOt8vehUxR7fMBIXK37V3WWwe6dGks3Y9EOyXBuvEli0oZaNv8DemnTpNkL
 O3B3s2f4JJzMOAkAjvO3LsXAg2YzoW1sFs+oxsfv5E21r55FemEehfWm5ubBuFHSauodGDaYFpe
 JCAxN3P3Wf0h+/Zu9zTTptuMndbXKnNtCAjSmpfuGS7Y6/Ma4z25FxdDrZxx/RoRTzOgig=
X-Google-Smtp-Source: AGHT+IFolDyi0gmcjOW3uPfmwLAvnys6fHTRSXsP7uqs5Jry5LkM+oYjXghvf2oLx1lTxeVLVgcdbG0gyQNcQI3f1Yk=
X-Received: by 2002:ac2:5dc6:0:b0:597:d6db:98fa with SMTP id
 2adb3069b0e04-59a1e6108c0mr182015e87.8.1766444423439; Mon, 22 Dec 2025
 15:00:23 -0800 (PST)
MIME-Version: 1.0
References: <20251219202957.2309698-1-almasrymina@google.com>
 <870f89e4-aec2-4eb2-8a93-c80484866c6d@intel.com>
In-Reply-To: <870f89e4-aec2-4eb2-8a93-c80484866c6d@intel.com>
Date: Mon, 22 Dec 2025 15:00:11 -0800
X-Gm-Features: AQt7F2ou44GOcMewwcH4dPpJ1kZw_YlLZCYqXqchupAuxd4xBlvlogJgJKpaZLg
Message-ID: <CAHS8izOOyGTYkMct=VJM8jHmzQgXR7y143erxfMvkPOkVJrXJg@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, 
 YiFei Zhu <zhuyifei@google.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, 
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, 
 intel-wired-lan@lists.osuosl.org, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1766444424; x=1767049224; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/GiffbNV/tBskPZdgVWnbq8D6KwPgfDWsmkGacg7NIk=;
 b=ahVikMI8fui70ve89aeWWJKXL3G+SsoFGPBPIFDp8pB9wB9JFzD8YJabCi/x5gTRuo
 Ass9vijcUgof6LN0W/DuuWJPQubxvpIrVzuLJQD2dT/CYTgqQMT0Cj1/jyWPYtYKr/SN
 pmY1UvKlvVD9DJeoieWN8URk/PeHdXEeNSrXdqTrYc8YS4wmaROYlNjFvdYREUFnOFt1
 LLtRUapINY3+Ij9bxpDkpyGNuYG7REWDABdLqMi5y/kuM5vC2LoFo8AynE8M492aPciw
 CkWJLbFmNHNc4gZa1veFeHx94opx2XYvQdVWFtTrP6X7tSTEnT0vHirTsh0aomkbaekf
 05YQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=ahVikMI8
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] idpf: export RX hardware
 timestamping information to XDP
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
From: Mina Almasry via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Mina Almasry <almasrymina@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 22, 2025 at 4:55=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Mina Almasry <almasrymina@google.com>
> Date: Fri, 19 Dec 2025 20:29:54 +0000
>
> > From: YiFei Zhu <zhuyifei@google.com>
> >
> > The logic is similar to idpf_rx_hwtstamp, but the data is exported
> > as a BPF kfunc instead of appended to an skb.
> >
> > A idpf_queue_has(PTP, rxq) condition is added to check the queue
> > supports PTP similar to idpf_rx_process_skb_fields.
> >
> > Cc: intel-wired-lan@lists.osuosl.org
> >
> > Signed-off-by: YiFei Zhu <zhuyifei@google.com>
> > Signed-off-by: Mina Almasry <almasrymina@google.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >
> > ---
> >
> > v3: https://lore.kernel.org/netdev/20251218022948.3288897-1-almasrymina=
@google.com/
> > - Do the idpf_queue_has(PTP) check before we read qw1 (lobakin)
> > - Fix _qw1 not copying over ts_low on on !__LIBETH_WORD_ACCESS systems
> >   (AI)
> >
> > v2: https://lore.kernel.org/netdev/20251122140839.3922015-1-almasrymina=
@google.com/
> > - Fixed alphabetical ordering
> > - Use the xdp desc type instead of virtchnl one (required some added
> >   helpers)
> >
> > ---
> >  drivers/net/ethernet/intel/idpf/xdp.c | 31 +++++++++++++++++++++++++++
> >  drivers/net/ethernet/intel/idpf/xdp.h | 22 ++++++++++++++++++-
> >  2 files changed, 52 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethern=
et/intel/idpf/xdp.c
> > index 958d16f87424..0916d201bf98 100644
> > --- a/drivers/net/ethernet/intel/idpf/xdp.c
> > +++ b/drivers/net/ethernet/intel/idpf/xdp.c
> > @@ -2,6 +2,7 @@
> >  /* Copyright (C) 2025 Intel Corporation */
> >
> >  #include "idpf.h"
> > +#include "idpf_ptp.h"
> >  #include "idpf_virtchnl.h"
> >  #include "xdp.h"
> >  #include "xsk.h"
> > @@ -391,8 +392,38 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md =
*ctx, u32 *hash,
> >                                   pt);
> >  }
> >
> > +static int idpf_xdpmo_rx_timestamp(const struct xdp_md *ctx, u64 *time=
stamp)
> > +{
> > +     const struct libeth_xdp_buff *xdp =3D (typeof(xdp))ctx;
> > +     struct idpf_xdp_rx_desc desc __uninitialized;
> > +     const struct idpf_rx_queue *rxq;
> > +     u64 cached_time, ts_ns;
> > +     u32 ts_high;
> > +
> > +     rxq =3D libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
> > +
> > +     if (!idpf_queue_has(PTP, rxq))
> > +             return -ENODATA;
> > +
> > +     idpf_xdp_get_qw1(&desc, xdp->desc);
> > +
> > +     if (!(idpf_xdp_rx_ts_low(&desc) & VIRTCHNL2_RX_FLEX_TSTAMP_VALID)=
)
> > +             return -ENODATA;
> > +
> > +     cached_time =3D READ_ONCE(rxq->cached_phc_time);
> > +
> > +     idpf_xdp_get_qw3(&desc, xdp->desc);
> > +
> > +     ts_high =3D idpf_xdp_rx_ts_high(&desc);
> > +     ts_ns =3D idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high)=
;
> > +
> > +     *timestamp =3D ts_ns;
> > +     return 0;
> > +}
> > +
> >  static const struct xdp_metadata_ops idpf_xdpmo =3D {
> >       .xmo_rx_hash            =3D idpf_xdpmo_rx_hash,
> > +     .xmo_rx_timestamp       =3D idpf_xdpmo_rx_timestamp,
> >  };
> >
> >  void idpf_xdp_set_features(const struct idpf_vport *vport)
> > diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethern=
et/intel/idpf/xdp.h
> > index 479f5ef3c604..9daae445bde4 100644
> > --- a/drivers/net/ethernet/intel/idpf/xdp.h
> > +++ b/drivers/net/ethernet/intel/idpf/xdp.h
> > @@ -112,11 +112,13 @@ struct idpf_xdp_rx_desc {
> >       aligned_u64             qw1;
> >  #define IDPF_XDP_RX_BUF              GENMASK_ULL(47, 32)
> >  #define IDPF_XDP_RX_EOP              BIT_ULL(1)
> > +#define IDPF_XDP_RX_TS_LOW   GENMASK_ULL(31, 24)
> >
> >       aligned_u64             qw2;
> >  #define IDPF_XDP_RX_HASH     GENMASK_ULL(31, 0)
> >
> >       aligned_u64             qw3;
> > +#define IDPF_XDP_RX_TS_HIGH  GENMASK_ULL(63, 32)
> >  } __aligned(4 * sizeof(u64));
> >  static_assert(sizeof(struct idpf_xdp_rx_desc) =3D=3D
> >             sizeof(struct virtchnl2_rx_flex_desc_adv_nic_3));
> > @@ -128,6 +130,8 @@ static_assert(sizeof(struct idpf_xdp_rx_desc) =3D=
=3D
> >  #define idpf_xdp_rx_buf(desc)        FIELD_GET(IDPF_XDP_RX_BUF, (desc)=
->qw1)
> >  #define idpf_xdp_rx_eop(desc)        !!((desc)->qw1 & IDPF_XDP_RX_EOP)
> >  #define idpf_xdp_rx_hash(desc)       FIELD_GET(IDPF_XDP_RX_HASH, (desc=
)->qw2)
> > +#define idpf_xdp_rx_ts_low(desc)     FIELD_GET(IDPF_XDP_RX_TS_LOW, (de=
sc)->qw1)
> > +#define idpf_xdp_rx_ts_high(desc)    FIELD_GET(IDPF_XDP_RX_TS_HIGH, (d=
esc)->qw3)
> >
> >  static inline void
> >  idpf_xdp_get_qw0(struct idpf_xdp_rx_desc *desc,
> > @@ -149,7 +153,10 @@ idpf_xdp_get_qw1(struct idpf_xdp_rx_desc *desc,
> >       desc->qw1 =3D ((const typeof(desc))rxd)->qw1;
> >  #else
> >       desc->qw1 =3D ((u64)le16_to_cpu(rxd->buf_id) << 32) |
> > -                 rxd->status_err0_qw1;
> > +                     ((u64)rxd->ts_low << 24) |
> > +                     ((u64)rxd->fflags1 << 16) |
> > +                     ((u64)rxd->status_err1 << 8) |
>
> I'm not sure you need casts to u64 here. Pls rebuild without them and
> check the objdiff / compiler warnings.
> It's required for buf_id as we shift by 32.
>

The compiler does not warn if I drop the u64 casts, but are you sure
you want them dropped? You're already doing u64 casts in all the
entries that you bit-shift in qw0 and qw2. It makes the code clearer
imo. But up to you.

> > +                     rxd->status_err0_qw1;
>
> Why did you replace the proper indentation with two tabs in all 4 lines
> above?
>

Sure, will fix.

--=20
Thanks,
Mina
