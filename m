Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D331085BC59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:39:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90B1F4028D;
	Tue, 20 Feb 2024 12:39:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fcb3cfvO5nTb; Tue, 20 Feb 2024 12:39:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB92B4026B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708432775;
	bh=1bjNKGLzRb2nxWuoUWCliwGm6ZWcni06sF4LG8wTLPI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V8cnqW48mrFC7KLfv/T797UFAZ7M2o3vpbtICIX7BZGk3kAsKn3ceeEx+FzkfUvk3
	 7NBF6a/6WP5POFRR90hSATZq+AU5NtExSgUvjb5wf6cNitdMYVZXh+0Ao1Llt+pEhx
	 IPazNs1w3x7YoEk0N9ZpkgnXyqIrXpOOtAB6LYiGVp5BAkPdiSUTelUOBmhsMbv1BJ
	 PEbzqacDTUCyJ1YlihluouSo74dl8MMV0rPWiB2iGKuxH/WKoMHeXIfpT3QJxGafrD
	 v4FsOUs1ChtIXIuVXbe7W5E895bGnEFJTTlH/LEDkHSSp31F2yQ+gqWD4rnkDDKW/n
	 Z/wQvDPEwRyNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB92B4026B;
	Tue, 20 Feb 2024 12:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D5D51BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:39:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5C4E40048
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4A3uAL3SuY5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:39:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E278A41557
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E278A41557
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E278A41557
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:39:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1B7F1CE0BA6;
 Tue, 20 Feb 2024 12:39:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C578FC433F1;
 Tue, 20 Feb 2024 12:39:26 +0000 (UTC)
Date: Tue, 20 Feb 2024 12:39:24 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240220123924.GA40273@kernel.org>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-2-71f13b7c3e60@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240218-keee-u32-cleanup-v4-2-71f13b7c3e60@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708432769;
 bh=zaRvBdCErfnTGRRy1hJDAaFwvmR35DTVIeIkU5YZ8ec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rzZm8mUWfLWVPAhjMB5ui51kgxlP9xkCOMONOR0ogWf89KCxuVO+kJbk+KdnLjF5D
 TKoeUzJPAKDFjHcCIRZkr3g9G0u5t/tXUNs5awpZUaczYJlP6/HRdg70FscwWWNxPO
 UvpeQ4y6A0Z5fB6svIAtv2q0fZJ8yeCRIyMHKzv6b1udlQFiVJq/OfCN3DC5hFxd7Y
 kUhh++iQhYoYD87Ap3WHCF900Pnu1+0EqL/hiAXxBfq7Nh1toa/j87W5MPytjozLEI
 LifVXEMXp7KzlIiJJw3G3e5dYDeb3og75TQpO89Kz56VIo2nCobToOkmlnhgcgJjH4
 /ugMfTe9PHkVQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rzZm8mUW
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/9] net: usb:
 ax88179_178a: Use linkmode helpers for EEE
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Feb 18, 2024 at 11:06:59AM -0600, Andrew Lunn wrote:
> Make use of the existing linkmode helpers for converting PHY EEE
> register values into links modes, now that ethtool_keee uses link
> modes, rather than u32 values.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  drivers/net/usb/ax88179_178a.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
> index d6168eaa286f..d4bf9865d87b 100644
> --- a/drivers/net/usb/ax88179_178a.c
> +++ b/drivers/net/usb/ax88179_178a.c
> @@ -676,21 +676,21 @@ ax88179_ethtool_get_eee(struct usbnet *dev, struct ethtool_keee *data)
>  					    MDIO_MMD_PCS);
>  	if (val < 0)
>  		return val;
> -	data->supported_u32 = mmd_eee_cap_to_ethtool_sup_t(val);
> +	mii_eee_cap1_mod_linkmode_t(data->supported, val);
>  
>  	/* Get advertisement EEE */
>  	val = ax88179_phy_read_mmd_indirect(dev, MDIO_AN_EEE_ADV,
>  					    MDIO_MMD_AN);
>  	if (val < 0)
>  		return val;
> -	data->advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(val);
> +	mii_eee_cap1_mod_linkmode_t(data->advertised, val);
>  
>  	/* Get LP advertisement EEE */
>  	val = ax88179_phy_read_mmd_indirect(dev, MDIO_AN_EEE_LPABLE,
>  					    MDIO_MMD_AN);
>  	if (val < 0)
>  		return val;
> -	data->lp_advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(val);
> +	mii_eee_cap1_mod_linkmode_t(data->lp_advertised, val);
>  
>  	return 0;
>  }
> @@ -698,7 +698,7 @@ ax88179_ethtool_get_eee(struct usbnet *dev, struct ethtool_keee *data)
>  static int
>  ax88179_ethtool_set_eee(struct usbnet *dev, struct ethtool_keee *data)
>  {
> -	u16 tmp16 = ethtool_adv_to_mmd_eee_adv_t(data->advertised_u32);
> +	u16 tmp16 = linkmode_to_mii_eee_cap1_t(data->advertised);
>  
>  	return ax88179_phy_write_mmd_indirect(dev, MDIO_AN_EEE_ADV,
>  					      MDIO_MMD_AN, tmp16);
> @@ -1663,7 +1663,6 @@ static int ax88179_reset(struct usbnet *dev)
>  	ax88179_disable_eee(dev);
>  
>  	ax88179_ethtool_get_eee(dev, &eee_data);
> -	eee_data.advertised_u32 = 0;

Hi Andrew,

could you clarify why advertised no longer needs to be cleared?

>  	ax88179_ethtool_set_eee(dev, &eee_data);
>  
>  	/* Restart autoneg */
> 
> -- 
> 2.43.0
> 
> 
