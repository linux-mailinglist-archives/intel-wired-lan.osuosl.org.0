Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D367402B27
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Sep 2021 16:55:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 908EC401AD;
	Tue,  7 Sep 2021 14:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W-Bqd4ryggNC; Tue,  7 Sep 2021 14:55:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CF6A400EA;
	Tue,  7 Sep 2021 14:55:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0A1D1BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 14:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AEDD9606A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 14:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AGh4TCCjEt7q for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Sep 2021 14:55:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17F18605E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 14:55:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6146A610E8;
 Tue,  7 Sep 2021 14:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631026510;
 bh=RCYkeyyqbqTTjbvphltqlgBXQPQG1FW+Qa89rOY4t2A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UIKHMle1MWd41fTpi7pLHwgNurm1OCMRxb5+S0WO1zbiIoffp22k3j7TINOuuQ7f3
 UO0Q4G3nOrsR5zgK9LOyHWmxjAxUJuUD1bfPykKYs/iO4gUFfALIORoY/AIAImuOWW
 L/CEiOmob2DovmMurlX+oAs1xMLUqScNfK6Os6UcTIxa5N2r+LT21iSWelwEI2NtAT
 cTGQ4XsHAT13jUVOXMhJXAENLAtICQBgVw90flpQHDea75GgpoHS1peDltPs8aNafu
 3iL4Fjspd5ekugGWQWJ0Ov84G7Pbhyoldxt2uj0fMmZ2JjJMMCgyqqo1EKWga4c6M2
 sjgziB8xJbRuw==
Date: Tue, 7 Sep 2021 07:55:09 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
 <20210903151425.0bea0ce7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951623918C9BA8769C10E50EAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906113925.1ce63ac7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Saeed Mahameed <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 7 Sep 2021 08:50:55 +0000 Machnikowski, Maciej wrote:
> > > The frequency source can be either pre-set statically, negotiated using
> > > ESMC QL-levels (if working in QL-Enabled mode), or follow automatic
> > > fallback inside the device. This  flag gives feedback about the validity
> > > of recovered clock coming from a given port and is useful when you
> > > enable multiple recovered clocks on more than one port in
> > > active-passive model. In that case the "driving" port may change
> > > dynamically, so it's a good idea to have some interface to reflect that.  
> > 
> > The ESMC messages are handled by Linux or some form of firmware?
> > I don't see how you can implement any selection policy with a read-only
> > API.  
> 
> It can be either in FW or in Linux - depending on the deployment.
> We try to define the API that would enable Linux to manage that.

We should implement the API for Linux to manage things from the get go.

> EEC state will be read-only, but the recovered clock management part
> will allow changes for QL-disabled SyncE deployments that only need
> to see if the clock they receive on a given port is valid or not.
> 
> > In general it would be more natural to place a "source id" at the
> > DPLL/clock, the "source" flag seems to mark the wrong end of the
> > relationship. If there ever are multiple consumers we won't be able
> > to tell which "target" the "source" is referring to. Hard to judge
> > how much of a problem that could be by looking at a small slice of
> > the system.  
> 
> The DPLL will operate on pins, so it will have a pin connected from the
> MAC/PHY that will have the recovered clock, but the recovered clock
> can be enabled from any port/lane. That information is kept in the 
> MAC/PHY and the DPLL side will not be aware who it belongs to.

So the clock outputs are muxed to a single pin at the Ethernet IP
level, in your design. I wonder if this is the common implementation
and therefore if it's safe to bake that into the API. Input from other
vendors would be great...

Also do I understand correctly that the output of the Ethernet IP 
is just the raw Rx clock once receiver is locked and the DPLL which 
enum if_synce_state refers to is in the time IP, that DPLL could be
driven by GNSS etc?

> We can come up with a better name,  but think of it like:
> You have multiport device (switch/NIC). One port is recovering
> the clock, the PHY/MAC outputs that clock through the pin
> to the EEC (DPLL). The DPLL knows if it locked to the signal coming
> from the multiport PHY/MAC, but it doesn't know which port is the one
> that generates that clock signal. All other ports can also present the
> "locked" state, but they are following the clock that was received
> in the chosen port. If we drop this flag we won't be able to easily tell
> which port/lane drives the recovered clock.
> In short: the port with that flag on is following the network clock
> and leading clock of other ports of the multiport device.
> 
> In the most basic SyncE deployment you can put the passive DPLL that
> will only give you the lock/holdover/unlocked info and just use this flag 
> to know who currently drives the DPLL.
> 
> > > That's where sysfs file be useful. When I add the implementation for
> > > recovered clock configuration, the sysfs may be used as standalone
> > > interface for configuring them when no dynamic change is needed.  
> > 
> > I didn't get that. Do you mean using a sysfs file to configure
> > the parameters of the DPLL?  
> 
> Only the PHY/MAC side of thing which is recovered clock configuration
> and the ECC state.
>  
> > If the DPLL has its own set of concerns we should go ahead and create
> > explicit object / configuration channel for it.
> > 
> > Somehow I got it into my head that you care mostly about transmitting
> > the clock, IOW recovering it from one port and using on another but
> > that's probably not even a strong use case for you or NICs in general :S  
> 
> This is the right thinking. The DPLL can also have different external sources,
> like the GNSS, and can also drive different output clocks. But for the most
> basic SyncE implementation, which only runs on a recovered clock, we won't
> need the DPLL subsystem.

The GNSS pulse would come in over an external pin, tho, right? Your
earlier version of the patchset had GNSS as an enum value, how would
the driver / FW know that a given pin means GNSS?

> > > Could you suggest where to add that? Grepping for ndo_ don't give much.
> > > I can add a new synce.rst file if it makes sense.  
> > 
> > New networking/synce.rst file makes perfect sense to me. And perhaps
> > link to it from driver-api/ptp.rst.  
> 
> OK will try to come up with something there
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
