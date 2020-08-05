Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED07023C2A8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Aug 2020 02:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DC6587701;
	Wed,  5 Aug 2020 00:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ObMb79isz+HZ; Wed,  5 Aug 2020 00:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E275787711;
	Wed,  5 Aug 2020 00:43:08 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DB061BF9AD
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 00:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D5A7204FE
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 00:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mpP2k6+tw4sO for <intel-wired-lan@osuosl.org>;
 Wed,  5 Aug 2020 00:43:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 4C30B204EE
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 00:43:06 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id e11so7833760otk.4
 for <intel-wired-lan@osuosl.org>; Tue, 04 Aug 2020 17:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=jiq/FRUMitwB0sPT2GeScwBBpz7JOy5N/cjfMqySzkM=;
 b=m9mn5BEmM79qfmUIP3ZsAkFQyAPG6Jfq88/CTlMBt8Htj+2ZAX1VY77cuq0BQyPWy4
 z/fj+iKoIBXmPxrFapgJkf+XC5kBorzJmOqhc/cGuTb/FM1vCSkUX76+O1+7cnyAAkHk
 nnsR3X+lSe2L8zIKVoXg536zfPWgz8hMq5x+fdSid0zbSXfa3g4jt7/l5DtMTblNOj/I
 RpHGmY+cEdqXdhWm33qV4ue4NCuKwv1joiwdJwSrBG0dxkgGtqNJIAZCv6Hw5FA6HYHE
 loIHbd0ODDrf3cOJyGXfIq0daE5XpkGmx379XCqOBWOrZgZiO5/5mjy9cc7t4kXrZwRL
 W9FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=jiq/FRUMitwB0sPT2GeScwBBpz7JOy5N/cjfMqySzkM=;
 b=mgkh1wALMADEICewl137IKEzMdmH6fqqvWdejh0++89Gh1bNnq9tTfdBwlxwYXaS0F
 TPfIsOAQmiHLnZcstpeCp5gaV1nlON59NT31JnRzJVwKRZd2UYLJyEGhXprcr5ZteaJo
 2jk7Y/MUIXEriTLn8BuSuaCDur9OpN8lRnYZ2o/X28zbr0Qr/zgPTnk34FsOcAxoAmr0
 z4KvV4V6VOPF6sxMRCweOloxsw0NUxmBqjNlQDp2WGBJ2lZti1RM3Af5m/MoDe5RMGdO
 KJEPkzLEOgs17uxulzCSmOD0Bdty/hMC0zdvkgTxp+QZtCGCVtE+S1VQzmjLlYteuFDF
 KKoA==
X-Gm-Message-State: AOAM533zfDr0aykmTHy9A6RFH4ep+4N0OPoiVD/4N8Mqb5v8DG20w4au
 2clLZaFgv/4HMPrwYkmxTsnG2ruvchTG96TqepNbIx05
X-Google-Smtp-Source: ABdhPJxAAnIQDXP4z5BEwij15Z+c1TV9r4feL/m0mwe4YUwvzajjfAE/SFPVM+wpF13E3J/axlq9kYeWr4c6v6nqnm8=
X-Received: by 2002:a9d:5d2:: with SMTP id 76mr605572otd.55.1596588185339;
 Tue, 04 Aug 2020 17:43:05 -0700 (PDT)
MIME-Version: 1.0
From: Yaroslav Isakov <yaroslav.isakov@gmail.com>
Date: Wed, 5 Aug 2020 02:42:54 +0200
Message-ID: <CADS+iDVjpGVQifg+RtNEQKJw4ePe6+ViUpto8U1v0Xv1HwN2-Q@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Subject: [Intel-wired-lan] Deep package C-states cannot be reached on e1000e
 after resume from suspend
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
Cc: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello! I've found that my laptop (T460s) cannot reach Package C-states
deeper than PC2. After some research, I've found that unplugging cable
from my laptop and plugging it back fixes that, until the laptop is
suspended. After resume, this problem returns, but unplugging and
plugging fix it again.
I'm using kernel 5.8.0, but I've seen the same behavior on previous
kernel as well.

Here is a lspci -n -vv excerpt:
00:1f.6 0200: 8086:156f (rev 21)
    Subsystem: 17aa:2233
    Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 0
    Interrupt: pin A routed to IRQ 129
    Region 0: Memory at e1100000 (32-bit, non-prefetchable) [size=128K]
    Capabilities: [c8] Power Management version 3
        Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
        Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
    Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
        Address: 00000000fee002f8  Data: 0000
    Capabilities: [e0] PCI Advanced Features
        AFCap: TP+ FLR+
        AFCtrl: FLR-
        AFStatus: TP-
    Kernel driver in use: e1000e
    Kernel modules: e1000e

/sys/bus/pci/devices/0000:00:1f.6/power/control = on (I've changed it
to auto, but no change in behavoir)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
