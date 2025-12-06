Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA8CCA9F21
	for <lists+intel-wired-lan@lfdr.de>; Sat, 06 Dec 2025 03:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AC9740912;
	Sat,  6 Dec 2025 02:47:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JSByqmmRRJJR; Sat,  6 Dec 2025 02:47:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80B94408D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764989269;
	bh=1qGGGlWpd43sGzols7uTQQTQZ9Voc2IeWyTd+hhDAi4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lXc1SFFuhRL0gU6337scmUiHwJd34PWRniEFlW8nobZaBd4R7ECYwphXpb/hepyEB
	 V/clxe+7llqmxdjzvgKT3T71Cia1NhdsOD8KxNtxM0/3V2u/cQ4Me7V5yOW9S0r+ep
	 cT8kGV4TSZuH04d1P5PlGZjBpZ5okRMAuBG0VJODy5dCIqXIdEJ59gJB5kXP7QQLJN
	 29X18eFkLArCzC2BbzTF1e43SGYayjtjIB0UTcQ7ds1reZEyU7w1sV3kLSiBeS2T5K
	 7PNp9jSy/FVuBRsHzEpRjdHTtfczCDCTtS7nQn6k4qhY+YwEgsCIn8nk2g+/pONGNO
	 SqLY+jGUZLhxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80B94408D2;
	Sat,  6 Dec 2025 02:47:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 19BECE7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 02:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3FF840166
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 02:47:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-MyxXVdVfAa for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Dec 2025 02:47:47 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 06 Dec 2025 02:47:46 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 342A940122
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 342A940122
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.224.82.23;
 helo=mail-m8223.xmail.ntesmail.com; envelope-from=dinghui@sangfor.com.cn;
 receiver=<UNKNOWN> 
Received: from mail-m8223.xmail.ntesmail.com (mail-m8223.xmail.ntesmail.com
 [156.224.82.23])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 342A940122
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 02:47:45 +0000 (UTC)
Received: from [172.23.68.66] (unknown [43.247.70.80])
 by smtp.qiye.163.com (Hmail) with ESMTP id 2c32c9789;
 Sat, 6 Dec 2025 10:42:37 +0800 (GMT+08:00)
Message-ID: <1188a9d2-a895-478b-9474-0fb84b4e2636@sangfor.com.cn>
Date: Sat, 6 Dec 2025 10:42:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
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
Content-Language: en-US
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <IA3PR11MB898665810DD47854F80941A7E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9af18a337109d9kunm66339721144a441
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTxofVkxDTBkdHRhLHR5DH1YVFAkWGhdVEwETFh
 oSFyQUDg9ZV1kYEgtZQVlPSFVJT0xVTEtVQ0tZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0hVSktLVU
 pCS0tZBg++
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
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

On 2025/12/6 5:09, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Ding Hui
>> Sent: Friday, December 5, 2025 9:16 AM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
>> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
>> pabeni@redhat.com; Keller, Jacob E <jacob.e.keller@intel.com>; intel-
>> wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Ding, Hui
>> <dinghui@sangfor.com.cn>
>> Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout
>> in ice_release_res()
>>
>> The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
>> ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
>> to microseconds.
>>
>> But the ice_release_res() function was missed, and its logic still
>> treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
>>
>> So correct the issue by usecs_to_jiffies().
>>
> 
> Please add a brief "how verified" paragraph (platform + steps).
> This is a unit-conversion fix in a timeout path; a short test description helps reviewers and stable backports validate the change.
> 
Sorry for not being able to provide the verification information, as
I haven't actually encountered this issue.

The ice_release_res() is almost always invoked during downloading DDP
when modprobe ice.

IMO, it seems like that only when the NIC hardware or firmware enters
a bad state causing single command to fail or timeout (1 second), and
then here do the retry logic (10 senconds).

So it's hard to validate on healthy NIC, maybe inject faults in low level
function, such as ice_sq_send_cmd().

> And you can add my:
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> 
>> Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
>> ice_sq_done timeout")
>> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
>> b/drivers/net/ethernet/intel/ice/ice_common.c
>> index 6fb0c1e8ae7c..5005c299deb1 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -1885,7 +1885,7 @@ void ice_release_res(struct ice_hw *hw, enum
>> ice_aq_res_ids res)
>>   	/* there are some rare cases when trying to release the
>> resource
>>   	 * results in an admin queue timeout, so handle them correctly
>>   	 */
>> -	timeout = jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
>> +	timeout = jiffies + 10 *
>> usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT);
>>   	do {
>>   		status = ice_aq_release_res(hw, res, 0, NULL);
>>   		if (status != -EIO)
>> --
>> 2.17.1
> 
> 
> 

-- 
Thanks,
- Ding Hui

