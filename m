Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AB54021BC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Sep 2021 03:01:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BDE0827FD;
	Tue,  7 Sep 2021 01:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WySUeU7HcPyE; Tue,  7 Sep 2021 01:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30A59823A7;
	Tue,  7 Sep 2021 01:01:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 637011BF32B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 01:01:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58E04606E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 01:01:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FiE8X78PP6Wm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Sep 2021 01:01:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B664460692
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Sep 2021 01:01:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 04E456054F;
 Tue,  7 Sep 2021 01:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630976485;
 bh=zNnXuU6f/iMX8dxmKzv/o3lnqUVV9kUDRkHkEIlEWds=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZiYGLRU06rHu151FzCb7cJwrKG6OumKNA3jDEs4Yd6E5VhlkDXZEOYmfxVMqGAQMQ
 bo6MRnZ/pAdTX11s0YOYFiaaoBiwo9yiNIXGJVDtV0yL1sPgd9GKMsvvI+PcRciOrd
 Wo30efbek2FvUmzzSS0ggi3IuP2AlB3Q89BX7JW6+r06FwZD1Xev4QDSgFvBd9UmQ/
 3DMuofrPY1peEV+fX7hRh4pOWz1jsIbW9+Gvj+ygqM6aP7BVcJeMRvnBc8OOuAMi3u
 nAE3EjW58EXxNyV3lWwPkOuwYju8elSZY3uJIATwwv87MddQLEr9VVoBVix1ts2C8n
 ulUd2ddVHB6yg==
Date: Mon, 6 Sep 2021 18:01:24 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
 <20210903151425.0bea0ce7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951623918C9BA8769C10E50EAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906113925.1ce63ac7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
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
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 6 Sep 2021 19:01:54 +0000 Machnikowski, Maciej wrote:
> > > Hmm. Main reason for netlink is that linuxptp already supports it,
> > > and it was suggested by Richard.
> > > Having an NDO would also make it easier to add a SyncE-related
> > > files to the sysfs for easier operation (following the ideas from the ptp
> > > pins subsystem).
> > > But I'm open for suggestions.  
> > 
> > I think linuxptp will need support for ethtool netlink sockets sooner
> > rather than later. Moving this to ethtool makes sense to me since it's
> > very much a Ethernet-oriented API at this point.  
> 
> Ethtool also makes a lot of sense, but will it be possible to still make sysfs,
> and it makes sense to add it for some deployments (more on that below)

It should not make much difference whether ndo or ethtool op is used.

> > > This bit has a different meaning. If it's set the port in question
> > > is a frequency source for the multiport device, if it's cleared - some other
> > > source is used as a source. This is needed to prevent setting invalid
> > > configurations in the PHY (like setting the frequency source as a Master
> > > in AN) or sending invalid messages. If the port is a frequency source
> > > it must always send back QL-DNU messages to prevent synchronization
> > > loops.  
> > 
> > Ah! I see. Is being the "source" negotiated somehow? Don't we need to
> > give the user / linuxptp to select the source based on whatever info
> > it has about topology?  
> 
> The frequency source can be either pre-set statically, negotiated using
> ESMC QL-levels (if working in QL-Enabled mode), or follow automatic
> fallback inside the device. This  flag gives feedback about the validity
> of recovered clock coming from a given port and is useful when you
> enable multiple recovered clocks on more than one port in
> active-passive model. In that case the "driving" port may change 
> dynamically, so it's a good idea to have some interface to reflect that.

The ESMC messages are handled by Linux or some form of firmware?
I don't see how you can implement any selection policy with a read-only
API.

In general it would be more natural to place a "source id" at the
DPLL/clock, the "source" flag seems to mark the wrong end of the
relationship. If there ever are multiple consumers we won't be able 
to tell which "target" the "source" is referring to. Hard to judge 
how much of a problem that could be by looking at a small slice of 
the system.

> That's where sysfs file be useful. When I add the implementation for
> recovered clock configuration, the sysfs may be used as standalone 
> interface for configuring them when no dynamic change is needed.

I didn't get that. Do you mean using a sysfs file to configure 
the parameters of the DPLL? 

If the DPLL has its own set of concerns we should go ahead and create
explicit object / configuration channel for it.

Somehow I got it into my head that you care mostly about transmitting
the clock, IOW recovering it from one port and using on another but
that's probably not even a strong use case for you or NICs in general :S

> > > Addressed all other comments - and thanks for giving a lot of helpful
> > > suggestions!  
> > 
> > Thanks, BTW I think I forgot to ask for documentation, dumping info
> > about the API and context under Documentation/ would be great!  
> 
> Could you suggest where to add that? Grepping for ndo_ don't give much.
> I can add a new synce.rst file if it makes sense.

New networking/synce.rst file makes perfect sense to me. And perhaps
link to it from driver-api/ptp.rst.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
