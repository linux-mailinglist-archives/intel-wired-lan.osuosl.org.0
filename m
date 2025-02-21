Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8513A401ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 22:16:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 846146083A;
	Fri, 21 Feb 2025 21:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uSG-AysTwUaV; Fri, 21 Feb 2025 21:16:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C878460773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740172592;
	bh=fDYnj8R+SJ4cZpqzR7NAtqGCU4Jj9JwmBfgrLDGRNIo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rwh/ltayxYdamNIY8uX6a6G3lNI3bIqNZF2Rbl6+bjxvEh8MUlF7IlN+exJI9ugr2
	 Zy+dJ1sshQK71dCU1JLhvSpqqmt/xd12gfLRC1RzY8YhMFFEkcQI8ofyPF7TU0aWI0
	 HsSro/og7YJ3gwc3N52rV3VWtfJF9XXOkcqzD236Up/3VhuWoKhrUOwDQtk/UmU88/
	 dBOzXkU2WtfHXA/Vc9RUmZf9HVDZCrB1Yu3hSsQR//ZrpUWkhHd0LNFhyCYK364xPf
	 eL9xjFnN5o7kyphRsYPgDpu3/07+oKy7YS3KncCH9VKeTmmaPycAt2UWOXyQJDgPU2
	 wSJq86GvAtGsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C878460773;
	Fri, 21 Feb 2025 21:16:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B3A6194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 21:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7ED5D403FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 21:16:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gGF5xHiDd9Ml for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 21:16:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 24E7E403D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24E7E403D9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 24E7E403D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 21:16:28 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af2a2.dynamic.kabel-deutschland.de
 [95.90.242.162])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C596B61E64783;
 Fri, 21 Feb 2025 22:16:09 +0100 (CET)
Message-ID: <aecd919b-fbb8-4790-af1f-69b50cc78438@molgen.mpg.de>
Date: Fri, 21 Feb 2025 22:16:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
 <20250221123123.2833395-2-grzegorz.nitka@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250221123123.2833395-2-grzegorz.nitka@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: remove SW side
 band access workaround for E825
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Grzegorz, dear Karol,


Thank you for your patch.

Am 21.02.25 um 13:31 schrieb Grzegorz Nitka:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Due to the bug in FW/NVM autoload mechanism (wrong default
> SB_REM_DEV_CTL register settings), the access to peer PHY and CGU
> clients was disabled by default.

I’d add a blank line between the paragraphs.

> As the workaround solution, the register value was overwritten by the
> driver at the probe or reset handling.
> Remove workaround as it's not needed anymore. The fix in autoload
> procedure has been provided with NVM 3.80 version.

Is this compatible with Linux’ no regression policy? People might only 
update the Linux kernel and not the firmware.

How did you test this, and how can others test this?

> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 23 ---------------------
>   1 file changed, 23 deletions(-)


Kind regards,

Paul


> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 89bb8461284a..a5df081ffc19 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2630,25 +2630,6 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
>   	return 0;
>   }
>   
> -/**
> - * ice_sb_access_ena_eth56g - Enable SB devices (PHY and others) access
> - * @hw: pointer to HW struct
> - * @enable: Enable or disable access
> - *
> - * Enable sideband devices (PHY and others) access.
> - */
> -static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
> -{
> -	u32 val = rd32(hw, PF_SB_REM_DEV_CTL);
> -
> -	if (enable)
> -		val |= BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1);
> -	else
> -		val &= ~(BIT(eth56g_phy_0) | BIT(cgu) | BIT(eth56g_phy_1));
> -
> -	wr32(hw, PF_SB_REM_DEV_CTL, val);
> -}
> -
>   /**
>    * ice_ptp_init_phc_e825 - Perform E825 specific PHC initialization
>    * @hw: pointer to HW struct
> @@ -2659,8 +2640,6 @@ static void ice_sb_access_ena_eth56g(struct ice_hw *hw, bool enable)
>    */
>   static int ice_ptp_init_phc_e825(struct ice_hw *hw)
>   {
> -	ice_sb_access_ena_eth56g(hw, true);
> -
>   	/* Initialize the Clock Generation Unit */
>   	return ice_init_cgu_e82x(hw);
>   }
> @@ -2747,8 +2726,6 @@ static void ice_ptp_init_phy_e825(struct ice_hw *hw)
>   	params->num_phys = 2;
>   	ptp->ports_per_phy = 4;
>   	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
> -
> -	ice_sb_access_ena_eth56g(hw, true);
>   }
>   
>   /* E822 family functions
