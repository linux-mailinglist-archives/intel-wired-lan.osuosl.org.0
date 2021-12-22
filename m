Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F02147D3DB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 15:44:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFAA760E6F;
	Wed, 22 Dec 2021 14:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 203liesDTH7J; Wed, 22 Dec 2021 14:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED99460DF0;
	Wed, 22 Dec 2021 14:44:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D14EE1BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE91660DF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:44:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2QoScrHMEs4U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 14:44:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 72BC460AAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:44:10 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeac8.dynamic.kabel-deutschland.de
 [95.90.234.200])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 45ACB61EA1BDD;
 Wed, 22 Dec 2021 15:44:08 +0100 (CET)
Message-ID: <34349ed6-84b3-bba9-244f-fb190069e84c@molgen.mpg.de>
Date: Wed, 22 Dec 2021 15:44:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
References: <20211028135114.202530-1-jedrzej.jagielski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211028135114.202530-1-jedrzej.jagielski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Increase delay to 1 s
 after global EMP reset
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

Dear Jedrzej,


Am 28.10.21 um 15:51 schrieb Jedrzej Jagielski:
> Recently simplified i40e_rebuild causes that FW sometimes
> is not ready after NVM update, the ping does not return.

What commit is that exactly, simplifying `i40e_rebuild()`?

> Increase the delay in case of EMP reset.
> Old delay of 300 ms was introduced for specific cards for 710 series.
> Now it works for all the cards and delay was increased.

Please give one example of a card with firmware, that has problems with 
300 ms, and needs a higher delay.

> Fixes: 1fa51a650e1d ("i40e: Add delay after EMP reset for firmware to recover")
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++---------
>   1 file changed, 3 insertions(+), 9 deletions(-)
> ---
> V2: Fix commit msg
> ---
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 85b076123663..1cec920bff28 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10492,15 +10492,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
>   	}
>   	i40e_get_oem_version(&pf->hw);
>   
> -	if (test_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state) &&
> -	    ((hw->aq.fw_maj_ver == 4 && hw->aq.fw_min_ver <= 33) ||
> -	     hw->aq.fw_maj_ver < 4) && hw->mac.type == I40E_MAC_XL710) {
> -		/* The following delay is necessary for 4.33 firmware and older
> -		 * to recover after EMP reset. 200 ms should suffice but we
> -		 * put here 300 ms to be sure that FW is ready to operate
> -		 * after reset.
> -		 */
> -		mdelay(300);
> +	if (test_and_clear_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state)) {
> +		/* The following delay is necessary for firmware update. */
> +		mdelay(1000);
>   	}

Increasing the delay by 700 ms or even 1 s for the currently working 
cards, is not ok, in my opinion a regression. I guess an allow list 
needs to be added, with the cards currently working fine with a delay of 
300 ms, or can something be polled to not need a hard delay at all?

>   
>   	/* re-verify the eeprom if we just had an EMP reset */


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
