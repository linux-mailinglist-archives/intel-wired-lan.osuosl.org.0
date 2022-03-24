Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 383F04E6271
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 12:26:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7442843DE;
	Thu, 24 Mar 2022 11:26:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pl6nC7S6dUGy; Thu, 24 Mar 2022 11:26:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE0AA843D8;
	Thu, 24 Mar 2022 11:26:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1851E1BF410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 053BD843D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WIovNT5Y_6Ox for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 11:26:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5412E843CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648121166; x=1679657166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TKRStjgNvvvrYB1tQ/Y0SqCKUerOWglVcd2B3O7GaC4=;
 b=H4R3iqfrdP7heI8azrAdG3btaLaz168yLSnX3p1d+rgYjavOC+p+e4ZE
 n+xKBUdJJMZc9nLXQPuX0KfSXptg0Ca5s13cHU/t0JC1MGl15smTy1ppV
 Ph0IYry4Aj6yxooiHpIlDS2gfY+p1V/7MgGK5ubzKsInF7npjwzE3mE36
 Y4/F7QnJ6Ho9IGD4z1a3T17cZuRsTmi2H5cdY1fi39obIUU+CRMaKTYxP
 hxNRdKunJoZj+ihTARKo7ZaJsYKFhYv77ZgdxxIrijF5Ho4tnXRjDA2G8
 F3PK98mh2CBCkd5JN+oNUo8bU9k7h6W9+IFQDyWpu4fFAQP773SUsnLse A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258062562"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="258062562"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 04:26:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="561333561"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 24 Mar 2022 04:25:59 -0700
Date: Thu, 24 Mar 2022 12:25:58 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <YjxVRqTppQeYKb1h@boxer>
References: <20220323135829.4015645-1-ivecera@redhat.com>
 <CO1PR11MB508946CC906E8B851D69D31AD6189@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB508946CC906E8B851D69D31AD6189@CO1PR11MB5089.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix MAC address setting
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
Cc: Ivan Vecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "mschmidt@redhat.com" <mschmidt@redhat.com>,
 open list <linux-kernel@vger.kernel.org>,
 "poros@redhat.com" <poros@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 23, 2022 at 05:28:02PM +0000, Keller, Jacob E wrote:
> 
> 
> > -----Original Message-----
> > From: Ivan Vecera <ivecera@redhat.com>
> > Sent: Wednesday, March 23, 2022 6:58 AM
> > To: netdev@vger.kernel.org
> > Cc: poros@redhat.com; mschmidt@redhat.com; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Jakub
> > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; moderated
> > list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open list <linux-
> > kernel@vger.kernel.org>
> > Subject: [PATCH net] ice: Fix MAC address setting
> > 
> > Commit 2ccc1c1ccc671b ("ice: Remove excess error variables") merged
> > the usage of 'status' and 'err' variables into single one in
> > function ice_set_mac_address(). Unfortunately this causes
> > a regression when call of ice_fltr_add_mac() returns -EEXIST because
> > this return value does not indicate an error in this case but
> > value of 'err' value remains to be -EEXIST till the end of

s/'err' value/'err'

> > the function and is returned to caller.
> > 
> > Prior this commit this does not happen because return value of

s/this/mentioned ?

> > ice_fltr_add_mac() was stored to 'status' variable first and
> > if it was -EEXIST then 'err' remains to be zero.
> > 
> > The patch fixes the problem by reset 'err' to zero when
> > ice_fltr_add_mac() returns -EEXIST.

Again, i'd recommend imperative mood. Besides, good catch!

> > 
> > Fixes: 2ccc1c1ccc671b ("ice: Remove excess error variables")
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 168a41ea37b8..420558d1cd21 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -5474,14 +5474,15 @@ static int ice_set_mac_address(struct net_device
> > *netdev, void *pi)
> > 
> >  	/* Add filter for new MAC. If filter exists, return success */
> >  	err = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
> > -	if (err == -EEXIST)
> > +	if (err == -EEXIST) {
> >  		/* Although this MAC filter is already present in hardware it's
> >  		 * possible in some cases (e.g. bonding) that dev_addr was
> >  		 * modified outside of the driver and needs to be restored back
> >  		 * to this value.
> >  		 */
> >  		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
> > -	else if (err)
> > +		err = 0;
> > +	} else if (err)
> >  		/* error if the new filter addition failed */
> >  		err = -EADDRNOTAVAIL;
> > 
> 
> Style wise, don't we typically use {} for all branches if its needed on one?

+1, please add braces around second branch as well.

> 
> I'm ok takin this fix as-is now and doing the {} fix up afterwards if we want to avoid delay.
> 
> Thanks,
> Jake
> 
> > --
> > 2.34.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
