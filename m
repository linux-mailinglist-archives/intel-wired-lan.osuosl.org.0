Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E606932B5E0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 09:09:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 800F3400B5;
	Wed,  3 Mar 2021 08:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qT8Yj1gZjI3b; Wed,  3 Mar 2021 08:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E794400AE;
	Wed,  3 Mar 2021 08:09:19 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 266601BF4DB
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2189D400A9
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGL_SFRU_ddj for <intel-wired-lan@osuosl.org>;
 Wed,  3 Mar 2021 08:09:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C47E400AE
 for <intel-wired-lan@osuosl.org>; Wed,  3 Mar 2021 08:09:12 +0000 (UTC)
IronPort-SDR: ewjazmLpQ6PX76u19KBcw/vg2YvMix3YjVXMgrEeHGnUNrMUO1L8fPCBxyuCbyYaD9MDTggrFs
 v1aX6f+nBEdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="248540258"
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="248540258"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 00:09:09 -0800
IronPort-SDR: Yxh0jVKHTxuppeKGUrZ6D4cENr9HgB93VVOQIesgX3KQpGNimnGf8jz4gHU57eX7sMu61lKyZZ
 f+/vL7q07H9w==
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="407131600"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 00:09:05 -0800
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
 <20210219163648.14581-3-muhammad.husaini.zulkifli@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <ec5adf63-63d7-7e8e-f260-3eaf29ac82c3@linux.intel.com>
Date: Wed, 3 Mar 2021 10:09:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210219163648.14581-3-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/2] igc: Fix Supported Pause
 Frame Link Setting
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
> The Supported Pause Frame always display "No" eventhough the Advertised
> pause frame showing the correct setting based on the pause parameters via
> ethtool. Set bit in link_ksettings to "Supported" for Pause Frame.
> 
> Before output:
> Supported pause frame use: No
> 
> Expected output:
> Supported pause frame use: Symmetric
> 
> Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Reviewed-by: Malli C <mallikarjuna.chilakala@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 67a4aed45fc2..8722294ab90c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1711,6 +1711,9 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   						     Autoneg);
>   	}
>   
> +	/* Set pause flow control settings */
> +	ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);
> +
>   	switch (hw->fc.requested_mode) {
>   	case igc_fc_full:
>   		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
