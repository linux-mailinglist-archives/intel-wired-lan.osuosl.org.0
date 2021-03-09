Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 989D5331EFE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 07:09:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6F676F4EE;
	Tue,  9 Mar 2021 06:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 63naRi7Jr6kg; Tue,  9 Mar 2021 06:09:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D786A60598;
	Tue,  9 Mar 2021 06:09:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE7A91BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 06:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC5AD831CB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 06:09:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PevoiXxDG3fY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 06:09:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7D17831BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 06:09:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B9C5060235;
 Tue,  9 Mar 2021 06:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615270178;
 bh=MxGhTt3kmgcztH/LvjAi9KfLfR+ogOc7wq9IgbVBjgo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TF+vav/MmX+At40IUJvmTZNCL5jgjWeroJX6Ig3w2nwyUo+93hAwbbA3RKl+gPkp3
 FG/5I2XbBLnqYTWCXLdwDZvknoNaLwuIOyBk2aBgd7sQcT54IdToldzz/oxUTG9laZ
 IV4a6t3H4aJt000awxr8K/tHZi7a41KKLOIMk5FfHozhO6U+csqTQ0F1eP/2+LR4Tz
 L7CyDPtUYK548rDo2lKpTh+Py2FAIUVoAJUxfxM6Uw8ujBw8hC/cLxct54BV0/c5du
 fpmdVg8Acjqv+nb6mj63gyWVQfOchO0y4I0CpLiSWmQL6/1rKX8zaujDlpCAn4iDxz
 qdReEWZl16raw==
Date: Tue, 9 Mar 2021 08:09:34 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <YEcRHkhJIkZnTgza@unreal>
References: <20210308162858.00004535@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210308162858.00004535@intel.com>
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

On Mon, Mar 08, 2021 at 04:28:58PM -0800, Jesse Brandeburg wrote:
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

I don't think that .config options are considered ABIs, so it is unclear
what do you mean by saying "disrupting current users". Instead of the
complication wrote above, do like any other driver does: perform your
testing, submit the code and switch to the new code at the same time.

>
> We are looking to make sure that the mode of our refactoring will meet
> the community's expectations. Any advice or feedback is appreciated.
>
> Thanks,
> Jesse, Alice, Alan
>
> [1]
> https://lore.kernel.org/netdev/20200824173306.3178343-1-anthony.l.nguyen@intel.com/

Please don't introduce module parameters in new code.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
