Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F0B6B7B14
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 15:52:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4DAA408F2;
	Mon, 13 Mar 2023 14:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4DAA408F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678719167;
	bh=D1xwczbjINP5+lDYiDzhjMV+ck7PiM1D9JnqDH3o0co=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rOEqRhJ17jiRstjvI1BCWxjHSUYmCRB4b67lXNGz5L1c9gyurH7AB9EPBolyvoaB/
	 Sm4tErWAz2d1ebNCUhexAVb/73FmZTTSAe6pMtLxEtFr974g2Fftz+RH2OEGOWNWOl
	 3hIe084f0FVT2PgD2/lcJmbi8XVixg/4gsj2n02E9fbPWxUTuET5ZMDRL5vuiTwSQ1
	 teS62J2J26Gc7R6Ai4IIxjIVLHwi9dxUqxVtd4IL+7VAbgyxoHHOm1K6lRu79N/xwW
	 pbREAMKqUK3Lr+5RY4hRUMaoH3hWHJ6z/eLWvLSePnqeB1No9puqXjAm3tnpGvOfCB
	 whzo80uh3bcHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbC4-V9i1B_U; Mon, 13 Mar 2023 14:52:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C10B6408EB;
	Mon, 13 Mar 2023 14:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C10B6408EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B25ED1BF59C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 14:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8BF6E408DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 14:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BF6E408DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntdpROZyinmg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 14:52:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5045B400DD
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5045B400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 14:52:39 +0000 (UTC)
Received: from [192.168.0.10] ([176.126.68.120]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N5max-1qcqyK1RZT-017EpX; Mon, 13 Mar 2023 15:52:23 +0100
Message-ID: <92a1e05a-f892-5c1b-842a-d55662b9d26a@kpanic.de>
Date: Mon, 13 Mar 2023 15:52:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: de-DE
To: Michal Kubiak <michal.kubiak@intel.com>
References: <20230310122653.1116051-1-sassmann@kpanic.de>
 <ZAtnqlHZ02EJn5xt@localhost.localdomain>
 <9f1e4087-239e-3a1a-dc35-59a4680e676b@kpanic.de>
 <ZA7pqdS04x0T7ExN@localhost.localdomain>
From: Stefan Assmann <sassmann@kpanic.de>
In-Reply-To: <ZA7pqdS04x0T7ExN@localhost.localdomain>
X-Provags-ID: V03:K1:cHoSFw/gCEtDp/feENelhn4dYudd9rtFneeleWLmt1gE/W/ZZ80
 PkXKEkgR2EVits1zGBQlIb523h49NTda1kKxbGblu/EuJX1q2UWuO5iQfRzL8o41VK5h6BG
 FOa5xwcYJd/hZyQNw4tDhYfxMOAnZNJj62OmvC75SIu/9QwDNFOu/Yh1AszSpwSLjNVkwci
 o4q7tg/8NR831DdW9k2lQ==
UI-OutboundReport: notjunk:1;M01:P0:EkaWSYnkM4o=;UA0PCt3okafQp8d3BEkngO1ZWFK
 DmbKwvbkUEi1oxB+3M8ecnf1khppNLbxrrWzNtrxeWu0LDZvvbsYb5ip5jvwJwDEq4KP6cxQW
 hwZThsg398v8niYV/MapWZITHXbNJkY8iM17i7tfWwMSvL2+6eXHtQsmry8xAF/d5h12amUAW
 d3iCVZeI7bFGskfPziHKtgGKRI2DxY6tHdTwqcex1WitfejegAUDXZ6mbYbvBn23MA4RIhSZJ
 KWys67LKLJq7sYiZLNWfs9QnWdz7w8gGIdJTzYKVuEp993m5T8NfnJQxWdjH1s9i7jfqp+iNX
 jOfEoIi1ZCTUyfWPIXN0O3j+J//B0Ff/jsCWEfCMulfPy3FGMfQjrwwhvKF4UNQleIFZa3OQn
 YRvFeBgkzz0JLIkE53DS+BP4MrvdprDUal2HGPZnRqI+16JJW9tG1QLCFNqruFZ5TmzyrpEVR
 D3pDkXmZWgg4jJTCoSzZPrD8puUSMi6DvrGRJP93QprGzqAqDoshTAPaj5Dd54AJcDoP0z+QR
 helWXWd94PGp/ClTkLE83o6XKB9d+XfoejKtCxhIvS4CiY0alLQ+aHt4refWOyBEqiT+7+iOD
 x102j6JzeIBllmU+fOdazgmbESpGNmJ7mbWwKJ+iumNgXn+Gl3+pbZWa4/1Qp5mQJbZUBe0N7
 GKW3aVmNz/JWm7LJhVluN8+sp09jZTEelUWR8Lx4zw==
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix hang on reboot with ice
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, patryk.piotrowski@intel.com,
 slawomirx.laba@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13.03.23 10:15, Michal Kubiak wrote:
> On Mon, Mar 13, 2023 at 07:48:52AM +0100, Stefan Assmann wrote:
>>
>> Hi Michal,
>>
>> is it okay to add this change in a follow-up patch? I'd like to get this
>> patch merged quickly since we have a customer being blocked by this
>> issue.
>>
>> Thanks!
>>
>>   Stefan
> 
> 
> Hi Stefan,
> 
> I think it is OK.
> Moreover, I consulted that idea with Slawomir Laba - the author of that loop.
> It seems adding a timeout needs a further investigation. Slawomir claims
> that adding that timeout may cause some side effects in other corner cases,
> so for now let's leave your patch as it is.
> Thank you for fixing it!

Hi Michal, Slawomir,

I looked at this once more and noticed that iavf_remove() had the
following code removed in a8417330f8a5.
       /* When reboot/shutdown is in progress no need to do anything
        * as the adapter is already REMOVE state that was set during
        * iavf_shutdown() callback.
        */
       if (adapter->state == __IAVF_REMOVE)
               return;

So instead of breaking out of the while(1) loop, in iavf_remove(), it
might be better to simply return and avoid going through the whole of
iavf_remove(). That's more in line with the behaviour before
a8417330f8a5.
Otherwise pci_disable_device() might be called twice and give a warning,

  Stefan

> 
> Thanks,
> Michal
> 
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
