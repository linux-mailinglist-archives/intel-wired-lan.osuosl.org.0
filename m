Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2224E6227
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 12:11:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2302484323;
	Thu, 24 Mar 2022 11:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T_SF8QRvYuI3; Thu, 24 Mar 2022 11:11:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9FB884221;
	Thu, 24 Mar 2022 11:11:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14EDB1BF410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0188C84221
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KUXciqYSF4t for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 11:10:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0A978421F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648120255; x=1679656255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mKNGXFCV4Kp8qwJN+GNi3JImHKbQI1aeqMv/NpYMBAU=;
 b=H2iU3EecJU2mI5sKw673Q3N9VvUA0bgwsMBlvgaTv8fbbWw3QcOSijHI
 4PjG+vLzpYFaeGqg92fjy+Lga0MT9sbAbrilE0hAnnNo9bLVgOSxVFl6e
 phoYZ54ycW3WXHAPpuRPxMH462mYK+SyWKXHVVgPhTxb4rwzs4BV+Q12r
 y7/Nv6skBQd7cgazBXRwOxwb+4XWEeB0jlZr0AxwOwxW0P9FEFRAp0Swb
 UDj0S7BOqZ+qYzKQz5c5+H//11K53tuOVtD0FD9t3cM4OcFdIJA/wQt8f
 fl6K9b+pB2pvGGD2Jf7A9PQWgQ44dR9nvsnSmtWcTKNsr6ndEcVJh+vTB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258301977"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="258301977"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 04:10:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="501354888"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga003.jf.intel.com with ESMTP; 24 Mar 2022 04:10:51 -0700
Date: Thu, 24 Mar 2022 12:10:51 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <YjxRu8hnNnuYCrcd@boxer>
References: <20220322142554.3253428-1-ivecera@redhat.com>
 <45b155ff-8e26-fa96-f89e-6a561de01abb@linux.intel.com>
 <20220323185426.33c66892@ceranb>
 <287f2247-2c58-497d-f7b1-ae1e24a88da8@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <287f2247-2c58-497d-f7b1-ae1e24a88da8@linux.intel.com>
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 mschmidt@redhat.com, Brett Creeley <brett.creeley@intel.com>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS\"" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 23, 2022 at 07:19:55PM +0100, Marcin Szycik wrote:
> 
> 
> On 23-Mar-22 18:54, Ivan Vecera wrote:
> > On Wed, 23 Mar 2022 18:39:11 +0100
> > Marcin Szycik <marcin.szycik@linux.intel.com> wrote:
> > 
> >> On 22-Mar-22 15:25, Ivan Vecera wrote:
> >>> VSI is set as default forwarding one when promisc mode is set for
> >>> PF interface, when PF is switched to switchdev mode or when VF
> >>> driver asks to enable allmulticast or promisc mode for the VF
> >>> interface (when vf-true-promisc-support priv flag is off).
> >>> The third case is buggy because in that case VSI associated with
> >>> VF remains as default one after VF removal.
> >>>
> >>> Reproducer:
> >>> 1. Create VF
> >>>    echo 1 > sys/class/net/ens7f0/device/sriov_numvfs
> >>> 2. Enable allmulticast or promisc mode on VF
> >>>    ip link set ens7f0v0 allmulticast on
> >>>    ip link set ens7f0v0 promisc on
> >>> 3. Delete VF
> >>>    echo 0 > sys/class/net/ens7f0/device/sriov_numvfs
> >>> 4. Try to enable promisc mode on PF
> >>>    ip link set ens7f0 promisc on
> >>>
> >>> Although it looks that promisc mode on PF is enabled the opposite
> >>> is true because ice_vsi_sync_fltr() responsible for IFF_PROMISC
> >>> handling first checks if any other VSI is set as default forwarding
> >>> one and if so the function does not do anything. At this point
> >>> it is not possible to enable promisc mode on PF without re-probe
> >>> device.
> >>>
> >>> To resolve the issue this patch clear default forwarding VSI

tiny nit:
s/clear/clears

Also it's more welcome to use imperative mood.

> >>> during ice_vsi_release() when the VSI to be released is the default
> >>> one.
> >>>
> >>> Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
> >>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> >>> ---
> >>>  drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
> >>>  1 file changed, 2 insertions(+)
> >>>
> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> index 53256aca27c7..20d755822d43 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> @@ -3147,6 +3147,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
> >>>  		}
> >>>  	}
> >>>  
> >>> +	if (ice_is_vsi_dflt_vsi(pf->first_sw, vsi))
> >>> +		ice_clear_dflt_vsi(pf->first_sw);  
> >>
> >> It would probably be good to check `ice_clear_dflt_vsi` return code.
> > 
> > Check and report potential warning when error occurs? because we are in ice_vsi_release() so
> > any rollback does not make sense.

I believe that comment wouldn't hurt that it's ok to ignore the retval,
but then again i'm fine with what it is currently :)

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> 
> Right. ice_clear_dflt_vsi already reports errors so it should be good as is.
> LGTM, thanks!
> 
> > 
> > Ivan
> > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
