Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AE27FEB18
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 09:46:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A61C26F4BA;
	Thu, 30 Nov 2023 08:46:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A61C26F4BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701333984;
	bh=VE4KJzkvGYqhLU0dTo4tTYBAA2tuYClBZePWsio60TU=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aH4qYCAd8r2+6bmSW4IPeRAke2fdXaxItWTdXtareevtX7Fw0mloukHabwPMqf2d7
	 vtj7gfyDTrPlkLgrebApBjpnSTXUhfabWDBH8Hme2rAeS2q2kpa41x1wMAEjtxP/H0
	 tMgpaMOQIkkTk4u9eATcDfnHkAfWvlB9sCqTEgz8Trrj0bcR1KBNSlFjw3HS/LqmOF
	 drOdHTAnOSTHpY3IpW+HmdNuH4mQq2RwkWzPPXNmAxBcdFXFFxrWv7xco88RiTxtta
	 dALJfG7mJYX7gQ7k9gSY/1HM7hEuGaw3Jjh+YFS8a3DEduAlxKdapQLqxKd2XC5cQm
	 Jk3MGdL+NOCxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_feI_UXvolC; Thu, 30 Nov 2023 08:46:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D8B161B3A;
	Thu, 30 Nov 2023 08:46:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D8B161B3A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 743641BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 08:46:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B82341B42
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 08:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B82341B42
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nt5xxPxFAJ1E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 08:46:17 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEE8841B3D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 08:46:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEE8841B3D
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.57])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4SgqRN3BjGzMnZ8;
 Thu, 30 Nov 2023 16:41:20 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 30 Nov
 2023 16:46:12 +0800
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Christoph Hellwig
 <hch@lst.de>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-4-aleksander.lobakin@intel.com>
 <6bd14aa9-fa65-e4f6-579c-3a1064b2a382@huawei.com>
 <a1a0c27f-f367-40e7-9dc2-9421b4b6379a@intel.com>
 <534e7752-38a9-3e7e-cb04-65789712fb66@huawei.com>
 <8c6d09be-78d0-436e-a5a6-b94fb094b0b3@intel.com>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <4814a337-454b-d476-dabe-5035dd6dc51f@huawei.com>
Date: Thu, 30 Nov 2023 16:46:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <8c6d09be-78d0-436e-a5a6-b94fb094b0b3@intel.com>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 03/14] page_pool: avoid
 calling no-op externals when possible
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/11/29 21:17, Alexander Lobakin wrote:
> From: Yunsheng Lin <linyunsheng@huawei.com>
> Date: Wed, 29 Nov 2023 11:17:50 +0800
> 
>> On 2023/11/27 22:32, Alexander Lobakin wrote:
>>>
>>> Chris, any thoughts on a global flag for skipping DMA syncs ladder?
>>
>> It seems there was one already in the past:
>>
>> https://lore.kernel.org/netdev/7c55a4d7-b4aa-25d4-1917-f6f355bd722e@arm.com/T/
> 
> It addresses a different problem, meaningless indirect calls, while this
> one addresses meaningless direct calls :>
> When the above gets merged, we could combine these two into one global,
> but Eric wasn't active with his patch and I remember there were some
> problems, so I wouldn't count on that it will arrive soon.

I went through the above patch, It seems to me that there was no
fundamental problem that stopping us from implementing it in the dma
layer basing on Eric' patch if Eric is no longer interested in working
on a newer version?

It is just that if we allow every subsystem and driver using dma API
doing their own trick of skipping dma sync, then there is less willing
to implement it in the dma layer.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
