Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D921F33DB17
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 18:40:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 479E683E27;
	Tue, 16 Mar 2021 17:40:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dcWqSgOGJdDm; Tue, 16 Mar 2021 17:40:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BEB083774;
	Tue, 16 Mar 2021 17:40:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB58B1BF427
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9CD06F68A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:40:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id erpF-JavIe-D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 17:40:27 +0000 (UTC)
X-Greylist: delayed 00:07:48 by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18962606A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:40:26 +0000 (UTC)
Received: from [192.168.0.11] ([217.83.109.231]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N3sRi-1lmNG40rXE-00zraJ; Tue, 16 Mar 2021 18:27:12 +0100
To: Jakub Kicinski <kuba@kernel.org>
References: <20210316100141.53551-1-sassmann@kpanic.de>
 <20210316101443.56b87cf6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <44b3f5f0-93f8-29e2-ab21-5fd7cc14c755@kpanic.de>
Date: Tue, 16 Mar 2021 18:27:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210316101443.56b87cf6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: de-DE
X-Provags-ID: V03:K1:Io/XlaNymXq7CBfOVzViFtONLAYXSli5QpGHDs+cV1IUpUYmTUN
 J5ofW3PnkGcCHLJXAH4cseNqcsYgUsHjr9HvVzwXwtyeBIUoFFl9I8Dc5SakkWW66V9waC3
 vuywws5CCD5PR9yZ0L5MGBVhOdieWgLp60u65VGCs875O/L94z9hkw8jIASvGtirzL7bL67
 AMkYB0iinIrmlaDfbjcPw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:KbYlf475X84=:Knqw9GCr4n2/odtp/SqW6H
 1QdLfbiii7t1JgtZ82XtKKtCtNylfzSDQm03dn332RsI4N/JL2AlLMS8CbTpAEdXPGZQDX9bl
 dlUV4FjgykhCe1BGtvPxlRZkQq75wWNi9v5E6OtnBdJ1wAHBFV2Yk96IKt/0vl+kT0K4fCVaP
 A5Zm15UO/aFaT752qQbD7KgLkCE7UOjCQxouie9M7zbB9CW0qM1N5vagGPBPjAwRUE8DZln8Y
 ovbQFV86lRvBtodLFEqXjoGQCOp+qIkPiPcaHjbc/pgeHPi3wo3L827pPbkrPemSAyLBW6M5F
 3abkjJu0HrhiNtf4bnYH0udlY9BaG5+8I84slGTbS65vK3+3C9XX4kq2J5cqyyQ9ceqUeVKol
 eHwnI5SUDwbuXFQnnU5GjNJkCdAomUUgMtHXaaI3hVLmHIZ8I5rl3J7qKxxlG68pwt1hmYeVL
 Y3MQnsjJdw==
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

On 16.03.21 18:14, Jakub Kicinski wrote:
> On Tue, 16 Mar 2021 11:01:41 +0100 Stefan Assmann wrote:
>> To avoid races between iavf_init_task(), iavf_reset_task(),
>> iavf_watchdog_task(), iavf_adminq_task() as well as the shutdown and
>> remove functions more locking is required.
>> The current protection by __IAVF_IN_CRITICAL_TASK is needed in
>> additional places.
>>
>> - The reset task performs state transitions, therefore needs locking.
>> - The adminq task acts on replies from the PF in
>>   iavf_virtchnl_completion() which may alter the states.
>> - The init task is not only run during probe but also if a VF gets stuck
>>   to reinitialize it.
>> - The shutdown function performs a state transition.
>> - The remove function perorms a state transition and also free's
>>   resources.
>>
>> iavf_lock_timeout() is introduced to avoid waiting infinitely
>> and cause a deadlock. Rather unlock and print a warning.
>>
>> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
> 
> I personally think that the overuse of flags in Intel drivers brings
> nothing but trouble. At which point does it make sense to just add a
> lock / semaphore here rather than open code all this with no clear
> semantics? No code seems to just test the __IAVF_IN_CRITICAL_TASK flag,
> all the uses look like poor man's locking at a quick grep. What am I
> missing?
> 

Hi Jakub,

I agree with you that the locking could be done with other locking
mechanisms just as good. I didn't invent the current method so I'll let
Intel comment on that part, but I'd like to point out that what I'm
making use of is fixing what is currently in the driver.

Thanks!

  Stefan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
