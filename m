Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D790685A1F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 12:30:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1DF740AB0;
	Mon, 19 Feb 2024 11:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6jU8F-418jeV; Mon, 19 Feb 2024 11:30:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BE9540A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708342205;
	bh=bgzjdYmk6DMGwVpQJpBmTTAVptXw+eOArmMtWvY8dy0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=31lp9+CPsCLqvbwDg7F7bGXf8X6isIOZQtsYUXyk686tJxSYibmzReXlMAF6MuW+z
	 BzL5qNQZa8l2TV4OGFsxgPBL1aBzxmOw5zWMSsy4hpr5r8RI5iJ9ac3IzZOYsGeKFf
	 rG4gGsqwCnNdN4hlCKQW6zRJ2sOZIYGK82XAwL5twh9yH2QVV0NlvesHwMXOBnJrbp
	 HUZQvQGnyI4NadPqEKoyJusYgx/7mCvNDPi1yLbByMXA6WsNa8mSsWe3F7cDbZfixK
	 P6JyOGOQplxzikKljiZFcthU7Lnw/T3WcTCIObenb7EGDDxqnAleLAC4vX6echGhqN
	 MD4Nlhhb1PEEQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BE9540A65;
	Mon, 19 Feb 2024 11:30:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 066011BF370
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 11:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4BE840A61
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 11:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nwFwSSCekSsW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 11:30:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.237.130.52;
 helo=wp530.webpack.hosteurope.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6EB62409C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EB62409C8
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EB62409C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 11:30:00 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1rc1qN-0006Ut-2r; Mon, 19 Feb 2024 12:29:55 +0100
Message-ID: <5727309c-6ced-45b8-bb0c-110b3893aa4f@leemhuis.info>
Date: Mon, 19 Feb 2024 12:29:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
 <bce78734-d359-499b-9693-05549e6a73a4@intel.com>
 <CAK8fFZ6PqCwgt1n4iuROs=76esQVSOS-HHL=0eN7+efeKT25Uw@mail.gmail.com>
 <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
 <20240201065726.50a0b1f2@kernel.org>
 <CAK8fFZ6jige-zA5YPMKVf3bB2gCL8WDrY-SCs5EWeJBn5A7YQg@mail.gmail.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <CAK8fFZ6jige-zA5YPMKVf3bB2gCL8WDrY-SCs5EWeJBn5A7YQg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1708342201;
 66ee2f78; 
X-HE-SMSGID: 1rc1qN-0006Ut-2r
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
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
 Dave Ertman <david.m.ertman@intel.com>, Igor Raits <igor@gooddata.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 01.02.24 18:19, Jaroslav Pulchart wrote:
>>
>> On Wed, 24 Jan 2024 15:29:38 +0100 Linux regression tracking (Thorsten
>> Leemhuis) wrote:
>>>>> I think that's a bad bisect. There is no reason I could understand for
>>>>> that change to cause a continuous or large leak, it really doesn't make
>>>>> any sense. Reverting it consistently helps? You're not just rewinding
>>>>> the tree back to that point, right? just running 6.6.9 without that
>>>>> patch? (sorry for being pedantic, just trying to be certain)
>>>>
>>>> Reverting just the single bisected commit continuously helps for >=
>>>> 6.6.9 and as well for current 6.7.
>>>> We cannot use any new linux kernel without reverting it due to this
>>>> extra memory utilization.
>>>
>>> Quick query: what's the status wrt to this regression? Looks like
>>> nothing happened in the past week.
>>
>> Is someone working on this? Indeed the commit in question looks
>> harmless but can't argue with the revert helping :S
> 
> No clue if someone is working on it,

Yeah, a quick public status update would be really helpful. And maybe
some debugging tips that might enable Jaroslav to pinpoint the real
problem.

> however the commit itself is a
> trigger of some other issue.
> 
> The analysis of my colleague Igor (see previous email) shows the
> memory consumption is caused by queues of each ice network interface
> (even the unused ones). Our final fix was to lower the queues to 6 for
> used interfaces and 2 of unused interfaces manually.

Despite the above allow me to ask: Can you live with that workaround?
Ideally of course this should be fixed, but well, the world sometimes is
a tricky place. :-/

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.

#regzbot poke
