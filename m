Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 482A0233A70
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 23:20:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8ECC86B6A;
	Thu, 30 Jul 2020 21:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wzgIuyLX5ZRU; Thu, 30 Jul 2020 21:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0346D86B90;
	Thu, 30 Jul 2020 21:20:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B41A51BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 21:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFEC688546
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 21:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L69ewYrKlF5d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 21:20:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DFECC88543
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 21:20:48 +0000 (UTC)
IronPort-SDR: mIaQa0JcI57yohCXG5/eMGw4R34xzKNe1SxcaVdRunbOrastxAFSwmq7L8T9YKutuk4d8W+QqV
 d1Zik35FhMow==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="131262587"
X-IronPort-AV: E=Sophos;i="5.75,415,1589266800"; d="scan'208";a="131262587"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 14:20:48 -0700
IronPort-SDR: baAGnD9+0IOiikhcoSORgfdiavAIvxvUzaQGCVIY06oFaU2oKxHivcY9pkE07mdAzogPn6cPxU
 DhBe7HaczH9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,415,1589266800"; d="scan'208";a="365320160"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.212.70.156])
 ([10.212.70.156])
 by orsmga001.jf.intel.com with ESMTP; 30 Jul 2020 14:20:47 -0700
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org
References: <20200730160451.40810-1-andriy.shevchenko@linux.intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <77247fbc-152a-517f-2500-ce761b7afa6a@intel.com>
Date: Thu, 30 Jul 2020 14:20:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.0.1
MIME-Version: 1.0
In-Reply-To: <20200730160451.40810-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] ice: devlink: use %*phD to print
 small buffer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/30/2020 9:04 AM, Andy Shevchenko wrote:
> Use %*phD format to print small buffer as hex string.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Ah nice. I swear I looked for a printk format to do this and didn't find
one. But it's been there since 2012.. so I guess I just missed it.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

I also tested this on my system to make sure it gives the same output
for the serial value, so I guess also:

Tested-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks!

> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index dbbd8b6f9d1a..a9105ad5b983 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -13,9 +13,7 @@ static int ice_info_get_dsn(struct ice_pf *pf, char *buf, size_t len)
>  	/* Copy the DSN into an array in Big Endian format */
>  	put_unaligned_be64(pci_get_dsn(pf->pdev), dsn);
>  
> -	snprintf(buf, len, "%02x-%02x-%02x-%02x-%02x-%02x-%02x-%02x",
> -		 dsn[0], dsn[1], dsn[2], dsn[3],
> -		 dsn[4], dsn[5], dsn[6], dsn[7]);
> +	snprintf(buf, len, "%8phD", dsn);
>  
>  	return 0;
>  }
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
