Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E35547ADB28
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 17:15:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BA4282036;
	Mon, 25 Sep 2023 15:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BA4282036
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695654917;
	bh=tpjcZsPr1cZ+I2cUHGTAW3Vh0Ssz3M9iK6wgFjm4SQ4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G6Y5HyQxukyFXx/oMONk4dXwSgM2y7pBM9XOcQ2ABas7b44kuNXr595IjQqmbXOjK
	 qJwrWojKXnU9mnWuZniG9h3FMaUupWCTsVhYAMsPj+1kIExMQxZuY7TCM81tIMimBZ
	 i+Leq9HIB6RsDkZN7tD12Z4bqb6wlrYkRtJQJlUQHj6Z0exUXWr2cszypJX9zLosZp
	 VHKYiSpQuDzx1RrgEfEJ5hVa4As/vYXupu/oOJHfPmTSxQbJ9vHODdmTghCZUtXUJv
	 ohVI2DLWo5MR2fYnp/EEtuoCoOQ7McbhhR5FzOz+aQoudXgQZqkhiDY9TxGrz0dTmH
	 kOxe1KCuLSJLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5e-FSFSOYWZh; Mon, 25 Sep 2023 15:15:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 352DB81FC6;
	Mon, 25 Sep 2023 15:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 352DB81FC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 450791BF397
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 07:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19AB660F78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 07:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19AB660F78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WKIqec1FiuNw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 07:55:39 +0000 (UTC)
Received: from out-210.mta1.migadu.com (out-210.mta1.migadu.com
 [95.215.58.210])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD0B360AE2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 07:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD0B360AE2
Message-ID: <72bfc00f-7c60-f027-61cb-03084021c218@linux.dev>
Date: Mon, 25 Sep 2023 15:55:21 +0800
MIME-Version: 1.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com
References: <20230627022658.1876747-1-yajun.deng@linux.dev>
 <10269e86-ed8a-0b09-a39a-a5239a1ba744@intel.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Yajun Deng <yajun.deng@linux.dev>
In-Reply-To: <10269e86-ed8a-0b09-a39a-a5239a1ba744@intel.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Mon, 25 Sep 2023 15:15:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1695628532;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l4uaK2NAz0kQWXVGJqJdnSvIF01RSrsxRcBRw98P7Xo=;
 b=v5hhDL2M9ia8zckH0z93X+e58vN0PpXpaidx8X8FRZpIZ1QpmwFZqng2W2ZU2b2AMJ0F7a
 oEE76dGg7Gl8gLZdlLYKF+Jsooxcul0wSkHM/o5k7DWjZ/ax2CmlBZKPqCjS8s4uzYZEi0
 IpY7rKKhWdmTx807Fcueu9Sbx2pIxqI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=v5hhDL2M
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix the wrong PTP frequency
 calculation
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2023/6/28 04:20, Jacob Keller wrote:
>
> On 6/26/2023 7:26 PM, Yajun Deng wrote:
>> The new adjustment should be based on the base frequency, not the
>> I40E_PTP_40GB_INCVAL in i40e_ptp_adjfine().
>>
>> This issue was introduced in commit 3626a690b717 ("i40e: use
>> mul_u64_u64_div_u64 for PTP frequency calculation"), and was fixed in
>> commit 1060707e3809 ("ptp: introduce helpers to adjust by scaled
>> parts per million"). However the latter is a new feature and hasn't been
>> backported to the stable releases.
>>
>> This issue affects both v6.0 and v6.1 versions, and the v6.1 version is
>> an LTS version.
>>
>> Fixes: 3626a690b717 ("i40e: use mul_u64_u64_div_u64 for PTP frequency calculation")
>> Cc: <stable@vger.kernel.org> # 6.1
>> Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_ptp.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
>> index ffea0c9c82f1..97a9efe7b713 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
>> @@ -361,9 +361,9 @@ static int i40e_ptp_adjfine(struct ptp_clock_info *ptp, long scaled_ppm)
>>   				   1000000ULL << 16);
>>   
>>   	if (neg_adj)
>> -		adj = I40E_PTP_40GB_INCVAL - diff;
>> +		adj = freq - diff;
>>   	else
>> -		adj = I40E_PTP_40GB_INCVAL + diff;
>> +		adj = freq + diff;
>>   
>>   	wr32(hw, I40E_PRTTSYN_INC_L, adj & 0xFFFFFFFF);
>>   	wr32(hw, I40E_PRTTSYN_INC_H, adj >> 32);
> This straight forward fix makes sense. However, it wasn't obvious to me
> without context why the 3626a690b717 ("i40e: use mul_u64_u64_div_u64 for
> PTP frequency calculation") was where the fault got introduced. Thus,
> here is that context for anyone else who failed to spot it just looking
> at shrunk patch diffs.
>
> --> code before that commit <---
>> /**
>>   * i40e_ptp_adjfreq - Adjust the PHC frequency
>>   * @ptp: The PTP clock structure
>>   * @ppb: Parts per billion adjustment from the base
>>   *
>>   * Adjust the frequency of the PHC by the indicated parts per billion from the
>>   * base frequency.
>>   **/
>> static int i40e_ptp_adjfreq(struct ptp_clock_info *ptp, s32 ppb)
>> {
>>          struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
>>          struct i40e_hw *hw = &pf->hw;
>>          u64 adj, freq, diff;
>>          int neg_adj = 0;
>>
>>          if (ppb < 0) {
>>                  neg_adj = 1;
>>                  ppb = -ppb;
>>          }
>>
>>          freq = I40E_PTP_40GB_INCVAL;
> frequency is left just as base I40E_PTP_40GB_INCVAL.
>
>>          freq *= ppb;
>>          diff = div_u64(freq, 1000000000ULL);
>>
>>          if (neg_adj)
>>                  adj = I40E_PTP_40GB_INCVAL - diff;
>>          else
>>                  adj = I40E_PTP_40GB_INCVAL + diff;
>>
> So the base here can't be freq since we modify freq above using *=, but
> using I40E_PTP_40GB_INCVAL is consistent.
>
>>          /* At some link speeds, the base incval is so large that directly
>>           * multiplying by ppb would result in arithmetic overflow even when
>>           * using a u64. Avoid this by instead calculating the new incval
>>           * always in terms of the 40GbE clock rate and then multiplying by the
>>           * link speed factor afterwards. This does result in slightly lower
>>           * precision at lower link speeds, but it is fairly minor.
>>           */
>>          smp_mb(); /* Force any pending update before accessing. */
>>          adj *= READ_ONCE(pf->ptp_adj_mult);
>>
> Finally, the multiply is applied last. This affects the combined base +
> difference, and is done in order to avoid overflowing the *= used in the
> original implementation.
>
>>          wr32(hw, I40E_PRTTSYN_INC_L, adj & 0xFFFFFFFF);
>>          wr32(hw, I40E_PRTTSYN_INC_H, adj >> 32);
>>
>>          return 0;
>> }
>
> ---> code after that commit <---
>> /**
>>   * i40e_ptp_adjfreq - Adjust the PHC frequency
>>   * @ptp: The PTP clock structure
>>   * @ppb: Parts per billion adjustment from the base
>>   *
>>   * Adjust the frequency of the PHC by the indicated parts per billion from the
>>   * base frequency.
>>   **/
>> static int i40e_ptp_adjfreq(struct ptp_clock_info *ptp, s32 ppb)
>> {
>>          struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
>>          struct i40e_hw *hw = &pf->hw;
>>          u64 adj, freq, diff;
>>          int neg_adj = 0;
>>
>>          if (ppb < 0) {
>>                  neg_adj = 1;
>>                  ppb = -ppb;
>>          }
>>
>>          smp_mb(); /* Force any pending update before accessing. */
>>          freq = I40E_PTP_40GB_INCVAL * READ_ONCE(pf->ptp_adj_mult);
>>          diff = mul_u64_u64_div_u64(freq, (u64)ppb,
>>                                     1000000000ULL);
>>
> Here, we assign freq to be the I40E_PTP_40GB_INCVAL times the
> ptp_adj_mult value, and then we don't modify it, instead using
> mul_u64_u64_div_u64.
>
>>          if (neg_adj)
>>                  adj = I40E_PTP_40GB_INCVAL - diff;
>>          else
>>                  adj = I40E_PTP_40GB_INCVAL + diff;
>>
> But then the diff is applied on the wrong value, and no multiplication
> is done afterwards.
>
>>          wr32(hw, I40E_PRTTSYN_INC_L, adj & 0xFFFFFFFF);
>>          wr32(hw, I40E_PRTTSYN_INC_H, adj >> 32);
>>
>>          return 0;
>> }
> ---> current version with adjust_by_scaled_ppm <---
>> /**
>>   * i40e_ptp_adjfine - Adjust the PHC frequency
>>   * @ptp: The PTP clock structure
>>   * @scaled_ppm: Scaled parts per million adjustment from base
>>   *
>>   * Adjust the frequency of the PHC by the indicated delta from the base
>>   * frequency.
>>   *
>>   * Scaled parts per million is ppm with a 16 bit binary fractional field.
>>   **/
>> static int i40e_ptp_adjfine(struct ptp_clock_info *ptp, long scaled_ppm)
>> {
>>          struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
>>          struct i40e_hw *hw = &pf->hw;
>>          u64 adj, base_adj;
>>
>>          smp_mb(); /* Force any pending update before accessing. */
>>          base_adj = I40E_PTP_40GB_INCVAL * READ_ONCE(pf->ptp_adj_mult);
>>
>>          adj = adjust_by_scaled_ppm(base_adj, scaled_ppm);
>>
> Using adjust_by_scaled_ppm correctly performs the calculation and uses
> the base adjustment, so there's no error here.
>
>>          wr32(hw, I40E_PRTTSYN_INC_L, adj & 0xFFFFFFFF);
>>          wr32(hw, I40E_PRTTSYN_INC_H, adj >> 32);
>>
>>          return 0;
>> }
>
> Thanks for finding and fixing this mistake. I think its the simplest fix
> to get into the stable kernel that are broken, since taking the
> adjust_by_scaled_ppm version would require additional patches.
>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>
Kindly ping...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
