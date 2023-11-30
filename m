Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2897FEECF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 13:20:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F04441DEF;
	Thu, 30 Nov 2023 12:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F04441DEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701346858;
	bh=j9WZi3HL2LvdZfxIKaQbuhPKIAvxAHUOlGv5YMQpalw=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i4h0+B5Cse7A/lNDzmQGLeqXVEZwTF0raJe+0rsBuJgKfchFUaE7PQc5VliAJDErX
	 1RTI6v82tO90ACs/f+hDXNbL2mP97b+5DR/wOgGc7mTWatJ74NG1AlF/CdIazn9zPY
	 xKzWvx5pGpF5FYK6vncjM4QUOBKNlknm8LC/Dd5LlHCkZDCQ6/kw+ZuspkY1XS2ZW/
	 +miDWY+hr3SV+oNvdozYhHTDt1PeCFeFAXItlTlAdYcotQFcL2LnYKFj6CeSzURVdA
	 Oy1MCgMtDqBRC3uGecgNRt+xHBdK0qDCY6iw+5w4ddET6PfzjbKU4t+Anfz2z+UZEN
	 ZOsx0mZ3VPcsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7wGLo9WT-uaw; Thu, 30 Nov 2023 12:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2087441B48;
	Thu, 30 Nov 2023 12:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2087441B48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CF941BF427
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 12:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8253041B48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 12:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8253041B48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jwUtxxZrdLM4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 12:20:50 +0000 (UTC)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C142541B43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 12:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C142541B43
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.54])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4SgwDK5kSSz1P91Y;
 Thu, 30 Nov 2023 20:17:05 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 30 Nov
 2023 20:20:44 +0800
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-4-aleksander.lobakin@intel.com>
 <6bd14aa9-fa65-e4f6-579c-3a1064b2a382@huawei.com>
 <a1a0c27f-f367-40e7-9dc2-9421b4b6379a@intel.com>
 <534e7752-38a9-3e7e-cb04-65789712fb66@huawei.com>
 <8c6d09be-78d0-436e-a5a6-b94fb094b0b3@intel.com>
 <4814a337-454b-d476-dabe-5035dd6dc51f@huawei.com>
 <d8631d76-4bb3-41a4-a2b2-86725867d2a9@intel.com>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <6c234df1-d20a-812e-3c58-7e3941d8309b@huawei.com>
Date: Thu, 30 Nov 2023 20:20:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <d8631d76-4bb3-41a4-a2b2-86725867d2a9@intel.com>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
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
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/11/30 19:58, Alexander Lobakin wrote:
> From: Yunsheng Lin <linyunsheng@huawei.com>
> Date: Thu, 30 Nov 2023 16:46:11 +0800
> 
>> On 2023/11/29 21:17, Alexander Lobakin wrote:
>>> From: Yunsheng Lin <linyunsheng@huawei.com>
>>> Date: Wed, 29 Nov 2023 11:17:50 +0800
>>>
>>>> On 2023/11/27 22:32, Alexander Lobakin wrote:
>>>>>
>>>>> Chris, any thoughts on a global flag for skipping DMA syncs ladder?
>>>>
>>>> It seems there was one already in the past:
>>>>
>>>> https://lore.kernel.org/netdev/7c55a4d7-b4aa-25d4-1917-f6f355bd722e@arm.com/T/
>>>
>>> It addresses a different problem, meaningless indirect calls, while this
>>> one addresses meaningless direct calls :>
>>> When the above gets merged, we could combine these two into one global,
>>> but Eric wasn't active with his patch and I remember there were some
>>> problems, so I wouldn't count on that it will arrive soon.
>>
>> I went through the above patch, It seems to me that there was no
>> fundamental problem that stopping us from implementing it in the dma
>> layer basing on Eric' patch if Eric is no longer interested in working
>> on a newer version?
> 
> I'm somewhat interested in continuing working on Eric's patch, but not
> now. Have some urgent projects to work on, I could take this in January
> I guess...
> This PP-specific shortcut was done earlier and gives good boosts. It
> would be trivial to remove it together with the XSk shortcut once a
> generic both indirect and direct call DMA shortcut lands.
> Does this sounds good / justified enough? Or you and other
> reviewers/maintainers would prefer to wait for the generic one without
> taking this patch?
> 

I would prefer we could wait for the generic one as there is only about one
month between now and january:)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
