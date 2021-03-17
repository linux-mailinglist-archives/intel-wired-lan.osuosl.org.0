Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07C233F7F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 19:15:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5811143209;
	Wed, 17 Mar 2021 18:15:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L5CZNTkePGGI; Wed, 17 Mar 2021 18:15:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FE724324A;
	Wed, 17 Mar 2021 18:15:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8FC1BF330
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:15:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BA7E6F971
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IaBgra6qcydX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 18:15:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B40566F970
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:15:07 +0000 (UTC)
Received: from [192.168.0.11] ([217.83.109.231]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MCbMz-1lV99K2yDT-009jhv; Wed, 17 Mar 2021 19:14:53 +0100
To: "Laba, SlawomirX" <slawomirx.laba@intel.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <20210316100141.53551-1-sassmann@kpanic.de>
 <20210316101443.56b87cf6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <44b3f5f0-93f8-29e2-ab21-5fd7cc14c755@kpanic.de>
 <20210316132905.5d0f90dd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210316150210.00007249@intel.com>
 <3a4078fe-0be5-745c-91a3-ed83d4dc372f@kpanic.de>
 <DM6PR11MB3113AB6CE1D93EF28B3A7345876A9@DM6PR11MB3113.namprd11.prod.outlook.com>
From: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <e28db42e-a55a-6f7f-7622-add296b1035e@kpanic.de>
Date: Wed, 17 Mar 2021 19:14:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB3113AB6CE1D93EF28B3A7345876A9@DM6PR11MB3113.namprd11.prod.outlook.com>
Content-Language: de-DE
X-Provags-ID: V03:K1:BeUyXZ+JH/HvtDs+SOAVSvqT2sl26epQy2X5/469VJ4s4/oKsFN
 cZuin5NrpI9yEnJPHtqQ2JDF2RU4LOgR+WWk4RKVsPseUmfLfBhhwzZzjqJtYT21GJt9pPI
 NQa9TfET/a961y9APY5YrpP+nJAdeGp6mW1lt4BTFntLncKLp07cjanz1BvGkqVeeLXnEYn
 zzR0LheJlEr5KCNe0c3sg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:iuFNz7tkKmQ=:bnmqJfP+deQbG9rtCMDby+
 1WAUBU/KAFreUpijqgPgkFOtXcuZYO7MyfYqx373xOrqKsILYuBAefjQUssG5nAevUxQJufu2
 yx9hU3/EDlE8QSDhUquVM+ApVb3XeZqKSrIo08f8JSNf+HXPoymxkhGdqma0djP+AHbJJcsBF
 nxMbR9zoDm38iZ1Zfd1P/g2aQViucLEbyIqf4dqtU0lHHh2/6sSLOr8fUml/xzn/vu8RKBOT8
 i5xjPTNEmN9+sPjDU/ljgFojqlgMhSqxJBp/i3S9LX1KCUIwahY1eFLI6EPX693kly5cj5DSb
 tY80dGCm8ZoBOB1pxquIcXiqTHNmVPe5IWf5iyMwLCKO71a0vL2++bBpCsLx/Uanilw7SRKEf
 xKNa0YUprZcyhY8A548bG0DZEIiAOqVuREp1wdoDNdh8Yihpc8lZnDUO/c0GUu2LdbbA77FD1
 HbXX99hBMg==
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 17.03.21 18:27, Laba, SlawomirX wrote:
> We were discussing introducing mutexes in those critical spots for a long time now (in my team).
> Stefan, if you find time, you are most welcome to offer your solution with mutexes.

Hi Slawek,

I'll work on that conversion once the current patch went through Intel
testing and is merged. Smaller patches, smaller steps are usually
better, so let's make one change at a time.

Thanks!

  Stefan

> Slawek
> 
> 
> -----Original Message-----
> From: Stefan Assmann <sassmann@kpanic.de> 
> Sent: Wednesday, March 17, 2021 8:50 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Jakub Kicinski <kuba@kernel.org>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Yang, Lihong <lihong.yang@intel.com>; Laba, SlawomirX <slawomirx.laba@intel.com>; Nunley, Nicholas D <nicholas.d.nunley@intel.com>
> Subject: Re: [PATCH] iavf: fix locking of critical sections
> 
> On 16.03.21 23:02, Jesse Brandeburg wrote:
>> Jakub Kicinski wrote:
>>>>> I personally think that the overuse of flags in Intel drivers 
>>>>> brings nothing but trouble. At which point does it make sense to 
>>>>> just add a lock / semaphore here rather than open code all this 
>>>>> with no clear semantics? No code seems to just test the 
>>>>> __IAVF_IN_CRITICAL_TASK flag, all the uses look like poor man's 
>>>>> locking at a quick grep. What am I missing?
>>>>
>>>> I agree with you that the locking could be done with other locking 
>>>> mechanisms just as good. I didn't invent the current method so I'll 
>>>> let Intel comment on that part, but I'd like to point out that what 
>>>> I'm making use of is fixing what is currently in the driver.
>>>
>>> Right, I should have made it clear that I don't blame you for the 
>>> current state of things. Would you mind sending a patch on top of 
>>> this one to do a conversion to a semaphore?
> 
> Sure, I'm happy to help working on the conversion once the current issue is resolved.
> 
>>> Intel folks any opinions?
>>
>> I know Slawomir has been working closely with Stefan on figuring out 
>> the right ways to fix this code.  Hopefully he can speak for himself, 
>> but I know he's on Europe time.
>>
>> As for conversion to mutexes I'm a big fan, and as long as we don't 
>> have too many collisions with the RTNL lock I think it's a reasonable 
>> improvement to do, and if Stefan doesn't want to work on it, we can 
>> look into whether Slawomir or his team can.
> 
> I'd appreciate to be involved.
> Thanks!
> 
>   Stefan
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
