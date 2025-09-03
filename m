Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B70B41B1D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 12:06:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 174E461554;
	Wed,  3 Sep 2025 10:06:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YdR4l8vg4gJp; Wed,  3 Sep 2025 10:06:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BFC861552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756893961;
	bh=EA9HHU3PvtBg+lD4L5AqD1cu5f34Hf0u2RaEvtIhKfU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7hyiU5BaQRzOq2G7RZS+etrU80hAYnd5U1spAUTgXKNfIjT+tiMrPrpvq71kIAFJp
	 UUMUBdW9uYpjd9U2UiAjDQT3v3uoievWCO+R99CbLqCFDThtXEYEmLFfshFVcIQlXm
	 buO7OodH/bDGerHv05/5YG4DLv2aCX9OWkTWd1mr2HFukSoxsAqdhvqDX4WVNrZgYK
	 lCj6/rfIjCxzJ55ZUvDw//Lxr4yZ4t/Jyqj3ouc3BLrTRb493DiuDVVmk40DyDW/cd
	 CpX9DhljqQbyXMiFtcnEUNyKmwvl6B4tDFGjuf/oUlFbmYW63mbAvTn0LQNSDMm05R
	 1Ys9ArMT/oFyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BFC861552;
	Wed,  3 Sep 2025 10:06:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DB45439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 10:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FC5C4215E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 10:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id doIHsZJS87Ri for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 10:05:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A0BC742184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0BC742184
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A0BC742184
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 10:05:57 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-661-YdWuCM6SNJ6Tt4JfczjsPA-1; Wed, 03 Sep 2025 06:05:52 -0400
X-MC-Unique: YdWuCM6SNJ6Tt4JfczjsPA-1
X-Mimecast-MFC-AGG-ID: YdWuCM6SNJ6Tt4JfczjsPA_1756893952
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3dc3f943e6eso525155f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 03:05:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756893952; x=1757498752;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EA9HHU3PvtBg+lD4L5AqD1cu5f34Hf0u2RaEvtIhKfU=;
 b=wYoT5c9zRMejRN8F8DvptI5mQII7h7hklqbZXCbyLuMNGX/vZvIwFMMQGZm73qavmh
 a9Af4PIRJhk4ykOWoaaA9/0HB2IbAUdyvAW984LdJXZ0Ag3blfgaUjlYJIwDP6R9/8DC
 VWG2nlW/ocXFAG4Nau1qIBwv8S1e+YkbBYjEl4GT/3d2d4vWzZNRGys+LthBK+c4np6K
 UVm+1g1Swl8r3hY2Is7oMWe9c52hO57eOnHc/t4dr0j8ZSAHSK1FT7u5MgaNpVvTz5Xa
 AicTN/9JNkmvX1m49udM+T4TwHFb7Q4riIxGgy9TdKy0sR4+ykqbaa3RRgMMLmykq1tJ
 FZlw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWajSmxoOfWunb4oZupU8RYfUw6LKT8cj+G/tdHINtS3M9rnMux/hMH1b2xUu8x8aMZifAxNCmpEbWouY1WZuU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxlwBlykxr3uPAKwOBqvhTyCYSmqhz5T18rnngvs9YajDp4J2uI
 C6St3vHwlhjgV2+pTmRyD3cYkERP9DVVFGqFcONfBYOYkLfy49sdvcOrweEEk69yF9jzTRTxKVr
 /KN1KqDMdl2fPw37b+6JkO9ZIRbFylZBHgwf4NJr1VJ5WtIUMOXBQXqrs+9DOL8LbfgTBFwg=
X-Gm-Gg: ASbGncuVYUs6T0JjiTUcUL//XFXNTtul/PEvZ91s56Ncqq4neCvy/gxAU3wE1olvBR6
 tfSmA8kRN0eU4La5tTCn4yww+LQuKIas/xgQnrEVpgtU8TdZHKjep2okDcmUXazPLT48Nhg1Nvg
 GaXoAb9wLq5H7N4tUgwyfolQuCh8SOvDcHqW2QZY9Z7P2PNmdvwL/EG5TZs3aSV84Igiab/r3Zq
 HzvT+QaTp6mAh2rTDu8HAMgIEnSDVfVCzKaU9p/2XYqBacsPZY9GylNAzASi6eb4kZAMvtbRSOp
 Yo5CnLq1cl0Imk2OtfQigpZ5rdfdm+u4ErEdgMBnl4g=
X-Received: by 2002:a05:6000:26c4:b0:3c9:b8b7:ea4e with SMTP id
 ffacd0b85a97d-3d1dddf0bb6mr11319807f8f.19.1756893951614; 
 Wed, 03 Sep 2025 03:05:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVOXoPZ7BPX/XFKABihtdsW//N0+PzKwU75BmJnyEGwill00FaomBFArdepVzs0O6QDYnCrA==
X-Received: by 2002:a05:6000:26c4:b0:3c9:b8b7:ea4e with SMTP id
 ffacd0b85a97d-3d1dddf0bb6mr11319779f8f.19.1756893951165; 
 Wed, 03 Sep 2025 03:05:51 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3da13041bcasm6733988f8f.35.2025.09.03.03.05.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Sep 2025 03:05:50 -0700 (PDT)
Message-ID: <22e2c955-61b7-4a1e-ab91-21cd1906a604@redhat.com>
Date: Wed, 3 Sep 2025 13:05:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "przemyslawx.patynowski@intel.com" <przemyslawx.patynowski@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
References: <20250903075810.17149-1-mheib@redhat.com>
 <20250903075810.17149-2-mheib@redhat.com>
 <IA3PR11MB8986F453579349C3518B312CE501A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <IA3PR11MB8986F453579349C3518B312CE501A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: noOJzBXXe5RzfGVV2dXVpSERyhapFLRAI8XSiX3kb3o_1756893952
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756893956;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EA9HHU3PvtBg+lD4L5AqD1cu5f34Hf0u2RaEvtIhKfU=;
 b=T1/9WPQ6647DSQ8ZhP6f7o+5Go/1otrZoQI+isQ2MvDKsHAgflbT0hpIgyGHggQUqqAD6V
 aG10w0viXsNkZdiMXN0eZgRngiaHNiTjnWfqdfqB7EkQneBC4jvOc7BjpCdKYwoi1UWOoQ
 8DEO+s2Q7XL+A8p15ckWaKek7X0EIg8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=T1/9WPQ6
Subject: Re: [Intel-wired-lan] [PATCH net-next,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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


Hello Aleksandr,

Thank you for your review.

On 9/3/25 12:07 PM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: mheib@redhat.com <mheib@redhat.com>
>> Sent: Wednesday, September 3, 2025 9:58 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: przemyslawx.patynowski@intel.com; jiri@resnulli.us;
>> netdev@vger.kernel.org; horms@kernel.org; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Mohammad Heib <mheib@redhat.com>
>> Subject: [PATCH net-next,2/2] i40e: support generic devlink param
>> "max_mac_per_vf"
>>
>> From: Mohammad Heib <mheib@redhat.com>
>>
>> Add support for the new generic devlink runtime parameter
>> "max_mac_per_vf", which controls the maximum number of MAC addresses a
>> trusted VF can use.
> 
> 
> Good day Mohammad,
> 
> Thanks for working on this and for the clear explanation in the commit message.
> 
> I have a couple of questions and thoughts:
> 
> 1) Scope of the parameter
>      The name max_mac_per_vf is a bit ambiguous. From the description,
>      it seems to apply only to trusted VFs, but the name does not make that obvious.
>      Would it make sense to either:
> 	- Make the name reflect that (e.g., max_mac_per_trusted_vf), or
> 	- Introduce two separate parameters for trusted and untrusted VFs if both cases need to be handled differently?
I agree that the name could be a bit confusing. Since this is a generic 
devlink parameter, different devices may handle trusted and untrusted 
VFs differently.
For i40e specifically, the device does treat trusted VFs differently 
from untrusted ones, and this is documented in devlink/i40e.rst.
However, I chose a more general name to avoid creating a separate 
devlink parameter for untrusted VFs, which likely wouldn’t be used.
On reflection, I should update the patch number 1 to remove the 
**trusted VF** wording from the description to avoid implying that the 
parameter only applies to trusted VFs.
> 
> 2)Problem statement
>      It would help to better understand the underlying problem this parameter is solving.
>      Is the goal to enforce a global cap for all VFs, or to provide operators with a way
>      to fine-tune per-VF limits? From my perspective, the most important part is
>      clearly stating the problem and the use case.
> 
My main goal here is to enforce a global cap for all VFs.
There was a long discussion [1] about this, and one of the ideas raised 
was to create fine-tuned per-VF limits using devlink resources instead 
of a parameter
However, currently in i40e, we only create a devlink port per PF and no 
devlink ports per VF.
Implementing the resource-per-VF approach would therefore require some 
extra work.
so i decided to go with this global cap for now.
[1] - 
https://patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2-dhill@redhat.com/
> 3)Granularity
>      If the intent is to give operators flexibility, a single global parameter might not be enough.
>      For example, limiting the number of MAC filters per specific VF (or having different limits for trusted vs. untrusted)
>      could be a real-world requirement. This patch doesn't seem to address that scenario.
> 
> Could you share more details about the use case and whether per-VF granularity was considered?
> 
> Thanks again for the work on this. Looking forward to your thoughts.
> 
> Best regards,
> Aleksandr
> 
please see - 
https://patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2-dhill@redhat.com/
>>
>> By default (value 0), the driver enforces its internally calculated
>> per-VF MAC filter limit. A non-zero value acts as a strict cap,
>> overriding the internal calculation.
>>
>> Please note that the configured value is only a theoretical maximum
>> and a hardware limits may still apply.
>>
>> - Previous discussion about this change:
>>    https://lore.kernel.org/netdev/20250805134042.2604897-1-
>> dhill@redhat.com
>>    https://lore.kernel.org/netdev/20250823094952.182181-1-
>> mheib@redhat.com
>>
>> Signed-off-by: Mohammad Heib <mheib@redhat.com>
>> ---
> 
> ...
> 
>> --
>> 2.50.1
> 
  Thank you,

