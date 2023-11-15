Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7498A7EBCEE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 07:10:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F8CA81295;
	Wed, 15 Nov 2023 06:10:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F8CA81295
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700028600;
	bh=rFnmlG32xgD1eEVd7pfd1HgWUIWFaHvdwI0e0oeaAFg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=P8bMRNLNvICV4zMkDM+uCQwJQ/g+ytZiCTI2u1rOkw1mTup06ar/OnwfyZ+UYJNJi
	 UkxoSOmv1f62Wsc7SJZUiBhBVh25ERSUsPhwXQuY7/JKdyPad99bbbHAlcdCcXcQVw
	 YhiTJp3fQsKLYCiNgx0Htbe6Ky8/ar5LIyY+ZRWCMqmB6zAss62LfKXWtmob+CeoaR
	 knMqX2yJB6edIdwPXy87etunyzQ1r/s+m1kQStJgo4Ry2Ba1NpPQeIX8PyZC7xbq3L
	 payAg2bhIUE0l28bPYsuErongGeTqt2goevbyqtuQuNwOZ2SSxHnI1fCQWyvrSTQm/
	 ykVwbL5yCglIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id byDg_k1HJrbJ; Wed, 15 Nov 2023 06:09:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E21D811F3;
	Wed, 15 Nov 2023 06:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E21D811F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4C7E1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B49540450
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:09:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B49540450
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-fdHXpsv3cK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 06:09:53 +0000 (UTC)
X-Greylist: delayed 1161 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Nov 2023 06:09:53 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A9E24025A
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A9E24025A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 06:09:53 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1r38nD-0004Iu-Md; Wed, 15 Nov 2023 06:50:27 +0100
Message-ID: <0f97acf9-012d-4bb2-a766-0c2737e32b2c@leemhuis.info>
Date: Wed, 15 Nov 2023 06:50:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Jay Vosburgh <jay.vosburgh@canonical.com>,
 Bagas Sanjaya <bagasdotme@gmail.com>
References: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
 <32716.1700009673@famine>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <32716.1700009673@famine>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1700028593;
 6f89673e; 
X-HE-SMSGID: 1r38nD-0004Iu-Md
Subject: Re: [Intel-wired-lan] sr-iov related bonding regression (two
 regressions in one report)
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: Anil Choudhary <anilchabba@gmail.com>,
 Linux Regressions <regressions@lists.linux.dev>,
 Linux Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Linux Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 15.11.23 01:54, Jay Vosburgh wrote:
> Bagas Sanjaya <bagasdotme@gmail.com> wrote:
> 
>> I come across LACP bonding regression on Bugzilla [1].

Side note: Stephen forwards some (all?) network regressions to the right
people:
https://lore.kernel.org/all/20231113083746.5e02f8b0@hermes.local/

Would be best to check for that, no need to forward things twice, that
just results in a mess.

>> The reporter
>> (Cc'ed) has two regressions. The first is actual LACP bonding
>> regression (but terse):
>>
>>> Till linkx kernel 6.5.7 it is working fine, but after upgrading to 6.6.1 ping stop working with LACP bonding.
>>> When we disable SR-IOV from bios , everything working fine

Makes me wonder if things have been working with or without the OOT
module on 6.5.7, as strictly speaking it's only considered a kernel
regression if thing worked with a vanilla kernel (e.g. without OOT
modules) beforehand and broke when switching to a newer vanilla kernel.
If that's the case it would be okay to add to regzbot.

>> And the second is out-of-tree module FTBFS:
> [... skip OOT stuff ...]
> 
>> Should I add the first regression to regzbot (since the second one
>> is obviously out-of-tree problem), or should I asked detailed regression
>> info to the reporter?
> 
> 	My vote is to get additional information.  Given the nature of
> the workaround ("When we disable SR-IOV from bios , everything working
> fine"), it's plausible that the underlying cause is something
> platform-specific.

Maybe, but when it comes to the "no regressions" rule that likely makes
no difference from Linus perspective.

But I guess unless the intel folks or someone else has an idea what
might be wrong here we likely need a bisection (with vanilla kernels of
course) to get anywhere.

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
