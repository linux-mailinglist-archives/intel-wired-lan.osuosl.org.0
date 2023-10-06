Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2517BB907
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 15:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 577B160F5F;
	Fri,  6 Oct 2023 13:25:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 577B160F5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696598702;
	bh=b01di3pXdFWUwnqHYlTJMTGK6IwO+fZHJndMO04geQo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eeTDDbul+J7NIgmcczE2/fWxWJYuvoKUir/RvtXZGVt2fWsOyTA54romw+7wsJDeo
	 Gf3kJN/sojFp0ZXelylVS1DbtAOesf0drI/uhR3buQm5Aa/7gDN9gjayvQlJFjCmV0
	 eo0Sss7ljR5lAHCwfM0drhjMZh1X9KsTYVmD2YeI/8xdUnlOZt5z8nUIzXfK6Uzqlv
	 pD8Q3O/UGLj3pYDk1pKEJtWpIoIQkwLr5lpLrYHjdD5+/250xWX/3eqk2wmbE2omrN
	 FAwGlK9odd3r0f/cR94nZWeYHjPPHM9FvLu5i+dqnOuLVuKkWOc/8tb0VNwNIcRfST
	 mEJhk1RivWUcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jAFH846eQrPH; Fri,  6 Oct 2023 13:25:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8305260F2A;
	Fri,  6 Oct 2023 13:25:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8305260F2A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0C31BF377
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 13:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 331B640353
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 13:24:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 331B640353
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nWpLIPeR4_sD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 13:24:54 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B75B240347
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 13:24:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B75B240347
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BA567CE27FE;
 Fri,  6 Oct 2023 13:24:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9177C433C7;
 Fri,  6 Oct 2023 13:24:47 +0000 (UTC)
Date: Fri, 6 Oct 2023 15:24:45 +0200
From: Simon Horman <horms@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZSAKnfOY6Raoi9DV@kernel.org>
References: <3cee09b8-4c49-4a39-b889-75c0798dfe1c@moroto.mountain>
 <ZR/si/di5IbSB9Gq@kernel.org>
 <569ba96b-2bc3-45ea-b397-36e7ef88ed8f@kadam.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <569ba96b-2bc3-45ea-b397-36e7ef88ed8f@kadam.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696598690;
 bh=o3GGCVpXVd8CErOLPgr8dEp7DvAX/9TjHNxkbvAx2Ms=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rfJsOhJFE7q48tKMmozjOtul3zFQQYKVGQOOnDkF8R9JxpHRQZkAsuaNWF99Y7LA7
 53zP1cbXK8YasHZ+OF/wrBQHnLwhlpbZ902UGFSj7hHxmo3rxsTtXnmOLRC2qHPhPf
 nOtEKvHMaBZuQD2LQFY2k+6lsJw4RgomuaX9Cc0NQpRCjdoh5q3GrJ71v3wRx9g7Fn
 Sh8AdT20EXHezVdFMW7uLaG7dwxRG9vaz03w34iIinTd7vpVa2lwjzq10mbzGl0cFW
 a/F7Vk1NcoZhGjXYlHNgM1VdfOKhZCpbhejOVlxbj8Gmi0al7qknFGEsKrvg0IcG+W
 18d3/DW05u1gw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rfJsOhJF
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix crash with empty VF
 macvlan list
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Greg Rose <gregory.v.rose@intel.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 06, 2023 at 03:49:39PM +0300, Dan Carpenter wrote:
> On Fri, Oct 06, 2023 at 01:16:27PM +0200, Simon Horman wrote:
> > On Thu, Oct 05, 2023 at 04:57:02PM +0300, Dan Carpenter wrote:
> > > The adapter->vf_mvs.l list needs to be initialized even if the list is
> > > empty.  Otherwise it will lead to crashes.
> > > 
> > > Fixes: c6bda30a06d9 ("ixgbe: Reconfigure SR-IOV Init")
> > 
> > Hi Dan,
> > 
> > I see that the patch cited above added the line you are changing.
> > But it also seems to me that patch was moving it from elsewhere.
> > 
> > Perhaps I am mistaken, but I wonder if this is a better tag.
> > 
> > Fixes: a1cbb15c1397 ("ixgbe: Add macvlan support for VF")
> > 
> 
> Yeah.  You're right.  I'll resend.

Thanks!

> > > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > ---
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > > index a703ba975205..9cfdfa8a4355 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > > @@ -28,6 +28,9 @@ static inline void ixgbe_alloc_vf_macvlans(struct ixgbe_adapter *adapter,
> > >  	struct vf_macvlans *mv_list;
> > >  	int num_vf_macvlans, i;
> > >  
> > > +	/* Initialize list of VF macvlans */
> > > +	INIT_LIST_HEAD(&adapter->vf_mvs.l);
> > > +
> > >  	num_vf_macvlans = hw->mac.num_rar_entries -
> > >  			  (IXGBE_MAX_PF_MACVLANS + 1 + num_vfs);
> > >  	if (!num_vf_macvlans)
> > > @@ -36,8 +39,6 @@ static inline void ixgbe_alloc_vf_macvlans(struct ixgbe_adapter *adapter,
> > >  	mv_list = kcalloc(num_vf_macvlans, sizeof(struct vf_macvlans),
> > >  			  GFP_KERNEL);
> > >  	if (mv_list) {
> > 
> > I'm not sure it it is worth it, but perhaps more conventional error
> > handling could be used here:
> > 
> > 	if (!mv_list)
> > 		return;
> > 
> > 	for (i = 0; i < num_vf_macvlans; i++) {
> > 		...
> 
> I mean error handling is always cleaner than success handling but it's
> probably not worth cleaning up in old code.  I say it's not worth
> cleaning up old code and yet I secretly reversed two if statements like
> this yesterday.  :P
> https://lore.kernel.org/all/d9da4c97-0da9-499f-9a21-1f8e3f148dc1@moroto.mountain/
> It really is nicer, yes.  But it just makes the patch too noisy.

Yeah, I'm also worried about the noise in this case.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
