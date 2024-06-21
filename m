Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BBD912AD3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 18:05:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4080A42E5E;
	Fri, 21 Jun 2024 16:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hDeYZILVuMxd; Fri, 21 Jun 2024 16:05:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29FAA42E79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718985934;
	bh=D2aLeA46ZAcGtDVAAuPO+bTYmu9QSz8VmaNmucxcUMo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xYE+rsxG2HEXUp5KaaSZ5LSzgsIecgm7MHX9S/BdTi1nk5/5CG2FvQ0ZCznXoxqpN
	 VZiBFfbGB8eZzrU2p9qBpQ4xASXbrgMd9ftGsvV/TPWFv6nATvvHmnXmBd8WnqDpbx
	 6qTMQI4ups9ASqVTE1WEjORYSJlJ8UtAauSUGz3BXG+zammJiFr2d7T/KfVcnwcwZM
	 NxXRs6ubDob7J6BFLEOzYfL1zomA/F64y2xn/FVQIodm5W6TYg9Xom2u4756EfonYj
	 J1D85GtCNFAH91t7hOJ7Y6J3nSFTVvuNta4DdpqPonAo3EYwTMRtTEYlKzxLPYQxjr
	 4ZE2wmTrEPgnw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29FAA42E79;
	Fri, 21 Jun 2024 16:05:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AEA8A1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 16:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C958C4369B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 16:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 618ReoUvUGms for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 16:05:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=yan@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4BAE14029B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BAE14029B
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BAE14029B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 16:05:29 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-57d280e2d5dso1766199a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 09:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718985927; x=1719590727;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=D2aLeA46ZAcGtDVAAuPO+bTYmu9QSz8VmaNmucxcUMo=;
 b=HE7wATJQAwgvejHr/VtBWyoPZWqyyI7laIbGsR2Bigm8Q5MhN17ILBjlecAF8JgfYu
 nVYamyLGLNddk8Q1NVf1NJdynMIpFhGtHFiyDrDwykzOH6eyxm8CoTKIXcYLZomIhFbl
 UB0SR0upuFLUsUv8cqn4c31UcUeFabnOC3CDUyFrG+VLUS+4UksBwMIDj8MIwtGGrrrL
 Irpil+MF+qBZ6pHFnKgauKR08a9qE6M/WBt89PeKET/8X2sjK9xB7qqM3asFDUOUkacg
 wUOSlsqzze1RRXi+6DWSG3voFJEB+dMzIPjFskrTz6sJyCbSMXoi2RUWOaul8CAnx4WC
 yVTQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNPe1J86MeECKEjxix6Vn17Sj7FInYGmhklqtpfOdtaVDhltU2IDdRPK4pQFbCFpdqCUITb4pSck9HLyztrcz/oX5Bd2SzR5zTuus7Wbxf1Q==
X-Gm-Message-State: AOJu0YyXLtG7rKHN3/7GD11wiqPYoYeIIKu/irk/cOsLLG1FaEooiZDC
 KFbvxGucCYKYaCKLtasclpoQXSYfoAOFjLZAUaEraGiqyLgPsFs9j0Vt3qM77A8D4ONdI7V3s0M
 oZI7N6SpF0jE4nxSv58GV0mkWvDtI6rBLTrUpYA==
X-Google-Smtp-Source: AGHT+IGD3zOZ+DlFfttlvVbViNyesT1FVgv0TCou1a6PzL45XRc693Rl+UIwHlsumxzTa5uTopBV2v3bgejeyto8xfA=
X-Received: by 2002:a50:9e67:0:b0:57d:57c:ce99 with SMTP id
 4fb4d7f45d1cf-57d07e68e29mr4776325a12.2.1718985927129; Fri, 21 Jun 2024
 09:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1718919473.git.yan@cloudflare.com>
 <a9eba425bfd3bfac7e7be38fe86ad5dbff3ae01f.1718919473.git.yan@cloudflare.com>
 <6414deb0-165c-4a98-8467-ba6949166f96@intel.com>
In-Reply-To: <6414deb0-165c-4a98-8467-ba6949166f96@intel.com>
From: Yan Zhai <yan@cloudflare.com>
Date: Fri, 21 Jun 2024 11:05:16 -0500
Message-ID: <CAO3-PbrVbOo9ydrtc7kfWitXrnftgT3QGpub3y2K209L0jis1Q@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1718985927; x=1719590727;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=D2aLeA46ZAcGtDVAAuPO+bTYmu9QSz8VmaNmucxcUMo=;
 b=CIEOhDWfK5GoFQv7NDnz1Jx15hNRxF+l+flz0WSQRqQkMzqsTUll3D8oVNhEIGa7tF
 71SSoXMCKmVqaZrN0ER9s8mtKPzUZAtP1Lze6RrdPFA2Bw74VMtk/9AZLxTMldysl7Rp
 iXWmmvVqIby3K0zSCB2UfMaNSYhJr2X/IEno+a4qNTqOKP7PYR47CM1dFd7fzsaNniWN
 tJaxmggV1o4tCHz0exbi011wHWxssuHBvwP002AhTPaFsiZu3CkS1ihpf68lz/6kCGV3
 KJvCjEbXmvdKYOjZvOxyZkH1IpmHl76L+dubxVPqFq5+91QIAyC+QuSr6faneX9zRNvL
 V5SQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=CIEOhDWf
Subject: Re: [Intel-wired-lan] [RFC net-next 5/9] ice: apply XDP offloading
 fixup when building skb
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-kernel@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 21, 2024 at 4:22=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Yan Zhai <yan@cloudflare.com>
> Date: Thu, 20 Jun 2024 15:19:22 -0700
>
> > Add a common point to transfer offloading info from XDP context to skb.
> >
> > Signed-off-by: Yan Zhai <yan@cloudflare.com>
> > Signed-off-by: Jesper Dangaard Brouer <hawk@kernel.org>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_txrx.c | 2 ++
> >  drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +++++-
> >  include/net/xdp_sock_drv.h                | 2 +-
> >  3 files changed, 8 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/et=
hernet/intel/ice/ice_txrx.c
> > index 8bb743f78fcb..a247306837ed 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > @@ -1222,6 +1222,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring,=
 int budget)
> >
> >                       hard_start =3D page_address(rx_buf->page) + rx_bu=
f->page_offset -
> >                                    offset;
> > +                     xdp_init_buff_minimal(xdp);
>
> Two lines below, you have this:
>
>         xdp_buff_clear_frags_flag(xdp);
>
> Which clears frags bit in xdp->flags. I.e. since you always clear flags
> here, this call becomes redundant.
> But I'd say that `xdp->flags =3D 0` really wants to be moved from
> xdp_init_buff() to xdp_prepare_buff().
>
You are right, there is some redundancy here. I will fix it if people
feel good about the use case in general :)


> >                       xdp_prepare_buff(xdp, hard_start, offset, size, !=
!offset);
> >  #if (PAGE_SIZE > 4096)
> >                       /* At larger PAGE_SIZE, frame_sz depend on len si=
ze */
> > @@ -1287,6 +1288,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring,=
 int budget)
> >
> >               /* populate checksum, VLAN, and protocol */
> >               ice_process_skb_fields(rx_ring, rx_desc, skb);
> > +             xdp_buff_fixup_skb_offloading(xdp, skb);
> >
> >               ice_trace(clean_rx_irq_indicate, rx_ring, rx_desc, skb);
> >               /* send completed skb up the stack */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/eth=
ernet/intel/ice/ice_xsk.c
> > index a65955eb23c0..367658acaab8 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > @@ -845,8 +845,10 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_rin=
g, int budget)
> >       xdp_prog =3D READ_ONCE(rx_ring->xdp_prog);
> >       xdp_ring =3D rx_ring->xdp_ring;
> >
> > -     if (ntc !=3D rx_ring->first_desc)
> > +     if (ntc !=3D rx_ring->first_desc) {
> >               first =3D *ice_xdp_buf(rx_ring, rx_ring->first_desc);
> > +             xdp_init_buff_minimal(first);
>
> xdp_buff_set_size() always clears flags, this is redundant.
>
> > +     }
> >
> >       while (likely(total_rx_packets < (unsigned int)budget)) {
> >               union ice_32b_rx_flex_desc *rx_desc;
> > @@ -920,6 +922,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring=
, int budget)
> >                       break;
> >               }
> >
> > +             xdp =3D first;
> >               first =3D NULL;
> >               rx_ring->first_desc =3D ntc;
> >
> > @@ -934,6 +937,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring=
, int budget)
> >               vlan_tci =3D ice_get_vlan_tci(rx_desc);
> >
> >               ice_process_skb_fields(rx_ring, rx_desc, skb);
> > +             xdp_buff_fixup_skb_offloading(xdp, skb);
> >               ice_receive_skb(rx_ring, skb, vlan_tci);
> >       }
> >
> > diff --git a/include/net/xdp_sock_drv.h b/include/net/xdp_sock_drv.h
> > index 0a5dca2b2b3f..02243dc064c2 100644
> > --- a/include/net/xdp_sock_drv.h
> > +++ b/include/net/xdp_sock_drv.h
> > @@ -181,7 +181,7 @@ static inline void xsk_buff_set_size(struct xdp_buf=
f *xdp, u32 size)
> >       xdp->data =3D xdp->data_hard_start + XDP_PACKET_HEADROOM;
> >       xdp->data_meta =3D xdp->data;
> >       xdp->data_end =3D xdp->data + size;
> > -     xdp->flags =3D 0;
> > +     xdp_init_buff_minimal(xdp);
>
> Why is this done in the patch prefixed with "ice:"?
>
Good catch, this should be moved to the previous patch.

thanks
Yan

> >  }
> >
> >  static inline dma_addr_t xsk_buff_raw_get_dma(struct xsk_buff_pool *po=
ol,
>
> Thanks,
> Olek
