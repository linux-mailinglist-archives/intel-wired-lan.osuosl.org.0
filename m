Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1594483AE5F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 17:31:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF42D60E41;
	Wed, 24 Jan 2024 16:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF42D60E41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706113883;
	bh=bgPfTlVHSACrj7H7R9Sw5eQrMvZRDYsvEnKzEjWC5+M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JAiUtetdnX7yZddq7DfFX1yE2R65WOfTR7BBt7B/FNggK/jyT+E8buznPaGTuBO5n
	 z5sotf7I129Laj5w26CeaFsGEgAT0WQsHxtlmaL8hk6Dw46ZU3CS9g+1WEXaDDpl2b
	 DZgYwIgdfw5A2dMVh2pn1G77mBq7Vkedqy86egxtLBQAMFyd25811dDYXk1sA71m0w
	 mp5YuQ9JifFyEGDetMOz9yCwh6kUoZS7F5YZ/kzhmNd1eyImnIOy5FUGNC3FpLid84
	 K9f6qjj29maLMw+u1SZvUGQLe0J4qLjxAba6hfFMWCm/L4B2194oacYWi3zP+CjI8a
	 kZ2wY9hPw2emg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ilmwUBxkf8US; Wed, 24 Jan 2024 16:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4008C60D7B;
	Wed, 24 Jan 2024 16:31:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4008C60D7B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93E0C1BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 16:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B5C1833A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 16:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B5C1833A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SRdr5oRva1bQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 16:31:14 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 703F9833A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 16:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 703F9833A0
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AD38C61E5FE03;
 Wed, 24 Jan 2024 17:30:37 +0100 (CET)
Message-ID: <7b63aaff-821f-47d9-9b02-c1de9d9c5866@molgen.mpg.de>
Date: Wed, 24 Jan 2024 17:30:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 regressions@lists.linux.dev, Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
 <bce78734-d359-499b-9693-05549e6a73a4@intel.com>
 <CAK8fFZ6PqCwgt1n4iuROs=76esQVSOS-HHL=0eN7+efeKT25Uw@mail.gmail.com>
 <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <898b6ac8-186d-4675-a1e7-abd78b885d01@leemhuis.info>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: intel-wired-lan@lists.osuosl.org, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jaroslav,


Am 24.01.24 um 15:29 schrieb Linux regression tracking (Thorsten Leemhuis):

> On 11.01.24 09:26, Jaroslav Pulchart wrote:
>>> On 1/8/2024 2:49 AM, Jaroslav Pulchart wrote:
>>> First, thank you for your work trying to chase this!
>>>> I would like to report a regression triggered by recent change in
>>>> Intel ICE Ethernet driver in the 6.6.9 linux kernel. The problem was
>>>> bisected and the regression is triggered by
>>>> fc4d6d136d42fab207b3ce20a8ebfd61a13f931f "ice: alter feature support
>>>> check for SRIOV and LAG" commit and originally reported as part of
>>>> https://lore.kernel.org/linux-mm/CAK8fFZ4DY+GtBA40Pm7Nn5xCHy+51w3sfxPqkqpqakSXYyX+Wg@mail.gmail.com/T/#m5217c62beb03b3bc75d7dd4b1d9bab64a3e68826
>>>> thread.
>>>
>>> I think that's a bad bisect. There is no reason I could understand for
>>> that change to cause a continuous or large leak, it really doesn't make
>>> any sense. Reverting it consistently helps? You're not just rewinding
>>> the tree back to that point, right? just running 6.6.9 without that
>>> patch? (sorry for being pedantic, just trying to be certain)
>>
>> Reverting just the single bisected commit continuously helps for >=
>> 6.6.9 and as well for current 6.7.
>> We cannot use any new linux kernel without reverting it due to this
>> extra memory utilization.
> 
> Quick query: what's the status wrt to this regression? Looks like
> nothing happened in the past week.
> 
> Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
> --
> Everything you wanna know about Linux kernel regression tracking:
> https://linux-regtracking.leemhuis.info/about/#tldr
> If I did something stupid, please tell me, as explained on that page.
> 
> #regzbot poke

According to Linux’ “no regression rule” [1], I recommend to send in a 
revert for the bisected commit.


Kind regards,

Paul


[1]: 
https://www.kernel.org/doc/html/latest/admin-guide/reporting-regressions.html

>>>>> However, after the following patch we see that more NUMA nodes have
>>>>> such a low amount of memory and  that is causing constant reclaiming
>>>>> of memory because it looks like something inside of the kernel ate all
>>>>> the memory. This is right after the start of the system as well.
>>>>
>>>>   I'm reporting it here as it is a different problem than the original
>>>> thread. The commit introduces a low memory problem per each numa node
>>>> of the first socket (node0 .. node3 in our case) and cause constant
>>>> kswapd* 100% CPU usage. See attached 6.6.9-kswapd_usage.png. The low
>>>> memory issue is nicely visible in "numastat -m", see attached files:
>>>> * numastat_m-6.6.10_28GB_HP_ice_revert.txt   >= 6.6.9 with reverted ice commit
>>>> * numastat_m-6.6.10_28GB_HP_no_revert.txt    >= 6.6.9 vanilla
>>>> the server "is fresh" (after reboot), without running any application load.
>>>
>>> OK, so the initial allocations of your system is running your system out
>>> of memory.
>>>
>>> Are you running jumbo frames on your ethernet interfaces?
>>
>> Yes, we are (MTU 9000).
>>
>>> Do you have /proc/slabinfo output from working/non-working boot?
>>
>> Yes, I have a complete sos report so I can pick-up files from there.
>> See attached
>> slabinfo.vanila (non-working)
>> slabinfo.reverted (working)
>>
>>>> $ grep MemFree numastat_m-6.6.10_28GB_HP_ice_revert.txt
>>>> numastat_m-6.6.10_28GB_HP_no_revert.txt
>>>> numastat_m-6.6.10_28GB_HP_ice_revert.txt:MemFree
>>>> 2756.89         2754.86          100.39         2278.43         < ice
>>>> fix is reverted, we have ~2GB free per numa, except one, like before
>>>> == no issue
>>>> numastat_m-6.6.10_28GB_HP_ice_revert.txt:MemFree
>>>> 3551.29         1530.52         2212.04         3488.09
>>>> ...
>>>> numastat_m-6.6.10_28GB_HP_no_revert.txt:MemFree
>>>> 127.52           66.49          120.23          263.47               <
>>>
>>>
>>>> ice fix is present, we see just few MB free per each node, this will
>>>> cause kswapd utilization!
>>>> numastat_m-6.6.10_28GB_HP_no_revert.txt:MemFree
>>>> 3322.18         3134.47          195.55          879.17
>>>> ...
>>>>
>>>> If you have some hints on how to debug what is actually occupying all
>>>> that memory and some fix of the problem will be nice. We can provide
>>>> testing and more reports if needed to analyze the issue. We reverted
>>>> the commit fc4d6d136d42fab207b3ce20a8ebfd61a13f931f as a workaround
>>>> till we know a proper fix.
>>>
>>> My first suspicion is that we're contributing to the problem by running
>>> out of receive descriptors memory.
>>>
>>> Can we see the ethtool -S stats from the freshly booted system that's
>>> running out of memory or doing OOM? Also, all the standard debugging
>>> info (at least once please), devlink dev info, any other configuration
>>> specifics? What networking config (bonding? anything else?)
>>
>> The system is not in OOM, it starts to continuously utilize four
>> kswapd0-4 of each numa node from the first CPU socket processes (each
>> at 100% and all doing swap in/out) after the system start to be used
>> by application due to "low memory".
>>
>> We have two 25G 2P E810-XXV Adapters. The first port of each (em1 +
>> p3p1) is connected and they're bonded in LACP. Second ports (em2 and
>> p3p2) are unused.
>>
>> See attached file for working:
>> ethtool_-S_em1.reverted
>> ethtool_-S_em2.reverted
>> ethtool_-S_p3p1.reverted
>> ethtool_-S_p3p2.reverted
>>
>> See attached file for non-working:
>> ethtool_-S_em1.vanila
>> ethtool_-S_em2.vanila
>> ethtool_-S_p3p1.vanila
>> ethtool_-S_p3p2.vanila
>>
>>> Do you have a bugzilla.kernel.org bug yet where you can upload larger
>>> files like dmesg and others?
>>
>> I do not have yet, I will create a new one and ping you then.
>>
>>> Also, I'm curious if your problem goes away if you change / reduce the
>>> number of queues per port. use ethtool -L eth0 combined 4 ?
>>
>> I will try and give you feedback soon.
>>
>>> You also said something about reproducing when launching / destroying
>>> virtual machines with VF passthrough?
>>
>> The memory usage is there from boot without running any VMs. The issue
>> is that the host has low memory for self and it starts to use kswapd
>> when we start to use it by starting vms.
>>
>>>
>>> Can you reproduce the issue without starting qemu (just doing bare-metal
>>> SR-IOV instance creation/destruction via
>>> /sys/class/net/eth0/device/sriov_numvfs ?)
>>>
>>
>> Yes we can reproduce it without qemu running, the extra memory usage
>> is from the beginning after boot, not depending on any running VM.
>>
>> We do not use SR-IOV.
