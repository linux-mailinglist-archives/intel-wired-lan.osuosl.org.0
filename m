Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E195AC957E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 02:27:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1CA2819BE;
	Mon,  1 Dec 2025 01:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lu9i_pcr0NRW; Mon,  1 Dec 2025 01:27:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D68F819D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764552466;
	bh=ehYGc97IwrLDHQvpTuRv7v/3RImO4vhIDaHvlIMcxcE=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=12B9cdQ+kfpRRYqScm2nijWSDj0gR0dfHDPuyO6AUfGLPevCwMQb0Pwhd5SHt1iMi
	 ZKlNebvZrAXWpCENeTvikAxizqJDwAn1eaOiu1sHesXQS7i6qLM4DA7J/A6GKbKWsf
	 PwF9nzlQkX5TMZGNeBjfDGr8AmhcPi/qGYd1POTETsmus7629dow/b6ePXmJviC79h
	 8ZbyGGtxPvk7S3+Sz9tgaXH7BQ0qW7P+M6sCZqx5CU0enDJe7KAQLWDvBG75zct9QV
	 wQsVOCsoe0JtbGs0Hr4wowxWs52uAcBAxrq89rgqWsMYFapbaICk5EB9mw6oq00bG+
	 7nr+0jP4D4yOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D68F819D2;
	Mon,  1 Dec 2025 01:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CE43D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 01:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E777A404B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 01:27:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LidVyk_RvTnm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 01:27:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C4FBF40116
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4FBF40116
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4FBF40116
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 01:27:42 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-59434b28624so22301e87.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Nov 2025 17:27:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764552460; x=1765157260;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ehYGc97IwrLDHQvpTuRv7v/3RImO4vhIDaHvlIMcxcE=;
 b=u0k54U8FIvQbC/UZ52Q0mU87F14MjKBt+fgkmlf397TqLCGkbUNx77O9HBa5QbYrg0
 svHv2fDIkfii7z7eAqJKmmJd/O1dqL9ulTH7jEApW8FdYNvEdk7vFV+U2x5vmJM/KUAF
 099EdIP8HFEu612c0m5kaGwItuVv9VetoNPUEV95FHdnKMX3PNxpeVa+/T/sgJdrbeS5
 g4/2AMtPFCM821cYN8idZtWoslBso7Xo4iOXnlHWzRozhOJ+HoyHNSTWH7UDhdUzHuVh
 AgbcoiyUJBmo5D7Gz+vp3+vCAhrWMbK4Wmg0dRQCpofBbNsR+Admd4zKOlHSX7ybMNYu
 zM1w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUyCmOdiFgklRQoX1z/YlXwza5bf/FLCPWAz01dGUrQRmLKYi9KKXWEGTqJjc1/c7cb7riBdBcWjaGKFoget6s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyygY4APbk3txxGdSnIoTo/JJhYNBUFlCrkrZ3RtgPfXjXIik2D
 16615EShTIrHbhZS+F2OXb4gcCMSyKU/J3vAP1iFl7QevDD6XbztxTWTHM/vVJcEK1ugsDAu5ec
 rWTy7LRCgASrP+7t+RCteCmsdF9oa5uopgfZZOAzv
X-Gm-Gg: ASbGncuPAYYz9l3AvS0sOEzghoGULtV0QGoiKMDsz2h61oCZNj4yjLbDpCBKt2O/vLZ
 PL1+QFfH4n5FK+Iuok2PqXHR+yIBapK6sj9ap9OKjKZ5qCQTsEq+P7t0F8ox91BHuYsd065ZP8k
 o+V3pMJxnN3EMYcOn4QT3BcDQg23LYHLxxixtMcmI6qng4omC9pRfPphdgru0cTpt+mmECSe6tS
 d9nOeT3/jsgAOPVQHBdakFahMSxsu4e3amv85OWT7ecZm0pu29ycRSOqHNKkVDm802iWvY=
X-Google-Smtp-Source: AGHT+IGUtxtVROoFL9XWjzu7VOF6oLjMb/cN+4biEc3EnHVPC3Y1fSDYFJip1ZsrUhL2CHurERDtTpPY0GeOtj8Rxik=
X-Received: by 2002:a05:6512:1343:b0:596:9b1c:95da with SMTP id
 2adb3069b0e04-596bdce2767mr186845e87.17.1764552460026; Sun, 30 Nov 2025
 17:27:40 -0800 (PST)
MIME-Version: 1.0
References: <20251122140839.3922015-1-almasrymina@google.com>
 <DS4PPF7551E6552ECCF95AE9C177DEF07F8E5D0A@DS4PPF7551E6552.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF7551E6552ECCF95AE9C177DEF07F8E5D0A@DS4PPF7551E6552.namprd11.prod.outlook.com>
From: Mina Almasry <almasrymina@google.com>
Date: Sun, 30 Nov 2025 19:27:26 -0600
X-Gm-Features: AWmQ_bntuE3GnpzJMZaG9Cr3R1vpsBmf3PJosTlld9e_VcSuzfSnUowwDbN3jGY
Message-ID: <CAHS8izOjZxEgBmYEhZanp57ukCYU5i5FdWfx5HO5+Ua2V3Owsg@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 YiFei Zhu <zhuyifei@google.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1764552460; x=1765157260; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ehYGc97IwrLDHQvpTuRv7v/3RImO4vhIDaHvlIMcxcE=;
 b=sKsj2wRGbEo5xqLDumiRli4u3ZZHLn9tbeFeQxXncRcFQtwqKDEt+0G4+o5ILwRr+m
 t3MsSnubB7G2dFXIPfJaOZZ2IkPcQ74DvG6wCPJtVzxOhYn5IQbl0Q7dSs/DjjjZ//VZ
 RWkA8teOyMuekV9zYVd8esCCFBaWRPfwf2fpiaMTm1+tcWGpttEZ5TDN40unY0YVgWZ9
 K5qKHZmyPWvUkIuk1IKSJeAsKYDpwDEhG+H6dbGuQivSdNkOZ5grWLjV5bc6nnBeVdHE
 rkNItET/SxACDsgNdhnS5JTSxRh3DAJesWJH16iP+CNFI8GdOduufXs42TXUDnLHdYF/
 mV3w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=sKsj2wRG
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

On Mon, Nov 24, 2025 at 2:33=E2=80=AFAM Loktionov, Aleksandr
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
>

Hey, sorry for the late reply. Initially when I read the reply, I
thought: "why not, lets add a leXX_to_cpu".

But now that I look closer to implement the change and submit v2, it
looks correct as written. ts_low is defined as a u8:

```
struct virtchnl2_rx_flex_desc_adv_nic_3 {
...
u8 ts_low;
```

So it should not be fed into any leXX_to_cpu() functions, no?

I also looked at other u8 members in this struct like `u8
status_err0_qw0` and `u8 status_err0_qw1`, and both are used in
existing code without a conversion. So it seems correct as written.
Can you reconsdirer?

If you insist some change is required, can you elaborate more on what
needs to be changed? There is no le8_to_cpu, unless a trivial one that
does nothing (one byte struct cannot be little or big endian).
