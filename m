Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC5868EFDA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 14:34:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0967D40941;
	Wed,  8 Feb 2023 13:34:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0967D40941
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675863261;
	bh=BqNEo8nvCwGn/vjOATy2irl6LH7eRdI5/8fuJymq0bg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GtPLQ7uJwuM2QPVIWmOtSQHIKX928B0/nbDtCO6TGI9fXmhbecg9o3TmO0PsU9hNF
	 Pcc2EW30Z1ORjxOxaYBi0F40TmVT88AXroLqpIgA8qV66lmhnM9oVOsmKYwv0mV80d
	 kl3xjIkdBUfF5VDJ+aZzfc5WgEFzQagH/WygdNlYNn2MxuApiacgMV+6gmzQGkUCIu
	 1wpuOhmj57vfr8B0Nh2bTMv9wZlpS6Xw6g06IGdhv8MzAPhsyYv6dltV5TiSfZWJdM
	 GDxUtO1STvHJs/EpjFgf0+G41Kt+Iksb8i5ktEfqqwgR+Ucw7njX5/6ogDdU2df6l0
	 8NwqMEvg9AIFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d7yTENMCQ_HN; Wed,  8 Feb 2023 13:34:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D76D40940;
	Wed,  8 Feb 2023 13:34:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D76D40940
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED38C1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 13:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6165610E3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 13:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6165610E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MN3BGU4qE9h9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 13:34:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA927610F3
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA927610F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 13:34:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="416018046"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="416018046"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 05:34:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="617216109"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="617216109"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 05:34:11 -0800
Date: Wed, 8 Feb 2023 14:34:03 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <Y+Oky4j0zDyfLp8r@localhost.localdomain>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675863252; x=1707399252;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TEsfulaQZpqHysK/blBeEBlGvYS++/ZMjztWWA8fNM0=;
 b=atC3C+PZ+siWfZ/IYtJ61lAWSm09iBlF607acEuBfP6YgFeDMn4ZXQFB
 YnmDknViL8rBRjR41tDw779yyrwZ0bXMEbB/BXhWhx7zrzCiO/RuoO3HV
 gQ3nvNI9xgRCEIh4v3jLRrr3UgVGIWGuDOcdGfXMshMf+QIyb51uTGTon
 JGyvxhmanW01ZfgLnB/Mg92k2eC5TILqeVdKA4O5l8ioMMFMDgXfky0Jk
 oig7gj/XX9rF6X62dEHY0DFVGF8pQaoIFXhV4DAS67hBkhF2tRdmTUC6w
 Cv26rt3GU2QtKKdCcu9dfY8o56y/XRFJ6/ni0ktrtrlknRviJXvUd/VzO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=atC3C+PZ
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 06, 2023 at 03:54:36PM -0800, Jesse Brandeburg wrote:
> There was a problem reported to us where the addition of a VF with an IPv6
> address ending with a particular sequence would cause the parent device on
> the PF to no longer be able to respond to neighbor discovery packets.
> 
> In this case, we had an ovs-bridge device living on top of a VLAN, which
> was on top of a PF, and it would not be able to talk anymore (the neighbor
> entry would expire and couldn't be restored).
> 
> The root cause of the issue is that if the PF is asked to be in IFF_PROMISC
> mode (promiscuous mode) and it had an ipv6 address that needed the
> 33:33:ff:00:00:04 multicast address to work, then when the VF was added
> with the need for the same multicast address, the VF would steal all the
> traffic destined for that address.
> 
> The ice driver didn't auto-subscribe a request of IFF_PROMISC to the
> "multicast replication from other port's traffic" meaning that it won't get
> for instance, packets with an exact destination in the VF, as above.
> 
> The VF's IPv6 address, which adds a "perfect filter" for 33:33:ff:00:00:04,
> results in no packets for that multicast address making it to the PF (which
> is in promisc but NOT "multicast replication").
> 
> The fix is to enable "multicast promiscuous" whenever the driver is asked
> to enable IFF_PROMISC, and make sure to disable it when appropriate.
> 
> Fixes: e94d44786693 ("ice: Implement filter sync, NDO operations and bump version")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: added fixes
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 26 +++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 5f86e4111fa9..3a5f9c15b69c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -275,6 +275,8 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
>  	if (status && status != -EEXIST)
>  		return status;
>  
> +	netdev_dbg(vsi->netdev, "set promisc filter bits for VSI %i: 0x%x\n",
> +		   vsi->vsi_num, promisc_m);
>  	return 0;
>  }
>  
> @@ -300,6 +302,8 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
>  						    promisc_m, 0);
>  	}
>  
> +	netdev_dbg(vsi->netdev, "clear promisc filter bits for VSI %i: 0x%x\n",
> +		   vsi->vsi_num, promisc_m);
>  	return status;
>  }
>  
> @@ -414,6 +418,16 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>  				}
>  				err = 0;
>  				vlan_ops->dis_rx_filtering(vsi);
> +
> +				/* promiscuous mode implies allmulticast so
> +				 * that VSIs that are in promiscuous mode are
> +				 * subscribed to multicast packets coming to
> +				 * the port
> +				 */
> +				err = ice_set_promisc(vsi,
> +						      ICE_MCAST_PROMISC_BITS);
> +				if (err)
> +					goto out_promisc;
Aren't we already doing the same thing in case of IFF_ALLMULTI?
I wonder if our IFF_PROMISC handling is correct. Currently IFF_PROMISC
means setting PF VSI as default -> all packets from switch that don't
match any active rule goes to this VSI. If there is a rule (like in case
from the commit message) packet doesn't go to this VSI. Maybe it should
replicate all packets to PF VSI even there is a matching rule?

Basically, how IFF_PROMISC should work?

Thanks, Michal
>  			}
>  		} else {
>  			/* Clear Rx filter to remove traffic from wire */
> @@ -430,6 +444,18 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>  				    NETIF_F_HW_VLAN_CTAG_FILTER)
>  					vlan_ops->ena_rx_filtering(vsi);
>  			}
> +
> +			/* disable allmulti here, but only if allmulti is not
> +			 * still enabled for the netdev
> +			 */
> +			if (!(vsi->current_netdev_flags & IFF_ALLMULTI)) {
> +				err = ice_clear_promisc(vsi,
> +							ICE_MCAST_PROMISC_BITS);
> +				if (err) {
> +					netdev_err(netdev, "Error %d clearing multicast promiscuous on VSI %i\n",
> +						   err, vsi->vsi_num);
> +				}
> +			}
>  		}
>  	}
>  	goto exit;
> 
> base-commit: 811d581194f7412eda97acc03d17fc77824b561f
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
