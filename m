Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D024CAA13E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 06 Dec 2025 06:19:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C08F580DAC;
	Sat,  6 Dec 2025 05:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 22_ugk0Kg9IT; Sat,  6 Dec 2025 05:19:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43A2780D4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764998377;
	bh=Zll0xfj0KNgMho+IFh5jqUaWQ8uH1ENocj6/zj6X/gQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pBkVg49UGr3SKKVG2V143WgJBGNf41+OAf4zWOcAAEEzNa6kbB2o7RO0/v7kXCeQL
	 oKNxu+bhTHzFs4NiDmz3TXq3Gc1WYjfd0ewevZtalACb3RYLTqsfCls0YFvCTCwO5s
	 u8RLzhRPHHGGQrYKAYTHlJOBJK1IIqbWXoHvaXy3LocCBM7Xgy9oam+g26CG48LrJW
	 hE817AbFO8bbyybpebXmvLyFvIOOhv9tY8Z+wqwgTCRl3zyUaGqLECYbOu4/SSvVof
	 meXtUmgjTRDjRwRtqJVr9z70NSQTAiGmZkhAg/KugdtI7dcr5xWnKK4wv1A3l0x/NJ
	 5mDMwu02gu59Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43A2780D4F;
	Sat,  6 Dec 2025 05:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 36459151
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 05:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27F0740152
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 05:19:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N6BIY9lqRMVE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Dec 2025 05:19:34 +0000 (UTC)
X-Greylist: delayed 4008 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 06 Dec 2025 05:19:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B09240010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B09240010
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=101.71.155.116;
 helo=mail-m155116.qiye.163.com; envelope-from=dinghui@sangfor.com.cn;
 receiver=<UNKNOWN> 
Received: from mail-m155116.qiye.163.com (mail-m155116.qiye.163.com
 [101.71.155.116])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B09240010
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 05:19:31 +0000 (UTC)
Received: from [172.23.68.66] (unknown [43.247.70.80])
 by smtp.qiye.163.com (Hmail) with ESMTP id 2c31e3f3a;
 Sat, 6 Dec 2025 09:50:25 +0800 (GMT+08:00)
Message-ID: <528656fe-7a85-46ec-9e73-7e05c144026f@sangfor.com.cn>
Date: Sat, 6 Dec 2025 09:50:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251205081609.23091-1-dinghui@sangfor.com.cn>
 <aTMFRkYZGtk3a_EP@horms.kernel.org>
Content-Language: en-US
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <aTMFRkYZGtk3a_EP@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9af15a672e09d9kunm9d8187fe140c881
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZHh0fVh9OTxgZGBkZTBlNTFYVFAkWGhdVEwETFh
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

On 2025/12/6 0:16, Simon Horman wrote:
> On Fri, Dec 05, 2025 at 04:16:08PM +0800, Ding Hui wrote:
>> The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
>> ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
>> to microseconds.
>>
>> But the ice_release_res() function was missed, and its logic still
>> treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
>>
>> So correct the issue by usecs_to_jiffies().
>>
>> Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for ice_sq_done timeout")
>> Signed-off-by: Ding Hui<dinghui@sangfor.com.cn>
> Thanks,
> 
> I agree with the analysis above and that the problem was introduced
> by the cited commit.
> 
> As a fix for code present in net this should probably be targeted
> at net (or iwl-net?) rather than net-next. But perhaps there is
> no need to repost just to address that.
> 

Sorry, I mixed up the purposes of the net and net-next branches, thank
you for pointing that out, it should be net.
I'll keep that in mind in the future.

>> ---
>>   drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>> index 6fb0c1e8ae7c..5005c299deb1 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -1885,7 +1885,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
>>   	/* there are some rare cases when trying to release the resource
>>   	 * results in an admin queue timeout, so handle them correctly
>>   	 */
>> -	timeout = jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
>> +	timeout = jiffies + 10 * usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT);
>>   	do {
>>   		status = ice_aq_release_res(hw, res, 0, NULL);
>>   		if (status != -EIO)
> I agree this minimal change is appropriate as a bug fix.
> 
> But I think that it would be good to provide a follow-up
> that reworks this code a bit to to use read_poll_timeout().
> As per the aim of the cited commit.
> 

Actually, the ice_aq_release_res() called by ice_release_res() already
implements the underlying logic via read_poll_timeout() by that commit,
and here is primarily responsible for retrying the important release
command.

> This should be targeted at net-next (or iwl-next?).
> Once this bug fix propagates to in net-next.
> 
> Reviewed-by: Simon Horman<horms@kernel.org>
> 
> 

-- 
Thanks,
- Ding Hui

