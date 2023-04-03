Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A8A6D4B73
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 17:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD23240A00;
	Mon,  3 Apr 2023 15:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD23240A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680534519;
	bh=J07Fe7S21403a+FUPTHLjxBggy7fwmGv3JrISO6KuGQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cCMH7HR0cUjppRLjXJrAj9InHYyoXFcQJbKKuAew0PYSF4ZeiJIzXh+E7orFNgIOY
	 SOS3Aif4OeppEHpvBnrNS+x4pR06YJi5LFLBWobfIt56mP9AwaKiBPfcs7Wm4t4VQ8
	 ptppRYEzhjOkJn9kkwj4NGMJzUzkWKq7HXkQ6/i0J4lv87D6RiUvYyvhFnDVWZXb1x
	 Tvb6r4LFG5cAloVL9H3CxvBX6QB3qDNxHYQYnHpg8tkil+osz7+QE3ymHsj3kSAPCl
	 b8ZMqvOGjD2MaWqeuo2iooZrwv8Um1k4coNToiiUGEUOqccWaWQxUjl9Tfd7u5mALm
	 GfVe/VciZnxsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w5YXD59GGsps; Mon,  3 Apr 2023 15:08:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 407D04093B;
	Mon,  3 Apr 2023 15:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 407D04093B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 060791BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 15:08:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF44181266
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 15:08:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF44181266
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LuJCN3Rr0FfV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 15:08:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A856B80C31
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A856B80C31
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 15:08:31 +0000 (UTC)
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-461-LNOZyDfmPoqzk5Lm3OoHTQ-1; Mon, 03 Apr 2023 11:08:25 -0400
X-MC-Unique: LNOZyDfmPoqzk5Lm3OoHTQ-1
Received: by mail-yw1-f199.google.com with SMTP id
 00721157ae682-545d3b026a8so243122847b3.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Apr 2023 08:08:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680534505;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XtGwnEigBI9Yvrkc7ZHK1mame6P5RYuaa0ScvqQAEOQ=;
 b=lMsxVPDhfmZG9RtHZqXofFAjTGP3voubGleEJib3GjTY3Y+J9GTio6J5+cGSqgHU7q
 7Gj2j7xpL7EOvLhr3cA3bb+hz74NbGKtiMZ+QSXyWv/Qt82g2FDmIHdALzxVem91Vn/V
 vriJ+LrgUYU9rPqmpnH/iQ0So+UjdOp4twR8a0wNzD44fFg4IJ1tdLm8LEHCHYzA5DsC
 tiPVVNnQ1IOgOyZ/hflyR7hG9ywDSlKke0mvxl01SNDKtcV3FmN8/fYxIpGs9AsDAhjV
 sFdCm8m8cNpynLXSdJvkzj6rmgLqbEcGm1/+kTwn1VEIUMcKLHSfzxgbJwxeMKPzpg4/
 3NHQ==
X-Gm-Message-State: AAQBX9cQarddhMRqSswb9X2Tcf1uH3Dms5DVGFysM02MClJSBcfz31qO
 oj2mBGNjGC0b4HtKocOBkimCFIGxLaVeZOnzFcs0H5XvoPELvLoCWa2JvgVhdChDLJb9s86xfUv
 4K/19cLHpdMCTJip0Th0FjxG9F7opds6F6KtICIw3F7NJng==
X-Received: by 2002:a25:7649:0:b0:ad2:3839:f49 with SMTP id
 r70-20020a257649000000b00ad238390f49mr11364523ybc.5.1680534505097; 
 Mon, 03 Apr 2023 08:08:25 -0700 (PDT)
X-Google-Smtp-Source: AKy350aRgn8b2vk926orQmLehSnZM5GhccWn+HwPCog+vK4/ac7xGo/kF3CZt3UGjhJe+SFE/sTTvqEIRF0J73dyI7w=
X-Received: by 2002:a25:7649:0:b0:ad2:3839:f49 with SMTP id
 r70-20020a257649000000b00ad238390f49mr11364498ybc.5.1680534504825; Mon, 03
 Apr 2023 08:08:24 -0700 (PDT)
MIME-Version: 1.0
References: <168042409059.4051476.8176861613304493950.stgit@firesoul>
 <168042420344.4051476.9107061652824513113.stgit@firesoul>
 <CAADnVQ+JEP0sOyOOWbYKHackb4PmNYYcDGXnksucJt2mQGwi7g@mail.gmail.com>
In-Reply-To: <CAADnVQ+JEP0sOyOOWbYKHackb4PmNYYcDGXnksucJt2mQGwi7g@mail.gmail.com>
From: Jesper Brouer <jbrouer@redhat.com>
Date: Mon, 3 Apr 2023 17:08:13 +0200
Message-ID: <CADRO9jPNbXW2TymTOS+nJGKLgbVtQRzmQTby=p62Ys1Ruf66Lg@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680534510;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XtGwnEigBI9Yvrkc7ZHK1mame6P5RYuaa0ScvqQAEOQ=;
 b=IOlqoEdbt4GdfSOgsYRcubK/AUdgFT6nv0Zy62MEsz6skXwUDyOff6lAcB2/ndJwTgOoAr
 BCh8Oz5L4fnefmpT2wOgk/lQ9b+0T9Od4pPbnp7FntO4zcnBIfXvBLPHKg/efHS6YLvirl
 PTpDiaWXSi6c5RTmQJUxjKxBG9osBdo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IOlqoEdb
Subject: Re: [Intel-wired-lan] [PATCH bpf V6 5/5] selftests/bpf: Adjust
 bpf_xdp_metadata_rx_hash for new arg
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
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Stanislav Fomichev <sdf@google.com>,
 "Ong, Boon Leong" <boon.leong.ong@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>, linux-rdma@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jesper Dangaard Brouer <brouer@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Martin KaFai Lau <martin.lau@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, Leon Romanovsky <leon@kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>, bpf <bpf@vger.kernel.org>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8985670462691458565=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8985670462691458565==
Content-Type: multipart/alternative; boundary="0000000000003179a105f86feef4"

--0000000000003179a105f86feef4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

s=C3=B8n. 2. apr. 2023 17.50 skrev Alexei Starovoitov <
alexei.starovoitov@gmail.com>:

> On Sun, Apr 2, 2023 at 1:30=E2=80=AFAM Jesper Dangaard Brouer <brouer@red=
hat.com>
> wrote:
> >
> > Update BPF selftests to use the new RSS type argument for kfunc
> > bpf_xdp_metadata_rx_hash.
> >
> > Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> > Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> > Acked-by: Stanislav Fomichev <sdf@google.com>
> > ---
> >  .../selftests/bpf/prog_tests/xdp_metadata.c        |    2 ++
> >  .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   14 +++++++++---=
--
> >  tools/testing/selftests/bpf/progs/xdp_metadata.c   |    6 +++---
> >  tools/testing/selftests/bpf/progs/xdp_metadata2.c  |    7 ++++---
> >  tools/testing/selftests/bpf/xdp_hw_metadata.c      |    2 +-
> >  tools/testing/selftests/bpf/xdp_metadata.h         |    1 +
> >  6 files changed, 20 insertions(+), 12 deletions(-)
> >
> > diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
> b/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
> > index aa4beae99f4f..8c5e98da9ae9 100644
> > --- a/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
> > +++ b/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
> > @@ -273,6 +273,8 @@ static int verify_xsk_metadata(struct xsk *xsk)
> >         if (!ASSERT_NEQ(meta->rx_hash, 0, "rx_hash"))
> >                 return -1;
> >
> > +       ASSERT_EQ(meta->rx_hash_type, 0, "rx_hash_type");
> > +
> >         xsk_ring_cons__release(&xsk->rx, 1);
> >         refill_rx(xsk, comp_addr);
> >
> > diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> > index 4c55b4d79d3d..7b3fc12e96d6 100644
> > --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> > +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> > @@ -14,8 +14,8 @@ struct {
> >
> >  extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
> >                                          __u64 *timestamp) __ksym;
> > -extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,
> > -                                   __u32 *hash) __ksym;
> > +extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32
> *hash,
> > +                                   enum xdp_rss_hash_type *rss_type)
> __ksym;
> >
> >  SEC("xdp")
> >  int rx(struct xdp_md *ctx)
> > @@ -74,10 +74,14 @@ int rx(struct xdp_md *ctx)
> >         else
> >                 meta->rx_timestamp =3D 0; /* Used by AF_XDP as not avai=
l
> signal */
> >
> > -       if (!bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash))
> > -               bpf_printk("populated rx_hash with %u", meta->rx_hash);
> > -       else
> > +       if (!bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash,
> &meta->rx_hash_type)) {
> > +               bpf_printk("populated rx_hash:0x%X type:0x%X",
> > +                          meta->rx_hash, meta->rx_hash_type);
> > +               if (!(meta->rx_hash_type & XDP_RSS_L4))
> > +                       bpf_printk("rx_hash low quality L3 hash type");
> > +       } else {
> >                 meta->rx_hash =3D 0; /* Used by AF_XDP as not avail sig=
nal
> */
> > +       }
>
> Didn't we agree in the previous thread to remove these printks and
> replace them with actual stats that user space can see?
>

This patchset is for bpf-tree RC version of kernel.
Thus, we keep changes to a minimum.

I/we will do printk work on bpf-next.
(Once I get home from vacation next week)

--Jesper
(Sent from Paris on my phone, thus vger will likely drop msg to list)

>

--0000000000003179a105f86feef4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">s=C3=B8n. 2. apr. 2023 17.50 skrev Alexei Starovoitov =
&lt;<a href=3D"mailto:alexei.starovoitov@gmail.com">alexei.starovoitov@gmai=
l.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Sun, Apr 2, 2023 =
at 1:30=E2=80=AFAM Jesper Dangaard Brouer &lt;<a href=3D"mailto:brouer@redh=
at.com" target=3D"_blank" rel=3D"noreferrer">brouer@redhat.com</a>&gt; wrot=
e:<br>
&gt;<br>
&gt; Update BPF selftests to use the new RSS type argument for kfunc<br>
&gt; bpf_xdp_metadata_rx_hash.<br>
&gt;<br>
&gt; Signed-off-by: Jesper Dangaard Brouer &lt;<a href=3D"mailto:brouer@red=
hat.com" target=3D"_blank" rel=3D"noreferrer">brouer@redhat.com</a>&gt;<br>
&gt; Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen &lt;<a href=3D"mailto:toke@=
redhat.com" target=3D"_blank" rel=3D"noreferrer">toke@redhat.com</a>&gt;<br=
>
&gt; Acked-by: Stanislav Fomichev &lt;<a href=3D"mailto:sdf@google.com" tar=
get=3D"_blank" rel=3D"noreferrer">sdf@google.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../selftests/bpf/prog_tests/xdp_metadata.c=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A0 2 ++<br>
&gt;=C2=A0 .../testing/selftests/bpf/progs/xdp_hw_metadata.c=C2=A0 |=C2=A0 =
=C2=A014 +++++++++-----<br>
&gt;=C2=A0 tools/testing/selftests/bpf/progs/xdp_metadata.c=C2=A0 =C2=A0|=
=C2=A0 =C2=A0 6 +++---<br>
&gt;=C2=A0 tools/testing/selftests/bpf/progs/xdp_metadata2.c=C2=A0 |=C2=A0 =
=C2=A0 7 ++++---<br>
&gt;=C2=A0 tools/testing/selftests/bpf/xdp_hw_metadata.c=C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A0 2 +-<br>
&gt;=C2=A0 tools/testing/selftests/bpf/xdp_metadata.h=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<br>
&gt;=C2=A0 6 files changed, 20 insertions(+), 12 deletions(-)<br>
&gt;<br>
&gt; diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c b/t=
ools/testing/selftests/bpf/prog_tests/xdp_metadata.c<br>
&gt; index aa4beae99f4f..8c5e98da9ae9 100644<br>
&gt; --- a/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c<br>
&gt; +++ b/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c<br>
&gt; @@ -273,6 +273,8 @@ static int verify_xsk_metadata(struct xsk *xsk)<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!ASSERT_NEQ(meta-&gt;rx_hash, 0, =
&quot;rx_hash&quot;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -1=
;<br>
&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0ASSERT_EQ(meta-&gt;rx_hash_type, 0, &quot;=
rx_hash_type&quot;);<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0xsk_ring_cons__release(&amp;xsk-&gt;r=
x, 1);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0refill_rx(xsk, comp_addr);<br>
&gt;<br>
&gt; diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/too=
ls/testing/selftests/bpf/progs/xdp_hw_metadata.c<br>
&gt; index 4c55b4d79d3d..7b3fc12e96d6 100644<br>
&gt; --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c<br>
&gt; +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c<br>
&gt; @@ -14,8 +14,8 @@ struct {<br>
&gt;<br>
&gt;=C2=A0 extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ct=
x,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 __u64 *timestamp) __ksym;<br>
&gt; -extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__u32 *hash) __ksym=
;<br>
&gt; +extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *=
hash,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0enum xdp_rss_hash_t=
ype *rss_type) __ksym;<br>
&gt;<br>
&gt;=C2=A0 SEC(&quot;xdp&quot;)<br>
&gt;=C2=A0 int rx(struct xdp_md *ctx)<br>
&gt; @@ -74,10 +74,14 @@ int rx(struct xdp_md *ctx)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-&gt;=
rx_timestamp =3D 0; /* Used by AF_XDP as not avail signal */<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!bpf_xdp_metadata_rx_hash(ctx, &amp;me=
ta-&gt;rx_hash))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bpf_printk(&qu=
ot;populated rx_hash with %u&quot;, meta-&gt;rx_hash);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!bpf_xdp_metadata_rx_hash(ctx, &amp;me=
ta-&gt;rx_hash, &amp;meta-&gt;rx_hash_type)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bpf_printk(&qu=
ot;populated rx_hash:0x%X type:0x%X&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 meta-&gt;rx_hash, meta-&gt;rx_hash_type);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(meta-&gt=
;rx_hash_type &amp; XDP_RSS_L4))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0bpf_printk(&quot;rx_hash low quality L3 hash type&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-&gt;=
rx_hash =3D 0; /* Used by AF_XDP as not avail signal */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
Didn&#39;t we agree in the previous thread to remove these printks and<br>
replace them with actual stats that user space can see?<br></blockquote></d=
iv></div><div dir=3D"auto"><br></div><div dir=3D"auto">This patchset is for=
 bpf-tree RC version of kernel.</div><div dir=3D"auto">Thus, we keep change=
s to a minimum.</div><div dir=3D"auto"><br></div><div dir=3D"auto">I/we wil=
l do printk work on bpf-next.</div><div dir=3D"auto">(Once I get home from =
vacation next week)<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
--Jesper=C2=A0</div><div dir=3D"auto">(Sent from Paris on my phone, thus vg=
er will likely drop msg to list)</div><div dir=3D"auto"><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"></blockquote></div></div></div>

--0000000000003179a105f86feef4--


--===============8985670462691458565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8985670462691458565==--

