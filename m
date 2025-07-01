Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A97AEF7D3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 14:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0E8E41DA6;
	Tue,  1 Jul 2025 12:08:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VHVci5w-WkBH; Tue,  1 Jul 2025 12:08:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13CF641D9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751371707;
	bh=uu7W3XDiZgui70eGZhif1Ffkq+ZRdLaUNrPZkM0GOuc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yMpoUDGe8I/s2mhp0Ik3Dm5IwBtkBQtPXnPh7gaECKurnTSgdVli+322OQVIUDupE
	 Z4fO5rDZvlP7GRW+BBB7c4ys2exNRWtwO5Tids95qZbb2DXGnnXzpsGTogr89oSHB1
	 xXJPPTJ1QYplt74N+VKZ8eh8dTzZVjYlNrnC1ig2xi08+ZCsIDhmnrIBWJucRXttnp
	 ZqfW/u1RjZ6BrVjLeom2FUwrcXalEY8Sgdq3ramUgoM2ydDBY9a1QZmeuxKVzTmto/
	 1Tn7qHRWaBOoVXhGxep+RaMoy9R2rx8C5j/COZ1vLxNYZ0ZsE60yIUVXZ47+5iNFRh
	 a4WzKKZiuDhjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13CF641D9F;
	Tue,  1 Jul 2025 12:08:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D8CD179
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 12:08:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23E4741D84
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 12:08:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V71hjhdh1TC5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 12:08:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.218.46;
 helo=mail-ej1-f46.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 30C5140751
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30C5140751
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30C5140751
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 12:08:22 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-ad56cbc7b07so558235666b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Jul 2025 05:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751371701; x=1751976501;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uu7W3XDiZgui70eGZhif1Ffkq+ZRdLaUNrPZkM0GOuc=;
 b=LlzRqp2bFD7mErz48sa0DtcAQBf93lQdqYdC47GMg8R/OWP1yQv7xtJxTC/1tbWv0c
 Hqvm/bkJTR34LxtnYxFJhzU0Ic2PxPv4dZmSETo/9O+W9na3xT6XywSEgVukNxehWh5Y
 m37sBElUfLPWEN3OB3sDaCE2MawPFDcOAzkaTDlyYoPvIeLGHZe1YAQTWlMh0GuWelq6
 sBFd7V2vtm0VyjvHIrssZpFp5CXFChi3XSGjpqrju6MN80wfzHdTUhhAcz3TpiSLBH48
 jHaRzlhT5cw3EeCvd+asyAHpeybS0Z3WH6PvMv+lpxG4Tceggs3JfTlvqoyBA6Ybkwxy
 mBGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8f1a0iATRcWJknG+vG8Ehs2wLNdmy1tM8zcrQrJxCTNVXtJOAksRQhGa/UJU6Y18Cr00XbDSP39L/ToDOzyY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzts4J2K7RK7zOGEqkkwfRGbgR7ha9IbHLzF3ouyWqbMKcGt5aR
 vRPtPhzsniEJNvNfBhEpGy9FdrNUaKiaWM890WnaRD9Vzz31Kbe8oafHDxByHSGkbFk3SQ==
X-Gm-Gg: ASbGncuA0MNdwJDyEVbPGkyBUZOs/9FvdZ09/LQoKZeMtAclF0JKhpua6XWbM4QyP4d
 KV9SdBL9TLOaxWA53/YU3N4HvniMG3jce+OCqiqCbGALhMX/yaNB+KPI8rRlIrvZcRcq0+aldmj
 zi0yAASEpfZuJ69NWLgcIPFvB0HBm5QeoTefGgN0L+Phi6oODuW4y+MtZgDW2aNFbCOXUsSgqKy
 /mdTUBXNdrY4aAGTSnTAg8vn7CT7smx8szZaF8bWv/20Y3kD36WkpYOfiIduHOvmjn+xeUpuxE6
 uGxBWH6XvzH9ZdrPXidnnqSgiRQz7RIw7JjDjA2mGykWzPB1KnYZp6bRkzHYsc2xx2MTrzNyEoz
 BvKCPoOWZM9CYAxmbizTd
X-Google-Smtp-Source: AGHT+IF4e2TmwOG2ZmjKtWAaju+IVliRHtHokCbb22yVKF9k9H2L3NAYxCSlyfHyyilitN26EiMzow==
X-Received: by 2002:a17:907:c1c:b0:ade:3eb6:3c6 with SMTP id
 a640c23a62f3a-ae34fd3aeb9mr1658143566b.15.1751371700235; 
 Tue, 01 Jul 2025 05:08:20 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae35363b0e6sm851805166b.20.2025.07.01.05.08.19
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Jul 2025 05:08:19 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id
 ffacd0b85a97d-3a6f2c6715fso3476380f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Jul 2025 05:08:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWPMTXmGPw/h1PZs4lR8qKPJkgLrd32T9ayfYSc9WIdMU1l7+B7g5zhP8KRayylOJO0hjgKnfXmNvIbX+yAgso=@lists.osuosl.org
X-Received: by 2002:a05:6000:2b0d:b0:3a4:f7ae:77ca with SMTP id
 ffacd0b85a97d-3a8f435e024mr10851048f8f.3.1751371698691; Tue, 01 Jul 2025
 05:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com>
 <3023fe74-29c7-4a41-b805-c6b00fb0b3cc@intel.com>
In-Reply-To: <3023fe74-29c7-4a41-b805-c6b00fb0b3cc@intel.com>
From: =?UTF-8?Q?Timo_Ter=C3=A4s?= <timo.teras@iki.fi>
Date: Tue, 1 Jul 2025 15:08:05 +0300
X-Gmail-Original-Message-ID: <CABTJ_OcNs4C8Nvsck9A7QhEjPwzoJRsa-YWCAP3PK5Z1viGAsQ@mail.gmail.com>
X-Gm-Features: Ac12FXxOvCqJ-gVxp7yIxqHx7DCO-LC0OMcrefjgLo-BhZ7U3-s2W9og3ADTGv0
Message-ID: <CABTJ_OcNs4C8Nvsck9A7QhEjPwzoJRsa-YWCAP3PK5Z1viGAsQ@mail.gmail.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: En-Wei WU <en-wei.wu@canonical.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Linux Netdev List <netdev@vger.kernel.org>, 
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev, 
 stable@vger.kernel.org, sashal@kernel.org
Content-Type: multipart/alternative; boundary="000000000000f869580638dcff11"
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [REGRESSION] Packet loss after hot-plugging
 ethernet cable on HP Zbook (Arrow Lake)
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

--000000000000f869580638dcff11
Content-Type: text/plain; charset="UTF-8"

On Tue, 1 Jul 2025, 14.46 Lifshits, Vitaly, <vitaly.lifshits@intel.com>
wrote:

> On 7/1/2025 8:31 AM, En-Wei WU wrote:
> > Hi,
> >
> > I'm seeing a regression on an HP ZBook using the e1000e driver
> > (chipset PCI ID: [8086:57a0]) -- the system can't get an IP address
> > after hot-plugging an Ethernet cable. In this case, the Ethernet cable
> > was unplugged at boot. The network interface eno1 was present but
> > stuck in the DHCP process. Using tcpdump, only TX packets were visible
> > and never got any RX -- indicating a possible packet loss or
> > link-layer issue.
> >
> > This is on the vanilla Linux 6.16-rc4 (commit
> > 62f224733431dbd564c4fe800d4b67a0cf92ed10).
> >
> > Bisect says it's this commit:
> >
> > commit efaaf344bc2917cbfa5997633bc18a05d3aed27f
> > Author: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > Date:   Thu Mar 13 16:05:56 2025 +0200
> >
> >      e1000e: change k1 configuration on MTP and later platforms
> >
> >      Starting from Meteor Lake, the Kumeran interface between the
> integrated
> >      MAC and the I219 PHY works at a different frequency. This causes
> sporadic
> >      MDI errors when accessing the PHY, and in rare circumstances could
> lead
> >      to packet corruption.
> >
> >      To overcome this, introduce minor changes to the Kumeran idle
> >      state (K1) parameters during device initialization. Hardware reset
> >      reverts this configuration, therefore it needs to be applied in a
> few
> >      places.
> >
> >      Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> >      Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> >      Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
> >      Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> >
> >   drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
> >   drivers/net/ethernet/intel/e1000e/ich8lan.c | 80
> >
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
> >   drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++++
> >   3 files changed, 82 insertions(+), 5 deletions(-)
> >
> > Reverting this patch resolves the issue.
> >
> > Based on the symptoms and the bisect result, this issue might be
> > similar to
> https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
> >
> >
> > Affected machine is:
> > HP ZBook X G1i 16 inch Mobile Workstation PC, BIOS 01.02.03 05/27/2025
> > (see end of message for dmesg from boot)
> >
> > CPU model name:
> > Intel(R) Core(TM) Ultra 7 265H (Arrow Lake)
> >
> > ethtool output:
> > driver: e1000e
> > version: 6.16.0-061600rc4-generic
> > firmware-version: 0.1-4
> > expansion-rom-version:
> > bus-info: 0000:00:1f.6
> > supports-statistics: yes
> > supports-test: yes
> > supports-eeprom-access: yes
> > supports-register-dump: yes
> > supports-priv-flags: yes
> >
> > lspci output:
> > 0:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:57a0]
> >          DeviceName: Onboard Ethernet
> >          Subsystem: Hewlett-Packard Company Device [103c:8e1d]
> >          Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> > ParErr- Stepping- SERR- FastB2B- DisINTx+
> >          Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> > <TAbort- <MAbort- >SERR- <PERR- INTx-
> >          Latency: 0
> >          Interrupt: pin D routed to IRQ 162
> >          IOMMU group: 17
> >          Region 0: Memory at 92280000 (32-bit, non-prefetchable)
> [size=128K]
> >          Capabilities: [c8] Power Management version 3
> >                  Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
> > PME(D0+,D1-,D2-,D3hot+,D3cold+)
> >                  Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
> >          Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
> >                  Address: 00000000fee00798  Data: 0000
> >          Kernel driver in use: e1000e
> >          Kernel modules: e1000e
> >
> > The relevant dmesg:
> > <<<cable disconnected>>>
> >
> > [    0.927394] e1000e: Intel(R) PRO/1000 Network Driver
> > [    0.927398] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> > [    0.927933] e1000e 0000:00:1f.6: enabling device (0000 -> 0002)
> > [    0.928249] e1000e 0000:00:1f.6: Interrupt Throttling Rate
> > (ints/sec) set to dynamic conservative mode
> > [    1.155716] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized):
> > registered PHC clock
> > [    1.220694] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width
> > x1) 24:fb:e3:bf:28:c6
> > [    1.220721] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network
> Connection
> > [    1.220903] e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, PBA No:
> FFFFFF-0FF
> > [    1.222632] e1000e 0000:00:1f.6 eno1: renamed from eth0
> >
> > <<<cable connected>>>
> >
> > [  153.932626] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps Half
> > Duplex, Flow Control: None
> > [  153.934527] e1000e 0000:00:1f.6 eno1: NIC Link is Down
> > [  157.622238] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps Full
> > Duplex, Flow Control: None
> >
> > No error message seen after hot-plugging the Ethernet cable.
> >
>
> Thank your for the report.
>
> We did not encounter this issue during our patch testing. However, we
> will attempt to reproduce it in our lab.
>
> One detail that caught my attention is that flow control is disabled in
> both scenarios. Could you please check whether the issue persists when
> flow control is enabled? This might require connecting to a link partner
> that supports flow control.
>

I wrote the other similar report from Dell Pro referenced earlier.
Additional testing on the Dell provided the following insight:

- A fast cable out/in will work. The cable should be disconnected for 10-15
seconds for the issue to trigger.

- Using ethtool -r to renegotiate the link will make things work in the
defunct state.

And yes, my issue seems to be exactly the same.

Thanks,
Timo

>

--000000000000f869580638dcff11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><div class=3D"gmail_quote gmail_quote_container"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 1 Jul 2025, 14.46 Lifshits, =
Vitaly, &lt;<a href=3D"mailto:vitaly.lifshits@intel.com">vitaly.lifshits@in=
tel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 7/1/2025 =
8:31 AM, En-Wei WU wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I&#39;m seeing a regression on an HP ZBook using the e1000e driver<br>
&gt; (chipset PCI ID: [8086:57a0]) -- the system can&#39;t get an IP addres=
s<br>
&gt; after hot-plugging an Ethernet cable. In this case, the Ethernet cable=
<br>
&gt; was unplugged at boot. The network interface eno1 was present but<br>
&gt; stuck in the DHCP process. Using tcpdump, only TX packets were visible=
<br>
&gt; and never got any RX -- indicating a possible packet loss or<br>
&gt; link-layer issue.<br>
&gt; <br>
&gt; This is on the vanilla Linux 6.16-rc4 (commit<br>
&gt; 62f224733431dbd564c4fe800d4b67a0cf92ed10).<br>
&gt; <br>
&gt; Bisect says it&#39;s this commit:<br>
&gt; <br>
&gt; commit efaaf344bc2917cbfa5997633bc18a05d3aed27f<br>
&gt; Author: Vitaly Lifshits &lt;<a href=3D"mailto:vitaly.lifshits@intel.co=
m" target=3D"_blank" rel=3D"noreferrer">vitaly.lifshits@intel.com</a>&gt;<b=
r>
&gt; Date:=C2=A0 =C2=A0Thu Mar 13 16:05:56 2025 +0200<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 e1000e: change k1 configuration on MTP and later p=
latforms<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Starting from Meteor Lake, the Kumeran interface b=
etween the integrated<br>
&gt;=C2=A0 =C2=A0 =C2=A0 MAC and the I219 PHY works at a different frequenc=
y. This causes sporadic<br>
&gt;=C2=A0 =C2=A0 =C2=A0 MDI errors when accessing the PHY, and in rare cir=
cumstances could lead<br>
&gt;=C2=A0 =C2=A0 =C2=A0 to packet corruption.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 To overcome this, introduce minor changes to the K=
umeran idle<br>
&gt;=C2=A0 =C2=A0 =C2=A0 state (K1) parameters during device initialization=
. Hardware reset<br>
&gt;=C2=A0 =C2=A0 =C2=A0 reverts this configuration, therefore it needs to =
be applied in a few<br>
&gt;=C2=A0 =C2=A0 =C2=A0 places.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Fixes: cc23f4f0b6b9 (&quot;e1000e: Add support for=
 Meteor Lake&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Signed-off-by: Vitaly Lifshits &lt;<a href=3D"mail=
to:vitaly.lifshits@intel.com" target=3D"_blank" rel=3D"noreferrer">vitaly.l=
ifshits@intel.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Tested-by: Avigail Dahan &lt;<a href=3D"mailto:avi=
gailx.dahan@intel.com" target=3D"_blank" rel=3D"noreferrer">avigailx.dahan@=
intel.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Signed-off-by: Tony Nguyen &lt;<a href=3D"mailto:a=
nthony.l.nguyen@intel.com" target=3D"_blank" rel=3D"noreferrer">anthony.l.n=
guyen@intel.com</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/e1000e/defines.h |=C2=A0 3 +++<=
br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/e1000e/ich8lan.c | 80<br>
&gt; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-=
----<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/e1000e/ich8lan.h |=C2=A0 4 ++++=
<br>
&gt;=C2=A0 =C2=A03 files changed, 82 insertions(+), 5 deletions(-)<br>
&gt; <br>
&gt; Reverting this patch resolves the issue.<br>
&gt; <br>
&gt; Based on the symptoms and the bisect result, this issue might be<br>
&gt; similar to <a href=3D"https://lore.kernel.org/intel-wired-lan/20250626=
153544.1853d106@onyx.my.domain/" rel=3D"noreferrer noreferrer" target=3D"_b=
lank">https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.=
my.domain/</a><br>
&gt; <br>
&gt; <br>
&gt; Affected machine is:<br>
&gt; HP ZBook X G1i 16 inch Mobile Workstation PC, BIOS 01.02.03 05/27/2025=
<br>
&gt; (see end of message for dmesg from boot)<br>
&gt; <br>
&gt; CPU model name:<br>
&gt; Intel(R) Core(TM) Ultra 7 265H (Arrow Lake)<br>
&gt; <br>
&gt; ethtool output:<br>
&gt; driver: e1000e<br>
&gt; version: 6.16.0-061600rc4-generic<br>
&gt; firmware-version: 0.1-4<br>
&gt; expansion-rom-version:<br>
&gt; bus-info: 0000:00:1f.6<br>
&gt; supports-statistics: yes<br>
&gt; supports-test: yes<br>
&gt; supports-eeprom-access: yes<br>
&gt; supports-register-dump: yes<br>
&gt; supports-priv-flags: yes<br>
&gt; <br>
&gt; lspci output:<br>
&gt; 0:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:57a0=
]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DeviceName: Onboard Ethernet<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Subsystem: Hewlett-Packard Company D=
evice [103c:8e1d]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Control: I/O- Mem+ BusMaster+ SpecCy=
cle- MemWINV- VGASnoop-<br>
&gt; ParErr- Stepping- SERR- FastB2B- DisINTx+<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Status: Cap+ 66MHz- UDF- FastB2B- Pa=
rErr- DEVSEL=3Dfast &gt;TAbort-<br>
&gt; &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Latency: 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Interrupt: pin D routed to IRQ 162<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 IOMMU group: 17<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Region 0: Memory at 92280000 (32-bit=
, non-prefetchable) [size=3D128K]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Capabilities: [c8] Power Management =
version 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Flags: P=
MEClk- DSI+ D1- D2- AuxCurrent=3D0mA<br>
&gt; PME(D0+,D1-,D2-,D3hot+,D3cold+)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Status: =
D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D1 PME-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Capabilities: [d0] MSI: Enable+ Coun=
t=3D1/1 Maskable- 64bit+<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Address:=
 00000000fee00798=C2=A0 Data: 0000<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Kernel driver in use: e1000e<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Kernel modules: e1000e<br>
&gt; <br>
&gt; The relevant dmesg:<br>
&gt; &lt;&lt;&lt;cable disconnected&gt;&gt;&gt;<br>
&gt; <br>
&gt; [=C2=A0 =C2=A0 0.927394] e1000e: Intel(R) PRO/1000 Network Driver<br>
&gt; [=C2=A0 =C2=A0 0.927398] e1000e: Copyright(c) 1999 - 2015 Intel Corpor=
ation.<br>
&gt; [=C2=A0 =C2=A0 0.927933] e1000e 0000:00:1f.6: enabling device (0000 -&=
gt; 0002)<br>
&gt; [=C2=A0 =C2=A0 0.928249] e1000e 0000:00:1f.6: Interrupt Throttling Rat=
e<br>
&gt; (ints/sec) set to dynamic conservative mode<br>
&gt; [=C2=A0 =C2=A0 1.155716] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitializ=
ed):<br>
&gt; registered PHC clock<br>
&gt; [=C2=A0 =C2=A0 1.220694] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/=
s:Width<br>
&gt; x1) 24:fb:e3:bf:28:c6<br>
&gt; [=C2=A0 =C2=A0 1.220721] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 N=
etwork Connection<br>
&gt; [=C2=A0 =C2=A0 1.220903] e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, P=
BA No: FFFFFF-0FF<br>
&gt; [=C2=A0 =C2=A0 1.222632] e1000e 0000:00:1f.6 eno1: renamed from eth0<b=
r>
&gt; <br>
&gt; &lt;&lt;&lt;cable connected&gt;&gt;&gt;<br>
&gt; <br>
&gt; [=C2=A0 153.932626] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps=
 Half<br>
&gt; Duplex, Flow Control: None<br>
&gt; [=C2=A0 153.934527] e1000e 0000:00:1f.6 eno1: NIC Link is Down<br>
&gt; [=C2=A0 157.622238] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps=
 Full<br>
&gt; Duplex, Flow Control: None<br>
&gt; <br>
&gt; No error message seen after hot-plugging the Ethernet cable.<br>
&gt; <br>
<br>
Thank your for the report.<br>
<br>
We did not encounter this issue during our patch testing. However, we <br>
will attempt to reproduce it in our lab.<br>
<br>
One detail that caught my attention is that flow control is disabled in <br=
>
both scenarios. Could you please check whether the issue persists when <br>
flow control is enabled? This might require connecting to a link partner <b=
r>
that supports flow control.<br></blockquote></div></div><div dir=3D"auto"><=
br></div><div dir=3D"auto">I wrote the other similar report from Dell Pro r=
eferenced earlier. Additional testing on the Dell provided the following in=
sight:</div><div dir=3D"auto"><br></div><div dir=3D"auto">- A fast cable ou=
t/in will work. The cable should be disconnected for 10-15 seconds for the =
issue to trigger.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Usin=
g ethtool -r to renegotiate the link will make things work in the defunct s=
tate.</div><div dir=3D"auto"><br></div><div dir=3D"auto">And yes, my issue =
seems to be exactly the same.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Thanks,</div><div dir=3D"auto">Timo</div><div dir=3D"auto"><div class=
=3D"gmail_quote gmail_quote_container"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></blo=
ckquote></div></div></div>

--000000000000f869580638dcff11--
