Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF444041FA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 01:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3929C835D9;
	Wed,  8 Sep 2021 23:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jkXjzF9MYyRF; Wed,  8 Sep 2021 23:58:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47F4783438;
	Wed,  8 Sep 2021 23:58:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E930F1BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D68724070C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4J_E3XcuFAbD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 23:58:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34EEE40703
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:58:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 637B661074;
 Wed,  8 Sep 2021 23:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631145483;
 bh=naqFHkyuBJj75mYvsBiHe8qSClYBBKiI1/BuxmIm9Rc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JZjlze49Z84VDPYYfXqYdWFDEUisnWjMKAHNR4JLCOM9bKq90K7M4MqpqsRhnH+Nd
 WAIF4JFhDWbdo72pXx89d/i3xRFdssgDzTjrTQCQw7eh6tTOSDz8CLtn9XdO1BKqkg
 s7F1OorDuTZZhsgS4doHJ2tab8EElZGmRh12bRXUqywjXAL4hhLCDn8gcjXoOw1S+C
 3pGCaNmxtOoylC5oNIKVeERm20Bs+SZzoBAogKqI6U0zzeimh0+jbedBxy6FMcoZTF
 5VIPFOLq3DMzEmZ6ZMdS9JtdUJLM6hrYxT7J875+3aRqntafz5qdmqqp8UPCSHW1II
 5mile4vYJlcJA==
Date: Wed, 8 Sep 2021 16:58:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20210908165802.1d5c952d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YTlD3Gok7w/MF+g2@lunn.ch>
References: <PH0PR11MB49511F2017F48BBAAB2A065CEAD29@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210906180124.33ff49ef@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908151852.7ad8a0f1@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YTlD3Gok7w/MF+g2@lunn.ch>
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
Cc: Michal Kubecek <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>, Saeed Mahameed <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 9 Sep 2021 01:14:36 +0200 Andrew Lunn wrote:
> > As you said, pin -> ref mapping is board specific, so the API should
> > not assume knowledge of routing between Port and ECC.  
> 
> That information will probably end up in device tree. And X different
> implementations of ACPI, unless somebody puts there foot down and
> stops the snow flakes.
> 
> > Imagine a system with two cascaded switch ASICs and a bunch of PHYs.
> > How do you express that by pure extensions to the proposed API?  
> 
> Device tree is good at that. ACPI might eventually catch up.

I could well be wrong but some of those connectors could well be just
SMAs on the back plate, no? User could cable those up to their heart
content.

https://engineering.fb.com/2021/08/11/open-source/time-appliance/

> How complex a setup do we actually expect? Can there be multiple
> disjoint SyncE trees within an Ethernet switch cluster? Or would it be
> reasonable to say all you need to configure is the clock source, and
> all other ports of the switches are slaves if SyncE is enabled for the
> port? I've never see any SOHO switch hardware which allows you to have
> disjoint PTP trees, so it does not sound too unreasonable to only
> allow a single SyncE tree per switch cluster.

Not sure. I get the (perhaps unfounded) feeling that just forwarding
the clock from one port to the rest is simpler. Maciej cares primarily
about exposing the clock to other non-Ethernet things, the device would
be an endpoint here, using the clock for LTE or whatnot.

> Also, if you are cascading switches, you generally don't put PHYs in
> the middle, you just connect the SERDES lanes together.

My concern was a case where PHY connected to one switch exposes the
refclock on an aux pin which is then muxed to more than one switch ASIC.
IOW the "source port" is not actually under the same switch. 

Again, IDK if that's realistic.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
