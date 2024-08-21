Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B27959BD7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 14:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AA6B80D6A;
	Wed, 21 Aug 2024 12:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z7XG9osAVB4a; Wed, 21 Aug 2024 12:31:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2DDF80D6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724243471;
	bh=s+3uVq3WzYoeQ3TK93acDgMc2ToNXafEvhGqjVou6p4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QtRMZlxwvz8oZWK897gPGYPbxUGtdeXy7n1ePsEoXckhukbq1HGFObXEO2tjFLPgI
	 ChoalCJw45wJK9L7Be9yZ8syFldDcAS83ltuHF4zFUJvzBXeK6Hu2Ms2shzbUMxYvl
	 oxHiktKIbbRmcHtPPkj47bw3NYltQpLA9w+KC0MsovH3N0ehwy05e2yDx0GOM8aaGs
	 pR+qybP2rYZq5+miOYCVxysSZZpbMzFhaIc+CfFEq/1s/EQt3f+1HKkQPsWvXxY98A
	 CrnMN4pEKYxFkIltbE7+/z0xO2D8DM1GghDqMIQ51EnV6AsFA2lhnn1TUd2vI1w2d5
	 cyC6YH5oiksaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2DDF80D6B;
	Wed, 21 Aug 2024 12:31:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9E431BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:31:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6AD16073F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:31:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MUcNxROnbBiU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 12:31:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 93B786069C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93B786069C
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93B786069C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 12:30:59 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Wply83bHMzpTXZ;
 Wed, 21 Aug 2024 20:29:20 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id EF9A9140138;
 Wed, 21 Aug 2024 20:30:51 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Wed, 21 Aug 2024 20:30:51 +0800
Message-ID: <ec27c801-db0a-4e57-b0bd-03a695e70e56@huawei.com>
Date: Wed, 21 Aug 2024 20:30:51 +0800
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
 <98ceade3-8d60-45bf-a419-ff3982a96101@huawei.com>
 <CAKgT0Uc+e3MUb4CK1i7H7F=y-fHTxiGF8zddBFiqFRdbd6ofLg@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAKgT0Uc+e3MUb4CK1i7H7F=y-fHTxiGF8zddBFiqFRdbd6ofLg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
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

On 2024/8/21 0:02, Alexander Duyck wrote:
> On Tue, Aug 20, 2024 at 6:07 AM Yunsheng Lin <linyunsheng@huawei.com> wrote:
>>
>> On 2024/8/19 23:54, Alexander Duyck wrote:
>>
>> ...
>>
>>>>>>
>>>>>> "There are three types of API as proposed in this patchset instead of
>>>>>> two types of API:
>>>>>> 1. page_frag_alloc_va() returns [va].
>>>>>> 2. page_frag_alloc_pg() returns [page, offset].
>>>>>> 3. page_frag_alloc() returns [va] & [page, offset].
>>>>>>
>>>>>> You seemed to miss that we need a third naming for the type 3 API.
>>>>>> Do you see type 3 API as a valid API? if yes, what naming are you
>>>>>> suggesting for it? if no, why it is not a valid API?"
>>>>>
>>>>> I didn't. I just don't see the point in pushing out the existing API
>>>>> to support that. In reality 2 and 3 are redundant. You probably only
>>>>> need 3. Like I mentioned earlier you can essentially just pass a
>>>>
>>>> If the caller just expect [page, offset], do you expect the caller also
>>>> type 3 API, which return both [va] and [page, offset]?
>>>>
>>>> I am not sure if I understand why you think 2 and 3 are redundant here?
>>>> If you think 2 and 3 are redundant here, aren't 1 and 3 also redundant
>>>> as the similar agrument?
>>>
>>> The big difference is the need to return page and offset. Basically to
>>> support returning page and offset you need to pass at least one value
>>> as a pointer so you can store the return there.
>>>
>>> The reason why 3 is just a redundant form of 2 is that you will
>>> normally just be converting from a va to a page and offset so the va
>>> should already be easily accessible.
>>
>> I am assuming that by 'easily accessible', you meant the 'va' can be
>> calculated as below, right?
>>
>> va = encoded_page_address(encoded_va) +
>>                 (page_frag_cache_page_size(encoded_va) - remaining);
>>
>> I guess it is easily accessible, but it is not without some overhead
>> to calculate the 'va' here.
> 
> It is just the encoded_page_address + offset that you have to
> calculate anyway. So the only bit you actually have to do is 2
> instructions, one to mask the encoded_va and then the addition of the
> offset that you provided to the page. As it stands those instruction
> can easily be slipped in while you are working on converting the va to
> a page.

Well, with your suggestions against other optimizations like avoiding
a checking in fast patch and avoid calling virt_to_page(), the overhead
is kind of added up.

And I am really surprised by your above suggestion about deciding the
API for users according to the internal implementation detail here. As
the overhead of calculating 'va' is really depending on the layout of
'struct page_frag_cache' here, what if we change the implementation and
the overhead of calculating 'va' becomes bigger? Do we expect to change
the API for the callers when we change the internal implementation of
page_frag_cache?

> 
> 
>>>
>>>>> page_frag via pointer to the function. With that you could also look
>>>>> at just returning a virtual address as well if you insist on having
>>>>> something that returns all of the above. No point in having 2 and 3 be
>>>>> seperate functions.
>>>>
>>>> Let's be more specific about what are your suggestion here: which way
>>>> is the prefer way to return the virtual address. It seems there are two
>>>> options:
>>>>
>>>> 1. Return the virtual address by function returning as below:
>>>> void *page_frag_alloc_bio(struct page_frag_cache *nc, struct bio_vec *bio);
>>>>
>>>> 2. Return the virtual address by double pointer as below:
>>>> int page_frag_alloc_bio(struct page_frag_cache *nc, struct bio_vec *bio,
>>>>                         void **va);
>>>
>>> I was thinking more of option 1. Basically this is a superset of
>>> page_frag_alloc_va that is also returning the page and offset via a
>>> page frag. However instead of bio_vec I would be good with "struct
>>> page_frag *" being the value passed to the function to play the role
>>> of container. Basically the big difference between 1 and 2/3 if I am
>>> not mistaken is the fact that for 1 you pass the size, whereas with
>>> 2/3 you are peeling off the page frag from the larger page frag cache
>>
>> Let's be clear here: The callers just expecting [page, offset] also need
>> to call type 3 API, which return both [va] and [page, offset]? and it
>> is ok to ignore the overhead of calculating the 'va' for those kinds
>> of callers just because we don't want to do the renaming for a existing
>> API and can't come up with good naming for that?
>>
>>> after the fact via a commit type action.
>>
>> Just be clear here, there is no commit type action for some subtype of
>> type 2/3 API.
>>
>> For example, for type 2 API in this patchset, it has below subtypes:
>>
>> subtype 1: it does not need a commit type action, it just return
>>            [page, offset] instead of page_frag_alloc_va() returning [va],
>>            and it does not return the allocated fragsz back to the caller
>>            as page_frag_alloc_va() does not too:
>> struct page *page_frag_alloc_pg(struct page_frag_cache *nc,
>>                                 unsigned int *offset, unsigned int fragsz,
>>                                 gfp_t gfp)
>>
>> subtype 2: it does need a commit type action, and @fragsz is returned to
>>            the caller and caller used that to commit how much fragsz to
>>            commit.
>> struct page *page_frag_alloc_pg_prepare(struct page_frag_cache *nc,
>>                                         unsigned int *offset,
>>                                         unsigned int *fragsz, gfp_t gfp)
>>
>> Do you see subtype 1 as valid API? If no, why?
> 
> Not really, it is just a wrapper for page_frag_alloc that is
> converting the virtual address to a page and offset. They are the same
> data and don't justify the need for two functions. It kind of explains

I am supposing you meant something like below:
struct page *page_frag_alloc_pg(struct page_frag_cache *nc,
				unsigned int *offset, unsigned int fragsz,
				gfp_t gfp)
{
	struct page *page;
	void *va;

	va = page_frag_alloc_va(nc, fragsz, gfp);
	if (!va)
		return NULL;

	page = virt_to_head_page(va);
	*offset = va - page_to_virt(page);

	return page;
}

If yes, I really think you are caring about maintainability too much by
trading off too much performance here by not only recalculating the offset
here, but also sometimes calling virt_to_head_page() unnecessarily.

If no, please share the pseudo code in your mind.

> one of the complaints I had about this code. Supposedly it was
> refactoring and combining several different callers into one, but what
> it is actually doing is fracturing the code path into 3 different
> variants based on little if any actual difference as it is doing
> unnecessary optimization.

I am supposing the 3 different variants meant the below, right?
1. page_frag_alloc_va() returns [va].
2. page_frag_alloc_pg() returns [page, offset].
3. page_frag_alloc() returns [va] & [page, offset].

And there is others 3 different variants for prepare API too:
4. page_frag_alloc_va_prepare() returns [va].
5. page_frag_alloc_pg_prepare() returns [page, offset].
6. page_frag_alloc_prepare() returns [va] & [page, offset].

Side note: I just found the '4. page_frag_alloc_va_prepare()' API is
not used/called currently and can be removed in next revision for this
patchset.

It seems what you really want is 3 & 2 to be a wrapper for 1, and
5 & 6 to be a wrapper for 4?

If yes, too much performance is traded off here as my understanding.
Does't the introducing of __page_frag_cache_reload() already enable the
balance between performance and maintainability as much as possible in
patch 8?

> 
>> If yes, do you also expect the caller to use "struct page_frag *" as the
>> container? If yes, what is the caller expected to do with the size field in
>> "struct page_frag *" from API perspective? Just ignore it?
> 
> It should be populated. You passed a fragsz, so you should populate
> the output fragsz so you can get the truesize in the case of network
> packets. The removal of the page_frag from the other callers is making
> it much harder to review your code anyway. If we keep the page_frag
> there it should reduce the amount of change needed when you replace
> page_frag with the page_frag_cache.

I am not starting to use page_frag as the container yet, but the above
part is something that I am probably agreed with.

> 
> Honestly this is eating up too much of my time. As I said before this
> patch set is too big and it is trying to squeeze in more than it
> really should for a single patch set to be reviewable. Going forward
> please split up the patch set as I had suggested before and address my
> comments. Ideally you would have your first patch just be some
> refactor and cleanup to get the "offset" pointer moving in the
> direction you want. With that we can at least get half of this set
> digested before we start chewing into all this refactor for the
> replacement of page_frag with the page_frag_cache.

I don't really think breaking this patchset into more patchsets without
a newcase is helping to speed up the process here, it might slow down
the process instead, as the different idea about the refactoring and
new API naming is not going to disappear by breaking the patchset, and
the breaking may make the discussion harder without a bigger picture
and context.
