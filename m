Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E300781E86A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Dec 2023 17:30:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72AC960D5F;
	Tue, 26 Dec 2023 16:30:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72AC960D5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703608227;
	bh=ehm+xxgRU/csOMWbvqIQKvOcLcHGADUXFkp2DMKHybw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VW/IC2ReBzcZhc7wBwuf9EaxpJhjCR7yu030/Mb0b4+daKAyvCa3Tpo/lmawT3zqp
	 pumzH1SAgk+8AZo1FLokTFgiXIUoIS+DA7jvx0Xl2C28myYmHQ7zaDgd0i9Rp+r4yo
	 F0Fm1606S0erAq6/iRNSmjs8Y4nOMgjmEKLutdidQoWux6l/I9ISm3BWpHTe3IX3rN
	 E2NJ8Go5JN+E1SXoirfBwta/8fcrb2mHu4gx5Xeq/fGI6aJ1qnjr+wG44vQd2oUqJP
	 smNJkuGqXzvVTa/WOwn924piq2HXaIXEJ1JOemRDj9j/9apJ+/6phx4v/XlWaTEIjO
	 M3QjzEDV1U7Fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jjQA5iC8tI1M; Tue, 26 Dec 2023 16:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 486CC60A5F;
	Tue, 26 Dec 2023 16:30:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 486CC60A5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6FD11BF575
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 11:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A90260803
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 11:22:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A90260803
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JZVnadlHvNI3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Dec 2023 11:22:22 +0000 (UTC)
Received: from mail1.merlins.org (magic.merlins.org [209.81.13.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 047B7607B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 11:22:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 047B7607B0
Received: from lfbn-idf3-1-20-89.w81-249.abo.wanadoo.fr ([81.249.147.89]:51810
 helo=sauron.svh.merlins.org) by mail1.merlins.org with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim
 4.94.2 #2)
 id 1rHj1w-00088B-5Z by authid <merlins.org> with srv_auth_plain;
 Mon, 25 Dec 2023 03:21:56 -0800
Received: from merlin by sauron.svh.merlins.org with local (Exim 4.92)
 (envelope-from <marc@merlins.org>)
 id 1rHj1u-000egR-KY; Mon, 25 Dec 2023 03:21:54 -0800
Date: Mon, 25 Dec 2023 03:21:54 -0800
From: Marc MERLIN <marc@merlins.org>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <20231225112154.GA33012@merlins.org>
References: <20231206084448.53b48c49@kernel.org>
 <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
 <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
 <20231207094021.1419b5d0@kernel.org>
 <20231211045200.GC24475@merlins.org>
 <83dc80d3-1c26-405d-a08d-2db4bc318ac8@gmail.com>
 <20231215174634.GA10053@merlins.org>
 <20231224163043.GA6759@merlins.org>
 <5ca7edbb-cf61-45b2-b9ba-888cb157ecbb@gmail.com>
 <79d4bf3e-fdc7-4273-aa1e-9b5e8194696b@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79d4bf3e-fdc7-4273-aa1e-9b5e8194696b@intel.com>
X-Sysadmin: BOFH
X-URL: http://marc.merlins.org/
X-SA-Exim-Connect-IP: 81.249.147.89
X-SA-Exim-Mail-From: marc@merlins.org
X-Mailman-Approved-At: Tue, 26 Dec 2023 16:30:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=merlins.org
 ; s=key; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sAXhjKtvlXBmxV1cQ2mDNbJiiLW+yCdjHevsOdWnhhk=; b=k2I1fD0nmtqAjc2dvQqcLA2Y4O
 uQtSqz8/UVFRQpWasnfxfWdCidFVtz77jYM3pFA9sO9EpJE4ZvLj5UzFZoByjfELh5UdOWozc+uCR
 5PFkMiF3iyCNKasLmDF1RfC/jJ4es6G6ZgMfOfmq+YpU1btu4nad7knUH9JYKptmZacKPoDp0e/Hn
 R/u+kVkBNfjPPIXHL6n6kM5riQHqysUw+Fb/Xo5+DjVpjrZ7iMRzm9h8j4JG5vw2ODEjZMuSrb5fp
 y6HtbHKyKYky4hvosEaiaCi7P1V8U6/bJX5eh72IQE6dIVd9NTJYXaeranyQfERZVe0Gh5dK3nZLi
 ZU4p+rEw==;
Subject: Re: [Intel-wired-lan] [PATCH net v3] net: ethtool: do runtime PM
 outside RTNL
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
Cc: netdev@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 25, 2023 at 10:03:23AM +0200, Sasha Neftin wrote:
> > > I can't patch that kernel easily. How exactly do I disable runtime PM
> > > from the kernel command line for "that device" which I'm not even sure
> > 
> > Change <device>/power/control from "auto" to "on".
> 
> Need to figure out your controller location in a file system via lspci/lspci
> -t and then change to "on"
> For example: echo on >
> /sys/devices/pci0000\:00/0000\:00\:1c.0/0000\:ae\:00.0/power/control
> 
> We are starting to look at this problem, but I can't reproduce the problem
> on my machines yet.

Thanks. I realized it was going to be hard either way if the boot hangs
before I get to a command prompt, which was what was happening
yesterday.
I had to boot ubuntu to debug a sound issue, and it was very tricky
since most of the time it hung before I got to a command prompt, but I
was finally able to get it to work long enough to debug the sound issue
and go back to my self built kernel to port over the sound config I
needed.

I wish I could tell you exactly how to reproduct this in a more useful
way, sorry about that.

Marc
-- 
"A mouse is a device used to point at the xterm you want to type in" - A.S.R.
 
Home page: http://marc.merlins.org/                       | PGP 7F55D5F27AAF9D08
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
