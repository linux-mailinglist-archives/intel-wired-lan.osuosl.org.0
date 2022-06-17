Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6DC54F276
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jun 2022 10:03:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96C71844B4;
	Fri, 17 Jun 2022 08:03:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96C71844B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KevWX-aGCDKl; Fri, 17 Jun 2022 08:03:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51EF182702;
	Fri, 17 Jun 2022 08:03:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51EF182702
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 01F551BF36B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 08:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CAFB682702
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 08:03:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAFB682702
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OcgtgxR2DLra for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jun 2022 08:03:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 055D681A16
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 055D681A16
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 08:03:06 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aed9f.dynamic.kabel-deutschland.de
 [95.90.237.159])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EE96161EA1929;
 Fri, 17 Jun 2022 10:03:03 +0200 (CEST)
Message-ID: <2c962740-4941-cd4f-4528-3d2465ad50e1@molgen.mpg.de>
Date: Fri, 17 Jun 2022 10:03:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
References: <20220607065556.3192203-1-anatolii.gerasymenko@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220607065556.3192203-1-anatolii.gerasymenko@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: ethtool: advertise 1000M
 speeds properly
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

Dear Anatolii,


Thank you for the patch.

Am 07.06.22 um 08:55 schrieb Anatolii Gerasymenko:
> In current implementation ice_update_phy_type enables all link modes
> for selected speed. This approach doesn't work for 1000M speeds,
> because both copper (1000baseT) and optical (1000baseX) standards
> cannot be enabled at once.

Is some error shown? What is the behavior of the system? I wonder why 
this has gone unnoticed for such a long time.

> Add a special treatment for 1000M speeds.

Fix this, by adding the function `ice_set_phy_type_from_speed()` for 
1000M speeds.

> 
> Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link operations")
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 39 +++++++++++++++++++-
>   1 file changed, 38 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 1e71b70f0e52..e3080c564432 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -2189,6 +2189,42 @@ ice_setup_autoneg(struct ice_port_info *p, struct ethtool_link_ksettings *ks,
>   	return err;
>   }
>   
> +/**
> + * ice_set_phy_type_from_speed - set phy_types based on speeds
> + * and advertised modes
> + * @ks: ethtool link ksettings struct
> + * @phy_type_low: pointer to the lower part of phy_type
> + * @phy_type_high: pointer to the higher part of phy_type
> + * @adv_link_speed: targeted link speeds bitmap
> + */
> +static void
> +ice_set_phy_type_from_speed(const struct ethtool_link_ksettings *ks,
> +			    u64 *phy_type_low, u64 *phy_type_high,
> +			    u16 adv_link_speed)
> +{
> +	/* Handle 1000M speed in a special way because ice_update_phy_type
> +	 * enables all link modes, but having mixed copper and optic standards

opitic*al*?

> +	 * is not supported

Add a dot/period at the end?

> +	 */
> +	adv_link_speed &= ~ICE_AQ_LINK_SPEED_1000MB;
> +
> +	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
> +						  1000baseT_Full))
> +		*phy_type_low |= ICE_PHY_TYPE_LOW_1000BASE_T |
> +				 ICE_PHY_TYPE_LOW_1G_SGMII;
> +
> +	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
> +						  1000baseKX_Full))
> +		*phy_type_low |= ICE_PHY_TYPE_LOW_1000BASE_KX;
> +
> +	if (ethtool_link_ksettings_test_link_mode(ks, advertising,
> +						  1000baseX_Full))
> +		*phy_type_low |= ICE_PHY_TYPE_LOW_1000BASE_SX |
> +				 ICE_PHY_TYPE_LOW_1000BASE_LX;

Make the second and third branch all else-if, and add an error, when all 
there checks fail?

> +
> +	ice_update_phy_type(phy_type_low, phy_type_high, adv_link_speed);
> +}
> +
>   /**
>    * ice_set_link_ksettings - Set Speed and Duplex
>    * @netdev: network interface device structure
> @@ -2320,7 +2356,8 @@ ice_set_link_ksettings(struct net_device *netdev,
>   		adv_link_speed = curr_link_speed;
>   
>   	/* Convert the advertise link speeds to their corresponded PHY_TYPE */
> -	ice_update_phy_type(&phy_type_low, &phy_type_high, adv_link_speed);
> +	ice_set_phy_type_from_speed(ks, &phy_type_low, &phy_type_high,
> +				    adv_link_speed);
>   
>   	if (!autoneg_changed && adv_link_speed == curr_link_speed) {
>   		netdev_info(netdev, "Nothing changed, exiting without setting anything.\n");


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
