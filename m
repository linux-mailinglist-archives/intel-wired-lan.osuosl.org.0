Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 274D3C7FFEB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 11:52:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF116829FE;
	Mon, 24 Nov 2025 10:52:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BpFQcDHawZMf; Mon, 24 Nov 2025 10:52:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DCE982B1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763981528;
	bh=HpxmS1rh+TvJjifFQqBSZjtvzj8hJPtK/fgbxoLiMac=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wDzB/s/x3/YLepr/aTURR3W2OraKs7+UhAvqpQNv2ehXYHhaAmIXzGgaiopVWDLa0
	 Ld4ixlsi417QQQkLNlpQ2FORwXW28+7h0xbD1AM1I3nfIgByeZZDcbsmQ9ckOCKnU6
	 GOXD8WUNwtIb1nO7uObucl3V5P8dyh8N98X+Jc0Pv1JhBi/+u1+jURc/+cf8lj/GSV
	 vToz7sTIlfhcPu0uj0P7bwirZtXea9GylG7QRgH+I6pSUgIlzdA/NhC8eK3u4qCKlh
	 8b3UmNF96Wo/b8u3HJ0DrztN1hlQ7MN5UjyoBtLqle6Cn71DfxJctPBsb/rgwqDufl
	 9f8w0Sx9n/J4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DCE982B1B;
	Mon, 24 Nov 2025 10:52:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4266634E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:52:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34A58606C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:52:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OL4Pz4rUvruW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 10:52:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=zhuyifei@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 599DA605F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 599DA605F5
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 599DA605F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:52:05 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-4779e2ac121so92595e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 02:52:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763981523; x=1764586323;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=HpxmS1rh+TvJjifFQqBSZjtvzj8hJPtK/fgbxoLiMac=;
 b=qZxf3MB/wmBOV+LkinCEZOPQyIdGrJ04r00XO0g4u2O08Tg/HZInbH6lixEhTxoOxS
 1ggO3nZ4ZFV8VVK3+6s0kTzwZ8j1VILZjeJ3tNz7DH9ls5FiBVEovpdbq2VExhjGOR1y
 kabXtYvPH6gnVPEdUes3nTcpANcOm6oK1ClFQD6jG0CCno+U38nD3X5ue2t2GNgqmqEZ
 UEZrdbejUmmxu/LV+WR+t8QB+O91LM6VYTVD3Z26LPzmHL/j3StigmBlTp8I7eRQFvyo
 I4zYROqczdoBvXXcS7/sRbChbRloeMT9CPfiREng1UldNvdXM6gbwEI9BexJDc8rQnuU
 PuDg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWARyRWp9Pl+hWf6S6DKDE4L57DsGFriV1ILWkj9N6BPKqLCMo8J52bvoDsH4N/qcvr8HvoG37NUiaJCugDgWo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxjAQY0hrs9F7Crja/QTwJTdacy/NmbNh2ayO2CdFeVBOCbDdrz
 HrVaHunrPTvwo8+1i+koy/ZIzEoMAR/d0JngeNldVYNRNVA98fn4bkOgB2IeZFYVtKywXEAABGR
 6FUB/s4IQlcqMd/gs2cDH1tK+HX6XVic/WSB3OIgk
X-Gm-Gg: ASbGncsCTGLvkDh7TdUZxkxKW63wPapapHJUOr6GMjAM1D+5VPE2sWd4UlpsYedyhUW
 tWFC381/HvZgs80l/YXj+xFbu+LXmpvY7o8nI2XbMCpY+Ewx3mLeBQ0GtJ4UiMitQlGxDqd1/Hf
 iApGb+1uby7kmlxrf8SlH7O+exAxMypgn6rbAY6TxSzV9E3H5V5ttsAStZSQCbF8AAYEobO2ZZ9
 0SeMKxfVgHAUbj4LCc1QM9pD3XC1fFxfLnehR1mgHrvT4FjH5biIMzpYapKS2UnF7hTmZ8j5+/3
 DOY4Y9g=
X-Google-Smtp-Source: AGHT+IF22QHiRShwy0PNGubA4NozhAovK3+cvWApeflXs47OCki2QvEgos4UcFdY3X1d20qrAJLxvPy1WjNMWz9nz+4=
X-Received: by 2002:a05:600c:c1c8:10b0:477:76ea:ba7a with SMTP id
 5b1f17b1804b1-477c5ea4a2bmr1041565e9.3.1763981523108; Mon, 24 Nov 2025
 02:52:03 -0800 (PST)
MIME-Version: 1.0
References: <20251122140839.3922015-1-almasrymina@google.com>
 <DS4PPF7551E6552ECCF95AE9C177DEF07F8E5D0A@DS4PPF7551E6552.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF7551E6552ECCF95AE9C177DEF07F8E5D0A@DS4PPF7551E6552.namprd11.prod.outlook.com>
From: YiFei Zhu <zhuyifei@google.com>
Date: Mon, 24 Nov 2025 02:51:50 -0800
X-Gm-Features: AWmQ_bl2ejYEDqgSm31Iu3olmZmBqyCwAIhOCZtCkXdCQaanfp4saa25LSksAEA
Message-ID: <CAA-VZP=mvGBOhkc-hmCsmP=uN_qb5ZG1dwhbO2cOyrAYS0wPDw@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: Mina Almasry <almasrymina@google.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1763981523; x=1764586323; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HpxmS1rh+TvJjifFQqBSZjtvzj8hJPtK/fgbxoLiMac=;
 b=ziWoZJo4wKl5z3y30kOLM4VvwvzY+e85Uzi2Y6fQgvOESiBITlAbsnocKRH8zOOAJV
 H3AyILmJUs74eR4bKR6oL1iaYsbATqypefkRMF0JYY891woNQIxmhwcGqBsmBXnHCzNB
 YuoP7P+aMjAUClB178Dc+Q16fretiN3+4FdtHpnDeBknEmUVpDLmHboeQSbcDkjjUmCU
 AganmT5146IGk4QRAC9zMFrL+Lp5R+IER+uZEWI8U4Fd7sostk8Nv1gxU/MlOZu1KKku
 ri7pH/P9qPeDXLAiSMc2CuSq6pl+8ppP1YXaBiDGaMiAtOmG3wpGCID/P8Ch+wXD4y6a
 CzDw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=ziWoZJo4
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] idpf: export RX hardware
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 24, 2025 at 12:33=E2=80=AFAM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Mina Almasry
> > Sent: Saturday, November 22, 2025 3:09 PM
> > To: netdev@vger.kernel.org; bpf@vger.kernel.org; linux-
> > kernel@vger.kernel.org
> > Cc: YiFei Zhu <zhuyifei@google.com>; Alexei Starovoitov
> > <ast@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>; David S.
> > Miller <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Jesper
> > Dangaard Brouer <hawk@kernel.org>; John Fastabend
> > <john.fastabend@gmail.com>; Stanislav Fomichev <sdf@fomichev.me>;
> > Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> > Eric Dumazet <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>;
> > Lobakin, Aleksander <aleksander.lobakin@intel.com>; Richard Cochran
> > <richardcochran@gmail.com>; intel-wired-lan@lists.osuosl.org; Mina
> > Almasry <almasrymina@google.com>
> > Subject: [Intel-wired-lan] [PATCH net-next v1] idpf: export RX
> > hardware timestamping information to XDP
> >
> > From: YiFei Zhu <zhuyifei@google.com>
> >
> > The logic is similar to idpf_rx_hwtstamp, but the data is exported as
> > a BPF kfunc instead of appended to an skb.
> >
> > A idpf_queue_has(PTP, rxq) condition is added to check the queue
> > supports PTP similar to idpf_rx_process_skb_fields.
> >
> > Cc: intel-wired-lan@lists.osuosl.org
> >
> > Signed-off-by: YiFei Zhu <zhuyifei@google.com>
> > Signed-off-by: Mina Almasry <almasrymina@google.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/xdp.c | 27
> > +++++++++++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/xdp.c
> > b/drivers/net/ethernet/intel/idpf/xdp.c
> > index 21ce25b0567f..850389ca66b6 100644
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
> > @@ -369,6 +370,31 @@ int idpf_xdp_xmit(struct net_device *dev, int n,
> > struct xdp_frame **frames,
> >                                      idpf_xdp_tx_finalize);
> >  }
> >
> > +static int idpf_xdpmo_rx_timestamp(const struct xdp_md *ctx, u64
> > +*timestamp) {
> > +     const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
> > +     const struct libeth_xdp_buff *xdp =3D (typeof(xdp))ctx;
> > +     const struct idpf_rx_queue *rxq;
> > +     u64 cached_time, ts_ns;
> > +     u32 ts_high;
> > +
> > +     rx_desc =3D xdp->desc;
> > +     rxq =3D libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
> > +
> > +     if (!idpf_queue_has(PTP, rxq))
> > +             return -ENODATA;
> > +     if (!(rx_desc->ts_low & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
> > +             return -ENODATA;
> RX flex desc fields are little=E2=80=91endian.
> You already convert ts_high with le32_to_cpu(), but test ts_low directly =
against the mask.
> On big=E2=80=91endian this can misdetect the bit and spuriously return -E=
NODATA.
> Please convert ts_low to host order before the bit test.
> See existing IDPF/ICE patterns where descriptor words are leXX_to_cpu()=
=E2=80=91converted prior to FIELD_GET() / bit checks.
> Also, per the XDP RX metadata kfunc docs, -ENODATA must reflect true abse=
nce of per=E2=80=91packet metadata; endianness=E2=80=91correct testing is r=
equired to uphold the semantic.

The logic is copied as verbatim from idpf_rx_hwtstamp:

static void
idpf_rx_hwtstamp(const struct idpf_rx_queue *rxq,
                 const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
                 struct sk_buff *skb)
{
        u64 cached_time, ts_ns;
        u32 ts_high;

        if (!(rx_desc->ts_low & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
                return;

        cached_time =3D READ_ONCE(rxq->cached_phc_time);

        ts_high =3D le32_to_cpu(rx_desc->ts_high);
        ts_ns =3D idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high);
[...]

I assume that is incorrect and would need to be fixed too?

YiFei Zhu

> > +
> > +     cached_time =3D READ_ONCE(rxq->cached_phc_time);
> > +
> > +     ts_high =3D le32_to_cpu(rx_desc->ts_high);
> > +     ts_ns =3D idpf_ptp_tstamp_extend_32b_to_64b(cached_time,
> > ts_high);
> > +
> > +     *timestamp =3D ts_ns;
> > +     return 0;
> > +}
> > +
> >  static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
> >                             enum xdp_rss_hash_type *rss_type)  { @@ -
> > 392,6 +418,7 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md
> > *ctx, u32 *hash,  }
> >
> >  static const struct xdp_metadata_ops idpf_xdpmo =3D {
> > +     .xmo_rx_timestamp       =3D idpf_xdpmo_rx_timestamp,
> >       .xmo_rx_hash            =3D idpf_xdpmo_rx_hash,
> >  };
> >
> >
> > base-commit: e05021a829b834fecbd42b173e55382416571b2c
> > --
> > 2.52.0.rc2.455.g230fcf2819-goog
>
