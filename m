Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9242A2517BA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 13:36:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40CDC88093;
	Tue, 25 Aug 2020 11:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H+SEhGByuk4O; Tue, 25 Aug 2020 11:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BEA787F5F;
	Tue, 25 Aug 2020 11:36:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D6AE1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 067C98691A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfdbFx14JcNE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 11:36:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89F9F86918
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:01 +0000 (UTC)
IronPort-SDR: N+kg0SawKbVCsNW6MWkxqKdKpXPFAh9A0tLCegy75BSmpJwANM66hZ1tUS7AQCNZRk4lhveJTc
 Ulp4U7XMoRqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="143863632"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="143863632"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 04:36:00 -0700
IronPort-SDR: JcfeAB+IY6BHvoLpUvmza9UT4NsM7eb3BOD25a9XPyxXKQuPbW+Ai8PkjSp0tidLhmWxCIgUGd
 FfnecQjUfEPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="294966479"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga003.jf.intel.com with ESMTP; 25 Aug 2020 04:35:58 -0700
Date: Tue, 25 Aug 2020 13:29:53 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>
Message-ID: <20200825112953.GB38865@ranger.igk.intel.com>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
 <20200825091629.12949-2-bjorn.topel@gmail.com>
 <20200825111336.GA38865@ranger.igk.intel.com>
 <256ab09e-1cea-c8ab-9589-b0c5809bdea7@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <256ab09e-1cea-c8ab-9589-b0c5809bdea7@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net 1/3] i40e: avoid premature Rx
 buffer reuse
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
Cc: maciej.machnikowski@intel.com, lirongqing@baidu.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 25, 2020 at 01:25:16PM +0200, Bj=F6rn T=F6pel wrote:
> On 2020-08-25 13:13, Maciej Fijalkowski wrote:
> > On Tue, Aug 25, 2020 at 11:16:27AM +0200, Bj=F6rn T=F6pel wrote:
> [...]
> > >   	struct i40e_rx_buffer *rx_buffer;
> > >   	rx_buffer =3D i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
> > > +	*rx_buffer_pgcnt =3D i40e_rx_buffer_page_count(rx_buffer);
> > =

> > What i previously meant was:
> > =

> > #if (PAGE_SIZE < 8192)
> > 	*rx_buffer_pgcnt =3D page_count(rx_buffer->page);
> > #endif
> > =

> > and see below
> > =

> =

> Right...
> =

> > >   	prefetchw(rx_buffer->page);
> > >   	/* we are reusing so sync this buffer for CPU use */
> > > @@ -2112,9 +2124,10 @@ static struct sk_buff *i40e_build_skb(struct i=
40e_ring *rx_ring,
> > >    * either recycle the buffer or unmap it and free the associated re=
sources.
> > >    */
> > >   static void i40e_put_rx_buffer(struct i40e_ring *rx_ring,
> > > -			       struct i40e_rx_buffer *rx_buffer)
> > > +			       struct i40e_rx_buffer *rx_buffer,
> > > +			       int rx_buffer_pgcnt)
> > >   {
> > > -	if (i40e_can_reuse_rx_page(rx_buffer)) {
> > > +	if (i40e_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
> > >   		/* hand second half of page back to the ring */
> > >   		i40e_reuse_rx_page(rx_ring, rx_buffer);
> > >   	} else {
> > > @@ -2319,6 +2332,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *=
rx_ring, int budget)
> > >   	unsigned int xdp_xmit =3D 0;
> > >   	bool failure =3D false;
> > >   	struct xdp_buff xdp;
> > > +	int rx_buffer_pgcnt;
> > =

> > you could move scope this variable only for the
> > =

> > while (likely(total_rx_packets < (unsigned int)budget))
> > =

> > loop and init this to 0. then you could drop the helper function you've
> > added. and BTW the page_count is not being used for big pages but i agr=
ee
> > that it's better to have it set to 0.
> > =

> =

> ...but isn't it a bit nasty with an output parameter that relies on the t=
hat
> the input was set to zero. I guess it's a matter of taste, but I find that
> more error prone.
> =

> Let me know if you have strong feelings about this, and I'll respin (but I
> rather not!).

Up to you. No strong feelings, i just think that i40e_rx_buffer_page_count
is not needed. But if you want to keep it, then i was usually asking
people to provide the doxygen descriptions for newly introduced
functions... :P

but scoping it still makes sense to me, static analysis tools would agree
with me I guess.

> =

> =

> Bj=F6rn
> =

> =

> > >   #if (PAGE_SIZE < 8192)
> > >   	xdp.frame_sz =3D i40e_rx_frame_truesize(rx_ring, 0);
> > > @@ -2370,7 +2384,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *=
rx_ring, int budget)
> > >   			break;
> > >   		i40e_trace(clean_rx_irq, rx_ring, rx_desc, skb);
> > > -		rx_buffer =3D i40e_get_rx_buffer(rx_ring, size);
> > > +		rx_buffer =3D i40e_get_rx_buffer(rx_ring, size, &rx_buffer_pgcnt);
> > >   		/* retrieve a buffer from the ring */
> > >   		if (!skb) {
> > > @@ -2413,7 +2427,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *=
rx_ring, int budget)
> > >   			break;
> > >   		}
> > > -		i40e_put_rx_buffer(rx_ring, rx_buffer);
> > > +		i40e_put_rx_buffer(rx_ring, rx_buffer, rx_buffer_pgcnt);
> > >   		cleaned_count++;
> > >   		if (i40e_is_non_eop(rx_ring, rx_desc, skb))
> > > -- =

> > > 2.25.1
> > > =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
