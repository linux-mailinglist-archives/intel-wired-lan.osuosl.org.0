Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AF5616B3F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 18:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4132D407D7;
	Wed,  2 Nov 2022 17:54:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4132D407D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667411695;
	bh=xcFaKTjcmpOPzzpG4697ETR6Jyr2IoSne+wg9DtG5cY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hyVZZw6pZFjyG5O7dULoIEchqJ91vQf1N0Qg/ZHBnC50/zv5ar1h81j3mrKx7zAQ/
	 4JSGhp9TrK73lFLaop5IE8V+ugw0tIxggMbVhPJVOwZZq50Q1frNZ1xN2Sf56DOu2j
	 udQYCWra0rawXyLcSYZffD8n6wfVk13vByQswZUxqSZBcmZ9pGUZd+49Io5PWyedW6
	 vDwBixz8Rc0NbmfVeOqtEjNzAUc53NB+9qnW/Q0+JTgdhNXAaDUA0/xY5YbmOmfMIm
	 wfh/oZCMdO7BMUrCNmEHQ6Z/muzVQWkwOPvov+XB0K6HfSgkVCt4OUpurIF5h+Eitb
	 i/3xMKFrNQJ8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LTdLrdYZVPNo; Wed,  2 Nov 2022 17:54:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EEDB404E7;
	Wed,  2 Nov 2022 17:54:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EEDB404E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC0E1BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 17:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2616981E07
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 17:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2616981E07
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZn9rosAuBnM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 17:54:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB3498183D
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB3498183D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 17:54:02 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id y72so22050839yby.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Nov 2022 10:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=w6NZG1PvWOpK629P9b/p+J4MsVIXuhevSmzLnarUt6Y=;
 b=bkDlUsoNNL8o9+vBqdQ3SHEBy6gPp/OtMLB/hcmd2bSE8JF3Yvjqej9OS/vAQLSKXO
 M98IdGAGdd+4LMYCFpKW2tqGqkd7YWu3oU3SpFyZEoP7+tx1ghX46c/eLpoCgeASSd7m
 9EGTJvAtfcFZizvCwjE0wcGuuJjyctXM3/Ja6Co7wp5wJ8uIgkFWlCaTm9eCdk0PZR/B
 2PF7wwJSn9kVksftHCCi3UV7lGQenmp5wcaRPvcLb4oownOBronjNIDmt52isrJLfgGG
 iWTE27j8RlgYCIn1dF5Pfa8NUHHNrXkl/BU2JNyZFOofprA/46e2aB4OVcYHG8dvXZ/q
 gEcQ==
X-Gm-Message-State: ACrzQf26jVWB+Fr04vhqaJXZDVcM8kJXWl5h3hdL5DxpJ+V/6Ri7/pg7
 ZMJAjNiNzpR37CikT9LfT+AKSBPUyNUAXxk2SV4=
X-Google-Smtp-Source: AMsMyM70W+BO2xpc/6vR9+plc9+KlVMZtio53nWiSf8Z3ooWNtqxrqh2M7Q5u7IXfxDp+HV+saRgMtCUmPZw4kgT2NY=
X-Received: by 2002:a25:3382:0:b0:6cd:a961:65b8 with SMTP id
 z124-20020a253382000000b006cda96165b8mr11931844ybz.215.1667411641646; Wed, 02
 Nov 2022 10:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
In-Reply-To: <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
From: Ivan Smirnov <isgsmirnov@gmail.com>
Date: Wed, 2 Nov 2022 11:53:25 -0600
Message-ID: <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Wed, 02 Nov 2022 17:54:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=w6NZG1PvWOpK629P9b/p+J4MsVIXuhevSmzLnarUt6Y=;
 b=TV4V5zmbxucvzYtompxtbNhKRY9CkNps4ETKOu2ONaDq0al5PMOODoL3qW/jK0E5Pg
 8S5OVrANaymHILYixdMoA/7z1/E3Mcv9Je5fMrWXlW60b6/3Z5h63pRZeDnkg3tzSSBa
 p+2k9PQbhA1Z4zokC137bBS66KhoeEXHZoUGoxMQk2fFxg0ye2q6ZqxBRr5K6jJ8YjMd
 vqA0EJteY2ITijzEG0J/DBX59tF0yo3d7tN/EujEdZF+ApvpQfpE8jJ4ZZUiLTxEjB1s
 7WAValekjr9scGGWuR0v8sl/WtgLSi/n9O/zIRFT3ZlytMa3gsSly+CXxU2lw5FU3YXK
 m3hA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=TV4V5zmb
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============8640220292508618997=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8640220292508618997==
Content-Type: multipart/alternative; boundary="0000000000009842c105ec80867b"

--0000000000009842c105ec80867b
Content-Type: text/plain; charset="UTF-8"

Here is the gist from one reddit user:
https://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335

Here are my gists (crash free for now):
https://gist.github.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe
--
Ivan Smirnov
https://ivans.io/ | https://blog.ivansmirnov.name/
https://www.linkedin.com/in/ismirnov |
*https://ivansmirnov.name/ <https://ivansmirnov.name/>*
*https://github.com/issmirnov <https://ivansmirnov.name/>*


On Wed, Nov 2, 2022 at 10:54 AM Ivan Smirnov <isgsmirnov@gmail.com> wrote:

> Hi folks,
>
> As usual, the computers know when the experts join the chat... I haven't
> been able to reproduce the issue for the past few days. Yay for stability,
> boo for debugging.
>
> I posted on the reddit thread
> <https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/> asking
> other users to post their output. I'll do my best to keep an eye out for
> this issue and get you the logs ASAP once I repro the crash.
>
> Thank you for your responsiveness - will keep you posted!
>
> Best,
> - Ivan
> --
> Ivan Smirnov
> https://ivans.io/ | https://blog.ivansmirnov.name/
> https://www.linkedin.com/in/ismirnov |
> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>
>
> On Tue, Nov 1, 2022 at 10:21 AM Neftin, Sasha <sasha.neftin@intel.com>
> wrote:
>
>> On 11/1/2022 02:05, Jakub Kicinski wrote:
>> > CC: intel-wired
>> >
>> > On Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:
>> >> Hi folks,
>> >>
>> >> I found your commits on the linux kernel igc
>> >> <
>> https://github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc
>> >
>> >> folder. There appears to be a bug with the igc kernel module on Intel
>> >> I225-V chips.
>> >>
>> >> Specifically, the probe fails at startup with error: "igc: probe of
>> >> 0000:06:00.0 failed with error -13". When it does load, it crashes
>> after a
>> >> few hours with error "igc failed to read reg 0xc030".
>> >>
>> Could you provide dmesg -w -T | grep -i igc on the boot stage? ethtool -i?
>> I've cc'd our PAE expert Amir who also could try to look at this problem.
>>
>> >> There are several affected users posting on
>> >>
>> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
>> >> with more details.
>> >>
>> >> Could I help you debug this? This problem has been reproduced on the
>> >> following setups:
>> >>
>> >> 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4
>> >> <
>> https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/
>> >
>> >> on
>> >> Arch Linux, kernel 6.0.2-arch1-1
>> >> 2. rog strix x670e-e gaming wifi
>> >> <
>> https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/
>> >
>> >> on
>> >> Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I believe)
>> >>
>> >> I'm happy to load any debug modules or provide additional logs as per
>> >> your request.
>> >>
>> >> Thank you
>> >>
>> >>
>> >>
>> >>
>> >> --
>> >> Ivan Smirnov
>> >> https://ivans.io/ | https://blog.ivansmirnov.name/
>> >> https://www.linkedin.com/in/ismirnov |
>> >> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
>> >> *https://github.com/issmirnov <https://ivansmirnov.name/>*
>> >
>>
>>

--0000000000009842c105ec80867b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Here is the gist from one reddit user:=C2=A0<a href=3D"htt=
ps://gist.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335">https://gist=
.github.com/DarkArc/50ffca5fc343e2ff8166bc81d3ff8335</a><div><br></div><div=
>Here are my gists (crash free for now):=C2=A0<a href=3D"https://gist.githu=
b.com/issmirnov/b9ac74d232e1865ae849a3e64dce2afe">https://gist.github.com/i=
ssmirnov/b9ac74d232e1865ae849a3e64dce2afe</a><br clear=3D"all"><div><div di=
r=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div><font color=3D"#666666">--</font></div><div><font color=3D"#6666=
66">Ivan Smirnov</font></div><div><font color=3D"#666666"><a href=3D"https:=
//ivans.io/" target=3D"_blank">https://ivans.io/</a>=C2=A0|=C2=A0<a href=3D=
"https://blog.ivansmirnov.name/" target=3D"_blank">https://blog.ivansmirnov=
.name/</a><br></font></div><div><font color=3D"#666666"><a href=3D"https://=
www.linkedin.com/in/ismirnov" target=3D"_blank">https://www.linkedin.com/in=
/ismirnov</a>=C2=A0</font><span style=3D"color:rgb(102,102,102)">|=C2=A0</s=
pan><font color=3D"#0000ee"><u><a href=3D"https://ivansmirnov.name/" target=
=3D"_blank">https://ivansmirnov.name/<br></a></u></font></div><div><font co=
lor=3D"#0000ee"><u><a href=3D"https://ivansmirnov.name/" target=3D"_blank">=
https://github.com/issmirnov</a></u></font></div></div></div></div></div></=
div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 at 10:54 AM Ivan Smirnov &lt;=
<a href=3D"mailto:isgsmirnov@gmail.com">isgsmirnov@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Hi folks,<div><br></div><div>As usual, the computers know when the expert=
s join the chat... I haven&#39;t been able to reproduce the issue for the p=
ast few days. Yay for stability, boo for debugging.</div><div><br></div><di=
v>I posted on the=C2=A0<a href=3D"https://www.reddit.com/r/buildapc/comment=
s/xypn1m/network_card_intel_ethernet_controller_i225v_igc/" target=3D"_blan=
k">reddit thread</a>=C2=A0asking other users to post their output. I&#39;ll=
 do my best to keep an eye out for this issue and get you the logs ASAP onc=
e I repro the crash.</div><div><br></div><div>Thank you for your responsive=
ness - will keep you=C2=A0posted!</div><div><br></div><div>Best,</div><div>=
- Ivan<br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font color=3D=
"#666666">--</font></div><div><font color=3D"#666666">Ivan Smirnov</font></=
div><div><font color=3D"#666666"><a href=3D"https://ivans.io/" target=3D"_b=
lank">https://ivans.io/</a>=C2=A0|=C2=A0<a href=3D"https://blog.ivansmirnov=
.name/" target=3D"_blank">https://blog.ivansmirnov.name/</a><br></font></di=
v><div><font color=3D"#666666"><a href=3D"https://www.linkedin.com/in/ismir=
nov" target=3D"_blank">https://www.linkedin.com/in/ismirnov</a>=C2=A0</font=
><span style=3D"color:rgb(102,102,102)">|=C2=A0</span><font color=3D"#0000e=
e"><u><a href=3D"https://ivansmirnov.name/" target=3D"_blank">https://ivans=
mirnov.name/<br></a></u></font></div><div><font color=3D"#0000ee"><u><a hre=
f=3D"https://ivansmirnov.name/" target=3D"_blank">https://github.com/issmir=
nov</a></u></font></div></div></div></div></div></div></div></div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Tue, Nov 1, 2022 at 10:21 AM Neftin, Sasha &lt;<a href=3D"mailto:sasha.=
neftin@intel.com" target=3D"_blank">sasha.neftin@intel.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 11/1/2022 02:0=
5, Jakub Kicinski wrote:<br>
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

--0000000000009842c105ec80867b--

--===============8640220292508618997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8640220292508618997==--
