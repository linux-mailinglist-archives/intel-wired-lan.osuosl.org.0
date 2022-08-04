Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 239B258A313
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 00:07:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3688741D1D;
	Thu,  4 Aug 2022 22:07:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3688741D1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659650870;
	bh=SlkPDMsKMthkx3TfKRnZ6LrMkT99gwN9vaCWP+v0pck=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HEreieEmAuQQBPDV3ZFxC2K8JklWBijs0KbkILuBA9c/fPSsfJcJp3vHino1tyjgE
	 tfTG32ueiG4poY1fas/9fVSztN245bihf+YeOMM27m+hcN77jpYjgrx1z/j6ncr2VW
	 1BIAZQMyGg1Kys7esaaXNdOnqg+cSIr7r3hqGgYFTIzNxcyOpy90vbaKi47zd/9ncb
	 6lWUmXiT7gDEzwb3/Ga8MH7MgDZgaPq3HFPn+bs3cObfRN/heJyNRI/GYrBeepOQ0D
	 pqSXox9yDteAYqzTNcCX6LaX8Ra96s5AJcjb0r1OAUGkrEnd3kukDHFPA0T+nr8LDa
	 CN78jsM8mSoAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYqde0ApUzWt; Thu,  4 Aug 2022 22:07:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C613041CDF;
	Thu,  4 Aug 2022 22:07:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C613041CDF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D3871BF302
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 22:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF5B2831FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 22:07:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF5B2831FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J4x3EOyYyfN7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 22:07:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19D3E83143
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19D3E83143
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 22:07:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0020D617ED;
 Thu,  4 Aug 2022 22:07:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01963C433D7;
 Thu,  4 Aug 2022 22:07:36 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Date: Thu, 04 Aug 2022 23:07:34 +0100
Message-ID: <3514132.R56niFO833@saruman>
In-Reply-To: <1838555.CQOukoFCf9@saruman>
References: <4752347.31r3eYUQgx@saruman>
 <e8f33b45-380f-e73e-3879-0e1a478262e9@molgen.mpg.de>
 <1838555.CQOukoFCf9@saruman>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1659650858;
 bh=qfk/9I+kxbtQGiqJamV1UuLOtj2XEbuQqZN8vXHny9Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CADGFRx9jHN6Ch13uZx7PniqvRSV8UIitAabj6B8K1kA5pEEoEcN5hkH4IhR1WT+u
 R/Wvdj73hTkxFIX9oQcMSgl4+RjYRr/3QujslsVaTM1izjETIYr0wz9chMSGoeCDU5
 CRG73/3ox/CFzCSGB6uQbXV1yYkx+K986q+XuUA1OJSSlmGV05l5r4mo2GhD9pfp0w
 Zad2gkgGsSmb2oneJD4PgRpyKX2hh4NJIPLm/QQtaE/cnYB850qQyata/VAIj1aPgn
 3hDiirn1g6aalq+7WeUNyIM+39Z6hlmqWsp+sR/TvXZtm+YSn5praf9h0l3jQO9PQ/
 miFBKE1O6wjAA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CADGFRx9
Subject: Re: [Intel-wired-lan] I225-V (igc driver) hangs after resume in
 igc_resume/igc_tsn_reset
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday, 4 August 2022 22:41:01 BST James Hogan wrote:
> On Thursday, 4 August 2022 14:27:24 BST Paul Menzel wrote:
> > Am 04.08.22 um 15:03 schrieb James Hogan:
> > > On Thursday, 28 July 2022 18:36:31 BST James Hogan wrote:
> > >> On Wednesday, 27 July 2022 15:37:09 BST Vinicius Costa Gomes wrote:
> > >>> Yeah, I agree that it seems like the issue is something else. I would
> > >>> suggest start with the "simple" things, enabling
> > >>> 'CONFIG_PROVE_LOCKING'
> > >>> and looking at the first splat, it could be that what you are seeing
> > >>> is
> > >>> caused by a deadlock somewhere else.
> > >> 
> > >> This is revealing I think (re-enabled PCIE_PTM and enabled
> > >> PROVE_LOCKING).
> > >> 
> > >> In this case it happened within minutes of boot, but a few previous
> > >> attempts with several suspend cycles with the same kernel didn't detect
> > >> the same thing.
> > > 
> > > I hate to nag, but any thoughts on the lockdep recursive locking warning
> > > below? It seems to indicate a recursive taking of rtnl_mutex in
> > > dev_ethtool
> > > and igc_resume, which would certainly seem to point the finger squarely
> > > back at the igc driver.
> > 
> > I hope, the developers will respond quickly. If it is indeed a
> > regression, and you do not want to wait for the developers, you could
> > try to bisect the issue. To speed up the test cycles, I recommend to try
> > to try to reproduce the issue in QEMU/KVM and passing through the
> > network device.
> 
> Unfortunately its new hardware for me, so I don't know if there's a good
> working version of the driver. I've only had constant pain with it so far.
> Frequent failed resumes, hangs on shutdown.
> 
> However I just did a bit more research and found these dead threads from a
> year ago which appear to pinpoint the issue:
> https://lore.kernel.org/all/20210420075406.64105-1-acelan.kao@canonical.com/
> https://lore.kernel.org/all/20210809032809.1224002-1-acelan.kao@canonical.c
> om/

And I just found this patch from December which may have been masked by the 
PTM issues:
https://lore.kernel.org/netdev/20211201185731.236130-1-vinicius.gomes@intel.com/

I'll build and run with that for a few days and see how it goes.

Cheers
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
