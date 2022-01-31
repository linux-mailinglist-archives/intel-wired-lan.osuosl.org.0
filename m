Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 114F14A4797
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 13:54:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC752410DB;
	Mon, 31 Jan 2022 12:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCKmHocfh9Jv; Mon, 31 Jan 2022 12:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81DE7410E3;
	Mon, 31 Jan 2022 12:54:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59C771BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 12:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 468E0404E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 12:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hEnfj0fp8pKk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 12:54:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24EE8403AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 12:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643633674; x=1675169674;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LYq+R6puBiP7cCArkzGv+IBkDy2JJj4EJwpPFwlVEAc=;
 b=j3Adq5PLksIYnM0wxgSNg2NRr+ifD2SzJqj7/E+fo6eLbBxXVuvdJSqU
 ojWy5URlARsYhCgpl+uj6THLCAZoXIqHzs3dAds1guOpZ8TT1LN8wkFuv
 DBZrkuwXHBXlrEpR9ZSgNVtNl/sA69ez2FY0oCf+YvBhUq57AeyU4AQ0S
 3VQzReXYHUCGo90QY5pCYs2CJy85Y4eMT7qjVi59m82MOg59yvAUvRjNN
 siHiXG2SqakeyNVJLNIxAJSrpy5Tv5l0MeACogc+XnNLLBRZy9JKPGYx2
 h8fd2CfXTALGr96SYvboOQwe7RbAZJ7fTEWT+H06I92E8sSPqrMs/mbSV w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="310763076"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="310763076"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 04:54:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="697994665"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga005.jf.intel.com with ESMTP; 31 Jan 2022 04:54:31 -0800
Date: Mon, 31 Jan 2022 13:54:31 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Maurice Baijens (Ellips B.V.)" <maurice.baijens@ellips.com>
Message-ID: <YffcB2YZ1h5SRyEP@boxer>
References: <VI1PR02MB4142A638EC38107B262DB32F885A9@VI1PR02MB4142.eurprd02.prod.outlook.com>
 <YfQMQWsFqCIPBBqO@boxer>
 <VI1PR02MB41424341E3E7BA3166E043BD88229@VI1PR02MB4142.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR02MB41424341E3E7BA3166E043BD88229@VI1PR02MB4142.eurprd02.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [External] ixgbe driver link down causes 100%
 load in ksoftirqd/x
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

On Fri, Jan 28, 2022 at 03:53:25PM +0000, Maurice Baijens (Ellips B.V.) wrote:
> Hello,
> 
> 
> > -----Original Message-----
> > From: Maciej Fijalkowski <maciej.fijalkowski@intel.com> 
> > Sent: Friday, January 28, 2022 4:31 PM
> > To: Maurice Baijens (Ellips B.V.) <maurice.baijens@ellips.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > Subject: Re: [External] ixgbe driver link down causes 100% load in ksoftirqd/x
> >
> > On Thu, Jan 20, 2022 at 09:23:06AM +0000, Maurice Baijens (Ellips B.V.) wrote:
> > > Hello,
> > > 
> > > 
> > > I have an issue with the ixgbe driver and X550Tx network adapter.
> > > When I disconnect the network cable I end up with 100% load in ksoftirqd/x. I am running the adapter in
> > > xdp mode (XDP_FLAGS_DRV_MODE). Problem seen in linux kernel 5.15.x and also 5.16.0+ (head).
> >
> > Hello,
> >
> > a stupid question - why do you disconnect the cable when running traffic? :)
> 
> The answer is even more stupid. Due to supply problems we sometimes have to use
> dual adapters instead of single once, and if one by accident enables the wrong port,
> the bug is triggered.
> 
> > If you plug this back in then what happens?
> 
> Then everything works normal again.
> 
> >
> > > 
> > > I traced the problem down to function ixgbe_xmit_zc in ixgbe_xsk.c:
> > > 
> > > if (unlikely(!ixgbe_desc_unused(xdp_ring)) ||
> > >     !netif_carrier_ok(xdp_ring->netdev)) {
> > >             work_done = false;
> > >             break;
> > > }
> >
> > This was done in commit c685c69fba71 ("ixgbe: don't do any AF_XDP
> > zero-copy transmit if netif is not OK") - it was addressing the transient
> > state when configuring the xsk pool on particular queue pair.
> >
> > > 
> > > This function is called from ixgbe_poll() function via ixgbe_clean_xdp_tx_irq(). It sets
> > > work_done to false if netif_carrier_ok() returns false (so if link is down). Because work_done
> > > is always false, ixgbe_poll keeps on polling forever.
> > > 
> > > I made a fix by checking link in ixgbe_poll() function and if no link exiting polling mode:
> > > 
> > > /* If all work not completed, return budget and keep polling */
> > > if ((!clean_complete) && netif_carrier_ok(adapter->netdev))
> > >             return budget;
> >
> > Not sure about the correctness of this. Question is how should we act for
> > link down - should we say that we are done with processing or should we
> > wait until the link gets back?
> >
> > Instead of setting the work_done to false immediately for
> >!netif_carrier_ok(), I'd rather break out the checks that are currently
> > combined into the single statement, something like this:
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index b3fd8e5cd85b..6a5e9cf6b5da 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -390,12 +390,14 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
> >  	u32 cmd_type;
> >  
> >  	while (budget-- > 0) {
> > -		if (unlikely(!ixgbe_desc_unused(xdp_ring)) ||
> > -		    !netif_carrier_ok(xdp_ring->netdev)) {
> > +		if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
> >  			work_done = false;
> >  			break;
> >  		}
> >  
> > +		if (!netif_carrier_ok(xdp_ring->netdev))
> > +			break;
> > +
> >  		if (!xsk_tx_peek_desc(pool, &desc))
> >  			break;
> >
> >
> > > 
> > > This is probably fine for our application as we only run in xdpdrv mode, however I am not sure this
> >
> > By xdpdrv I would understand that you're running XDP in standard native
> > mode, however you refer to the AF_XDP Zero Copy implementation in the
> > driver. But I don't think it changes anything in this thread.
> >
> > In the end I see some outstanding issues with ixgbe_xmit_zc(), so this
> > probably might need some attention.
> >
> > Thanks!
> > Maciej
> 
> Your suggestion for a fix sounds ok. (I have not tested it). Is someone going to fix it in the next version of the kernel,
> so we don't have to apply a patch here forever? Or how should we proceed to get it fixed in the kernel?

Could you test it then? If it's fine then I'll send it as a fix. I just
don't currently have ixgbe HW around me.

> 
> Thank you,
> Maurice
> 
> 
> >
> > > is the correct way to fix this issue and the behaviour of the normal skb mode operation is 
> > > also affected by my fix.
> > > 
> > > So hopefully my observations are correct and someone here can fix the issue and push it upstream.
> > > 
> > > 
> > > Best regards,
> > > 	Maurice Baijens
> 
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
