Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B72CFAB066A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 01:14:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A5E382BA7;
	Thu,  8 May 2025 23:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4__ORkxLW7BI; Thu,  8 May 2025 23:14:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BFBA82BE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746746048;
	bh=pMhZp4T/6nbjzyNjxSaNJURBQFAmYihqJJ2RWphfi94=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J5/eW/Z1+UqNK21PoC+IemKr5i+RQtzwc9KTQizmz+ZHZ9nLJLY82bbJLzdF8Bxhg
	 VrQ63jH0sYD3dhfJ7vDkx5cZbtdRuBxeMFz5m2WTo5bv0lY7RAbGbkLZJMUIb99PUE
	 hcQh2X6+di5FeHX40Tis3BXuYH+gCO2HqkccGXW3QB5s3m44iYM6E1SJTD+3IlANUn
	 dUENInyaYsxqVfWLda0MT/B18iqJBL4fVNLlW0KK6PDfmkwy9NGueePAVn+xNBo0xG
	 1lxQ0Lrd5X7uSlgM38/StmBBmu5lMa8O76AyD8UOUoMlK/QdnShYbhNgGGIsbA6JEo
	 P26Vnw9IahdNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BFBA82BE5;
	Thu,  8 May 2025 23:14:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 06EBE439
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 23:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD8D242319
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 23:14:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QyiXhsJCUKRh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 23:14:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9204F4041B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9204F4041B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9204F4041B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 23:14:03 +0000 (UTC)
Received: from [192.168.2.107] (p5b13a016.dip0.t-ipconnect.de [91.19.160.22])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0B6F961E6479F;
 Fri, 09 May 2025 01:13:29 +0200 (CEST)
Message-ID: <c918d4f5-ee53-4f64-b152-cea0f6d99c4f@molgen.mpg.de>
Date: Fri, 9 May 2025 01:13:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Marek_Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
 stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com> <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
 <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com> <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com> <aAZF0JUKCF0UvfF6@mail-itl>
 <aAZH7fpaGf7hvX6T@mail-itl> <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
 <aB0zLQawNrImVqPE@mail-itl>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <aB0zLQawNrImVqPE@mail-itl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Marek, dear Vitaly,


Am 09.05.25 um 00:41 schrieb Marek Marczykowski-Górecki:
> On Thu, May 08, 2025 at 09:26:18AM +0300, Lifshits, Vitaly 
>> On 4/21/2025 4:28 PM, Marek Marczykowski-Górecki wrote:
>>> On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-Górecki wrote:
>>>> On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wrote:
>>>>>
>>>>>
>>>>> On 4/16/2025 3:43 PM, Marek Marczykowski-Górecki wrote:
>>>>>> On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly wrote:
>>>>>>> Can you please also share the output of ethtool -i? I would like to know the
>>>>>>> NVM version that you have on your device.
>>>>>>
>>>>>> driver: e1000e
>>>>>> version: 6.14.1+
>>>>>> firmware-version: 1.1-4
>>>>>> expansion-rom-version:
>>>>>> bus-info: 0000:00:1f.6
>>>>>> supports-statistics: yes
>>>>>> supports-test: yes
>>>>>> supports-eeprom-access: yes
>>>>>> supports-register-dump: yes
>>>>>> supports-priv-flags: yes
>>>>>>
>>>>>
>>>>> Your firmware version is not the latest, can you check with the board
>>>>> manufacturer if there is a BIOS update to your system?
>>>>
>>>> I can check, but still, it's a regression in the Linux driver - old
>>>> kernel did work perfectly well on this hw. Maybe new driver tries to use
>>>> some feature that is missing (or broken) in the old firmware?
>>>
>>> A little bit of context: I'm maintaining the kernel package for a Qubes
>>> OS distribution. While I can try to update firmware on my test system, I
>>> have no influence on what hardware users will use this kernel, and
>>> which firmware version they will use (and whether all the vendors
>>> provide newer firmware at all). I cannot ship a kernel that is known
>>> to break network on some devices.
>>>
>>>>> Also, you mentioned that on another system this issue doesn't reproduce, do
>>>>> they have the same firmware version?
>>>>
>>>> The other one has also 1.1-4 firmware. And I re-checked, e1000e from
>>>> 6.14.2 works fine there.

>> Thank you for your detailed feedback and for providing the requested
>> information.
>>
>> We have conducted extensive testing of this patch across multiple systems
>> and have not observed any packet loss issues. Upon comparing the mentioned
>> setups, we noted that while the LAN controller is similar, the CPU differs.
>> We believe that the issue may be related to transitions in the CPU's low
>> power states.
>>
>> Consequently, we kindly request that you disable the CPU low power state
>> transitions in the S0 system state and verify if the issue persists. You can
>> disable this in the kernel parameters on the command line with idle=poll.
>> Please note that this command is intended for debugging purposes only, as it
>> may result in higher power consumption.
> 
> I tried with idle=poll, and it didn't help, I still see a lot of packet
> losses. But I can also confirm that idle=poll makes the system use
> significantly more power (previously at 25-30W, with this option stays
> at about 42W).
> 
> Is there any other info I can provide, enable some debug features or
> something?
> 
> I see the problem is with receiving packets - in my simple ping test,
> the ping target sees all the echo requests (and respond to them), but
> the responses aren't reaching ping back (and are not visible on tcpdump
> on the problematic system either).

As the cause is still unclear, can the commit please be reverted in the 
master branch due adhere to Linux’ no-regression policy, so that it can 
be reverted from the stable series?

Marek, did you also test 6.15 release candidates?


Kind regards,

Paul
