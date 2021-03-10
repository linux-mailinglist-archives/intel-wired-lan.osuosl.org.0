Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F1C3334BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 06:12:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDF9D6F69C;
	Wed, 10 Mar 2021 05:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RkyVwXPX4Yba; Wed, 10 Mar 2021 05:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B49456F695;
	Wed, 10 Mar 2021 05:12:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 469C21BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3573B4EC3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xyeVHLsd8YkV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Mar 2021 05:12:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 431C54EC39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:12:10 +0000 (UTC)
IronPort-SDR: mQXXFvZPAxvPgyE4+uPbAoK6RIJK1hv7wS/nkAy74CGYPSzNctFBMy54ybOWXl5IhoJNratb5Y
 lyzIU+R8+mKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="188487333"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="188487333"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 21:12:09 -0800
IronPort-SDR: RU17yMa7iRo6iftmGU5D+LB0IQfiNnFX88Ug327+KTulSpMdK935AvFUWObbwt/PfYTMoHZmzV
 T/uWkLptNVJA==
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="509539351"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.121.17])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 21:12:08 -0800
Date: Tue, 9 Mar 2021 21:12:07 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210309211207.000011df@intel.com>
In-Reply-To: <20210309141738.379feab3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210308162858.00004535@intel.com>
 <20210309141738.379feab3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC net-next] iavf: refactor plan proposal
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski wrote:

> On Mon, 8 Mar 2021 16:28:58 -0800 Jesse Brandeburg wrote:
> > Hello,
> > 
> > We plan to refactor the iavf module and would appreciate community and
> > maintainer feedback on our plans.  We want to do this to realize the
> > usefulness of the common code module for multiple drivers.  This
> > proposal aims to avoid disrupting current users.
> > 
> > The steps we plan are something like:
> > 1) Continue upstreaming of the iecm module (common module) and
> >    the initial feature set for the idpf driver[1] utilizing iecm.
> 
> Oh, that's still going? there wasn't any revision for such a long time
> I deleted my notes :-o

Argh! sorry about the delay. These proposed driver changes impacted
progress on this patch series, we should have done a better job
communicating what was going on.

> > We are looking to make sure that the mode of our refactoring will meet
> > the community's expectations. Any advice or feedback is appreciated.
> 
> Sounds like a slow, drawn out process painful to everyone involved.
> 
> The driver is upstream. My humble preference is that Intel sends small
> logical changes we can review, and preserve a meaningful git history.

We are attempting to make it as painless and quick as possible. With
that said, I see your point and am driving some internal discussions to
see what we can do differently.

The primary reason for the plan proposed is the code reuse model we've
chosen. With the change to the common module, the new iavf is
significantly different and replacing the old avf base with the new
would take many unnecessary intermediate steps that would be thrown
away at the end. The end design will use the code from the common
module with hooks to get device specific implementation where
necessary.  After putting in place the new-avf code we can update the
iavf with new functionality which is already present in the common
module.

Thanks,
 Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
