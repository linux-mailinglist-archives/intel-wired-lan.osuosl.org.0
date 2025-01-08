Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC50A05707
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 10:38:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A82D40152;
	Wed,  8 Jan 2025 09:38:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HrC3FW1R2hp8; Wed,  8 Jan 2025 09:38:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85DAE40340
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736329084;
	bh=qKe7JjbSYfgWqNHSmSkEK91ZLwUX2k6CBF3+8wJnztI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4LwrHzBI27HwHFgykK8ZLw7A7orW1fcNUr9w1m+1MJDjl/+zpqI9oel1LgONHUupR
	 SiDY9RN6uBukX9qPeYxAYDZl6WDT58TBH7LaNWYJVR4NXnA1YxQXhtmMEXSwEEic9J
	 brTVKTrVsTQ62GJNZmK6zmZ0eTjsqu8Rzt9xRbzANq5456Et22vKjFNfBKiymlkLUt
	 Yg5nZQxE20ErLW+P2+ZruK5JVUdwtP+Wvwvm4XJeXy5rDVGt9q4t32F9W/mbsHhaxL
	 +qDCvnnbLHudtvbCVgwIZ91kbGyBCRWwSTo93HUYDc7iB50M5uXflIa+hnujhzyKvv
	 cGkQmsRbucVyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85DAE40340;
	Wed,  8 Jan 2025 09:38:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D496F1FF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 09:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CED7380B02
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 09:38:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D1O0JoCb3Bms for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 09:38:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.255;
 helo=szxga08-in.huawei.com; envelope-from=linyunsheng@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 75AC780B07
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75AC780B07
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75AC780B07
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 09:38:01 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.194])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4YSjRV6mV3z1W3jT;
 Wed,  8 Jan 2025 17:34:14 +0800 (CST)
Received: from dggpemf200006.china.huawei.com (unknown [7.185.36.61])
 by mail.maildlp.com (Postfix) with ESMTPS id A9BDB14035E;
 Wed,  8 Jan 2025 17:37:56 +0800 (CST)
Received: from [10.67.120.129] (10.67.120.129) by
 dggpemf200006.china.huawei.com (7.185.36.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Wed, 8 Jan 2025 17:37:55 +0800
Message-ID: <f86d3fe9-f508-4463-8587-b001979d70c4@huawei.com>
Date: Wed, 8 Jan 2025 17:37:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jesper Dangaard Brouer <hawk@kernel.org>, <davem@davemloft.net>,
 <kuba@kernel.org>, <pabeni@redhat.com>
CC: <liuyonglong@huawei.com>, <fanghaiqing@huawei.com>,
 <zhangkun09@huawei.com>, Wei Fang <wei.fang@nxp.com>, Shenwei Wang
 <shenwei.wang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, Jeroen de Borst
 <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>,
 Shailend Chand <shailend@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, John Fastabend
 <john.fastabend@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon
 Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Felix Fietkau
 <nbd@nbd.name>, Lorenzo Bianconi <lorenzo@kernel.org>, Ryder Lee
 <ryder.lee@mediatek.com>, Shayne Chen <shayne.chen@mediatek.com>, Sean Wang
 <sean.wang@mediatek.com>, Kalle Valo <kvalo@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Simon Horman <horms@kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <bpf@vger.kernel.org>,
 <linux-rdma@vger.kernel.org>, <linux-wireless@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>
References: <20250106130116.457938-1-linyunsheng@huawei.com>
 <20250106130116.457938-2-linyunsheng@huawei.com>
 <02896f96-57dd-47d5-8fa0-8a8aed30fa9a@kernel.org>
Content-Language: en-US
From: Yunsheng Lin <linyunsheng@huawei.com>
In-Reply-To: <02896f96-57dd-47d5-8fa0-8a8aed30fa9a@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.120.129]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemf200006.china.huawei.com (7.185.36.61)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/8] page_pool: introduce
 page_pool_get_pp() API
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

On 2025/1/7 22:52, Jesper Dangaard Brouer wrote:
> 
> On 06/01/2025 14.01, Yunsheng Lin wrote:
>> introduce page_pool_get_pp() API to avoid caller accessing
>> page->pp directly.
>>
> [...]
> 
>> diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
>> index 543f54fa3020..9c4dbd2289b1 100644
>> --- a/include/net/page_pool/helpers.h
>> +++ b/include/net/page_pool/helpers.h
>> @@ -83,6 +83,11 @@ static inline u64 *page_pool_ethtool_stats_get(u64 *data, const void *stats)
>>   }
>>   #endif
>>   +static inline struct page_pool *page_pool_get_pp(struct page *page)
>> +{
>> +    return page->pp;
>> +}
> 
> IMHO the function name "page_pool_get_pp" is problematic. As calling it "get" indicate to me that we are taking some reference on the pp object. Is this you plan in later patches?

No, this patchset is not going to taking some reference on the pp object.

> 
> If it is simply a dereference of page->pp ... then we could call it page2pp ?

Before this version page_pool_to_pp() is used, this version renamed it to
page_pool_get_pp() as there is an exising netmem_get_pp() in patch 3, which
is also simply a dereference of netmem->pp, using page_pool_to_pp() does not
seem consistent with netmem from API naming point.

> ... but I'm uncertain why we need this change.

This patch is added to make patch 3 more reviewable as page->pp is renamed to
page->pp_item in patch 3. If there is no helper added in this patch, patch 3
might need to touch all the places touched in this patch too.

> 
> --Jesper
> 
