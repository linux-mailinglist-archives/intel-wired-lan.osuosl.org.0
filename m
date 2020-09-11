Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7974267685
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 01:28:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6DB6D2E248;
	Fri, 11 Sep 2020 23:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2nVE4NdrqL0; Fri, 11 Sep 2020 23:28:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C4842E287;
	Fri, 11 Sep 2020 23:28:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC72B1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 23:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A62272E249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 23:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6rg+1DuF0eF1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 23:28:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id A2FEE2E248
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 23:28:45 +0000 (UTC)
IronPort-SDR: swQ0KpGXR/EXVdaanoX+UZEE36I9ObFVv52okubueRCTni0929YGfuAiQTa/iFZTRzZG9Y7qal
 3remciYG1ODQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="220426656"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="220426656"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:28:44 -0700
IronPort-SDR: TnDhiiwf+7bl2mnM3YaQSfNwd8CuRkgo1ci9/ye48d3ZnzjkqHvXEBHURB7IK/leVQJakwSJut
 u0Y1qAmku/cg==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="285796178"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.99.126])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:28:44 -0700
Date: Fri, 11 Sep 2020 16:28:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20200911162843.00002730@intel.com>
In-Reply-To: <877dt0nr8r.fsf@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-6-jesse.brandeburg@intel.com>
 <877dt0nr8r.fsf@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 05/11] intel-ethernet:
 make W=1 build cleanly
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vinicius Costa Gomes wrote:


> > diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> > index 4e7a0810eaeb..2120dacfd55c 100644
> > --- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
> > +++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> > @@ -139,6 +139,7 @@ static void e1000_phy_init_script(struct e1000_hw *hw)
> >  		 * at the end of this routine.
> >  		 */
> >  		ret_val = e1000_read_phy_reg(hw, 0x2F5B, &phy_saved_data);
> > +		e_dbg("Reading PHY register 0x2F5B failed: %d\n", ret_val);
> >
> 
> Adding this debug statement seems unrelated.

Thanks, in the next version I actually addressed this in the commit
message, that this one change was to solve the "you didn't use ret_val"
with a conceivably useful message. I also rejiggered the patches to
have the register read lvalue removals all in their own patch instead
of squashed together with kdoc changes.

> 
> >  		/* Disabled the PHY transmitter */
> >  		e1000_write_phy_reg(hw, 0x2F5B, 0x0003);
> 
> Apart from this,
> 
> Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 

Thanks for the review!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
