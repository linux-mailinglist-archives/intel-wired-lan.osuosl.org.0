Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 064969A1988
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 05:55:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40A3F606E5;
	Thu, 17 Oct 2024 03:55:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gVrYlHH26Dpq; Thu, 17 Oct 2024 03:55:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52140606F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729137316;
	bh=XdwVZHuLRqOwvtMBNraE1pG5mvNR8vi5JPIV8cLPmBg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V3YUq1PvnAYSeWXNjRGdy1aTTJcedAAg3Bi9HvOYsMVMg3Q8A8f9Y4BWoiPv58SN8
	 4g4aFeg8XvVWeZaR0HM9dSuN26lFlp/muIOqUvt2H9DQ8DQeFKr+EldK3gxcriIZjR
	 GqkYOfMtnbK6wT1R4GznQGaVYGr+jKu9hN3gdIvEoDIjLcJN5S7dwo+MViqE8FYFlE
	 zhl079ji0OOeLBNcIpmnhQGhdv2wqps/d/ek7pk+P1JnlMYS2rq/DWO6mKe4YLZ14m
	 +ulzOxTiukykuS4LyeGPecrDdCACW1L7iwuzDMCcuu1pP0rLtn6JNSN156t+kWRBQC
	 mb9+gwcZS0/LA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52140606F2;
	Thu, 17 Oct 2024 03:55:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C7D5527EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 03:55:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2B0E80E08
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 03:55:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IenGrjNai4iH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 03:55:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0D7AB80A92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D7AB80A92
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D7AB80A92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 03:55:12 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.234])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4XTYqf2y2Lz20qSw;
 Thu, 17 Oct 2024 11:54:22 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 56AF41400CF;
 Thu, 17 Oct 2024 11:55:07 +0800 (CST)
Received: from [10.174.179.113] (10.174.179.113) by
 dggpemf500002.china.huawei.com (7.185.36.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 17 Oct 2024 11:55:06 +0800
Message-ID: <672730fc-2224-d5fe-87d0-7dc9b00bf207@huawei.com>
Date: Thu, 17 Oct 2024 11:55:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <ast@kernel.org>, <daniel@iogearbox.net>,
 <hawk@kernel.org>, <john.fastabend@gmail.com>, <vedang.patel@intel.com>,
 <andre.guedes@intel.com>, <maciej.fijalkowski@intel.com>,
 <jithu.joseph@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>
References: <20241016105310.3500279-1-yuehaibing@huawei.com>
 <20241016185333.GL2162@kernel.org>
 <8e4ef7f6-1d7d-45dc-b26e-4d9bc37269de@intel.com>
 <f8bcde08-b526-4b2e-8098-88402107c8ee@intel.com>
From: Yue Haibing <yuehaibing@huawei.com>
In-Reply-To: <f8bcde08-b526-4b2e-8098-88402107c8ee@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.179.113]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix passing 0 to ERR_PTR in
 igc_xdp_run_prog()
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

On 2024/10/17 7:12, Jacob Keller wrote:
> 
> 
> On 10/16/2024 4:06 PM, Jacob Keller wrote:
>>
>>
>> On 10/16/2024 11:53 AM, Simon Horman wrote:
>>> On Wed, Oct 16, 2024 at 06:53:10PM +0800, Yue Haibing wrote:
>>>> Return NULL instead of passing to ERR_PTR while res is IGC_XDP_PASS,
>>>> which is zero, this fix smatch warnings:
>>>> drivers/net/ethernet/intel/igc/igc_main.c:2533
>>>>  igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'
>>>>
>>>> Fixes: 26575105d6ed ("igc: Add initial XDP support")
>>>> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
>>>> ---
>>>>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>>>> index 6e70bca15db1..c3d6e20c0be0 100644
>>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>>> @@ -2530,7 +2530,7 @@ static struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
>>>>  	res = __igc_xdp_run_prog(adapter, prog, xdp);
>>>>  
>>>>  out:
>>>> -	return ERR_PTR(-res);
>>>> +	return res ? ERR_PTR(-res) : NULL;
>>>
>>> I think this is what PTR_ERR_OR_ZERO() is for.
>>
>> Not quite. PTR_ERR_OR_ZERO is intended for the case where you are
>> extracting an error from a pointer. This is converting an error into a
>> pointer.
>>
>> I am not sure what is really expected here. If res is zero, shouldn't we
>> be returning an skb pointer and not NULL?
>>
>> Why does igc_xdp_run_prog even return a sk_buff pointer at all? It never
>> actually returns an skb...
>>
>> This feels like the wrong fix entirely.
>>
>> __igc_xdp_run_prog returns a custom value for the action, between
>> IGC_XDP_PASS, IGC_XDP_TX, IGC_XDP_REDIRECT, or IGC_XDP_CONSUMED.
>>
>> This function is called by igc_xdp_run_prog which converts this to a
>> negative error code with the sk_buff pointer type.
>>
>> All so that we can assign a value to the skb pointer in
>> ice_clean_rx_irq, and check it with IS_ERR
>>
>> I don't like this fix, I think we could drop the igc_xdp_run_prog
>> wrapper, call __igc_xdp_run_prog directly and check its return value
>> instead of this method of using an error pointer.
> 
> Indeed, this SKB error stuff was added by 26575105d6ed ("igc: Add
> initial XDP support") which claims to be aligning with other Intel drivers.
> 

Thanks for review，maybe can fix this as commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c")?

> But the other Intel drivers just have a function that returns the xdp
> result and checks it directly.
> 
> Perhaps this is due to the way that the igc driver shares rings between
> XDP and the regular path?
> 
> Its not clear to me, but I think this fix is not what I would do.
> 
> .
