Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773BD633AC1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 12:07:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B9DA4029F;
	Tue, 22 Nov 2022 11:07:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B9DA4029F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669115267;
	bh=ZKAn+YRvkAnfQHC5IMbSlK+c3Klwouael6eo4PFNOs8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TnWSmcvm2Bf5jFR2OuDOmrtcPT83dlCAo+wOGfL/czPqjuKkaY5bceDLncsYOzfVY
	 xqW9P7rtfQRtAL3kdRinbUIJXFvkK2/RL8DaRufsHOiHRso6KznAbqKaQE8oFJkPp+
	 1jVxLku3K8z+OIQnJ8WswNH8xGyZ7umxNYdQ5CbpaO/XOSMm3VqzPu7VnBRNEe3gn+
	 Lme7SJQ/3BEaREiVTRgh7V9HRs5AQoBO2Sslov6B+l9qKnXHHslgVQiOEz0ZaSKKvV
	 Z65u6IoaKiAOmxL3oLwjftrnHJvLBuJvHq0sMCB3IR4ByQjGQuLwO41GX1NPlLQQb8
	 g08T6XEm+f+mA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OTH30SCfhdJL; Tue, 22 Nov 2022 11:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0642440185;
	Tue, 22 Nov 2022 11:07:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0642440185
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0B5C1BF94B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 11:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B34781F38
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 11:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B34781F38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5vugviQmWFFO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 11:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D21981F33
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D21981F33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 11:07:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 09FADCE1BB0;
 Tue, 22 Nov 2022 11:07:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB80EC433C1;
 Tue, 22 Nov 2022 11:07:31 +0000 (UTC)
Date: Tue, 22 Nov 2022 13:07:28 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
Message-ID: <Y3ytcGM2c52lzukO@unreal>
References: <20221118090306.48022-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118090306.48022-1-tirthendu.sarkar@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1669115252;
 bh=BgEji6npW8EgcnFGVHSvpi5jHa0Tr7lW2liTsOhGRqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kcqMFwbBytsmoePnKicnK5MK6pNnHf6XWaICWPN4AF8ShrV+AGocQhBKgjEE31CIN
 oaL0FW4lTNgcyWzWWyJCw3grLZX/TmlAxfLs3gQUJjEu8NRx9a/YIfZyEKRJYfvoyz
 GiSIO9NFA2gzjQrMXTT6uSKFBwtXm1HTt5x3f+MGrMgVDYbkfNMf71Sb+lgKFlrR/x
 61KoYOKr5m+sAcFpoWsprKRLE5f/eRMoO0FTQbD4RJJKfMwsV9kwyQILXyDpbUSBTL
 diJtPBClGoCMBDpJ8avlhzDamadpg7id8FhgspvjCmC7s6v8IVaD4JAEdcWzTGhHTP
 WFm+csHNY+l3w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kcqMFwbB
Subject: Re: [Intel-wired-lan] [PATCH intel-next v4] i40e: allow toggling
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

On Fri, Nov 18, 2022 at 02:33:06PM +0530, Tirthendu Sarkar wrote:
> Add support for NETIF_F_LOOPBACK. This feature can be set via:
> $ ethtool -K eth0 loopback <on|off>
> 
> This sets the MAC Tx->Rx loopback.
> 
> This feature is used for the xsk selftests, and might have other uses
> too.
> 
> Changelog:
>     v3 -> v4:
>     - Removed unused %_LEGACY macros as suggested by Alexandr Lobakin.
>     - Modified checks for interface bringup and i40e_set_loopback().
>     - Propagating up return value from i40_set_loopback().
> 
>     v2 -> v3:
>      - Fixed loopback macros as per NVM version 6.01+.
>      - Renamed existing macros as *_LEGACY.
>      - Based on NVM verison appropriate macro is used for MAC loopback.
> 
>     v1 -> v2:
>      - Moved loopback to netdev's hardware features as suggested by
>        Alexandr Lobakin.

Please put changelog after --- mark. It doesn't belong to the commit
message.

> 
> Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  8 ++++--
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 26 +++++++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 28 ++++++++++++++++++-
>  .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
>  4 files changed, 61 insertions(+), 4 deletions(-)

<...>

>  /**
>   * i40e_set_features - set the netdev feature flags
>   * @netdev: ptr to the netdev being adjusted
> @@ -12960,6 +12983,9 @@ static int i40e_set_features(struct net_device *netdev,
>  	if (need_reset)
>  		i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
>  
> +	if ((features ^ netdev->features) & NETIF_F_LOOPBACK)
> +		return i40e_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));

Don't you need to disable loopback if NETIF_F_LOOPBACK was cleared?

> +
>  	return 0;
>  }
>  
> @@ -13722,7 +13748,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>  	if (!(pf->flags & I40E_FLAG_MFP_ENABLED))
>  		hw_features |= NETIF_F_NTUPLE | NETIF_F_HW_TC;
>  
> -	netdev->hw_features |= hw_features;
> +	netdev->hw_features |= hw_features | NETIF_F_LOOPBACK;
>  

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
