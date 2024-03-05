Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF87871FBA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 14:01:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6835241680;
	Tue,  5 Mar 2024 13:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3tOgeBywGgF; Tue,  5 Mar 2024 13:01:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1528B41675
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709643674;
	bh=C35oy+gp5SOol1L0HxLq0i85k6CXt5kYA/95s0UUOIo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=T6lwKkh6lhL6j3NvrzxFLZKUxILItjP7/lWGK3CxLvL6yLukriBLTa6wmwFHgathf
	 85WdFK54/zUiTNkIXIFtSwrneJ/QWnw1giiwohv808Ju/wBH9DsqOpl5JWnHDgTwet
	 ArnV2AHCMcxmJFqVHgZwzexFJzev9OVaEjEshBuH2dcW87GOttIZ8Wp7yFaplNR8ME
	 69gQ+8YA/zUQn73VAShv7Wi3CF6Gy5jS2xHPHYEHAM1OMA6es0oyim6MMsUi317t7c
	 kGvjq44PYsCNxypOlSnlqxbyeMbLIZD4slzgejSXudKA4UrF8lZ7XJd0o+dEal6GSS
	 tZGHU3QKz395A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1528B41675;
	Tue,  5 Mar 2024 13:01:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FE701BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 13:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A34C82195
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 13:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZOgxefF5pMUm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 13:01:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.237.130.52;
 helo=wp530.webpack.hosteurope.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4FFA2820DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FFA2820DE
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FFA2820DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 13:01:04 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1rhUPf-00026i-8o; Tue, 05 Mar 2024 14:00:55 +0100
Message-ID: <d05966fc-7daa-42a9-a125-ffc1478be430@leemhuis.info>
Date: Tue, 5 Mar 2024 14:00:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
 <bce78734-d359-499b-9693-05549e6a73a4@intel.com>
 <CAK8fFZ6PqCwgt1n4iuROs=76esQVSOS-HHL=0eN7+efeKT25Uw@mail.gmail.com>
 <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
 <20240201065726.50a0b1f2@kernel.org>
 <CAK8fFZ6jige-zA5YPMKVf3bB2gCL8WDrY-SCs5EWeJBn5A7YQg@mail.gmail.com>
 <5727309c-6ced-45b8-bb0c-110b3893aa4f@leemhuis.info>
 <CAK8fFZ73=DQrwep_0kdmr9EfjA5CmxKOHcWCyiO7Lg5m1Gqx3A@mail.gmail.com>
 <f41bcb25-0f22-4018-851f-a70ca841cf34@leemhuis.info>
In-Reply-To: <f41bcb25-0f22-4018-851f-a70ca841cf34@leemhuis.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1709643665;
 ed423445; 
X-HE-SMSGID: 1rhUPf-00026i-8o
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
 Message-ID:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 In-Reply-To:References; bh=C35oy+gp5SOol1L0HxLq0i85k6CXt5kYA/95s0UUOIo=;
 t=1709643665; x=1710075665; b=MkEtnIQgabhIxSi0V2JCz1I1zrwCNMHygkAfjJT9Zl7KYBJ
 YdPXEsfwtGMPz26uAZxB+OvSCUADGJ9t/y3irUiP8WhTp0Ndw8rApbcompU2PDX30S8O4lBY+hu0G
 PvWe/UrUd7T2Hl9Ba9unh6Z/Z53z/EMMYC9JjCgYGPIy69zsLdmoG03Xz0l4PvsskS82gkBhvMyRF
 DcMV+8ncwZi2xidBwpT2jOAROqF+bSkl5rm3wn/sItz3rlmvpTyzpWjcLda+WswKpJlOgHZZSj/xm
 pHcb0wIrweJtzqf2rpY+eh3qrtH3JS4Ocdjoo7qYgFGqMmJgH0C9qWGyrQqFZl+w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=he214686 header.b=MkEtnIQg
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Igor Raits <igor@gooddata.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 22.02.24 10:51, Thorsten Leemhuis wrote:
> On 19.02.24 12:40, Jaroslav Pulchart wrote:
>> If the question is for me then my opinion about it is this:
>>
>> I'm fine with the behaviour of a driver about memory consumption if it
>> is predictable/described with the possibility to change it from
>> default values. My understanding of "predictable" is something like
>> this:
>>
>> The ICE driver is going to
>> * Setup 64 queues per each port, not active included.
>> * Each queue consumes "xxxx MB" amount of kernel memory per each numa node.
>> example: Two 2 ports Intel NICs using ICE driver will consume ~6GB of
>> RAM of each NUMA node, please consider changing the defaults values to
>> avoid OOM :-).
> [...]
> Whatever: to me it still feels like this regression is not handled as
> Linus would want it, but I'm not totally sure and guess I have to admit
> that I'm out of my depth here. I'll let my regression tracking bot
> continue monitor this, but will most likely leave things to the network
> and driver maintainers from here on unless something changes.

FWIW, it seems nobody really cares, so I'll strop tracking this issue:

#regzbot inconclusive: might not qualify as a regression

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.


>> po 19. 2. 2024 v 12:29 odesílatel Thorsten Leemhuis
>> <regressions@leemhuis.info> napsal:
>>>
>>> On 01.02.24 18:19, Jaroslav Pulchart wrote:
>>>>>
>>>>> On Wed, 24 Jan 2024 15:29:38 +0100 Linux regression tracking (Thorsten
>>>>> Leemhuis) wrote:
>>>>>>>> I think that's a bad bisect. There is no reason I could understand for
>>>>>>>> that change to cause a continuous or large leak, it really doesn't make
>>>>>>>> any sense. Reverting it consistently helps? You're not just rewinding
>>>>>>>> the tree back to that point, right? just running 6.6.9 without that
>>>>>>>> patch? (sorry for being pedantic, just trying to be certain)
>>>>>>>
>>>>>>> Reverting just the single bisected commit continuously helps for >=
>>>>>>> 6.6.9 and as well for current 6.7.
>>>>>>> We cannot use any new linux kernel without reverting it due to this
>>>>>>> extra memory utilization.
>>>>>>
>>>>>> Quick query: what's the status wrt to this regression? Looks like
>>>>>> nothing happened in the past week.
>>>>>
>>>>> Is someone working on this? Indeed the commit in question looks
>>>>> harmless but can't argue with the revert helping :S
>>>>
>>>> No clue if someone is working on it,
>>>
>>> Yeah, a quick public status update would be really helpful. And maybe
>>> some debugging tips that might enable Jaroslav to pinpoint the real
>>> problem.
>>>
>>>> however the commit itself is a
>>>> trigger of some other issue.
>>>>
>>>> The analysis of my colleague Igor (see previous email) shows the
>>>> memory consumption is caused by queues of each ice network interface
>>>> (even the unused ones). Our final fix was to lower the queues to 6 for
>>>> used interfaces and 2 of unused interfaces manually.
>>>
>>> Despite the above allow me to ask: Can you live with that workaround?
>>> Ideally of course this should be fixed, but well, the world sometimes is
>>> a tricky place. :-/
>>>
>>> Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
>>> --
>>> Everything you wanna know about Linux kernel regression tracking:
>>> https://linux-regtracking.leemhuis.info/about/#tldr
>>> If I did something stupid, please tell me, as explained on that page.
>>>
>>> #regzbot poke
>>
>>
> 
> 
