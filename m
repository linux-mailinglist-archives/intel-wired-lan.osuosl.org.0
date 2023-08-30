Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93CA78D6F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Aug 2023 17:26:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E91A41787;
	Wed, 30 Aug 2023 15:26:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E91A41787
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693409168;
	bh=p0/m6Fpoo3aMK9ASlnr8KQOwyVTc0gpRcuwSWU/KiPk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vnU42fKOC4Ps7Pvc1kX7WPnWLlD9nBxDUZGbHRAAdNptFnvLIgwFofYF4fnSmc4Zt
	 yMjiemnhBWtqKkyd2T+z5v85c0Jvj2Y4ZEIECD6aoLX8V4CFvB0aF+67vik88GS6vF
	 Bnm91sXZz3Su7q0HMxRIRb7RrU9bpOh55CsIrX7NzIUnP0NyU9XFzxNp1iLg4K2ClP
	 XydwQjFwNnKiUJL+dm5evzhZ86kAx/dL5nt98bzmRSUF9ZLX/EAXNWZrviyfEL9gXm
	 aToSKmgCuRzrAn+8/ahCk46oVR+UDrNdDMP0MXoUBm6qbDTyCRF2HYe9tmCJj/Vy/S
	 YlMup9gdWZvXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NscdiLhOx1HV; Wed, 30 Aug 2023 15:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A54F4177E;
	Wed, 30 Aug 2023 15:26:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A54F4177E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44C701BF30D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 15:26:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 028EE419D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 15:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 028EE419D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nubk6LKSW2F3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Aug 2023 15:26:01 +0000 (UTC)
X-Greylist: delayed 504 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 30 Aug 2023 15:26:00 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD2A640243
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD2A640243
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Aug 2023 15:26:00 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id DED465C0109;
 Wed, 30 Aug 2023 11:17:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 30 Aug 2023 11:17:32 -0400
X-ME-Sender: <xms:jF3vZIkHtnLIbFo7RMw-xnlSYf7YexHD0LXn8vdaZ01OZF48QbE2jg>
 <xme:jF3vZH1niGrB2mgdOCFyOFhWQiBcsfvCZzqQfZe03bEiouAcbZSz305wRiLqcJjSB
 I6j2oB-mOQxvA8>
X-ME-Received: <xmr:jF3vZGq2qq05iDOMBPAvaA5I7oXNqkNkwwSklxDiHR3iAmxRFThNG9eGkAVrq79YGgHsrdhwXx80blx4Ow5O_KO2Q3FQ9g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudefkedgkeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhepvddufeevkeehueegfedtvdevfefgudeifeduieefgfelkeehgeelgeejjeeg
 gefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:jF3vZElTLqxkzcP3fRz7EpT_YibOm0OC5r5Fq6RKCVjY70yrp5q1wA>
 <xmx:jF3vZG3QHECtkvV2wVpAZnprlz6FbpOjwben01RgQFotwGZgz8KNiA>
 <xmx:jF3vZLtI6Vo_fbfAGHSWVaSq3pzRilwpHBxr9Z0hxPwKw9wD9SUtgg>
 <xmx:jF3vZLzq7SnSLB-vxY9e5fU-fcULJK6TyEZefztmgvjEu7gIYRS8yw>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 30 Aug 2023 11:17:31 -0400 (EDT)
Date: Wed, 30 Aug 2023 18:17:27 +0300
From: Ido Schimmel <idosch@idosch.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <ZO9dhzhK+psufXqS@shredder>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
 <20230824083201.79f79513@kernel.org>
 <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZOsNhgd3ZxXEaEA5@shredder>
 <MW4PR11MB57766C3B9C05C94F51630251FDE7A@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW4PR11MB57766C3B9C05C94F51630251FDE7A@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1693408652; x=1693495052; bh=0qPtmyyUpQSLN
 Odgbtpe33Gx+tXIvgjJ/8JvU5B4E+8=; b=tO8IWeumdcaoWkBD1zxdBSwvMjxxP
 PHIEn/o6KClMduHCafpD68S7ggy5J1waZd0ekscD0ItsBl4qPfE7EzlTacdcqCF/
 20VBZ7ybnIlF+YU058eza/9QPlzh4KNs6WLCSnik040m1haqRaof4lEIgM9CpC9X
 bMi7KmumX9JQrgS4YlotjofumsgNDBd6zBKbEjmoI3GK6EfIxu/COrjrSPBRQwqr
 7ET7GyXZRr6uBAiPTtv9fpjTeXeoirTwWNSvx0VqYBNjtRw/+LwaP+V2mCjvFjS6
 Uce4ivRaFX2+uO522UwCaTybnCSOdKm2KlqN2hjHSxK6OQPQgOPDL/mzg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=tO8IWeum
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: Jakub Kicinski <kuba@kernel.org>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 29, 2023 at 09:12:22AM +0000, Drewek, Wojciech wrote:
> In some cases users are trying to use media with power exceeding max allowed value.
> Port split require system reboot so it feels natural to me to restore default settings.

I don't believe it's the kernel's responsibility to undo changes done by
external tools. Given that the tool is able to change this setting, I
assume it can also restore it back to default.

Moreover, it doesn't sound like port split won't work without this
change, so placing this change there only because we assume that a
reboot will follow seems random.

I think the best way forward is to extend ethtool as was already
suggested. It should allow you to avoid the split brain situation where
the hardware is configured by both the kernel and an external tool.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
