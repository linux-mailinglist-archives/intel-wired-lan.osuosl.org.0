Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDAF26AA05
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 18:41:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 956F28699C;
	Tue, 15 Sep 2020 16:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uG6YmepAW9cR; Tue, 15 Sep 2020 16:41:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81E0F86979;
	Tue, 15 Sep 2020 16:41:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F39CE1BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 16:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEEAF86F3F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 16:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iWA6JtwSE2+F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 16:41:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFC5386408
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 16:41:38 +0000 (UTC)
IronPort-SDR: lP2VVBmp6IG34z2N17DRLnVQMfywagj379Rl8yikymnfuLEsGDHfhm5PYWc75WhfiP7mp/bw8t
 5Uv6INLZbslw==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="159352646"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="159352646"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 09:41:37 -0700
IronPort-SDR: X1Z8bwqnLS38s1hSAEgytpQLbi6j4B/9YrhjrX4W475Rl5ZLgkvoZXnWAYIpVQfTQCszaMK3rj
 J8RyfodN2jpQ==
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="338733991"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.212.118.172])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 09:41:36 -0700
Date: Tue, 15 Sep 2020 09:41:35 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Saeed Mahameed <saeed@kernel.org>
Message-ID: <20200915094135.00005d21@intel.com>
In-Reply-To: <e15b85af416c7257aaa601901b18c7c9bc9586e0.camel@kernel.org>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <20200915014455.1232507-7-jesse.brandeburg@intel.com>
 <e15b85af416c7257aaa601901b18c7c9bc9586e0.camel@kernel.org>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/10]
 drivers/net/ethernet: handle one warning explicitly
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
Cc: linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Saeed Mahameed wrote:

> On Mon, 2020-09-14 at 18:44 -0700, Jesse Brandeburg wrote:
> > While fixing the W=1 builds, this warning came up because the
> > developers used a very tricky way to get structures initialized
> > to a non-zero value, but this causes GCC to warn about an
> > override. In this case the override was intentional, so just
> > disable the warning for this code with a macro that results
> > in disabling the warning for compiles on GCC versions after 8.
> > 
> > NOTE: the __diag_ignore macro currently only accepts a second
> > argument of 8 (version 80000)
> > 
> > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > ---
> >  drivers/net/ethernet/renesas/sh_eth.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/renesas/sh_eth.c
> > b/drivers/net/ethernet/renesas/sh_eth.c
> > index 586642c33d2b..c63304632935 100644
> > --- a/drivers/net/ethernet/renesas/sh_eth.c
> > +++ b/drivers/net/ethernet/renesas/sh_eth.c
> > @@ -45,6 +45,15 @@
> >  #define SH_ETH_OFFSET_DEFAULTS			\
> >  	[0 ... SH_ETH_MAX_REGISTER_OFFSET - 1] = SH_ETH_OFFSET_INVALID
> >  
> > +/* use some intentionally tricky logic here to initialize the whole
> > struct to
> > + * 0xffff, but then override certain fields, requiring us to
> > indicate that we
> > + * "know" that there are overrides in this structure, and we'll need
> > to disable
> > + * that warning from W=1 builds. GCC has supported this option since
> > 4.2.X, but
> > + * the macros available to do this only define GCC 8.
> > + */
> > +__diag_push();
> > +__diag_ignore(GCC, 8, "-Woverride-init",
> > +	      "logic to initialize all and then override some is OK");
> >  static const u16 sh_eth_offset_gigabit[SH_ETH_MAX_REGISTER_OFFSET] =
> > {
> >  	SH_ETH_OFFSET_DEFAULTS,
> >  
> > @@ -332,6 +341,7 @@ static const u16
> > sh_eth_offset_fast_sh3_sh2[SH_ETH_MAX_REGISTER_OFFSET] = {
> >  
> >  	[TSU_ADRH0]	= 0x0100,
> >  };
> > +__diag_pop();
> >  
> 
> I don't have any strong feeling against disabling compiler warnings,
> but maybe the right thing to do here is to initialize the gaps to the
> invalid value instead of pre-initializing the whole thing first and
> then setting up the valid values on the 2nd pass.
> 
> I don't think there are too many gaps to fill, it is doable, so maybe
> add this as a comment to this driver maintainer so they could pickup
> the work from here.


added linux-renesas-soc list. @list, any comments on Saeed's comment
above?

Thanks,
 Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
