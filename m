Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9073A946234
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2024 19:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A56FD81E7E;
	Fri,  2 Aug 2024 17:01:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 67rkgS2A3WSK; Fri,  2 Aug 2024 17:01:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 019AB81E92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722618083;
	bh=vpcsgqmtuPo+pz6tWtSNKqkTo9JxSymPCppu91onA2Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7tcB62xk+tx/fx6H9ui2+sI8JVNJgxzsDyxPEYfKOnuibqLaMlJG8bK7d7B4qYcim
	 c/ldttHARlHZJtgzGIhKq3o1XTqkhKTHtVCzwEEt5OQ0NySxdUFw29rn4XghAPIuMp
	 jYaoQ/KbwYFQE8MsBCjGHLp5qmEHMxkhx4DEYFP16v6MTeDIwdAvoh4dv4JebmrwAR
	 KOLR/cbfTW7MhHyP7XwpKJsTgEqTHfRntf4gwRwHZ64kxSP6CwTDxwZa8/rGl2np1y
	 x3dajKAh9Bwd15CCfSD5QAwaMDRezdAkB7xFTtBbiUzRyfkUFJXk9RDEC3MX7yipp9
	 wxW6CM13Yajug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 019AB81E92;
	Fri,  2 Aug 2024 17:01:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8214A1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 17:01:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C50E400F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 17:01:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z1uR6hQbuYf7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2024 17:01:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42e; helo=mail-wr1-x42e.google.com;
 envelope-from=alexander.duyck@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C7ACB40015
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7ACB40015
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7ACB40015
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 17:01:18 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-3683178b226so4058837f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Aug 2024 10:01:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722618077; x=1723222877;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vpcsgqmtuPo+pz6tWtSNKqkTo9JxSymPCppu91onA2Q=;
 b=Hpu7+Iqtvs3VSXJpydt6IWwCKNLffR2vLwTc/IIM8VODEizXVjrk7ib1ajhTwbWaSx
 8YHnNPJl/n+Ss/0cJ+bUNx5MOccSGPZqmQci+oIa3Zkdex9dTsJnJL6hvXyzx4juEMUp
 5OkVZd4Cj39Q7WsFWfR0DypFWQT/qELD2cXznHwnr4iGZjszq11kXBaJG+VPIl/4oG+D
 N9Wh+revBKc5w5W1/dLf3pO6cIaz6+hFoE00tRSeMRGmQcNFiUndzP19m2UHTK+OOG25
 VgPxSkyCHqQJ5wGxq8kjU8ePz+QPl3ZibY/mi9zRDkbAVNd5zS2Z5lDcGpea6PUbaObB
 9WWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV6t9CTFSxYDtdkMMoRwZOmu2z5eg4RWyEvWxrHvA0U8tjpFGT9xMzr9tCgoHaCUX/QfbhazmdGjI3qiFvh1f+c87gBm0M5/d1yvEQ+89I3lA==
X-Gm-Message-State: AOJu0YxPQT64HLXXLd0Nis5jk16dHtz7VpqWZHDoSqT1qVWjzCraNrDu
 C8FYfRGK/zPK8iX/dJa5ClLUvz96tYG1robHqoqbGdUMV1PnOD1FndFZyDL0XQllwjr/SdzjL9X
 k5sV1pJsCPpy+A5OmOLUoWd04Bo0=
X-Google-Smtp-Source: AGHT+IH75FU4JpBvhRKVqmFn8me2clEuJ7/a5V8Xhv6OElYPF/ofyi1s2L5ZzsGAeeZuvfLRALy59I0v9WsGM6Mhk90=
X-Received: by 2002:adf:e98a:0:b0:368:4d33:9aac with SMTP id
 ffacd0b85a97d-36bbc0fc757mr2416504f8f.31.1722618076415; Fri, 02 Aug 2024
 10:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
 <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
 <22fda86c-d688-42e7-99e8-e2f8fcf1a5ba@huawei.com>
 <CAKgT0UcuGj8wvC87=A+hkarRupfhjGM0BPzLUT2AJc8Ovg_TFg@mail.gmail.com>
 <877efebe-f316-4192-aada-dd2657b74125@huawei.com>
In-Reply-To: <877efebe-f316-4192-aada-dd2657b74125@huawei.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 2 Aug 2024 10:00:39 -0700
Message-ID: <CAKgT0UfUkqR2TJQt6cSEdANNxQEOkjGqpPXhaXmrrxB0KwXmEQ@mail.gmail.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722618077; x=1723222877; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vpcsgqmtuPo+pz6tWtSNKqkTo9JxSymPCppu91onA2Q=;
 b=YGyU1nAr88gOdjbB60F2FHpitTi3p+kzwO38/bZKhQXUVea7FiTv8X0ZX2BysKQdau
 sRko6lVMmyTNaANNkgnAn82k38qZZDsUuQ7HfhmoO1TxiSkLeRj3uAdREtCftHpuXQT7
 ut69u68DuyIGLb2IPI1QZHpBH/wvrveCnXn+LdHHAMbwZFbqWDD2YcKf26rBo7FqYz9q
 7dQsJBzTYy8wz64yncMOmPzifneF5SRyzRu0jdprqP2e3hpVGP1WPKq2IYGp0A3Xrdem
 rcsBk/bgPpxro5JZsux58QOP+PMEogkCEn3qhTD6ATsXjTxf8gA2w/CKgWWdPMq1/c1H
 2Tyg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=YGyU1nAr
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
 linux-nvme@lists.infradead.org, Dai Ngo <Dai.Ngo@oracle.com>,
 David Howells <dhowells@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna@kernel.org>, Jeroen de Borst <jeroendb@google.com>,
 Sagi Grimberg <sagi@grimberg.me>, Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 linux-afs@lists.infradead.org,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 Olga Kornievskaia <kolga@netapp.com>, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sunil Goutham <sgoutham@marvell.com>, Chaitanya Kulkarni <kch@nvidia.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 virtualization@lists.linux.dev, KP Singh <kpsingh@kernel.org>,
 Tom Talpey <tom@talpey.com>, Shailend Chand <shailend@google.com>,
 linux-mediatek@lists.infradead.org, linux-mm@kvack.org,
 Keith Busch <kbusch@kernel.org>, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
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

On Fri, Aug 2, 2024 at 3:05=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei.com=
> wrote:
>
> On 2024/8/1 23:21, Alexander Duyck wrote:
> > On Thu, Aug 1, 2024 at 6:01=E2=80=AFAM Yunsheng Lin <linyunsheng@huawei=
.com> wrote:
> >>
> >> On 2024/8/1 2:13, Alexander Duyck wrote:
> >>> On Wed, Jul 31, 2024 at 5:50=E2=80=AFAM Yunsheng Lin <linyunsheng@hua=
wei.com> wrote:
> >>>>
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
> >>>
> >>> I am naking this patch. It is a pointless rename that is just going t=
o
> >>> obfuscate the git history for these callers.
> >>
> >> I responded to your above similar comment in v2, and then responded mo=
re
> >> detailedly in v11, both got not direct responding, it would be good to
> >> have more concrete feedback here instead of abstract argument.
> >>
> >> https://lore.kernel.org/all/74e7259a-c462-e3c1-73ac-8e3f49fb80b8@huawe=
i.com/
> >> https://lore.kernel.org/all/11187fe4-9419-4341-97b5-6dad7583b5b6@huawe=
i.com/
> >
> > I will make this much more understandable. This patch is one of the
> > ones that will permanently block this set in my opinion. As such I
> > will never ack this patch as I see no benefit to it. Arguing with me
> > on this is moot as you aren't going to change my mind, and I don't
> > have all day to argue back and forth with you on every single patch.
>
> Let's move on to more specific technical discussion then.
>
> >
> > As far as your API extension and naming maybe you should look like
> > something like bio_vec and borrow the naming from that since that is
> > essentially what you are passing back and forth is essentially that
> > instead of a page frag which is normally a virtual address.
>
> I thought about adding something like bio_vec before, but I am not sure
> what you have in mind is somthing like I considered before?
> Let's say that we reuse bio_vec like something below for the new APIs:
>
> struct bio_vec {
>         struct page     *bv_page;
>         void            *va;
>         unsigned int    bv_len;
>         unsigned int    bv_offset;
> };

I wasn't suggesting changing the bio_vec. I was suggesting that be
what you pass as a pointer reference instead of the offset. Basically
your use case is mostly just for populating bio_vec style structures
anyway.

> It seems we have the below options for the new API:
>
> option 1, it seems like a better option from API naming point of view, bu=
t
> it needs to return a bio_vec pointer to the caller, it seems we need to h=
ave
> extra space for the pointer, I am not sure how we can avoid the memory wa=
ste
> for sk_page_frag() case in patch 12:
> struct bio_vec *page_frag_alloc_bio(struct page_frag_cache *nc,
>                                     unsigned int fragsz, gfp_t gfp_mask);
>
> option 2, it need both the caller and callee to have a its own local spac=
e
> for 'struct bio_vec ', I am not sure if passing the content instead of
> the pointer of a struct through the function returning is the common patt=
ern
> and if it has any performance impact yet:
> struct bio_vec page_frag_alloc_bio(struct page_frag_cache *nc,
>                                    unsigned int fragsz, gfp_t gfp_mask);
>
> option 3, the caller passes the pointer of 'struct bio_vec ' to the calle=
e,
> and page_frag_alloc_bio() fills in the data, I am not sure what is the po=
int
> of indirect using 'struct bio_vec ' instead of passing 'va' & 'fragsz' &
> 'offset' through pointers directly:
> bool page_frag_alloc_bio(struct page_frag_cache *nc,
>                          unsigned int fragsz, gfp_t gfp_mask, struct bio_=
vec *bio);
>
> If one of the above option is something in your mind? Yes, please be more=
 specific
> about which one is the prefer option, and why it is the prefer option tha=
n the one
> introduced in this patchset?
>
> If no, please be more specific what that is in your mind?

Option 3 is more or less what I had in mind. Basically you would
return an int to indicate any errors and you would be populating a
bio_vec during your allocation. In addition you would use the bio_vec
as a tracker of the actual fragsz so when you commit you are
committing with the fragsz as it was determined at the time of putting
the bio_vec together so you can theoretically catch things like if the
underlying offset had somehow changed from the time you setup the
allocation. It would fit well into your probe routines since they are
all essentially passing the page, offset, and fragsz throughout the
code.
