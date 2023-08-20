Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07544781F98
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Aug 2023 21:39:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D29260B9E;
	Sun, 20 Aug 2023 19:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D29260B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692560369;
	bh=IytHZVrL6Qfgs58ThrFIBYJihf3exfRQq5h8xUd1I7c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZQD+WITOGiN1WeOWYkL9bUmI7OPUiMVFDvaE5jLgTnnqqFgHc3aX5ab7W8Cic+QG6
	 hd5+cZoKiy1QBmpDCWgF0ejfjp5z08sw3F2azVeKcTyhWh96EmW1/VeIzEMVaZ2l54
	 IC7HHiLHdlYqUqChLago13uuw3V1NzWtbuyc8nhxognQYVgSa2XbLLWiRAjf03FM0O
	 AudKtZuecsGT/JYuic2/Jw0sjr6v9QQGATEZ94SC4IZpIIe3byrH9CUziKmcjeGP7L
	 5aQdH4nYVKMtrCVleLQvygiBO4ICAz2CtMuvXrrhjcMGsTFLcmCIkCVBHK0T6P6Wpr
	 ieoMzGUfbUFdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id khVylHE9ujsq; Sun, 20 Aug 2023 19:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90C0660A8B;
	Sun, 20 Aug 2023 19:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90C0660A8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B97F1BF403
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 19:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1DEE81E5A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 19:39:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1DEE81E5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gMsGDhsSOnza for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Aug 2023 19:39:23 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BFC781E52
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Aug 2023 19:39:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BFC781E52
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qXoGd-004dbe-1S; Sun, 20 Aug 2023 21:39:19 +0200
Date: Sun, 20 Aug 2023 21:39:19 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <7d25216b-ba96-467c-928b-63ca1521adeb@lunn.ch>
References: <20230819094025.15196-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230819094025.15196-1-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=4+4taJjQhiVAJMxYuoZemGHQ3I1UdBBTGxSFzNRsDEw=; b=k53r60cx6GGgjvDsBLbko2mdFG
 sovvww2CnaHRKuFp6qbeiSi6GvAlxI/iR3/EMemlFvqjy0sueM6Bt6gnGC8A9+y575ywVCoxMYXFe
 uilEB7qmtza4AsJrLmX0i56j6+sDlZBqI+qV+D2bcOq/5iZq7hOABFhqY4GRyDHuoq4g=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=k53r60cx
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/9] ethtool: Add missing
 ETHTOOL_LINK_MODE_ to forced speed map
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 aelior@marvell.com, manishc@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Aug 19, 2023 at 02:40:25AM -0700, Paul Greenwalt wrote:
> The Ethtool forced speeds to Ethtool supported link modes map is missing
> some Ethtool forced speeds and ETHTOOL_LINK_MODE_. Add the all speeds
> and mapped link modes to provide a common implementation among drivers.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  include/linux/ethtool.h | 80 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index 245fd4a8d85b..519d6ec73d98 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -1069,12 +1069,33 @@ struct ethtool_forced_speed_map {
>  	.arr_size	= ARRAY_SIZE(ethtool_forced_speed_##value),	\
>  }
>  
> +static const u32 ethtool_forced_speed_10[] __initconst = {
> +	ETHTOOL_LINK_MODE_10baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
> +	ETHTOOL_LINK_MODE_10baseT1S_Full_BIT,

Is this supposed to list all 10Mbps link modes? Or only full duplex
modes?

settings[] has:

	PHY_SETTING(     10, FULL,     10baseT_Full		),
	PHY_SETTING(     10, HALF,     10baseT_Half		),
	PHY_SETTING(     10, FULL,     10baseT1L_Full		),
	PHY_SETTING(     10, FULL,     10baseT1S_Full		),
	PHY_SETTING(     10, HALF,     10baseT1S_Half		),
	PHY_SETTING(     10, HALF,     10baseT1S_P2MP_Half	),

> +};
> +
> +static const u32 ethtool_forced_speed_100[] __initconst = {
> +	ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_100baseFX_Half_BIT,
> +	ETHTOOL_LINK_MODE_100baseFX_Full_BIT,
> +};

	PHY_SETTING(    100, FULL,    100baseT_Full		),
	PHY_SETTING(    100, FULL,    100baseT1_Full		),
	PHY_SETTING(    100, HALF,    100baseT_Half		),
	PHY_SETTING(    100, HALF,    100baseFX_Half		),
	PHY_SETTING(    100, FULL,    100baseFX_Full		),

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
