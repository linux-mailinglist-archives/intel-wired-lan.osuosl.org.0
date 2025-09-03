Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B90B41AEC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 12:00:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E71461558;
	Wed,  3 Sep 2025 10:00:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UAv9b4jj98kT; Wed,  3 Sep 2025 10:00:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CC5061547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756893652;
	bh=UQePMhEqs57hDsrOuFDcA6yCeqwhGFlPIBQNDbid+qo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lS4pxUkw5Ot6x46krQlgbgz0pMjC568WLGfFELakNrfAfmCT84TFt2Jh+KYxhwiJU
	 imgXlVlA9IyWK4rbGXZQtFXTTORwp4HQN0PKweogeGjA8i1OW0l6DA+PC6pi0x74a7
	 yeDMU5VDH/H9kSQGujnkoZhrb+DKy5i1zE3mWQkwLISe/aHG0FVnGsrgq6o2on8Wck
	 VerR5tbDEaJxYjoRdJTG9WOOuRxL0gGc0LXzsiLkRTevvmSayvaUAtMgj90u15aQSP
	 YbLgwWQIp5Ld9RhCopL99h081LS5t6nCjdIRFwt5HNUr3BlwJMpqJV46R4qYHX8fV7
	 /hc2wdy0E4oFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CC5061547;
	Wed,  3 Sep 2025 10:00:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 36827439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 10:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27FEA83B66
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 10:00:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qGXTmLuyO-VP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 10:00:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D344083B81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D344083B81
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D344083B81
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 10:00:48 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-626--alL4q21PaSoJY8Xw_jFQg-1; Wed, 03 Sep 2025 06:00:45 -0400
X-MC-Unique: -alL4q21PaSoJY8Xw_jFQg-1
X-Mimecast-MFC-AGG-ID: -alL4q21PaSoJY8Xw_jFQg_1756893644
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3da4c617a95so1295691f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 03:00:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756893644; x=1757498444;
 h=in-reply-to:from:content-language:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=UQePMhEqs57hDsrOuFDcA6yCeqwhGFlPIBQNDbid+qo=;
 b=qrkT1fgEIJk/J/sffIPhh5Eq/BnApbDESdcb6atFHQuW6w2YNmz/GhSdhUxAFGVX+F
 m4ayUiPN0j90HqMYY0GX+hcLgJFnBTCSPB99NAjTAI8zjQZ+MUgFWsPBdvnDDCXv3VtG
 wsAkYuYfDdpMwGYRXmhIJJAC6UENN+RTswQNixkrZEAJg2/MPv/iElb+vtL5hTh0UWtM
 bVzVOCLV96Jzk2xhJhWWgK9m16IniGspiBVRokOHArSd8T6FUlt+FPsqHwxGPc5Bjqv/
 W9yD+q6Ar7xFk7uUw4vO5PUBy9B4rhmZRHh6Uz4/+clNf11S7qIOwCThNQgFIz6o8/8x
 xohw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZh5kzcEMW+25EDeYxh6XBNA90f9shldInpyUz/kMZStQ15vNxwk7SMFQ++MYJHvTNblLIBrhh0TYNwxFWYAA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzblShxQVrzF6LspkaPKakX2ffw72mVC6ByOxgDmz2TnPaCieya
 PHbPPC3S6mUIx2+4KgkTjN6AP3v+aUkF09htJYz9u/HMw7ywiz8f5RnOZlbJTcxodgHpSBlYeXz
 oc8EuOFDK4rZRFA0HoH9qVaGJF2vkcPNoSPDCKv5b1EA233un+bTk/rAQInTbiGRJHnJPEZs=
X-Gm-Gg: ASbGncs89RA24s03AWeFB8vLRQFQL4fUUjF52BFAB/kme9le4h4LiJciIGHqTK43em3
 GrYskFe4sPiw19Ifqmrk47fKJj8WG42iBXnONWZ1DfH88rv4tMz15EHbfGnevbE219Frv4c18yb
 6iE+86DbB2neIRBVv9DxS/py3kNlImBQh649IOXl/DSCzhYYkbSpPfBkH18WFVwvpnbmsk0r0qn
 kOZ10wN+pxub9n9i3TmhJW4ibk1GLm28kL8QEn1nBk0n6R3T3bje2lfFe2QiV0nlplU+P5v2dxb
 F+5xJP/gz0PvxoE4GH5m2ruNIGRpe6cvnkuiN9y/1w4=
X-Received: by 2002:a05:6000:26c4:b0:3d0:e908:a10b with SMTP id
 ffacd0b85a97d-3d1e0a98afdmr11351897f8f.56.1756893643572; 
 Wed, 03 Sep 2025 03:00:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/+gZ1XyZP8U4FKcbZM2pXz/QXPH407SraomqagFugQuovb/UUw/QcNcfjEt58nV7MA/zo2Q==
X-Received: by 2002:a05:6000:26c4:b0:3d0:e908:a10b with SMTP id
 ffacd0b85a97d-3d1e0a98afdmr11351850f8f.56.1756893642841; 
 Wed, 03 Sep 2025 03:00:42 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45b940bbc0dsm78655065e9.2.2025.09.03.03.00.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Sep 2025 03:00:42 -0700 (PDT)
Message-ID: <3b950579-9ed9-4bcc-9809-441c2141615f@redhat.com>
Date: Wed, 3 Sep 2025 13:00:39 +0300
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
X-Mimecast-MFC-PROC-ID: l7OW1RmaDcr5-KXi0abBpoBJGJPbNJWFbJ1hRp6W--I_1756893644
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative;
 boundary="------------3bi9Z1ArNsAemFu0Nhgv3G0g"
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756893647;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UQePMhEqs57hDsrOuFDcA6yCeqwhGFlPIBQNDbid+qo=;
 b=MU0bfPPsBPimC+9ZsVpSaWwB/dAjKPINbBG/vigVSPbKwKd/bTfmEWlKn5GEDnbTMJM8/v
 303T4B38EI+I9az/PJ216Zbkj+79iGwHU8vt6LvBkw+QA65NIIC0fvdFlRaVRVd8+HN4t2
 U+R2fCAsy4ZIEZ7a9fNpjN7i7TA3s2Y=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MU0bfPPs
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

This is a multi-part message in MIME format.
--------------3bi9Z1ArNsAemFu0Nhgv3G0g
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Aleksandr,

Thank you for your review.


On 9/3/25 12:07 PM, Loktionov, Aleksandr wrote:
>
>> -----Original Message-----
>> From:mheib@redhat.com <mheib@redhat.com>
>> Sent: Wednesday, September 3, 2025 9:58 AM
>> To:intel-wired-lan@lists.osuosl.org
>> Cc:przemyslawx.patynowski@intel.com;jiri@resnulli.us;
>> netdev@vger.kernel.org;horms@kernel.org; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Mohammad Heib<mheib@redhat.com>
>> Subject: [PATCH net-next,2/2] i40e: support generic devlink param
>> "max_mac_per_vf"
>>
>> From: Mohammad Heib<mheib@redhat.com>
>>
>> Add support for the new generic devlink runtime parameter
>> "max_mac_per_vf", which controls the maximum number of MAC addresses a
>> trusted VF can use.
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

please see - 
https://patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2-dhill@redhat.com/

>
> Best regards,
> Aleksandr
>
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
>> Signed-off-by: Mohammad Heib<mheib@redhat.com>
>> ---
> ...
>
>> --
>> 2.50.1
Thank you,
--------------3bi9Z1ArNsAemFu0Nhgv3G0g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello Aleksandr,</p>
    <p><span style="white-space: pre-wrap">Thank you for your review.
</span></p>
    <br>
    <div class="moz-cite-prefix">On 9/3/25 12:07 PM, Loktionov,
      Aleksandr wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:IA3PR11MB8986F453579349C3518B312CE501A@IA3PR11MB8986.namprd11.prod.outlook.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">-----Original Message-----
From: <a class="moz-txt-link-abbreviated" href="mailto:mheib@redhat.com">mheib@redhat.com</a> <a class="moz-txt-link-rfc2396E" href="mailto:mheib@redhat.com">&lt;mheib@redhat.com&gt;</a>
Sent: Wednesday, September 3, 2025 9:58 AM
To: <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:przemyslawx.patynowski@intel.com">przemyslawx.patynowski@intel.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:jiri@resnulli.us">jiri@resnulli.us</a>;
<a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:horms@kernel.org">horms@kernel.org</a>; Keller, Jacob E
<a class="moz-txt-link-rfc2396E" href="mailto:jacob.e.keller@intel.com">&lt;jacob.e.keller@intel.com&gt;</a>; Loktionov, Aleksandr
<a class="moz-txt-link-rfc2396E" href="mailto:aleksandr.loktionov@intel.com">&lt;aleksandr.loktionov@intel.com&gt;</a>; Nguyen, Anthony L
<a class="moz-txt-link-rfc2396E" href="mailto:anthony.l.nguyen@intel.com">&lt;anthony.l.nguyen@intel.com&gt;</a>; Kitszel, Przemyslaw
<a class="moz-txt-link-rfc2396E" href="mailto:przemyslaw.kitszel@intel.com">&lt;przemyslaw.kitszel@intel.com&gt;</a>; Mohammad Heib <a class="moz-txt-link-rfc2396E" href="mailto:mheib@redhat.com">&lt;mheib@redhat.com&gt;</a>
Subject: [PATCH net-next,2/2] i40e: support generic devlink param
"max_mac_per_vf"

From: Mohammad Heib <a class="moz-txt-link-rfc2396E" href="mailto:mheib@redhat.com">&lt;mheib@redhat.com&gt;</a>

Add support for the new generic devlink runtime parameter
"max_mac_per_vf", which controls the maximum number of MAC addresses a
trusted VF can use.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">

Good day Mohammad,

Thanks for working on this and for the clear explanation in the commit message.

I have a couple of questions and thoughts:

1) Scope of the parameter
    The name max_mac_per_vf is a bit ambiguous. From the description,
    it seems to apply only to trusted VFs, but the name does not make that obvious.
    Would it make sense to either:
	- Make the name reflect that (e.g., max_mac_per_trusted_vf), or
	- Introduce two separate parameters for trusted and untrusted VFs if both cases need to be handled differently?</pre>
    </blockquote>
    I agree that the name could be a bit confusing. Since this is a
    generic devlink parameter, different devices may handle trusted and
    untrusted VFs differently.<br>
    For i40e specifically, the device does treat trusted VFs differently
    from untrusted ones, and this is documented in devlink/i40e.rst. <br>
    However, I chose a more general name to avoid creating a separate
    devlink parameter for untrusted VFs, which likely wouldn’t be used.<br>
    On reflection, I should update the patch number 1 to remove the
    **trusted VF** wording from the description to avoid implying that
    the parameter only applies to trusted VFs.
    <p><span class="p_header"></span></p>
    <blockquote type="cite"
cite="mid:IA3PR11MB8986F453579349C3518B312CE501A@IA3PR11MB8986.namprd11.prod.outlook.com">
      <pre wrap="" class="moz-quote-pre">

2)Problem statement
    It would help to better understand the underlying problem this parameter is solving.
    Is the goal to enforce a global cap for all VFs, or to provide operators with a way
    to fine-tune per-VF limits? From my perspective, the most important part is
    clearly stating the problem and the use case.
</pre>
    </blockquote>
    My main goal here is to enforce a global cap for all VFs. <br>
    There was a long discussion [1] about this, and one of the ideas
    raised was to create fine-tuned per-VF limits using devlink
    resources instead of a parameter <br>
    However, currently in i40e, we only create a devlink port per PF and
    no devlink ports per VF.<br>
    Implementing the resource-per-VF approach would therefore require
    some extra work.<br>
    so i decided to go with this global cap for now.<br>
    [1] -
<a class="moz-txt-link-freetext" href="https://patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2-dhill@redhat.com/">https://patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2-dhill@redhat.com/</a><br>
    <p></p>
    <blockquote type="cite"
cite="mid:IA3PR11MB8986F453579349C3518B312CE501A@IA3PR11MB8986.namprd11.prod.outlook.com">
      <pre wrap="" class="moz-quote-pre">
3)Granularity
    If the intent is to give operators flexibility, a single global parameter might not be enough.
    For example, limiting the number of MAC filters per specific VF (or having different limits for trusted vs. untrusted)
    could be a real-world requirement. This patch doesn't seem to address that scenario.

Could you share more details about the use case and whether per-VF granularity was considered?

Thanks again for the work on this. Looking forward to your thoughts.</pre>
    </blockquote>
    <p>please see -
<a class="moz-txt-link-freetext" href="https://patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2-dhill@redhat.com/">https://patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2-dhill@redhat.com/</a></p>
    <blockquote type="cite"
cite="mid:IA3PR11MB8986F453579349C3518B312CE501A@IA3PR11MB8986.namprd11.prod.outlook.com">
      <pre wrap="" class="moz-quote-pre">

Best regards,
Aleksandr

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
By default (value 0), the driver enforces its internally calculated
per-VF MAC filter limit. A non-zero value acts as a strict cap,
overriding the internal calculation.

Please note that the configured value is only a theoretical maximum
and a hardware limits may still apply.

- Previous discussion about this change:
  <a class="moz-txt-link-freetext" href="https://lore.kernel.org/netdev/20250805134042.2604897-1">https://lore.kernel.org/netdev/20250805134042.2604897-1</a>-
<a class="moz-txt-link-abbreviated" href="mailto:dhill@redhat.com">dhill@redhat.com</a>
  <a class="moz-txt-link-freetext" href="https://lore.kernel.org/netdev/20250823094952.182181-1">https://lore.kernel.org/netdev/20250823094952.182181-1</a>-
<a class="moz-txt-link-abbreviated" href="mailto:mheib@redhat.com">mheib@redhat.com</a>

Signed-off-by: Mohammad Heib <a class="moz-txt-link-rfc2396E" href="mailto:mheib@redhat.com">&lt;mheib@redhat.com&gt;</a>
---
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
...

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">--
2.50.1
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
    Thank you,<br>
  </body>
</html>

--------------3bi9Z1ArNsAemFu0Nhgv3G0g--

