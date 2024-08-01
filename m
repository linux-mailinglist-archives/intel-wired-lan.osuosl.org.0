Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32333944C1A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 15:01:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3BE960F1B;
	Thu,  1 Aug 2024 13:01:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YGXoOw6c55JT; Thu,  1 Aug 2024 13:01:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C124660F2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722517292;
	bh=Fno7jynlRhR0MntB4PTcUruVkbDLRUwqhL/TfFy6/AQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WY5I7GNOBKQuUwb1WT5VJs84SfLSjZyAGZaozhNbO0IMxTkRhMY4jJktUyGCn1V6O
	 WbY7UeUUZCL0X0SdadtDPiEw2fAxAgf/qD0ZKW9IF0SnnMBHm5RkNpcq7Ppy5zUVbn
	 4lLH9llFTOXZjxpbFmTYcmfU8fBkPay2ddGFeP2UhALw/wnEMUQLgKQijwhBQ+J0jG
	 O9Gxuz9mYxbXrRaxS1nQVe3xXIbbOrIT1SzISegdOVLzWal9JbZeZspamuzxf/I8+Y
	 +NLPCD/KmMgk/kt8PzmXIXnCEkH956sZlbya837EUszY10CrkTA2K/T9Z6qM5l55eJ
	 Abl0Kn6t/470g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C124660F2C;
	Thu,  1 Aug 2024 13:01:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 686101BF479
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 13:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 552AD60640
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 13:01:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3JqjlXI9R_Rc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 13:01:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8EF2460618
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EF2460618
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8EF2460618
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 13:01:27 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.174])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4WZTc54FXfzxW3F;
 Thu,  1 Aug 2024 21:01:09 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 996A7140109;
 Thu,  1 Aug 2024 21:01:22 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 1 Aug 2024 21:01:22 +0800
Message-ID: <22fda86c-d688-42e7-99e8-e2f8fcf1a5ba@huawei.com>
Date: Thu, 1 Aug 2024 21:01:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
 <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
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

On 2024/8/1 2:13, Alexander Duyck wrote:
> On Wed, Jul 31, 2024 at 5:50 AM Yunsheng Lin <linyunsheng@huawei.com> wrote:
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
> I am naking this patch. It is a pointless rename that is just going to
> obfuscate the git history for these callers.

I responded to your above similar comment in v2, and then responded more
detailedly in v11, both got not direct responding, it would be good to
have more concrete feedback here instead of abstract argument.

https://lore.kernel.org/all/74e7259a-c462-e3c1-73ac-8e3f49fb80b8@huawei.com/
https://lore.kernel.org/all/11187fe4-9419-4341-97b5-6dad7583b5b6@huawei.com/

> 
> As I believe I said before I would prefer to see this work more like
> the handling of __get_free_pages and __free_pages in terms of the use

I am not even sure why are you bringing up  __get_free_pages() and
__free_pages() here, as the declaration of them is something like below:

unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order);
void __free_pages(struct page *page, unsigned int order);

And I add another related one for completeness here:
extern void free_pages(unsigned long addr, unsigned int order);

I am failing to see there is any pattern or rule for the above API
naming. If there is some pattern for the above existing APIs, please
describe them in detail so that we have common understanding.

After the renaming, the declaration for both new and old APIs is
below, please be more specific about what exactly is the confusion
about them, what is the better naming for the below APIs in your
mind:
struct page *page_frag_alloc_pg(struct page_frag_cache *nc,
                               unsigned int *offset, unsigned int fragsz,
                               gfp_t gfp);
void *page_frag_alloc_va(struct page_frag_cache *nc,
                         unsigned int fragsz, gfp_t gfp_mask);
struct page *page_frag_alloc(struct page_frag_cache *nc,
                             unsigned int *offset,
                             unsigned int fragsz,
                             void **va, gfp_t gfp);

> of pages versus pointers and/or longs. Pushing this API aside because
> you want to reuse the name for something different isn't a valid
> reason to rename an existing API and will just lead to confusion.

Before this patchset, all the page_frag API renamed with a '_va' suffix
in this patch are dealing with virtual address, it would be better to be
more specific about what exactly is the confusion here by adding a explicit
'va' suffix for them in this patch?

I would argue that the renaming may avoid some confusion about whether
page_frag_alloc() returning a 'struct page' or returning a virtual address
instead of leading to confusion.

Anyway, naming is always hard, any better naming is welcome. But don't deny
any existing API renaming when we have not really started doing detailed
comparison between different API naming options yet.
