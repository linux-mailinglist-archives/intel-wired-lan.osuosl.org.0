Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A83320670
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Feb 2021 18:32:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 030018376D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Feb 2021 17:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mP_VtxyhkQNX for <lists+intel-wired-lan@lfdr.de>;
	Sat, 20 Feb 2021 17:32:13 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 3999D8374F; Sat, 20 Feb 2021 17:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DA2981DBF;
	Sat, 20 Feb 2021 17:32:04 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC5201BF962
 for <intel-wired-lan@osuosl.org>; Sat, 20 Feb 2021 17:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E863B87109
 for <intel-wired-lan@osuosl.org>; Sat, 20 Feb 2021 17:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tGewuV1tDbhM for <intel-wired-lan@osuosl.org>;
 Sat, 20 Feb 2021 17:31:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17A3287104
 for <intel-wired-lan@osuosl.org>; Sat, 20 Feb 2021 17:31:56 +0000 (UTC)
IronPort-SDR: 7k1iUabPZhDm3qNBLPsctFrAC8LoW8hctPme4iQhXczdXdhc+UTEU5EFfahhAx4jilwgGZ/Vdn
 Hl6lP+ne5D6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9901"; a="184172119"
X-IronPort-AV: E=Sophos;i="5.81,193,1610438400"; d="scan'208";a="184172119"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2021 09:31:55 -0800
IronPort-SDR: KgPhHPtlD7KFylUhrimgd66/a1dAUYeyW6WpLJ89hsWFJK1dKPQLniEoCQ/ZY/8V6PxktKrjpG
 k3tgr6S9sNOQ==
X-IronPort-AV: E=Sophos;i="5.81,193,1610438400"; d="scan'208";a="401583896"
Received: from sorgil-mobl.ger.corp.intel.com (HELO [10.214.251.204])
 ([10.214.251.204])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2021 09:31:54 -0800
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
 <20210219163648.14581-2-muhammad.husaini.zulkifli@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <4b2f2fd8-7446-ce64-644c-93f6aba62623@intel.com>
Date: Sat, 20 Feb 2021 19:31:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210219163648.14581-2-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] igc: Fix Pause Frame
 Advertising
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
Cc: mallikarjuna.chilakala@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/19/2021 18:36, Muhammad Husaini Zulkifli wrote:
> Fix Pause Frame Advertising when getting the advertisement via ethtool.
> Remove setting the "advertising" bit in link_ksettings during default
> case when tx and rx are in off state with Auto Negotiatiate off.
> 
> Below is the original output of advertisement link during tx and rx off:
> Advertised pause frame use: Symmetric Receive-only
> 
> Expected output:
> Advertised pause frame use: No
> 
> Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Reviewed-by: Malli C <mallikarjuna.chilakala@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 824a6c454bca..67a4aed45fc2 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1725,9 +1725,7 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   						     Asym_Pause);
>   		break;
>   	default:
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
> -		ethtool_link_ksettings_add_link_mode(cmd, advertising,
> -						     Asym_Pause);
> +		break;
>   	}
>   
>   	status = pm_runtime_suspended(&adapter->pdev->dev) ?
> 
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
