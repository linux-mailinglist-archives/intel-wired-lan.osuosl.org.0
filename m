Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 052CC6A52AF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 06:43:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E03D610BA;
	Tue, 28 Feb 2023 05:43:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E03D610BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677562995;
	bh=HSkzbcvtrSOp335FB0GyPIYC9+og12S3Ct6to2Q5ptw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Rb/pTg9fLNTcNXk2ggrwguV4LaCHg2GDmCIEx2J3ot0oa/+wpVMFLQeaumoJXZve
	 xM6K9sioU9Em31XPmsXYT6lMuIvLhzIU4NOnDugDOslSbEkI6N7QHxop4fJtOahaWY
	 6hKkUAXol/U2/3qdY6v7vgTRS0ewAWHzz/Aechv0cq8j4HJlUitfqtYm9tG1dBiqT4
	 4jq7dKPZdOyF0tvmbqCO8962BF4V9QQtgRP2htySSknedQJUCiL1+hKfPJtEv+atk1
	 sZAwkFOrWDRvJbR45zrNaR+nEt+Ywvj7laNXMeJKxw6vOQfcv97k0ikrC2ejCFOkdX
	 mL8j/LtcrEfaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bM-bwXqZ7FZd; Tue, 28 Feb 2023 05:43:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 941E2610BE;
	Tue, 28 Feb 2023 05:43:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 941E2610BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E67F31BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEDC4610BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEDC4610BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 731b4qG69bPX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 05:43:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6150610B2
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E6150610B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 05:43:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="420315924"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="420315924"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:43:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="651496888"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="651496888"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 21:43:05 -0800
Date: Tue, 28 Feb 2023 06:42:55 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <Y/2UX7qZoDaQgmqZ@localhost.localdomain>
References: <20230227221500.3692237-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230227221500.3692237-1-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677562988; x=1709098988;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mdCz6fFW6V7jsmqjEo0l66cJPtFfBFNyH9prQAVE+ys=;
 b=K7pYerGfYXqULW+89fcJMVH5JFqhbeuR0cZUSshvFpdFiTsTr5QmnJji
 gVqpWaIoWc6t09aLaFAhz7wJZV7M+CnibWN/9LMoJDELYw11ICf5DURpO
 ZEPIyNot0AJGOFF8GtZAAupOV4dwfZ5E1WFOyA33CYvjPPFBHLe5ILgku
 gDCFpdmCeAulpqoftUItx26r+enuKqWeCE/INJg2nae2Gk9MFVapaFOYI
 M269RuvTSB/CdhXKc2K8ay4YEDWA9LN5WsPGgXtg2h0UpfBbGARl5sOmK
 w6UetNpffR+OxBts2/IoqkHV6F5gUCHmC8qTq6qC8OZASG2XgxZ5QvOj2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K7pYerGf
Subject: Re: [Intel-wired-lan] [net-next] ice: remove comment about not
 supporting driver reinit
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 27, 2023 at 02:15:00PM -0800, Jacob Keller wrote:
> Since commit 31c8db2c4fa7 ("ice: implement devlink reinit action"), the ice
> driver does support driver re-initialization via devlink reload. Remove the
> stale comment indicating that the driver lacks this support from the
> ice_devlink_ops structure.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 05f216af8c81..bc44cc220818 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1254,7 +1254,6 @@ static const struct devlink_ops ice_devlink_ops = {
>  	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
>  	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT) |
>  			  BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
> -	/* The ice driver currently does not support driver reinit */
>  	.reload_down = ice_devlink_reload_down,
>  	.reload_up = ice_devlink_reload_up,
>  	.port_split = ice_devlink_port_split,
> 
> base-commit: f75ed9add58c1bca6a615609a0f7f148c257e3c7
> -- 
Thanks for fixing it.
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> 2.39.1.405.gd4c25cc71f83
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
