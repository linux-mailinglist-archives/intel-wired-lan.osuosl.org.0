Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7A616B37
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 18:51:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62F83416EA;
	Wed,  2 Nov 2022 17:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62F83416EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667411517;
	bh=TItNz1iNxeTZMdS3eg0vgJh1zYm054bcd8C8kerwACA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r5eecp4dPLQ6p2m1eO5kXigjnlLoD1CscLeUEjW66h6HzSmrHLj9kerB2oDzGhmEr
	 3ME81Z4JbodbjkPfrkpIuZi6+fSL+NHK7XZcMIqU8OXQwPH5MqUIssHfePI9Q5G4Ro
	 IKBa5euox9ABvhXIy+cZQoMV7v9gjwtyZG5t0GE06qOu8RW7c+0YvTRDzfeVm/bs5a
	 OWRFZB3A6LZa0duzXjYNuSBNIjkzf6cuWCckem3i/gQgkP5ScfkyR+ZBbpdgsYdzKy
	 rQea4OGKT+pXNFdSMZoNaoEctg82mI6fqUgTpZRRWoH7sFZfpJRNpBlmsCxIWsSdil
	 2jW9VtOUCc60g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nGJE5wlJoSev; Wed,  2 Nov 2022 17:51:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15ED14168E;
	Wed,  2 Nov 2022 17:51:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15ED14168E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 72E7E1BF307
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 16:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48F0781E26
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 16:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48F0781E26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_05hsCYu-x2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 16:55:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 102C881E25
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 102C881E25
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 16:55:02 +0000 (UTC)
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-333a4a5d495so171854987b3.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Nov 2022 09:55:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=SZlgulRqixFEiPMypgZQH127Pr6F8YVYHAqajlp+pZ0=;
 b=Wpcwu57Ysw/qlKMSV40QZgOHblGPTyYeYWZfgFYmSHjn+yGc9i2U4UNNxRuw2lU7F0
 bt1jwNKwSPEpJHceCyObrXkEnQlOr3M9l7+w/Vpur+sPZfUVkaVOkT9nVDgms47W5AjQ
 4H2mnLBMi5g4YgsNvdhpBps+j2l1jqAQDtTOYTqEHWhsyNr1yKpKnm9u2gNjYoIt4Scb
 X3cRYstuCMU3HJxdsnT1pbDB4Qt4Tb8hk+XLPxl7b1z0blkKmmHJkg08IWhqxQRnQ2ip
 KFzBl5equ1OfVqAstseSLI5w/FZft91JjUSF8utDYhnVvodPo92JxrJhmt0runidRO3k
 7R/w==
X-Gm-Message-State: ACrzQf0hywKBrQ2Xc2mra2MH+Mlqz1AP7ywq04Lgj3mC2OijjjLDY/M1
 NeP2JX8mJ0EmvD3KB7KiTl5rQEaRnRmDyqh9Mik=
X-Google-Smtp-Source: AMsMyM6RbrR62uwnuKfEjFBEZgIFtZJtDbpnd30TKWlQGA5wh/1RnDK8jiBxoiOjqlF+z3l4QU5CCOjuI3mE+I/F7R0=
X-Received: by 2002:a81:6945:0:b0:370:5d4f:b8b9 with SMTP id
 e66-20020a816945000000b003705d4fb8b9mr15851554ywc.394.1667408101770; Wed, 02
 Nov 2022 09:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
In-Reply-To: <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
From: Ivan Smirnov <isgsmirnov@gmail.com>
Date: Wed, 2 Nov 2022 10:54:25 -0600
Message-ID: <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Wed, 02 Nov 2022 17:51:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=SZlgulRqixFEiPMypgZQH127Pr6F8YVYHAqajlp+pZ0=;
 b=RCcddB6cSZ24QMg9wPtfAKvpBSpBBpw3F65roenbAut9VnV6J8vjaA3vSOYZed2dcn
 mlXBLNI37Zc4AH58fhZIt8RnqST6YNskj8iFpLyQ01M8AFZJ/AIBYx4KbKi6ZZZxkn0A
 S7JhjaYAJ6qaf2l/n+swXJO9rCt+wS8m6ACAPEsXJ2lkYPubtOG1P9XgTCNEiB7aLqZC
 n8w2/6dFGpJolAGc0OBAWhjK0WSPrXK7+d7c7oio+ytJ3WoiX307TXbPtcAp8WNbaJdS
 uG/CjqpvgOfYwvQYQkpB2qVTIYif9FQlII7gZeMXzRy36QqgI5gx/+FmPoUvXeV8y3hX
 WTYQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=RCcddB6c
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
Content-Type: multipart/mixed; boundary="===============7664821878238240673=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7664821878238240673==
Content-Type: multipart/alternative; boundary="0000000000009a0baf05ec7fb357"

--0000000000009a0baf05ec7fb357
Content-Type: text/plain; charset="UTF-8"

Hi folks,

As usual, the computers know when the experts join the chat... I haven't
been able to reproduce the issue for the past few days. Yay for stability,
boo for debugging.

I posted on the reddit thread
<https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/>
asking
other users to post their output. I'll do my best to keep an eye out for
this issue and get you the logs ASAP once I repro the crash.

Thank you for your responsiveness - will keep you posted!

Best,
- Ivan
--
Ivan Smirnov
https://ivans.io/ | https://blog.ivansmirnov.name/
https://www.linkedin.com/in/ismirnov |
*https://ivansmirnov.name/ <https://ivansmirnov.name/>*
*https://github.com/issmirnov <https://ivansmirnov.name/>*


On Tue, Nov 1, 2022 at 10:21 AM Neftin, Sasha <sasha.neftin@intel.com>
wrote:

> On 11/1/2022 02:05, Jakub Kicinski wrote:
> > CC: intel-wired
> >
> > On Sun, 30 Oct 2022 14:44:57 -0600 Ivan Smirnov wrote:
> >> Hi folks,
> >>
> >> I found your commits on the linux kernel igc
> >> <
> https://github.com/torvalds/linux/commits/master/drivers/net/ethernet/intel/igc
> >
> >> folder. There appears to be a bug with the igc kernel module on Intel
> >> I225-V chips.
> >>
> >> Specifically, the probe fails at startup with error: "igc: probe of
> >> 0000:06:00.0 failed with error -13". When it does load, it crashes
> after a
> >> few hours with error "igc failed to read reg 0xc030".
> >>
> Could you provide dmesg -w -T | grep -i igc on the boot stage? ethtool -i?
> I've cc'd our PAE expert Amir who also could try to look at this problem.
>
> >> There are several affected users posting on
> >>
> https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
> >> with more details.
> >>
> >> Could I help you debug this? This problem has been reproduced on the
> >> following setups:
> >>
> >> 1. Asus TUF-GAMING-Z690-PLUS-WIFI-D4
> >> <
> https://www.asus.com/motherboards-components/motherboards/tuf-gaming/tuf-gaming-z690-plus-wifi-d4/
> >
> >> on
> >> Arch Linux, kernel 6.0.2-arch1-1
> >> 2. rog strix x670e-e gaming wifi
> >> <
> https://rog.asus.com/us/motherboards/rog-strix/rog-strix-x670e-e-gaming-wifi-model/
> >
> >> on
> >> Proxmox 7, as well as Ubuntu Linux (kernel 5.19, I believe)
> >>
> >> I'm happy to load any debug modules or provide additional logs as per
> >> your request.
> >>
> >> Thank you
> >>
> >>
> >>
> >>
> >> --
> >> Ivan Smirnov
> >> https://ivans.io/ | https://blog.ivansmirnov.name/
> >> https://www.linkedin.com/in/ismirnov |
> >> *https://ivansmirnov.name/ <https://ivansmirnov.name/>*
> >> *https://github.com/issmirnov <https://ivansmirnov.name/>*
> >
>
>

--0000000000009a0baf05ec7fb357
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi folks,<div><br></div><div>As usual, the computers know =
when the experts join the chat... I haven&#39;t been able to reproduce the =
issue for the past few days. Yay for stability, boo for debugging.</div><di=
v><br></div><div>I posted on the=C2=A0<a href=3D"https://www.reddit.com/r/b=
uildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/">=
reddit thread</a>=C2=A0asking other users to post their output. I&#39;ll do=
 my best to keep an eye out for this issue and get you the logs ASAP once I=
 repro the crash.</div><div><br></div><div>Thank you for your responsivenes=
s - will keep you=C2=A0posted!</div><div><br></div><div>Best,</div><div>- I=
van<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font color=3D"#666666">--</fon=
t></div><div><font color=3D"#666666">Ivan Smirnov</font></div><div><font co=
lor=3D"#666666"><a href=3D"https://ivans.io/" target=3D"_blank">https://iva=
ns.io/</a>=C2=A0|=C2=A0<a href=3D"https://blog.ivansmirnov.name/" target=3D=
"_blank">https://blog.ivansmirnov.name/</a><br></font></div><div><font colo=
r=3D"#666666"><a href=3D"https://www.linkedin.com/in/ismirnov" target=3D"_b=
lank">https://www.linkedin.com/in/ismirnov</a>=C2=A0</font><span style=3D"c=
olor:rgb(102,102,102)">|=C2=A0</span><font color=3D"#0000ee"><u><a href=3D"=
https://ivansmirnov.name/" target=3D"_blank">https://ivansmirnov.name/<br><=
/a></u></font></div><div><font color=3D"#0000ee"><u><a href=3D"https://ivan=
smirnov.name/" target=3D"_blank">https://github.com/issmirnov</a></u></font=
></div></div></div></div></div></div></div></div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 1, 2=
022 at 10:21 AM Neftin, Sasha &lt;<a href=3D"mailto:sasha.neftin@intel.com"=
>sasha.neftin@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">On 11/1/2022 02:05, Jakub Kicinski wrote:<br>
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

--0000000000009a0baf05ec7fb357--

--===============7664821878238240673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7664821878238240673==--
