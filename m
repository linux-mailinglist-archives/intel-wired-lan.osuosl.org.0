Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF353FCAE3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 17:32:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E318A406D3;
	Tue, 31 Aug 2021 15:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lbK8FPC8sCo4; Tue, 31 Aug 2021 15:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F8FF406C7;
	Tue, 31 Aug 2021 15:32:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 009391BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 15:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED685606C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 15:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KVGuILviJuX5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 15:32:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7983460611
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 15:32:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9579B60F42;
 Tue, 31 Aug 2021 15:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630423949;
 bh=ybLmg9lp5eiVFEI/aszefp33Vquu0/8MQSxWb8mNW+4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HyqmIRJYUd4I+C/QRbEgYjSuShO1hpLfzyO1ttkbuelhA+wBMVuTgUahpD2H5kwlA
 JZLxumuzEfF/+APc9MMFzYcJZAWw4lF3wLFM4eHL102WZHC6bk1WXRKdyTy982XpH/
 Bfk92DnljKP09IUMzFzX9+Nm7/FdWDfMllK6nbxi+ubQ7sEp0vrkwfRcLzmLeP/qiM
 xXVRlDP/ODH7ddjz1080efxbbFyWGexflXMETKQ70Y/Rk6hTBxsJ+zMDo54I6jur5z
 uW6NojKMgtB5Q3+zsqf7s8RASiZq7hLpPUaFkKtTIsfAmph+TB++qo6imS2ewPeYkp
 GyinD0CjsjiIw==
Date: Tue, 31 Aug 2021 08:32:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210831083227.3d9df78a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <SJ0PR11MB4958304AA06A63DD6290D3DEEACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
 <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <SJ0PR11MB4958029CF18F93846B29F685EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
 <20210831063304.4bcacbe3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <SJ0PR11MB49583C74616AC7E715C6E3A9EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
 <20210831071801.0535c0cf@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <SJ0PR11MB4958304AA06A63DD6290D3DEEACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: Jonathan Lemon <bsd@fb.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 31 Aug 2021 15:19:36 +0000 Machnikowski, Maciej wrote:
> > It's a reasonable SW design strategy to start simple. Unfortunately,
> > it doesn't apply to stable uAPI design. You're adding a RTNL op, which
> > will have to be supported for ever. If we add anything "later" it will
> > be a strict addition, and will have to be backward compatible. Which
> > I'm not sure how to do when the object we'd operate on would be
> > completely different (clock vs netdev).  
> 
> I agree - the point I'm trying to make here is that the existence of
> the PTP-specific interface will not invalidate the need of having 
> SyncE-specific one as well. Even if we report lock-states for the clock
> we will still need to report lock-states for devices that don't use PTP
> clocks, but support SyncE. (that's also a reason why RTNL is still required).
> 
> The RTNL interface will also address devices that only need the 
> frequency syntonization (especially in Radio Access Networks).
> 
> > 
> > As I said I can write the boilerplate code for you if you prefer, the
> > code implementing the command and the driver interface will be almost
> > identical.  
> 
> I think it's a great idea to start that in parallel to this patch. Then move
> the common structures to the generic layer and use them in both
> SyncE-specific RTNL implementation and PTP-specific part that will
> be added. This won't affect SyncE specific APIs. The "worst" that can
> happen is that the driver will put the same info for PTP part and
> SyncE part if that's the design someone follows.

I don't understand why we need the SyncE RTNL if we have clock API for
controlling the freq source. Are you saying that there are
implementations out there which use SyncE to recover Rx clock and use
it for Tx but the PTP ticker is in a different clock domain?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
