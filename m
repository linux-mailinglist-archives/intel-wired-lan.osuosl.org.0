Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0BC8A841C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 15:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FE1E40514;
	Wed, 17 Apr 2024 13:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D7qYl1Y5wuRO; Wed, 17 Apr 2024 13:18:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A1364012B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713359931;
	bh=FDzWnSlq74AzsNs+2Gtmdpu32oqvbvNVWifQvd45vz8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j7Ps+15bpls5oGlPmPqC23vbF0MjrcG8/NeYaIG6WOjsLa53sCyrAB3VeKcxvD1YY
	 cQ+vW1SOFC5HB05KNo4m+bFeEX3E0jnnGBTHBVPFoLcsMzqQAr5Te4cVrH86AP6rQq
	 e06ShKxtqMkKb1Sj5qzkC1tKtXBvZD17LSQOpuARSyIVTIVNibh54oKjLoxo9DE6X3
	 zfrWd/C9YTkGp8iFIK4gsJTUYa+kPPB9YaFoztOF4q8ggPqgfvNgk6sUehVHje5ORV
	 acny2/Hg+ob1BpslEvrttsRMPvPqAdUlBGvtjj259J+9yReniS2fu/MwSFAjtkamfe
	 qgDZBcF25Rm7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A1364012B;
	Wed, 17 Apr 2024 13:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3294E1BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 13:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B8134012B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 13:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RNKSdiRM0x9V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 13:18:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 54BBC404C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54BBC404C9
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54BBC404C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 13:18:46 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.174])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4VKLxQ3gh3zXlNZ;
 Wed, 17 Apr 2024 21:15:22 +0800 (CST)
Received: from dggpemm500005.china.huawei.com (unknown [7.185.36.74])
 by mail.maildlp.com (Postfix) with ESMTPS id 812AD140485;
 Wed, 17 Apr 2024 21:18:41 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.35; Wed, 17 Apr
 2024 21:18:41 +0800
To: Alexander H Duyck <alexander.duyck@gmail.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20240415131941.51153-1-linyunsheng@huawei.com>
 <20240415131941.51153-8-linyunsheng@huawei.com>
 <18ca19fa64267b84bee10473a81cbc63f53104a0.camel@gmail.com>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <74e7259a-c462-e3c1-73ac-8e3f49fb80b8@huawei.com>
Date: Wed, 17 Apr 2024 21:18:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <18ca19fa64267b84bee10473a81cbc63f53104a0.camel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 07/15] mm: page_frag: add
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
 David Howells <dhowells@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Marc Dionne <marc.dionne@auristor.com>, Christoph Hellwig <hch@lst.de>,
 Anna Schumaker <anna@kernel.org>, Jeroen de Borst <jeroendb@google.com>,
 Sagi Grimberg <sagi@grimberg.me>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, linux-afs@lists.infradead.org,
 intel-wired-lan@lists.osuosl.org, Olga Kornievskaia <kolga@netapp.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sunil Goutham <sgoutham@marvell.com>, Chaitanya Kulkarni <kch@nvidia.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Dai Ngo <Dai.Ngo@oracle.com>,
 Sean Wang <sean.wang@mediatek.com>, virtualization@lists.linux.dev,
 KP Singh <kpsingh@kernel.org>, Tom Talpey <tom@talpey.com>,
 Shailend Chand <shailend@google.com>, linux-mediatek@lists.infradead.org,
 linux-mm@kvack.org, Keith Busch <kbusch@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jens Axboe <axboe@kernel.dk>, Hao Luo <haoluo@google.com>,
 linux-nfs@vger.kernel.org, Song Liu <song@kernel.org>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Eduard Zingerman <eddyz87@gmail.com>,
 hariprasad <hkelam@marvell.com>, Chuck Lever <chuck.lever@oracle.com>,
 Jiri Olsa <jolsa@kernel.org>, Praveen Kaligineedi <pkaligineedi@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Geetha sowjanya <gakula@marvell.com>,
 Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/4/17 0:12, Alexander H Duyck wrote:
> On Mon, 2024-04-15 at 21:19 +0800, Yunsheng Lin wrote:
>> Currently most of the API for page_frag API is returning
>> 'virtual address' as output or expecting 'virtual address'
>> as input, in order to differentiate the API handling between
>> 'virtual address' and 'struct page', add '_va' suffix to the
>> corresponding API mirroring the page_pool_alloc_va() API of
>> the page_pool.
>>
>> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> 
> This patch is a total waste of time. By that logic we should be
> renaming __get_free_pages since it essentially does the same thing.
> 
> This just seems like more code changes for the sake of adding code
> changes rather than fixing anything. In my opinion it should be dropped
> from the set.

The rename is to support different use case as mentioned below in patch
14:
"Depending on different use cases, callers expecting to deal with va, page or
both va and page for them may call page_frag_alloc_va*, page_frag_alloc_pg*,
or page_frag_alloc* API accordingly."

Naming is hard anyway, I am open to better API naming for the above use cases.

> 
> .
> 
