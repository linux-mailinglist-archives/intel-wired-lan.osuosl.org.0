Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4E8958790
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 15:07:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91F498117B;
	Tue, 20 Aug 2024 13:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4CBKwzp9O02a; Tue, 20 Aug 2024 13:07:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F3F88117C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724159261;
	bh=yDKc/6xoYjtFNkM4oka/cWTFsDfETxi1OyIqvH0kI1g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C7LpaTmpeddNVGGgisuJNUPiMG0fSJiCjmJb5GyDJBVkjDhS0oJPHrTEggC434eqo
	 XjNs/2EYpnmEQcOaUIEvkTcApnI/zuqJBfpOxkRKcUMYEJ7MS5keB+SSpqAx4RANEX
	 lOKzOBKv+jArye8LfJrZatKHk9jWDls4JH1rOsPwTb4jH8f4OzANLchv0S123kIJNH
	 9k85xbdajwV4GFY6MhtPzCbrI4sruiHmN60pD+lFDQXUy6cs9A26GodpaFlWQ2Tkl5
	 eNsTmH9Dt/bASje7jYVVbT6NqSoWl9XilaGf5QWKxiB7trcakXOTb5et+zcZmUWiIi
	 zXBdaJOUOLXSg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F3F88117C;
	Tue, 20 Aug 2024 13:07:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60F681BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:07:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CA4140530
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:07:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vcBMNWFTCbzd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 13:07:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ACFE540162
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACFE540162
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACFE540162
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 13:07:36 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Wp8rD3W5wzyR2p;
 Tue, 20 Aug 2024 21:07:08 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 1EF6B140138;
 Tue, 20 Aug 2024 21:07:30 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 20 Aug 2024 21:07:29 +0800
Message-ID: <98ceade3-8d60-45bf-a419-ff3982a96101@huawei.com>
Date: Tue, 20 Aug 2024 21:07:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20240808123714.462740-1-linyunsheng@huawei.com>
 <20240808123714.462740-5-linyunsheng@huawei.com>
 <d1a23116d054e2ebb00067227f0cffecefe33e11.camel@gmail.com>
 <676a2a15-d390-48a7-a8d7-6e491c89e200@huawei.com>
 <CAKgT0Uct5ptfs9ZEoe-9u-fOVz4HLf+5MS-YidKV+xELCBHKNw@mail.gmail.com>
 <3e069c81-a728-4d72-a5bb-3be00d182107@huawei.com>
 <CAKgT0UcDDFeMqD_eRe1-2Og0GEEFyNP90E9SDxDjskdgtMe0Uw@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAKgT0UcDDFeMqD_eRe1-2Og0GEEFyNP90E9SDxDjskdgtMe0Uw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
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

On 2024/8/19 23:54, Alexander Duyck wrote:

...

>>>>
>>>> "There are three types of API as proposed in this patchset instead of
>>>> two types of API:
>>>> 1. page_frag_alloc_va() returns [va].
>>>> 2. page_frag_alloc_pg() returns [page, offset].
>>>> 3. page_frag_alloc() returns [va] & [page, offset].
>>>>
>>>> You seemed to miss that we need a third naming for the type 3 API.
>>>> Do you see type 3 API as a valid API? if yes, what naming are you
>>>> suggesting for it? if no, why it is not a valid API?"
>>>
>>> I didn't. I just don't see the point in pushing out the existing API
>>> to support that. In reality 2 and 3 are redundant. You probably only
>>> need 3. Like I mentioned earlier you can essentially just pass a
>>
>> If the caller just expect [page, offset], do you expect the caller also
>> type 3 API, which return both [va] and [page, offset]?
>>
>> I am not sure if I understand why you think 2 and 3 are redundant here?
>> If you think 2 and 3 are redundant here, aren't 1 and 3 also redundant
>> as the similar agrument?
> 
> The big difference is the need to return page and offset. Basically to
> support returning page and offset you need to pass at least one value
> as a pointer so you can store the return there.
> 
> The reason why 3 is just a redundant form of 2 is that you will
> normally just be converting from a va to a page and offset so the va
> should already be easily accessible.

I am assuming that by 'easily accessible', you meant the 'va' can be
calculated as below, right?

va = encoded_page_address(encoded_va) +
		(page_frag_cache_page_size(encoded_va) - remaining);

I guess it is easily accessible, but it is not without some overhead
to calculate the 'va' here.

> 
>>> page_frag via pointer to the function. With that you could also look
>>> at just returning a virtual address as well if you insist on having
>>> something that returns all of the above. No point in having 2 and 3 be
>>> seperate functions.
>>
>> Let's be more specific about what are your suggestion here: which way
>> is the prefer way to return the virtual address. It seems there are two
>> options:
>>
>> 1. Return the virtual address by function returning as below:
>> void *page_frag_alloc_bio(struct page_frag_cache *nc, struct bio_vec *bio);
>>
>> 2. Return the virtual address by double pointer as below:
>> int page_frag_alloc_bio(struct page_frag_cache *nc, struct bio_vec *bio,
>>                         void **va);
> 
> I was thinking more of option 1. Basically this is a superset of
> page_frag_alloc_va that is also returning the page and offset via a
> page frag. However instead of bio_vec I would be good with "struct
> page_frag *" being the value passed to the function to play the role
> of container. Basically the big difference between 1 and 2/3 if I am
> not mistaken is the fact that for 1 you pass the size, whereas with
> 2/3 you are peeling off the page frag from the larger page frag cache

Let's be clear here: The callers just expecting [page, offset] also need
to call type 3 API, which return both [va] and [page, offset]? and it
is ok to ignore the overhead of calculating the 'va' for those kinds
of callers just because we don't want to do the renaming for a existing
API and can't come up with good naming for that?

> after the fact via a commit type action.

Just be clear here, there is no commit type action for some subtype of
type 2/3 API.

For example, for type 2 API in this patchset, it has below subtypes:

subtype 1: it does not need a commit type action, it just return
           [page, offset] instead of page_frag_alloc_va() returning [va],
           and it does not return the allocated fragsz back to the caller
           as page_frag_alloc_va() does not too:
struct page *page_frag_alloc_pg(struct page_frag_cache *nc,
                                unsigned int *offset, unsigned int fragsz,
                                gfp_t gfp)

subtype 2: it does need a commit type action, and @fragsz is returned to
           the caller and caller used that to commit how much fragsz to
           commit.
struct page *page_frag_alloc_pg_prepare(struct page_frag_cache *nc,
                                        unsigned int *offset,
                                        unsigned int *fragsz, gfp_t gfp)

Do you see subtype 1 as valid API? If no, why?
If yes, do you also expect the caller to use "struct page_frag *" as the
container? If yes, what is the caller expected to do with the size field in
"struct page_frag *" from API perspective? Just ignore it?

