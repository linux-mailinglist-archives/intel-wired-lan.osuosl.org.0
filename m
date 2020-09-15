Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F22F226AA41
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 19:11:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A03786126;
	Tue, 15 Sep 2020 17:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4B0JFWbKU4Fh; Tue, 15 Sep 2020 17:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9899D86559;
	Tue, 15 Sep 2020 17:11:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D659F1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 17:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BF36B207EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 17:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12spVv-zDDx4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 17:11:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 8443D2042A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 17:11:48 +0000 (UTC)
IronPort-SDR: 18HR6q56DSIFjIU5xKS8DwVZ22k+YJgPr3CCnLj/h866pBHCNSHoUYVafiv8wULXZcMd43xVet
 RRzVCuRQHuVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="220869851"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="220869851"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 10:11:27 -0700
IronPort-SDR: azfzuffcapFxu0y8d/ncJtgtbLEJGIi1b6VwTAHrdEm+kIhoJpSTkJ4vjpIFP/dBQ+zjJq5IsO
 3o0sPSiaw7QQ==
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="482903784"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.212.118.172])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 10:11:26 -0700
Date: Tue, 15 Sep 2020 10:11:24 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Saeed Mahameed <saeed@kernel.org>
Message-ID: <20200915101124.00004146@intel.com>
In-Reply-To: <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] make
 drivers/net/ethernet W=1 clean
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

Saeed Mahameed wrote:
> Reviewed-by: Saeed Mahameed <saeedm@nvidia.com>

Thanks! In all fairness, Jakub reviewed this in v1 too but I made enough
changes in v2 that I felt I had to drop the previous review ACKs.

> Hi Jesse, 
> What was the criteria to select which drivers to enable in your .config
> ?

As Jakub said, I'm using allmodconfig on x86_64, but just yesterday
discovered there was much more to fix because I ran the kernel-doc
script directly on the source (those other things come from different
ARCH= builds which limit allmodconfig)
 
> I think we need some automation here and have a well known .config that
> enables as many drivers as we can for static + compilation testing,
> otherwise we are going to need to repeat this patch every 2-3 months.

Totally agree! Jakub already has some cobbled together and is regularly
running W=1 C=1 builds on all new patches. I found I could cross compile
different ARCH targets to get (some of) the other warnings, or better
yet just run the scripts/kernel-doc script directly in automation.
 
> I know Jakub and Dave do some compilation testing before merging but i
> don't know how much driver coverage they have and if they use a
> specific .config or they just manually create one on demand..
> 
> bottom line, we need a bot after this series is applied.
> All we need is to daily apply all ongoing patches to some testing
> branch and let 0-DAY kernel test [1] run on it with whatever make
> command we define and with all drivers enabled.

Yes, that's the end goal and I think this moves us closer to that. A
little more work remains before we go and turn all warnings on - as
Andrew suggested in another reply. (it's also sometimes a losing game
fighting against many compiler versions, etc).  However, the zero-day
bot reporting more results from W=1 compiles would *really* help (I
looked at , but am having some troubles verifying that)

> [1] https://lists.01.org/pipermail/kbuild-all 
> 
> > ---
> > 
> > Q: Maybe I can fix the remaining warnings in a followup patch? If
> > I try to put it on this series it will make it much larger
> > (double).
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
