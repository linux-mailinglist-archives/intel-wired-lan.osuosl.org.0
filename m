Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A8833E10C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 23:02:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 519FC431D6;
	Tue, 16 Mar 2021 22:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TbyoiKst0dO; Tue, 16 Mar 2021 22:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F6BF431E7;
	Tue, 16 Mar 2021 22:02:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCDAF1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 22:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6BCF431E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 22:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-3sTdbTTmGB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 22:02:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33411431D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 22:02:26 +0000 (UTC)
IronPort-SDR: 0SjGOynTxmvZOLNYceO4bbuefCz5INp73yf4ai4TZeuj2ej6LaayruwG5royG3f5a8OPjui0ZG
 1uiIlIAlC9ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="188700159"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="188700159"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 15:02:12 -0700
IronPort-SDR: H5Hp5Ovw/lWsX+qmQ2QAHc18aEgxbnXR7LybT2VWkNtoOS0SmbC020Mkd4DcXcI4VnZH0aNDP8
 dntYeElcZ7hw==
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="449865416"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.254.107.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 15:02:10 -0700
Date: Tue, 16 Mar 2021 15:02:10 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210316150210.00007249@intel.com>
In-Reply-To: <20210316132905.5d0f90dd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210316100141.53551-1-sassmann@kpanic.de>
 <20210316101443.56b87cf6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <44b3f5f0-93f8-29e2-ab21-5fd7cc14c755@kpanic.de>
 <20210316132905.5d0f90dd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] iavf: fix locking of critical sections
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
Cc: slawomirx.laba@intel.com, netdev@vger.kernel.org,
 Stefan Assmann <sassmann@kpanic.de>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski wrote:
> > > I personally think that the overuse of flags in Intel drivers brings
> > > nothing but trouble. At which point does it make sense to just add a
> > > lock / semaphore here rather than open code all this with no clear
> > > semantics? No code seems to just test the __IAVF_IN_CRITICAL_TASK flag,
> > > all the uses look like poor man's locking at a quick grep. What am I
> > > missing?
> > 
> > I agree with you that the locking could be done with other locking
> > mechanisms just as good. I didn't invent the current method so I'll let
> > Intel comment on that part, but I'd like to point out that what I'm
> > making use of is fixing what is currently in the driver.
> 
> Right, I should have made it clear that I don't blame you for the
> current state of things. Would you mind sending a patch on top of 
> this one to do a conversion to a semaphore? 
> 
> Intel folks any opinions?

I know Slawomir has been working closely with Stefan on figuring out
the right ways to fix this code.  Hopefully he can speak for himself,
but I know he's on Europe time.

As for conversion to mutexes I'm a big fan, and as long as we don't
have too many collisions with the RTNL lock I think it's a reasonable
improvement to do, and if Stefan doesn't want to work on it, we can
look into whether Slawomir or his team can.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
