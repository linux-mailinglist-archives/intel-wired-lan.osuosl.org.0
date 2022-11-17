Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA88162E14C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 17:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36DB182136;
	Thu, 17 Nov 2022 16:16:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36DB182136
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668701765;
	bh=p5JzP8qBDfSGCFMQ1SjCnI8MBWSUAGBNgoXl/MxEPws=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KxPbcpqOYD0FXnaNISdR+IaQGFh8mwIimfCxUE6LHzn0YKLbSyuiTZYXCzVr6GdxG
	 /OXprANo8I751o4TohXziFzwyaJRgnON57psz97tpqRgTayfxgr5oupaoGf3y2i84s
	 6LDduLWhznIXa7prB22h2Z3E3WOgKQzF9+BL4AI1FRM68mMsCpT6ePMeq6TM7Wn2L0
	 sux+0uMgnVjtkESyUDCzdxBJuwbvyar+MrqbZKEt2yRDcDZBF2uPslvTw4W9PyNVvN
	 4RzYOkmrvfAFVTtvInxTNaiikobPjrYu/M1dUjxy8G83XwM3iYXIh9Vca1VGDPiOEy
	 KLfDiFLmjCdgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjJHgxKIY47p; Thu, 17 Nov 2022 16:16:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12C5782134;
	Thu, 17 Nov 2022 16:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12C5782134
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C3471BF599
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 16:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6DEF6106F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 16:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6DEF6106F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MmxRDets5oEq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 16:15:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC9236106A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC9236106A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 16:15:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="339724392"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="339724392"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 08:15:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="745597938"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="745597938"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2022 08:15:55 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2AHGFsgg004324; Thu, 17 Nov 2022 16:15:54 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
Date: Thu, 17 Nov 2022 17:15:18 +0100
Message-Id: <20221117161518.3450087-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116164709.9201-1-tirthendu.sarkar@intel.com>
References: <20221116164709.9201-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668701757; x=1700237757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5v3zHBia4Ks3Qtrh/XRhhD0ZANV2CcggzZB25D8knjE=;
 b=CcTo/FnTn+XKt36tOS0LwtGyLTwNYKNRTOCjJJ288X21+l92/Amfz+n5
 R+e1YGzz7uPuDEKxJcbWbbIRROAjt+6vfNXn552Yo95VC1k5E2vWj2p+H
 kWk4LCYX712c/cqOs9Oi6oykl4fxUvsa5TKrZeSQ7g+YX8jeCTCZ9szGu
 0oqDktOnBI3bWq1IWGHNCJXkdferEwbedRrpJ6rxadTErSW/jT2QEfn21
 UF3qx3bNlP48QvRbYCmYtqA79TtpzJXvi3kIL0T11zng60x46AK/0134+
 yFPnOl5kGgOCZAnv8oRma1toOzgYv1VabgS4kHat2XLlSeAZYpJGTRlHX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CcTo/FnT
Subject: Re: [Intel-wired-lan] [PATCH intel-next v3] i40e: allow toggling
 loopback mode via ndo_set_features callback
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
Cc: tirtha@gmail.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
Date: Wed, 16 Nov 2022 22:17:09 +0530

> Add support for NETIF_F_LOOPBACK. This feature can be set via:
> $ ethtool -K eth0 loopback <on|off>
> 
> This sets the MAC Tx->Rx loopback.
> 
> This feature is used for the xsk selftests, and might have other uses
> too.
> 
> Changelog:
>     v2 -> v3:
>      - Fixed loopback macros as per NVM version 6.01+.
>      - Renamed existing macros as *_LEGACY
>      - Based on NVM verison appropriate macro is used for MAC loopback.
> 
>     v1 -> v2:
>      - Moved loopback to netdev's hardware features as suggested by
>        Alexandr Lobakin.
> 
> Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_adminq_cmd.h | 10 +++++--
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 26 +++++++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 28 ++++++++++++++++++-
>  .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
>  4 files changed, 63 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> index 60f9e0a6aaca..7532553a6982 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> @@ -1795,9 +1795,13 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_an_advt_reg);
>  /* Set Loopback mode (0x0618) */
>  struct i40e_aqc_set_lb_mode {
>  	__le16	lb_mode;
> -#define I40E_AQ_LB_PHY_LOCAL	0x01
> -#define I40E_AQ_LB_PHY_REMOTE	0x02
> -#define I40E_AQ_LB_MAC_LOCAL	0x04
> +#define I40E_LEGACY_LOOPBACK_NVM_VER	0x6000
> +#define I40E_AQ_LB_MAC_LOCAL		0x01
> +#define I40E_AQ_LB_PHY_LOCAL		0x05
> +#define I40E_AQ_LB_PHY_REMOTE		0x06
> +#define I40E_AQ_LB_PHY_LOCAL_LEGACY   	0x01
> +#define I40E_AQ_LB_PHY_REMOTE_LEGACY  	0x02
> +#define I40E_AQ_LB_MAC_LOCAL_LEGACY   	0x04

Do you need any of those, apart from MAC_LOCAL{,_LEGACY}? I think
it's better to keep only the values you actually use.

>  	u8	reserved[14];
>  };
>  
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 4f01e2a6b6bb..8f764ff5c990 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -1830,6 +1830,32 @@ i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw,
>  	return status;
>  }
>  
> +/**
> + * i40e_aq_set_mac_loopback
> + * @hw: pointer to the HW struct
> + * @ena_lpbk: Enable or Disable loopback
> + * @cmd_details: pointer to command details structure or NULL
> + *
> + * Enable/disable loopback on a given port
> + */
> +i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,
> +				     struct i40e_asq_cmd_details *cmd_details)
> +{
> +	struct i40e_aq_desc desc;
> +	struct i40e_aqc_set_lb_mode *cmd =
> +		(struct i40e_aqc_set_lb_mode *)&desc.params.raw;
> +
> +	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_set_lb_modes);
> +	if (ena_lpbk) {
> +		if (hw->nvm.version <= I40E_LEGACY_LOOPBACK_NVM_VER)
> +			cmd->lb_mode = cpu_to_le16(I40E_AQ_LB_MAC_LOCAL_LEGACY);
> +		else
> +			cmd->lb_mode = cpu_to_le16(I40E_AQ_LB_MAC_LOCAL);
> +	}
> +
> +	return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
> +}
> +
>  /**
>   * i40e_aq_set_phy_debug
>   * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 4880b740fa6e..1941715b6223 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -12920,6 +12920,28 @@ static void i40e_clear_rss_lut(struct i40e_vsi *vsi)
>  	}
>  }
>  
> +/**
> + * i40e_set_loopback - turn on/off loopback mode on underlying PF
> + * @vsi: ptr to VSI
> + * @ena: flag to indicate the on/off setting
> + */
> +static int i40e_set_loopback(struct i40e_vsi *vsi, bool ena)
> +{
> +	bool if_running = netif_running(vsi->netdev);
> +	int ret;
> +
> +	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
> +		i40e_down(vsi);
> +
> +	ret = i40e_aq_set_mac_loopback(&vsi->back->hw, ena, NULL);
> +	if (ret)
> +		netdev_err(vsi->netdev, "Failed to toggle loopback state\n");
> +	if (if_running)
> +		i40e_up(vsi);

You do i40e_down() only if %__I40E_VSI_DOWN was not set. So I guess
you need to do ifup only if you did ifdown. So I think the function
start must be a bit differen? Like:

	if (if_running && !test_and_set_bit())
		i40e_down();
	else
		if_running = false;

To not do an ifup when it wasn't you who did an ifdown?

> +
> +	return ret;
> +}
> +
>  /**
>   * i40e_set_features - set the netdev feature flags
>   * @netdev: ptr to the netdev being adjusted
> @@ -12960,6 +12982,10 @@ static int i40e_set_features(struct net_device *netdev,
>  	if (need_reset)
>  		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
>  
> +	if (netdev->hw_features & NETIF_F_LOOPBACK)

Isn't that condition redundant? I think you add %NETIF_F_LOOPBACK
to ::hw_features unconditionally, it's always there?

> +		if (i40e_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK)))

The double negation is redundant as the second argument is bool.

> +			return -EINVAL;

Why don't you propagate return value from i40e_set_loopback() and
return only 0 or -%EINVAL? If you don't need the actual return code,
just make set_loopback() return bool, otherwise

	if (changed_features & NETIF_F_LOOPBACK)
		return i40e_set_loopback(vsi, features & NETIF_F_LOOPBACK);

	return 0;

> +
>  	return 0;
>  }

[...]

> -- 
> 2.34.1

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
