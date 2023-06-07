Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2787263D3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 17:12:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D8878210F;
	Wed,  7 Jun 2023 15:12:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D8878210F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686150735;
	bh=Hjm1AngnPSIUiwvmGkIgGJFJFBI86JLneO9MB7AGJvs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tt53MdpCJWfuXKwZmyH4WQfNFbaj74f0QGl87qztn7Lk6xj6VJdtUDleK9I3z46jc
	 3LqQx3JUBJjhV8iPmnBUiqhUJ821IgmS5P++4KorqfJUXVqqAwnTXmS+8bZqoOI5mm
	 ux0ASzgbb21XguK0F4Vjon+8J7MjVtuXnDyIHEVPbYpJqgH6Rue0aKXs98Nl/kaPB4
	 LV6O178YyMKKVSJrD2T/zo0fNCn/GC/Z/KH15Ea5JjGnntkr1YgOooc9IgYRevW2PP
	 ZeU+Ns9ueaw+oM1ydWZ/DJnONdNtCkY6joox86n+/TjLmCEignzBkoU44C6sLLRqUZ
	 2Z5x/HN5k263Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ABozmWktSdtk; Wed,  7 Jun 2023 15:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3164281947;
	Wed,  7 Jun 2023 15:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3164281947
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFD061BF31F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 07:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 976E1403BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 07:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 976E1403BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-wXuRItBgCv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 07:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F6B540332
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F6B540332
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 07:22:38 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="228825845"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Jun 2023 00:22:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 7 Jun 2023 00:22:36 -0700
Received: from DEN-LT-70577 (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 7 Jun 2023 00:22:35 -0700
Date: Wed, 7 Jun 2023 07:22:34 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: "Ertman, David M" <david.m.ertman@intel.com>
Message-ID: <20230607072234.5svu7wo3z5p76kpr@DEN-LT-70577>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-5-david.m.ertman@intel.com>
 <20230606095648.xy5d7mdzqyhqwqdg@DEN-LT-70577>
 <MW5PR11MB5811B2361A466FAA3094C4D1DD52A@MW5PR11MB5811.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW5PR11MB5811B2361A466FAA3094C4D1DD52A@MW5PR11MB5811.namprd11.prod.outlook.com>
X-Mailman-Approved-At: Wed, 07 Jun 2023 15:12:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1686122558; x=1717658558;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4S3CoNm+dv9nHHXRJFlqfzFDDu50Pd8nQJe4Gf0uvHw=;
 b=PkmK2qu4j81nUZmdFl7FajbVO82hAIhCq+Z317bbjC9W/fbF4Mdsrpv9
 n1tNWzNMVTAT0QwRULL+4GWrSYrsGqIrUlf3ack2mb9irAq7kCIj/nQek
 aSOLOTeCmhENh2ISI89flwlhrga2DLiKQ974e5z/PxirEYUcRcn+cDDFq
 8TOUsMHfmCkCDpWE5JNXz1WmcvydbCIjiWz3o637gi3iLFdJHOLJWG0/e
 Jh+LrlxxQiyrkTJyATtAMWVCbtz5kBipctB2iSavEcFwTNnGSKF31Oh+v
 MmnynHQcWHHMExh5x7Y3WXBk2hUtxUX0y/m1hGHx0dGJh7j/0+kEuxGKq
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=PkmK2qu4
Subject: Re: [Intel-wired-lan] [PATCH net v2 04/10] ice: implement lag
 netdev event handler
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > > The event handler for LAG will create a work item to place on the ordered
> > > workqueue to be processed.
> > >
> > > Add in defines for training packets and new recipes to be used by the
> > > switching block of the HW for LAG packet steering.
> > >
> > > Update the ice_lag struct to reflect the new processing methodology.
> > >
> > > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_lag.c      | 125 ++++++++++++++++--
> > >  drivers/net/ethernet/intel/ice/ice_lag.h      |  31 ++++-
> > >  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +
> > >  3 files changed, 144 insertions(+), 14 deletions(-)
> 
> 
> > > +       lag_work = kzalloc(sizeof(*lag_work), GFP_KERNEL);
> > > +       if (!lag_work)
> > > +               return -ENOMEM;
> > > +
> > > +       lag_work->event_netdev = netdev;
> > > +       lag_work->lag = lag;
> > > +       lag_work->event = event;
> > > +       if (event == NETDEV_CHANGEUPPER) {
> > > +               struct netdev_notifier_changeupper_info *info;
> > > +
> > > +               info = ptr;
> > > +               upper_netdev = info->upper_dev;
> > > +       } else {
> > > +               upper_netdev = netdev_master_upper_dev_get(netdev);
> > > +       }
> > > +
> > > +       INIT_LIST_HEAD(&lag_work->netdev_list.node);
> > > +       if (upper_netdev) {
> > > +               struct ice_lag_netdev_list *nd_list;
> > > +               struct net_device *tmp_nd;
> > > +
> > > +               rcu_read_lock();
> > > +               for_each_netdev_in_bond_rcu(upper_netdev, tmp_nd) {
> > > +                       nd_list = kzalloc(sizeof(*nd_list), GFP_KERNEL);
> > > +                       if (!nd_list)
> > > +                               break;
> >
> > Further up, -ENOMEM is returned in case kzalloc fails. Here the error is
> > silently ignored - is this correct? :)
> 
> The lag_work above is the container struct that needs to be present for any work
> to be done for the event.  But, as the list of elements of the bond gets built, if a single element is
> not present, it is still possible for the event to be evaluated.  There could be the issue of
> complete functionality if the wrong element is missing, but that will be handled in the processing
> of the specific event.

Ah I see. Thank you for explaining.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
