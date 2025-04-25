Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DCDA9CDF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 18:22:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D96A181F6D;
	Fri, 25 Apr 2025 16:22:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bIT4CPNE9KvY; Fri, 25 Apr 2025 16:22:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3709181ED3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745598163;
	bh=FRITNs+QMLhCHY4PnRHZPlOYZLidyFTVYXnJt0n8Z5U=;
	h=Date:To:Cc:References:In-Reply-To:From:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NGkMPsO5meEhTn6trYvetRDFjuECaFPmZ4AmmiUGqK5Osvbnu90BQ2Pb2LfLBaI3w
	 Z+7DB8ovLudvdMrSgcOgKSEoigj+knudxBgus7FqEVpJnZ1dDuzE0BL7SJvQSGiwX9
	 GakaqXOvjShBmZUn/SzZaPpDFjC7L5oR6AADm9XJhaxPe1mRBNbYb1Qy3DDyqGHTYh
	 BwZwtf6Kkq8y6QCaSGAVVqTgo/Q8GDNmC3s2A2O5TrrWY5ReQTmrWJLL9RZgmc9IPN
	 FxjkQF/G1XPpRJJO47djyQBIW52rYv/SaZm1uqw04RwDXxzhIhzsJNAK8ECMPoYVlR
	 kU2cM4vLOn0UA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3709181ED3;
	Fri, 25 Apr 2025 16:22:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C4AD6C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B52EB607EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:22:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZkvZucvvEGzW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 16:22:41 +0000 (UTC)
X-Greylist: delayed 169784 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 25 Apr 2025 16:22:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E89B26079F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E89B26079F
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2620:101:f000:4901:c5c:0:caff:e12e;
 helo=caffeine.csclub.uwaterloo.ca; envelope-from=lsorense@csclub.uwaterloo.ca;
 receiver=<UNKNOWN> 
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [IPv6:2620:101:f000:4901:c5c:0:caff:e12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E89B26079F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:22:40 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 34A7C460021; Fri, 25 Apr 2025 12:22:38 -0400 (EDT)
Date: Fri, 25 Apr 2025 12:22:38 -0400
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Netdev <netdev@vger.kernel.org>
Message-ID: <aAu2zoNIuRk-nwWt@csclub.uwaterloo.ca>
References: <aAkflkxbvC8MB8PG@csclub.uwaterloo.ca>
 <8236bef5-d1e3-42ab-ba1f-b1d89f305d0a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8236bef5-d1e3-42ab-ba1f-b1d89f305d0a@intel.com>
From: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=csclub.uwaterloo.ca
Subject: Re: [Intel-wired-lan] Fix promiscous and multicast mode on iavf
 after reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 24, 2025 at 02:59:38PM -0700, Jacob Keller wrote:
> 
> 
> On 4/23/2025 10:12 AM, Lennart Sorensen wrote:
> > I discovered that anything that causes a reset in iavf makes breaks
> > promiscous mode and multicast.  This is because the host side ice
> > driver clears the VF from filters when it is reset.  iavf then correctly
> > calls iavf_configure, but since the current_netdev_promisc_flags already
> > match the netdev promisc settings, nothing is done, so the promisc and
> > multicast settings are not sent to the ice host driver after the reset.
> > As a result the iavf side shows promisc enabled but it isn't working.
> > Disabling and re-enabling promisc on the iavf side fixes it of course.
> > Simple test case to show this is to enable promisc, check that packets
> > are being seen, then change the mtu size (which does a reset) and check
> > packets received again, and promisc is no longer active.  Disabling
> > promisc and enabling it again restores receiving the packets.
> > 
> > The following seems to work for me, but I am not sure it is the correct
> > place to clear the saved flags.
> > 
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 6d7ba4d67a19..4018a08d63c1 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -3233,6 +3233,14 @@ static void iavf_reset_task(struct work_struct *work)
> >  		iavf_shutdown_adminq(hw);
> >  		iavf_init_adminq(hw);
> >  		iavf_request_reset(adapter);
> > +
> > +		/* Clear remembered promisc and multicast flags since
> > +		 * reset clears them on the host so they will get force
> > +		 * applied again through iavf_configure() down below.
> > +		 */
> > +		spin_lock_bh(&adapter->current_netdev_promisc_flags_lock);
> > +		adapter->current_netdev_promisc_flags &= ~(IFF_PROMISC | IFF_ALLMULTI);
> > +		spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
> >  	}
> >  	adapter->flags |= IAVF_FLAG_RESET_PENDING;
> >  
> > 
> 
> We probably need to do something similar in the flow where we get an
> unexpected reset (such as if PF resets us by changing trusted flag or
> other state).
> 
> I don't think there's a better solution. Arguably the PF shouldn't be
> losing data, but I think its a bit late to go that route at this point..
> Its pretty baked into the virtchnl API :(

Yeah I can see arguments that calling reset should put everything in a
known state so the VF driver can configure things as it wants, but since
reset is also used when tx hang happens or mtu changes and various other
things, it is definitely inconvinient.  Changing behaviour with an API
version change seems ugly too and you would still have to support the
old API anyhow.  I suppose having a reset fully to defaults and a soft
reset to change settings but keep other values could have been nice,
but a bit late now.  Some VF drivers may even be depending on the reset
putting everything to defaults.

If someone that knows the driver better can make a complete fix that
would be great.  So far this small change appears to be working but I
could certainly have missed some cases.  It took quite a bit of debugging
to discover why promiscous mode on the VF side was so unreliable and
unpredicable.  Due to the somewhat asynchrounous message handling,
sometimes the reset would not happen until after the promisc setting
had been applied, and then it was silently lost, while other times it
would do the reset quicker and then the promisc setting would work.
Very confusing to debug.

-- 
Len Sorensen
