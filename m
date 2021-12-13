Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC614473411
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 19:32:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3549F40517;
	Mon, 13 Dec 2021 18:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W8LZKan__tSp; Mon, 13 Dec 2021 18:32:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D81B0404E3;
	Mon, 13 Dec 2021 18:32:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3787C1BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 18:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2597E60B2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 18:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8eg_yS0qRJXL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 18:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8637C60B29
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 18:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639420341; x=1670956341;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rR5wDnxhbQ3N8e1axn4/M4hEIyEIJ9oj/UGYIs4GJVg=;
 b=JdQz1uWVVkTBt5V7nDJiDI1IPwtN0UInvjC0ETwIlyEqE4afl1MH7sGU
 7/YSSpSvcB/+x1Oxs3KrZQaMowRJZRmBPH7JSODkdyql/rASvkWfGF5P/
 y2skl+eCB1YG4hSFjZLTW6XDl2Qo5K3hWYEsu8VZuNv5DHOUi6+CddG6j
 +dg8lmOEw1U59bINLggZWutkOr9UOlItcB9wcCBdnVQZBJH0jD3tXeH5A
 rhzUBZUc0BSV9ghPsV4u4gnhRN2rp56YxJUJAThVngsHIBsB/uN4ygMzF
 pYRH+ANOdGB4hdz6WB/RCw+FCgmUVkaEhQXolxf4x6jKg37bWNP0YFaPY Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="225658741"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="225658741"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 10:32:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="481612683"
Received: from robertki-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.251.4.188])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 10:32:20 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Stefan Dietrich <roots@gmx.de>, Thorsten Leemhuis
 <regressions@leemhuis.info>
In-Reply-To: <6bcce8e66fde064fd2879e802970bb4a8f382743.camel@gmx.de>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
 <5a4b31d43d9bf32e518188f3ef84c433df3a18b1.camel@gmx.de>
 <87o85yljpu.fsf@intel.com>
 <063995d8-acf3-9f33-5667-f284233c94b4@leemhuis.info>
 <8e59b7d6b5d4674d5843bb45dde89e9881d0c741.camel@gmx.de>
 <5c5b606a-4694-be1b-0d4b-80aad1999bd9@leemhuis.info>
 <d4c9bb101aa79c5acaaa6dd7b42159fb0c91a341.camel@gmx.de>
 <87h7bgrn0j.fsf@intel.com>
 <6bcce8e66fde064fd2879e802970bb4a8f382743.camel@gmx.de>
Date: Mon, 13 Dec 2021 10:32:19 -0800
Message-ID: <87wnk8qrt8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: kuba@kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, greg@kroah.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Stefan,

Stefan Dietrich <roots@gmx.de> writes:

> Hi Vinicius,
>
> thanks a lot - that patch fixed it! Both "normal" shutdown as well as
> ifdown/ifup are working without issues now if CONFIG_PCIE_PTM is
> enabled in the kernel config.

Great!

This patch is mostly to give us time to investigate, this seems to be an
issue related to that specific i225 model. I have to track one down and
perhaps talk to the hardware folks and see what I am doing wrong.

>
> I've done a DSL download/upload speed comparison against my current
> 5.14.0-19.2 and did not see any performance differences outside margin
> of error. I currently have no other Linux machine I could use for iperf
> but I will report if I encounter any issues.
>

I wasn't expecting any changes in performance, I was more asking if you
had some use case for PCIe PTM, and something stopped working. It seems
that the answer is no. That's good.

> As I am not familiar with the kernel development procedure: can you
> give a rough estimate when we may expect this patch in the stable
> branch?

I will write a useful commit message, take another closer look to see if
I am still missing something and propose the patch upstream. From there
until it's accepted in a stable tree, I guess it could take a few days,
a week, perhaps.

>
>
> Thanks again,
> Stefan
>
>
>
> On Fri, 2021-12-10 at 16:41 -0800, Vinicius Costa Gomes wrote:
>> Hi Stefan,
>>
>> Stefan Dietrich <roots@gmx.de> writes:
>>
>> > Agreed and thanks for the pointers; please see the log files and
>> > .config attached as requested.
>> >
>>
>> Thanks for the logs.
>>
>> Very interesting that the initialization of the device is fine, so
>> it's
>> something that happens later.
>>
>> Can you test the attached patch?
>>
>> If the patch works, I would also be interested if you notice any loss
>> of
>> functionality with your NIC. (I wouldn't think so, as far as I know,
>> i225-V models have PTM support but don't have any PTP support).
>>
>> > Cheers,
>> > Stefan
>> >
>> >
>> > On Fri, 2021-12-10 at 15:01 +0100, Thorsten Leemhuis wrote:
>> > > On 10.12.21 14:45, Stefan Dietrich wrote:
>> > > > thanks for keeping an eye on the issue. I've sent the files in
>> > > > private
>> > > > because I did not want to spam the mailing lists with them.
>> > > > Please
>> > > > let
>> > > > me know if this is the correct procedure.
>>
>> Cheers,
>

Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
