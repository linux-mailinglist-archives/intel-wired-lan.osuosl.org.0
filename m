Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D6A3DA57E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jul 2021 16:02:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07DFA40570;
	Thu, 29 Jul 2021 14:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1n2cWhmiUK1; Thu, 29 Jul 2021 14:02:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5CDA4055A;
	Thu, 29 Jul 2021 14:02:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 170661BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 12:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FF956060C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 12:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L7pajjOOphth for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jul 2021 12:34:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96CDF605A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 12:34:58 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id b128so3620053wmb.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 05:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2sxiuVKGCKLFKWVfLjT/FPfcCy8d+yJXGwCooaq95es=;
 b=Yk2jzWdWfEPCQiM5RGh/MF814FHFE58s6deJ0/UrSGLY6h5bRdtnkdu3+5vJlDklz5
 t8xGQmHkApJznTsiQR7rVr3dH2Wbd1Nry3xY8sLSI4XX4rGJrRf2hwjBdFlU3wr1xjfg
 BH64plnd/bWEL+uhgE1Q6U15luDlcq+9Gtwux+aIoAdV04l9UKavi9Q+pKwZydlKpyQ9
 7G6dCUmfB8ejNrvCRRXKD+a8DGj6HG0TllInvGWO3F9cLa7PBXnmkib3N/Qzaj7bMNX1
 hB9lwICVHrTqAKBidRqc1s1RvjhnP4W3pljuORX+V4jYlHxow+FtP9yhfwGwTBY2xKJD
 YUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2sxiuVKGCKLFKWVfLjT/FPfcCy8d+yJXGwCooaq95es=;
 b=V38KairQF16WE5e41k7nhiiMNm+3Dj8CTojgaOCA89djb2ttpdK4elSs7vtghv2N/C
 QoQOzPDxdbmgLos1o8g7ZG54pVOtduqVyb4ygffUa5TwDpipXjLT863mwvHt4+buyvpW
 gD49HxDn78hodiC0NzpG1j0WI5eCYW6Xz65+IpDB5ez+QzOPXn4Ui+wuiJyaSK6xGK8I
 2nueV0BnVpFb0I55ZezzXXMVjsRjlMZukuv/t2F9jgHVFqueqgeuuSp0+I9MqV43+2NP
 oN3ZDUkonwtgOzzdeAN9DXC4pRXUTQioSgwLRUwwrM+wzYMSQfj60L7uf6kx5j6yxK+O
 kuqQ==
X-Gm-Message-State: AOAM532UVk9C595jF79cqaMncqVYAoRdEa92j/gxo713K61IP1BpkX0Q
 BV+3D560cUIMF2kpjAZAfdmLpDorKnSMQ2v/dw==
X-Google-Smtp-Source: ABdhPJw+RV+IziNE9HzuomJhG4ytESpj11kdHjW2FfPvWfcIBamenO9lMU8VkCkdxSzRzpHZOYOHdu9yzwzzLXhagrk=
X-Received: by 2002:a05:600c:246:: with SMTP id
 6mr4584219wmj.180.1627562096782; 
 Thu, 29 Jul 2021 05:34:56 -0700 (PDT)
MIME-Version: 1.0
References: <BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99@BY3PR05MB8356.namprd05.prod.outlook.com>
 <CAOAKi8yNzyj0yQNa1qNUAFuCdYUtE3fzZOW0=cSPUyd9THKg2A@mail.gmail.com>
 <BY3PR05MB835660017E08EE8B6BC85AFFCAEB9@BY3PR05MB8356.namprd05.prod.outlook.com>
In-Reply-To: <BY3PR05MB835660017E08EE8B6BC85AFFCAEB9@BY3PR05MB8356.namprd05.prod.outlook.com>
From: Laurent Dumont <laurentfdumont@gmail.com>
Date: Thu, 29 Jul 2021 08:34:45 -0400
Message-ID: <CAOAKi8w5X6P3_dQb_a-RnM5qKVFCdzsSF7LtP1LNg4RpC+cJ2g@mail.gmail.com>
To: Yuvaraj Ranganathan <yranganathan@juniper.net>
X-Mailman-Approved-At: Thu, 29 Jul 2021 14:02:02 +0000
Subject: Re: [Intel-wired-lan] [E1000-devel] Traffic not passing for VLAN ID
 >= 32 on the I350 SR-IOV enabled NIC
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
Cc: "e1000-devel@lists.sourceforge.net" <e1000-devel@lists.sourceforge.net>,
 Pushp Saurav <psaurav@juniper.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============8453418679161636063=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8453418679161636063==
Content-Type: multipart/alternative; boundary="000000000000a0f12605c84254c0"

--000000000000a0f12605c84254c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Strange!

Sorry, not sure what else to validate. I figured you might have been using
vlan filters on the VF directly but you see to use them as bare VF.

With a vlan specified at the VF level, it would have shown something like
vf 19 MAC fa:16:3e:d3:f7:f0, vlan 65, spoof checking on, link-state auto,
trust on

I do wonder if there is a vlan limit on the VF side. 4096 is a IEEE
standard max for VLANs because it's a 12 bit field in the ethernet frame
but it could be lower for the SRIOV part.

Can you try vlan ID 60 to 91?

On Thu, Jul 29, 2021 at 5:37 AM Yuvaraj Ranganathan <
yranganathan@juniper.net> wrote:

> Hi Laurent,
>
> Thanks for your help.
>
>
> Below is the information of SR-IOV interface, where VF 2 is directly
> mapped to VM interface.
>
>
>
> root@local-node:~# ip link show heth-0-1
>
> 5: heth-0-1: <BROADCAST,MULTICAST,ALLMULTI,PROMISC,UP,LOWER_UP> mtu 9192
> qdisc mq state UP mode DEFAULT group default qlen 1000
>
>     link/ether 58:00:bb:aa:ee:49 brd ff:ff:ff:ff:ff:ff
>
>     vf 0 MAC aa:81:c7:6f:b4:0a, spoof checking on, link-state auto, trust
> on
>
>     vf 1 MAC 16:26:97:40:0f:86, spoof checking on, link-state auto, trust
> on
>
>     vf 2 MAC 58:00:bb:aa:ee:60, spoof checking on, link-state auto, trust
> on
>
>     vf 3 MAC 22:28:fa:f4:68:1a, spoof checking on, link-state auto, trust
> on
>
> root@local-node:~#
>
> On configuring the VLAN >=3D32 on the VM interface and tried sending
> outgoing traffic, there is no packet captured in tcpdump at
> SR-IOV(heth-0-1) interface. In case of VLAN <=3D 31, the outgoing packet
> captured in tcpdump at heth-0-1 interface.
>
> You help is always appreciated!
>
>
> Thanks,
>
> Yuvaraj.
>
>
>
> *From: *Laurent Dumont <laurentfdumont@gmail.com>
> *Date: *Thursday, 29 July 2021 at 7:41 AM
> *To: *Yuvaraj Ranganathan <yranganathan@juniper.net>
> *Cc: *e1000-devel@lists.sourceforge.net <e1000-devel@lists.sourceforge.ne=
t>,
> intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>,
> Pushp Saurav <psaurav@juniper.net>
> *Subject: *Re: [E1000-devel] Traffic not passing for VLAN ID >=3D 32 on t=
he
> I350 SR-IOV enabled NIC
>
> *[External Email. Be cautious of content]*
>
>
>
> Can you show the output of
>
>
>
> ip link show $SRIOV_INT_NAME_HERE
>
>
>
> Are you seeing any traffic reaching inside the VM if you tcpdump there?
>
>
>
> On Tue, Jul 27, 2021 at 10:07 AM Yuvaraj Ranganathan via E1000-devel <
> e1000-devel@lists.sourceforge.net> wrote:
>
> Hi Team,
>
> With the SR-IOV enabled on I350 NIC which has 4 VF=E2=80=99s, on configur=
ing VLAN
> ID from range 1 to 31 on the VM interface, network traffic is fine and no
> issues. When trying to create an interface with VLAN ID >=3D 32 on the VM=
,
> traffic is not passing to that interface and as per HW specs, VLAN ID=E2=
=80=99s
> from 1 to 4096 are supported.
>
> VM=E2=80=99s interface is directly mapped to one of the VF on I350 NIC. I=
 am using
> IGB PF driver version 5.7.2(latest).
>
> Could somebody please help!
>
> Thanks in advance,
> Yuvaraj.
>
>
> Juniper Business Use Only
>
> _______________________________________________
> E1000-devel mailing list
> E1000-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/e1000-devel
> <https://urldefense.com/v3/__https:/lists.sourceforge.net/lists/listinfo/=
e1000-devel__;!!NEt6yMaO-gk!XuSTry-yCsDfr50s_cea2F8i2aZsn1EgmahFyYNsHaHk47t=
9o3oazDYLdf8qTZlJS5Q$>
> To learn more about Intel Ethernet, visit
> https://forums.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet
> <https://urldefense.com/v3/__https:/forums.intel.com/s/topic/0TO0P0000001=
8NbWAI/intel-ethernet__;!!NEt6yMaO-gk!XuSTry-yCsDfr50s_cea2F8i2aZsn1EgmahFy=
YNsHaHk47t9o3oazDYLdf8qBIRweU8$>
>
>
> Juniper Business Use Only
>

--000000000000a0f12605c84254c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Strange!<div><br></div><div>Sorry, not sure what else to v=
alidate. I figured you might have been using vlan filters on the VF directl=
y but you=C2=A0see to use them as bare VF.</div><div><br></div><div>With a =
vlan specified=C2=A0at the VF level, it would have shown something like</di=
v><div>vf 19 MAC fa:16:3e:d3:f7:f0, vlan 65, spoof checking on, link-state =
auto, trust on<br></div><div><br></div><div>I do wonder if there is a vlan =
limit on the VF side. 4096 is a IEEE standard max for VLANs because it&#39;=
s a 12 bit field in the ethernet frame but it could be lower for the SRIOV =
part.</div><div><br></div><div>Can you try vlan ID 60 to 91?</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, J=
ul 29, 2021 at 5:37 AM Yuvaraj Ranganathan &lt;<a href=3D"mailto:yranganath=
an@juniper.net">yranganathan@juniper.net</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-IN" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_3268744429085767185WordSection1">
<p class=3D"MsoNormal"><span>Hi Laurent,<br>
<br>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>Thanks for your help.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><br>
Below is the information of SR-IOV interface, where VF 2 is directly mapped=
 to VM interface.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>root@local-node:~# ip link show heth-0-1<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span>5: heth-0-1: &lt;BROADCAST,MULTICAST,ALLMULTI,=
PROMISC,UP,LOWER_UP&gt; mtu 9192 qdisc mq state UP mode DEFAULT group defau=
lt qlen 1000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>=C2=A0=C2=A0=C2=A0 link/ether 58:00:bb:aa:ee:4=
9 brd ff:ff:ff:ff:ff:ff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>=C2=A0=C2=A0=C2=A0 vf 0 MAC aa:81:c7:6f:b4:0a,=
 spoof checking on, link-state auto, trust on<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>=C2=A0=C2=A0=C2=A0 vf 1 MAC 16:26:97:40:0f:86,=
 spoof checking on, link-state auto, trust on<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>=C2=A0=C2=A0=C2=A0 vf 2 MAC 58:00:bb:aa:ee:60,=
 spoof checking on, link-state auto, trust on<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>=C2=A0=C2=A0=C2=A0 vf 3 MAC 22:28:fa:f4:68:1a,=
 spoof checking on, link-state auto, trust on<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>root@local-node:~#<br>
<br>
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>On configuring the VLAN &gt;=3D32 on the VM in=
terface and tried sending outgoing traffic, there is no packet captured in =
tcpdump at SR-IOV(heth-0-1) interface. In case of VLAN &lt;=3D 31, the outg=
oing packet
 captured in tcpdump at heth-0-1 interface.<br>
<br>
You help is always appreciated!<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><br>
Thanks,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>Yuvaraj.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(181,196,223);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><b><span style=3D"font-=
size:12pt;color:black">From:
</span></b><span style=3D"font-size:12pt;color:black">Laurent Dumont &lt;<a=
 href=3D"mailto:laurentfdumont@gmail.com" target=3D"_blank">laurentfdumont@=
gmail.com</a>&gt;<br>
<b>Date: </b>Thursday, 29 July 2021 at 7:41 AM<br>
<b>To: </b>Yuvaraj Ranganathan &lt;<a href=3D"mailto:yranganathan@juniper.n=
et" target=3D"_blank">yranganathan@juniper.net</a>&gt;<br>
<b>Cc: </b><a href=3D"mailto:e1000-devel@lists.sourceforge.net" target=3D"_=
blank">e1000-devel@lists.sourceforge.net</a> &lt;<a href=3D"mailto:e1000-de=
vel@lists.sourceforge.net" target=3D"_blank">e1000-devel@lists.sourceforge.=
net</a>&gt;, <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" target=3D"=
_blank">intel-wired-lan@lists.osuosl.org</a> &lt;<a href=3D"mailto:intel-wi=
red-lan@lists.osuosl.org" target=3D"_blank">intel-wired-lan@lists.osuosl.or=
g</a>&gt;, Pushp Saurav &lt;<a href=3D"mailto:psaurav@juniper.net" target=
=3D"_blank">psaurav@juniper.net</a>&gt;<br>
<b>Subject: </b>Re: [E1000-devel] Traffic not passing for VLAN ID &gt;=3D 3=
2 on the I350 SR-IOV enabled NIC<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:12pt;background:rgb(255,235,156=
)"><b><span style=3D"font-size:10.5pt;font-family:Lato,sans-serif;color:bla=
ck">[External Email. Be cautious of content]<u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Can you show the output of <u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ip link show $SRIOV_INT_NAME_HERE<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Are you seeing any traffic reaching inside the VM if=
 you tcpdump there?<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Jul 27, 2021 at 10:07 AM Yuvaraj Ranganathan=
 via E1000-devel &lt;<a href=3D"mailto:e1000-devel@lists.sourceforge.net" t=
arget=3D"_blank">e1000-devel@lists.sourceforge.net</a>&gt; wrote:<u></u><u>=
</u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
<p class=3D"MsoNormal">Hi Team,<br>
<br>
With the SR-IOV enabled on I350 NIC which has 4 VF=E2=80=99s, on configurin=
g VLAN ID from range 1 to 31 on the VM interface, network traffic is fine a=
nd no issues. When trying to create an interface with VLAN ID &gt;=3D 32 on=
 the VM, traffic is not passing to that interface
 and as per HW specs, VLAN ID=E2=80=99s from 1 to 4096 are supported.<br>
<br>
VM=E2=80=99s interface is directly mapped to one of the VF on I350 NIC. I a=
m using IGB PF driver version 5.7.2(latest).<br>
<br>
Could somebody please help!<br>
<br>
Thanks in advance,<br>
Yuvaraj.<br>
<br>
<br>
Juniper Business Use Only<br>
<br>
_______________________________________________<br>
E1000-devel mailing list<br>
<a href=3D"mailto:E1000-devel@lists.sourceforge.net" target=3D"_blank">E100=
0-devel@lists.sourceforge.net</a><br>
<a href=3D"https://urldefense.com/v3/__https:/lists.sourceforge.net/lists/l=
istinfo/e1000-devel__;!!NEt6yMaO-gk!XuSTry-yCsDfr50s_cea2F8i2aZsn1EgmahFyYN=
sHaHk47t9o3oazDYLdf8qTZlJS5Q$" target=3D"_blank">https://lists.sourceforge.=
net/lists/listinfo/e1000-devel</a><br>
To learn more about Intel Ethernet, visit <a href=3D"https://urldefense.com=
/v3/__https:/forums.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet__;!=
!NEt6yMaO-gk!XuSTry-yCsDfr50s_cea2F8i2aZsn1EgmahFyYNsHaHk47t9o3oazDYLdf8qBI=
RweU8$" target=3D"_blank">
https://forums.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet</a><u></=
u><u></u></p>
</blockquote>
</div>
</div>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:7pt;color:rgb(0,0,0);margin:15pt"=
 align=3D"Center">
Juniper Business Use Only<br>
</p>
</div>

</blockquote></div>

--000000000000a0f12605c84254c0--

--===============8453418679161636063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8453418679161636063==--
