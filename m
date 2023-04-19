Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C771C6E70AC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 03:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6855C41895;
	Wed, 19 Apr 2023 01:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6855C41895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681866729;
	bh=lVEn0Z+GA3/8VBhRKdW0fhfwIhYg5eNQFVtw3ZXa9y8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Svr/oP4qFzWsdGUluJe0E1zJLtYqJqqXI70Mr2qIoL6fUCoLT3IcuXPZrz0u8DRdV
	 VVPM10PXEYll4wcKOQhJiPJ1o0cjsXOJW16zD6o9HDB8ay7kgZXXQibgc+hIu6D/eb
	 oPfv6Cy7aiMRwTzmA4RN6ko8mp7vUhq3NeN+FrYec/U+u841K9Wx0Xn/7R2M+H4Lor
	 xI1K5s6fZt1m+RFyPB+0HzCGLdaYTl61K8yJvZSo0RVz3nrhZlZf04/2q3fMlJBnb/
	 MVY0HpG9XrYqYJ8bYNKFePcN8N5UEtr6K1c3ESsQAcOItVA6RvvspWLz1ZzbW0C72Z
	 z+NBDyUxNTB8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C65pY2-EJhlZ; Wed, 19 Apr 2023 01:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B2D441734;
	Wed, 19 Apr 2023 01:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B2D441734
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB6DC1C4318
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 01:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE30541734
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 01:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE30541734
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ce4HYqv_YxQL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 01:12:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80839416BC
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com
 [115.236.118.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80839416BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 01:12:01 +0000 (UTC)
Received: from [0.0.0.0] (unknown [172.96.223.238])
 by mail-m11875.qiye.163.com (Hmail) with ESMTPA id ACCD92801F5;
 Wed, 19 Apr 2023 09:11:49 +0800 (CST)
Message-ID: <ff2e0a06-abbb-213a-40ed-20c8e8b2f429@sangfor.com.cn>
Date: Wed, 19 Apr 2023 09:11:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Simon Horman <simon.horman@corigine.com>
References: <20230417074016.3920-1-dinghui@sangfor.com.cn>
 <20230417074016.3920-2-dinghui@sangfor.com.cn>
 <ZD70DKC3+K6gngTh@corigine.com>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <ZD70DKC3+K6gngTh@corigine.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTEMaVkJOH00aSBpOT05CGVUTARMWGhIXJBQOD1
 lXWRgSC1lBWUpMSVVCTVVJSUhVSUhDWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Tid: 0a87971175d02eb1kusnaccd92801f5
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mgw6DCo5Tj0JGhESLzEsKkI0
 TB8aFChVSlVKTUNKQ01NTEpMTU9KVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKTElVQk1VSUlIVUlIQ1lXWQgBWUFPT0xONwY+
Subject: Re: [Intel-wired-lan] [RESEND PATCH net 1/2] iavf: Fix
 use-after-free in free_netdev
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 huangcun@sangfor.com.cn, linux-kernel@vger.kernel.org,
 grzegorzx.szczurek@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/4/19 3:48, Simon Horman wrote:
> Hi Ding Hui,
> 
> On Mon, Apr 17, 2023 at 03:40:15PM +0800, Ding Hui wrote:
>> We do netif_napi_add() for all allocated q_vectors[], but potentially
>> do netif_napi_del() for part of them, then kfree q_vectors and lefted
> 
> nit: lefted -> leave
> 

Thanks, I'll update in v2.

>> invalid pointers at dev->napi_list.
>>
>> If num_active_queues is changed to less than allocated q_vectors[] by
>> unexpected, when iavf_remove, we might see UAF in free_netdev like this:
>>

...

>>
>> Fix it by letting netif_napi_del() match to netif_napi_add().
>>
>> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
>> Cc: Donglin Peng <pengdonglin@sangfor.com.cn>
>> CC: Huang Cun <huangcun@sangfor.com.cn>
> 
> as this is a fix it probably should have a fixes tag.
> I wonder if it should be:
> 
> Fixes: cc0529271f23 ("i40evf: don't use more queues than CPUs")

I don't think so.
I searched the git log, and found that the mismatched usage was
introduced since the beginning of i40evf_main.c, so I'll add

Fixes: 5eae00c57f5e ("i40evf: main driver core")

in v2.

> 
> Code change looks good to me.
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> 

Thanks.

And sorry for you confusion since my RESEND.

>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +-----
>>   1 file changed, 1 insertion(+), 5 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index 095201e83c9d..a57e3425f960 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -1849,19 +1849,15 @@ static int iavf_alloc_q_vectors(struct iavf_adapter *adapter)
>>   static void iavf_free_q_vectors(struct iavf_adapter *adapter)
>>   {
>>   	int q_idx, num_q_vectors;
>> -	int napi_vectors;
>>   
>>   	if (!adapter->q_vectors)
>>   		return;
>>   
>>   	num_q_vectors = adapter->num_msix_vectors - NONQ_VECS;
>> -	napi_vectors = adapter->num_active_queues;
>>   
>>   	for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
>>   		struct iavf_q_vector *q_vector = &adapter->q_vectors[q_idx];
>> -
>> -		if (q_idx < napi_vectors)
>> -			netif_napi_del(&q_vector->napi);
>> +		netif_napi_del(&q_vector->napi);
>>   	}
>>   	kfree(adapter->q_vectors);
>>   	adapter->q_vectors = NULL;
>> -- 
>> 2.17.1
>>
> 

-- 
Thanks,
- Ding Hui

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
