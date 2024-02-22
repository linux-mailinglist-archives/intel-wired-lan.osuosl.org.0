Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 475C985F504
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 10:51:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAE414034C;
	Thu, 22 Feb 2024 09:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjK4iMqruxoN; Thu, 22 Feb 2024 09:51:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83E5A41B1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708595513;
	bh=tYXbkmthtSDNeUls404D/ZpViqFJAjLkSPh7YYbl/T4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=noOj0+7so7LJgwk9eIBIvK5vg5TP2u7LWqHLZotqWD71gXZkKr1XMmqJrzjFWO6j8
	 Wel+L3syedHWxdCC3zkvpCJo0vvQoCMeka8WT0+lRwU7kh5abq6Cio/TBlaqd+hvXO
	 5r+9FazQZWXk3NmblBAwATSaVEvS/KXF+DM1uy1cSi6QS+9c6NXEEqciqtDMkE7kgm
	 R0zj3gNF0SqEOzeT8ZqZAhpuj7o1dH8V5F0+LEal2ICRJYLIKFqkbW/Ksm8t3Tao+G
	 +mFsxMqxaQo6v6uhzP2M6XEtGfBFawRTG6J7Wu9yoJp2+ybX/LKzxPuCjW40zhB+ZG
	 ym4TMHp0BWh1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83E5A41B1A;
	Thu, 22 Feb 2024 09:51:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEE4D1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 09:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A80924034C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 09:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zucGqp80eeap for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 09:51:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.237.130.52;
 helo=wp530.webpack.hosteurope.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6C5DB402AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C5DB402AE
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C5DB402AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 09:51:50 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1rd5k0-0003LX-0y; Thu, 22 Feb 2024 10:51:44 +0100
Message-ID: <f41bcb25-0f22-4018-851f-a70ca841cf34@leemhuis.info>
Date: Thu, 22 Feb 2024 10:51:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
 <bce78734-d359-499b-9693-05549e6a73a4@intel.com>
 <CAK8fFZ6PqCwgt1n4iuROs=76esQVSOS-HHL=0eN7+efeKT25Uw@mail.gmail.com>
 <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
 <20240201065726.50a0b1f2@kernel.org>
 <CAK8fFZ6jige-zA5YPMKVf3bB2gCL8WDrY-SCs5EWeJBn5A7YQg@mail.gmail.com>
 <5727309c-6ced-45b8-bb0c-110b3893aa4f@leemhuis.info>
 <CAK8fFZ73=DQrwep_0kdmr9EfjA5CmxKOHcWCyiO7Lg5m1Gqx3A@mail.gmail.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <CAK8fFZ73=DQrwep_0kdmr9EfjA5CmxKOHcWCyiO7Lg5m1Gqx3A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1708595510;
 5d3ed3c7; 
X-HE-SMSGID: 1rd5k0-0003LX-0y
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
 References; bh=tYXbkmthtSDNeUls404D/ZpViqFJAjLkSPh7YYbl/T4=; t=1708595510;
 x=1709027510; b=VoF6Bostjj8kTNVGYoBf/pdeAsV6S+nc3OqLf0cW9TuQNhAeKXZleltN76Gm7
 4y3OYNoczS1fOwZc92gz69t+aV9vaAlwlRzojUs8nWX6L6zOP8fcAwWHzxXiB1RXNHTFT0ik1VbGC
 ic1uAHlXgiM3GgpF56yYxLMp/tAj8zxsf1aF07aR3Jm58syWjHKJ4M0cTx21+HSWA8N2SXaJ9Tezh
 iaoV5ecalIWHjYMfb6PXNINj9dMmNvUwAihjPZpp49rOsZj3BKakY3JmKaKRnL5ha4QFT/FBlptBz
 PiVpDb3v0eehkaMITCTG4t+0YnuerkaZlRIZXd4Rai0I2AXLIA==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=he214686 header.b=VoF6Bost
Subject: Re: [Intel-wired-lan] [REGRESSION] Intel ICE Ethernet driver in
 linux >= 6.6.9 triggers extra memory consumption and cause continous
 kswapd* usage and continuous swapping
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Igor Raits <igor@gooddata.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19.02.24 12:40, Jaroslav Pulchart wrote:
> If the question is for me then my opinion about it is this:
> 
> I'm fine with the behaviour of a driver about memory consumption if it
> is predictable/described with the possibility to change it from
> default values. My understanding of "predictable" is something like
> this:
> 
> The ICE driver is going to
> * Setup 64 queues per each port, not active included.
> * Each queue consumes "xxxx MB" amount of kernel memory per each numa node.
> example: Two 2 ports Intel NICs using ICE driver will consume ~6GB of
> RAM of each NUMA node, please consider changing the defaults values to
> avoid OOM :-).

6GB of RAM for each NUMA node? That sounds, well, a whole lot :-D Makes
me also wonder a bit why nobody else reported this (and if you have any
debug option enable in your .config or something like that that which is
rarely used).

Whatever: to me it still feels like this regression is not handled as
Linus would want it, but I'm not totally sure and guess I have to admit
that I'm out of my depth here. I'll let my regression tracking bot
continue monitor this, but will most likely leave things to the network
and driver maintainers from here on unless something changes.

Ciao, Thorsten

> po 19. 2. 2024 v 12:29 odesílatel Thorsten Leemhuis
> <regressions@leemhuis.info> napsal:
>>
>> On 01.02.24 18:19, Jaroslav Pulchart wrote:
>>>>
>>>> On Wed, 24 Jan 2024 15:29:38 +0100 Linux regression tracking (Thorsten
>>>> Leemhuis) wrote:
>>>>>>> I think that's a bad bisect. There is no reason I could understand for
>>>>>>> that change to cause a continuous or large leak, it really doesn't make
>>>>>>> any sense. Reverting it consistently helps? You're not just rewinding
>>>>>>> the tree back to that point, right? just running 6.6.9 without that
>>>>>>> patch? (sorry for being pedantic, just trying to be certain)
>>>>>>
>>>>>> Reverting just the single bisected commit continuously helps for >=
>>>>>> 6.6.9 and as well for current 6.7.
>>>>>> We cannot use any new linux kernel without reverting it due to this
>>>>>> extra memory utilization.
>>>>>
>>>>> Quick query: what's the status wrt to this regression? Looks like
>>>>> nothing happened in the past week.
>>>>
>>>> Is someone working on this? Indeed the commit in question looks
>>>> harmless but can't argue with the revert helping :S
>>>
>>> No clue if someone is working on it,
>>
>> Yeah, a quick public status update would be really helpful. And maybe
>> some debugging tips that might enable Jaroslav to pinpoint the real
>> problem.
>>
>>> however the commit itself is a
>>> trigger of some other issue.
>>>
>>> The analysis of my colleague Igor (see previous email) shows the
>>> memory consumption is caused by queues of each ice network interface
>>> (even the unused ones). Our final fix was to lower the queues to 6 for
>>> used interfaces and 2 of unused interfaces manually.
>>
>> Despite the above allow me to ask: Can you live with that workaround?
>> Ideally of course this should be fixed, but well, the world sometimes is
>> a tricky place. :-/
>>
>> Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
>> --
>> Everything you wanna know about Linux kernel regression tracking:
>> https://linux-regtracking.leemhuis.info/about/#tldr
>> If I did something stupid, please tell me, as explained on that page.
>>
>> #regzbot poke
> 
> 
