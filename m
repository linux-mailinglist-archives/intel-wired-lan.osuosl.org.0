Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6714D26763D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 00:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E38E0878A5;
	Fri, 11 Sep 2020 22:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dLnKNY45vbpH; Fri, 11 Sep 2020 22:56:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F0FF878BE;
	Fri, 11 Sep 2020 22:56:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 141351BF29F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BB161878A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YlRwNml8x76L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 22:56:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B526E87580
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:56:56 +0000 (UTC)
IronPort-SDR: aBJGa3utufLuHxmfkuwGARDvh42joFo9R2ZLtLHVux3Eux25boft/WzWT1NRPQvywZ11jlIIiV
 JQ17eZXGRc4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="138377602"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="138377602"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 15:56:54 -0700
IronPort-SDR: hWOT/9HhDXW0/hYAN+teVEweprm9K60rSO4Rlf+ETLdF4WOzpvjzCXCWct4zLd31o7WPl2ZTri
 5JUXqZ6zXJrA==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="329945307"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.209.122.57])
 ([10.209.122.57])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 15:56:54 -0700
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-9-jesse.brandeburg@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <401624a4-2fcf-53c9-fe8d-f4e5fb6d3fba@intel.com>
Date: Fri, 11 Sep 2020 15:56:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200911012337.14015-9-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 08/11]
 drivers/net/ethernet: handle one warning explicitly
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/10/2020 6:23 PM, Jesse Brandeburg wrote:
> While fixing the W=1 builds, this warning came up because the
> developers used a very tricky way to get structures initialized
> to a non-zero value, but this causes GCC to warn about an
> override. In this case the override was intentional, so just
> disable the warning for this code with a #pragma.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/renesas/sh_eth.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/renesas/sh_eth.c b/drivers/net/ethernet/renesas/sh_eth.c
> index 586642c33d2b..659530f9c117 100644
> --- a/drivers/net/ethernet/renesas/sh_eth.c
> +++ b/drivers/net/ethernet/renesas/sh_eth.c
> @@ -45,6 +45,13 @@
>  #define SH_ETH_OFFSET_DEFAULTS			\
>  	[0 ... SH_ETH_MAX_REGISTER_OFFSET - 1] = SH_ETH_OFFSET_INVALID
>  
> +/* use some intentionally tricky logic here to initialize the whole struct to
> + * 0xffff, but then override certain fields, requiring us to indicate that we
> + * "know" that there are overrides in this structure, and we'll need to disable
> + * that warning from W=1 builds
> + */
> +#pragma GCC diagnostic push
> +#pragma GCC diagnostic ignored "-Woverride-init"


This should probably use something like the __diag() macros instead of
GCC-specific code, e.g.

__diag_push()
__diag_ignore(GCC, <version>, "-Woverride-init")

...

__diag_pop()

Where <version> is the major GCC version that introduced this warning.

Thanks,
Jake

>  static const u16 sh_eth_offset_gigabit[SH_ETH_MAX_REGISTER_OFFSET] = {
>  	SH_ETH_OFFSET_DEFAULTS,
>  
> @@ -332,6 +339,7 @@ static const u16 sh_eth_offset_fast_sh3_sh2[SH_ETH_MAX_REGISTER_OFFSET] = {
>  
>  	[TSU_ADRH0]	= 0x0100,
>  };
> +#pragma GCC diagnostic pop
>  
>  static void sh_eth_rcv_snd_disable(struct net_device *ndev);
>  static struct net_device_stats *sh_eth_get_stats(struct net_device *ndev);
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
