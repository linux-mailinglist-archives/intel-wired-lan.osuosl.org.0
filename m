Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBB06E7095
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 03:00:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78FF34156A;
	Wed, 19 Apr 2023 01:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78FF34156A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681866053;
	bh=FyDkum+W2Lar+pHgNW/Hx0P4jSikWvd3dbdGu4lyt9w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TNag5ckeffcwqYo5Qwf3GzdmrbA6qEnZ+DCl9xVcnYlpPF2qPWmrPxyqHMwPhGNNw
	 iAV/dC+t1rImUjEOmyVjDvMemfE12xjgCXatiNCFZJd3YHkbALUsqd4oa8qZ3tmu9V
	 PSvRsJrkpeh/wwLhHdfdCyhUVZBe0OJKVTGoDg0Ecffgrbwb2xy895BZQwtNhvIhzS
	 AjLgz+CVTFqPlCuP17vnOkpQQD+od2usVHVJSROS8t203/xgHRvLdTVZiVProk+AK+
	 hZ0VzetDvareAfxVVwDNqIEirrf7HCtx4O+Ez+uo7emXkhwmcZlBMCGcGq3/KPRmHm
	 WSMH/o78F3YGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cJMpwDgUsx-M; Wed, 19 Apr 2023 01:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 519B340980;
	Wed, 19 Apr 2023 01:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 519B340980
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32AB81C4310
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 01:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17A714013D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 01:00:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17A714013D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2sPWU4TViyxL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 01:00:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5ECA40199
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com
 [115.236.118.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5ECA40199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 01:00:45 +0000 (UTC)
Received: from [0.0.0.0] (unknown [172.96.223.238])
 by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 9995B2803A9;
 Wed, 19 Apr 2023 09:00:34 +0800 (CST)
Message-ID: <4831d6e8-72be-dd17-9c6c-6f37f58fa37c@sangfor.com.cn>
Date: Wed, 19 Apr 2023 09:00:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org
References: <20230408140030.5769-1-dinghui@sangfor.com.cn>
 <20230408140030.5769-2-dinghui@sangfor.com.cn>
 <be26a12c-6463-0e3b-9e05-eee8645e7fa6@intel.com>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <be26a12c-6463-0e3b-9e05-eee8645e7fa6@intel.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZQx5LVk5LH04eSUNJTBlDSlUTARMWGhIXJBQOD1
 lXWRgSC1lBWUpMSVVCTVVJSUhVSUhDWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Tid: 0a879707273b2eb1kusn9995b2803a9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6N006Djo*Cj0SDhEdOBUqLwMp
 QgFPFENVSlVKTUNKQ01NS09JS0hKVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKTElVQk1VSUlIVUlIQ1lXWQgBWUFISktLNwY+
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] iavf: Fix use-after-free in
 free_netdev
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
Cc: keescook@chromium.org, grzegorzx.szczurek@intel.com,
 jesse.brandeburg@intel.com, Huang Cun <huangcun@sangfor.com.cn>,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, Donglin Peng <pengdonglin@sangfor.com.cn>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/4/19 0:50, Tony Nguyen wrote:
> On 4/8/2023 7:00 AM, Ding Hui wrote:
>> We do netif_napi_add() for all allocated q_vectors[], but potentially
>> do netif_napi_del() for part of them, then kfree q_vectors and lefted
>> invalid pointers at dev->napi_list.
>>
>> If num_active_queues is changed to less than allocated q_vectors[] by
>> by unexpected, when iavf_remove, we might see UAF in free_netdev like 
>> this:
>>
>> [ 4093.900222] 
>> ==================================================================
>> [ 4093.900230] BUG: KASAN: use-after-free in free_netdev+0x308/0x390
>> [ 4093.900232] Read of size 8 at addr ffff88b4dc145640 by task 
>> test-iavf-1.sh/6699
> 
> ...
> 
>> Fix it by letting netif_napi_del() match to netif_napi_add().
>>
> 
> Should this have a Fixes:?
> 

Yes, I searched the git log, and found that the mismatched usage was
introduced since the beginning of i40evf_main.c, so I'll add

Fixes: 5eae00c57f5e ("i40evf: main driver core")

in v2.

-- 
Thanks,
- Ding Hui

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
