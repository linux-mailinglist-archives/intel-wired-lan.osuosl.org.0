Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A38B4681CF
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Dec 2021 02:32:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CBC960769;
	Sat,  4 Dec 2021 01:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qjZM_NebX9bX; Sat,  4 Dec 2021 01:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 806BE60776;
	Sat,  4 Dec 2021 01:32:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CFDC1BF298
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Dec 2021 01:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 104904109F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Dec 2021 01:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4puv6mOzoXTP for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Dec 2021 01:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B317440A04
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Dec 2021 01:32:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9B548B828E8;
 Sat,  4 Dec 2021 01:32:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BC13C341C1;
 Sat,  4 Dec 2021 01:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638581524;
 bh=oLiw2+AvMLz5jRSwMHbfy8agi20mRg8gaLRcGjN5cAY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PQqbOFPM3nU4dli1iTLWDau6kI2y+xYH4Qp5zg2SwqRLr00AdZU9E3+3pl2s+2a2Y
 wT0sfBlX3b+88vNSHnr6hJU3GnePhYX6+dBLFIqrnBsokWsBwn0xMdDEZevHl9KYbj
 23GZrCYVF+/eDljFD9GsBxF//J/4B+XkUwqTI4qG6ulf3WMHfF1riznLP+wA+0aEob
 KCUZlgEqm+E5SFCsffH93qB4bBoBnmhhucFHksHWt/3J9XYprVMFAJdQwzbj2cI5rQ
 +VcNai3dmslhqN9GihFEtzYmHYRvkoRIHlAzikJCjK4kPQWEgv9pVPjWIg5L3afteX
 um1CZofEerpWw==
Date: Fri, 3 Dec 2021 17:32:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <20211203173203.285dc75f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211204010829.7796-1-alexandr.lobakin@intel.com>
References: <20211129101315.16372-381-nic_swsd@realtek.com>
 <20211129095947.547a765f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <918d75ea873a453ab2ba588a35d66ab6@realtek.com>
 <20211130190926.7c1d735d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <d3a1e1c469844aa697d6d315c9549eda@realtek.com>
 <20211203070410.1b4abc4d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20211204010829.7796-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH 0/4] r8169: support dash
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 nic_swsd <nic_swsd@realtek.com>, Hayes Wang <hayeswang@realtek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat,  4 Dec 2021 02:08:29 +0100 Alexander Lobakin wrote:
> > Ah, I've only spotted the enable/disable knob in the patch. 
> > If you're exchanging arbitrary binary data with the FW we 
> > can't help you. It's not going to fly upstream.  
> 
> Uhm. I'm not saying sysfs is a proper way to do that, not at all,
> buuut...
> We have a ton of different subsystems providing a communication
> channel between userspace and HW/FW. Chardevices all over the
> tree, highly used rpmsg for remoteproc, uio. 

Not in Ethernet.

> We have register dump in Ethtool,

Read only.

> as well as get/set for EEPROM, I'd count them as well.

EEPROM writes are supposed to update FW images, not send random
messages.

> So it probably isn't a bad idea to provide some standard API for
> network drivers to talk to HW/FW from userspace, like get/set or
> rx/tx (when having enough caps for sure)? It could be Devlink ops
> or Ethtool ops, the latter fits more to me.

I'm not saying it's wrong to merge shim drivers into the kernel and
let the user space talk to device FW. I'm saying it's counter to what
netdev's policy has always been and counter to my personal interests.

What is a standard API for custom, proprietary FW message interface?
We want standards at a functional level. Once you open up a raw FW
write interface there is no policing of what goes thru it.

I CCed Intel since you also have the (infamous) ME, but I never heard
of the need to communicate from the OS to the ME via the netdev
driver... Not sure why things are different for Realtek.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
