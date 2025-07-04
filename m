Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCE3AF88ED
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 09:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C154582038;
	Fri,  4 Jul 2025 07:15:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iu-xGmOXevZj; Fri,  4 Jul 2025 07:15:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 575728203C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751613326;
	bh=eOHKenlUn0WrzTitWPsxik4RxUTJ+cwEPC53JoDl8e8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nUjn9ohu/b7oLmSY7eXS0UVTdx3MU54Zq6pMIG9d+Z9+YZ5saMhj7RH8LpGQqtpxz
	 2+p+F46Pt5in6oJxvjfJCHsolp73l1gwmjyDlG6iKA/zdjOrVuTjpiFoj+S28iieDb
	 xlRKjLYEPkyeiw6oGVUFoEbDp5COS5cA/bBSgZbMYyR3zTx0Fdo9rgMCmVerUffUTp
	 YfZGWNTru6l5GrKubi3u0OwupSVs9eJHA9L21VWLomffGQ12pQO0fBKwi2vyO4nX1j
	 oh+yeiBbrSehLY+UoG1ah5asPLioJ2PIT1PY4pCJYTj5aqxFA2jv6KuDILsNYOrAJ/
	 LEYclBaPG01Gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 575728203C;
	Fri,  4 Jul 2025 07:15:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BDF277AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 07:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF85D60758
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 07:15:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iaNosBOO_rSi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 07:15:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DE4360674
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DE4360674
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DE4360674
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 07:15:22 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CB1CB3F923
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 07:15:17 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3b39cc43f15so325439f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Jul 2025 00:15:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751613315; x=1752218115;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eOHKenlUn0WrzTitWPsxik4RxUTJ+cwEPC53JoDl8e8=;
 b=KrY4/TomjAB5XKmz96ff9z3woTKJpTkCG9R4WimhqnO8wPizvoWTTOJHClbfNoGXNc
 /iJgPbAIy3tofywgEsZq60QHKoibYQvWZLt0pdUnfwtZDWDo/HNM89AcCBWBWLhX09hs
 rKeM7NMDmWyfLlzIUhEZUh1oo66zF3yYxLoczoPId+baEklo4jF5HKpU9EmU9ya8UMqE
 XLUwKqnLxG7e7W1WduVyEdbHUyFlLRsQ+H+C0Mn/4iV6V55+shlokAGg0rnec3p2dy5t
 AM2G0PvcELQvpo8SVjIgLLElyjndRxZ98HvgoAORhvDy3G66k68/H87KHrnW1ZFL2FLv
 aVEQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXMbGDb18n0S5QtS+WAgM29LKNec6taD7LD5mOeNB9pLQqOyjAQtkmPx/73HwMnKXbn3yEmagxBG1IXi7huSSA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxLzE/R8ik6qjeQIYP4HKKBcb2YlB0WxAEwpEzdGrzlWBLfY+gz
 39s7zIM/HTzujzIQKbsaV2HjRCv1kXdZ9jQNwtk3yzi6+WyT5wFVOrH839T8BCgoYLOWyVWftjz
 qTk2+LgzB4VjBjsZhKfYH8AOAo6AL3SdtteDjShBnC6RUSYQEY4Ub4zbI+b+ErQdtf7rIPF2zPK
 ZUCDKOl0UHMQ/4umqTe/oMstkcIFVa6RAnY1vGUaKSUq1F3NpI0x6Njm221Yi8jA==
X-Gm-Gg: ASbGncsbveLl15RrQaOeER5OoFk+D+ZDTndaCwiVIV8nWbfNR3TwNiA7GmBceP6y3VQ
 +443EvjPoaqirL2x3r1JVTTQQtr4Dscg+DNERSOkF/MQPPPm1oUQKE8bMZpngayBe3MrdTbv9Gy
 /5pmPi
X-Received: by 2002:a05:6000:2c0e:b0:3b3:9cb4:a2fb with SMTP id
 ffacd0b85a97d-3b496607ba4mr1101184f8f.33.1751613315038; 
 Fri, 04 Jul 2025 00:15:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEs2loDZ8Ahhlwp61+khQUNQNmUajyh8hMqo5bymejd7TY7m60S3yJ4iCiWJA6UU/KjjSwjuFppfJUbhZc5mRE=
X-Received: by 2002:a05:6000:2c0e:b0:3b3:9cb4:a2fb with SMTP id
 ffacd0b85a97d-3b496607ba4mr1101108f8f.33.1751613314079; Fri, 04 Jul 2025
 00:15:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com>
 <3023fe74-29c7-4a41-b805-c6b00fb0b3cc@intel.com>
 <20250701154423.1917c3de@onyx.my.domain>
In-Reply-To: <20250701154423.1917c3de@onyx.my.domain>
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Fri, 4 Jul 2025 15:15:02 +0800
X-Gm-Features: Ac12FXyj1-ZyBE3D1qBUiJnE2eIIgUp4g0jGX8z1J7TRdyPJWcFakElyE77oy6Y
Message-ID: <CAMqyJG1bt_p9trGrtk-_xqfEF954TrSKoV6QokuadJK8ga80xA@mail.gmail.com>
To: Timo Teras <timo.teras@iki.fi>
Cc: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev, 
 stable@vger.kernel.org, sashal@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1751613317;
 bh=eOHKenlUn0WrzTitWPsxik4RxUTJ+cwEPC53JoDl8e8=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=k0d2Su756ZZWygzdi1eyrA6LEl9naSq5CpdW2S17BSiObLuq6X1LBNl8aBnTqF/Tk
 oumy/w4cW7hBbHbx0+biaOxdcnXrG8deUOlXEAPG7LoGLwVC7Y4BJ1qkW3cAwM1Anw
 y+Meh4XwAnJkWaqHl6zbYM6/admUeAkn4cQ1sz6UYWBrynk7P5AWrtc0LLOIGYbeOo
 OdmOpHbI8f9JVeMuvVbqRElDKTG0h4yTMmBmYjU4f/D1q0CMFqZLHsH0JAmX863F7z
 UIF4KV0Z9uPc8PxvKjAb4eHQgWAAZELUTC7MgD5wPNxz/JhzS7B8Brsd9ZzhSNfAZl
 mNHEuCbhgEDnQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=k0d2Su75
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

Thank you all for your quick response. Sorry for the delay.

I ran two independent tests:

1. The same experiment as Timo said: When the packet-loss problem
occurs (by hot-plugging the Ethernet cable), running the following
command fixes the issue
$ ethtool -r # trigger a re-negotiation

2. As Vitaly suggests: By enabling flow control, we no longer observe
any packet loss.
e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps Full Duplex, Flow
Control: Rx/Tx


From the power management perspective, I can confirm that the Ethernet
controller stays D0 at all times. But I=E2=80=99m not sure if it=E2=80=99s =
the case
for PHY, as I=E2=80=99m not familiar with how to check the power state of a
PHY.

Thanks,
En-Wei.

On Tue, 1 Jul 2025 at 20:44, Timo Teras <timo.teras@iki.fi> wrote:
>
> On Tue, 1 Jul 2025 14:46:18 +0300
> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
>
> > On 7/1/2025 8:31 AM, En-Wei WU wrote:
> > > Hi,
> > >
> > > I'm seeing a regression on an HP ZBook using the e1000e driver
> > > (chipset PCI ID: [8086:57a0]) -- the system can't get an IP address
> > > after hot-plugging an Ethernet cable. In this case, the Ethernet
> > > cable was unplugged at boot. The network interface eno1 was present
> > > but stuck in the DHCP process. Using tcpdump, only TX packets were
> > > visible and never got any RX -- indicating a possible packet loss or
> > > link-layer issue.
> > >
> > > This is on the vanilla Linux 6.16-rc4 (commit
> > > 62f224733431dbd564c4fe800d4b67a0cf92ed10).
> > >
> > > Bisect says it's this commit:
> > >
> > > commit efaaf344bc2917cbfa5997633bc18a05d3aed27f
> > > Author: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > > Date:   Thu Mar 13 16:05:56 2025 +0200
> > >
> > >      e1000e: change k1 configuration on MTP and later platforms
> > >
> > >      Starting from Meteor Lake, the Kumeran interface between the
> > > integrated MAC and the I219 PHY works at a different frequency.
> > > This causes sporadic MDI errors when accessing the PHY, and in rare
> > > circumstances could lead to packet corruption.
> > >
> > >      To overcome this, introduce minor changes to the Kumeran idle
> > >      state (K1) parameters during device initialization. Hardware
> > > reset reverts this configuration, therefore it needs to be applied
> > > in a few places.
> > >
> > >      Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> > >      Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > >      Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
> > >      Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > >
> > >   drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
> > >   drivers/net/ethernet/intel/e1000e/ich8lan.c | 80
> > > +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
-----
> > >   drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++++
> > >   3 files changed, 82 insertions(+), 5 deletions(-)
> > >
> > > Reverting this patch resolves the issue.
> > >
> > > Based on the symptoms and the bisect result, this issue might be
> > > similar to
> > > https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.=
my.domain/
> > >
> > >
> > > Affected machine is:
> > > HP ZBook X G1i 16 inch Mobile Workstation PC, BIOS 01.02.03
> > > 05/27/2025 (see end of message for dmesg from boot)
> > >
> > > CPU model name:
> > > Intel(R) Core(TM) Ultra 7 265H (Arrow Lake)
> > >
> > > ethtool output:
> > > driver: e1000e
> > > version: 6.16.0-061600rc4-generic
> > > firmware-version: 0.1-4
> > > expansion-rom-version:
> > > bus-info: 0000:00:1f.6
> > > supports-statistics: yes
> > > supports-test: yes
> > > supports-eeprom-access: yes
> > > supports-register-dump: yes
> > > supports-priv-flags: yes
> > >
> > > lspci output:
> > > 0:1f.6 Ethernet controller [0200]: Intel Corporation Device
> > > [8086:57a0] DeviceName: Onboard Ethernet
> > >          Subsystem: Hewlett-Packard Company Device [103c:8e1d]
> > >          Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> > > ParErr- Stepping- SERR- FastB2B- DisINTx+
> > >          Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast
> > > >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
> > >          Latency: 0
> > >          Interrupt: pin D routed to IRQ 162
> > >          IOMMU group: 17
> > >          Region 0: Memory at 92280000 (32-bit, non-prefetchable)
> > > [size=3D128K] Capabilities: [c8] Power Management version 3
> > >                  Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA
> > > PME(D0+,D1-,D2-,D3hot+,D3cold+)
> > >                  Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D=
1
> > > PME- Capabilities: [d0] MSI: Enable+ Count=3D1/1 Maskable- 64bit+
> > >                  Address: 00000000fee00798  Data: 0000
> > >          Kernel driver in use: e1000e
> > >          Kernel modules: e1000e
> > >
> > > The relevant dmesg:
> > > <<<cable disconnected>>>
> > >
> > > [    0.927394] e1000e: Intel(R) PRO/1000 Network Driver
> > > [    0.927398] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> > > [    0.927933] e1000e 0000:00:1f.6: enabling device (0000 -> 0002)
> > > [    0.928249] e1000e 0000:00:1f.6: Interrupt Throttling Rate
> > > (ints/sec) set to dynamic conservative mode
> > > [    1.155716] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized):
> > > registered PHC clock
> > > [    1.220694] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width
> > > x1) 24:fb:e3:bf:28:c6
> > > [    1.220721] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network
> > > Connection [    1.220903] e1000e 0000:00:1f.6 eth0: MAC: 16, PHY:
> > > 12, PBA No: FFFFFF-0FF [    1.222632] e1000e 0000:00:1f.6 eno1:
> > > renamed from eth0
> > >
> > > <<<cable connected>>>
> > >
> > > [  153.932626] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps
> > > Half Duplex, Flow Control: None
> > > [  153.934527] e1000e 0000:00:1f.6 eno1: NIC Link is Down
> > > [  157.622238] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps
> > > Full Duplex, Flow Control: None
> > >
> > > No error message seen after hot-plugging the Ethernet cable.
> > >
> >
> > Thank your for the report.
> >
> > We did not encounter this issue during our patch testing. However, we
> > will attempt to reproduce it in our lab.
> >
> > One detail that caught my attention is that flow control is disabled
> > in both scenarios. Could you please check whether the issue persists
> > when flow control is enabled? This might require connecting to a link
> > partner that supports flow control.
>
> I wrote the other similar report from Dell Pro referenced earlier.
> Additional testing on the Dell provided the following insight:
>
> - A fast cable out/in will work. The cable should be disconnected
>   for 10-15 seconds for the issue to trigger.
>
> - Sometimes the first spurious link up is 1000 mbps/half and sometimes
>   10 mbps/half.
>
> - Using ethtool -r to renegotiate the link will make things work in
>   the defunct state.
>
> And yes, my issue seems to be exactly the same.
>
> Thanks,
> Timo
