Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D787D62E1F8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 17:34:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E7B46102F;
	Thu, 17 Nov 2022 16:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E7B46102F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668702864;
	bh=wyMBJURmIWNKF9P9CSwc2zbgwAYFuVg/wZBc97OOQBY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Wb3aa3ggvjoKw2O2vKi8OGHKlsl55fPa16D/t7QLpFOvKrL4mWjRHSsf8m9FVdhPT
	 TT6bvIrNQhNbn307YlBI6m/S8G6JxUeSEiBgMJkyf9d0KYi1I8LNP7jsabSHfYvokR
	 IV3owfS8RswGk3iQZKdasI/Sa/w0M5NF2YcVuUrM+B5Bh4h6CTQWy0sei2kbmH+7DZ
	 HP9KfvfRs1RTRfpne83dFnlq/uBIMWH2Dr820i2/sYRmGq+1iIQZCL5RXqscSbBQ1O
	 s0md9iTGNpFR3GVUJQqQdU79MPM8ZI22eS99KjENI1vRrzc3R3tEi2xC6c3gRs79E+
	 XyCuchP7MwPrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yLYsu9--YBJU; Thu, 17 Nov 2022 16:34:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5A1C605B3;
	Thu, 17 Nov 2022 16:34:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5A1C605B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50ECB1BF473
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 22:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B4934011A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 22:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B4934011A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXCBFwsKZUOh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 22:24:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2D4B400B8
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com
 [IPv6:2607:f8b0:4864:20::112c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2D4B400B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 22:24:10 +0000 (UTC)
Received: by mail-yw1-x112c.google.com with SMTP id
 00721157ae682-376596ae449so1890287b3.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 14:24:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1WROgMiJgwI0Vii6m/6H76t0lNKyX4ZB0Pefwy6NBOk=;
 b=26I6SYP3XcTZ4Lq22QV7r4BU4W/VExhT8TSfwofmdH1wJvD9ORyXhJ910n+Nm/rcw3
 OrhHSWqcTO3Rf9P4eFEIvpjASCOcK3Ne+FcdcxRxB0uxXrXq0rowJLf2vqHbKCOG7AVV
 hhFw9rlVKSaaXQs/jOAdeqjygX717H5FAFEv3NHKmcVdE+0/ssR7Otd31SwXKjfu9jMw
 tJyjbHnxhRfAgjvpba07D3n0UTqt5ttlKOtoGOODp7u9eqsr+0DRHyAN2qnJmnkBcFuW
 Jy/e7YstzvfzjjcIkbud9WQZ/pfji3k/pwp3gIW9WLgaTvz7eyfT8byQ85j0M7mt9Xls
 IfhA==
X-Gm-Message-State: ANoB5pkJ7KEH118eUtHqHCh6QXEgbkxTecrI2GiWCpHRionQFfnxX5YM
 TdFAY0EHg7VNSuobp50NxZ3lpq5PerIfVIcVeog=
X-Google-Smtp-Source: AA0mqf4VCRMT4iatoGrn5fz6KD4ZrK6ahzzD1HDijIvh/4vcMmOMZU915GIc3yKanwnNP/5n8luy07Jg0lmQobz5Dms=
X-Received: by 2002:a81:4893:0:b0:367:b8fd:62ba with SMTP id
 v141-20020a814893000000b00367b8fd62bamr24205693ywa.403.1668637449241; Wed, 16
 Nov 2022 14:24:09 -0800 (PST)
MIME-Version: 1.0
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
In-Reply-To: <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
From: Ivan Smirnov <isgsmirnov@gmail.com>
Date: Wed, 16 Nov 2022 14:23:57 -0800
Message-ID: <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Thu, 17 Nov 2022 16:34:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=1WROgMiJgwI0Vii6m/6H76t0lNKyX4ZB0Pefwy6NBOk=;
 b=RmAzN2ZmRtmhNEnyhQ/FkdKVHoehl0Q4kr9R6xguad5VSQHXle1MNFbXQ+I4K2993F
 GP0Yq+Iw7s99/UcQM6T1jxVoY8zKKEfSahAqSR2DmMYSkNYOfkN5jg/Gcx2VTxgMyQwy
 MylQ1l/6Mjm2vXhlE+Zjo463CgVe8JSAvYWDYQlO8qCQ+NpleobyffoiDOASKQKSY022
 juOgehDYc8xz6R4eQlwwN/JB/+bToEWkIR7l7kHheoLBT90J+3A5PUP4D2d1xkAfFYTR
 VQj6XdGCWYIf2rgubhJCyql3kwr9WRBuv+cR2JfpQnNL7hm9GUCZa7cqQ4UwHH8Lvno9
 bk9A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=RmAzN2Zm
Subject: Re: [Intel-wired-lan] igc kernel module crashes on new hardware
 (Intel Ethernet I225-V)
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============7648031622453308266=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7648031622453308266==
Content-Type: multipart/alternative; boundary="0000000000006bcc2105ed9deeba"

--0000000000006bcc2105ed9deeba
Content-Type: text/plain; charset="UTF-8"

Hi folks,

Is there any update for the community? More and more folks are asking. We
are all techies and happy to help debug.

Thank you kindly,
- Ivan

On Thu, Nov 10, 2022 at 03:44 Ivan Smirnov <isgsmirnov@gmail.com> wrote:

> Some more data from another user. Do you guys have any preliminary
> investigation you could share back with the community?
>
> Same issue, been struggling with it for a last month or so: both with
> Ubuntu and Arch Linux. I have a dual-boot system with Windows 11, and did
> not notice any issues with ethernet or wifi on Windows. So this indeed
> seems like a firmware issue, particularly in igc. Not the adapter itself
>
> Running on Arch Linux kernel 6.0.7, same motherboard as in your post
>
> https://gist.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456
>
>
>
>
> On Thu, Nov 3, 2022 at 05:53 Ivan Smirnov <isgsmirnov@gmail.com> wrote:
>
>> Here is the gist from one reddit user:
>> https://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335
>>
>> Here are my gists (crash free for now):
>> https://gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe
>>
>> --
>> Ivan Smirnov
>> https://ivans.io/ | https://blog.ivansmirnov.name/
>> https://www.linkedin.com/in/ismirnov |
>> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
>> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>>
>>
>> On Wed, Nov 2, 2022 at 10:54 AM Ivan Smirnov <isgsmirnov@gmail.com>
>> wrote:
>>
>>> Hi folks,
>>>
>>> As usual, the computers know when the experts join the chat... I haven't
>>> been able to reproduce the issue for the past few days. Yay for stability,
>>> boo for debugging.
>>>
>>> I posted on the reddit thread
>>> <https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/> asking
>>> other users to post their output. I'll do my best to keep an eye out for
>>> this issue and get you the logs ASAP once I repro the crash.
>>>
>>> Thank you for your responsiveness - will keep you posted!
>>>
>>> Best,
>>> - Ivan
>>> --
>>> Ivan Smirnov
>>> https://ivans.io/ | https://blog.ivansmirnov.name/
>>> https://www.linkedin.com/in/ismirnov |
>>> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
>>> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>>>
>>>
>>> On Tue, Nov 1, 2022 at 10:21 AM Neftin, Sasha <sasha.neftin@intel.com>
>>> wrote:
>>>
>>>> On 11/1/2022 02:05, Jakub Kicinski wrote:
>>>> > CC: intel-wired
>>>> >
>>>> > On Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:
>>>> >> Hi folks,
>>>> >>
>>>> >> I found your commits on the linux kernel igc
>>>> >> <
>>>> https://github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc
>>>> >
>>>> >> folder. There appears to be a bug with the igc kernel module on Intel
>>>> >> I225-V chips.
>>>> >>
>>>> >> Specifically, the probe fails at startup with error: "igc: probe of
>>>> >> 0000:06:00.0 failed with error -13". When it does load, it crashes
>>>> after a
>>>> >> few hours with error "igc failed to read reg 0xc030".
>>>> >>
>>>> Could you provide dmesg -w -T | grep -i igc on the boot stage? ethtool
>>>> -i?
>>>> I've cc'd our PAE expert Amir who also could try to look at this
>>>> problem.
>>>>
>>>> >> There are several affected users posting on
>>>> >>
>>>> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
>>>> >> with more details.
>>>> >>
>>>> >> Could I help you debug this? This problem has been reproduced on the
>>>> >> following setups:
>>>> >>
>>>> >> 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4
>>>> >> <
>>>> https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/
>>>> >
>>>> >> on
>>>> >> Arch Linux, kernel 6.0.2-arch1-1
>>>> >> 2. rog strix x670e-e gaming wifi
>>>> >> <
>>>> https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/
>>>> >
>>>> >> on
>>>> >> Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I believe)
>>>> >>
>>>> >> I'm happy to load any debug modules or provide additional logs as per
>>>> >> your request.
>>>> >>
>>>> >> Thank you
>>>> >>
>>>> >>
>>>> >>
>>>> >>
>>>> >> --
>>>> >> Ivan Smirnov
>>>> >> https://ivans.io/ | https://blog.ivansmirnov.name/
>>>> >> https://www.linkedin.com/in/ismirnov |
>>>> >> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
>>>> >> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>>>> >
>>>>
>>>> --
> --
> Ivan Smirnov
> https://ivans.io/ | https://blog.ivansmirnov.name/
> https://www.linkedin.com/in/ismirnov |
> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>
-- 
--
Ivan Smirnov
https://ivans.io/ | https://blog.ivansmirnov.name/
https://www.linkedin.com/in/ismirnov |
*https://ivansmirnov.name/ <https://ivansmirnov.name/>*
*https://github.com/issmirnov <https://ivansmirnov.name/>*

--0000000000006bcc2105ed9deeba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi folks,</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Is there any update for the community? More and more folks are asking. =
We are all techies and happy to help debug.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Thank you kindly,</div><div dir=3D"auto">- Ivan</div><d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Nov 10, 2022 at 03:44 Ivan Smirnov &lt;<a href=3D"mailto:isgsmirnov@gm=
ail.com">isgsmirnov@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border=
-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div=
 dir=3D"auto">Some more data from another user. Do you guys have any prelim=
inary investigation you could share back with the community?</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Same issue, been struggling with it f=
or a last month or so: both with Ubuntu and Arch Linux. I have a dual-boot =
system with Windows 11, and did not notice any issues with ethernet or wifi=
 on Windows. So this indeed seems like a firmware issue, particularly in ig=
c. Not the adapter itself</div><div style=3D"border-color:rgb(255,255,255)"=
 dir=3D"auto"><br></div><div style=3D"border-color:rgb(255,255,255)" dir=3D=
"auto">Running on Arch Linux kernel 6.0.7, same motherboard as in your post=
</div><div style=3D"border-color:rgb(255,255,255)" dir=3D"auto"><br></div><=
div style=3D"border-color:rgb(255,255,255)" dir=3D"auto"><a href=3D"https:/=
/gist.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456" target=3D"_blank=
">https://gist.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456</a></div=
><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
<br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Nov 3, 2022 at 05:53 Ivan Smirnov &lt;<a href=3D"mailto:is=
gsmirnov@gmail.com" target=3D"_blank">isgsmirnov@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left=
-color:rgb(204,204,204)"><div dir=3D"ltr">Here is the gist from one reddit =
user:=C2=A0<a href=3D"https://gist.github.com/DarkArc/50ffca5fc343e2ff8166b=
c81d3ff8335" target=3D"_blank">https://gist.github.com/DarkArc/50ffca5fc343=
e2ff8166bc81d3ff8335</a><div><br></div><div>Here are my gists (crash free f=
or now):=C2=A0<a href=3D"https://gist.github.com/issmirnov/b9ac74d232e1865a=
e849a3e64dce2afe" target=3D"_blank">https://gist.github.com/issmirnov/b9ac7=
4d232e1865ae849a3e64dce2afe</a></div></div><div dir=3D"ltr"><div><br clear=
=3D"all"><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div><font style=3D"color:rgb(102,102,102)">--</font></div><div><font sty=
le=3D"color:rgb(102,102,102)">Ivan Smirnov</font></div><div><font style=3D"=
color:rgb(102,102,102)"><a href=3D"https://ivans.io/" target=3D"_blank">htt=
ps://ivans.io/</a>=C2=A0|=C2=A0<a href=3D"https://blog.ivansmirnov.name/" t=
arget=3D"_blank">https://blog.ivansmirnov.name/</a><br></font></div><div><f=
ont style=3D"color:rgb(102,102,102)"><a href=3D"https://www.linkedin.com/in=
/ismirnov" target=3D"_blank">https://www.linkedin.com/in/ismirnov</a>=C2=A0=
</font><span style=3D"color:rgb(102,102,102)">|=C2=A0</span><font style=3D"=
color:rgb(0,0,238)"><u><a href=3D"https://ivansmirnov.name/" target=3D"_bla=
nk">https://ivansmirnov.name/<br></a></u></font></div><div><font style=3D"c=
olor:rgb(0,0,238)"><u><a href=3D"https://ivansmirnov.name/" target=3D"_blan=
k">https://github.com/issmirnov</a></u></font></div></div></div></div></div=
></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 at 10:54 AM Ivan Smirnov =
&lt;<a href=3D"mailto:isgsmirnov@gmail.com" target=3D"_blank">isgsmirnov@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padd=
ing-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr">Hi folks,=
<div><br></div><div>As usual, the computers know when the experts join the =
chat... I haven&#39;t been able to reproduce the issue for the past few day=
s. Yay for stability, boo for debugging.</div><div><br></div><div>I posted =
on the=C2=A0<a href=3D"https://www.reddit.com/r/buildapc/comments/xypn1m/ne=
twork_card_intel_ethernet_controller_i225v_igc/" target=3D"_blank">reddit t=
hread</a>=C2=A0asking other users to post their output. I&#39;ll do my best=
 to keep an eye out for this issue and get you the logs ASAP once I repro t=
he crash.</div><div><br></div><div>Thank you for your responsiveness - will=
 keep you=C2=A0posted!</div><div><br></div><div>Best,</div><div>- Ivan<br c=
lear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font style=3D"color:rgb(=
102,102,102)">--</font></div><div><font style=3D"color:rgb(102,102,102)">Iv=
an Smirnov</font></div><div><font style=3D"color:rgb(102,102,102)"><a href=
=3D"https://ivans.io/" target=3D"_blank">https://ivans.io/</a>=C2=A0|=C2=A0=
<a href=3D"https://blog.ivansmirnov.name/" target=3D"_blank">https://blog.i=
vansmirnov.name/</a><br></font></div><div><font style=3D"color:rgb(102,102,=
102)"><a href=3D"https://www.linkedin.com/in/ismirnov" target=3D"_blank">ht=
tps://www.linkedin.com/in/ismirnov</a>=C2=A0</font><span style=3D"color:rgb=
(102,102,102)">|=C2=A0</span><font style=3D"color:rgb(0,0,238)"><u><a href=
=3D"https://ivansmirnov.name/" target=3D"_blank">https://ivansmirnov.name/<=
br></a></u></font></div><div><font style=3D"color:rgb(0,0,238)"><u><a href=
=3D"https://ivansmirnov.name/" target=3D"_blank">https://github.com/issmirn=
ov</a></u></font></div></div></div></div></div></div></div></div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Nov 1, 2022 at 10:21 AM Neftin, Sasha &lt;<a href=3D"mailto:sasha.n=
eftin@intel.com" target=3D"_blank">sasha.neftin@intel.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-=
color:rgb(204,204,204)">On 11/1/2022 02:05, Jakub Kicinski wrote:<br>
&gt; CC: intel-wired<br>
&gt; <br>
&gt; On Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:<br>
&gt;&gt; Hi folks,<br>
&gt;&gt;<br>
&gt;&gt; I found your commits on the linux kernel igc<br>
&gt;&gt; &lt;<a href=3D"https://github.com/torvalds/linux/commits/master/dr=
ivers/net/ethernet/intel/igc" rel=3D"noreferrer" target=3D"_blank">https://=
github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc</a>=
&gt;<br>
&gt;&gt; folder. There appears to be a bug with the igc kernel module on In=
tel<br>
&gt;&gt; I225-V chips.<br>
&gt;&gt;<br>
&gt;&gt; Specifically, the probe fails at startup with error: &quot;igc: pr=
obe of<br>
&gt;&gt; 0000:06:00.0 failed with error -13&quot;. When it does load, it cr=
ashes after a<br>
&gt;&gt; few hours with error &quot;igc failed to read reg 0xc030&quot;.<br=
>
&gt;&gt;<br>
Could you provide dmesg -w -T | grep -i igc on the boot stage? ethtool -i?<=
br>
I&#39;ve cc&#39;d our PAE expert Amir who also could try to look at this pr=
oblem.<br>
<br>
&gt;&gt; There are several affected users posting on<br>
&gt;&gt; <a href=3D"https://www.reddit.com/r/buildapc/comments/xypn1m/netwo=
rk_card_intel_ethernet_controller_i225v_igc/" rel=3D"noreferrer" target=3D"=
_blank">https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_inte=
l_ethernet_controller_i225v_igc/</a><br>
&gt;&gt; with more details.<br>
&gt;&gt;<br>
&gt;&gt; Could I help you debug this? This problem has been reproduced on t=
he<br>
&gt;&gt; following setups:<br>
&gt;&gt;<br>
&gt;&gt; 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4<br>
&gt;&gt; &lt;<a href=3D"https://www.asus.com/motherboards-components/mother=
boards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/" rel=3D"noreferrer" target=
=3D"_blank">https://www.asus.com/motherboards-components/motherboards/tuf-g=
aming/tuf-gaming-z690-plus-wifi-d4/</a>&gt;<br>
&gt;&gt; on<br>
&gt;&gt; Arch Linux, kernel 6.0.2-arch1-1<br>
&gt;&gt; 2. rog strix x670e-e gaming wifi<br>
&gt;&gt; &lt;<a href=3D"https://rog.asus.com/us/motherboards/rog-strix/rog-=
strix-x670e-e-gaming-wifi-model/" rel=3D"noreferrer" target=3D"_blank">http=
s://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-mo=
del/</a>&gt;<br>
&gt;&gt; on<br>
&gt;&gt; Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I believe)<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m happy to load any debug modules or provide additional logs=
 as per<br>
&gt;&gt; your request.<br>
&gt;&gt;<br>
&gt;&gt; Thank you<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Ivan Smirnov<br>
&gt;&gt; <a href=3D"https://ivans.io/" rel=3D"noreferrer" target=3D"_blank"=
>https://ivans.io/</a> | <a href=3D"https://blog.ivansmirnov.name/" rel=3D"=
noreferrer" target=3D"_blank">https://blog.ivansmirnov.name/</a><br>
&gt;&gt; <a href=3D"https://www.linkedin.com/in/ismirnov" rel=3D"noreferrer=
" target=3D"_blank">https://www.linkedin.com/in/ismirnov</a> |<br>
&gt;&gt; *<a href=3D"https://ivansmirnov.name/" rel=3D"noreferrer" target=
=3D"_blank">https://ivansmirnov.name/</a> &lt;<a href=3D"https://ivansmirno=
v.name/" rel=3D"noreferrer" target=3D"_blank">https://ivansmirnov.name/</a>=
&gt;*<br>
&gt;&gt; *<a href=3D"https://github.com/issmirnov" rel=3D"noreferrer" targe=
t=3D"_blank">https://github.com/issmirnov</a> &lt;<a href=3D"https://ivansm=
irnov.name/" rel=3D"noreferrer" target=3D"_blank">https://ivansmirnov.name/=
</a>&gt;*<br>
&gt; <br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>-- <br><div dir=3D"ltr" data-smartmail=3D"gmail_si=
gnature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div><font style=3D"color:rgb(102,102,102)">--</font></d=
iv><div><font style=3D"color:rgb(102,102,102)">Ivan Smirnov</font></div><di=
v><font style=3D"color:rgb(102,102,102)"><a href=3D"https://ivans.io/" targ=
et=3D"_blank">https://ivans.io/</a>=C2=A0|=C2=A0<a href=3D"https://blog.iva=
nsmirnov.name/" target=3D"_blank">https://blog.ivansmirnov.name/</a><br></f=
ont></div><div><font style=3D"color:rgb(102,102,102)"><a href=3D"https://ww=
w.linkedin.com/in/ismirnov" target=3D"_blank">https://www.linkedin.com/in/i=
smirnov</a>=C2=A0</font><span style=3D"color:rgb(102,102,102)">|=C2=A0</spa=
n><font style=3D"color:rgb(0,0,238)"><u><a href=3D"https://ivansmirnov.name=
/" target=3D"_blank">https://ivansmirnov.name/<br></a></u></font></div><div=
><font style=3D"color:rgb(0,0,238)"><u><a href=3D"https://ivansmirnov.name/=
" target=3D"_blank">https://github.com/issmirnov</a></u></font></div></div>=
</div></div></div></div></div>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font color=3D"#666666">-=
-</font></div><div><font color=3D"#666666">Ivan Smirnov</font></div><div><f=
ont color=3D"#666666"><a href=3D"https://ivans.io/" target=3D"_blank">https=
://ivans.io/</a>=C2=A0|=C2=A0<a href=3D"https://blog.ivansmirnov.name/" tar=
get=3D"_blank">https://blog.ivansmirnov.name/</a><br></font></div><div><fon=
t color=3D"#666666"><a href=3D"https://www.linkedin.com/in/ismirnov" target=
=3D"_blank">https://www.linkedin.com/in/ismirnov</a>=C2=A0</font><span styl=
e=3D"color:rgb(102,102,102)">|=C2=A0</span><font color=3D"#0000ee"><u><a hr=
ef=3D"https://ivansmirnov.name/" target=3D"_blank">https://ivansmirnov.name=
/<br></a></u></font></div><div><font color=3D"#0000ee"><u><a href=3D"https:=
//ivansmirnov.name/" target=3D"_blank">https://github.com/issmirnov</a></u>=
</font></div></div></div></div></div></div></div>

--0000000000006bcc2105ed9deeba--

--===============7648031622453308266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7648031622453308266==--
