Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 407BB6301EA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 23:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A71D8821B2;
	Fri, 18 Nov 2022 22:54:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A71D8821B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668812092;
	bh=fgcsDI7W+BQ36mEF6hZH3c8rTBgMSTBhCFR4HXNFwLw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z47uYTy6SwmeL/wa4ZooAo7eQNvgtcQl9FuLsDNrAfQuEYKwRLTaLUwFqHTaDU5ug
	 RPS0dng9XMDHcEdQG+cWKhVxXKUXVInHuuqGaTOJU3r/UoAnP8BZjQWY+IjCDtcbJ9
	 dFx9iDOb0t3Klx2LHWzMQMUe7V+rEjto3XL2e7/Vugr+vgndZYPlQVOdpOFvYzDCRJ
	 06OK5DMkJO4s6jJRzIwY898NUjJQAR64H72YAbsNnALtCQpD81aEqX844qDt2v08cb
	 n2UbZS+CG1nHwfAjgBUAfs48gNonb5vtXMVy0rBPyDIC5PkA/qm33OIeHS6cB6mK1v
	 NBTs+OZETr+Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5mRUfw3PaVd; Fri, 18 Nov 2022 22:54:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B60B48219C;
	Fri, 18 Nov 2022 22:54:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B60B48219C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 040F91BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 22:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDF4A41A16
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 22:54:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDF4A41A16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmJdibbk_E-C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 22:54:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7E8941926
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7E8941926
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 22:54:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1E2876276C;
 Fri, 18 Nov 2022 22:54:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32327C433D6;
 Fri, 18 Nov 2022 22:54:44 +0000 (UTC)
Date: Fri, 18 Nov 2022 14:54:43 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Conor Dooley <conor@kernel.org>
Message-ID: <20221118145443.427ecf10@kernel.org>
In-Reply-To: <Y3gKkYeijrAIhxjc@spud>
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668812084;
 bh=XUml5e9x1N8Dl9Is55TUP9Q9NxSz45lJssiJwljQByc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lE/NQK2ehTx/soa8rsKQLGmEpYoOE0hryTuRy2m5K0txR1Cr260s0LJYULS70HTRD
 /GvVR93DoAW3rCcZDo4k5+13rBNmT3Xy7FT5ZsLwN4pW4mLaao7cjBDZOU9eqE/FeI
 y9HnFwkni/C3iE38eYcqgJbnrJnF+Wam9AyT166gdBtxKbifwWdRWx6yknz9LjwVbR
 6jw9vzsmrHy09A/LuH5cdVGKHy8cq5opNV+0u6PA//mBmXRpaCdX0bRtrFiosqyZOC
 Stqj7qsjbpG0JdUxFn53Y1rBYgwVBpT3xCCRccwl2Fluzfw+JaKQq0nzJOzO+tb4pe
 pekp37z0mhs8w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lE/NQK2e
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

On Fri, 18 Nov 2022 22:43:29 +0000 Conor Dooley wrote:
> > Is there any update for the community? More and more folks are asking. We
> > are all techies and happy to help debug.  
> 
> Vested interest since I am suffering from the same issue (X670E-F
> Gaming), but is it okay to add this to regzbot? Not sure whether it
> counts as a regression or not since it's new hw with the existing driver,
> but this seems to be falling through the cracks without a response for
> several weeks.

Dunno, Thorsten's will decide. The line has to be drawn somewhere
on "vendor doesn't care about Linux support" vs "we broke uAPI".
This is the kind of situation I was alluding to in my line of
questioning at the maintainer summit: https://lwn.net/Articles/908324/

Finding a kernel release which does not suffer from the problem
would certainly strengthen your case.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
