Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3826C46543C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 18:48:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8BCB82B1B;
	Wed,  1 Dec 2021 17:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3TvWsHmO64we; Wed,  1 Dec 2021 17:48:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C699582AAA;
	Wed,  1 Dec 2021 17:48:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0ECD41BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 17:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED3BF4015B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 17:47:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ADrAHgEwrJ5Q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Dec 2021 17:47:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBF22400C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Dec 2021 17:47:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236332809"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="236332809"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:47:54 -0800
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="512129845"
Received: from ammonk-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.205.220])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:47:53 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Thorsten Leemhuis <regressions@leemhuis.info>, Stefan Dietrich
 <roots@gmx.de>, Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <cd155eaf-8559-b7ad-d9da-818f59f21872@leemhuis.info>
References: <924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de>
 <YZ3q4OKhU2EPPttE@kroah.com>
 <8119066974f099aa11f08a4dad3653ac0ba32cd6.camel@gmx.de>
 <20211124153449.72c9cfcd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87a6htm4aj.fsf@intel.com>
 <227af6b0692a0a57f5fb349d4d9c914301753209.camel@gmx.de>
 <cd155eaf-8559-b7ad-d9da-818f59f21872@leemhuis.info>
Date: Wed, 01 Dec 2021 09:47:52 -0800
Message-ID: <87r1awtdx3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [REGRESSION] Kernel 5.15 reboots / freezes
 upon ifup/ifdown
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
Cc: regressions@lists.linux.dev, Greg KH <greg@kroah.com>,
 stable@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Thorsten Leemhuis <regressions@leemhuis.info> writes:

> Hi, this is your Linux kernel regression tracker speaking.
>
> On 25.11.21 09:41, Stefan Dietrich wrote:
>> 
>> thanks - this was spot-on: disabling CONFIG_PCIE_PTM resolves the issue
>> for latest 5.15.4 (stable from git) for both manual and network-manager
>> NIC configuration.
>> 
>> Let me know if I may assist in debugging this further.
>
> What is the status here? There afaics hasn't been any progress since
> nearly a week.
>
> Vinicius, do you still have this on your radar? Or was there some progress?
>
> Or is this really related to another issue, as Jakub suspected? Then it
> might be solved by the patch here:
>
> https://bugzilla.kernel.org/show_bug.cgi?id=215129

What I am thinking right now is that we are facing a similar problem as
the bug above, only in the igc driver. The difference is that it's the
PCIe PTM messages (from the PCIe root) that are triggering the deadlock
in the suspend/resume path in igc.

I will produce a patch in a few moments, very similar to the one in the
bug report, let's see if it helps.

>
> Ciao, Thorsten
>
>> On Wed, 2021-11-24 at 17:07 -0800, Vinicius Costa Gomes wrote:
>>> Hi Stefan,
>>>
>>> Jakub Kicinski <kuba@kernel.org> writes:
>>>
>>>> On Wed, 24 Nov 2021 18:20:40 +0100 Stefan Dietrich wrote:
>>>>> Hi all,
>>>>>
>>>>> six exciting hours and a lot of learning later, here it is.
>>>>> Symptomatically, the critical commit appears for me between
>>>>> 5.14.21-
>>>>> 051421-generic and 5.15.0-051500rc2-generic - I did not find an
>>>>> amd64
>>>>> build for rc1.
>>>>>
>>>>> Please see the git-bisect output below and let me know how I may
>>>>> further assist in debugging!
>>>>
>>>> Well, let's CC those involved, shall we? :)
>>>>
>>>> Thanks for working thru the bisection!
>>>>
>>>>> a90ec84837325df4b9a6798c2cc0df202b5680bd is the first bad commit
>>>>> commit a90ec84837325df4b9a6798c2cc0df202b5680bd
>>>>> Author: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>>>>> Date:   Mon Jul 26 20:36:57 2021 -0700
>>>>>
>>>>>     igc: Add support for PTP getcrosststamp()
>>>
>>> Oh! That's interesting.
>>>
>>> Can you try disabling CONFIG_PCIE_PTM in your kernel config? If it
>>> works, then it's a point in favor that this commit is indeed the
>>> problematic one.
>>>
>>> I am still trying to think of what could be causing the lockup you
>>> are
>>> seeing.
>>>
>>>
>
> P.S.: As a Linux kernel regression tracker I'm getting a lot of reports
> on my table. I can only look briefly into most of them. Unfortunately
> therefore I sometimes will get things wrong or miss something important.
> I hope that's not the case here; if you think it is, don't hesitate to
> tell me about it in a public reply. That's in everyone's interest, as
> what I wrote above might be misleading to everyone reading this; any
> suggestion I gave they thus might sent someone reading this down the
> wrong rabbit hole, which none of us wants.
>
> BTW, I have no personal interest in this issue, which is tracked using
> regzbot, my Linux kernel regression tracking bot
> (https://linux-regtracking.leemhuis.info/regzbot/). I'm only posting
> this mail to get things rolling again and hence don't need to be CC on
> all further activities wrt to this regression.
>
> #regzbot poke

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
