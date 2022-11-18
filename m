Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43827632A00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Nov 2022 17:50:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B1F5416D0;
	Mon, 21 Nov 2022 16:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B1F5416D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669049429;
	bh=HqjHPR2rLdDi8bf+NczhUKM5gMVvKg8+Z62W4Nt7dm0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ym8nr3F0Cf5H1I/n33ZbuCe50uSlml+kWTZk3Hw3RbC0g4ioMRdLbh2BzJi8LWHF4
	 6bg2TVnwNxyk34A6shHCOxbrUMn7HXcg1XQS9/VTUbs12cUHPNKlJw4JHHgLL6M/Uq
	 +htuf5C6FiM25pUmzl39HzEoyPsFLVUF2pmQNys1O0RxlPsQDHMJ88nxnmbvYseMX+
	 4kfhp1KK6KuH6soU/2srLh3CwBQNCFrdP/5NAP5gwx6DmRQhKg1B0Io5z3fGuMXzql
	 YdCr6fMTSdDF7Zwx5DCDRFRS6gy0hIwGKVv6A1ffl/6rB+gKuzVEgCqYRsCjcf8+HD
	 nwO/16FloCIUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d-0Rb8UJ_DkR; Mon, 21 Nov 2022 16:50:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 041A9416F2;
	Mon, 21 Nov 2022 16:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 041A9416F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A8D81BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 23:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68619610DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 23:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68619610DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0O-wpyaEvbYs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 23:21:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FA4A60AFF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FA4A60AFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 23:21:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8ECEC627F0;
 Fri, 18 Nov 2022 23:21:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7F10C433D7;
 Fri, 18 Nov 2022 23:21:28 +0000 (UTC)
Date: Fri, 18 Nov 2022 23:21:26 +0000
From: Conor Dooley <conor@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y3gTdsg4l71L0vz9@spud>
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud> <20221118145443.427ecf10@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118145443.427ecf10@kernel.org>
X-Mailman-Approved-At: Mon, 21 Nov 2022 16:50:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668813690;
 bh=yq4XAD6qbEKFHEDjO0C0tq5Twf+Stcvxb7JwJYeanAE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N9HFfJIPaBKxGk4Co8pZ6E3sHfINVr02Vr2NTmWOL6vQ5byFsFAcjSwPZtUiyeyC8
 X4VEk+HNQgMMau6kaMq4BDhd0ZB0AxPg3FalGeTq1wQWbecyim2nKlxRknUpzXi065
 z8+jqsxvMCf1xjaFPnHETHbuwaqq4bsTPlDsQVJE+66pwHOL3sXwXMAQw44SyP9Ktl
 s0kXLqwr+kM6TVD9fgUs+g073nrVCkd9Oq2yG6Kw9YigmGWOPlQGmrrxT+Q+chWoa+
 mRfKoafpAKraFlhhVEwMgwDkMZe42hkLQWyKBo5GWqFWrtIP6cDmQV7E/TsRUs0Aej
 +xmu+yOsGs1pg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=N9HFfJIP
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
 Ivan Smirnov <isgsmirnov@gmail.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 18, 2022 at 02:54:43PM -0800, Jakub Kicinski wrote:
> On Fri, 18 Nov 2022 22:43:29 +0000 Conor Dooley wrote:
> > > Is there any update for the community? More and more folks are asking. We
> > > are all techies and happy to help debug.  
> > 
> > Vested interest since I am suffering from the same issue (X670E-F
> > Gaming), but is it okay to add this to regzbot? Not sure whether it
> > counts as a regression or not since it's new hw with the existing driver,
> > but this seems to be falling through the cracks without a response for
> > several weeks.
> 
> Dunno, Thorsten's will decide. The line has to be drawn somewhere
> on "vendor doesn't care about Linux support" vs "we broke uAPI".
> This is the kind of situation I was alluding to in my line of
> questioning at the maintainer summit: https://lwn.net/Articles/908324/

Yeah & it is /regression/ tracking which I don't (or rather didn't)
consider this situation to be. I'm generally a little unsure as to when
I should trigger regzbot in general:
- immediately when I find something?
- only if it goes a while with nothing constructive?
- is it okay to use it outside of "this used to work and now doesnt"?

Either way, but I did some more googling and found this reddit thread:
https://www.reddit.com/r/intel/comments/lqb4km/for_people_having_i225v_connection_issues/

That's being reported against windows & I dunno if the dude is using
firmware and driver interchangeably etc. But the disabling power saving
etc sounds oddly like the issue we have here, since that was a proposed
workaround in Ivan's 2022 reddit thread.

Supposedly I am on firmware-version 1082:8770, but /I/ I have no idea
how that corresponds to windows versioning. That may lend some credence
to your assertion about firmware being the source of many issues.

> Finding a kernel release which does not suffer from the problem
> would certainly strengthen your case.

Aye, likely to be a little difficult to do a meaningful bisection for
me at least, since the motherboard I have with the problem is an AM5
one for the new Zen4 stuff. I'm not an x86 person, so not entirely
sure when that support landed. I may do some poking tomorrow..

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
