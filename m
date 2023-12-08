Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A02180A22B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 12:29:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDB0442176;
	Fri,  8 Dec 2023 11:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDB0442176
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702034942;
	bh=CVVeWKo+PTFUlHkGNYHtI+NJgltdlJNQQZLqQNbb7PE=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CArNHttxj2L+W2PLKYlfS3xDSPcVjkCDsrlu2tpK+v4V9s1W4gQC4YvhkXy72Pzsj
	 u/XQTPGbNIzs/+Dw5RkFZlBD+D5s4awpjoX0whE0H/Tizk0VLIy7yoqwQISMgi8I/n
	 PlG6/hdIqPjekBVQK+f62l6y/4gEr41jDOAB8FpxOdbSAsDTk/MF7wAdCcoldnR84C
	 mS4G7cd0FgwwpwFu7RFw5PG8EjYsHkB+wyQsROYStc60bPoy4Qype7MzaxpyckDJVL
	 vWgc1WQTfzd1kPR+xXUGm9DIptShpRpNcTI9heCl2fIl/Hd2FJ6r6OKg7mS+sadV+G
	 VXCJvAd0zjpFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EiavRMKvA_N8; Fri,  8 Dec 2023 11:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D15E84029B;
	Fri,  8 Dec 2023 11:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D15E84029B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DD471BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05FE681402
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05FE681402
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zbE8CyI9ULGq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 11:28:54 +0000 (UTC)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E51AE813DD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 11:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E51AE813DD
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.54])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Smpmv2xLRz1Q6FZ;
 Fri,  8 Dec 2023 19:28:47 +0800 (CST)
Received: from [10.69.30.204] (10.69.30.204) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Fri, 8 Dec
 2023 19:28:48 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
 <20231207172010.1441468-9-aleksander.lobakin@intel.com>
 <1103fe8f-04c8-8cc4-8f1b-ff45cea22b54@huawei.com>
Message-ID: <687ac9bb-c7ca-fc71-9e61-d9247198224a@huawei.com>
Date: Fri, 8 Dec 2023 19:28:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <1103fe8f-04c8-8cc4-8f1b-ff45cea22b54@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.69.30.204]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 08/12] libie: add Rx
 buffer management (via Page Pool)
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
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/12/8 17:28, Yunsheng Lin wrote:

>> +
>> +	page_pool_dma_sync_for_cpu(page->pp, page, buf->offset, len);
> 
> Is there a reason why page_pool_dma_sync_for_cpu() is still used when
> page_pool_create() is called with PP_FLAG_DMA_SYNC_DEV flag? Isn't syncing
> already handled in page_pool core when when PP_FLAG_DMA_SYNC_DEV flag is
> set?

Ah, it is a sync_for_cpu.
Ignore this one.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
