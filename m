Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94551AA68DD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 04:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4976F82422;
	Fri,  2 May 2025 02:47:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJpLdqjSex1I; Fri,  2 May 2025 02:47:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FEAF824DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746154048;
	bh=IDZoZ15OxTKB7hScqs1Pqxl9eBesTabmYzyix+1Qh8k=;
	h=Date:To:Cc:References:In-Reply-To:From:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TOBEuS8+jJI1WDhhnOs4JqOQx+/iwzTnOHAJ975tHzQtButQ5h+L3r3jrYJvF8/H+
	 3KUXQdvExOZMbvUrAERvguRLjZHPzNpYNkhsO1gcjrEy98+86/ChyeZcxTjX0QETMA
	 ZXtkgULqFjmEOPCB2ppDm7xnXgmIVvyUsRK2mkFwhU+nNKXsGkdHCaoBrihPz3eCKL
	 nMVPx36fv8csQFLy/OXSm42PrjIpbfSSNF02n3d2yhfPrG+3NH2kfE7/Apq+dSFmdJ
	 +vehj/xfiHS9CsyNO7m3b3F8ZJr8+FE7LxlIchoiSftp9E6dbjGcliHlNHO7RRIq8L
	 BarFahEwWAPGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FEAF824DD;
	Fri,  2 May 2025 02:47:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 42936113
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 02:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3458840590
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 02:47:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlihAikh_O1L for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 May 2025 02:47:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=129.97.134.17;
 helo=caffeine.csclub.uwaterloo.ca; envelope-from=lsorense@csclub.uwaterloo.ca;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6E983404CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E983404CD
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E983404CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 02:47:25 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id F32084603B6; Thu,  1 May 2025 22:48:35 -0400 (EDT)
Date: Thu, 1 May 2025 22:48:35 -0400
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Netdev <netdev@vger.kernel.org>
Message-ID: <aBQyg2RBReEBc47P@csclub.uwaterloo.ca>
References: <aAkflkxbvC8MB8PG@csclub.uwaterloo.ca>
 <8236bef5-d1e3-42ab-ba1f-b1d89f305d0a@intel.com>
 <aAu2zoNIuRk-nwWt@csclub.uwaterloo.ca>
 <ffe2bfff-ffc5-4ae0-b95b-6915e5274bd7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ffe2bfff-ffc5-4ae0-b95b-6915e5274bd7@intel.com>
From: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=csclub.uwaterloo.ca
Subject: Re: [Intel-wired-lan] Fix promiscous and multicast mode on iavf
 after reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 29, 2025 at 11:44:55AM -0700, Jacob Keller wrote:
> Yes. That's the trouble with the current approach. The VF interface has
> to work well when the VF driver is running different operating systems
> or versions, and if we change the behavior with a new opcode or similar
> that would be difficult.
> 
> The reset logic is likely a haphazard mess of different "solutions" to
> various issues we've had. It grew more or less organically out of i40evf
> code from years ago.
> 
> Agreed. Obviously, our own testing never caught this. :(

Yes you need to actually run with promisc on, not just using tcpdump
once in a while.  So someone using the interface connected to a virtual
bridge that would want promisc to allow all traffic to be received that
then hits a tx hang would see it, but probably that is about the only
time you would have hit it.  tx hangs don't seem to be nearly as common
as they were back in the igbe and ixgbe days fortunately.

In my particular case it was enabling promisc mode, then changing the
mtu that resulted in very often loosing promisc mode.

> We might be able to get away with improving the PF to stop losing as
> much data, but I worry that could lead to a similar sort of race
> condition as this but in reverse, where VF thinks that it was cleared. I
> guess the VF would send a new config and that would either be a no-op or
> just restore config.
> 
> That makes me think this fix to the VF is required regardless of what or
> how we modify the PF.

It seems better to make the VF driver handle it since you don't know
what kernel version the host is running and hence what it is going to
do when you do reset (unless you up the API version of course, which
seems excessive just for this, and you would still have to handle the
case when the host is older).

Of course it seems that if the driver wasn't caching the current settings
for promisc and multicast and simply sent the config everytime any config
changed, it would be working, but it would also be wasteful.  I don't
remember when the cache was introduced, but I think it was done as part
of not sending a message for promisc and a separate one for multicast
since it sometimes resulted in the wrong setting in the end.  But the
caching thing has not been around for the entire life of the iavf/i40evf
driver so it may in fact have worked in the past and was accidentally
broken as part of fixing the other issue.

-- 
Len Sorensen
