Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 568F639744
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2019 23:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D25E72010D;
	Fri,  7 Jun 2019 21:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gd17wp7cwmM9; Fri,  7 Jun 2019 21:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 640E02094C;
	Fri,  7 Jun 2019 21:04:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C147A1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 21:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AE115877BA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 21:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HlXBymwT8Puw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2019 21:04:06 +0000 (UTC)
X-Greylist: delayed 00:14:27 by SQLgrey-1.7.6
Received: from chris.i8u.org (mail.i8u.org [75.148.87.25])
 by whitealder.osuosl.org (Postfix) with ESMTP id E4BD687750
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 21:04:05 +0000 (UTC)
Received: by chris.i8u.org (Postfix, from userid 1000)
 id 51A8816C9402; Fri,  7 Jun 2019 13:49:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by chris.i8u.org (Postfix) with ESMTP id 5016416C9279;
 Fri,  7 Jun 2019 13:49:38 -0700 (PDT)
Date: Fri, 7 Jun 2019 13:49:38 -0700 (PDT)
From: Hisashi T Fujinaka <htodd@twofifty.com>
X-X-Sender: htodd@chris.i8u.org
To: Alexander Duyck <alexander.duyck@gmail.com>
In-Reply-To: <CAKgT0Ue1M8_30PVPmoJy_EGo2mjM26ecz32Myx-hpnuq_6wdjw@mail.gmail.com>
Message-ID: <alpine.NEB.2.21.9999.1906071343460.809@chris.i8u.org>
References: <20190516183705.e4zflbli7oujlbek@csclub.uwaterloo.ca>
 <CAKgT0UfSa-dM2+7xntK9tB7Zw5N8nDd3U1n4OSK0gbWbkNSKJQ@mail.gmail.com>
 <CAKgT0Ucd0s_0F5_nwqXknRngwROyuecUt+4bYzWvp1-2cNSg7g@mail.gmail.com>
 <20190517172317.amopafirjfizlgej@csclub.uwaterloo.ca>
 <CAKgT0UdM28pSTCsaT=TWqmQwCO44NswS0PqFLAzgs9pmn41VeQ@mail.gmail.com>
 <20190521151537.xga4aiq3gjtiif4j@csclub.uwaterloo.ca>
 <CAKgT0UfpZ-ve3Hx26gDkb+YTDHvN3=MJ7NZd2NE7ewF5g=kHHw@mail.gmail.com>
 <20190521175456.zlkiiov5hry2l4q2@csclub.uwaterloo.ca>
 <CAKgT0UcR3q1maBmJz7xj_i+_oux_6FQxua9DOjXQSZzyq6FhkQ@mail.gmail.com>
 <20190522143956.quskqh33ko2wuf47@csclub.uwaterloo.ca>
 <20190607143906.wgi344jcc77qvh24@csclub.uwaterloo.ca>
 <CAKgT0Ue1M8_30PVPmoJy_EGo2mjM26ecz32Myx-hpnuq_6wdjw@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (NEB 344 2019-05-25)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [E1000-devel] i40e X722 RSS problem with
 NAT-Traversal IPsec packets
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
Cc: e1000-devel@lists.sourceforge.net, Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 7 Jun 2019, Alexander Duyck wrote:

> On Fri, Jun 7, 2019 at 7:39 AM Lennart Sorensen
> <lsorense@csclub.uwaterloo.ca> wrote:
>>
>> On Wed, May 22, 2019 at 10:39:56AM -0400, Lennart Sorensen wrote:
>>> OK I applied those two patches and get this:
>>>
>>> i40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
>>> i40e: Copyright (c) 2013 - 2014 Intel Corporation.
>>> i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
>>> i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
>>> i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
>>> i40e 0000:3d:00.0: PFQF_HREGION[7]: 0x00000000
>>> i40e 0000:3d:00.0: PFQF_HREGION[6]: 0x00000000
>>> i40e 0000:3d:00.0: PFQF_HREGION[5]: 0x00000000
>>> i40e 0000:3d:00.0: PFQF_HREGION[4]: 0x00000000
>>> i40e 0000:3d:00.0: PFQF_HREGION[3]: 0x00000000
>>> i40e 0000:3d:00.0: PFQF_HREGION[2]: 0x00000000
>>> i40e 0000:3d:00.0: PFQF_HREGION[1]: 0x00000000
>>> i40e 0000:3d:00.0: PFQF_HREGION[0]: 0x00000000
>>> i40e 0000:3d:00.0: flow_type: 63 input_mask:0x0000000000004000
>>> i40e 0000:3d:00.0: flow_type: 46 input_mask:0x0007fff800000000
>>> i40e 0000:3d:00.0: flow_type: 45 input_mask:0x0007fff800000000
>>> i40e 0000:3d:00.0: flow_type: 44 input_mask:0x0007ffff80000000
>>> i40e 0000:3d:00.0: flow_type: 43 input_mask:0x0007fffe00000000
>>> i40e 0000:3d:00.0: flow_type: 42 input_mask:0x0007fffe00000000
>>> i40e 0000:3d:00.0: flow_type: 41 input_mask:0x0007fffe00000000
>>> i40e 0000:3d:00.0: flow_type: 40 input_mask:0x0007fffe00000000
>>> i40e 0000:3d:00.0: flow_type: 39 input_mask:0x0007fffe00000000
>>> i40e 0000:3d:00.0: flow_type: 36 input_mask:0x0006060000000000
>>> i40e 0000:3d:00.0: flow_type: 35 input_mask:0x0006060000000000
>>> i40e 0000:3d:00.0: flow_type: 34 input_mask:0x0006060780000000
>>> i40e 0000:3d:00.0: flow_type: 33 input_mask:0x0006060600000000
>>> i40e 0000:3d:00.0: flow_type: 32 input_mask:0x0006060600000000
>>> i40e 0000:3d:00.0: flow_type: 31 input_mask:0x0006060600000000
>>> i40e 0000:3d:00.0: flow_type: 30 input_mask:0x0006060600000000
>>> i40e 0000:3d:00.0: flow_type: 29 input_mask:0x0006060600000000
>>> i40e 0000:3d:00.0: flow_type: 27 input_mask:0x00000000002c0000
>>> i40e 0000:3d:00.0: flow_type: 26 input_mask:0x00000000002c0000
>>> i40e 0000:3d:00.0: flow type: 36 update input mask from:0x0006060000000000, to:0x0001801800000000
>>> i40e 0000:3d:00.0: flow type: 35 update input mask from:0x0006060000000000, to:0x0001801800000000
>>> i40e 0000:3d:00.0: flow type: 34 update input mask from:0x0006060780000000, to:0x0001801f80000000
>>> i40e 0000:3d:00.0: flow type: 33 update input mask from:0x0006060600000000, to:0x0001801e00000000
>>> i40e 0000:3d:00.0: flow type: 32 update input mask from:0x0006060600000000, to:0x0001801e00000000
>>> i40e 0000:3d:00.0: flow type: 31 update input mask from:0x0006060600000000, to:0x0001801e00000000
>>> i40e 0000:3d:00.0: flow type: 30 update input mask from:0x0006060600000000, to:0x0001801e00000000
>>> i40e 0000:3d:00.0: flow type: 29 update input mask from:0x0006060600000000, to:0x0001801e00000000
>>>
>>> So seems the regions are all 0.
>>>
>>> All ipsec packets still hitting queue 0.
>>
>> So any news or more ideas to try or are we stuck hoping someone can fix
>> the firmware?
>
> I had reached out to some folks over in the networking division hoping
> that they can get a reproduction as I don't have the hardware that you
> are seeing the issue on so I have no way to reproduce it.
>
> Maybe someone from that group can reply and tell us where they are on that?
>
> Thanks.
>
> - Alex

For some reason this isn't showing up in my work email. We had an
internal conference this week and I think people are away. I'll see if I
can chase some people down if they're still here and not on the way
home.

-- 
Hisashi T Fujinaka - htodd@twofifty.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
