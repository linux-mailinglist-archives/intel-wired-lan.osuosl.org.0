Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4351A4982C2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 15:57:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 432BF41720;
	Mon, 24 Jan 2022 14:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C0a48Judir8l; Mon, 24 Jan 2022 14:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B35CB40987;
	Mon, 24 Jan 2022 14:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BA661BF3BB
 for <intel-wired-lan@osuosl.org>; Mon, 24 Jan 2022 13:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6318184B40
 for <intel-wired-lan@osuosl.org>; Mon, 24 Jan 2022 13:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCipobaD5TcR for <intel-wired-lan@osuosl.org>;
 Mon, 24 Jan 2022 13:26:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6DB6782702
 for <intel-wired-lan@osuosl.org>; Mon, 24 Jan 2022 13:26:03 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id p37so15960810pfh.4
 for <intel-wired-lan@osuosl.org>; Mon, 24 Jan 2022 05:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fg2oqpSIIRPvvjLqQ7HAVxz2Du1O1VpESOTDRI/TWyU=;
 b=R/3jN1EzRQVcd8U3LnPQSs7t6Y6up+kmCX9UZjYHH25dBeZjNkKg40KEu+N3qfvQE2
 O171WrJgQegqdxuzzWWYW5UEdG2QsTFnu+PEpt2pWpc3z/1UngnnrYDyifw1jvB1MVB2
 aBNQYKAgjbxfpmWkWZaJrRoizMrniTfEPz05w83QxpArXOD4kcmDSQqlp9rRWZxzPXkE
 mU/YG5x/5jNfF5gP9XO6KvGF9X2JWJcz/7zQFerP+VbLE53YH8xYnACpL3KC9boHbxqv
 tWmZ04CTGURNqwe/DKXLW51PDHqqLpivDRdaLDiH3Ec9r0a5EXHAFRW+JiJNj2KNDEf7
 knGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fg2oqpSIIRPvvjLqQ7HAVxz2Du1O1VpESOTDRI/TWyU=;
 b=YSyiIXLEGW1tt9POMYNOMpF4IfL3F2IquWxqiFl8ltJ3zbgV63j+Qwly7dGjwqmz2i
 ldbZqzQW9C0KD9HO+5A148BOpNSbvviDfS+5mjdHn/3/JUqfe+HMMuKsVucH3snz0XFR
 GfokkHPtHMdMNilZuPIIWpkV5EW8ewgYX3xV+/1lXqqUhxd/ul3vzS5hTKP4bFDkzFX+
 IQFiHg0E0Br6y5si/D9puuzgav3/yG4R/vU4LTbCKGtRFgwjQcPo+oasur7ueupp8dBz
 5bF6E7/oBVvy3wV2ZqqbfhvH+iyPUOwCo1y2yKb/zYeymrPjKKZYCeGmC2v/XmEQD/cQ
 2Q9Q==
X-Gm-Message-State: AOAM532X+QFgnPTxs9M2OdYk/Egtt5SIjUiNSV9p0Cm6JvgBPtGLeOUx
 /LXMxa+p0ximP3gnt2k+RE/IM1hrfdEpWqLoe27b4Zgm3H0=
X-Google-Smtp-Source: ABdhPJzygsHQtud1WdXpjd06V65L+Yx76e+GsbjWF2a5HViVNGofXHs6Ayv+07gXS5DGFBEkfCyKGwaG9Jl0MZjiSEU=
X-Received: by 2002:a05:6a00:1755:b0:4c7:f879:5577 with SMTP id
 j21-20020a056a00175500b004c7f8795577mr8162193pfc.71.1643030762767; Mon, 24
 Jan 2022 05:26:02 -0800 (PST)
MIME-Version: 1.0
References: <CALidq=UDYtC08Y0v+jsmkuro16CgBggW=B1PHmhn=6NyTN+G=Q@mail.gmail.com>
 <CALidq=UTiDv6V0psq0CxJ8vqmEC8JxjAtY=u88oKcahNbB342w@mail.gmail.com>
 <5291ac05-c329-0369-1ebb-5f6e7b953f9e@molgen.mpg.de>
In-Reply-To: <5291ac05-c329-0369-1ebb-5f6e7b953f9e@molgen.mpg.de>
From: Martin Zaharinov <micron10@gmail.com>
Date: Mon, 24 Jan 2022 15:25:51 +0200
Message-ID: <CALidq=XaQiQpvLWWOMiiRzKF8eYuaZviUFrqUvy=dw_7z+zjpA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailman-Approved-At: Mon, 24 Jan 2022 14:57:13 +0000
Subject: Re: [Intel-wired-lan] Fwd: Intel i40e driver problem when is enable
 rx-vlan-filter: on [fixed]
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
Cc: intel-wired-lan@osuosl.org, jedrzej.jagielski@intel.com,
 Eric Dumazet <edumazet@google.com>
Content-Type: multipart/mixed; boundary="===============8363816224829514517=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8363816224829514517==
Content-Type: multipart/alternative; boundary="000000000000f8481c05d653e8b4"

--000000000000f8481c05d653e8b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Paul

On Mon, Jan 24, 2022, 09:59 Paul Menzel <pmenzel@molgen.mpg.de> wrote:

> Dear Martin,
>
>
> Am 22.01.22 um 18:35 schrieb Martin Zaharinov:
>
> > We found one big problem(Bug) in intel i40e driver .
> >
> > test kernel is 5.16.2
> > Card : Intel XL710 (AOC-S40G-i2Q (Supermicro))
> >
> > this is ethtool -i :
> >
> > driver: i40e
> > version: 5.16.2
> > firmware-version: 7.20 0x80008322 1.2585.0
> > expansion-rom-version:
> > bus-info: 0000:02:00.0
> > supports-statistics: yes
> > supports-test: yes
> > supports-eeprom-access: yes
> > supports-register-dump: yes
> > supports-priv-flags: yes
> >
> > Problem is this :
> >
> > [   42.267788] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.304230] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.343222] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.383900] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.424674] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.465541] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.507650] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.551789] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.598153] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.645146] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.693241] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.741304] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.789719] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.839720] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.890856] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   42.943083] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.058643] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.110952] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.163266] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.215573] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.267887] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.320205] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.372544] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.424854] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.477162] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.529498] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.581811] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.634122] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.686429] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.738745] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.791061] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> > [   43.908556] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
> > [   43.960581] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
> >
> > ......
> >
> > [  233.152055] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
> > [  233.205430] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
> > [  233.258777] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
> > [  233.312141] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
> > [  233.365493] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
> > [  233.420367] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
> overflow promiscuous on PF
> > [  233.473951] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
> filters on PF, promiscuous mode forced on
> >
> >
> > Problem is flood dmesg and networking stop work on this time of message=
 .
> >
> > do you have any idea how to fix or patch i40e driver to fix this proble=
m.
>
> You tested with Linux 5.16.2. Do you know if it worked with older Linux
> kernel version, that means, if this is a regression. If so, the fastest
> way for everyone to fix the problem is often to bisect the issue.
>

Yes tested with kernel from 5.4 to 5.16.2 with internal driver and with
driver from : https://sourceforge.net/projects/e1000/files/i40e%20stable/
 (latest 2.17.15)

The problem is still there , when system is boot and up vlan 0101 all is
fine , but after run service to like pppoe server problem start.



>
> > on machine is configured this interface only :
> >
> > 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN
> group default qlen 1000
> >      link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> >      inet 127.0.0.1/8 scope host lo
> >         valid_lft forever preferred_lft forever
> > 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP
> group default qlen 10000
> >      link/ether 0c:c4:7a:19:70:18 brd ff:ff:ff:ff:ff:ff
> > 3: eth1: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group
> default qlen 1000
> >      link/ether 0c:c4:7a:19:70:19 brd ff:ff:ff:ff:ff:ff
> > 4: eth0.0101@eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc
> noqueue state UP group default qlen 1000
> >      link/ether 0c:c4:7a:19:70:18 brd ff:ff:ff:ff:ff:ff
> >      inet 192.168.1.2/27 scope global eth0.0101
> >         valid_lft forever preferred_lft forever
> >
> > Normally problem stop when make this:
>
> So it=E2=80=99s a known problem with the i40e driver?
>
>
Yes problem  is with driver i40e

and only one options is to stop flood and start card work

add bridge interface or bonding and add card in bridge/bonding.

after that set on bridge/bonding rx-vlan-filter off.


Same problem have with intel X722 dual port card.
the problem has been there for a long time.


> > ethtool -K eth0 rx-vlan-filter off
> > Actual changes:
> > rx-vlan-filter: on [requested off]
> > Could not change any device features
> >
> > But in this card this options is hard set on ON and i not found
> > options to disable.
>
> Strange.
>
>
> Kind regards,
>
> Paul
>


Best regards,
Martin

--000000000000f8481c05d653e8b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Paul<br><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 24, 2022, 09:59 Paul Me=
nzel &lt;<a href=3D"mailto:pmenzel@molgen.mpg.de" target=3D"_blank">pmenzel=
@molgen.mpg.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Dear =
Martin,<br>
<br>
<br>
Am 22.01.22 um 18:35 schrieb Martin Zaharinov:<br>
<br>
&gt; We found one big problem(Bug) in intel i40e driver .<br>
&gt; <br>
&gt; test kernel is 5.16.2<br>
&gt; Card : Intel XL710 (AOC-S40G-i2Q (Supermicro))<br>
&gt; <br>
&gt; this is ethtool -i :<br>
&gt; <br>
&gt; driver: i40e<br>
&gt; version: 5.16.2<br>
&gt; firmware-version: 7.20 0x80008322 1.2585.0<br>
&gt; expansion-rom-version:<br>
&gt; bus-info: 0000:02:00.0<br>
&gt; supports-statistics: yes<br>
&gt; supports-test: yes<br>
&gt; supports-eeprom-access: yes<br>
&gt; supports-register-dump: yes<br>
&gt; supports-priv-flags: yes<br>
&gt; <br>
&gt; Problem is this :<br>
&gt; <br>
&gt; [=C2=A0 =C2=A042.267788] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.304230] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.343222] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.383900] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.424674] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.465541] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.507650] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.551789] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.598153] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.645146] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.693241] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.741304] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.789719] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.839720] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.890856] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A042.943083] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.058643] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.110952] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.163266] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.215573] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.267887] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.320205] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.372544] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.424854] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.477162] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.529498] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.581811] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.634122] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.686429] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.738745] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.791061] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC ad=
ding RX filters on PF, promiscuous mode forced on<br>
&gt; [=C2=A0 =C2=A043.908556] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, f=
orcing overflow promiscuous on PF<br>
&gt; [=C2=A0 =C2=A043.960581] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, f=
orcing overflow promiscuous on PF<br>
&gt; <br>
&gt; ......<br>
&gt; <br>
&gt; [=C2=A0 233.152055] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcin=
g overflow promiscuous on PF<br>
&gt; [=C2=A0 233.205430] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcin=
g overflow promiscuous on PF<br>
&gt; [=C2=A0 233.258777] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcin=
g overflow promiscuous on PF<br>
&gt; [=C2=A0 233.312141] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcin=
g overflow promiscuous on PF<br>
&gt; [=C2=A0 233.365493] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcin=
g overflow promiscuous on PF<br>
&gt; [=C2=A0 233.420367] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcin=
g overflow promiscuous on PF<br>
&gt; [=C2=A0 233.473951] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding =
RX filters on PF, promiscuous mode forced on<br>
&gt; <br>
&gt; <br>
&gt; Problem is flood dmesg and networking stop work on this time of messag=
e .<br>
&gt; <br>
&gt; do you have any idea how to fix or patch i40e driver to fix this probl=
em.<br>
<br>
You tested with Linux 5.16.2. Do you know if it worked with older Linux <br=
>
kernel version, that means, if this is a regression. If so, the fastest <br=
>
way for everyone to fix the problem is often to bisect the issue.<br></bloc=
kquote><div><br></div><div>Yes tested with kernel from 5.4 to 5.16.2 with i=
nternal driver and with driver from :=C2=A0<a href=3D"https://sourceforge.n=
et/projects/e1000/files/i40e%20stable/">https://sourceforge.net/projects/e1=
000/files/i40e%20stable/</a>=C2=A0 =C2=A0(latest 2.17.15)</div><div><br></d=
iv><div>The problem is still there , when system is boot and up vlan 0101 a=
ll is fine , but after run service to like pppoe server problem start.</div=
><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
&gt; on machine is configured this interface only :<br>
&gt; <br>
&gt; 1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKN=
OWN group default qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00=
:00<br>
&gt;=C2=A0 =C2=A0 =C2=A0 inet <a href=3D"http://127.0.0.1/8" rel=3D"norefer=
rer noreferrer" target=3D"_blank">127.0.0.1/8</a> scope host lo<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forev=
er<br>
&gt; 2: eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc mq sta=
te UP group default qlen 10000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 link/ether 0c:c4:7a:19:70:18 brd ff:ff:ff:ff:ff:ff=
<br>
&gt; 3: eth1: &lt;BROADCAST,MULTICAST&gt; mtu 1500 qdisc noop state DOWN gr=
oup default qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 link/ether 0c:c4:7a:19:70:19 brd ff:ff:ff:ff:ff:ff=
<br>
&gt; 4: eth0.0101@eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qd=
isc noqueue state UP group default qlen 1000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 link/ether 0c:c4:7a:19:70:18 brd ff:ff:ff:ff:ff:ff=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 inet <a href=3D"http://192.168.1.2/27" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">192.168.1.2/27</a> scope global eth0.0=
101<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft forev=
er<br>
&gt; <br>
&gt; Normally problem stop when make this:<br>
<br>
So it=E2=80=99s a known problem with the i40e driver?<br>
<br></blockquote><div>=C2=A0</div><div>Yes problem=C2=A0 is with driver i40=
e=C2=A0</div><div><br></div><div>and only one options is to stop flood and =
start card work=C2=A0</div><div><br></div><div>add bridge interface or bond=
ing and add card in bridge/bonding.</div><div><br></div><div>after that set=
 on bridge/bonding rx-vlan-filter off.</div><div><br></div><div><br></div><=
div>Same problem have with intel X722 dual port card.</div><div>the problem=
 has been there for a long time.</div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
&gt; ethtool -K eth0 rx-vlan-filter off<br>
&gt; Actual changes:<br>
&gt; rx-vlan-filter: on [requested off]<br>
&gt; Could not change any device features<br>
&gt; <br>
&gt; But in this card this options is hard set on ON and i not found<br>
&gt; options to disable.<br>
<br>
Strange.<br>
<br>
<br>
Kind regards,<br>
<br>
Paul<br></blockquote><div><br></div><div><br></div><div>Best regards,</div>=
<div>Martin=C2=A0</div></div></div>
</div>

--000000000000f8481c05d653e8b4--

--===============8363816224829514517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8363816224829514517==--
