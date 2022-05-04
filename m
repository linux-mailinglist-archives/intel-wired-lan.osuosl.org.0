Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F058519DE7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 May 2022 13:24:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B953E40488;
	Wed,  4 May 2022 11:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12f3lSDnN_Wp; Wed,  4 May 2022 11:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B13EB4045C;
	Wed,  4 May 2022 11:24:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4BF21BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 11:24:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF1FE60AAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 11:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tLbr2ELLWTHA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 May 2022 11:24:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29F7860A97
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 May 2022 11:24:33 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6C18361E6478B;
 Wed,  4 May 2022 13:24:30 +0200 (CEST)
Message-ID: <55100897-ce8d-27b3-30ae-d959b2f0bda6@molgen.mpg.de>
Date: Wed, 4 May 2022 13:24:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20220423165502.838143-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220423165502.838143-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Change type of the
 'igc_check_downshift' method
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

Am 23.04.22 um 18:55 schrieb Sasha Neftin:
> The 'igc_check_downshift' method always return 0 value. There is no point

return*s*

> return value. Change the return type of this method to void.

Maybe also make the summary more explicit. Maybe:

Change return type of 'igc_check_downshift' to void

> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_phy.c | 6 +-----
>   drivers/net/ethernet/intel/igc/igc_phy.h | 2 +-
>   2 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 2140ad1e8443..53b77c969c85 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -141,18 +141,14 @@ void igc_power_down_phy_copper(struct igc_hw *hw)
>    * igc_check_downshift - Checks whether a downshift in speed occurred
>    * @hw: pointer to the HW structure
>    *
> - * Success returns 0, Failure returns 1
> - *
>    * A downshift is detected by querying the PHY link health.
>    */
> -s32 igc_check_downshift(struct igc_hw *hw)
> +void igc_check_downshift(struct igc_hw *hw)
>   {
>   	struct igc_phy_info *phy = &hw->phy;
>   
>   	/* speed downshift not supported */
>   	phy->speed_downgraded = false;
> -
> -	return 0;
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.h b/drivers/net/ethernet/intel/igc/igc_phy.h
> index 1b031372d206..832a7e359f18 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.h
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.h
> @@ -11,7 +11,7 @@ s32 igc_phy_hw_reset(struct igc_hw *hw);
>   s32 igc_get_phy_id(struct igc_hw *hw);
>   s32 igc_phy_has_link(struct igc_hw *hw, u32 iterations,
>   		     u32 usec_interval, bool *success);
> -s32 igc_check_downshift(struct igc_hw *hw);
> +void igc_check_downshift(struct igc_hw *hw);
>   s32 igc_setup_copper_link(struct igc_hw *hw);
>   void igc_power_up_phy_copper(struct igc_hw *hw);
>   void igc_power_down_phy_copper(struct igc_hw *hw);

The rest looks good.


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
