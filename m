Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 191FC945BCC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2024 12:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38C99411AF;
	Fri,  2 Aug 2024 10:06:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qfSIdaW_Dtjr; Fri,  2 Aug 2024 10:06:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6705411B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722593179;
	bh=o1VuG22BS9DaP4wx49W1xoCTDYwmTxC1L8+ARqes2ck=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GS6rsnh95fV5bFDKxqe9BMjssBEmXm6fCYAxTlFxAOSerRzp31D8+k1puMmiW+LEZ
	 TnJUmziyoLju81RJHmyOyyfn89rxhil6DgYZB90dzoSfQ5mZUAqBcm/fthA5dCKgCF
	 Z6X/5UEEBTf6HljcpeYQ6tE+EREMnNQGFXGpBMYsuqAA3wdFoYsd1Gn42l049Le3Xr
	 N+G/8i0Zaa0t6U1VdWZPsCSzGJWTrA0jKaFptPUj1Rwg+MXvy+102uCN6Gny7JkddH
	 NF0xeXyTxENjLpdS6P9WssSKah5yBHylOO1PQbPATBgmQV0Kk/FcOQYDsn8FrzY/uQ
	 PHwyZkhFn2X/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6705411B3;
	Fri,  2 Aug 2024 10:06:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E3D51BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 10:06:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B43A84596
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 10:06:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h0b2IRzrxNkx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2024 10:06:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.189;
 helo=szxga03-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AF83881FB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF83881FB8
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF83881FB8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 10:06:11 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.48])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Wb1ZM6Y7HzQnl8;
 Fri,  2 Aug 2024 18:01:31 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 0F1351800A1;
 Fri,  2 Aug 2024 18:05:53 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Fri, 2 Aug 2024 18:05:52 +0800
Message-ID: <877efebe-f316-4192-aada-dd2657b74125@huawei.com>
Date: Fri, 2 Aug 2024 18:05:52 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20240731124505.2903877-1-linyunsheng@huawei.com>
 <20240731124505.2903877-5-linyunsheng@huawei.com>
 <CAKgT0UcqdeSJdjZ_FfwyCnT927TwOkE4zchHLOkrBEmhGzex9g@mail.gmail.com>
 <22fda86c-d688-42e7-99e8-e2f8fcf1a5ba@huawei.com>
 <CAKgT0UcuGj8wvC87=A+hkarRupfhjGM0BPzLUT2AJc8Ovg_TFg@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAKgT0UcuGj8wvC87=A+hkarRupfhjGM0BPzLUT2AJc8Ovg_TFg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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

On 2024/8/1 23:21, Alexander Duyck wrote:
> On Thu, Aug 1, 2024 at 6:01 AM Yunsheng Lin <linyunsheng@huawei.com> wrote:
>>
>> On 2024/8/1 2:13, Alexander Duyck wrote:
>>> On Wed, Jul 31, 2024 at 5:50 AM Yunsheng Lin <linyunsheng@huawei.com> wrote:
>>>>
>>>> Currently the page_frag API is returning 'virtual address'
>>>> or 'va' when allocing and expecting 'virtual address' or
>>>> 'va' as input when freeing.
>>>>
>>>> As we are about to support new use cases that the caller
>>>> need to deal with 'struct page' or need to deal with both
>>>> 'va' and 'struct page'. In order to differentiate the API
>>>> handling between 'va' and 'struct page', add '_va' suffix
>>>> to the corresponding API mirroring the page_pool_alloc_va()
>>>> API of the page_pool. So that callers expecting to deal with
>>>> va, page or both va and page may call page_frag_alloc_va*,
>>>> page_frag_alloc_pg*, or page_frag_alloc* API accordingly.
>>>>
>>>> CC: Alexander Duyck <alexander.duyck@gmail.com>
>>>> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
>>>> Reviewed-by: Subbaraya Sundeep <sbhatta@marvell.com>
>>>
>>> I am naking this patch. It is a pointless rename that is just going to
>>> obfuscate the git history for these callers.
>>
>> I responded to your above similar comment in v2, and then responded more
>> detailedly in v11, both got not direct responding, it would be good to
>> have more concrete feedback here instead of abstract argument.
>>
>> https://lore.kernel.org/all/74e7259a-c462-e3c1-73ac-8e3f49fb80b8@huawei.com/
>> https://lore.kernel.org/all/11187fe4-9419-4341-97b5-6dad7583b5b6@huawei.com/
> 
> I will make this much more understandable. This patch is one of the
> ones that will permanently block this set in my opinion. As such I
> will never ack this patch as I see no benefit to it. Arguing with me
> on this is moot as you aren't going to change my mind, and I don't
> have all day to argue back and forth with you on every single patch.

Let's move on to more specific technical discussion then.

> 
> As far as your API extension and naming maybe you should look like
> something like bio_vec and borrow the naming from that since that is
> essentially what you are passing back and forth is essentially that
> instead of a page frag which is normally a virtual address.

I thought about adding something like bio_vec before, but I am not sure
what you have in mind is somthing like I considered before?
Let's say that we reuse bio_vec like something below for the new APIs:

struct bio_vec {
	struct page	*bv_page;
	void		*va;
	unsigned int	bv_len;
	unsigned int	bv_offset;
};

It seems we have the below options for the new API:

option 1, it seems like a better option from API naming point of view, but
it needs to return a bio_vec pointer to the caller, it seems we need to have
extra space for the pointer, I am not sure how we can avoid the memory waste
for sk_page_frag() case in patch 12:
struct bio_vec *page_frag_alloc_bio(struct page_frag_cache *nc,
				    unsigned int fragsz, gfp_t gfp_mask);

option 2, it need both the caller and callee to have a its own local space
for 'struct bio_vec ', I am not sure if passing the content instead of
the pointer of a struct through the function returning is the common pattern
and if it has any performance impact yet:
struct bio_vec page_frag_alloc_bio(struct page_frag_cache *nc,
				   unsigned int fragsz, gfp_t gfp_mask);

option 3, the caller passes the pointer of 'struct bio_vec ' to the callee,
and page_frag_alloc_bio() fills in the data, I am not sure what is the point
of indirect using 'struct bio_vec ' instead of passing 'va' & 'fragsz' &
'offset' through pointers directly:
bool page_frag_alloc_bio(struct page_frag_cache *nc,
			 unsigned int fragsz, gfp_t gfp_mask, struct bio_vec *bio);

If one of the above option is something in your mind? Yes, please be more specific
about which one is the prefer option, and why it is the prefer option than the one
introduced in this patchset?

If no, please be more specific what that is in your mind?

