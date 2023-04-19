Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C636E7089
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 02:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1810D417EF;
	Wed, 19 Apr 2023 00:53:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1810D417EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681865633;
	bh=1I4/dPNpzz0Q9KebI4N3Dv+z7/TfrTT4a94/QpZqOKw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sm7RwbvTd7SpaBI16cTmzYutWmG1yamNUY2DB6/VI0Yk6kaDmbb3q24mm3BKCLQtl
	 9XTJU2Cqfn8JcyfPSM3qlymfcWlahGang70/Aj1ITlBs8qSgRKTOlaMKapaY6xShB/
	 su0WFnVboplj5cIWZqN3Cbh6cWKGtLHegF6FztXEAtkd5OYWtVRrjYTMR95OgL+L60
	 rbpPLEZC7dffCXR1zoYDnKvoy6FMSXM5ZBZ+H6g8tPohjJ2s6BPmeWhd2dj9kvXVXw
	 B2COlFDJh7kNGYYcqJR91R5Tr+jQwKguwDpk911+Nv7BgNsqJR6kMo2VppD8H/dOXZ
	 32dnb6U0pNOIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RBNOnol9j0nw; Wed, 19 Apr 2023 00:53:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DDB34417AF;
	Wed, 19 Apr 2023 00:53:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDB34417AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD11F1C4303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 00:53:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95E4383C00
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 00:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95E4383C00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id egLB6pJ-ed-Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 00:53:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F64583BFE
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com
 [115.236.118.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F64583BFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 00:53:45 +0000 (UTC)
Received: from [0.0.0.0] (unknown [172.96.223.238])
 by mail-m11875.qiye.163.com (Hmail) with ESMTPA id A0EC62802EC;
 Wed, 19 Apr 2023 08:53:33 +0800 (CST)
Message-ID: <63170820-473b-5f50-a8ff-3cba91fe5046@sangfor.com.cn>
Date: Wed, 19 Apr 2023 08:53:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Michal Kubiak <michal.kubiak@intel.com>
References: <20230408140030.5769-1-dinghui@sangfor.com.cn>
 <20230408140030.5769-3-dinghui@sangfor.com.cn>
 <ZD7BMI+OjggaQmZg@localhost.localdomain>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <ZD7BMI+OjggaQmZg@localhost.localdomain>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTBgZVkMfGhpJSx1NHh1LHlUTARMWGhIXJBQOD1
 lXWRgSC1lBWUpMSVVCTVVJSUhVSUhDWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Tid: 0a879700bc852eb1kusna0ec62802ec
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NE06USo4GD0OGhEdKDUjCkpO
 FEpPFBVVSlVKTUNKQ01OTUlKTUtLVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKTElVQk1VSUlIVUlIQ1lXWQgBWUFITUlJNwY+
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] iavf: Fix out-of-bounds when
 setting channels on remove
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
Cc: Donglin Peng <pengdonglin@sangfor.com.cn>, keescook@chromium.org,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 Huang Cun <huangcun@sangfor.com.cn>, linux-kernel@vger.kernel.org,
 grzegorzx.szczurek@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/4/19 0:11, Michal Kubiak wrote:
> On Sat, Apr 08, 2023 at 10:00:30PM +0800, Ding Hui wrote:
>> If we set channels greater when iavf_remove, the waiting reset done
>> will be timeout, then returned with error but changed num_active_queues
>> directly, that will lead to OOB like the following logs. Because the
>> num_active_queues is greater than tx/rx_rings[] allocated actually.
>>

...

>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
>> index 6f171d1d85b7..d8a3c0cfedd0 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
>> @@ -1857,13 +1857,15 @@ static int iavf_set_channels(struct net_device *netdev,
>>   	/* wait for the reset is done */
>>   	for (i = 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
>>   		msleep(IAVF_RESET_WAIT_MS);
>> +		if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
>> +			return -EOPNOTSUPP;
>>   		if (adapter->flags & IAVF_FLAG_RESET_PENDING)
>>   			continue;
>>   		break;
>>   	}
>>   	if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
>>   		adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
>> -		adapter->num_active_queues = num_req;
>> +		adapter->num_req_queues = 0;
>>   		return -EOPNOTSUPP;
>>   	}
>>   
> 
> Looks OK to me.
> Just consider moving repro scripts from the cover letter to the commit
> message.
> 

Sure, I will. Thanks again.

-- 
Thanks,
- Ding Hui

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
