Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3459486C1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 02:52:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EEF5810A4;
	Tue,  6 Aug 2024 00:52:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4DPyg06MxP2I; Tue,  6 Aug 2024 00:52:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25A8B81114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722905572;
	bh=vbMs5Emme3Wh6YV9L5YnP1YT4GqHd5pCxV5C0hflVMM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M/wCZNbhu+3I4g3npPLh62ncfu58sOVoJsGZJ5tI3JWfAH3imL7ccJYlEceojnoqD
	 lZHDGrz1wV89+DqRgu+zCkmhG0AsHKKVb3x0VLvwyLqkS9xGZlLii/JPjQv8nNInYW
	 6iEmxs6GuQDIUx480evYFynFOQQVCGeOPtdX7zTxvqOU2J7k1XlNWS1Ju4AsvX1KiV
	 C2SgWGq9dcsr3FHnTYRTZEXOgmUTvbO7t7vJ3CIzfhzE2GxRhxHOKGmn1uEbi6jo6I
	 DOYh9e8n59rsQLGl1nR0JLAl4Jh9dYbRgSD7S72NVOsVrIfUke/0+I7jetsE1txL4S
	 YPYeUC55AYv/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25A8B81114;
	Tue,  6 Aug 2024 00:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32A8D1BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 00:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B93C607A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 00:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id La_3t25W7bRu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 00:52:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE6F9600D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE6F9600D1
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE6F9600D1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 00:52:46 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-4281d812d3eso870405e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Aug 2024 17:52:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722905564; x=1723510364;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vbMs5Emme3Wh6YV9L5YnP1YT4GqHd5pCxV5C0hflVMM=;
 b=HJ00sytzwCTo2bBcLhcCCPL8+sZHvq/3lad+nkMochj3WblscczVvBCnLV4JfiOX/W
 /sgQK/gI89ByRUGkmOXOZW0wgvpC/ybUQsISYw/AUEG3cPx2qQKjHyht2A8YSW4ix9OE
 tYa+kxA7MXNIQF49umDn/ixcItfwfql5yaC8u0tq1l8gFmbv8I2I1lxiXQZQFg8GGn9r
 v0VIl5V2aCQVoQfVscRAdZAVABEkm66ggNlebQyxLUcK6vVFOUbNQ7coQ+RQkK5oNQWO
 t+VrStLRNN4AMCsQLlryMr9AfYKaoWuyJAsW7YrzGtYnht973wGgVafhjbcvHOfOtoI6
 y2Zw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWFiSkj7aaNLZ9+AyqFNAYc83OupTqWT+YEVHPmEPyZUrzjCZa+vbU/1T6OaCipS6HdckxAhkKlWfS8Jta4/C82qp5I0C94XLSxH1O4dpBUBg==
X-Gm-Message-State: AOJu0Yz1Hv847PXhzqfvIFtBclr6pQD8jXodjbWPxH68uk4MJd/Ki5Pe
 PHh5xMvx+nU/7p7Itj/q7ldnyaxKfemYqBl5f5dEhVEZYl0Fl/LbtYah14jG0lxT10rvUBG9EFu
 Q/qeXUe6WSdwMrRMrWMtF6TkcwTg=
X-Google-Smtp-Source: AGHT+IGqdqorrE2wlr/gRUXIf6uZerGtzKcZj5VR2LPXl0lkIPBaNlvbUHmQ57kNpAjkgdSFWmDjnDGMqxYFtJZpI1s=
X-Received: by 2002:a5d:6042:0:b0:368:7f8f:ca68 with SMTP id
 ffacd0b85a97d-36bbc117fd0mr8920631f8f.30.1722905564079; Mon, 05 Aug 2024
 17:52:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
 <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
 <22fda86c-d688-42e7-99e8-e2f8fcf1a5ba@huawei.com>
 <CAKgT0UcuGj8wvC87=A+hkarRupfhjGM0BPzLUT2AJc8Ovg_TFg@mail.gmail.com>
 <877efebe-f316-4192-aada-dd2657b74125@huawei.com>
 <CAKgT0UfUkqR2TJQt6cSEdANNxQEOkjGqpPXhaXmrrxB0KwXmEQ@mail.gmail.com>
 <2a29ce61-7136-4b9b-9940-504228b10cba@gmail.com>
In-Reply-To: <2a29ce61-7136-4b9b-9940-504228b10cba@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 6 Aug 2024 06:22:08 +0530
Message-ID: <CAKgT0Uc6yw4u5Tjw1i0cV=C_ph+A5w0b_mtQMXmnBfKN_vvaDA@mail.gmail.com>
To: Yunsheng Lin <yunshenglin0825@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722905564; x=1723510364; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vbMs5Emme3Wh6YV9L5YnP1YT4GqHd5pCxV5C0hflVMM=;
 b=SOR/S5Tfn+lU67IOnkEQMmsUKA6bBAgACmWtClC5Sy2IqI3Anymj4odPZj0oiTebKN
 CbMWKUcudEoUMtLwwMwlKQ/xC7oEu2fWeQSj+RhGSfv6kXSwDKvK6OMCLn3Pm7e+KDc0
 9yAiy3PXQd2/vbMPgqhIEClSzRFiQMdXWmBuNuxFWwXFYuPly3/BPA+Ce3fO66nu6UXa
 iimymWJ5XAknALyE5npQ8H0WNdsTs+iOWopvwjaexM+9ScolOkqGBZv74PPnjwTsqCP3
 IUXBzvE1w0Sh5FQG/SnI7txv+HPzqBF3bH6ewoeCp9DPrEdD7gRDRipXwKPEHRjnfmqV
 VLFg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=SOR/S5Tf
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 04/14] mm: page_frag: add
 '_va' suffix to page_frag API
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
Cc: Yonghong Song <yonghong.song@linux.dev>, kvm@vger.kernel.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Neil Brown <neilb@suse.de>,
 Jason Wang <jasowang@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-nvme@lists.infradead.org, Andrii Nakryiko <andrii@kernel.org>,
 David Howells <dhowells@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna@kernel.org>, Jeroen de Borst <jeroendb@google.com>,
 Sagi Grimberg <sagi@grimberg.me>, Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-afs@lists.infradead.org,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sunil Goutham <sgoutham@marvell.com>, Chaitanya Kulkarni <kch@nvidia.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Dai Ngo <Dai.Ngo@oracle.com>,
 Sean Wang <sean.wang@mediatek.com>, virtualization@lists.linux.dev,
 KP Singh <kpsingh@kernel.org>, Tom Talpey <tom@talpey.com>,
 Shailend Chand <shailend@google.com>, linux-mediatek@lists.infradead.org,
 linux-mm@kvack.org, Matthias Brugger <matthias.bgg@gmail.com>,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jens Axboe <axboe@kernel.dk>, Hao Luo <haoluo@google.com>,
 linux-nfs@vger.kernel.org, Song Liu <song@kernel.org>, netdev@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 davem@davemloft.net, Eduard Zingerman <eddyz87@gmail.com>,
 hariprasad <hkelam@marvell.com>, Chuck Lever <chuck.lever@oracle.com>,
 Jiri Olsa <jolsa@kernel.org>, Praveen Kaligineedi <pkaligineedi@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Geetha sowjanya <gakula@marvell.com>,
 Trond Myklebust <trondmy@kernel.org>, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Aug 4, 2024 at 10:00=E2=80=AFAM Yunsheng Lin <yunshenglin0825@gmail=
.com> wrote:
>
> On 8/3/2024 1:00 AM, Alexander Duyck wrote:
>
> >>
> >>>
> >>> As far as your API extension and naming maybe you should look like
> >>> something like bio_vec and borrow the naming from that since that is
> >>> essentially what you are passing back and forth is essentially that
> >>> instead of a page frag which is normally a virtual address.
> >>
> >> I thought about adding something like bio_vec before, but I am not sur=
e
> >> what you have in mind is somthing like I considered before?
> >> Let's say that we reuse bio_vec like something below for the new APIs:
> >>
> >> struct bio_vec {
> >>          struct page     *bv_page;
> >>          void            *va;
> >>          unsigned int    bv_len;
> >>          unsigned int    bv_offset;
> >> };
> >
> > I wasn't suggesting changing the bio_vec. I was suggesting that be
> > what you pass as a pointer reference instead of the offset. Basically
> > your use case is mostly just for populating bio_vec style structures
> > anyway.
>
> I wasn't trying/going to reuse/change bio_vec for page_frag, I was just
> having a hard time coming with a good new name for it.
> The best one I came up with is pfrag_vec, but I am not sure about the
> 'vec' as the "vec" portion of the name would suggest, iovec structures
> tend to come in arrays, mentioned in the below article:
> https://lwn.net/Articles/625077/
>
> Anther one is page_frag, which is currently in use.
>
> Or any better one in your mind?

I was suggesting using bio_vec, not some new structure. The general
idea is that almost all the values you are using are exposed by that
structure already in the case of the page based calls you were adding,
so it makes sense to use what is there rather than reinventing the
wheel.

> >
> >> It seems we have the below options for the new API:
> >>
> >> option 1, it seems like a better option from API naming point of view,=
 but
> >> it needs to return a bio_vec pointer to the caller, it seems we need t=
o have
> >> extra space for the pointer, I am not sure how we can avoid the memory=
 waste
> >> for sk_page_frag() case in patch 12:
> >> struct bio_vec *page_frag_alloc_bio(struct page_frag_cache *nc,
> >>                                      unsigned int fragsz, gfp_t gfp_ma=
sk);
> >>
> >> option 2, it need both the caller and callee to have a its own local s=
pace
> >> for 'struct bio_vec ', I am not sure if passing the content instead of
> >> the pointer of a struct through the function returning is the common p=
attern
> >> and if it has any performance impact yet:
> >> struct bio_vec page_frag_alloc_bio(struct page_frag_cache *nc,
> >>                                     unsigned int fragsz, gfp_t gfp_mas=
k);
> >>
> >> option 3, the caller passes the pointer of 'struct bio_vec ' to the ca=
llee,
> >> and page_frag_alloc_bio() fills in the data, I am not sure what is the=
 point
> >> of indirect using 'struct bio_vec ' instead of passing 'va' & 'fragsz'=
 &
> >> 'offset' through pointers directly:
> >> bool page_frag_alloc_bio(struct page_frag_cache *nc,
> >>                           unsigned int fragsz, gfp_t gfp_mask, struct =
bio_vec *bio);
> >>
> >> If one of the above option is something in your mind? Yes, please be m=
ore specific
> >> about which one is the prefer option, and why it is the prefer option =
than the one
> >> introduced in this patchset?
> >>
> >> If no, please be more specific what that is in your mind?
> >
> > Option 3 is more or less what I had in mind. Basically you would
> > return an int to indicate any errors and you would be populating a
> > bio_vec during your allocation. In addition you would use the bio_vec
>
> Actually using this new bio_vec style structures does not seem to solve
> the APIs naming issue this patch is trying to solve as my understanding,
> as the new struct is only about passing one pointer or multi-pointers
> from API naming perspective. It is part of the API naming, but not all
> of it.

I have no idea what you are talking about. The issue was you were
splitting things page_frag_alloc_va and page_frag_alloc_pg. Now it
would be page_frag_alloc and page_frag_alloc_bio or maybe
page_frag_fill_bio which would better explain what you are doing with
this function.

> > as a tracker of the actual fragsz so when you commit you are
> > committing with the fragsz as it was determined at the time of putting
> > the bio_vec together so you can theoretically catch things like if the
> > underlying offset had somehow changed from the time you setup the
>
> I think we might need a stronger argument than the above to use the new
> *vec thing other than the above debugging feature.
>
> I looked throught the bio_vec related info, and come along somewhat not
> really related, but really helpful "What=E2=80=99s all this get us" secti=
on:
> https://docs.kernel.org/block/biovecs.html
>
> So the question seems to be: what is this new struct for page_frag get
> us?
>
> Generally, I am argeed with the new struct thing if it does bring us
> something other than the above debugging feature. Otherwise we should
> avoid introducing a new thing which is hard to argue about its existent.

I don't want a new structure. I just want you to use the bio_vec for
spots where you are needing to use a page because you are populating a
bio_vec.

> > allocation. It would fit well into your probe routines since they are
> > all essentially passing the page, offset, and fragsz throughout the
> > code.
>
> For the current probe routines, the 'va' need to be passed, do you
> expect the 'va' to be passed by function return, double pointer, or
> new the *_vec pointer?

I would suggest doing so via the *_vec pointer. The problem as I see
it is that the existing code is exposing too much of the internals and
setting up the possibility for a system to get corrupted really
easily. At least if you are doing this with a bio_vec you can verify
that you have the correct page and offset before you move the offset
up by the length which should have been provided by the API in the
first place and not just guessed at based on what the fragsz was that
you requested.
