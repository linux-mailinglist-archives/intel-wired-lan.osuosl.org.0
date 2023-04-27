Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E566EFED1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Apr 2023 03:15:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A61AD83C75;
	Thu, 27 Apr 2023 01:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A61AD83C75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682558142;
	bh=F1+fYdLHL1Q5AkqoOr6D1KvSAW1l8t0EKnfHnWDMX3E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J4zdjEdtcrtlhdENTVMTuqELPzY3Yncbnx7E3c+77PF1KCSJkkvM4hmPz0CGbKQ5F
	 wMmGTg1xoiS3pdpPy3huik1+pGyYmClmHAiukoeIXsAj/7G/2WfRRol7vpqP6+2o5P
	 PLe3VpuNgW9gx1mLsBaN9lv8OJ/ihAet+I/7cQUWK68cBOgwzBOND3jpWoUVzxfLrC
	 VXNHrIBctQJeu/kDUNTiaSyj2Mzu0or2jNBm6ihY3sqRzjrkbAEgLuUmEzaY9Z9Jb0
	 oHOeaNvDrGUbwxvPD3WNlt1eQmyTtORRuB2LvK5NzBOop6tlR4SAC7YF06vgMhqrb3
	 4gHUyv+05fsJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VOFc-BKcwJgj; Thu, 27 Apr 2023 01:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B168683C59;
	Thu, 27 Apr 2023 01:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B168683C59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 743971BF39E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 01:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BEEA83C59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 01:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BEEA83C59
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id im0KqJfbRN_7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Apr 2023 01:15:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27EB283C4F
Received: from mail-m11876.qiye.163.com (mail-m11876.qiye.163.com
 [115.236.118.76])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 27EB283C4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 01:15:33 +0000 (UTC)
Received: from [0.0.0.0] (unknown [172.96.223.238])
 by mail-m11876.qiye.163.com (Hmail) with ESMTPA id 2526A3C00F0;
 Thu, 27 Apr 2023 09:15:01 +0800 (CST)
Message-ID: <650acda0-9ec9-7634-3e01-e4870c8890b7@sangfor.com.cn>
Date: Thu, 27 Apr 2023 09:14:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Michal Kubiak <michal.kubiak@intel.com>, anthony.l.nguyen@intel.com
References: <20230419150709.24810-1-dinghui@sangfor.com.cn>
 <20230419150709.24810-2-dinghui@sangfor.com.cn>
 <ZElExd5bAL2FCpIB@localhost.localdomain>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <ZElExd5bAL2FCpIB@localhost.localdomain>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZQ0lKVhofHU5LThhPGR0fTlUTARMWGhIXJBQOD1
 lXWRgSC1lBWUpMSVVCTVVJSUhVSUhDWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Tid: 0a87c0474c3d2eb2kusn2526a3c00f0
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRw6Ihw4Cj0TT0oBIyo3Eyw8
 HTcaCk5VSlVKTUNJTk5DSkpKTEpNVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKTElVQk1VSUlIVUlIQ1lXWQgBWUFISEJINwY+
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix use-after-free
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org,
 grzegorzx.szczurek@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, gregory.v.rose@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-hardening@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/4/26 23:35, Michal Kubiak wrote:
> On Wed, Apr 19, 2023 at 11:07:08PM +0800, Ding Hui wrote:
>> Cc: Huang Cun <huangcun@sangfor.com.cn>
>> Acked-by: Michal Kubiak <michal.kubiak@intel.com>
> 
> I'm sorry, but I don't remember giving "Acked-by" tag for that patch.
> I gave "Reviewed-by" only for the v2 series.
> 

Sorry, that is added by myself since your reply for v1 "Looks OK to me"
and "Looks correct to me", and I tried to ask for your agreement.

> We can't add any tags if they weren't given by the person himself.

I apologize to you.

> Please fix that.

Hi Tony Nguyen,
the patches is already applied to your dev-queue branch, should I send
v3 or you can fix it in your git?

> Nacked-by: Michal Kubiak <michal.kubiak@intel.com>
> 
>> Reviewed-by: Simon Horman <simon.horman@corigine.com>
>> ---
>> v1 to v2:
>>    - add Fixes: tag
>>    - add reproduction script
>>    - update commit message
>>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +-----
>>   1 file changed, 1 insertion(+), 5 deletions(-)
>>
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
