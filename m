Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9867429A91
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2019 17:04:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 595E186DA3;
	Fri, 24 May 2019 15:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V62yD6aKhWfB; Fri, 24 May 2019 15:04:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0DCDD86DA9;
	Fri, 24 May 2019 15:04:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65BD21BF34B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2019 15:04:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6199A86D8A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2019 15:04:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PhhS4EXhx7dV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2019 15:04:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B41C286D79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2019 15:04:42 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id b18so10342364wrq.12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2019 08:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z4gpHJ/YpGBDXZKr41WyAjYxRrspgCr0kNwy43pr9Wc=;
 b=kerezyG9/+ZlEkpEPOchPu+9d93noGnuKlGSP0DtufSDlUuJG649+bkYu1dzlI1fud
 pzmDMp4LJfXb4oSKfbkST4WBvDCB4gJ2fdjmqvM6bJfe5rmjfSFAzph8n6Fm9A4DBeSX
 Dk+7aeB7yoA4Sq5VS0FdWZml1Nyab4WiDrrM/Hh1gqXD+UsbLRU68cC5yV0QzfJSdeba
 c7Y4MQIrXXTxiqWLAdQK/bQRsJAW54AczqClL31OB1F7HCQsZ2U5b2x0MCe+dGpMj2NC
 AUycyFRbEoZeI66Ux25NKmgVJoc9Pi8lWsa97j95tBEbnoM9Vnz865TCcZ7NZILSE0bc
 00Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z4gpHJ/YpGBDXZKr41WyAjYxRrspgCr0kNwy43pr9Wc=;
 b=VsFBDRTtT0eWxXJP5Zxy1fn/L6WPOzwFZdUtl429WxgRZQIXWmcY7rFZgWzTxQ3UUA
 e7e22A8wyncYob+z+vZ8rgk2BbNPHN0kKZgfrRp2+eObtogTnGhj6F9zQEbUgcKc0ZwJ
 XHi6AiIPUadIoyt0TA7p8+RpPhfgBYbYZaqSbVD1pthhonsarGIEnVBSGRPVxiIYfe4X
 2tcd7sGmarj4obe2QkrftF5YSK7qpSAaWXKZB6eqyknY4gEZSa/jEZ4/91c7xYvr4NIt
 SvvssEEXVXxbkVn+cuOpOSVb3QGpo5qm5j+hR3x1Wr4iBIJIRKLoqWqgS6LkbVBEXTIL
 s8fQ==
X-Gm-Message-State: APjAAAVfqwhd8dI6oZTxNv/s/E5/iYfsTyCq9L8XZ8raBgWDLIwVerCv
 Fq6KGm1oSPvNwagqbfxM6fbto0aGFM+mcEm8uSw=
X-Google-Smtp-Source: APXvYqyV0+bWjElWqODf7TH1nTeyyDoQ3Ip7kp2agBuBU0brmrIAGxb29Alsg355hr7dHomEFC1YCPfTBdFZwt9tK+c=
X-Received: by 2002:a5d:6849:: with SMTP id o9mr10967834wrw.196.1558710280905; 
 Fri, 24 May 2019 08:04:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAJdzkC0Ji0ZnCPhCDdhN_PUr5-qNs_OM5cvn=r+t8wYhJR3R0g@mail.gmail.com>
 <7fa75c5fd75b326e7825524481aca1365dfdaa9a.camel@intel.com>
 <CAJdzkC3p0QEVxHikmGzq8d85bryrJ+iqWPnC2qYCn_=U0DDv5Q@mail.gmail.com>
In-Reply-To: <CAJdzkC3p0QEVxHikmGzq8d85bryrJ+iqWPnC2qYCn_=U0DDv5Q@mail.gmail.com>
From: L Ait <lhoussain.aitassou@gmail.com>
Date: Fri, 24 May 2019 17:04:29 +0200
Message-ID: <CAJdzkC1uEYD77gcfiXTUWf-DSKAaYvNZXVeaDpJcb6m8qYYhyw@mail.gmail.com>
To: jeffrey.t.kirsher@intel.com
Subject: Re: [Intel-wired-lan] Kernel Linux and i*gb* drivers
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============8352663428040587036=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8352663428040587036==
Content-Type: multipart/alternative; boundary="00000000000099e8f40589a3841d"

--00000000000099e8f40589a3841d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
To continue on debugging the out of order of udp datagrams arrival.
I upgraded to recent kernel version 4.14.110 and tested with recent [igb
,and ixgbe] drivers but i have got same errors.
One question what it the effect of having transceir internal instead of
external here :
ethtool eth0 :
Transceiver: internal

Because I can't change any parameter with ethtool : ethtool -s eth0 xcvr
external returns [operation not supported]

Thank you



Le mar. 9 avr. 2019 =C3=A0 10:52, L Ait <lhoussain.aitassou@gmail.com> a =
=C3=A9crit :

> Hi,
>
> Please find in attached file the details of hardware ( lspci -vvv) comman=
d.
> I have noticed one difference between kernel versions 4.4.27 and 4.14.20:
> For  4.14.20, I get with ethtool eth1 :
> Settings for eth1:
>     Supported ports: [ FIBRE ]
>     Supported link modes:   Not reported
>     Supported pause frame use: Symmetric
>     Supports auto-negotiation: Yes
>     Advertised link modes:  Not reported
>     Advertised pause frame use: Symmetric
>     Advertised auto-negotiation: Yes
>     Speed: 1000Mb/s
>     Duplex: Full
>     Port: FIBRE
>     PHYAD: 0
>     Transceiver: internal
>     Auto-negotiation: on
>     Supports Wake-on: pumbg
>     Wake-on: g
>     Current message level: 0x00000007 (7)
>                    drv probe link
>     Link detected: yes
>
>
> But for 4.4.27:
> Settings for eth1:
>     Supported ports: [ FIBRE ]
>     Supported link modes:   1000baseT/Full
>     Supported pause frame use: No
>     Supports auto-negotiation: Yes
>     Advertised link modes:  1000baseT/Full
>     Advertised pause frame use: No
>     Advertised auto-negotiation: Yes
>     Speed: 1000Mb/s
>     Duplex: Full
>     Port: Other
>     PHYAD: 0
>     Transceiver: external
>     Auto-negotiation: on
>     Supports Wake-on: umbg
>     Wake-on: g
>     Current message level: 0x00000007 (7)
>                    drv probe link
>
> I think the problem is related to transceiver type and I can't change thi=
s
> conf for 4.14.20 kernel.
> For information I could upgrade kernel but I would know which version and
> measure the gap
>
> Thank you in advance
>
>
> Le lun. 8 avr. 2019 =C3=A0 16:57, Jeff Kirsher <jeffrey.t.kirsher@intel.c=
om> a
> =C3=A9crit :
>
>> On Mon, 2019-04-08 at 13:15 +0200, L Ait wrote:
>> > Hi ,
>> >
>> > I have a linux applidation that uses udp for data transferer between
>> > processes (on the same machine or same vlan). This application runs
>> > fine on linux 4.4.27. But when upgrading to linux 4.14.20 kernel I
>> > was facing out of order udp packets. This espcially happens when
>> > small datagramms occurs as they arrive before big ones.
>> > I know that udp packets aren't guaranteed to arrive in order but I
>> > would know what kernel changes affects this udp behavior.
>> > After troublshooting the application I didn't find waht could cause
>> > the problem. Here some parameters I changed either wtih ethtool or
>> > sysctl: -RX fifo length -irq interrupts vs cpus - RSS mode activation
>> > /deactivation
>> > for ibg and ixgbe drivers here are the versions I used in both cases
>> > :
>> > Kernel 4.4.27
>> > modinfo igb :
>> > filename:       /lib/modules/4.4.27-
>> > HRN06/kernel/drivers/net/ethernet/intel/igb/igb.ko
>> > version:        5.3.0-k
>> > license:        GPL
>> > description:    Intel(R) Gigabit Ethernet Network Driver
>> > modinfo ixgbe:
>> > filename:       /lib/modules/4.4.27-
>> > HRN06/kernel/drivers/net/ethernet/intel/ixgbe/ixgbe.ko
>> > version:        4.2.1-k
>> > license:        GPL
>> > description:    Intel(R) 10 Gigabit PCI Express Network Driver
>> >
>> > Kernel 4.14.20
>> > modinfo igb:
>> > filename:       /lib/modules/4.14.20-
>> > HRN09/kernel/drivers/net/ethernet/intel/igb/igb.ko
>> > version:        5.4.0-k
>> > license:        GPL
>> > description:    Intel(R) Gigabit Ethernet Network Driver
>> > author:         Intel Corporation, <e1000-devel@lists.sourceforge.net
>> > >
>> > modinfo ixgbe
>> > filename:       /lib/modules/4.14.20-
>> > HRN09/kernel/drivers/net/ethernet/intel/ixgbe/ixgbe.ko
>> > version:        5.1.0-k
>> > license:        GPL
>> > description:    Intel(R) 10 Gigabit PCI Express Network Driver
>> > author:         Intel Corporation, <linux.nics@intel.com>
>> >
>> > I also modified RX buffers but no good results
>> >
>>
>> First thing, please send requests like this to our public mailing list
>> so that all of the Intel Ethernet developers can review and help
>> respond to your questions.  I have gone ahead and added our public
>> mailing list.
>>
>> The kernel versions you are using are older and do not contain all the
>> bug fixes and changes.  Is there any chance that you can use the latest
>> kernel from David Miller or Linus kernel git tree?
>>
>> Also can you provide the hardware you are using for both the igb and
>> ixgbe drivers?  Specifically the NICs you are using.  This can be
>> obtained by running lspci -vvv.
>>
>>

--00000000000099e8f40589a3841d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>To continue on debugging the out of order of udp d=
atagrams arrival.</div><div>I upgraded to recent kernel version 4.14.110 an=
d tested with recent [igb ,and ixgbe] drivers but i have got same errors.</=
div><div>One question what it the effect of having transceir internal inste=
ad of external here :<br></div><div>ethtool eth0 :</div><div>Transceiver: i=
nternal</div><div><br></div><div>Because I can&#39;t change any parameter w=
ith ethtool : ethtool -s eth0 xcvr external returns [operation not supporte=
d]</div><div><br></div><div>Thank you</div><div><br></div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=
=C2=A0mar. 9 avr. 2019 =C3=A0=C2=A010:52, L Ait &lt;<a href=3D"mailto:lhous=
sain.aitassou@gmail.com">lhoussain.aitassou@gmail.com</a>&gt; a =C3=A9crit=
=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><div><div>=
Hi,<br><br></div>Please find in attached file the details of hardware ( lsp=
ci -vvv) command.<br></div>I have noticed one difference between kernel ver=
sions 4.4.27 and 4.14.20:<br></div>For=C2=A0 4.14.20, I get with ethtool et=
h1 :<br>Settings for eth1:<br>=C2=A0=C2=A0=C2=A0 Supported ports: [ FIBRE ]=
<br>=C2=A0=C2=A0=C2=A0 Supported link modes:=C2=A0=C2=A0 Not reported<br>=
=C2=A0=C2=A0=C2=A0 Supported pause frame use: Symmetric<br>=C2=A0=C2=A0=C2=
=A0 Supports auto-negotiation: Yes<br>=C2=A0=C2=A0=C2=A0 Advertised link mo=
des:=C2=A0 Not reported<br>=C2=A0=C2=A0=C2=A0 Advertised pause frame use: S=
ymmetric<br>=C2=A0=C2=A0=C2=A0 Advertised auto-negotiation: Yes<br>=C2=A0=
=C2=A0=C2=A0 Speed: 1000Mb/s<br>=C2=A0=C2=A0=C2=A0 Duplex: Full<br>=C2=A0=
=C2=A0=C2=A0 Port: FIBRE<br>=C2=A0=C2=A0=C2=A0 PHYAD: 0<br>=C2=A0=C2=A0=C2=
=A0 Transceiver: internal<br>=C2=A0=C2=A0=C2=A0 Auto-negotiation: on<br>=C2=
=A0=C2=A0=C2=A0 Supports Wake-on: pumbg<br>=C2=A0=C2=A0=C2=A0 Wake-on: g<br=
>=C2=A0=C2=A0=C2=A0 Current message level: 0x00000007 (7)<br>=C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 drv probe link<br>=C2=A0=C2=A0=C2=A0 Link detected: yes<br><br><br><=
/div><div>But for 4.4.27: <br>Settings for eth1:<br>=C2=A0=C2=A0=C2=A0 Supp=
orted ports: [ FIBRE ]<br>=C2=A0=C2=A0=C2=A0 Supported link modes:=C2=A0=C2=
=A0 1000baseT/Full <br>=C2=A0=C2=A0=C2=A0 Supported pause frame use: No<br>=
=C2=A0=C2=A0=C2=A0 Supports auto-negotiation: Yes<br>=C2=A0=C2=A0=C2=A0 Adv=
ertised link modes:=C2=A0 1000baseT/Full <br>=C2=A0=C2=A0=C2=A0 Advertised =
pause frame use: No<br>=C2=A0=C2=A0=C2=A0 Advertised auto-negotiation: Yes<=
br>=C2=A0=C2=A0=C2=A0 Speed: 1000Mb/s<br>=C2=A0=C2=A0=C2=A0 Duplex: Full<br=
>=C2=A0=C2=A0=C2=A0 Port: Other<br>=C2=A0=C2=A0=C2=A0 PHYAD: 0<br>=C2=A0=C2=
=A0=C2=A0 Transceiver: external<br>=C2=A0=C2=A0=C2=A0 Auto-negotiation: on<=
br>=C2=A0=C2=A0=C2=A0 Supports Wake-on: umbg<br>=C2=A0=C2=A0=C2=A0 Wake-on:=
 g<br>=C2=A0=C2=A0=C2=A0 Current message level: 0x00000007 (7)<br>=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 drv probe link<br><br></div><div>I think the problem is related t=
o transceiver type and I can&#39;t change this conf for 4.14.20 kernel.<br>=
</div><div>For information I could upgrade kernel but I would know which ve=
rsion and measure the gap<br><br></div><div>Thank you in advance<br><br></d=
iv></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Le=C2=A0lun. 8 avr. 2019 =C3=A0=C2=A016:57, Jeff Kirsher &l=
t;<a href=3D"mailto:jeffrey.t.kirsher@intel.com" target=3D"_blank">jeffrey.=
t.kirsher@intel.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Mon, 2019-04-08 at 13:15 +0200, L Ait w=
rote:<br>
&gt; Hi ,<br>
&gt; <br>
&gt; I have a linux applidation that uses udp for data transferer between<b=
r>
&gt; processes (on the same machine or same vlan). This application runs<br=
>
&gt; fine on linux 4.4.27. But when upgrading to linux 4.14.20 kernel I<br>
&gt; was facing out of order udp packets. This espcially happens when<br>
&gt; small datagramms occurs as they arrive before big ones.<br>
&gt; I know that udp packets aren&#39;t guaranteed to arrive in order but I=
<br>
&gt; would know what kernel changes affects this udp behavior.<br>
&gt; After troublshooting the application I didn&#39;t find waht could caus=
e<br>
&gt; the problem. Here some parameters I changed either wtih ethtool or<br>
&gt; sysctl: -RX fifo length -irq interrupts vs cpus - RSS mode activation<=
br>
&gt; /deactivation<br>
&gt; for ibg and ixgbe drivers here are the versions I used in both cases<b=
r>
&gt; :<br>
&gt; Kernel 4.4.27<br>
&gt; modinfo igb :<br>
&gt; filename:=C2=A0 =C2=A0 =C2=A0 =C2=A0/lib/modules/4.4.27-<br>
&gt; HRN06/kernel/drivers/net/ethernet/intel/igb/igb.ko<br>
&gt; version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 5.3.0-k<br>
&gt; license:=C2=A0 =C2=A0 =C2=A0 =C2=A0 GPL<br>
&gt; description:=C2=A0 =C2=A0 Intel(R) Gigabit Ethernet Network Driver<br>
&gt; modinfo ixgbe:<br>
&gt; filename:=C2=A0 =C2=A0 =C2=A0 =C2=A0/lib/modules/4.4.27-<br>
&gt; HRN06/kernel/drivers/net/ethernet/intel/ixgbe/ixgbe.ko<br>
&gt; version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 4.2.1-k<br>
&gt; license:=C2=A0 =C2=A0 =C2=A0 =C2=A0 GPL<br>
&gt; description:=C2=A0 =C2=A0 Intel(R) 10 Gigabit PCI Express Network Driv=
er<br>
&gt; <br>
&gt; Kernel 4.14.20<br>
&gt; modinfo igb:<br>
&gt; filename:=C2=A0 =C2=A0 =C2=A0 =C2=A0/lib/modules/4.14.20-<br>
&gt; HRN09/kernel/drivers/net/ethernet/intel/igb/igb.ko<br>
&gt; version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 5.4.0-k<br>
&gt; license:=C2=A0 =C2=A0 =C2=A0 =C2=A0 GPL<br>
&gt; description:=C2=A0 =C2=A0 Intel(R) Gigabit Ethernet Network Driver<br>
&gt; author:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Intel Corporation, &lt;<a hre=
f=3D"mailto:e1000-devel@lists.sourceforge.net" target=3D"_blank">e1000-deve=
l@lists.sourceforge.net</a><br>
&gt; &gt;<br>
&gt; modinfo ixgbe<br>
&gt; filename:=C2=A0 =C2=A0 =C2=A0 =C2=A0/lib/modules/4.14.20-<br>
&gt; HRN09/kernel/drivers/net/ethernet/intel/ixgbe/ixgbe.ko<br>
&gt; version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 5.1.0-k<br>
&gt; license:=C2=A0 =C2=A0 =C2=A0 =C2=A0 GPL<br>
&gt; description:=C2=A0 =C2=A0 Intel(R) 10 Gigabit PCI Express Network Driv=
er<br>
&gt; author:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Intel Corporation, &lt;<a hre=
f=3D"mailto:linux.nics@intel.com" target=3D"_blank">linux.nics@intel.com</a=
>&gt;<br>
&gt; <br>
&gt; I also modified RX buffers but no good results<br>
&gt; <br>
<br>
First thing, please send requests like this to our public mailing list<br>
so that all of the Intel Ethernet developers can review and help<br>
respond to your questions.=C2=A0 I have gone ahead and added our public<br>
mailing list.<br>
<br>
The kernel versions you are using are older and do not contain all the<br>
bug fixes and changes.=C2=A0 Is there any chance that you can use the lates=
t<br>
kernel from David Miller or Linus kernel git tree?<br>
<br>
Also can you provide the hardware you are using for both the igb and<br>
ixgbe drivers?=C2=A0 Specifically the NICs you are using.=C2=A0 This can be=
<br>
obtained by running lspci -vvv.<br>
<br>
</blockquote></div>
</blockquote></div>

--00000000000099e8f40589a3841d--

--===============8352663428040587036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8352663428040587036==--
