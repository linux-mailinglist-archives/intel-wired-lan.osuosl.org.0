Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B453334BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 06:11:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DA1243191;
	Wed, 10 Mar 2021 05:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kMAsqOrzuG_t; Wed, 10 Mar 2021 05:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CD554318B;
	Wed, 10 Mar 2021 05:11:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4272E1BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 304BE84353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jz4z8NPmzXD6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Mar 2021 05:11:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 495608430A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 05:11:48 +0000 (UTC)
IronPort-SDR: L9ualIho+IkZA1oeFRq39Z+T3v/pJO4+g9iMnGl6ru8kYEZFeYGRg3BKDixEYsNFjVC0cRCju/
 +fcSNGccJR2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="188427729"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="188427729"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 21:11:47 -0800
IronPort-SDR: S3rCbWxRTbmZxotpMQE1K+syqMEjTPDwHP43DNnqb6sHGHWkq8hFKdTo9jDvpebSODHyX82PeJ
 BPVKvp5cVcTA==
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="509539281"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.121.17])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 21:11:46 -0800
Date: Tue, 9 Mar 2021 21:11:46 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210309211146.00002f2d@intel.com>
In-Reply-To: <YEcRHkhJIkZnTgza@unreal>
References: <20210308162858.00004535@intel.com>
	<YEcRHkhJIkZnTgza@unreal>
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Leon Romanovsky wrote:

> > 3) Plan is to make the "new" iavf driver the default iavf once
> >    extensive regression testing can be completed.
> > 	a. Current proposal is to make CONFIG_IAVF have a sub-option
> > 	   CONFIG_IAVF_V2 that lets the user adopt the new code,
> > 	   without changing the config for existing users or breaking
> > 	   them.
> 
> I don't think that .config options are considered ABIs, so it is unclear
> what do you mean by saying "disrupting current users". Instead of the
> complication wrote above, do like any other driver does: perform your
> testing, submit the code and switch to the new code at the same time.

Because this VF driver runs on multiple hardware PFs (they all expose
the same VF device ID) the testing matrix is quite huge and will take
us a while to get through it. We aim to avoid making users's life hard
by having CONFIG_IAVF=m become a surprise new code base behind the back
of the user.

I've always thought that the .config options *are* a sort of ABI,
because when you do "make oldconfig" it tries to pick up your previous
configuration and if, for instance, a driver changes it's Kconfig name,
it will not pick up the old value of the old driver Kconfig name for
the new build, and with either default or ask the user. The way we're
proposing I think will allow the old driver to stay default until the
user answers Y to the "new option" for the new, iecm based code.

> > [1]
> > https://lore.kernel.org/netdev/20200824173306.3178343-1-anthony.l.nguyen@intel.com/
> 
> Please don't introduce module parameters in new code.

Thanks, we certainly won't. :-)
I'm not sure why you commented about module parameters, but the above
link is to the previous submission for a new driver that uses some
common code as a module (iecm) for a new device driver (idpf) we had
sent. The point of this email was to solicit feedback and give notice
about doing a complicated refactor/replace where we end up re-using
iecm for the new version of the iavf code, with the intent to be up
front and working with the community throughout the process. Because of
the complexity, we want do the right thing the first time so we can to
avoid a restart/redesign.

Thanks,
 Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
