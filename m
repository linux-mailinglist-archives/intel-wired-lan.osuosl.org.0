Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B6E446A9D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 22:30:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 304F18290B;
	Fri,  5 Nov 2021 21:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cKcRMv-0Wz9H; Fri,  5 Nov 2021 21:30:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 329DD826D5;
	Fri,  5 Nov 2021 21:30:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A50711BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 21:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92B5E6F933
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 21:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h-dcc3_3OqqF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 21:30:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2917D61579
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 21:30:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 47B3760F9E;
 Fri,  5 Nov 2021 21:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636147814;
 bh=oootQZeYYYplOWWYhY3tq5Fb/rwytVkcvr0prXYBCT8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G6vOWwVPGj5lzL5B77HFTUMsJFDBr5Yjfl+852/61PfiyBy4nL1K+9td4VaTqg88c
 9dk4AiU3Hsc9UDIrVT85ZrkvoTDyHwGSfEyHk01wXaMiga+vgmDBqurCmq3TLOYqRn
 lFzW5TeCu3V6q2J2dbF6Sbk9ADf+xOVtlMe1uqlMwqPDKBW2y9BxKcF9iE9RogYN+c
 3bo1bCFUHkjw/6ioyTK8eksPSMASL62UVKFA01AFamByB2OLCYrewyklGLTm85FWh+
 fmZJKTt4n2tk5ap8TuEyPB/hEFH9y3FZf8kZJOFIu2D3q/nQe85/dwA4jta6bRDpO5
 WQQzLqmTxjnvA==
Date: Fri, 5 Nov 2021 14:30:13 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20211105143013.2cded2f3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <MW5PR11MB5812FA6647FF189D368C75A5EA8E9@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211104081231.1982753-1-maciej.machnikowski@intel.com>
 <20211104081231.1982753-7-maciej.machnikowski@intel.com>
 <20211104110855.3ead1642@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <MW5PR11MB5812FA6647FF189D368C75A5EA8E9@MW5PR11MB5812.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/6] docs: net: Add
 description of SyncE interfaces
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 5 Nov 2021 11:51:48 +0000 Machnikowski, Maciej wrote:
> > I'm still struggling to understand your reasoning around not making
> > EEC its own object. "We can do this later" seems like trading
> > relatively little effort now for extra work for driver and application
> > developers for ever.  
> 
> That's not the case. We need EEC and the other subsystem we wanted
> to make is the DPLL subsystem. While EEC can be a DPLL - it doesn't have
> to, and it's also the other way round - the DPLL can have numerous different
> usages.

We wanted to create a DPLL object to the extent that as a SW guy 
I don't understand the difference between that and an EEC. Whatever
category of *PLL etc. objects EEC is, that's what we want to model.

> When we add the DPLL subsystem support the future work will be as simple 
> as routing the EEC state read function to the DPLL subsystem. But if someone
> decides to use a different HW implementation he will still be able to
> implement his own version of API to handle it without a bigger DPLL block

All we want is something that's not a port to hang whatever attributes
exist in RTM_GETEECSTATE.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
