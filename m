Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CFB3B74B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 16:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDF4F8367C;
	Tue, 29 Jun 2021 14:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HRC3G1VfmVUL; Tue, 29 Jun 2021 14:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BA9E836EA;
	Tue, 29 Jun 2021 14:49:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 474501BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 14:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 316A740169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 14:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NsVCiIXOuw37 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 14:49:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E86340167
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 14:49:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="195452386"
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="195452386"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 07:49:24 -0700
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="447065340"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.169.66])
 ([10.185.169.66])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 07:49:22 -0700
To: YeeLi <seven.yi.lee@gmail.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org
References: <20210629082128.255988-1-seven.yi.lee@gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <02ff77ef-e802-8e13-d169-1ab2c250405a@intel.com>
Date: Tue, 29 Jun 2021 17:49:15 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210629082128.255988-1-seven.yi.lee@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] driver core: fix e1000e ltr bug
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/29/2021 11:21, YeeLi wrote:
Yeeli,
> In e1000e driver, a PCIe-like device, the max snoop/no-snoop latency
> is the upper limit.So, directly compare the size of lat_enc and
> max_ltr_enc is incorrect.
> 
why?
>      In 1000Mbps, 0x8b9 < 0x1003, 189440 ns < 3145728 ns, correct.
> 
>      In 100Mbps, 0xc3a < 0x1003, 1900544 ns < 3145728 ns, correct.
> 
>      In 10Mbps, 0xe40 < 0x1003, 18874368 > 3145728, incorrect.
> 
Platform LTR encoded is 0x1003 - right. It is meant 1048576ns x 3 = 
3145738ns.
Now,
for 1000M: 0x08b9 => 185ns x 1024 = 189440ns (you are correct)
for 100M: 0x0c3a => 58ns x 32768 = 1900544ns (correct)
for 10M: 0x0e41 => 577ns x 32768 = 18907136ns (ok?)
18907136ns > 3145738ns, (latency encoded is great than maximum LTR 
encoded by platform) - so, there is no point to wait more than platform 
required, and lat_enc=max_ltr_enc. It is expected and we sent right 
value to the power management controller.
What is the problem you try solve?

> Decoded the lat_enc and max_ltr_enc before compare them is necessary.
> 
> Signed-off-by: YeeLi <seven.yi.lee@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 23 ++++++++++++++++++++-
>   1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 590ad110d383..3bff1b570b76 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -986,6 +986,27 @@ static s32 e1000_k1_workaround_lpt_lp(struct e1000_hw *hw, bool link)
>   	return ret_val;
>   }
>   
> +static u32 convert_e1000e_ltr_scale(u32 val)
> +{
> +	if (val > 5)
> +		return 0;
> +
> +	return 1U << (5 * val);
> +}
> +
> +static u64 decoded_ltr(u32 val)
> +{
> +	u64 decoded_latency;
> +	u32 value;
> +	u32 scale;
> +
> +	value = val & 0x03FF;
> +	scale = (val & 0x1C00) >> 10;
> +	decoded_latency = value * convert_e1000e_ltr_scale(scale);
> +
> +	return decoded_latency;
> +}
> +
>   /**
>    *  e1000_platform_pm_pch_lpt - Set platform power management values
>    *  @hw: pointer to the HW structure
> @@ -1059,7 +1080,7 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
>   				     E1000_PCI_LTR_CAP_LPT + 2, &max_nosnoop);
>   		max_ltr_enc = max_t(u16, max_snoop, max_nosnoop);
>   
> -		if (lat_enc > max_ltr_enc)
> +		if (decoded_ltr(lat_enc) > decoded_ltr(max_ltr_enc))
>   			lat_enc = max_ltr_enc;
>   	}
>   
> 
sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
