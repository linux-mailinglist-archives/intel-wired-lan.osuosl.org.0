Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A70D8948DCE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 13:37:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA9F540966;
	Tue,  6 Aug 2024 11:37:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WvIKX7uDWhtH; Tue,  6 Aug 2024 11:37:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92ABC40965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722944268;
	bh=S0SiEONYRpxrZtR0HPzp22zIJEvfV4+9ZJaxARbtylc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h/Bi1KJGTrZFpxaqp90G6GaIUKd4ibJOEGXrIJd+lqyz3KvSCUyl5w9p+IHm/fpKK
	 LLe9shTPSUqhWcVO5yllf3/k48vaDwe8nc+M5sj7V3oczeUfi0/E/mR2eXHjMOwCIM
	 jh/HH5EdrBTIRb0WcYbOPm6szkHgRuRoDZnDbJVL1v01Wz5UotdLmAMClT496AdAyT
	 e8TVHktLTBTznADFkcJuI9b26nvpNtv1eHV89jSd3tDC8ofJaY8L+uXVbVCYKakAxw
	 x3swk+V0lD6qEvqbzr7lbpLicq5SpsCxK76qU/keFkM2kPPvhrmlyyv4ekRhTwHWWq
	 t6ub2WSwebn4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92ABC40965;
	Tue,  6 Aug 2024 11:37:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 080B41BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 11:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E906D810F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 11:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DBSK0SA1EteR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 11:37:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.189;
 helo=szxga03-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67F51810EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67F51810EA
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67F51810EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 11:37:41 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.254])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4WdWQD3tK9zQpC4;
 Tue,  6 Aug 2024 19:33:08 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 28868180102;
 Tue,  6 Aug 2024 19:37:34 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 6 Aug 2024 19:37:33 +0800
Message-ID: <ca6be29e-ab53-4673-9624-90d41616a154@huawei.com>
Date: Tue, 6 Aug 2024 19:37:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Duyck <alexander.duyck@gmail.com>, Yunsheng Lin
 <yunshenglin0825@gmail.com>
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
 <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
 <22fda86c-d688-42e7-99e8-e2f8fcf1a5ba@huawei.com>
 <CAKgT0UcuGj8wvC87=A+hkarRupfhjGM0BPzLUT2AJc8Ovg_TFg@mail.gmail.com>
 <877efebe-f316-4192-aada-dd2657b74125@huawei.com>
 <CAKgT0UfUkqR2TJQt6cSEdANNxQEOkjGqpPXhaXmrrxB0KwXmEQ@mail.gmail.com>
 <2a29ce61-7136-4b9b-9940-504228b10cba@gmail.com>
 <CAKgT0Uc6yw4u5Tjw1i0cV=C_ph+A5w0b_mtQMXmnBfKN_vvaDA@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAKgT0Uc6yw4u5Tjw1i0cV=C_ph+A5w0b_mtQMXmnBfKN_vvaDA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
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

On 2024/8/6 8:52, Alexander Duyck wrote:
> On Sun, Aug 4, 2024 at 10:00 AM Yunsheng Lin <yunshenglin0825@gmail.com> wrote:
>>
>> On 8/3/2024 1:00 AM, Alexander Duyck wrote:
>>
>>>>
>>>>>
>>>>> As far as your API extension and naming maybe you should look like
>>>>> something like bio_vec and borrow the naming from that since that is
>>>>> essentially what you are passing back and forth is essentially that
>>>>> instead of a page frag which is normally a virtual address.
>>>>
>>>> I thought about adding something like bio_vec before, but I am not sure
>>>> what you have in mind is somthing like I considered before?
>>>> Let's say that we reuse bio_vec like something below for the new APIs:
>>>>
>>>> struct bio_vec {
>>>>          struct page     *bv_page;
>>>>          void            *va;
>>>>          unsigned int    bv_len;
>>>>          unsigned int    bv_offset;
>>>> };
>>>
>>> I wasn't suggesting changing the bio_vec. I was suggesting that be
>>> what you pass as a pointer reference instead of the offset. Basically
>>> your use case is mostly just for populating bio_vec style structures
>>> anyway.
>>
>> I wasn't trying/going to reuse/change bio_vec for page_frag, I was just
>> having a hard time coming with a good new name for it.
>> The best one I came up with is pfrag_vec, but I am not sure about the
>> 'vec' as the "vec" portion of the name would suggest, iovec structures
>> tend to come in arrays, mentioned in the below article:
>> https://lwn.net/Articles/625077/
>>
>> Anther one is page_frag, which is currently in use.
>>
>> Or any better one in your mind?
> 
> I was suggesting using bio_vec, not some new structure. The general
> idea is that almost all the values you are using are exposed by that
> structure already in the case of the page based calls you were adding,
> so it makes sense to use what is there rather than reinventing the
> wheel.

Through a quick look, there seems to be at least three structs which have
similar values: struct bio_vec & struct skb_frag & struct page_frag.

As your above agrument about using bio_vec, it seems it is ok to use any
one of them as each one of them seems to have almost all the values we
are using?

Personally, my preference over them: 'struct page_frag' > 'struct skb_frag'
> 'struct bio_vec', as the naming of 'struct page_frag' seems to best match
the page_frag API, 'struct skb_frag' is the second preference because we
mostly need to fill skb frag anyway, and 'struct bio_vec' is the last
preference because it just happen to have almost all the values needed.

Is there any specific reason other than the above "almost all the values you
are using are exposed by that structure already " that you prefer bio_vec?

> 
>>>
>>>> It seems we have the below options for the new API:
>>>>
>>>> option 1, it seems like a better option from API naming point of view, but
>>>> it needs to return a bio_vec pointer to the caller, it seems we need to have
>>>> extra space for the pointer, I am not sure how we can avoid the memory waste
>>>> for sk_page_frag() case in patch 12:
>>>> struct bio_vec *page_frag_alloc_bio(struct page_frag_cache *nc,
>>>>                                      unsigned int fragsz, gfp_t gfp_mask);
>>>>
>>>> option 2, it need both the caller and callee to have a its own local space
>>>> for 'struct bio_vec ', I am not sure if passing the content instead of
>>>> the pointer of a struct through the function returning is the common pattern
>>>> and if it has any performance impact yet:
>>>> struct bio_vec page_frag_alloc_bio(struct page_frag_cache *nc,
>>>>                                     unsigned int fragsz, gfp_t gfp_mask);
>>>>
>>>> option 3, the caller passes the pointer of 'struct bio_vec ' to the callee,
>>>> and page_frag_alloc_bio() fills in the data, I am not sure what is the point
>>>> of indirect using 'struct bio_vec ' instead of passing 'va' & 'fragsz' &
>>>> 'offset' through pointers directly:
>>>> bool page_frag_alloc_bio(struct page_frag_cache *nc,
>>>>                           unsigned int fragsz, gfp_t gfp_mask, struct bio_vec *bio);
>>>>
>>>> If one of the above option is something in your mind? Yes, please be more specific
>>>> about which one is the prefer option, and why it is the prefer option than the one
>>>> introduced in this patchset?
>>>>
>>>> If no, please be more specific what that is in your mind?
>>>
>>> Option 3 is more or less what I had in mind. Basically you would
>>> return an int to indicate any errors and you would be populating a
>>> bio_vec during your allocation. In addition you would use the bio_vec
>>
>> Actually using this new bio_vec style structures does not seem to solve
>> the APIs naming issue this patch is trying to solve as my understanding,
>> as the new struct is only about passing one pointer or multi-pointers
>> from API naming perspective. It is part of the API naming, but not all
>> of it.
> 
> I have no idea what you are talking about. The issue was you were
> splitting things page_frag_alloc_va and page_frag_alloc_pg. Now it
> would be page_frag_alloc and page_frag_alloc_bio or maybe
> page_frag_fill_bio which would better explain what you are doing with
> this function.

There are three types of API as proposed in this patchset instead of
two types of API:
1. page_frag_alloc_va() returns [va].
2. page_frag_alloc_pg() returns [page, offset].
3. page_frag_alloc() returns [va] & [page, offset].

You seemed to miss that we need a third naming for the type 3 API.
Do you see type 3 API as a valid API? if yes, what naming are you
suggesting for it? if no, why it is not a valid API?

> 
>>> as a tracker of the actual fragsz so when you commit you are
>>> committing with the fragsz as it was determined at the time of putting
>>> the bio_vec together so you can theoretically catch things like if the
>>> underlying offset had somehow changed from the time you setup the
>>
>> I think we might need a stronger argument than the above to use the new
>> *vec thing other than the above debugging feature.
>>
>> I looked throught the bio_vec related info, and come along somewhat not
>> really related, but really helpful "What’s all this get us" section:
>> https://docs.kernel.org/block/biovecs.html
>>
>> So the question seems to be: what is this new struct for page_frag get
>> us?
>>
>> Generally, I am argeed with the new struct thing if it does bring us
>> something other than the above debugging feature. Otherwise we should
>> avoid introducing a new thing which is hard to argue about its existent.
> 
> I don't want a new structure. I just want you to use the bio_vec for
> spots where you are needing to use a page because you are populating a
> bio_vec.
> 
>>> allocation. It would fit well into your probe routines since they are
>>> all essentially passing the page, offset, and fragsz throughout the
>>> code.
>>
>> For the current probe routines, the 'va' need to be passed, do you
>> expect the 'va' to be passed by function return, double pointer, or
>> new the *_vec pointer?
> 
> I would suggest doing so via the *_vec pointer. The problem as I see

As your above suggestion, I can safely assume *_ve is 'struct bio_vec',
right?

I am really confused here, you just clarified that you wasn't suggesting
changing the bio_vec, and now you are suggesting passing 'va' via the
'struct bio_vec' pointer?  How is it possible with current definition of
'struct bio_vec'?

struct bio_vec {
	struct page	*bv_page;
	unsigned int	bv_len;
	unsigned int	bv_offset;
};

Or am I mising something obvious here?

> it is that the existing code is exposing too much of the internals and
> setting up the possibility for a system to get corrupted really

If most of the page_frag API callers doesn't access 'struct bio_vec'
directly and use something like bvec_iter_* API to do the accessing,
then I am agreed with the above argument.

But right now, most of the page_frag API callers are accessing 'va'
directly to do the memcpy'ing, and accessing 'page & off & len' directly
to do skb frag filling, so I am not really sure what's the point of
indirection using the 'struct bio_vec' here.

And adding 'struct bio_vec' for page_frag and accessing the value of it
directly may be against of the design choice of 'struct bio_vec', as
there seems to be no inline helper defined to access the value of
'struct bio_vec' directly in bvec.h
