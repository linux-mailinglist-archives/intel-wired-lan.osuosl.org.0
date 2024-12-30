Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB339FE4BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Dec 2024 10:15:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92DE68128B;
	Mon, 30 Dec 2024 09:15:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bTjgM2n_x6Zu; Mon, 30 Dec 2024 09:15:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E06B181293
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735550130;
	bh=8M70DaegTRvLapXO5cMeyY6oiKiqXb9yY9rhIO2M+YA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2efCvpKyb/cLJEBBN4LOeutAGFmk+q3E0YO4iHM4cidvHTLCjjuxvK3wf0eWdwKXi
	 oMtqTxVF40+84YQYZmo7DxKFsy9ABO+FdbF3dl+XIdvfSrD27nCMAYwzBSyJPH2lPH
	 w9nL5HiK8P5wOCExvnPQVm2JjwYpQog9PYVY3SwPhAekT9xeiwUDHYc1rqFw6THLEV
	 bEL5OnPE96/hvYPIgIJ/6jqBqWm6LZKWMn1ynkFoDxYIGQM2wfOgXu+BTiHsJrLsYg
	 q0YCqWHsQoOymb5IyuD4s8x6o2/soo1r5XjLTRVOGbGXn6YN5aM4QJTG7htWgPdI8Q
	 inVXm5DH6MRJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E06B181293;
	Mon, 30 Dec 2024 09:15:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D423968
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Dec 2024 09:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6846960768
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Dec 2024 09:15:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RzlKj1xXVk1c for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Dec 2024 09:15:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191;
 helo=szxga05-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1CB3860597
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CB3860597
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CB3860597
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Dec 2024 09:15:26 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.17])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4YM9R84Z9Wz1JGfM;
 Mon, 30 Dec 2024 17:14:44 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 326781A0188;
 Mon, 30 Dec 2024 17:15:20 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 30 Dec 2024 17:15:19 +0800
Message-ID: <354e423e-1111-43d5-accd-17a099690369@huawei.com>
Date: Mon, 30 Dec 2024 17:15:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
CC: <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <somnath.kotur@broadcom.com>, <liuyonglong@huawei.com>,
 <fanghaiqing@huawei.com>, <zhangkun09@huawei.com>, Wei Fang
 <wei.fang@nxp.com>, Shenwei Wang <shenwei.wang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet
 <edumazet@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen
 Kaligineedi <pkaligineedi@google.com>, Shailend Chand <shailend@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq Toukan
 <tariqt@nvidia.com>, Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, Shayne Chen
 <shayne.chen@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, Kalle Valo
 <kvalo@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Simon
 Horman <horms@kernel.org>, <imx@lists.linux.dev>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <bpf@vger.kernel.org>, <linux-rdma@vger.kernel.org>,
 <linux-wireless@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
References: <20241213122739.4050137-1-linyunsheng@huawei.com>
 <20241213122739.4050137-2-linyunsheng@huawei.com>
 <CAC_iWj+3Q7CAS3xH9+zWA7nXdFNSJ-XMKQB3ZT0YvUQ-Q2gMCQ@mail.gmail.com>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <CAC_iWj+3Q7CAS3xH9+zWA7nXdFNSJ-XMKQB3ZT0YvUQ-Q2gMCQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH RFCv5 1/8] page_pool: introduce
 page_pool_to_pp() API
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/12/20 20:29, Ilias Apalodimas wrote:
> Hi Yunsheng,
> 
> On Fri, 13 Dec 2024 at 14:35, Yunsheng Lin <linyunsheng@huawei.com> wrote:
>>
>> introduce page_pool_to_pp() API to avoid caller accessing
>> page->pp directly.
>>
> 
> I think we already have way too many abstractions, I'd say we need
> less not more. I don't know what others think, but I don't see what we
> gain from this

I am not sure how it is related to 'abstraction' here.
Either we don't allow drivers accessing the page->pp directly, otherwise
it seems better to provide a proper API for that as my understanding as it
seems better not to mess with internal detail of page_pool.

> 
> Thanks
> /Ilias
