Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0367040C9EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 18:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6521A4029B;
	Wed, 15 Sep 2021 16:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHRQUR2VSyDd; Wed, 15 Sep 2021 16:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 189AC4026A;
	Wed, 15 Sep 2021 16:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99C231BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 16:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DB9B4026A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 16:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8aLLBi8EAvI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Sep 2021 16:16:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from chris.i8u.org (mail.i8u.org [75.148.87.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CCA64019A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 16:16:48 +0000 (UTC)
Received: by chris.i8u.org (Postfix, from userid 1000)
 id 5B6FD16C94F8; Wed, 15 Sep 2021 09:16:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by chris.i8u.org (Postfix) with ESMTP id 59A6116C926A;
 Wed, 15 Sep 2021 09:16:47 -0700 (PDT)
Date: Wed, 15 Sep 2021 09:16:47 -0700 (PDT)
From: Hisashi T Fujinaka <htodd@twofifty.com>
To: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <d49182d6-15fe-15a1-c063-4808942a84c1@gmail.com>
Message-ID: <1eba46af-e9d1-36aa-4bb7-9968b92a932f@twofifty.com>
References: <CAHk-=wgbygOb3hRV+7YOpVcMPTP2oQ=iw6tf09Ydspg7o7BsWQ@mail.gmail.com>
 <20210913141818.GA27911@codemonkey.org.uk>
 <ab571d7e-0cf5-ffb3-6bbe-478a4ed749dc@gmail.com>
 <20210913201519.GA15726@codemonkey.org.uk>
 <b84b799d-0aaa-c4e1-b61b-8e2316b62bd1@gmail.com>
 <20210913203234.GA6762@codemonkey.org.uk>
 <b24d81e2-5a1e-3616-5a01-abd58c0712f7@gmail.com>
 <b4b543d4-c0c5-3c56-46b7-e17ec579edcc@twofifty.com>
 <367cc748-d411-8cf8-ff95-07715c55e899@gmail.com>
 <20210914142419.GA32324@codemonkey.org.uk>
 <c02876d7-c3f3-1953-334d-1248af919796@twofifty.com>
 <80718d5e-a4d2-ff85-aa8f-cd790c951278@gmail.com>
 <14f6d9e9-aca8-133-67f5-92effa2ea280@twofifty.com>
 <d49182d6-15fe-15a1-c063-4808942a84c1@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Linux 5.15-rc1 - 82599ES VPD access isue
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, Dave Jones <davej@codemonkey.org.uk>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 15 Sep 2021, Heiner Kallweit wrote:

> On 15.09.2021 16:18, Hisashi T Fujinaka wrote:
>> On Tue, 14 Sep 2021, Heiner Kallweit wrote:
>>
>>> On 14.09.2021 22:00, Hisashi T Fujinaka wrote:
>>>> On Tue, 14 Sep 2021, Dave Jones wrote:
>>>>
>>>>> On Tue, Sep 14, 2021 at 07:51:22AM +0200, Heiner Kallweit wrote:
>>>>>
>>>>>>> Sorry to reply from my personal account. If I did it from my work
>>>>>>> account I'd be top-posting because of Outlook and that goes over like a
>>>>>>> lead balloon.
>>>>>>>
>>>>>>> Anyway, can you send us a dump of your eeprom using ethtool -e? You can
>>>>>>> either send it via a bug on e1000.sourceforge.net or try sending it to
>>>>>>> todd.fujinaka@intel.com
>>>>>>>
>>>>>>> The other thing is I'm wondering is what the subvendor device ID you
>>>>>>> have is referring to because it's not in the pci database. Some ODMs
>>>>>>> like getting creative with what they put in the NVM.
>>>>>>>
>>>>>>> Todd Fujinaka (todd.fujinaka@intel.com)
>>>>>>
>>>>>> Thanks for the prompt reply. Dave, could you please provide the requested
>>>>>> information?
>>>>>
>>>>> sent off-list.
>>>>>
>>>>>     Dave
>>>>
>>>> Whoops. I replied from outlook again.
>>>>
>>>> I have confirmation that this should be a valid image. The VPD is just a
>>>> series of 3's. There are changes to preboot header, flash and BAR size,
>>>> and as far as I can tell, a nonsense subdevice ID, but this should work.
>>>>
>>>> What was the original question?
>>>>
>>> "lspci -vv" complains about an invalid short tag 0x06 and the PCI VPD
>>> code resulted in a stall. So it seems the data doesn't have valid VPD
>>> format as defined in PCI specification.
>>>
>>> 01:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connection (rev 01)
>>>        Subsystem: Device 1dcf:030a
>>>     ...
>>>             Capabilities: [e0] Vital Product Data
>>>                *Unknown small resource type 06, will not decode more.*
>>>
>>> Not sure which method is used by the driver to get the EEPROM content.
>>> For the issue here is relevant what is exposed via PCI VPD.
>>>
>>> The related kernel error message has been reported few times, e.g. here:
>>> https://access.redhat.com/solutions/3001451
>>> Only due to a change in kernel code this became a more prominent
>>> issue now.
>>>
>>> You say that VPD is just a series of 3's. This may explain why kernel and
>>> tools complain about an invalid VPD format. VPD misses the tag structure.
>>
>> I think I conflated two issues and yours may not be the one with the
>> weird Amazon NIC. In any case, the VPD does not match the spec and two
>> people have confirmed it's just full of 3's. With the bogus subvendor
>> ID, I'm thinking this is not an Intel NIC.
>>
>> Next step is to contact whoever made the NIC and ask them for guidance.
>>
> In an earlier mail in this thread was stated that subvendor id is unknown.
> Checking here https://pcisig.com/membership/member-companies?combine=1dcf
> it says: Beijing Sinead Technology Co., Ltd.

Huh. I didn't realize there was an official list beyond pciids.ucw.cz.

In any case, that's who you need to talk to about the unlisted (to
Linux) vendor ID and also the odd VPD data.

-- 
Hisashi T Fujinaka - htodd@twofifty.com
BSEE + BSChem + BAEnglish + MSCS + $2.50 = coffee
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
