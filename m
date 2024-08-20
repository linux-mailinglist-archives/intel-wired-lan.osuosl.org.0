Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB685958BDE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 18:03:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09E85406BF;
	Tue, 20 Aug 2024 16:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iesKvtqLPNAT; Tue, 20 Aug 2024 16:03:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 843ED406BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724169820;
	bh=ACxpErlOvFQuBRokph/wthh0GeLIFddWl+sG+UC+KHk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H+49oBCiqyPy71YT0oWa2Eq0Y4trq+ErYcsXLILfDe1ZfFWdHP5xohiDrQU+9W/dF
	 40DB/WPlBecU2Wu+iP1Qa6uaHd7608yZx87G1hBlnXJAJ03o0DIp+lAEIi4OVOJokW
	 XOv/oFByvQfo1rfalH57X6v9eP1aOS1nPCFPlRbjh+Dmg1J8bJJEXin0JA33uIAx6+
	 14AXwo1xJnVmgUnP5Lz3jAo1muF3JQUUHBCpmSAP8FCroSdUPZcJU/3lhGNNJKv9Ef
	 zgrrl5ydok2WPg/PAFonDplliXf663s4z8oYvHQmMcoskYpaXM2X1qAymF26Jcw6nF
	 9hvEQ2T2fNPog==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 843ED406BC;
	Tue, 20 Aug 2024 16:03:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3221A1BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 16:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1EB4660A89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 16:03:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nk8swcB3aLFj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 16:03:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB7B3606C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB7B3606C5
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB7B3606C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 16:03:37 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-42819654737so45025325e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 09:03:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724169815; x=1724774615;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ACxpErlOvFQuBRokph/wthh0GeLIFddWl+sG+UC+KHk=;
 b=HkhGGD3LmcocJTglaTxukwpjC3AeS0aJu7L24VsAIem8mrEcUg7GzMTIDhooNseb5M
 lkm1UhopxPv8S8PvZpDvK3ybC7J7NNfplAZlA8oCtp77RD+/dY52fx6AeT+PhacmGOCL
 9GIbW1dZ15LNCJFLq45YzqJ3pWTD2dchUh+ZJbEPbCHEHWU1YawBRwPTn5ZxclmPec+X
 2YCnlncznlfCvLiop0JJfmWnskyhWnK5WFR8LxIi3BAVRVetkZ/yy4bSnNNqgc2FW4j8
 I+yFIokZaU9bN0/sIgI23TQAA5OPhR/TO5RniF16E5y7KMMv6yTdvC4ONWK8nk2BEaJx
 X4vg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZWvhxwc8Z4QSwk1BWbrleyzl43VYbQNFqHoZLLQt2TskmWgUBVkieSRP82HKp6wW26C0n0+gnw1ZeByaWGFc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YysZJqj7SwPIGsYxgdQWv65JI0a82Vetfig9VmKxlE1D1f3+rh3
 hn8FXlkxKBA+y+ojqMj3TUPHo76RLk6orhCI8/2G/4uLBeWblqmtGLmI1w/60URuNCN5Li7WxSj
 x8pJRJ+JMJJtmt2lJGAAGvMcHAB8=
X-Google-Smtp-Source: AGHT+IF4DoS60WZqDqVaq8Y/5SjjI7zscaIxzpj60ezQwLm3viTYLpGZpmD+jTekneRZUAoDJMoW7JwgYwWaXYZHKdQ=
X-Received: by 2002:adf:f285:0:b0:371:888d:7aaa with SMTP id
 ffacd0b85a97d-371946b1ae9mr9087932f8f.49.1724169814881; Tue, 20 Aug 2024
 09:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240808123714.462740-1-linyunsheng@huawei.com>
 <20240808123714.462740-5-linyunsheng@huawei.com>
 <d1a23116d054e2ebb00067227f0cffecefe33e11.camel@gmail.com>
 <676a2a15-d390-48a7-a8d7-6e491c89e200@huawei.com>
 <CAKgT0Uct5ptfs9ZEoe-9u-fOVz4HLf+5MS-YidKV+xELCBHKNw@mail.gmail.com>
 <3e069c81-a728-4d72-a5bb-3be00d182107@huawei.com>
 <CAKgT0UcDDFeMqD_eRe1-2Og0GEEFyNP90E9SDxDjskdgtMe0Uw@mail.gmail.com>
 <98ceade3-8d60-45bf-a419-ff3982a96101@huawei.com>
In-Reply-To: <98ceade3-8d60-45bf-a419-ff3982a96101@huawei.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 20 Aug 2024 09:02:57 -0700
Message-ID: <CAKgT0Uc+e3MUb4CK1i7H7F=y-fHTxiGF8zddBFiqFRdbd6ofLg@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1724169815; x=1724774615; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ACxpErlOvFQuBRokph/wthh0GeLIFddWl+sG+UC+KHk=;
 b=LH7Q0oqfhYwY85a7xqFp4Wa7lgewRASWYxMZ2oUyM90dbBo5g9v40JhwNvnu10PAGy
 6kz+e7qM7/hIgKUehddyq7M0nAOlbZeOaxm25HVonG1TIPoV9jcY1bqGy6q27RLDVZAf
 SpETI95ZV0T1H2kVWo2ed5J7XpOYHRhZ66n+M2h3ezoj2+z8hGrjqwuvjO8YHxOPjV7V
 pP2XM6qSRw+LqIEXCcfd1D9sQs4MIMa8Kpc7IqQmUmAJmljj1/K/N0gE0/FypTzK377H
 B8bc0otL6XuWTISt8bAmxLXdHBCLgfEpUXee8CkRTASwxFtAf6/cKhs/+YXMK2xx6rq0
 PMFA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=LH7Q0oqf
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

On Tue, Aug 20, 2024 at 6:07=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.co=
m> wrote:
>
> On 2024/8/19 23:54, Alexander Duyck wrote:
>
> ...
>
> >>>>
> >>>> "There are three types of API as proposed in this patchset instead o=
f
> >>>> two types of API:
> >>>> 1. page_frag_alloc_va() returns [va].
> >>>> 2. page_frag_alloc_pg() returns [page, offset].
> >>>> 3. page_frag_alloc() returns [va] & [page, offset].
> >>>>
> >>>> You seemed to miss that we need a third naming for the type 3 API.
> >>>> Do you see type 3 API as a valid API? if yes, what naming are you
> >>>> suggesting for it? if no, why it is not a valid API?"
> >>>
> >>> I didn't. I just don't see the point in pushing out the existing API
> >>> to support that. In reality 2 and 3 are redundant. You probably only
> >>> need 3. Like I mentioned earlier you can essentially just pass a
> >>
> >> If the caller just expect [page, offset], do you expect the caller als=
o
> >> type 3 API, which return both [va] and [page, offset]?
> >>
> >> I am not sure if I understand why you think 2 and 3 are redundant here=
?
> >> If you think 2 and 3 are redundant here, aren't 1 and 3 also redundant
> >> as the similar agrument?
> >
> > The big difference is the need to return page and offset. Basically to
> > support returning page and offset you need to pass at least one value
> > as a pointer so you can store the return there.
> >
> > The reason why 3 is just a redundant form of 2 is that you will
> > normally just be converting from a va to a page and offset so the va
> > should already be easily accessible.
>
> I am assuming that by 'easily accessible', you meant the 'va' can be
> calculated as below, right?
>
> va =3D encoded_page_address(encoded_va) +
>                 (page_frag_cache_page_size(encoded_va) - remaining);
>
> I guess it is easily accessible, but it is not without some overhead
> to calculate the 'va' here.

It is just the encoded_page_address + offset that you have to
calculate anyway. So the only bit you actually have to do is 2
instructions, one to mask the encoded_va and then the addition of the
offset that you provided to the page. As it stands those instruction
can easily be slipped in while you are working on converting the va to
a page.


> >
> >>> page_frag via pointer to the function. With that you could also look
> >>> at just returning a virtual address as well if you insist on having
> >>> something that returns all of the above. No point in having 2 and 3 b=
e
> >>> seperate functions.
> >>
> >> Let's be more specific about what are your suggestion here: which way
> >> is the prefer way to return the virtual address. It seems there are tw=
o
> >> options:
> >>
> >> 1. Return the virtual address by function returning as below:
> >> void *page_frag_alloc_bio(struct page_frag_cache *nc, struct bio_vec *=
bio);
> >>
> >> 2. Return the virtual address by double pointer as below:
> >> int page_frag_alloc_bio(struct page_frag_cache *nc, struct bio_vec *bi=
o,
> >>                         void **va);
> >
> > I was thinking more of option 1. Basically this is a superset of
> > page_frag_alloc_va that is also returning the page and offset via a
> > page frag. However instead of bio_vec I would be good with "struct
> > page_frag *" being the value passed to the function to play the role
> > of container. Basically the big difference between 1 and 2/3 if I am
> > not mistaken is the fact that for 1 you pass the size, whereas with
> > 2/3 you are peeling off the page frag from the larger page frag cache
>
> Let's be clear here: The callers just expecting [page, offset] also need
> to call type 3 API, which return both [va] and [page, offset]? and it
> is ok to ignore the overhead of calculating the 'va' for those kinds
> of callers just because we don't want to do the renaming for a existing
> API and can't come up with good naming for that?
>
> > after the fact via a commit type action.
>
> Just be clear here, there is no commit type action for some subtype of
> type 2/3 API.
>
> For example, for type 2 API in this patchset, it has below subtypes:
>
> subtype 1: it does not need a commit type action, it just return
>            [page, offset] instead of page_frag_alloc_va() returning [va],
>            and it does not return the allocated fragsz back to the caller
>            as page_frag_alloc_va() does not too:
> struct page *page_frag_alloc_pg(struct page_frag_cache *nc,
>                                 unsigned int *offset, unsigned int fragsz=
,
>                                 gfp_t gfp)
>
> subtype 2: it does need a commit type action, and @fragsz is returned to
>            the caller and caller used that to commit how much fragsz to
>            commit.
> struct page *page_frag_alloc_pg_prepare(struct page_frag_cache *nc,
>                                         unsigned int *offset,
>                                         unsigned int *fragsz, gfp_t gfp)
>
> Do you see subtype 1 as valid API? If no, why?

Not really, it is just a wrapper for page_frag_alloc that is
converting the virtual address to a page and offset. They are the same
data and don't justify the need for two functions. It kind of explains
one of the complaints I had about this code. Supposedly it was
refactoring and combining several different callers into one, but what
it is actually doing is fracturing the code path into 3 different
variants based on little if any actual difference as it is doing
unnecessary optimization.

> If yes, do you also expect the caller to use "struct page_frag *" as the
> container? If yes, what is the caller expected to do with the size field =
in
> "struct page_frag *" from API perspective? Just ignore it?

It should be populated. You passed a fragsz, so you should populate
the output fragsz so you can get the truesize in the case of network
packets. The removal of the page_frag from the other callers is making
it much harder to review your code anyway. If we keep the page_frag
there it should reduce the amount of change needed when you replace
page_frag with the page_frag_cache.

Honestly this is eating up too much of my time. As I said before this
patch set is too big and it is trying to squeeze in more than it
really should for a single patch set to be reviewable. Going forward
please split up the patch set as I had suggested before and address my
comments. Ideally you would have your first patch just be some
refactor and cleanup to get the "offset" pointer moving in the
direction you want. With that we can at least get half of this set
digested before we start chewing into all this refactor for the
replacement of page_frag with the page_frag_cache.
