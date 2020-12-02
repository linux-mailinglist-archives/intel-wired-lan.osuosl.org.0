Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED89E2CC790
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 21:14:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D3B987201;
	Wed,  2 Dec 2020 20:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x7kFhMgACWwT; Wed,  2 Dec 2020 20:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DF8287281;
	Wed,  2 Dec 2020 20:14:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 782BE1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E17C203AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8xiPKk3uFoo2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 20:14:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 352FA1FEED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:14:28 +0000 (UTC)
Date: Wed, 2 Dec 2020 14:14:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606940067;
 bh=BnksKH2mu/AIusjM7w3qtsMo+YYe0Fmuw1JBYItwDJ8=;
 h=From:To:Cc:Subject:In-Reply-To:From;
 b=eATGBHy5IcBoesjh68RbtIiCHyqzTkB62ErRCXv22EQl+qt05Tqmu3AFQ95XBrm9B
 XggkOfC5NEf86set8LG4s8thG/fWEoLCnDJc1SDhJ4vsUNTnxLzXhCo0M5vK4GF5lk
 x+YTYbHX6NpK/ZVroc0c31Jf0mQ7kF3PGcTAQ7woi7xcCPUIRKUyLWco9AK1ifE/Sw
 IhLkVnUMz600t/kIOmaKdlcP/ZG+UegPpp8RvG1qhwmdLwSLADBJA7mhpuqYeq6Pyf
 78y3wXGPl7dCNj/OQPShj9sAdCGQg+PHKPHDZN2ZEnfoBXqLO/FZIws5VtA1HS689s
 dy7qS9cKxHj8A==
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>
Message-ID: <20201202201425.GA1467301@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR19MB26365E4B4EA330B499A325CBFAF30@DM6PR19MB2636.namprd19.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Improve s0ix flows for systems
 i219LM
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, "Yuan,
 Perry" <Perry.Yuan@dell.com>, "Shen, Yijun" <Yijun.Shen@dell.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 02, 2020 at 07:24:28PM +0000, Limonciello, Mario wrote:
> > -----Original Message-----
> > From: Jakub Kicinski <kuba@kernel.org>
> > Sent: Wednesday, December 2, 2020 13:07
> > To: Limonciello, Mario
> > Cc: Tony Nguyen; intel-wired-lan@lists.osuosl.org; Linux PM; Netdev; Alexander
> > Duyck; Sasha Netfin; Aaron Brown; Stefan Assmann; David Miller;
> > darcari@redhat.com; Shen, Yijun; Yuan, Perry
> > Subject: Re: [PATCH v2 0/5] Improve s0ix flows for systems i219LM
> > 
> > 
> > [EXTERNAL EMAIL]
> > 
> > On Wed,  2 Dec 2020 10:17:43 -0600 Mario Limonciello wrote:
> > > commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> > systems")
> > > disabled s0ix flows for systems that have various incarnations of the
> > > i219-LM ethernet controller.  This was done because of some regressions
> > > caused by an earlier
> > > commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> > > with i219-LM controller.
> > >
> > > Performing suspend to idle with these ethernet controllers requires a
> > properly
> > > configured system.  To make enabling such systems easier, this patch
> > > series allows turning on using ethtool.
> > >
> > > The flows have also been confirmed to be configured correctly on Dell's
> > Latitude
> > > and Precision CML systems containing the i219-LM controller, when the kernel
> > also
> > > contains the fix for s0i3.2 entry previously submitted here:
> > > https://marc.info/?l=linux-netdev&m=160677194809564&w=2
> > >
> > > Patches 3 and 4 will turn the behavior on by default for Dell's CML systems.
> > > Patch 5 allows accessing the value of the flags via ethtool to tell if the
> > > heuristics have turned on s0ix flows, as well as for development purposes
> > > to determine if a system should be added to the heuristics list.
> > 
> > I don't see PCI or Bjorn Helgaas CCed.
> > 
> > You can drop linux-kernel tho.
> 
> Correct, that was intentional that PCI (and Bjorn) weren't added.  Since I came
> up with a way to detect platforms without DMI as suggested and this is entirely
> controlling a driver behavior within e1000e only on systems with i219-LM I
> didn't think that PCI ML was actually needed.
> 
> Since you disagree, I'll add Bjorn into this thread.
> 
> @Bjorn Helgaas,
> 
> Apologies that you're looped in this way rather than directly to the submission,
> but the cover letter is above and the patch series can be viewed at this patchwork
> if you would like to fetch the mbox and respond to provide any comments.
> 
> https://patchwork.ozlabs.org/project/netdev/list/?series=218121
> 
> I'll include you directly if any future v3 is necessary.

No need, I don't think.  AFAICT there's nothing there related to the
PCI core.  Thanks!

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
