Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCE8BDFF3E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 19:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 716A283FC4;
	Wed, 15 Oct 2025 17:53:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EDy0LRhhxDC6; Wed, 15 Oct 2025 17:53:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D79083FF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760550832;
	bh=hp/Nuwc38Z7OYEkKhtIlgotNSr8Am7/Jhj3sfoXTNkk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GJJtYZjF+UjT0M9oA7cKNb9XbgvFBrjRmCAMb23ECLXunu0V+nVB8Oh3Ze+Eaji2T
	 HYLduZRdLhYi0ihdIRGf0Zago78P5BnTIu7pPINZFM2ffApz1ZUMm9nSbZ5dAZbFLE
	 mUg2WUfPaC0qSAxL5pl57Wy6BTdwLkMsNxvvkMYv/yDk6Nb6Z+yQyzucyclKe7OnmK
	 s4u86cfFn7fFqIGmDd+JdfmisUhM3KHoCQaKeWSaTxMfdUoz2jKkbLE8i3JePKp5di
	 RtgCAl+109LN5T2sytGtTQjYQ/7sSEJ4j6iRC5cGIzJUMPh4QfBoXLSzNDybR2RfV0
	 bpkL6dOzbxHxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D79083FF0;
	Wed, 15 Oct 2025 17:53:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 504491C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 17:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39E2440057
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 17:53:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QuxvvTx2WdU4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Oct 2025 17:53:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=groeck7@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4214140010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4214140010
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4214140010
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 17:53:48 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-271d1305ad7so107907795ad.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 10:53:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760550827; x=1761155627;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hp/Nuwc38Z7OYEkKhtIlgotNSr8Am7/Jhj3sfoXTNkk=;
 b=Rq79ZUZwNDMiC6nTly3Kn6phPiQYWvpwyDmML8PFBfnU4EyR5VLZCA4vLMblDUZfD5
 UEbCcFv4CslX3ske8ddxzxcvqn2VVjIaYHUzA5jbmjWsD80BuP7AcchD3TtHCseSGbqb
 tZkV8cDhYU5ZusbRZo2V0jr5MYpSOilxItszlEoL31WtHINEek9dAueCBm+Yc92N4NYb
 hlzyv5RqdCHQ1cOdrIkPo+ChBxrZLTJAL+zcCEVOue8I6rTVqu3ke7vWW941FRSDGsnT
 +3BF9Aj/EXkzk2cjctvOEZssNie5LWXnVOHXWUQOEQRdJH0F7dVZYYSVXW60+OCITaHI
 7qqQ==
X-Gm-Message-State: AOJu0Yy80rRvCEUsvDiO8s5LYGmBfcLYVPXsbAjjqVYbRIEnLWKd2v4P
 YmhLlpQsIlTUCT4rlpaR7Hc3RZgvZ4fqSffmleyUjyzh77mzAuTnJe4J
X-Gm-Gg: ASbGncs0nBY8hYowngCU99BsLl8Ta2eCErVkT5Wu3QX0pNGEkI18odZkTL+U5CMM3R0
 PRfXoXawspWxEDSHcKRyqfnRDuuL/y2mdMtrrmyN8DkcfkKHGqD046kwz/aHoUqioD7zf6trnMq
 TBjMa63HBXlP0wzDhXx4xkw046kN6zVRh6QXsY4GW8mddXrW0XUjTBO2myUsu8EUF48qArf36xc
 acEqHRUqgDOS41WcA84Kjgi9Mg1lWs+Z6zc5lcs0tuGcggfpAabQwY+9xXxXBFa+lPNHXv/eiQA
 Feg8boEgeQBY7kCMRgnGNpMp5ST5iUij3XPtvWg+pu721I2X0L55rxarKIqwYTrc9YsJxj16IWk
 ZH0+LICS1+00elI/nIcWIDE80Me7uoYd5U/Uoli+IQeJi09d8N0+DuyfYHzt98ZCFSycKpXhGpR
 9F7qDQeXyIXZiPmL0gu2j9chhW2RE8J1Q8tnY=
X-Google-Smtp-Source: AGHT+IE6uYN73YkBBSE70m0dCIAoYj5ndrBXem7j2fPzhYt8+AH8vZYZh019bHy61G9OIiEIrYd/uw==
X-Received: by 2002:a17:903:1b64:b0:28b:4ca5:d522 with SMTP id
 d9443c01a7336-290273ecb07mr372344675ad.39.1760550827419; 
 Wed, 15 Oct 2025 10:53:47 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5?
 ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-290993466absm2779815ad.35.2025.10.15.10.53.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Oct 2025 10:53:46 -0700 (PDT)
Message-ID: <e94f188d-3578-447f-8815-6c2393f2f807@roeck-us.net>
Date: Wed, 15 Oct 2025 10:53:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
 <11eac3d4-d81c-42e2-b9e3-d6f715a946b2@intel.com>
 <aO8wDmPWWEV6+tkZ@mev-dev.igk.intel.com>
 <0c8c5f34-c5cb-4a81-98fc-e3b957a2a8e9@intel.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <0c8c5f34-c5cb-4a81-98fc-e3b957a2a8e9@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760550827; x=1761155627; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=hp/Nuwc38Z7OYEkKhtIlgotNSr8Am7/Jhj3sfoXTNkk=;
 b=Y/3JsXAZ8lXJkiusu+vRbPGfADepPfeswKekbKyLqvnEIJ6VfMOMSFzfJaBy/N0OI0
 KsXPGki1Ul+JWfm0YS0blVWE0M1XbPo/IxHfUl+pSODsYF0KUMtZt9ZEFSal0+d7oAJS
 kUGbyYnp+CEswo5kFDglLyKaLYYZSV3/4VplMMV5OP/umCBq9wd82nTnuk7ynzCOBe3w
 TSn1hn4VB+FXk7iUILyRYJ+ZB44rPbFsiEjRbOdKIkXfdfnZvTjiXl5JQfS11NprCU8/
 oZmYJlEZXTkFWfy/EmsUuuUGzMXCa607x+UUAbUu+MDGd8N3YAN96OKPLGS8MqBusYwt
 vDYw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=roeck-us.net
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Y/3JsXAZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: guard fwlog code by
 CONFIG_DEBUG_FS
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

On 10/15/25 10:32, Jacob Keller wrote:
> 
> 
> On 10/14/2025 10:24 PM, Michal Swiatkowski wrote:
>> On Tue, Oct 14, 2025 at 04:41:43PM -0700, Jacob Keller wrote:
>>>
>>>
>>> On 10/14/2025 7:11 AM, Michal Swiatkowski wrote:
>>>> Building the ixgbe without CONFIG_DEBUG_FS leads to a build error. Fix
>>>> that by guarding fwlog code.
>>>>
>>>> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
>>>> Reported-by: Guenter Roeck <linux@roeck-us.net>
>>>> Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb176058@roeck-us.net/
>>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>>> ---
>>>
>>> Hm. It probably is best to make this optional and not require debugfs
>>> via kconfig.
>>
>> Make sense
>>
>>>
>>>>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 ++
>>>>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h | 8 ++++++++
>>>>   2 files changed, 10 insertions(+)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>>> index c2f8189a0738..c5d76222df18 100644
>>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>>> @@ -3921,6 +3921,7 @@ static int ixgbe_read_pba_string_e610(struct ixgbe_hw *hw, u8 *pba_num,
>>>>   	return err;
>>>>   }
>>>>   
>>>> +#ifdef CONFIG_DEBUG_FS
>>>>   static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
>>>>   			    u16 size)
>>>>   {
>>>> @@ -3952,6 +3953,7 @@ void ixgbe_fwlog_deinit(struct ixgbe_hw *hw)
>>>>   
>>>>   	libie_fwlog_deinit(&hw->fwlog);
>>>>   }
>>>> +#endif /* CONFIG_DEBUG_FS */
>>>>   
>>>
>>> What does the fwlog module from libie do? Seems likely that it won't
>>> compile without CONFIG_DEBUG_FS either...
>>
>> Right, it shouldn't, because there is a dependency on fs/debugfs.
>> It is building on my env, but maybe I don't have it fully cleaned.
>> I wonder, because in ice there wasn't a check (or select) for
>> CONFIG_DEBUG_FS for fwlog code.
>>
>> Looks like LIBIE_FWLOG should select DEBUG_FS, right?
>> I will send v2 with that, if it is fine.
>>
>> Thanks
>>
> My only worry is that could lead to ice selecting LIBIE_FWLOG which then
> selects DEBUG_FS which then means we implicitly require DEBUG_FS regardless.
> 
> I don't quite remember the semantics of select and whether that would
> let you build a kernel without DEBUG_FS.. I think some systems would
> like to be able to disable DEBUG_FS as a way of limiting scope of
> available interfaces exposed by the kernel.
> 

If fwlog depends on debugfs, why not spell out that dependency and
provide dummy functions if it isn't enabled ? The Kconfig entries
selecting it could then be changed to
	select LIBIE_FWLOG if DEBUG_FS

Guenter

