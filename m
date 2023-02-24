Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B616A1431
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 01:13:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4916281AAC;
	Fri, 24 Feb 2023 00:13:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4916281AAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677197601;
	bh=7SrFcPrA/mKAvpJzaT9nUK9i82cB9eD686rl+18iqao=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W8lt0rSby4sCRGiRwSSlEJ3WwfEUGBmqX8dccKGgJ2IEZMzkOGYWjmLNEroEysu8l
	 2jwGPiJbhWarAZ5goIN6gvxacFDE9VHpK+HlypwWWz2Xt9qBZ/UPx9HTnP+uVWr+Er
	 eG52b9vspUzaTsSLjewEXwFId39QJukIhZUoLqwYT8VFHCMQTCfRZbWQWRtM/MJ04C
	 Ct/vyX/7oXf1VHX4cY6/21hqPLyuR6xEzVOFBt4FXM7iZU9WPgKlIPqVACwRL5YRPB
	 JcjIkHfjEcdYEiw/io/Cb4wfCTQyr1pxX6ZDxh2C3CfwBUsgP2pxdADLynsgRsbB95
	 TdkTg6KcGVavA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wrOlp-zuIndu; Fri, 24 Feb 2023 00:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C8BE81A99;
	Fri, 24 Feb 2023 00:13:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C8BE81A99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA4A1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 00:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6692A60B96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 00:13:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6692A60B96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9vGBBihc0fgf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 00:13:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC73D60B8C
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC73D60B8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 00:13:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6B2C5B8091C;
 Fri, 24 Feb 2023 00:13:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA1A1C433D2;
 Fri, 24 Feb 2023 00:13:10 +0000 (UTC)
Date: Thu, 23 Feb 2023 16:13:09 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20230223161309.0e439c5f@kernel.org>
In-Reply-To: <7af17cfa-ae15-f548-1a1b-01397a766066@intel.com>
References: <20230222223558.2328428-1-jacob.e.keller@intel.com>
 <20230222211742.4000f650@kernel.org>
 <7af17cfa-ae15-f548-1a1b-01397a766066@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677197591;
 bh=LBbv2K4bzl2jwG35TRIUGZTtUQaMP2wQPXZyP6/gfys=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TOjkrFn1G+SalkbxLzANG+PAQN+aX0SdFAO2eJ5bn0m273prvqmHUeeWE20k8ortL
 h2Tj0YLCGL/lTklizXxLa+cJliZwsEyvgRVow6KatYEwJ0ktXsaYgvyaaqgZNu7GOz
 WMtw8vWAXcsgVnSkx8asnEx79JcHAU7/SiSFO+I7hvS0gYxTDaZi7D7LwNB4F4fIxi
 hfMNCwGqcIb5qAkbnClQWzVSulOu5KQwuYkeBLR3jWCch5D+Fjxnm6v2BlWFXoIfP9
 qk6O1Vzfjat5cdoDy9SHnLFGwIhi5wR2jGc875TUlCMIIJnBtdtVz7EGx6/xZWZ0nY
 8+V/4f4zb0YGQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TOjkrFn1
Subject: Re: [Intel-wired-lan] [intel-net] ice: remove unnecessary
 CONFIG_ICE_GNSS
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
Cc: netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 23 Feb 2023 14:55:07 -0800 Jacob Keller wrote:
> > I mean instead of s/IS_ENABLED/IS_REACHABLE/ do this:
> > 
> > index 3facb55b7161..198995b3eab5 100644
> > --- a/drivers/net/ethernet/intel/Kconfig
> > +++ b/drivers/net/ethernet/intel/Kconfig
> > @@ -296,6 +296,7 @@ config ICE
> >         default n
> >         depends on PCI_MSI
> >         depends on PTP_1588_CLOCK_OPTIONAL
> > +       depends on GNSS || GNSS=n
> >         select AUXILIARY_BUS
> >         select DIMLIB
> >         select NET_DEVLINK
> > 
> > Or do you really care about building ICE with no GNSS.. ?  
> 
> This would probably also work, but you'd still need #if IS_ENABLED in
> ice_gnss.h to split the stub functions when GNSS is disabled.
> 
> The original author, Arkadiusz, can comment on whether we care about
> building without GNSS support.
> 
> My guess its a "we don't need it for core functionality, so we don't
> want to block building ice if someone doesn't want GNSS for whatever
> reason."

Just to be crystal clear we're talking about the GNSS=m ICE=y case.
I'm suggesting that it should be disallowed at the Kconfig level.
ICE=m/y GNSS=n will still work as expected.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
