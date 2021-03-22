Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9895B343A1A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Mar 2021 07:56:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B54B402AB;
	Mon, 22 Mar 2021 06:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xnpomIt5e0eD; Mon, 22 Mar 2021 06:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 071EA4029F;
	Mon, 22 Mar 2021 06:56:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08CF01BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 06:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03D9060666
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 06:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vLf4jWY2UOuk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Mar 2021 06:56:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D73D60598
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 06:56:23 +0000 (UTC)
IronPort-SDR: GqefMFxJu0juZFHf6G0NbF0+V2QfnlCM8wZMLxwWsOCEH4/juFd1yqL8i/jg7rsMl1mL+GKY+Q
 qFryPC2CgHIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="169544022"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="169544022"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:56:22 -0700
IronPort-SDR: 4pTR/vLmWbPcOGD9wyr9wBolTXNOw5HfQVDR/DAM3+W39Hze015vfEMMpovCc/XUsa0u65IBQs
 YVanmPAhjYWw==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="414362073"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.168.91])
 ([10.185.168.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:56:19 -0700
To: 'w00385741 <weiyongjun1@huawei.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Chen Yu <yu.c.chen@intel.com>
References: <20210317145234.3171021-1-weiyongjun1@huawei.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <80dcead2-f0e1-c1a4-037c-6215f960f32f@intel.com>
Date: Mon, 22 Mar 2021 08:56:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210317145234.3171021-1-weiyongjun1@huawei.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: Mark
 e1000e_pm_prepare() as __maybe_unused
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
 kernel-janitors@vger.kernel.org, Hulk Robot <hulkci@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/17/2021 16:52, 'w00385741 wrote:
> From: Wei Yongjun <weiyongjun1@huawei.com>
> 
> The function e1000e_pm_prepare() may have no callers depending
> on configuration, so it must be marked __maybe_unused to avoid
> harmless warning:
> 
> drivers/net/ethernet/intel/e1000e/netdev.c:6926:12:
>   warning: 'e1000e_pm_prepare' defined but not used [-Wunused-function]
>   6926 | static int e1000e_pm_prepare(struct device *dev)
>        |            ^~~~~~~~~~~~~~~~~
> 
> Fixes: ccf8b940e5fd ("e1000e: Leverage direct_complete to speed up s2ram")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index f1c9debd9f3b..d2e4653536c5 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6923,7 +6923,7 @@ static int __e1000_resume(struct pci_dev *pdev)
>   	return 0;
>   }
>   
> -static int e1000e_pm_prepare(struct device *dev)
> +static __maybe_unused int e1000e_pm_prepare(struct device *dev)
>   {
>   	return pm_runtime_suspended(dev) &&
>   		pm_suspend_via_firmware();
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
