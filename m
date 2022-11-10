Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2786624724
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 17:37:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33FD260F4B;
	Thu, 10 Nov 2022 16:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33FD260F4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668098250;
	bh=M+FWgNdCRSRZYfd5szzmyglWypZwfqtRx9U2wNNsOWY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g0t9YHAlbRpl5hsJIPLlxBaCvqhil8FnMuVsC4Ajh6S6gcn1gGxq1jiRBHqlOatSI
	 pVmU+LGB83rWaXLmL1MpYvynpr7ZuvA4m3PHeV4rHAr9sTe8GXWtaMxCZ9Y1QMRJNR
	 f/WTrxuDfmy7HhmQFa0IQkyqrqk8IWi8ZuQkai+R65p0WrLm4bFcVeXpmEY1iWTQ1O
	 hRPO5aU1h0OYU558ugktCVR+2sTV04fCNfipP9ayo9I2OnGdGkXLryZ6//60/VJfZN
	 Ym+BptH+5Qmemz3v1hSw04Fu49NGW5Fbggv9nLQs4bInAb72FuQf49kNfZVEdSXj3I
	 sJ7dP3Yg/5rdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDa-SSXpy2gp; Thu, 10 Nov 2022 16:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7F2F60F45;
	Thu, 10 Nov 2022 16:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7F2F60F45
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 697541BF423
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 11:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A93E80C08
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 11:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A93E80C08
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ow1KoOBY_BUj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 11:45:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D29FA80BFA
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com
 [IPv6:2607:f8b0:4864:20::b34])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D29FA80BFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 11:45:02 +0000 (UTC)
Received: by mail-yb1-xb34.google.com with SMTP id f201so796453yba.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 03:45:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5FhN1j3SYoq5GFFku9UmkiSXmJiLwwx4e2sa09BDfmk=;
 b=BaIg5ZF389+VELozEtE2phKF3Oqcdpix7iwPTB7N66A1wHurmFOsYYSz6+6OFrVavm
 sBNIC4yfIzuvYAjvGCILfS52X7/U3TKB/u8jNPEDvw0xAbkEFcfnENJxzzAAmDDTRlgk
 y2csyNC1BqQEc0OJ+Bg8EXJ9Sc3uGsL+Za5uHRJ5X5zC+ZQr/fQxE6ROfrNIF1nIaezl
 JP+2gPqBmmPZmATEjPewjO5OE8daQH8gttR5ioAFEZoQu1TcH/dlaG4NoZw+iPI6gGKh
 z+qQMItKuEmGTra70h8pp6Yav5vNacMAQd1b4ulbA+JPVduQvqzEhxdD8dr6FmWZnY8x
 qp2g==
X-Gm-Message-State: ANoB5pncgnTZeRdm5OC//2uwrDXJAgsczyWpbPsxx4sh/lXO5pZF33nq
 vl9Gp2iLjQicdziXVTYeQsIU/Pl13F7RZa1thdg=
X-Google-Smtp-Source: AA0mqf4YSyHFCKq7NScHdHRr5wbb1UyW8jHheYTmmxGjotRbf4FYBXKdVz1Fbq2Z7Y2RgNrMA9wQE2IKsVcitjIGn9A=
X-Received: by 2002:a25:9983:0:b0:6d8:4a12:c035 with SMTP id
 p3-20020a259983000000b006d84a12c035mr17007088ybo.215.1668080701379; Thu, 10
 Nov 2022 03:45:01 -0800 (PST)
MIME-Version: 1.0
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
In-Reply-To: <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
From: Ivan Smirnov <isgsmirnov@gmail.com>
Date: Thu, 10 Nov 2022 23:44:50 +1200
Message-ID: <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Thu, 10 Nov 2022 16:37:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=5FhN1j3SYoq5GFFku9UmkiSXmJiLwwx4e2sa09BDfmk=;
 b=U5WEh0MnAJ7LkfZ7yCR9svheoB3AxgXgDk3oGYgFrTgKXpqvnxoRjBJYbzK/yXz2Fk
 LnyB+BC+dRfCuEJt+Y2h+XY4yPfmJ3lwm4w7PMuVfYMvV3a5VCq0eicraP2nmXcuo8S9
 6LtMbkKxhtAXMFGYxzR80mpn0LP8DoI5Qsf6Butcsxft9diyHDDd8IwRzmt72/63wEkA
 9sDBamb8ZMESgEEZNE9kz/HpRtllb4EUZHbyseDUqNQH2OkTNXvKsGTK9CYoHGsf8rO5
 C2hjkbOuJ9ris/Z+EJmrvRN6qGIH7yp6xeGAMvI9/94EF2azLaMqRBDW370k+Yjy75bF
 skAA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=U5WEh0Mn
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
Content-Type: multipart/mixed; boundary="===============7280540254318308382=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7280540254318308382==
Content-Type: multipart/alternative; boundary="000000000000a99ae805ed1c4dc6"

--000000000000a99ae805ed1c4dc6
Content-Type: text/plain; charset="UTF-8"

Some more data from another user. Do you guys have any preliminary
investigation you could share back with the community?

Same issue, been struggling with it for a last month or so: both with
Ubuntu and Arch Linux. I have a dual-boot system with Windows 11, and did
not notice any issues with ethernet or wifi on Windows. So this indeed
seems like a firmware issue, particularly in igc. Not the adapter itself

Running on Arch Linux kernel 6.0.7, same motherboard as in your post

https://gist.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456




On Thu, Nov 3, 2022 at 05:53 Ivan Smirnov <isgsmirnov@gmail.com> wrote:

> Here is the gist from one reddit user:
> https://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335
>
> Here are my gists (crash free for now):
> https://gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe
>
> --
> Ivan Smirnov
> https://ivans.io/ | https://blog.ivansmirnov.name/
> https://www.linkedin.com/in/ismirnov |
> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>
>
> On Wed, Nov 2, 2022 at 10:54 AM Ivan Smirnov <isgsmirnov@gmail.com> wrote:
>
>> Hi folks,
>>
>> As usual, the computers know when the experts join the chat... I haven't
>> been able to reproduce the issue for the past few days. Yay for stability,
>> boo for debugging.
>>
>> I posted on the reddit thread
>> <https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/> asking
>> other users to post their output. I'll do my best to keep an eye out for
>> this issue and get you the logs ASAP once I repro the crash.
>>
>> Thank you for your responsiveness - will keep you posted!
>>
>> Best,
>> - Ivan
>> --
>> Ivan Smirnov
>> https://ivans.io/ | https://blog.ivansmirnov.name/
>> https://www.linkedin.com/in/ismirnov |
>> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
>> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>>
>>
>> On Tue, Nov 1, 2022 at 10:21 AM Neftin, Sasha <sasha.neftin@intel.com>
>> wrote:
>>
>>> On 11/1/2022 02:05, Jakub Kicinski wrote:
>>> > CC: intel-wired
>>> >
>>> > On Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:
>>> >> Hi folks,
>>> >>
>>> >> I found your commits on the linux kernel igc
>>> >> <
>>> https://github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc
>>> >
>>> >> folder. There appears to be a bug with the igc kernel module on Intel
>>> >> I225-V chips.
>>> >>
>>> >> Specifically, the probe fails at startup with error: "igc: probe of
>>> >> 0000:06:00.0 failed with error -13". When it does load, it crashes
>>> after a
>>> >> few hours with error "igc failed to read reg 0xc030".
>>> >>
>>> Could you provide dmesg -w -T | grep -i igc on the boot stage? ethtool
>>> -i?
>>> I've cc'd our PAE expert Amir who also could try to look at this problem.
>>>
>>> >> There are several affected users posting on
>>> >>
>>> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
>>> >> with more details.
>>> >>
>>> >> Could I help you debug this? This problem has been reproduced on the
>>> >> following setups:
>>> >>
>>> >> 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4
>>> >> <
>>> https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/
>>> >
>>> >> on
>>> >> Arch Linux, kernel 6.0.2-arch1-1
>>> >> 2. rog strix x670e-e gaming wifi
>>> >> <
>>> https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/
>>> >
>>> >> on
>>> >> Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I believe)
>>> >>
>>> >> I'm happy to load any debug modules or provide additional logs as per
>>> >> your request.
>>> >>
>>> >> Thank you
>>> >>
>>> >>
>>> >>
>>> >>
>>> >> --
>>> >> Ivan Smirnov
>>> >> https://ivans.io/ | https://blog.ivansmirnov.name/
>>> >> https://www.linkedin.com/in/ismirnov |
>>> >> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
>>> >> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>>> >
>>>
>>> --
--
Ivan Smirnov
https://ivans.io/ | https://blog.ivansmirnov.name/
https://www.linkedin.com/in/ismirnov |
*https://ivansmirnov.name/ <https://ivansmirnov.name/>*
*https://github.com/issmirnov <https://ivansmirnov.name/>*

--000000000000a99ae805ed1c4dc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Some more data from another user. Do you guys have any pr=
eliminary investigation you could share back with the community?</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Same issue, been struggling with i=
t for a last month or so: both with Ubuntu and Arch Linux. I have a dual-bo=
ot system with Windows 11, and did not notice any issues with ethernet or w=
ifi on Windows. So this indeed seems like a firmware issue, particularly in=
 igc. Not the adapter itself</div><div style=3D"border-color:rgb(255,255,25=
5)" dir=3D"auto"><br></div><div style=3D"border-color:rgb(255,255,255)" dir=
=3D"auto">Running on Arch Linux kernel 6.0.7, same motherboard as in your p=
ost</div><div style=3D"border-color:rgb(255,255,255)" dir=3D"auto"><br></di=
v><div style=3D"border-color:rgb(255,255,255)" dir=3D"auto"><a href=3D"http=
s://gist.github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456">https://gist.=
github.com/LilDojd/2f030ecc5c5b6f8c3285725adfb8c456</a></div><div dir=3D"au=
to"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Nov 3, 2022 at 05:53 Ivan Smirnov &lt;<a href=3D"mailto:isgsmirnov@gmail.=
com">isgsmirnov@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div dir=
=3D"ltr">Here is the gist from one reddit user:=C2=A0<a href=3D"https://gis=
t.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335" target=3D"_blank">ht=
tps://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335</a><div><br>=
</div><div>Here are my gists (crash free for now):=C2=A0<a href=3D"https://=
gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe" target=3D"_blan=
k">https://gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe</a></=
div></div><div dir=3D"ltr"><div><br clear=3D"all"><div><div dir=3D"ltr" dat=
a-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font style=3D"color:rgb(10=
2,102,102)">--</font></div><div><font style=3D"color:rgb(102,102,102)">Ivan=
 Smirnov</font></div><div><font style=3D"color:rgb(102,102,102)"><a href=3D=
"https://ivans.io/" target=3D"_blank">https://ivans.io/</a>=C2=A0|=C2=A0<a =
href=3D"https://blog.ivansmirnov.name/" target=3D"_blank">https://blog.ivan=
smirnov.name/</a><br></font></div><div><font style=3D"color:rgb(102,102,102=
)"><a href=3D"https://www.linkedin.com/in/ismirnov" target=3D"_blank">https=
://www.linkedin.com/in/ismirnov</a>=C2=A0</font><span style=3D"color:rgb(10=
2,102,102)">|=C2=A0</span><font style=3D"color:rgb(0,0,238)"><u><a href=3D"=
https://ivansmirnov.name/" target=3D"_blank">https://ivansmirnov.name/<br><=
/a></u></font></div><div><font style=3D"color:rgb(0,0,238)"><u><a href=3D"h=
ttps://ivansmirnov.name/" target=3D"_blank">https://github.com/issmirnov</a=
></u></font></div></div></div></div></div></div></div></div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, Nov 2, 2022 at 10:54 AM Ivan Smirnov &lt;<a href=3D"mailto:isgsmirnov@gm=
ail.com" target=3D"_blank">isgsmirnov@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(=
204,204,204)"><div dir=3D"ltr">Hi folks,<div><br></div><div>As usual, the c=
omputers know when the experts join the chat... I haven&#39;t been able to =
reproduce the issue for the past few days. Yay for stability, boo for debug=
ging.</div><div><br></div><div>I posted on the=C2=A0<a href=3D"https://www.=
reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controlle=
r_i225v_igc/" target=3D"_blank">reddit thread</a>=C2=A0asking other users t=
o post their output. I&#39;ll do my best to keep an eye out for this issue =
and get you the logs ASAP once I repro the crash.</div><div><br></div><div>=
Thank you for your responsiveness - will keep you=C2=A0posted!</div><div><b=
r></div><div>Best,</div><div>- Ivan<br clear=3D"all"><div><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div><font style=3D"color:rgb(102,102,102)">--</font></div><div><=
font style=3D"color:rgb(102,102,102)">Ivan Smirnov</font></div><div><font s=
tyle=3D"color:rgb(102,102,102)"><a href=3D"https://ivans.io/" target=3D"_bl=
ank">https://ivans.io/</a>=C2=A0|=C2=A0<a href=3D"https://blog.ivansmirnov.=
name/" target=3D"_blank">https://blog.ivansmirnov.name/</a><br></font></div=
><div><font style=3D"color:rgb(102,102,102)"><a href=3D"https://www.linkedi=
n.com/in/ismirnov" target=3D"_blank">https://www.linkedin.com/in/ismirnov</=
a>=C2=A0</font><span style=3D"color:rgb(102,102,102)">|=C2=A0</span><font s=
tyle=3D"color:rgb(0,0,238)"><u><a href=3D"https://ivansmirnov.name/" target=
=3D"_blank">https://ivansmirnov.name/<br></a></u></font></div><div><font st=
yle=3D"color:rgb(0,0,238)"><u><a href=3D"https://ivansmirnov.name/" target=
=3D"_blank">https://github.com/issmirnov</a></u></font></div></div></div></=
div></div></div></div></div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 1, 2022 at 10:21 AM Nefti=
n, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com" target=3D"_blank">sa=
sha.neftin@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-sty=
le:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">On 11/1/2022 =
02:05, Jakub Kicinski wrote:<br>
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

--000000000000a99ae805ed1c4dc6--

--===============7280540254318308382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7280540254318308382==--
