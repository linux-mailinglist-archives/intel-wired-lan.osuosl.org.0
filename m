Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D091F4E10
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 08:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BFF588A05;
	Wed, 10 Jun 2020 06:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IjpaCw3jhJte; Wed, 10 Jun 2020 06:22:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E04A889A9;
	Wed, 10 Jun 2020 06:22:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FF911BF41A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 06:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E980D86EDD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 06:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJa6vwFKMoKV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 06:22:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E904A86D9A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 06:22:15 +0000 (UTC)
Received: from [192.168.178.35] (unknown [88.130.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C51AB2002EE2B;
 Wed, 10 Jun 2020 08:22:12 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20200610061227.3315-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <a7d7a8c2-2ad1-2ac4-dc7c-e8237a34739c@molgen.mpg.de>
Date: Wed, 10 Jun 2020 08:22:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610061227.3315-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Refactor the
 igc_power_up_link()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sasha,


Thank you for the patch.

Am 10.06.20 um 08:12 schrieb Sasha Neftin:
> PHY of the i225 device support only copper mode.
> There is no point to check media type in the
> igc_power_up_link() method.

One nit regarding the commit message summary. *Refactor* very generic. 
Could you use something like:

 > igc: Remove unneeded check for copper media type

> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index af5e1686f7f2..83c94fa58c40 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -115,8 +115,7 @@ static void igc_power_up_link(struct igc_adapter *adapter)
>   {
>   	igc_reset_phy(&adapter->hw);
>   
> -	if (adapter->hw.phy.media_type == igc_media_type_copper)
> -		igc_power_up_phy_copper(&adapter->hw);
> +	igc_power_up_phy_copper(&adapter->hw);
>   
>   	igc_setup_link(&adapter->hw);
>   }

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
