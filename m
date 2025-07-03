Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E61AF766F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jul 2025 16:00:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3CD383B18;
	Thu,  3 Jul 2025 14:00:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OPw3ECY4VphC; Thu,  3 Jul 2025 14:00:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 201F183B1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751551253;
	bh=yOIHMLaEOUKcCow9x9L9uw0W9MNdXNKuSiuXWmkvR0I=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lppI0OGZl8MHY51zc8YbYGqd8iJPImNMKFkzAxHVhXIyi5ZBSEQeXS9zY/kCks82+
	 U3OeyOsfR0GqqDRy3n+0AbhMnV+Ris1XkpSa7BBBnLHC94MCmRVoPje9Eoq3qTgf6n
	 Vul2x827enphUVOO+4h8XqPTv9kpZmztmxg/q064zyD/lSM6JaSIStUr5kIqFapcV1
	 FFHM4X1IuuEIv+S/ICwiquAc713HrnaCVzGsm89nZZsQdGpTVX1SLfEyl/n0uKhSCq
	 YsKJbDc2b10m+Grfl5LSrPjDiQhmA34gt1+Tih4nebz6vmtoSFADph60WhplJbuqf5
	 8Trv+U2MFOOUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 201F183B1F;
	Thu,  3 Jul 2025 14:00:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3338A128
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 14:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 240EA608CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 14:00:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z702jw9XvNeM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jul 2025 14:00:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BAB2060638
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAB2060638
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAB2060638
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 14:00:49 +0000 (UTC)
Received: from [141.14.220.36] (g36.guest.molgen.mpg.de [141.14.220.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id F230E601F9C7D;
 Thu, 03 Jul 2025 16:00:34 +0200 (CEST)
Message-ID: <4290ec59-645d-4675-9c98-f59246796f3c@molgen.mpg.de>
Date: Thu, 3 Jul 2025 16:00:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, andrew@lunn.ch, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250703140918.287365-1-piotr.kwapulinski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250703140918.287365-1-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next] ixgbe: add the 2.5G and 5G speed
 in auto-negotiation for E610
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

Dear Piotr,


Thank you for your patch.

Am 03.07.25 um 16:09 schrieb Piotr Kwapulinski:
> Enable the 2.5G and 5G speed in auto-negotiation for E610 at driver load.

The removed comment says there were incompatibilities with “certain 
switches“. What changed? Please elaborate in the commit message.


Kind regards,

Paul


> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 35 +++++++------------
>   1 file changed, 12 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index d741164..b202639 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -1953,6 +1953,16 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
>   	    phy_type_low  & IXGBE_PHY_TYPE_LOW_1G_SGMII    ||
>   	    phy_type_high & IXGBE_PHY_TYPE_HIGH_1G_USXGMII)
>   		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_1GB_FULL;
> +	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_T   ||
> +	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_X   ||
> +	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_KX  ||
> +	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_SGMII ||
> +	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_USXGMII)
> +		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_2_5GB_FULL;
> +	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_T  ||
> +	    phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_KR ||
> +	    phy_type_high & IXGBE_PHY_TYPE_HIGH_5G_USXGMII)
> +		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_5GB_FULL;
>   	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_T       ||
>   	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_DA      ||
>   	    phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_SR      ||
> @@ -1963,31 +1973,10 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
>   	    phy_type_high & IXGBE_PHY_TYPE_HIGH_10G_USXGMII)
>   		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_10GB_FULL;
>   
> -	/* 2.5 and 5 Gbps link speeds must be excluded from the
> -	 * auto-negotiation set used during driver initialization due to
> -	 * compatibility issues with certain switches. Those issues do not
> -	 * exist in case of E610 2.5G SKU device (0x57b1).
> -	 */
> -	if (!hw->phy.autoneg_advertised &&
> -	    hw->device_id != IXGBE_DEV_ID_E610_2_5G_T)
> +	/* Initialize autoneg speeds */
> +	if (!hw->phy.autoneg_advertised)
>   		hw->phy.autoneg_advertised = hw->phy.speeds_supported;
>   
> -	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_T   ||
> -	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_X   ||
> -	    phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_KX  ||
> -	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_SGMII ||
> -	    phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_USXGMII)
> -		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_2_5GB_FULL;
> -
> -	if (!hw->phy.autoneg_advertised &&
> -	    hw->device_id == IXGBE_DEV_ID_E610_2_5G_T)
> -		hw->phy.autoneg_advertised = hw->phy.speeds_supported;
> -
> -	if (phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_T  ||
> -	    phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_KR ||
> -	    phy_type_high & IXGBE_PHY_TYPE_HIGH_5G_USXGMII)
> -		hw->phy.speeds_supported |= IXGBE_LINK_SPEED_5GB_FULL;
> -
>   	/* Set PHY ID */
>   	memcpy(&hw->phy.id, pcaps.phy_id_oui, sizeof(u32));
>   

