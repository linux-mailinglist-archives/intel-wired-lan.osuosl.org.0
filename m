Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3B0CAA6AC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 06 Dec 2025 14:09:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D294F608C6;
	Sat,  6 Dec 2025 13:09:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xc7hrj_r8GBV; Sat,  6 Dec 2025 13:09:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4315C608B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765026581;
	bh=2ZqppnyeRXjcNWRqQhd22/Tt4xGEjLKdgr0n1vnqa7M=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AQ2nlAUNwp0X9avov9PYqtHLkPhrWn0a2/Z9pIT+rVbupiJjHbN4buYI9avr7ZR2b
	 20+t6DOecMDLRgc3bFlwJPdOtpQOYyxRpOr83jU9tUVJvDbqCJEYOHZ80savTvQ7Up
	 XXC7LHmllv50b5RxGx4d+cVAm/HNgcrjPpk9u8NRGO7KP5lbxS9NiPS3+4nv56niga
	 PA7+iu+Gu2+ZNekHthfhRN+UUsQbLDXbMaVcdGQw8YHX3qwpz01r5ledsBVxKjgVRQ
	 21pE1xS10A/SkP9OGJCaXIuSPsF78ZYdPqip4HyE2jQeg3KUdkjtffSMU6DbctTSgX
	 Mov33RCcPdnfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4315C608B2;
	Sat,  6 Dec 2025 13:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ABD51A9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 13:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 775D760767
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 13:09:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z4zrJBBTVdaC for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Dec 2025 13:09:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.82;
 helo=mail-m1973182.qiye.163.com; envelope-from=dinghui@sangfor.com.cn;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 73F8B60747
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73F8B60747
Received: from mail-m1973182.qiye.163.com (mail-m1973182.qiye.163.com
 [220.197.31.82])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73F8B60747
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 13:09:33 +0000 (UTC)
Received: from [192.168.1.38] (unknown [113.92.158.29])
 by smtp.qiye.163.com (Hmail) with ESMTP id 2c3a7d440;
 Sat, 6 Dec 2025 21:09:19 +0800 (GMT+08:00)
Message-ID: <568da81f-d892-4921-ac87-2a2de78c422a@sangfor.com.cn>
Date: Sat, 6 Dec 2025 21:08:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "kuba@kernel.org"
 <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20251205081609.23091-1-dinghui@sangfor.com.cn>
 <IA3PR11MB898665810DD47854F80941A7E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <1188a9d2-a895-478b-9474-0fb84b4e2636@sangfor.com.cn>
 <aTP7g5lmRMF5YtQO@horms.kernel.org>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <aTP7g5lmRMF5YtQO@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9af3c7f62409d9kunm9be59ed3188bf97
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSU9LVkxITU8eT0tMHUoZHlYVFAkWGhdVEwETFh
 oSFyQUDg9ZV1kYEgtZQVlKSkhVQklVSk5DVUlCWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
 VKQktLWQY+
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=sangfor.com.cn
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout
 in ice_release_res()
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

On 2025/12/6 17:46, Simon Horman wrote:
> On Sat, Dec 06, 2025 at 10:42:36AM +0800, Ding Hui wrote:
>> On 2025/12/6 5:09, Loktionov, Aleksandr wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>>>> Of Ding Hui
>>>> Sent: Friday, December 5, 2025 9:16 AM
>>>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>>>> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
>>>> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
>>>> pabeni@redhat.com; Keller, Jacob E <jacob.e.keller@intel.com>; intel-
>>>> wired-lan@lists.osuosl.org
>>>> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Ding, Hui
>>>> <dinghui@sangfor.com.cn>
>>>> Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout
>>>> in ice_release_res()
>>>>
>>>> The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
>>>> ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
>>>> to microseconds.
>>>>
>>>> But the ice_release_res() function was missed, and its logic still
>>>> treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
>>>>
>>>> So correct the issue by usecs_to_jiffies().
>>>>
>>>
>>> Please add a brief "how verified" paragraph (platform + steps).
>>> This is a unit-conversion fix in a timeout path; a short test description helps reviewers and stable backports validate the change.
>>>
>> Sorry for not being able to provide the verification information, as
>> I haven't actually encountered this issue.
>>
>> The ice_release_res() is almost always invoked during downloading DDP
>> when modprobe ice.
>>
>> IMO, it seems like that only when the NIC hardware or firmware enters
>> a bad state causing single command to fail or timeout (1 second), and
>> then here do the retry logic (10 senconds).
>>
>> So it's hard to validate on healthy NIC, maybe inject faults in low level
>> function, such as ice_sq_send_cmd().
> 
> In that case I would suggest adding something like this:
> 
> Found by inspection (or static analysis, or a specific tool if publicly
> available, ...).
> Compile tested only.
> 

Sure, I'll send v2 later.

>>
>>> And you can add my:
>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>>
>>>
>>>> Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
>>>> ice_sq_done timeout")
>>>> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
>>>> ---
>>>>    drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
>>>> b/drivers/net/ethernet/intel/ice/ice_common.c
>>>> index 6fb0c1e8ae7c..5005c299deb1 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>>>> @@ -1885,7 +1885,7 @@ void ice_release_res(struct ice_hw *hw, enum
>>>> ice_aq_res_ids res)
>>>>    	/* there are some rare cases when trying to release the
>>>> resource
>>>>    	 * results in an admin queue timeout, so handle them correctly
>>>>    	 */
>>>> -	timeout = jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
>>>> +	timeout = jiffies + 10 *
>>>> usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT);
>>>>    	do {
>>>>    		status = ice_aq_release_res(hw, res, 0, NULL);
>>>>    		if (status != -EIO)
>>>> --
>>>> 2.17.1
>>>
>>>
>>>
>>
>> -- 
>> Thanks,
>> - Ding Hui
>>
>>
> 
> 

-- 
Thanks,
-dinghui

