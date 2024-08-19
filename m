Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD84956F51
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 17:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 471B56081E;
	Mon, 19 Aug 2024 15:55:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pW5sVY-PBKoR; Mon, 19 Aug 2024 15:55:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BF7E607D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724082915;
	bh=sIOAt7qcIh7yk+Ak6kXM6rwImTNnnUyR1orHAIYs4r4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=06AH3fSatrdqVaQB9CtwlsJbKiAaoGEG7T5KC8ARHZ4RAgpSR78Y1v+Yv6LKNlrZ2
	 n5THJRMH1tiMvBOKo0nLYt20JLUNG2LUwZW2DKyFkVyyITBS3Vr1FtUmDSY9BfWNMM
	 DKhCc7amzvbUVsAWnd7wbTdaa/NvE0sIEm+CUGJfFAY/9SO/patgDy2v7pbWQ+Ll+N
	 7I+32mOXAEDKfq8khHRWPyaOeHjwvqZv3EZBhZix6kY03dpjh8tBdJbqK278TKhOHO
	 QMk/19KuZ4g3FbxLuxvc/dpecLauJi3zaowcqPFE0aDvNh9AjYbEkull306IC8p4/W
	 hOoLQHuVBaLFw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BF7E607D7;
	Mon, 19 Aug 2024 15:55:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C91B61BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 15:55:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B504B607A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 15:55:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rN3QUXp0Y7-G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 15:55:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8C09860684
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C09860684
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C09860684
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 15:55:11 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-4281faefea9so35210185e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 08:55:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724082909; x=1724687709;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sIOAt7qcIh7yk+Ak6kXM6rwImTNnnUyR1orHAIYs4r4=;
 b=WgbnmTOIlAyw2Be7/APcRbFxsjU10Nod5BWcDDAyBDgV6AzAH0myVpKH+dO3Yfoqk1
 Pw33Z7SSOeqKf4eHJ8dDH5iAWCUs3ZQjpq3C7yHiZVAs8tVG9lyvrBuWX+jNobbN4Gf4
 jWaMWRK73OUu2+iqjke7QFXIEhGXBmfG/71ZygztmgO598PUDEEoa02sO+20c1z3tC+x
 XCE1R97uGKUG7h469BsaxqHG5wnuTaszVI8eK9D9tJB8xaX3GL88R+52MOzHvoGEppu5
 gy8nNYukq8ac675hSiC+2TbBao5QsIl9YRRvX4kmY8iKh4PV2DXWqaqM9N3EwOILGUDw
 KH0A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVLuRRCins391Xk4fj53hAC8TS0mSJofxb8ukYxf3bC0a+JMcN+9AXz1BAjLvP6Q0dR4YBFkb5q5uF5FBvvhQ6jiggLCxab4s0c/cxkmxhu4Q==
X-Gm-Message-State: AOJu0Yz7bV6oaCejxZuZqyOLA4gFNd80GnAAqTCIKabIZpArZ7GD6Co6
 PG4fajI8QoinoyBO6YCUP+pFCUldU3/yG0uVmTD0bRERhzHHexujs+7VVfOgB3vsBM0IVmukzUe
 v4SEK8xjK6Iml8qt7s5bfjF/qH4s=
X-Google-Smtp-Source: AGHT+IH+5SdMMmvczHHbCQS3d2lV+42NHIBp97s6EuIfp9v1lsrp5Tb1uRlaaTz2L+/Rjsor4cGm4qQ4+md5bQzOvmo=
X-Received: by 2002:a05:6000:1006:b0:371:8eaf:3c49 with SMTP id
 ffacd0b85a97d-371946a32a9mr7016301f8f.40.1724082909035; Mon, 19 Aug 2024
 08:55:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240808123714.462740-1-linyunsheng@huawei.com>
 <20240808123714.462740-5-linyunsheng@huawei.com>
 <d1a23116d054e2ebb00067227f0cffecefe33e11.camel@gmail.com>
 <676a2a15-d390-48a7-a8d7-6e491c89e200@huawei.com>
 <CAKgT0Uct5ptfs9ZEoe-9u-fOVz4HLf+5MS-YidKV+xELCBHKNw@mail.gmail.com>
 <3e069c81-a728-4d72-a5bb-3be00d182107@huawei.com>
In-Reply-To: <3e069c81-a728-4d72-a5bb-3be00d182107@huawei.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 19 Aug 2024 08:54:32 -0700
Message-ID: <CAKgT0UcDDFeMqD_eRe1-2Og0GEEFyNP90E9SDxDjskdgtMe0Uw@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1724082909; x=1724687709; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sIOAt7qcIh7yk+Ak6kXM6rwImTNnnUyR1orHAIYs4r4=;
 b=JDthS/7j6LIPncmMHtA/zJ9yUL7txAxFeR5xWvv6j+56IptsXMwVdATFOiBLcu7++8
 QL4SzVsAKMVFB9x4aSAZSR2GFeFLHwfPEFNYFii30kj3tQW32WcRGSDOH8QJOBtKJ6u1
 M7nywNtB4ErcZBHkvOk8QCqYgibPTO/rDV0krwVTlQ5Q3f5B/evXHXy/9IaIIJS63BDu
 RLHdIz6q4M6uFTHfjTyfuEHRKGJMuyHiOOZq8jNc/KFwxDoYXRR7Vp4D1GVIFh1vzVgZ
 0ux4MbYEutcyRFaBT1Hbyw03sOGMT+clZc/kLKATq0wslX7uB60WaBi9fPRXMhVGVRY9
 jnzg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=JDthS/7j
Subject: Re: [Intel-wired-lan] [PATCH net-next v13 04/14] mm: page_frag: add
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
 linux-nvme@lists.infradead.org, Dai Ngo <Dai.Ngo@oracle.com>,
 David Howells <dhowells@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Shuah Khan <shuah@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna@kernel.org>,
 Jeroen de Borst <jeroendb@google.com>, Sagi Grimberg <sagi@grimberg.me>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 linux-afs@lists.infradead.org,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sunil Goutham <sgoutham@marvell.com>, linux-kselftest@vger.kernel.org,
 Chaitanya Kulkarni <kch@nvidia.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
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

On Fri, Aug 16, 2024 at 4:55=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.co=
m> wrote:
>
> On 2024/8/15 23:00, Alexander Duyck wrote:
> > On Wed, Aug 14, 2024 at 8:00=E2=80=AFPM Yunsheng Lin <linyunsheng@huawe=
i.com> wrote:
> >>
> >> On 2024/8/14 23:49, Alexander H Duyck wrote:
> >>> On Thu, 2024-08-08 at 20:37 +0800, Yunsheng Lin wrote:
> >>>> Currently the page_frag API is returning 'virtual address'
> >>>> or 'va' when allocing and expecting 'virtual address' or
> >>>> 'va' as input when freeing.
> >>>>
> >>>> As we are about to support new use cases that the caller
> >>>> need to deal with 'struct page' or need to deal with both
> >>>> 'va' and 'struct page'. In order to differentiate the API
> >>>> handling between 'va' and 'struct page', add '_va' suffix
> >>>> to the corresponding API mirroring the page_pool_alloc_va()
> >>>> API of the page_pool. So that callers expecting to deal with
> >>>> va, page or both va and page may call page_frag_alloc_va*,
> >>>> page_frag_alloc_pg*, or page_frag_alloc* API accordingly.
> >>>>
> >>>> CC: Alexander Duyck <alexander.duyck@gmail.com>
> >>>> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> >>>> Reviewed-by: Subbaraya Sundeep <sbhatta@marvell.com>
> >>>> Acked-by: Chuck Lever <chuck.lever@oracle.com>
> >>>> Acked-by: Sagi Grimberg <sagi@grimberg.me>
> >>>> ---
> >>>>  drivers/net/ethernet/google/gve/gve_rx.c      |  4 ++--
> >>>>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  2 +-
> >>>>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 +-
> >>>>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  2 +-
> >>>>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  4 ++--
> >>>>  .../marvell/octeontx2/nic/otx2_common.c       |  2 +-
> >>>>  drivers/net/ethernet/mediatek/mtk_wed_wo.c    |  4 ++--
> >>>>  drivers/nvme/host/tcp.c                       |  8 +++----
> >>>>  drivers/nvme/target/tcp.c                     | 22 +++++++++-------=
---
> >>>>  drivers/vhost/net.c                           |  6 ++---
> >>>>  include/linux/page_frag_cache.h               | 21 +++++++++-------=
--
> >>>>  include/linux/skbuff.h                        |  2 +-
> >>>>  kernel/bpf/cpumap.c                           |  2 +-
> >>>>  mm/page_frag_cache.c                          | 12 +++++-----
> >>>>  net/core/skbuff.c                             | 16 +++++++-------
> >>>>  net/core/xdp.c                                |  2 +-
> >>>>  net/rxrpc/txbuf.c                             | 15 +++++++------
> >>>>  net/sunrpc/svcsock.c                          |  6 ++---
> >>>>  .../selftests/mm/page_frag/page_frag_test.c   | 13 ++++++-----
> >>>>  19 files changed, 75 insertions(+), 70 deletions(-)
> >>>>
> >>>
> >>> I still say no to this patch. It is an unnecessary name change and ad=
ds
> >>> no value. If you insist on this patch I will reject the set every tim=
e.
> >>>
> >>> The fact is it is polluting the git history and just makes things
> >>> harder to maintain without adding any value as you aren't changing wh=
at
> >>> the function does and there is no need for this. In addition it just
> >>
> >> I guess I have to disagree with the above 'no need for this' part for
> >> now, as mentioned in [1]:
> >>
> >> "There are three types of API as proposed in this patchset instead of
> >> two types of API:
> >> 1. page_frag_alloc_va() returns [va].
> >> 2. page_frag_alloc_pg() returns [page, offset].
> >> 3. page_frag_alloc() returns [va] & [page, offset].
> >>
> >> You seemed to miss that we need a third naming for the type 3 API.
> >> Do you see type 3 API as a valid API? if yes, what naming are you
> >> suggesting for it? if no, why it is not a valid API?"
> >
> > I didn't. I just don't see the point in pushing out the existing API
> > to support that. In reality 2 and 3 are redundant. You probably only
> > need 3. Like I mentioned earlier you can essentially just pass a
>
> If the caller just expect [page, offset], do you expect the caller also
> type 3 API, which return both [va] and [page, offset]?
>
> I am not sure if I understand why you think 2 and 3 are redundant here?
> If you think 2 and 3 are redundant here, aren't 1 and 3 also redundant
> as the similar agrument?

The big difference is the need to return page and offset. Basically to
support returning page and offset you need to pass at least one value
as a pointer so you can store the return there.

The reason why 3 is just a redundant form of 2 is that you will
normally just be converting from a va to a page and offset so the va
should already be easily accessible.

> > page_frag via pointer to the function. With that you could also look
> > at just returning a virtual address as well if you insist on having
> > something that returns all of the above. No point in having 2 and 3 be
> > seperate functions.
>
> Let's be more specific about what are your suggestion here: which way
> is the prefer way to return the virtual address. It seems there are two
> options:
>
> 1. Return the virtual address by function returning as below:
> void *page_frag_alloc_bio(struct page_frag_cache *nc, struct bio_vec *bio=
);
>
> 2. Return the virtual address by double pointer as below:
> int page_frag_alloc_bio(struct page_frag_cache *nc, struct bio_vec *bio,
>                         void **va);

I was thinking more of option 1. Basically this is a superset of
page_frag_alloc_va that is also returning the page and offset via a
page frag. However instead of bio_vec I would be good with "struct
page_frag *" being the value passed to the function to play the role
of container. Basically the big difference between 1 and 2/3 if I am
not mistaken is the fact that for 1 you pass the size, whereas with
2/3 you are peeling off the page frag from the larger page frag cache
after the fact via a commit type action.
