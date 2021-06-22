Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6223AFC7C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 07:11:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C35E0403CF;
	Tue, 22 Jun 2021 05:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m9FloYVsg-sI; Tue, 22 Jun 2021 05:11:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AE4940393;
	Tue, 22 Jun 2021 05:11:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BA5C1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 05:11:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B042839BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 05:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dQCSuX9UjAcw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 05:11:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F0308398E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 05:11:40 +0000 (UTC)
IronPort-SDR: GoE5GYvZoniVSMUxpA+AxOiEe/x1ljdsZUMWVRXNRJW6WsMOe4mDvRSntmaAv4V7pXTSDtH2ya
 mMy5wvnxpDxQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="228538892"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="228538892"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 22:11:39 -0700
IronPort-SDR: qmcrLX70qp8Rwgg6+HEs+6+W+XwdtCR44ZH0qMhyAW6Bc35U66FT6ck/0ftQ5sWMZLxX8xja3F
 6VxIO5FdGDyQ==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="452471712"
Received: from unknown (HELO localhost.localdomain) ([10.102.102.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 22:11:37 -0700
Date: Mon, 21 Jun 2021 21:18:56 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <YNE6gDaubIydNmGz@localhost.localdomain>
References: <20210617234413.104069-1-michal.swiatkowski@linux.intel.com>
 <20210617234413.104069-8-michal.swiatkowski@linux.intel.com>
 <a6a0b9064847e6106cca2ae4a9669b84f4322926.camel@intel.com>
 <YNEwV42hOSAhtbiX@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YNEwV42hOSAhtbiX@localhost.localdomain>
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/12] ice: setting and
 releasing switchdev environment
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 21, 2021 at 08:35:35PM -0400, Michal Swiatkowski wrote:
> On Mon, Jun 21, 2021 at 06:21:15PM +0000, Nguyen, Anthony L wrote:
> > On Fri, 2021-06-18 at 01:44 +0200, Michal Swiatkowski wrote:
> > > From: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > > 
> > > Switchdev environment has to be set up when user create VFs
> > > and eswitch mode is switchdev. Release is done when user
> > > delete all VFs.
> > > 
> > > Data path in this implementation is based on control plane VSI.
> > > This VSI is used to pass traffic from port representors to
> > > coresponfing VFs and vice versa. Default TX rule has to be
> > > added to forward packet to control plane VSI. This will redirect
> > > packets from VFs which don't match other rules to control plane
> > > VSI.
> > > 
> > > On RX site default rule is added on uplink VSI to receive all
> > > traffic that doesn't match other rules. When setting switchdev
> > > environment all other rules from VFs should be removed. Packet to
> > > VFs will be forwarded by control plane VSI.
> > > 
> > > As VF without any mac rules can't send any packet because of
> > > antispoof mechanism, VSI antispoof should be turned off on each VFs.
> > > 
> > > To send packet from representor to correct VSI, destintion VSI
> > > field in TX descriptor will have to be filled. Allow that by
> > > setting destination override bit in control plane VSI security
> > > config.
> > > 
> > > Packet from VFs will be received on control plane VSI. Driver
> > > should decide to which netdev forward the packet. Decision is
> > > made based on src_vsi field from descriptor. There is a target
> > > netdev list in control plane VSI struct which choose netdev
> > > based on src_vsi number.
> > > 
> > > Co-developed-by: Michal Swiatkowski <
> > > michal.swiatkowski@linux.intel.com>
> > > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com
> > > >
> > > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > > ---
> > 
> > <snip>
> > 
> > > +/**
> > > + * ice_eswitch_vsi_setup - configure switchdev control VSI
> > > + * @pf: pointer to PF structure
> > > + * @pi: pointer to port_info structure
> > > + */
> > > +static struct ice_vsi *
> > > +ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
> > > +{
> > > +	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL,
> > > ICE_INVAL_VFID);
> > 
> > This doesn't build; the switchdev VSI doesn't get introduced until the
> > next patch. 
> > 
> 
> Sorry, I missed that, will fix it in next version.
> 

This patchset is already on your dev-queue branch, what should I do in
this case? You will reveret this, or I should send fixed version without
applying it on top of the dev-queue?

> > drivers/net/ethernet/intel/ice/ice_eswitch.c: In function
> > ice_eswitch_vsi_setup:
> > drivers/net/ethernet/intel/ice/ice_eswitch.c:263:31: error:
> > ICE_VSI_SWITCHDEV_CTRL undeclared (first use in this function)
> >   263 |  return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL,
> > ICE_INVAL_VFID);
> >       |                               ^~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/intel/ice/ice_eswitch.c:263:31: note: each
> > undeclared identifier is reported only once for each function it
> > appears in
> > drivers/net/ethernet/intel/ice/ice_eswitch.c:264:1: error: control
> > reaches end of non-void function [-Werror=return-type]
> >   264 | }
> > 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
