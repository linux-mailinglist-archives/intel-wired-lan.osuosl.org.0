Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B4C95280C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2024 05:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0E3240691;
	Thu, 15 Aug 2024 03:00:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XmmHIIvLtkgy; Thu, 15 Aug 2024 03:00:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E96A4064E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723690810;
	bh=tVGgtAeIU797BlAn1ZjEHpddsnFBZFqZOqJ+L03TlXk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=phkUNMTNqPksW7Gf+JMxz9Jk9ducHh8DBP5/SCze5wQKdSY/p+6lJtFZaTkzuPiRB
	 5BpQ2omhrbXLlFHtU/Cz/ZcgqM0M13acumApkOwia0wI4txtA7fKmOIf8xRvFZO3Ud
	 NTupNLUmDXPKR6AUbG/xkQdmQasc7xLeXYIwqEcjaXmfyB35vFTUiKzygN0bPutnmS
	 CEnoiqZUNX4b5Y0hT63atUCPQhDqgENZiMk8glq4uujnHP8CW6dbMO7qCLsS/+Etmg
	 V9rqgTplrFVQEtD0ASZU6ZnY143sr3lHwVq8ZHL4zN+aQInEjhbCWwr9W7CsNk81rm
	 pPp/ooqt4ztNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E96A4064E;
	Thu, 15 Aug 2024 03:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECF361BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 03:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D845340455
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 03:00:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1j9tmoAwAA5F for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 03:00:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191;
 helo=szxga05-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A6F340439
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A6F340439
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A6F340439
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 03:00:04 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.17])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4WkqXP209yz1HGKB;
 Thu, 15 Aug 2024 10:56:53 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 5EBEA1A0188;
 Thu, 15 Aug 2024 10:59:58 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 15 Aug 2024 10:59:57 +0800
Message-ID: <676a2a15-d390-48a7-a8d7-6e491c89e200@huawei.com>
Date: Thu, 15 Aug 2024 10:59:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander H Duyck <alexander.duyck@gmail.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20240808123714.462740-1-linyunsheng@huawei.com>
 <20240808123714.462740-5-linyunsheng@huawei.com>
 <d1a23116d054e2ebb00067227f0cffecefe33e11.camel@gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <d1a23116d054e2ebb00067227f0cffecefe33e11.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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
 David Howells <dhowells@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
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
 Olga Kornievskaia <kolga@netapp.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Sunil Goutham <sgoutham@marvell.com>,
 linux-kselftest@vger.kernel.org, Chaitanya Kulkarni <kch@nvidia.com>,
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
 Eduard Zingerman <eddyz87@gmail.com>, hariprasad <hkelam@marvell.com>,
 Chuck Lever <chuck.lever@oracle.com>, Jiri Olsa <jolsa@kernel.org>,
 Praveen Kaligineedi <pkaligineedi@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>, Geetha sowjanya <gakula@marvell.com>,
 Trond Myklebust <trondmy@kernel.org>, Felix Fietkau <nbd@nbd.name>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/8/14 23:49, Alexander H Duyck wrote:
> On Thu, 2024-08-08 at 20:37 +0800, Yunsheng Lin wrote:
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
>> Acked-by: Chuck Lever <chuck.lever@oracle.com>
>> Acked-by: Sagi Grimberg <sagi@grimberg.me>
>> ---
>>  drivers/net/ethernet/google/gve/gve_rx.c      |  4 ++--
>>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  2 +-
>>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 +-
>>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  2 +-
>>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  4 ++--
>>  .../marvell/octeontx2/nic/otx2_common.c       |  2 +-
>>  drivers/net/ethernet/mediatek/mtk_wed_wo.c    |  4 ++--
>>  drivers/nvme/host/tcp.c                       |  8 +++----
>>  drivers/nvme/target/tcp.c                     | 22 +++++++++----------
>>  drivers/vhost/net.c                           |  6 ++---
>>  include/linux/page_frag_cache.h               | 21 +++++++++---------
>>  include/linux/skbuff.h                        |  2 +-
>>  kernel/bpf/cpumap.c                           |  2 +-
>>  mm/page_frag_cache.c                          | 12 +++++-----
>>  net/core/skbuff.c                             | 16 +++++++-------
>>  net/core/xdp.c                                |  2 +-
>>  net/rxrpc/txbuf.c                             | 15 +++++++------
>>  net/sunrpc/svcsock.c                          |  6 ++---
>>  .../selftests/mm/page_frag/page_frag_test.c   | 13 ++++++-----
>>  19 files changed, 75 insertions(+), 70 deletions(-)
>>
> 
> I still say no to this patch. It is an unnecessary name change and adds
> no value. If you insist on this patch I will reject the set every time.
> 
> The fact is it is polluting the git history and just makes things
> harder to maintain without adding any value as you aren't changing what
> the function does and there is no need for this. In addition it just

I guess I have to disagree with the above 'no need for this' part for
now, as mentioned in [1]:

"There are three types of API as proposed in this patchset instead of
two types of API:
1. page_frag_alloc_va() returns [va].
2. page_frag_alloc_pg() returns [page, offset].
3. page_frag_alloc() returns [va] & [page, offset].

You seemed to miss that we need a third naming for the type 3 API.
Do you see type 3 API as a valid API? if yes, what naming are you
suggesting for it? if no, why it is not a valid API?"


1. https://lore.kernel.org/all/ca6be29e-ab53-4673-9624-90d41616a154@huawei.com/

> makes it that much harder to backport fixes in the future as people
> will have to work around the rename.
> 
