Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE141632A04
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Nov 2022 17:50:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E200C81DE7;
	Mon, 21 Nov 2022 16:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E200C81DE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669049436;
	bh=pyW7baHLIg7pn74gOYV07b12dEXpaORqzsD6TR4KK9E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MLu0Gd8pLTAebHvdaESFZmhsA6AP/MLbFSb5LWOJT5DFTEYbxx3p9FrlVIVbVk3j3
	 lVsIqVw/4cjzfjCG5A1cIdGQzYfVY6idcW2CrSMoxP4aOQS4B0cdaiwLudQ2Wws2AB
	 M7UMc8qZU8uPyoIUp7/Uh1mBydHM0NaxCsk7es6QGQ7+C2IMZSC1+fRPoJVKoIMOnP
	 b/af7Zv8LDbbn6p3slvhl8vte+Cqn1w10/t0hADkrVH7XJTlE3gz/QedzZSM2CU/SP
	 CLywR5M1hSXfGxBwvIVJK8pEQ+OH1oc9QaEPmzcof9fzrA9byrHZc8YGyfQGnSuDKB
	 m1iHpsa9gNeyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NZUw71Xq7V8s; Mon, 21 Nov 2022 16:50:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0AB181A92;
	Mon, 21 Nov 2022 16:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0AB181A92
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 500871BF38A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 18:40:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A4F260BF2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 18:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A4F260BF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qQI_ngqjP54J for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Nov 2022 18:40:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D692160BEF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D692160BEF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Nov 2022 18:40:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 92E4C60C7B;
 Sun, 20 Nov 2022 18:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15309C433D6;
 Sun, 20 Nov 2022 18:40:24 +0000 (UTC)
Date: Sun, 20 Nov 2022 18:40:22 +0000
From: Conor Dooley <conor@kernel.org>
To: Thorsten Leemhuis <regressions@leemhuis.info>
Message-ID: <Y3p0lsVBMK8Ge8Qp@spud>
References: <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud> <20221118145443.427ecf10@kernel.org>
 <Y3gTdsg4l71L0vz9@spud>
 <8117aac8-947e-49ca-c2b1-ef45c2914975@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8117aac8-947e-49ca-c2b1-ef45c2914975@leemhuis.info>
X-Mailman-Approved-At: Mon, 21 Nov 2022 16:50:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668969627;
 bh=IL6rbRNqWxYXvYNDrx+68DN7TWq/FY/OdkWzWHkpV2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J9ME5e+Lds3R1igTMhhQWGqWEHVIxE/Hn6VqHoOz9n06GoleaYryMSD4mkCGiSAJX
 QeDPdytlp+t5ivYYF+B0C++oOkeSZBCEbuvVF2MK8OSTvdSEaQy/SzjrHkwwpKMPZC
 H2ywU2bJSDhkdrvQaI5t+JumQFaAmk2uatCIa+rsq+QXkSHQznOGRAqXVS1n6n/Dt1
 OjmCHi9Ol+aydv/BBcEwpMpSQ7XU6tLq0QX7AXuducHt6gELqOkImZ4bNpKolqTOTt
 DGsKJaiZuaqiNz8N4AoI+C/4ll2Y8EPZM/Da+alUd3fyWIzRJ/2YKx4i7pEpL5vtN8
 EJnAVKZUYw3CQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=J9ME5e+L
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
 regressions@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 Ivan Smirnov <isgsmirnov@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Avivi,
 Amir" <amir.avivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Nov 20, 2022 at 11:32:36AM +0100, Thorsten Leemhuis wrote:
> On 19.11.22 00:21, Conor Dooley wrote:
> > On Fri, Nov 18, 2022 at 02:54:43PM -0800, Jakub Kicinski wrote:
> >> On Fri, 18 Nov 2022 22:43:29 +0000 Conor Dooley wrote:
> >>>> Is there any update for the community? More and more folks are asking. We
> >>>> are all techies and happy to help debug.  
> >>>
> >>> Vested interest since I am suffering from the same issue (X670E-F
> >>> Gaming), but is it okay to add this to regzbot? Not sure whether it
> >>> counts as a regression or not since it's new hw with the existing driver,
> >>> but this seems to be falling through the cracks without a response for
> >>> several weeks.
> >>
> >> Dunno, Thorsten's will decide. The line has to be drawn somewhere
> >> on "vendor doesn't care about Linux support" vs "we broke uAPI".
> >> This is the kind of situation I was alluding to in my line of
> >> questioning at the maintainer summit: https://lwn.net/Articles/908324/
> > 
> > Yeah & it is /regression/ tracking which I don't (or rather didn't)
> > consider this situation to be.
> 
> Yeah, looks like this is not something that look track-worthy for
> regzbot -- at least for now, maybe it one day makes sense to use and
> improved regzbot for bug reports as well, but I'd like to focus on
> establishing regression tracking properly first, which still requires a
> lot of work.
> 
> > I'm generally a little unsure as to when
> > I should trigger regzbot in general:
> > - immediately when I find something?
> 
> Yes, ideally, as documented here:
> https://docs.kernel.org/admin-guide/reporting-regressions.html
> 
> > - only if it goes a while with nothing constructive?
> 
> But that is fine as well. But FWIW, we all don't want bureaucracy. Even
> I don't add each and every regression I see to the tracking yet.
> 
> > - is it okay to use it outside of "this used to work and now doesnt"?
> 
> Guess I should clarify that this is unwanted in above doc.

Right. I wasn't sure if it was okay to use it for "this never worked"
type of issues. Thanks Thorsten!

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
