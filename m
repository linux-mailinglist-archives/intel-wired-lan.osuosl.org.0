Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDB893C1D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 14:22:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 494D480EDE;
	Thu, 25 Jul 2024 12:21:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TovVxLRs9b70; Thu, 25 Jul 2024 12:21:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CE1680EE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721910116;
	bh=BgSeWtp2yzQk2FRjPaDRrPwx0CpbQ2b/9NffTsqAfkI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VqqtxXBbryPlMDQSw78SaFcrFRvMgZU/IzUusZSscv8x8tSfFpYK1ppEG5CnBdCYY
	 WrzVp/+8zTT4jj+f2JIk9bLYiAxvmLx6mIkEPzCuA43tZilY9MuZrhJH6YbxDIDWrN
	 A2OAFnPPpycq/SYxWR95ZzBEPstULSgOgmXakUQC0b1QBKmpccZLMENhISoZopOOO9
	 oDDlnP/QQpNXaSHy0XDB07NO3iFz8/mkvU5sHUhm/ipbHqJ+G6P8QBFjSUY8bVOXWd
	 XrHYbo9OaGbwUZf7T7HRgywY9IoNKwiPu4F4cqXGVciVtqNFH5l6LcskWEKxxHIibm
	 F4vrxmugKaEVA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CE1680EE8;
	Thu, 25 Jul 2024 12:21:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA78F1BF239
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 12:21:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B2E2280EDC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 12:21:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tt1zbvNlRjpu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 12:21:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E820480EDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E820480EDA
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E820480EDA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 12:21:51 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.174])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4WV93n3b0KzxVFN;
 Thu, 25 Jul 2024 20:21:41 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 406D6140121;
 Thu, 25 Jul 2024 20:21:45 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 25 Jul 2024 20:21:44 +0800
Message-ID: <11187fe4-9419-4341-97b5-6dad7583b5b6@huawei.com>
Date: Thu, 25 Jul 2024 20:21:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20240719093338.55117-1-linyunsheng@huawei.com>
 <20240719093338.55117-5-linyunsheng@huawei.com>
 <CAKgT0UcqELiXntRA_uD8eJGjt-OCLO64ax=YFXrCHNnaj9kD8g@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAKgT0UcqELiXntRA_uD8eJGjt-OCLO64ax=YFXrCHNnaj9kD8g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [RFC v11 04/14] mm: page_frag: add '_va'
 suffix to page_frag API
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

On 2024/7/22 4:41, Alexander Duyck wrote:
> On Fri, Jul 19, 2024 at 2:37 AM Yunsheng Lin <linyunsheng@huawei.com> wrote:
>>
>> Currently the page_frag API is returning 'virtual address'
>> or 'va' when allocing and expecting 'virtual address' or
>> 'va' as input when freeing.
>>
>> As we are about to support new use cases that the caller
>> need to deal with 'struct page' or need to deal with both
>> 'va' and 'struct page'. In order to differentiate the API
>> handling between 'va' and 'struct page', add '_va' suffix
>> to the corresponding API mirroring the page_pool_alloc_va()
>> API of the page_pool. So that callers expecting to deal with
>> va, page or both va and page may call page_frag_alloc_va*,
>> page_frag_alloc_pg*, or page_frag_alloc* API accordingly.
>>
>> CC: Alexander Duyck <alexander.duyck@gmail.com>
>> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
>> Reviewed-by: Subbaraya Sundeep <sbhatta@marvell.com>
> 
> Rather than renaming the existing API I would rather see this follow
> the same approach as we use with the other memory subsystem functions.

I am not sure if I understand what 'the other memory subsystem functions'
is referring to, it would be better to be more specific about that.

For allocation side:
alloc_pages*()
extern unsigned long get_free_page*(gfp_t gfp_mask, unsigned int order);

For free side, it seems we have:
extern void __free_pages(struct page *page, unsigned int order);
extern void free_pages(unsigned long addr, unsigned int order);
static inline void put_page(struct page *page)

So there seems to be no clear pattern that the mm APIs with double
underscore is dealing with 'struct page' and the one without double
underscore is dealing with virtual address, at least not from the
allocation side.

> A specific example being that with free_page it is essentially passed
> a virtual address, while the double underscore version is passed a
> page. I would be more okay with us renaming the double underscore
> version of any functions we might have to address that rather than
> renaming all the functions with "va".

Before this patchset, page_frag has the below APIs as below:

void *__page_frag_alloc_align(struct page_frag_cache *nc, unsigned int fragsz,
			      gfp_t gfp_mask, unsigned int align_mask);

static inline void *page_frag_alloc_align(struct page_frag_cache *nc,
					  unsigned int fragsz, gfp_t gfp_mask,
					  unsigned int align)

extern void page_frag_free(void *addr);

It would be better to be more specific about what renaming does the above
APIs need in order to support the new usecases.

> 
> In general I would say this patch is adding no value as what it is

As above, it would be better to give a more specific suggestion to
back up the above somewhat abstract agrument, otherwise it is hard
to tell if there is better option here, and why it is better than
the one proposed in this patchset.

> doing is essentially pushing the primary users of this API to change
> to support use cases that won't impact most of them. It is just
> creating a ton of noise in terms of changes with no added value so we
> can reuse the function names.


After this patchset, we have the below page_frag APIs:

For allocation side, we have below APIs:
struct page *page_frag_alloc_pg*(struct page_frag_cache *nc,
                                unsigned int *offset, unsigned int fragsz,
                                gfp_t gfp);
void *page_frag_alloc_va*(struct page_frag_cache *nc,
                                 unsigned int fragsz, gfp_t gfp_mask,
                                 unsigned int align_mask);
struct page *page_frag_alloc*(struct page_frag_cache *nc,
                                     unsigned int *offset,
                                     unsigned int fragsz,
                                     void **va, gfp_t gfp);

For allocation side, we have below APIs:
void page_frag_free_va(void *addr);

The main rules for the about naming are:
1. The API with 'align' suffix ensure the offset or va is aligned
2. The API with double underscore has no checking for the algin parameter.
3. The API with 'va' suffix is dealing with virtual address.
4. The API with 'pg' suffix is dealing with 'struct page'.
5. The API without 'pg' and 'va' suffix is dealing with both 'struct page'
   and virtual address.

Yes, I suppose it is not perfect mainly because we reuse some existing mm
API for page_frag free API.

As mentioned before, I would be happy to change it if what you are proposing
is indeed the better option.
