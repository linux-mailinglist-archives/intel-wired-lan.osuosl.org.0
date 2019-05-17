Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C92FC21BE6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2019 18:47:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C29A86B43;
	Fri, 17 May 2019 16:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 24PWImbTx0TR; Fri, 17 May 2019 16:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0179E86B31;
	Fri, 17 May 2019 16:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6703D1BF397
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 16:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 62D6A8841E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 16:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aKGuvqVU3-KM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 16:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A815388418
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 16:47:29 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id g9so3593787plm.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 09:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1TA56KRJD9j26+iz6Zp+zH5k5oFmguAETPQ3W01w7IU=;
 b=qCm521a6w+ChsKmLBfMK9ivjA8mD9z6iaMIWHqsFBcn46OQsU2LiZXmLqzpaeOI7I3
 MxVZgoykCD3xDPRf6oC5xnD1xOHGjcWJWN3aunwUbV9UoRHUKV5jylTmjiJvRG1xbxls
 yZaPfl6YzJEL/Nf2M/RGfJDh9u0RvsG48UDACd+h38ebm6KCnIlgJ7mJ9+oT1MT7Bus+
 5o+NknZ4dvi6TMOS8vZTQmagIKpd+ouzBhLrYAVCuQs+LTM/UnHx2adnwsxi2OKPb8L9
 TfT9Vu4OJtcj10AS2ActnRf4oV4OlcNCVXLY29vZcXQsHKcXDJ/+5axQfD4Nhp6Abl7Z
 LXDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=1TA56KRJD9j26+iz6Zp+zH5k5oFmguAETPQ3W01w7IU=;
 b=cZHaCpYWVK78lMaQhgiu7ExIQDvUUo6EjkZZDGQw/kXJ+mj2Ok63Od2j6R/BIh0Hjf
 N9XFDdQoZpVJ3kYOBifFOPu8j/C+9u5+OzArqqeui+qsLibIN4rsNyhjKNKU330NUNph
 7CJTz6k7f0/dv/0eesAip14qpyzyf9G9+p3hf7BWnnMSR7C1tsSAyUQbRl1kXU/B2NSC
 Qmy6H11bisHbCgg/586zZmlZOaVBMnknQKG+w9HEDIYsEVINx6BMm5VXVZHjKIeco23k
 /FS/DPc+lri8ElRdmJ6FvMVaF15xLj+AOecIicM2H7/uR5KsgyezX/hmUnYMGKvg7JKp
 NQ4A==
X-Gm-Message-State: APjAAAW0XarYdCwNFVuPSKLz4FsAvq+75gn/KITfsfcEJJycON6zZPRL
 ygNWXAzqI9bEOm2VEqAueSA=
X-Google-Smtp-Source: APXvYqxpgVSc/VcnJr7/XSdAbAifRHCl+6jHumh+mPv0JbZGYk4MTLGGVB8v2//wP/zVsZfHzZZcsw==
X-Received: by 2002:a17:902:2883:: with SMTP id
 f3mr32339378plb.26.1558111649113; 
 Fri, 17 May 2019 09:47:29 -0700 (PDT)
Received: from [10.67.49.52] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id
 e12sm18860292pfl.122.2019.05.17.09.47.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 09:47:28 -0700 (PDT)
To: Daniel Walker <danielwa@cisco.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
References: <1557357269-9498-1-git-send-email-nkela@cisco.com>
 <9be117dc6e818ab83376cd8e0f79dbfaaf193aa9.camel@intel.com>
 <76B41175-0CEE-466C-91BF-89A1CA857061@cisco.com>
 <4469196a-0705-5459-8aca-3f08e9889d61@gmail.com>
 <20190517010330.2wynopuhsqycqzuq@zorba>
 <bd9e6a93-c8e8-a90e-25b0-26ccbf65b7c4@gmail.com>
 <CAKgT0Uev7sfpOOhusAg9jFLkFeE9JtTntyTd0aAHz2db69L13g@mail.gmail.com>
 <20190517163643.7tlch7xqplxohoq7@zorba>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <c4c7ecb7-45e2-6e56-bd5d-1be189c79c3b@gmail.com>
Date: Fri, 17 May 2019 09:47:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517163643.7tlch7xqplxohoq7@zorba>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] igb: add parameter to ignore nvm
 checksum validation
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
Cc: "Nikunj Kela \(nkela\)" <nkela@cisco.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/17/19 9:36 AM, Daniel Walker wrote:
> On Fri, May 17, 2019 at 08:16:34AM -0700, Alexander Duyck wrote:
>> On Thu, May 16, 2019 at 6:48 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>>>
>>>
>>>
>>> On 5/16/2019 6:03 PM, Daniel Walker wrote:
>>>> On Thu, May 16, 2019 at 03:02:18PM -0700, Florian Fainelli wrote:
>>>>> On 5/16/19 12:55 PM, Nikunj Kela (nkela) wrote:
>>>>>>
>>>>>>
>>>>>> On 5/16/19, 12:35 PM, "Jeff Kirsher" <jeffrey.t.kirsher@intel.com> wrote:
>>>>>>
>>>>>>     On Wed, 2019-05-08 at 23:14 +0000, Nikunj Kela wrote:
>>>>>>    >> Some of the broken NICs don't have EEPROM programmed correctly. It
>>>>>>    >> results
>>>>>>    >> in probe to fail. This change adds a module parameter that can be
>>>>>>    >> used to
>>>>>>    >> ignore nvm checksum validation.
>>>>>>    >>
>>>>>>    >> Cc: xe-linux-external@cisco.com
>>>>>>    >> Signed-off-by: Nikunj Kela <nkela@cisco.com>
>>>>>>    >> ---
>>>>>>    >>  drivers/net/ethernet/intel/igb/igb_main.c | 28
>>>>>>    >> ++++++++++++++++++++++------
>>>>>>    >>  1 file changed, 22 insertions(+), 6 deletions(-)
>>>>>>
>>>>>>     >NAK for two reasons.  First, module parameters are not desirable
>>>>>>     >because their individual to one driver and a global solution should be
>>>>>>     >found so that all networking device drivers can use the solution.  This
>>>>>>     >will keep the interface to change/setup/modify networking drivers
>>>>>>     >consistent for all drivers.
>>>>>>
>>>>>>
>>>>>>     >Second and more importantly, if your NIC is broken, fix it.  Do not try
>>>>>>     >and create a software workaround so that you can continue to use a
>>>>>>     >broken NIC.  There are methods/tools available to properly reprogram
>>>>>>     >the EEPROM on a NIC, which is the right solution for your issue.
>>>>>>
>>>>>> I am proposing this as a debug parameter. Obviously, we need to fix EEPROM but this helps us continuing the development while manufacturing fixes NIC.
>>>>>
>>>>> Then why even bother with sending this upstream?
>>>>
>>>> It seems rather drastic to disable the entire driver because the checksum
>>>> doesn't match. It really should be a warning, even a big warning, to let people
>>>> know something is wrong, but disabling the whole driver doesn't make sense.
>>>
>>> You could generate a random Ethernet MAC address if you don't have a
>>> valid one, a lot of drivers do that, and that's a fairly reasonable
>>> behavior. At some point in your product development someone will
>>> certainly verify that the provisioned MAC address matches the network
>>> interface's MAC address.
>>> --
>>> Florian
>>
>> The thing is the EEPROM contains much more than just the MAC address.
>> There ends up being configuration for some of the PCIe interface in
>> the hardware as well as PHY configuration. If that is somehow mangled
>> we shouldn't be bringing up the part because there are one or more
>> pieces of the device configuration that are likely wrong.
>>
>> The checksum is being used to make sure the EEPROM is valid, without
>> that we would need to go through and validate each individual section
>> of the EEPROM before enabling the the portions of the device related
>> to it. The concern is that this will become a slippery slope where we
>> eventually have to code all the configuration of the EEPROM into the
>> driver itself.
>  
> 
> I don't think you can say because the checksum is valid that all data contained
> inside is also valid. You can have a valid checksum , and someone screwed up the
> data prior to the checksum getting computed.
> 
> 
>> We need to make the checksum a hard stop. If the part is broken then
>> it needs to be addressed. Workarounds just end up being used and
>> forgotten, which makes it that much harder to support the product.
>> Better to mark the part as being broken, and get it fixed now, than to
>> have parts start shipping that require workarounds in order to
>> function.o
> 
> I don't think it's realistic to define the development process for large
> corporations like Cisco, or like what your doing , to define the development
> process for all corporations and products which may use intel parts. It's better
> to be flexible.

Nikunj indicated that "manufacturing fixes NIC" so that sounds like a
workaround for an issue that would not affect a final product, in which
case, keeping downstream changes for development boards/intermediate
revisions of a product and focusing on relevant upstreaming changes for
the actual product would make a lot more sense, no?
-- 
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
