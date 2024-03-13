Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C1487A7B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 13:39:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 187144009D;
	Wed, 13 Mar 2024 12:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEtYt70m_bWV; Wed, 13 Mar 2024 12:39:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41E8440099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710333574;
	bh=xfEnp6DXPord6dyU3i1iZak7TeciCZzt+wNQamwzDu0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m5lruwuPzoZE2veizmbraNyJtGK7ZP3wTfHnuIFqMFxNFTTp7EBZ6i5Luc39SjdpD
	 CYpnnvUtOraql7S1Wh1kvCqkNohl2w+vT2nT5IchZyZK+w1Rwyj/ncEk4RJF54UvNx
	 sPvFMVNPpbjNk4yj1+8xQpXJaYCigMS1F2XVztVZEqKrLS3V5XjGjf0DW3V0hYYf19
	 R5KAAMvGXebZ+6msDzZ8KXNA4Zk9Fjz/r3PGemg3T7RgMRnJxoi4x++2Z1nIu6CnsG
	 1WVbeDJSriIO13wqsK7W9KkZuVWwURW2C9Rjdud5KHHzryCVjItijFp8ss7/2TsSNQ
	 wYp+qz8vIyIHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41E8440099;
	Wed, 13 Mar 2024 12:39:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 893451BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 12:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74495814A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 12:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwsuyt4h2GeH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 12:39:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2D632814A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D632814A0
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D632814A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 12:39:28 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AA58961E5FE04;
 Wed, 13 Mar 2024 13:39:10 +0100 (CET)
Message-ID: <ec459f09-6355-439f-bb1b-4320cb149ea7@molgen.mpg.de>
Date: Wed, 13 Mar 2024 13:39:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20240313095639.6554-1-aleksandr.loktionov@intel.com>
 <1fa71d41-dc3c-4c1a-8b6e-70aa4c9511c1@molgen.mpg.de>
 <SJ0PR11MB58668956DC932D7C8E25B487E52A2@SJ0PR11MB5866.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <SJ0PR11MB58668956DC932D7C8E25B487E52A2@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix vf may be used
 uninitialized in this function warning
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
Cc: Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Dear Aleksandr,


Thank you for your reply.

Am 13.03.24 um 13:34 schrieb Loktionov, Aleksandr:

>> -----Original Message-----
>> From: Paul Menzel <pmenzel@molgen.mpg.de>
>> Sent: Wednesday, March 13, 2024 11:58 AM

>> Am 13.03.24 um 10:56 schrieb Aleksandr Loktionov:
>>> To fix the regression introduced by commit 52424f974bc5, which causes
>>> servers hang in very hard to reproduce conditions with resets races.
>>> Using two sources for the information is the root cause.
>>> In this function before the fix bumping v didn't mean bumping vf
>>> pointer. But the code used this variables interchangeably, so staled
>>> vf could point to different/not intended vf.
>>>
>>> Remove redundant "v" variable and iterate via single VF pointer across
>>> whole function instead to guarantee VF pointer validity.
>>>
>>> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
>>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> ---
>>> v1 -> v2: commit message change
>>
>> Thank you very much. No need to resend, but I find it also always
>> useful to have the exact warning pasted in the commit message.
>>
> The warning is exactly "vf may be used uninitialized in this
> function"  it's already in the title. What you suggest me to do?
Doesn’t the warning also contain the line number? I’d paste the wohle 
line – as there is also no problem in having some information of the 
summary/title duplicated in the message. Anyway, as written, not important.


Kind regards,

Paul
