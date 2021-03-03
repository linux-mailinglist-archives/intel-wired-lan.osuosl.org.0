Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0518132B5DF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 09:08:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67105400BB;
	Wed,  3 Mar 2021 08:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQh2dP9UDtOx; Wed,  3 Mar 2021 08:08:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F8F5400AE;
	Wed,  3 Mar 2021 08:08:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 524321BF4DB
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E0236FAD4
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:08:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UsUySaqVKIPy for <intel-wired-lan@osuosl.org>;
 Wed,  3 Mar 2021 08:08:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78508605F6
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:08:48 +0000 (UTC)
IronPort-SDR: NrqUJMy3u8/kQ9rkbyjs60nH+zDiBVfVDvZOh7sCYK3BUmVcKxyYdiNyEo92gumkAEdwquRAQY
 omT67cNT6l8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="174773970"
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="174773970"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 00:08:46 -0800
IronPort-SDR: tI5mz6olSiJRjOA7troUo+lRQ9ZiNtClmf++/eQtX+4zKQeNpAy/vLORER58lzknqC79yn5OXk
 6eKXik7TtwRA==
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="407131440"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 00:08:45 -0800
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
 <20210219163648.14581-2-muhammad.husaini.zulkifli@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <610f7dee-34db-9d22-cdfa-59f533211b48@linux.intel.com>
Date: Wed, 3 Mar 2021 10:08:43 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
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

On 19/02/2021 18:36, Muhammad Husaini Zulkifli wrote:
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
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
