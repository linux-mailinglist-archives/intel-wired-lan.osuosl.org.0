Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA21632A05
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Nov 2022 17:50:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 555D0416F7;
	Mon, 21 Nov 2022 16:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 555D0416F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669049441;
	bh=TsBkbwlDrscOl2CcZKVY7HGaTuQajZ6HnHZlt+Tjdps=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4SRHhPAQZe+JNyGm20/QERoNeL0t0FHDY9ZasLYXRdyMWDWfvDGKINC2bLwmicY25
	 0uQNjfDiJ5Bh5UrEyTd9NBIC6ANyyuFh0bbnJStqzBWD5wheXEK7NDacIkGyxZ0F2p
	 ViIzqi/RV+iwSc66BihMYPv2BjdQW8EcS1sy7JCpO2W7vBcIMhm+725njDicImKRF7
	 ZbaY5U/khybjMLakEgVxgNRefXFPHeV6joKTigi8I79lmNUmzXspzjylYlcqhUd929
	 JVAzc10uOt1wIYtuVH0C+6XRcGqyuTNp93vTz7rwpJInmDdUv+EMwV7rfPyVqblv56
	 9JxTlyUlhMx8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mbmDg58QvZqz; Mon, 21 Nov 2022 16:50:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9EA4416CD;
	Mon, 21 Nov 2022 16:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9EA4416CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABD6B1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 19:55:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85F1D60BE1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 19:55:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85F1D60BE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jd7_xMcexQ4I for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Nov 2022 19:55:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40E8F60AC9
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40E8F60AC9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 19:55:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BF0CDB80B4D;
 Sun, 20 Nov 2022 19:55:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B57BC433D6;
 Sun, 20 Nov 2022 19:55:12 +0000 (UTC)
Date: Sun, 20 Nov 2022 19:55:09 +0000
From: Conor Dooley <conor@kernel.org>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <Y3qGHROcvdL1vKip@spud>
References: <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud> <20221118145443.427ecf10@kernel.org>
 <Y3gTdsg4l71L0vz9@spud>
 <a15508df-eab4-ce00-7340-69323c462fdc@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a15508df-eab4-ce00-7340-69323c462fdc@intel.com>
X-Mailman-Approved-At: Mon, 21 Nov 2022 16:50:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668974114;
 bh=cZSsOS0Ut8voiTgIShxVOA/3PE9RyEeZw1A6qbjGPEw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dUJdRvrrH2yLSWj8iU8OHJfSjnr1ObIajAVyUx2Nu6SYErL5TUPYMBohdlndbxsUb
 Okz/NpXPAisDEIULZ0r39WwtLmMZgiN3fSCfZzV9ol+P55Bez+/rfcuQIYINT5hW8Z
 Q2qqOwHn6Li9E6meaCcoLoC1LSJ9BKHQ0OXWoip8xjdgKSX9dLRBCYjdDACmgKVGfW
 L5wikFtz64V4GgzG+HBM6JXnsdmBJsacbeoF2AMErHMSBewMbBNo47O8fJLvgZ3S3k
 +AkAGaS8xUQbDpmTo1zyuwRPZg9v0xrO0dFU7+C4Fxfp4BIpLbB95bzcJjb8xBQGoC
 L27S9Ve46G5xw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dUJdRvrr
Subject: Re: [Intel-wired-lan] igc kernel module crashes on new hardware
 (Intel Ethernet I225-V)
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 regressions@lists.linux.dev, "Meir, NaamaX" <naamax.meir@intel.com>,
 Ivan Smirnov <isgsmirnov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Nov 19, 2022 at 08:06:05PM +0200, Neftin, Sasha wrote:
> On 11/19/2022 01:21, Conor Dooley wrote:
> > On Fri, Nov 18, 2022 at 02:54:43PM -0800, Jakub Kicinski wrote:
> > > On Fri, 18 Nov 2022 22:43:29 +0000 Conor Dooley wrote:
> > > > > Is there any update for the community? More and more folks are asking. We
> > > > > are all techies and happy to help debug.
> > > > 
> > > > Vested interest since I am suffering from the same issue (X670E-F
> > > > Gaming), but is it okay to add this to regzbot? Not sure whether it
> > > > counts as a regression or not since it's new hw with the existing driver,
> > > > but this seems to be falling through the cracks without a response for
> > > > several weeks.
> > > 
> > > Dunno, Thorsten's will decide. The line has to be drawn somewhere
> > > on "vendor doesn't care about Linux support" vs "we broke uAPI".
> > > This is the kind of situation I was alluding to in my line of
> > > questioning at the maintainer summit: https://lwn.net/Articles/908324/
> > 
> > Yeah & it is /regression/ tracking which I don't (or rather didn't)
> > consider this situation to be. I'm generally a little unsure as to when
> > I should trigger regzbot in general:
> > - immediately when I find something?
> > - only if it goes a while with nothing constructive?
> > - is it okay to use it outside of "this used to work and now doesnt"?
> > 
> > Either way, but I did some more googling and found this reddit thread:
> > https://www.reddit.com/r/intel/comments/lqb4km/for_people_having_i225v_connection_issues/
> > 
> > That's being reported against windows & I dunno if the dude is using
> > firmware and driver interchangeably etc. But the disabling power saving
> > etc sounds oddly like the issue we have here, since that was a proposed
> > workaround in Ivan's 2022 reddit thread.
> > 
> > Supposedly I am on firmware-version 1082:8770, but /I/ I have no idea
> > how that corresponds to windows versioning. That may lend some credence
> > to your assertion about firmware being the source of many issues.
> > 
> > > Finding a kernel release which does not suffer from the problem
> > > would certainly strengthen your case.
> > 
> > Aye, likely to be a little difficult to do a meaningful bisection for
> > me at least, since the motherboard I have with the problem is an AM5
> > one for the new Zen4 stuff. I'm not an x86 person, so not entirely
> > sure when that support landed. I may do some poking tomorrow..
> > 
> I do not think we can resolve this problem on this forum.
> In early Ivan's report was reported error to netdev "PCIe link lost, device
> now detached"). Since the PCIe link unexpectedly drops it could lead to many
> problems (not only crashes).

Hmm, I'll take a look at what mine spits out next time it dies, but I
would imagine that you're correct and I see it too.

> Before you go to SW/FW bisection (change FW(NVM), go back with a kernel
> version) - please, contact your board vendor (ASUS). Why PCIe link drop?

I dunno, I suppose it just entered a lower power state!

> Circuit problem on board, the system performs power management flows and
> does not stop the driver.

My GPU and other PCI devices are returning from lower power modes properly.
I wonder what's different about this specific device. As I said, not too
familiar with x86 stuff - is there someone from AMD worth poking as the
output from lspci is a wall of AMD bridges w/ endpoints mixed in.

Doing a cursory look at other x670 stuff - the non-asus ones that I
looked at are not using Intel ethernet.

> "failed to read reg 0xc030" (just symptom) happen after PCIe link lost.

Per 47e16692b26b ("igb/igc: warn when fatal read failure happens"), it
looks as though this is not a *new* problem though as you guys have seen
this while testing.

I've got a 1 G NIC, I like my dev machine to "just work" so I'll probably
throw that in and see how far that gets me. IIRC it's an igb one so will
at least make for a datapoint.

Thanks,
Conor.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
