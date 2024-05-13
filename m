Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0C38C44CF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 18:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BD6C41572;
	Mon, 13 May 2024 16:06:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s9rMTIQ4LAlb; Mon, 13 May 2024 16:06:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D79C74152F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715616359;
	bh=DKz7fLvy/gLZEJMbguRFYONwDpK9ezz4Lbct00by4d4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cj3lAlOS01n/8OIwljka+DPxFaAzyae6Px6GMFAgMX7JPiujvXtoDqWaUo1oTFAxP
	 H1E1TIUFlPchcb8/5g/n1k9Ms0KAvnzQYe6rcQjHtlZzuY5Jnof7/wmX1JYe0fCSiX
	 RXtvRqgMb1+NbB37yEoeLy0KdGWRDjORvK0Zt6IP+DMVphfNZGQwOA/r64LpPl9tm4
	 aXd8wXDVkL0y2DsLk0sWPNO8EPZNYePGLIfqYpCIgXCK6g+AJvvo72wIgsdTi7IT0L
	 20SSJBFKzebvw4x/rMt9A0aTWfckuqy/V3sDHdi1OiP6mvnB2zC4bznBFQtefUw9nk
	 kaO8S6uJjUg7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D79C74152F;
	Mon, 13 May 2024 16:05:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 612471BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 16:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BB7A407AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 16:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ApMqJl4HNKE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 16:05:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6230D407AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6230D407AA
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6230D407AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 16:05:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8960660EA8;
 Mon, 13 May 2024 16:05:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B38BAC2BD11;
 Mon, 13 May 2024 16:05:53 +0000 (UTC)
Date: Mon, 13 May 2024 17:05:51 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240513160551.GP2787@kernel.org>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240513083735.54791-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715616356;
 bh=LORKsNqk+QgxIQWMAMEAfbSBqWqiSfgiC4QfHFnqnHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lApNT+j56bSWl+lAyBfrV6icWyBXcdM973hE4o1lKxBAwj8xDUaN+A1/iwVnokSlx
 BXjiYadaySb6J70NHsihZloSRVcKs/44UrBGhIYnG75C5V47HlG3OCxFVYZ1kbM3+9
 g6w4N1FVW4OM+ampO7l9lBJLuPDrxbS1elI9bT3p8OJXrEH0Gie/3BFslspuDAUhzN
 /AurJF3h121wp4AE4T32vnxZNOUFex6Zdd97jp5SKVNtSChCBrtiL7cg9YI+0ZAxUn
 a/M6RaxEPbyi1mOQRCPWKdyGlhbxJvPzYcIg14vPDobpoElr/7FGCbLbU/NwcZ86HQ
 TGicU+03yvMhw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lApNT+j5
Subject: Re: [Intel-wired-lan] [iwl-next v2 03/15] ice: add basic devlink
 subfunctions support
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 13, 2024 at 10:37:23AM +0200, Michal Swiatkowski wrote:

...

> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> index 9223bcdb6444..f20d7cc522a6 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> @@ -4,9 +4,42 @@
>  #ifndef _DEVLINK_PORT_H_
>  #define _DEVLINK_PORT_H_
>  
> +#include "../ice.h"
> +
> +/**
> + * struct ice_dynamic_port - Track dynamically added devlink port instance
> + * @hw_addr: the HW address for this port
> + * @active: true if the port has been activated
> + * @devlink_port: the associated devlink port structure
> + * @pf: pointer to the PF private structure
> + * @vsi: the VSI associated with this port

nit: An entry for @sfnum should go here.

> + *
> + * An instance of a dynamically added devlink port. Each port flavour
> + */
> +struct ice_dynamic_port {
> +	u8 hw_addr[ETH_ALEN];
> +	u8 active: 1;
> +	struct devlink_port devlink_port;
> +	struct ice_pf *pf;
> +	struct ice_vsi *vsi;
> +	u32 sfnum;
> +};

...
