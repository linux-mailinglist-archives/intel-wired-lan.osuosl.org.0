Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E2E315758
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 21:03:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AF4E87192;
	Tue,  9 Feb 2021 20:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qlHOSxDNBwXX; Tue,  9 Feb 2021 20:03:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A769986F6B;
	Tue,  9 Feb 2021 20:03:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64AA41BF284
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 20:02:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6033187136
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 20:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4my8Fia2EmBE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Feb 2021 20:02:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 72F3186F6B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 20:02:29 +0000 (UTC)
IronPort-SDR: u8clUsXJynwifwPhy4R6ouBZhdG2QrH6Av09g5hBH5GhvGd4Mi782E7M1XuTKbXjHHN7JVypk/
 bxmSBdXBaTnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="182017620"
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="182017620"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 12:02:24 -0800
IronPort-SDR: fk/5acduMlgtY5lCCanWg5xXA1vbaDjmnWqwtJQ02aThMZTbaTwAlKojSX/NZ4ZE5njXvaM2Z1
 nRhTkZyw4yrQ==
X-IronPort-AV: E=Sophos;i="5.81,166,1610438400"; d="scan'208";a="396372772"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.14.81])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 12:02:23 -0800
Date: Tue, 9 Feb 2021 12:02:23 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Dan Siemon <dan@coverfire.com>
Message-ID: <20210209120223.000041ca@intel.com>
In-Reply-To: <d3f0614118192ba0df5ec0e845f61e092f187744.camel@coverfire.com>
References: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
 <AB117487-C2C3-47EF-A3C4-FDCED9304282@intel.com>
 <8c7d255047890290948cf51450b1f860e013b48c.camel@coverfire.com>
 <d3f0614118192ba0df5ec0e845f61e092f187744.camel@coverfire.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 09 Feb 2021 20:03:29 +0000
Subject: Re: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
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
Cc: "intel-wired-lan@lists.osuosl.org\"
 <intel-wired-lan@lists.osuosl.org>"@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dan Siemon wrote:

> On Sat, 2021-02-06 at 22:59 -0500, Dan Siemon wrote:
> > On Sun, 2021-02-07 at 02:24 +0000, Brandeburg, Jesse wrote:
> > > Hi Dan, I am asking around to see what we can do, will get back to
> > > you in the coming week.
> > 
> > Thanks. I was looking at some old Intel presentations that sort of
> > hinted that the PPPoE DDP profile might support double VLANs. I've
> > been
> > experimenting with that today without luck so far. The profile loads
> > fine (via ethtool) but I don't see any change in the traffic
> > distribution.

Hi Dan, I've got some good and bad news, and I have a request. Thanks
for your work troubleshooting this and reporting the issue.

...

> Given some of the complex parsing that the GTP and PPP DDP profiles do,
> I suspect the hardware is capable of doing what I require.
> 
> For clarity, what I need is the ability to skip 0,1,2 VLAN headers
> (802.1a or 802.1ad) and parse the IP/IPv6 flow to get the RSS hash and
> spread the traffic across queues. Currently it only handles one VLAN.
> 
> Nested VLANs are very common in the service provider space.

The hardware *can* support what you're trying to do, our organization
is aware of the issue, but I am going to file a separate internal
ticket to track your issue. The good news is the work is in progress,
the bad news is that we don't have an immediate fix for you. I suspect
the work on flushing out the features and interactions won't be complete
until Q2 or Q3 of this year. The complexity (and delay) comes from
making sure all the options of stacking vlans, working with SR-IOV, etc
still work with the changes. 

Please provide us with which driver/kernel/firmware you're running,
uname -a
ethtool -i ethx
lspci -vvv -s < your pci bus:dev.fn>

This will help me provide details to our engineering. I'd like us to be
able to provide you a short term workaround in code, but I'm
investigating if that is feasible.

Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
