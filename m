Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0694033EAC8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 08:50:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A1324ED41;
	Wed, 17 Mar 2021 07:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkguFtZikV1G; Wed, 17 Mar 2021 07:50:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF8564ED32;
	Wed, 17 Mar 2021 07:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33E431BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 07:49:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29CAA43005
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 07:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5kYvTge1wWR1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 07:49:54 +0000 (UTC)
X-Greylist: delayed 14:22:27 by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEE6F40172
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 07:49:53 +0000 (UTC)
Received: from [192.168.0.11] ([217.83.109.231]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M1YlB-1lOv6n1icl-0035ux; Wed, 17 Mar 2021 08:49:38 +0100
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <20210316100141.53551-1-sassmann@kpanic.de>
 <20210316101443.56b87cf6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <44b3f5f0-93f8-29e2-ab21-5fd7cc14c755@kpanic.de>
 <20210316132905.5d0f90dd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210316150210.00007249@intel.com>
From: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <3a4078fe-0be5-745c-91a3-ed83d4dc372f@kpanic.de>
Date: Wed, 17 Mar 2021 08:49:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210316150210.00007249@intel.com>
Content-Language: de-DE
X-Provags-ID: V03:K1:gRd4vCW3FwvCWtRZFM1mFvUNSuQeqs3yqR7d2psXmAkpdodvbmp
 jELxRJ/kFiCjKERsqJ0RCXDkJCuvE5WU3i0im9Ebsj3eCYjkb1SCsZwQJTkdU3Wjg2kzyqz
 zjQvmxJbRXysZOgEnhMNEZh/qplaeg/ujblsMEOHioFqYVQhpFchHX8XH7Dj6TkUy1mWvNR
 IAI8ddYa7sR1pdXe5aaZQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:CuStMjcPZck=:VFZgZwZ3C7elvlmZTfyymL
 /bvRy6YjpC1IcqYM+HqN2IXL1aMzmORfir4dpHH1fCvMZ+gTZjcAf4Fi8Oun1dEtcLKOFHzZn
 YY2KoGi3WOxAFG2wDGfrPTgzHlugtq1Hc+mLGNXZq3MWEDjoBbnNiiYlX9I6ZpiqK9H5gzKVV
 ecJv6FlD4YLwWelqzQOq95rSkpNBQO5FJCIE44DgBRcRCVqYzcMhrKcBBqY+bV+0irjm/uCDe
 1hDMk5IHCCD167UMkd7oPhJ1UJn5/wLuxrcqA3RQxVYJfSnUns8xwFR9o9KPtxifgYnsp1IpG
 TecC3P8oyDuOfUoV0bMW1i6GpXH9DZxlDap6FM/QhlFAdUCYRwGHL8MygaPwXLXgsluD2gO+Q
 yWnntCZL5H8CE8PhIwMozviBiFmdTVmGdmAHcb7cJH2AdqXz0S4L/N8zQnIfzidf1oaUZToaH
 2qKtkVDheA==
Subject: Re: [Intel-wired-lan] [PATCH] iavf: fix locking of critical sections
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
Cc: slawomirx.laba@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 16.03.21 23:02, Jesse Brandeburg wrote:
> Jakub Kicinski wrote:
>>>> I personally think that the overuse of flags in Intel drivers brings
>>>> nothing but trouble. At which point does it make sense to just add a
>>>> lock / semaphore here rather than open code all this with no clear
>>>> semantics? No code seems to just test the __IAVF_IN_CRITICAL_TASK flag,
>>>> all the uses look like poor man's locking at a quick grep. What am I
>>>> missing?
>>>
>>> I agree with you that the locking could be done with other locking
>>> mechanisms just as good. I didn't invent the current method so I'll let
>>> Intel comment on that part, but I'd like to point out that what I'm
>>> making use of is fixing what is currently in the driver.
>>
>> Right, I should have made it clear that I don't blame you for the
>> current state of things. Would you mind sending a patch on top of 
>> this one to do a conversion to a semaphore? 

Sure, I'm happy to help working on the conversion once the current issue
is resolved.

>> Intel folks any opinions?
> 
> I know Slawomir has been working closely with Stefan on figuring out
> the right ways to fix this code.  Hopefully he can speak for himself,
> but I know he's on Europe time.
> 
> As for conversion to mutexes I'm a big fan, and as long as we don't
> have too many collisions with the RTNL lock I think it's a reasonable
> improvement to do, and if Stefan doesn't want to work on it, we can
> look into whether Slawomir or his team can.

I'd appreciate to be involved.
Thanks!

  Stefan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
