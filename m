Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FFE9BFDE4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 06:56:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3200A81398;
	Thu,  7 Nov 2024 05:56:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OWP0vJv8oSDA; Thu,  7 Nov 2024 05:56:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C7E1813A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730959004;
	bh=o/T+BOtHoGq9RAPeyny4zP06xyP33XgAHO7kuEL/UPw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uc8n6dJ7+sHHpckWH8pdgzGzHfsssNjmZ9PaG9+vS5QLM4+deWxw108MM+cq5Opcx
	 bJy38U7aDlB6QYSF4l8V8y4U/Pl65Gi/JGXCiyYKpeWwyQ+XLa5EzcfaH5KpXO5YqG
	 LSaGgcXmvjJuZhSxN0nWzR4s0j09pkQkA9sqYxXrUas6aH5bNgkejjboHUFdSWYyo0
	 oY8dsMH0QcM70GWTZ0pzATV5RuP9NM17lL2NwyVZYt96WTMRDDTMEIJ7Q+oRza7zu5
	 fW/1OUxhxCbQrHxQu1RamcdXyz2fSXVPbN5bxkilWwf8ZrkwHvxPgLTdFua0mWCfEH
	 +zZqhcLvqzmxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C7E1813A9;
	Thu,  7 Nov 2024 05:56:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 63A5620EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 05:56:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5180A4021E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 05:56:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wDsdMlpcQYlf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 05:56:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8BCDD4020C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BCDD4020C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BCDD4020C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 05:56:40 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aedb4.dynamic.kabel-deutschland.de
 [95.90.237.180])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4337461E5FE05;
 Thu, 07 Nov 2024 06:56:21 +0100 (CET)
Message-ID: <dc4194a7-c4aa-4132-9ca3-1121530ba1bc@molgen.mpg.de>
Date: Thu, 7 Nov 2024 06:56:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Christopher S Hall <christopher.s.hall@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, David Zage <david.zage@intel.com>,
 Vinicius Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 "Cadore Cataldo, Rodrigo" <rodrigo.cadore@l-acoustics.com>,
 Corinna Vinschen <vinschen@redhat.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mor Bar Gabay <morx.bar.gabay@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
 <20241106184722.17230-3-christopher.s.hall@intel.com>
 <4ee8f886-40ed-46bc-9d11-1619d64f7875@molgen.mpg.de>
 <MW4PR11MB698491CB1DA8179D870F787FC2532@MW4PR11MB6984.namprd11.prod.outlook.com>
 <3383e090-2545-4a02-abab-f92d4cbaa357@molgen.mpg.de>
Content-Language: en-US
In-Reply-To: <3383e090-2545-4a02-abab-f92d4cbaa357@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/6] igc: Lengthen the
 hardware retry time to prevent timeouts
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

[Cc: -Sasha, 550 #5.1.0 Address rejected.]

Am 07.11.24 um 06:48 schrieb Paul Menzel:
> [Cc: +Sasha]
> 
> Dear Christopher,
> 
> 
> Am 07.11.24 um 00:53 schrieb Hall, Christopher S:
> 
>>> From: Paul Menzel <pmenzel@molgen.mpg.de>
>>> Sent: Wednesday, November 06, 2024 3:14 PM
>>
>>> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/6] igc: Lengthen the hardware retry time to prevent timeouts
> 
>>> I’d use the more specific summary/title below:
>>
>> Will do.
>>
>>> igc: Lengthen hardware retry time to 4 μs to prevent timeouts
>>>
>>> Am 06.11.24 um 19:47 schrieb Christopher S M Hall:
>>>> Lengthen the hardware retry timer to four microseconds.
>>>>
>>>> The i225/i226 hardware retries if it receives an inappropriate response
>>>> from the upstream device. If the device retries too quickly, the root
>>>> port does not respond.
>>>
>>> Any idea why? Is it documented somewhere?
>>
>> I do not. Theoretically, 1 us should work, but it does not. It could be a root
>> port problem or an issue with i225/i226 NIC. I am not able to directly observe
>> the state of either. 4 us has worked in all my testing I am comfortable with
>> that value. 2 us also works, but given the limited hardware at my disposal
>> I doubled the value to 4 us to be safe. PTM is not time critical. Typically,
>> software initiates a transaction between 8 and 32 times per second. There
>> is no performance impact for PTM or any other function of the card. The
>> timeout occurs rarely, but if the retry time is too short the PTM state
>> machine does not recover.
> 
> Thank you for clearing this up. If it’s not time critical, why not 
> revert the original patch and go back to 10 μs.
> 
> The referenced commit 6b8aa753a9f9 (igc: Decrease PTM short interval 
> from 10 us to 1 us) also says, that 1 μs was suggested by the hardware 
> team. Were you able to talk to them?
> 
>>>> The issue can be reproduced with the following:
>>>>
>>>> $ sudo phc2sys -R 1000 -O 0 -i tsn0 -m
>>>>
>>>> Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
>>>> quickly reproduce the issue.
>>>>
>>>> PHC2SYS exits with:
>>>>
>>>> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>>>>     fails
>>>
>>> Why four microseconds, and not some other value?
>>
>> See above.
> 
> It’d be great, if you extended the commit message.
> 
>>>> Fixes: 6b8aa753a9f9 ("igc: Decrease PTM short interval from 10 us to 
>>>> 1 us")
>>>>
>>>> -#define IGC_PTM_SHORT_CYC_DEFAULT    1   /* Default short cycle interval */
>>>> +#define IGC_PTM_SHORT_CYC_DEFAULT    4   /* Default short cycle interval */
> 
> Maybe also add a comment, that 1 μs should work, but does not.
> 
> 
> Kind regards,
> 
> Paul
