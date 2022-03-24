Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A9B4E6181
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 11:08:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E93960A7B;
	Thu, 24 Mar 2022 10:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cdmxKhk2kAfz; Thu, 24 Mar 2022 10:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF2E26079D;
	Thu, 24 Mar 2022 10:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4604B1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 10:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34391402C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 10:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZnmL4lTymwuR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 10:08:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46A21402BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 10:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648116503; x=1679652503;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=D4tQL9ezIGp1V+zUe7L+IBKQ/EYL74mA6PBzw54L6KI=;
 b=fMmpYofPELHd3fnINdisYuhoohCcA3nxScnKAdoJT3GpK5ZA6swnptF9
 qOI6FTUuL1yXqQ9gdhPyoPTM4akr2xiISnTh4eCePCPoA7wFhAornkipd
 9JrRSEN5ZKWShwN5vpNjECypH9kdRJAB2Ov7yza/t3jOy4mzzxS2pFVxl
 ck2jhI08XujgoiV6LYWm9BX7WbISboFWSSKCwC4XXupiRIy1JuuLpzGA4
 1qyjacvNnBxqEwGqd5xch1DQEGLswXrNQko5E93+4X6eHns49nwK1rUrS
 9KhIZb7xiZcSyWuuzYLqNbRKtsDuccZjLu2KY4rP99wWaqN4DVNfHlOjg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="344769398"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="344769398"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 03:07:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="561309848"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 03:07:52 -0700
Date: Thu, 24 Mar 2022 03:09:25 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <YjwZJU7PIKCcndC1@localhost.localdomain>
References: <20220322142554.3253428-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220322142554.3253428-1-ivecera@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Clear default forwarding VSI
 during VSI release
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com,
 Brett Creeley <brett.creeley@intel.com>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 22, 2022 at 03:25:54PM +0100, Ivan Vecera wrote:
> VSI is set as default forwarding one when promisc mode is set for
> PF interface, when PF is switched to switchdev mode or when VF
> driver asks to enable allmulticast or promisc mode for the VF
> interface (when vf-true-promisc-support priv flag is off).
> The third case is buggy because in that case VSI associated with
> VF remains as default one after VF removal.
> 
> Reproducer:
> 1. Create VF
>    echo 1 > sys/class/net/ens7f0/device/sriov_numvfs
> 2. Enable allmulticast or promisc mode on VF
>    ip link set ens7f0v0 allmulticast on
>    ip link set ens7f0v0 promisc on
> 3. Delete VF
>    echo 0 > sys/class/net/ens7f0/device/sriov_numvfs
> 4. Try to enable promisc mode on PF
>    ip link set ens7f0 promisc on
> 
> Although it looks that promisc mode on PF is enabled the opposite
> is true because ice_vsi_sync_fltr() responsible for IFF_PROMISC
> handling first checks if any other VSI is set as default forwarding
> one and if so the function does not do anything. At this point
> it is not possible to enable promisc mode on PF without re-probe
> device.
> 
> To resolve the issue this patch clear default forwarding VSI
> during ice_vsi_release() when the VSI to be released is the default
> one.
> 
> Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 53256aca27c7..20d755822d43 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3147,6 +3147,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
>  		}
>  	}
>  
> +	if (ice_is_vsi_dflt_vsi(pf->first_sw, vsi))
> +		ice_clear_dflt_vsi(pf->first_sw);
>  	ice_fltr_remove_all(vsi);
>  	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
>  	err = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
Thanks for fixing it.
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> -- 
> 2.34.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
