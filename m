Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC0085BB6A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:07:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 205F740808;
	Tue, 20 Feb 2024 12:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X0KULd51dkH5; Tue, 20 Feb 2024 12:06:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4658B4089C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708430817;
	bh=E9mY4beHsfe+BK40ieBuMr+KYav5lxsPw1O8+eV9SQQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1nUHux+byrWmkWSeiE9pu4022BtICkTvwxwVN8G+DkP/6DVy/roKAVLujfL4c/AJl
	 XjuGS0kWCezJiVUFfJ3+HUJ1CH1RITZEvg5eYFrqIMA+MjtOciIp3OEoQHtX9KDPb2
	 qpM/lTllHXgh4KYKa5vp4Vx4NkiF/97R8XaYHwlSqNM9Myg3fZnQZuywUMAORnw17u
	 Xug0Ig2MG8EBOwu98x232xnPdlz0V7Fm8tcgLdQbp5qjUrM2iuP7bUhlhTi4WWjLvP
	 UnPIBUgtCVIB4A3xASS7k5F0wSAXM8X0jMpwniyMMLfb0ng1Yb109Marl7+8bcn/US
	 Nlop/v8+b1NBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4658B4089C;
	Tue, 20 Feb 2024 12:06:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 548F21BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 409FE60743
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68kMTla9myW9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:06:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E8CA660719
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8CA660719
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8CA660719
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:06:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8F5E5CE1821;
 Tue, 20 Feb 2024 12:06:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C2E0C433C7;
 Tue, 20 Feb 2024 12:06:45 +0000 (UTC)
Date: Tue, 20 Feb 2024 12:06:43 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240220120643.GZ40273@kernel.org>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-4-71f13b7c3e60@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240218-keee-u32-cleanup-v4-4-71f13b7c3e60@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708430807;
 bh=g7OWh2V1T0jWuCWOpLghLxY/l/z2kpl8hgQUF80BDLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IsU1gpx6BLHMdxvwzV2splWpbqoYa6PWyr4iVc0LZEQTV6AUeKVxCp7HM0rvMoTRs
 JXhqKr4qcuCtMvQx9mO7FcroqUtYg4XPI9KC0azUZI1Ftea729VOTL59xrSQKsJqM6
 GwVZLjjaNiLgDxk7hxB2QTzw5Shxg6QkjWyasn59ei5xf2cPcIqN/x30PaBuQRB0zf
 KazOn5NIGF2ZJIr+mRvp+UDjviLAR+o2Om3voD9dgke7DPyohmDaK/jMCQOOyJV77r
 WyW630lB2Lmvf3mMoVt6jD5xweAjYAshlQVDV2KkDWSGKJDeH9vR2eh//bv3zOsGhv
 5eorKcz+qy36w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IsU1gpx6
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 4/9] net: ethernet: ixgbe:
 Convert EEE to use linkmodes
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

On Sun, Feb 18, 2024 at 11:07:01AM -0600, Andrew Lunn wrote:
> Convert the tables to make use of ETHTOOL link mode bits, rather than
> the old u32 SUPPORTED speeds. Make use of the linkmode helps to set
> bits and compare linkmodes. As a result, the _u32 members of keee are
> no longer used, a step towards removing them.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 48 ++++++++++++------------
>  1 file changed, 25 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c

...

> @@ -3436,28 +3437,29 @@ ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
>  	if (rc)
>  		return rc;
>  
> -	edata->lp_advertised_u32 = 0;
>  	for (i = 0; i < ARRAY_SIZE(ixgbe_lp_map); ++i) {
>  		if (info[0] & ixgbe_lp_map[i].lp_advertised)
> -			edata->lp_advertised_u32 |= ixgbe_lp_map[i].mac_speed;
> +			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
> +					 edata->lp_advertised);
>  	}
>  
> -	edata->supported_u32 = 0;
>  	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
>  		if (hw->phy.eee_speeds_supported & ixgbe_ls_map[i].mac_speed)
> -			edata->supported_u32 |= ixgbe_ls_map[i].supported;
> +			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
> +					 edata->lp_advertised);

Hi Andrew,

should this be edata->supported rather than edata->lp_advertised?

>  	}
>  
> -	edata->advertised_u32 = 0;
>  	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
>  		if (hw->phy.eee_speeds_advertised & ixgbe_ls_map[i].mac_speed)
> -			edata->advertised_u32 |= ixgbe_ls_map[i].supported;
> +			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
> +					 edata->advertised);
>  	}
>  
> -	edata->eee_enabled = !!edata->advertised_u32;
> +	edata->eee_enabled = !linkmode_empty(edata->advertised);
>  	edata->tx_lpi_enabled = edata->eee_enabled;
> -	if (edata->advertised_u32 & edata->lp_advertised_u32)
> -		edata->eee_active = true;
> +
> +	linkmode_and(common, edata->advertised, edata->lp_advertised);
> +	edata->eee_active = !linkmode_empty(common);
>  
>  	return 0;
>  }

...
