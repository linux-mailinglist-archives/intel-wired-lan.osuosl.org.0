Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A673AFBED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 06:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B824D40255;
	Tue, 22 Jun 2021 04:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVP3JiXGNsAy; Tue, 22 Jun 2021 04:28:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5C1A40153;
	Tue, 22 Jun 2021 04:28:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FC9A1BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 04:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E5446058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 04:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RyiAHmwNkHC8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 04:28:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B451600CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 04:28:20 +0000 (UTC)
IronPort-SDR: NWSbdb7sZrWRRc67tEFyDJ+cUqwhEtKB6DuxvZz/pc+asoZ0v5EOLWh9BzqFVH9zZSELdCRpk5
 6do8Hqor0oqA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="228534347"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="228534347"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 21:28:17 -0700
IronPort-SDR: G2uFL5LZ7LLe8ViJViEJ8SVMoMVwyNi3mwIi1G4q69YubSukJmqo/aogvUxk56OfA+VBIWvgBZ
 TErwlzZRbqCg==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="454122750"
Received: from unknown (HELO localhost.localdomain) ([10.102.102.63])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 21:28:16 -0700
Date: Mon, 21 Jun 2021 20:35:35 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <YNEwV42hOSAhtbiX@localhost.localdomain>
References: <20210617234413.104069-1-michal.swiatkowski@linux.intel.com>
 <20210617234413.104069-8-michal.swiatkowski@linux.intel.com>
 <a6a0b9064847e6106cca2ae4a9669b84f4322926.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6a0b9064847e6106cca2ae4a9669b84f4322926.camel@intel.com>
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
Cc: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 21, 2021 at 06:21:15PM +0000, Nguyen, Anthony L wrote:
> On Fri, 2021-06-18 at 01:44 +0200, Michal Swiatkowski wrote:
> > From: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > 
> > Switchdev environment has to be set up when user create VFs
> > and eswitch mode is switchdev. Release is done when user
> > delete all VFs.
> > 
> > Data path in this implementation is based on control plane VSI.
> > This VSI is used to pass traffic from port representors to
> > coresponfing VFs and vice versa. Default TX rule has to be
> > added to forward packet to control plane VSI. This will redirect
> > packets from VFs which don't match other rules to control plane
> > VSI.
> > 
> > On RX site default rule is added on uplink VSI to receive all
> > traffic that doesn't match other rules. When setting switchdev
> > environment all other rules from VFs should be removed. Packet to
> > VFs will be forwarded by control plane VSI.
> > 
> > As VF without any mac rules can't send any packet because of
> > antispoof mechanism, VSI antispoof should be turned off on each VFs.
> > 
> > To send packet from representor to correct VSI, destintion VSI
> > field in TX descriptor will have to be filled. Allow that by
> > setting destination override bit in control plane VSI security
> > config.
> > 
> > Packet from VFs will be received on control plane VSI. Driver
> > should decide to which netdev forward the packet. Decision is
> > made based on src_vsi field from descriptor. There is a target
> > netdev list in control plane VSI struct which choose netdev
> > based on src_vsi number.
> > 
> > Co-developed-by: Michal Swiatkowski <
> > michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com
> > >
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > ---
> 
> <snip>
> 
> > +/**
> > + * ice_eswitch_vsi_setup - configure switchdev control VSI
> > + * @pf: pointer to PF structure
> > + * @pi: pointer to port_info structure
> > + */
> > +static struct ice_vsi *
> > +ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
> > +{
> > +	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL,
> > ICE_INVAL_VFID);
> 
> This doesn't build; the switchdev VSI doesn't get introduced until the
> next patch. 
> 

Sorry, I missed that, will fix it in next version.

> drivers/net/ethernet/intel/ice/ice_eswitch.c: In function
> ice_eswitch_vsi_setup:
> drivers/net/ethernet/intel/ice/ice_eswitch.c:263:31: error:
> ICE_VSI_SWITCHDEV_CTRL undeclared (first use in this function)
>   263 |  return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL,
> ICE_INVAL_VFID);
>       |                               ^~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_eswitch.c:263:31: note: each
> undeclared identifier is reported only once for each function it
> appears in
> drivers/net/ethernet/intel/ice/ice_eswitch.c:264:1: error: control
> reaches end of non-void function [-Werror=return-type]
>   264 | }
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
