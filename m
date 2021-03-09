Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C0933316F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 23:17:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B728D4EC12;
	Tue,  9 Mar 2021 22:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8J-vVjsMcZev; Tue,  9 Mar 2021 22:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 634D14EC05;
	Tue,  9 Mar 2021 22:17:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9AACB1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 22:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E74C4EC05
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 22:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KcX5VxEWqPe4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 22:17:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 411A64EC04
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 22:17:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CA7E465020;
 Tue,  9 Mar 2021 22:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615328260;
 bh=+dDE9U2w7sqJWggWKYFQ8nXvh7d2iJ7rjzroUCZIjwI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=erxwvpWJ9tGF/TPuQwNLwgds3E8iKAixIIA1HBF7HwmOwXAzypAw7uBjw5eMO73/Y
 jXxw8oxEChsRjbaGhe1osuqDilZ8ggXvPN3Fv9W5e58GeouZQqSrz3arh+hQzIQ0AF
 CxGnki9L+jwJMFVW4DmYji7V+MeKw3MGKYvd4+yL9qu5hKdMYYcxYSsL34rTN1zUgh
 HMhorPud81aSEAaILXuPDVzStzFHmwG8bkh6BMIPshngM8U/L6SSZ0ucP2oh59CTnH
 m8Cv/IY017ygzcbHHsjpwfkic4FzSO8cLG8NjLyJlmIVWa62qBJ+q9PFM4rx+66wd4
 Gfp7sXOM0w3Zg==
Date: Tue, 9 Mar 2021 14:17:38 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210309141738.379feab3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210308162858.00004535@intel.com>
References: <20210308162858.00004535@intel.com>
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

On Mon, 8 Mar 2021 16:28:58 -0800 Jesse Brandeburg wrote:
> Hello,
> 
> We plan to refactor the iavf module and would appreciate community and
> maintainer feedback on our plans.  We want to do this to realize the
> usefulness of the common code module for multiple drivers.  This
> proposal aims to avoid disrupting current users.
> 
> The steps we plan are something like:
> 1) Continue upstreaming of the iecm module (common module) and
>    the initial feature set for the idpf driver[1] utilizing iecm.

Oh, that's still going? there wasn't any revision for such a long time
I deleted my notes :-o

> 2) Introduce the refactored iavf code as a "new" iavf driver with the
>    same device ID, but Kconfig default to =n to enable testing. 
> 	a. Make this exclusive so if someone opts in to "new" iavf,
> 	   then it disables the original iavf (?) 
> 	b. If we do make it exclusive in Kconfig can we use the same
> 	   name? 
> 3) Plan is to make the "new" iavf driver the default iavf once
>    extensive regression testing can be completed. 
> 	a. Current proposal is to make CONFIG_IAVF have a sub-option
> 	   CONFIG_IAVF_V2 that lets the user adopt the new code,
> 	   without changing the config for existing users or breaking
> 	   them.
> 
> We are looking to make sure that the mode of our refactoring will meet
> the community's expectations. Any advice or feedback is appreciated.

Sounds like a slow, drawn out process painful to everyone involved.

The driver is upstream. My humble preference is that Intel sends small
logical changes we can review, and preserve a meaningful git history.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
