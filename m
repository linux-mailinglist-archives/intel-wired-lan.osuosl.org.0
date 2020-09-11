Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 550B126767A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 01:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E73308761F;
	Fri, 11 Sep 2020 23:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LvnhY6sP23Rv; Fri, 11 Sep 2020 23:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8585B8764E;
	Fri, 11 Sep 2020 23:18:13 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A8881BF41B
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 146072045A
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nplWeLEatP9I for <intel-wired-lan@osuosl.org>;
 Fri, 11 Sep 2020 23:18:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 1CEBA20445
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:18:11 +0000 (UTC)
IronPort-SDR: HckSR1FT+BXjQC67O3eCJ0R/B2cOggjZVHaxSntXglAfCNQnhEIb60r1Iza1/1mjU2kQMd/goU
 KJsNaR+U5E8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="220425548"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="220425548"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:18:08 -0700
IronPort-SDR: WIsa3fvHn/ApD0/yQ59PwzJnXljNN0ltNZ5OO0kMh9bANot8lg7VTByNMp8Qdqdcb+rm7UBaGo
 x0W3OCHrWzUA==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="285793799"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.99.126])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:18:07 -0700
Date: Fri, 11 Sep 2020 16:18:05 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200911161805.00005aa1@intel.com>
In-Reply-To: <e1cf9542-4e3b-a666-7861-47b069b3a606@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-7-jesse.brandeburg@intel.com>
 <e1cf9542-4e3b-a666-7861-47b069b3a606@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 06/11]
 drivers/net/ethernet: clean up unused assignments
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
 		err = -EBUSY;
> > diff --git a/drivers/net/ethernet/cavium/liquidio/lio_main.c b/drivers/net/ethernet/cavium/liquidio/lio_main.c
> > index 8e0ed01e7f03..737ae69eec6e 100644
> > --- a/drivers/net/ethernet/cavium/liquidio/lio_main.c
> > +++ b/drivers/net/ethernet/cavium/liquidio/lio_main.c
> > @@ -1,4 +1,4 @@
> > -/**********************************************************************
> > +/*
> 
> I suspect this was meant to go into the kdoc patch instead?

Actually it shouldn't be there at all, but it's fixed, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
