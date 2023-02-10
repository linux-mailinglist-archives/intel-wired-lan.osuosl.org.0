Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6173E69184B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 07:06:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE593418AE;
	Fri, 10 Feb 2023 06:06:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE593418AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676009173;
	bh=tjnMuFAJVAHBNrxYt2K1ZZeC0Q0RT6xv9zR1sMB5NSk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bFnjY2hizfmYHMAIYiwi6fIGZYULkZoHJ87TiaLgynxd+yCNyUARL9BWYujyulpZ2
	 tEt6TJW6QXw93lwagBFXax4lXRyeTHCzupzQwds+953laeZ1udP08PUu2poKssI1K3
	 YuY8BNAs7XxIUzuUnQfnWv2XWwQMHUYJ/xZXB6+Ene5ZHXH/iWHqtIobZCuy/ds+Da
	 74p7t8902yYNP3qD3XDsC8wLFq1BlDcBushOIngmmHN9p0uhKilIok8n1L0oA++RRy
	 xdQGsOjJ7liToAwVz2kg8mwbCHuahkVbcLitLKMTT8+3Aa+g9dolPvIi/TXwOjBAjS
	 NHaOdJWMdpC1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ILPjofNkjcZJ; Fri, 10 Feb 2023 06:06:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3B75408E0;
	Fri, 10 Feb 2023 06:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3B75408E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E496E1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 06:06:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA90840488
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 06:06:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA90840488
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pSuffeL-ohB9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 06:06:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 080E7400C1
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 080E7400C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 06:06:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="392747130"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="392747130"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 22:06:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="645523480"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="645523480"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 22:06:00 -0800
Date: Fri, 10 Feb 2023 07:05:51 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <Y+Xep2FQgmEWdzs0@localhost.localdomain>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <Y+Oky4j0zDyfLp8r@localhost.localdomain>
 <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676009162; x=1707545162;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nA82sw5nDbMvWQuwgRviWKgQY9xt4EMKa/g0vQjAaSA=;
 b=U0CSiXdBcW3dKdKX0hyBqetwuEkDt80A5+DIddJ2bmFOt2tvXUhOGtJJ
 XCZEic+LZGo5Xrp645nXawRRgdv+rMw9c+HfKM17ts5aThXKSU930Ev56
 wY0/sbE9fXfXwQ1/4Wz8+v2WoZa50iv1syiUEyI1JD+E/mFXBB124JwK0
 FnnORXRvJ1gQ4ImdzgD6SBWyVOTj8Xh52k68QW9H2qOcjTRUsb4CYUMi9
 6BkIWulDLzy6zbPlcj01thn2UO4Zz/ZDNwbaLpaGYmcm3WEsOJF1yj5+3
 WOMZTDX1ajh3NmH3elpNLIaDVkEDj2oMY/QXtcc3/jkCSbWabSQlBuLiO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U0CSiXdB
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

On Thu, Feb 09, 2023 at 06:08:45PM -0800, Jesse Brandeburg wrote:
> On 2/8/2023 5:34 AM, Michal Swiatkowski wrote:
> > > @@ -414,6 +418,16 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
> > >   				}
> > >   				err = 0;
> > >   				vlan_ops->dis_rx_filtering(vsi);
> > > +
> > > +				/* promiscuous mode implies allmulticast so
> > > +				 * that VSIs that are in promiscuous mode are
> > > +				 * subscribed to multicast packets coming to
> > > +				 * the port
> > > +				 */
> > > +				err = ice_set_promisc(vsi,
> > > +						      ICE_MCAST_PROMISC_BITS);
> > > +				if (err)
> > > +					goto out_promisc;
> > Aren't we already doing the same thing in case of IFF_ALLMULTI?
> > I wonder if our IFF_PROMISC handling is correct. Currently IFF_PROMISC
> > means setting PF VSI as default -> all packets from switch that don't
>                                                                   ^^^^^
> that's the critical failure of the original code.
> 
> > match any active rule goes to this VSI. If there is a rule (like in case
> > from the commit message) packet doesn't go to this VSI. Maybe it should
> > replicate all packets to PF VSI even there is a matching rule?
> 
> That's what this code change does, turn on the MCAST_PROMISC_BITS flag which
> makes the hardware replicate all multicasts received with *other*
> destination VSIs to this PF one.
> 
> > 
> > Basically, how IFF_PROMISC should work?
> 
> Yep, it's always how it should have worked, but it wasn't quite working
> right, and using bridge "fixed" it because bridge sets both PROMISC and
> ALLMULTI bits.
> 
> 

Ok, thanks for explanation.

From commit message:
"The root cause of the issue is that if the PF is asked to be in IFF_PROMISC
mode (promiscuous mode) and it had an ipv6 address that needed the
33:33:ff:00:00:04 multicast address to work, then when the VF was added
with the need for the same multicast address, the VF would steal all the
traffic destined for that address."

I wonder why there is no "perfect filter" for multicast ipv6 on PF if PF
have an ipv6 address? It is deleted by kernel in this configuration? Two
"perfect filters" for the same MAC results in packet replication (if
they have the same priority, but in our driver they have).
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
