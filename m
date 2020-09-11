Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2677C267682
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 01:26:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB870875B3;
	Fri, 11 Sep 2020 23:26:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKR3Z1BBS8HU; Fri, 11 Sep 2020 23:26:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C548E875BD;
	Fri, 11 Sep 2020 23:26:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2737E1BF41B
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 22D93878F7
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id soLKGaGTXJZA for <intel-wired-lan@osuosl.org>;
 Fri, 11 Sep 2020 23:26:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4278B878F4
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:26:00 +0000 (UTC)
IronPort-SDR: kGdEHL5FrATl7Exk33winyQVBGn1qptjs6GNIhNNKMyJHHOn07DXOpBDjaR6erxV8bDdrAJpfo
 VOdjgHnSixVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="146570262"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="146570262"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:25:58 -0700
IronPort-SDR: UxOwf0DQfN4010JHoKsxDFii5ntmNngKZrRb0y5qcoMtxZPpYmNng+27IvtXHz5yN4SKVZhF3M
 2aTWYwlUfmTQ==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="285795766"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.99.126])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:25:57 -0700
Date: Fri, 11 Sep 2020 16:25:57 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200911162557.000002d2@intel.com>
In-Reply-To: <fbd1fdd9-1000-8aac-7e5c-bc761b2209e1@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-11-jesse.brandeburg@intel.com>
 <fbd1fdd9-1000-8aac-7e5c-bc761b2209e1@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 10/11]
 drivers/net/ethernet: remove incorrectly formatted doc
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jacob Keller wrote:

> A lot of these look like they should probably just be converted to use
> kdoc format instead of removing the '/**'

I understand why you're saying that, and I spent a considerable amount
of time fixing drivers that appeared to *try* to use kdoc but messed
up. However, if they don't have anything that looks like doxygen or
kdoc, then I just removed the "/**" to a /* and stopped kdoc processing.

The temac driver is a good example of not actually trying to kdoc at
all.

However I will look over the patches and see if I see @brief anywhere
that is left and try to fix those up. I've done so much now I might as
well finish it, but the @brief doxygen style notes had never been
processed into kdoc before, so changing the /** into /* doesn't
actually remove any value, just makes the build clean.

> > diff --git a/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c b/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
> > index 8941ac4df9e3..9f1b15077e7d 100644
> > --- a/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
> > +++ b/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c
> > @@ -1536,7 +1536,7 @@ static int hw_atl_b0_hw_fl2_clear(struct aq_hw_s *self,
> >  	return aq_hw_err_from_flags(self);
> >  }
> >  
> > -/**
> > +/*
> >   * @brief Set VLAN filter table
> >   * @details Configure VLAN filter table to accept (and assign the queue) traffic
> >   *  for the particular vlan ids.
> 
> This looks like a doxygen style comment. I wonder if whoever maintains
> this code uses doxygen and expects this to get picked up.

It was never picked up by kdoc. And in this case this is the only kdoc
comment in this whole file, so I didn't like the idea of this *one*
being documented while the whole rest of the driver was not.
 
> > diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
> > index 9a15f14daa47..60c199fcb91e 100644
> > --- a/drivers/net/ethernet/xilinx/ll_temac_main.c
> > +++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
> > @@ -106,7 +106,7 @@ static bool hard_acs_rdy_or_timeout(struct temac_local *lp, ktime_t timeout)
> >   */
> >  #define HARD_ACS_RDY_POLL_NS (20 * NSEC_PER_MSEC)
> >  
> > -/**
> > +/*
> >   * temac_indirect_busywait - Wait for current indirect register access
> >   * to complete.
> >   */
> 
> This looks like a function comment. Shouldn't this just be fixed/updated
> so that it is a valid kdoc comment instead?

As per above, this driver didn't even try to use kdoc, so I just
honored their original intent and removed /**.

Thanks for the review and comments!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
