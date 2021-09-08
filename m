Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CB34040EC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 00:19:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1796982D12;
	Wed,  8 Sep 2021 22:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hOaAWg2_3H87; Wed,  8 Sep 2021 22:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A74680D32;
	Wed,  8 Sep 2021 22:19:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32C841BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A5A44025B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlLppDabgkrQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 22:18:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DE4940253
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 22:18:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9500D6117A;
 Wed,  8 Sep 2021 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631139534;
 bh=jPp8+6uGTC7LhIza9T0H1P17H1NFYoR4QNr/RFobpPE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=npSwOmv4DXzu6E5YDRDJ8nWDuD1pH3h+KSwI0bYp7pn1HKTePV5PdhEJ1o4zXtfQu
 lq6iaw06STSgnyr4i6wM+f6ostpJ1liK2J3Q1C1NWR0CrZs7WjfK6sM3epTj1BbjiF
 V8HWcwH5ssWUK7ZDrOFLMWk++OYynwUgJYTaV3onq4F7WoKythdeyhpJvMW0jRbsUV
 z2K+6yWDG0/YOj2iZ020bwYWEQW/4LCm4ExvIOi6+MFlIvRH1iHDInq06kRYOSkJjr
 KHihf6PiegFZJjKB6ZL/VdU7WLXSe83uk7dvDUuh6AKXiBYK+Z86ROXX13T3nliH6M
 4CmKBTUJNSsUg==
Date: Wed, 8 Sep 2021 15:18:52 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210908151852.7ad8a0f1@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <PH0PR11MB4951623918C9BA8769C10E50EAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906113925.1ce63ac7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Saeed Mahameed <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 8 Sep 2021 17:30:24 +0000 Machnikowski, Maciej wrote:
> Lane0
> ------------- |\  Pin0        RefN ____
> ------------- | |-----------------|     |      synced clk
>               | |-----------------| EEC |------------------
> ------------- |/ PinN         RefM|____ |
> Lane N      MUX
> 
> To get the full info a port needs to know the EEC state and which lane is used
> as a source (or rather - my lane or any other).

EEC here is what the PHY documentation calls "Cleanup PLL" right?

> The lane -> Pin mapping is buried in the PHY/MAC, but the source of frequency
> is in the EEC.

Not sure what "source of frequency" means here. There's a lot of
frequencies here.

> What's even more - the Pin->Ref mapping is board specific.

Breaking down the system into components we have:

Port
  A.1 Rx lanes
  A.2 Rx pins (outputs)
  A.3 Rx clk divider
  B.1 Tx lanes
  B.2 Tx pins (inputs)

ECC
  C.1 Inputs
  C.2 Outputs
  C.3 PLL state

In the most general case we want to be able to:
 map recovered clocks to PHY output pins (A.1 <> A.2)
 set freq div on the recovered clock (A.2 <> A.3)
 set the priorities of inputs on ECC (C.1)
 read the ECC state (C.3)
 control outputs of the ECC (C.2)
 select the clock source for port Tx (B.2 <> B.1)

As you said, pin -> ref mapping is board specific, so the API should
not assume knowledge of routing between Port and ECC. If it does just
give the pins matching names.

We don't have to implement the entire design but the pieces we do create
must be right for the larger context. With the current code the
ECC/Cleanup PLL is not represented as a separate entity, and mapping of
what source means is on the wrong "end" of the A.3 <> C.1 relationship.

> The viable solutions are:
> - Limit to the proposed "I drive the clock" vs "Someone drives it" and assume the
>    Driver returns all info
> - return the EEC Ref index, figure out which pin is connected to it and then check
>   which MAC/PHY lane that drives it.
> 
> I assume option one is easy to implement and keep in the future even if we
> finally move to option 2 once we define EEC/DPLL subsystem.
> 
> In future #1 can take the lock information from the DPLL subsystem, but
> will also enable simple deployments that won't expose the whole DPLL, 
> like a filter PLL embedded in a multiport PHY that will only work for
> SyncE in which case this API will only touch a single component.

Imagine a system with two cascaded switch ASICs and a bunch of PHYs.
How do you express that by pure extensions to the proposed API?
Here either the cleanup PLLs would be cascaded (subordinate one needs
to express that its "source" is another PLL) or single lane can be
designated as a source for both PLLs (but then there is only one
"source" bit and multiple "enum if_eec_state"s).

I think we can't avoid having a separate object for ECC/Cleanup PLL. 
You can add it as a subobject to devlink but new genetlink family seems
much preferable given the devlink instances themselves have unclear
semantics at this point. Or you can try to convince Richard that ECC
belongs as part of PTP :)

In fact I don't think you care about any of the PHY / port stuff
currently. All you need is the ECC side of the API. IIUC you have
relatively simple setup where there is only one pin per port, and
you don't care about syncing the Tx clock.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
