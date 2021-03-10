Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE25233358F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 06:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E5DB4318B;
	Wed, 10 Mar 2021 05:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0NgxAQZXhHG; Wed, 10 Mar 2021 05:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EE6F4318E;
	Wed, 10 Mar 2021 05:51:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BEB81BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:50:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A3814D0A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:50:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M4RJkh0iMpSn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Mar 2021 05:50:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E7E74BC25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:50:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0131D64FEF;
 Wed, 10 Mar 2021 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615355454;
 bh=2DhMBcTJQmQLalLr92IqUGzEdsUlm1QvvfBDfUeZJcs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AbUEYlgg8BBPTwGY5+n+b80FswbRdJe8CZRBy6GcwU5aYtN6sdp525zoJysJ5rCiO
 6Q99TGJjgKO48YVGHZ+aARTJOsi9LLrNmqgP/ZNpZTYt77iySA4evp6aH6cFVh1bai
 Rg1L8xh4oM6mJDMooegmUn2lbWlRyLG6gDwP9PlzDUEXcF9LrNIkFj8mjLT0IX+e9b
 5+ojWwhMesTyD8aygRAFKYLXyu1KUxgekHewgGrG7Vw/HMHlVKI7VKoMqkvuFHANSL
 Y4ovEm9IulvuOtf1mtNcDus6KIXAPcmBOhByDdmcZ7qWLpOOx16mZY1bxmOa7nwcvM
 9h78Fw01RbH0w==
Date: Wed, 10 Mar 2021 07:50:50 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <YEheOtKsKm1DfCR8@unreal>
References: <20210308162858.00004535@intel.com> <YEcRHkhJIkZnTgza@unreal>
 <20210309211146.00002f2d@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210309211146.00002f2d@intel.com>
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 09, 2021 at 09:11:46PM -0800, Jesse Brandeburg wrote:
> Leon Romanovsky wrote:
>
> > > 3) Plan is to make the "new" iavf driver the default iavf once
> > >    extensive regression testing can be completed.
> > > 	a. Current proposal is to make CONFIG_IAVF have a sub-option
> > > 	   CONFIG_IAVF_V2 that lets the user adopt the new code,
> > > 	   without changing the config for existing users or breaking
> > > 	   them.
> >
> > I don't think that .config options are considered ABIs, so it is unclear
> > what do you mean by saying "disrupting current users". Instead of the
> > complication wrote above, do like any other driver does: perform your
> > testing, submit the code and switch to the new code at the same time.
>
> Because this VF driver runs on multiple hardware PFs (they all expose
> the same VF device ID) the testing matrix is quite huge and will take
> us a while to get through it. We aim to avoid making users's life hard
> by having CONFIG_IAVF=m become a surprise new code base behind the back
> of the user.

Don't you already test your patches against that testing DB?
Like Jakub said, do incremental changes and it will be much saner for everyone.

>
> I've always thought that the .config options *are* a sort of ABI,
> because when you do "make oldconfig" it tries to pick up your previous
> configuration and if, for instance, a driver changes it's Kconfig name,
> it will not pick up the old value of the old driver Kconfig name for
> the new build, and with either default or ask the user. The way we're
> proposing I think will allow the old driver to stay default until the
> user answers Y to the "new option" for the new, iecm based code.

I understand the rationale, but no - .config is not ABI at all.
There are three types of "users" who are messing with configs:
1. Distro people
2. Kernel developers
3. "Experts" who wants/needs rebuild kernel

All of them are expected to be proficient enough to handle changes
in CONFIG_* land. In your proposal you are trying to solve non-existent
problem of having users who are building their own kernel, but dumb
enough do not understand what they are doing.

We are removing/adding/renaming CONFIG_* all the time, this is no
different.

>
> > > [1]
> > > https://lore.kernel.org/netdev/20200824173306.3178343-1-anthony.l.nguyen@intel.com/
> >
> > Please don't introduce module parameters in new code.
>
> Thanks, we certainly won't. :-)
> I'm not sure why you commented about module parameters, but the above
> link is to the previous submission for a new driver that uses some
> common code as a module (iecm) for a new device driver (idpf) we had
> sent. The point of this email was to solicit feedback and give notice
> about doing a complicated refactor/replace where we end up re-using
> iecm for the new version of the iavf code, with the intent to be up
> front and working with the community throughout the process. Because of
> the complexity, we want do the right thing the first time so we can to
> avoid a restart/redesign.

I commented simply because it jumped in front of my eyes when I looked
on the patches in that link. It was general enough to write it here,
rest of my comments are too specific and better to be posted as a reply
to the patches itself.

Thanks

>
> Thanks,
>  Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
