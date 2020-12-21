Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B91B2DFDA3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Dec 2020 16:38:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F2EE8765F;
	Mon, 21 Dec 2020 15:38:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7YcJDIEnbpyR; Mon, 21 Dec 2020 15:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA67C877A5;
	Mon, 21 Dec 2020 15:38:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E33711BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D9F898765F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-D4tLwFMR2c for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 15:38:19 +0000 (UTC)
X-Greylist: delayed 00:06:53 by SQLgrey-1.7.6
Received: from chris.i8u.org (mail.i8u.org [75.148.87.25])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 66F5587662
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:38:19 +0000 (UTC)
Received: by chris.i8u.org (Postfix, from userid 1000)
 id DAC6116C92F6; Mon, 21 Dec 2020 07:31:25 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
 by chris.i8u.org (Postfix) with ESMTP id D896016C92D3;
 Mon, 21 Dec 2020 07:31:25 -0800 (PST)
Date: Mon, 21 Dec 2020 07:31:25 -0800 (PST)
From: Hisashi T Fujinaka <htodd@twofifty.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
In-Reply-To: <BYAPR11MB3606001E3832B5A04F9787E6EFC00@BYAPR11MB3606.namprd11.prod.outlook.com>
Message-ID: <53eaaa80-46de-4c47-4ec5-7adcc7d13b42@twofifty.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
 <MN2PR11MB3614FD0C52705864C05EFDF8EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
 <07a977b0-c3f9-4cbe-482e-350d8b42cda7@molgen.mpg.de>
 <BYAPR11MB3606001E3832B5A04F9787E6EFC00@BYAPR11MB3606.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Greg KH <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I'm going to answer this from home, where Outlook isn't impeding me.
This is the only time I'm doing this because I can't find your email any
more. Outlook has cleverly hiddent it from me.

On Mon, 21 Dec 2020, Fujinaka, Todd wrote:

> I would listen to you on Linus' list, but this is Intel-wired-lan.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Sent: Monday, December 21, 2020 7:10 AM
> To: Fujinaka, Todd <todd.fujinaka@intel.com>; Ben Greear <greearb@candelatech.com>
> Cc: intel-wired-lan@lists.osuosl.org; Greg KH <gregkh@linuxfoundation.org>; Linus Torvalds <torvalds@linux-foundation.org>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: Re: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps link negotiation?
>
> Dear Todd,
>
>
> I kindly ask you again, please do not top-post. It?s impolite, and more importantly, it wastes the readers time as it looses context, and results in misunderstandings.

This is where I should've inserted my comment about Outlook and
intel-wired-lan vs Linus' lists. It's a pain, but

> Am 19.12.20 um 17:19 schrieb Fujinaka, Todd:
>> This is a bad case with no ideal solution. Detecting the case is not
>> possible as autonegotiation happens in the hardware without software
>> involvement.
>>
>> One solution was to update the switch firmware for the a switch that
>> is is the link partner that give us the most trouble. The issue
>> appears to be in competing or half-implemented standards. 2.5G and 5G
>> were initially non-IEEE standards that different manufacturers hacked
>> onto 1G in different ways. We implemented it to one of the standards
>> which should be interoperable, but the corner case of the
>> widely-deployed switch will take the link from 10G to 1G with no
>> automated way to fix it.
>
> Thank you for the background, which should have been in the commit message.
>
> Can you please tell us the problematic switch name and the problematic firmware version and the one, where this issues is fixed?

I can ask around. I wasn't on those issues. The problem isn't with the
switch manufacturer because they're released a fix, but with the
datacenters who don't want to update their switches. I've been loath to
reveal more data because that's confidential to the customer.

>> Updating switches means a lot of downtime for a lot of datacenters and
>> the OEMs we deal with would not accept that answer.
>
> Well, then please discuss the problem and possible solutions on the mailing list. Breaking other peoples setups is unacceptable. A Linux kernel runtime parameter would be one solution, your customers could have used.

Runtime parameter? That's even higher on the list of "not allowed". I've
said several times that the end-customers wouldn't update their switches
and wouldn't use any boot parameters. Customers high enough that the
executive VP of several companies called our company and demanded an
immediate fix.

>> Our solution was to disable 2.5G and 5G by default. This fixes 10G
>> linking at 1G on that switch, but 2.5G and 5G will link at 1G by
>> default. And, as I said, I've had very little contact with people
>> using 2.5G and 5G and I'm the guy on all the mailing lists.
>
> Unfortunately, a lot of users are not on the mailing list.

On ANY mailing list. This isn't the only one I'm on.

>> I apologize for making your life harder, but it seems like it's just
>> you so far. Paul seems to be arguing with me just for the fun of it.
>
> Please keep the discussion respectful, and do not insult others.

I'm not being disrespectful, I'm just saying you're just arguing
semantics and "rules".

> Unfortunately, at work we have now been bitten several times by regressions updating to the current mainline Linux kernel, causing frictions in the team about what Linux kernel to use.
>
> I am missing a statement by you, acknowledging that the commit and the whole communication was a big fail, and how you will fix the regression.
> Additionally, an analysis would be nice, where the process failed ? why was the commit message incomplete and why did the test (Tested-by
> present) not spot the issue ? and how to improve it to avoid such a situation in the future.

Communications was a big fail, and I'm here to try to solve that. We
will not be reverting this, in fact I've been told by my management that
this is required. And my management goes way up the chain to executive
VPs at Intel.

Right now I'm between a rock and a hard place and 2.5G and 5G is not our
primary market. I'm not the marketing guy, so I didn't make that
decision.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
