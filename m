Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7BF6F2F33
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 May 2023 09:41:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F99F82117;
	Mon,  1 May 2023 07:41:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F99F82117
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682926911;
	bh=VtMHBpU+uMRjTPoEqhJ+Y4L/cg2dfJ1WZNlWdGFV7k0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n4NSQNURjZNSAJHU9XGT8kOyfgoLIfTkRvw8lDAj/bhlnj6fR/XZJUFVTSoZh5s5s
	 Yfz/kjm9Nd1xX8eNwEIjTlJjqYnDbTr+CLvKaKVJAOuhNBGb3Eq31XZJVB7eieonfN
	 iqpYDoePW4aQ8825XO1F18qO624N6RGf61vnRQifjopQM71iv/zcdHp13ZC/Qa1Jom
	 j44Skyem/59Y05D6vCQhxjUy6/AMSQhaboAn1v3qOTDULtjhGrbrNRPqMaqwXlmbNE
	 PnDvwkBLz+zwXEoBa8vWEub4cyZFFYtBhi7p72N3vsk5rvqW1mDzoHV8ZRzD6MdafV
	 wgEYBGn+dE8tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T0AnfsOCFrXS; Mon,  1 May 2023 07:41:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99FF8820C0;
	Mon,  1 May 2023 07:41:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99FF8820C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23BF61BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 07:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBB17606F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 07:41:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBB17606F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6R0J3WMmNsb1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 May 2023 07:41:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E93F6605A3
Received: from mail-m11876.qiye.163.com (mail-m11876.qiye.163.com
 [115.236.118.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E93F6605A3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 May 2023 07:41:42 +0000 (UTC)
Received: from [IPV6:240e:3b7:327f:5c30:7d8b:c3e:1a47:99e8] (unknown
 [IPV6:240e:3b7:327f:5c30:7d8b:c3e:1a47:99e8])
 by mail-m11876.qiye.163.com (Hmail) with ESMTPA id 101163C021F;
 Mon,  1 May 2023 15:41:17 +0800 (CST)
Message-ID: <730cf5ed-2239-34f7-79a5-ffa4d9bb8fae@sangfor.com.cn>
Date: Mon, 1 May 2023 15:41:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Simon Horman <simon.horman@corigine.com>
References: <20230429132022.31765-1-dinghui@sangfor.com.cn>
 <20230429132022.31765-2-dinghui@sangfor.com.cn>
 <ZE9j4CHtQbm5S3cg@corigine.com>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <ZE9j4CHtQbm5S3cg@corigine.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSUNNVh1LTx5KH0gaHU4YQlUTARMWGhIXJBQOD1
 lXWRgSC1lBWUlPSx5BSBlMQUhJTB1BThhIS0FMH0MZQRhIHkFKGk9MQUJCHkNZV1kWGg8SFR0UWU
 FZT0tIVUpKS0hKTFVKS0tVS1kG
X-HM-Tid: 0a87d6423c432eb2kusn101163c021f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6N006Shw4KD0RCkIaHBQ5FA4I
 HT4KFBpVSlVKTUNJQklNQ0xDSkhPVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlJT0seQUgZTEFISUwdQU4YSEtBTB9DGUEYSB5BShpPTEFCQh5DWVdZCAFZQUhOT0M3Bg++
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/2] iavf: Fix use-after-free
 in free_netdev
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org, gregory.v.rose@intel.com,
 anthony.l.nguyen@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, grzegorzx.szczurek@intel.com,
 edumazet@google.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-hardening@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/5/1 15:01, Simon Horman wrote:
> On Sat, Apr 29, 2023 at 09:20:21PM +0800, Ding Hui wrote:
>> We do netif_napi_add() for all allocated q_vectors[], but potentially
>> do netif_napi_del() for part of them, then kfree q_vectors and leave
>> invalid pointers at dev->napi_list.
>>
>> ...
>>
>> Although the patch #2 (of 2) can avoid the issuse triggered by this
>> repro.sh, there still are other potential risks that if num_active_queues
>> is changed to less than allocated q_vectors[] by unexpected, the
>> mismatched netif_napi_add/del() can also casue UAF.
> 
> nit: ./checkpatch --codespell tells me:
> 
>       s/casue/cause/
> 

Sorry, I'll fix it in v4.

>> Since we actually call netif_napi_add() for all allocated q_vectors
>> unconditionally in iavf_alloc_q_vectors(), so we should fix it by
>> letting netif_napi_del() match to netif_napi_add().
>>
>> Fixes: 5eae00c57f5e ("i40evf: main driver core")
>> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
>> Cc: Donglin Peng <pengdonglin@sangfor.com.cn>
>> Cc: Huang Cun <huangcun@sangfor.com.cn>
>> Reviewed-by: Simon Horman <simon.horman@corigine.com>
>> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
>> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> 
> 
> 

-- 
Thanks,
-dinghui

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
