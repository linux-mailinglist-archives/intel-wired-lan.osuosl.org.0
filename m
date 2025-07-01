Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFCFAEEDEE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 07:47:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 304C9616D4;
	Tue,  1 Jul 2025 05:47:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gvORanUZHP3z; Tue,  1 Jul 2025 05:47:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E61C461B62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751348828;
	bh=Th6tfyDO394CCH7+jhRsGZjGv3kV4BdFVr82r26bkjE=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cBv+peXopzUvDnYTLT/mgBSOQfh1NvLRmdBelyPnhbTNya0yy0ijDCo5eQ4GrP3hu
	 HelG778Zb5QIjEI6GCm32S2Tdk5kllp5Hd5gwuURQFz3yRxCRpkGUmru+FI+vdTNkT
	 rZXRsLvy97Aqu7Q/sGG6+Lr+BO2DzIAylLXsH+F3BkZPw7IKjd/OQJaHBGpKh2nQ2G
	 1PZUxmVuuo6ARCwsWuIAaAoAUbI2kTWuWezdxjarCoYDola02ycUGfbRPJcijVie23
	 De03RGV6VKWz5cbzlEm40ESlEkuFemu7BXOiyFlz22uIyO4pn8U4X8+rJtPaDZq72x
	 FZDtstnifleUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E61C461B62;
	Tue,  1 Jul 2025 05:47:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C7068179
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 05:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C469342359
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 05:39:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vLwL7ro4wUHa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 05:39:48 +0000 (UTC)
X-Greylist: delayed 455 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 01 Jul 2025 05:39:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AEC0142350
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEC0142350
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AEC0142350
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 05:39:47 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ED0773F6A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 05:32:09 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3a4f3796779so2773522f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 22:32:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751347929; x=1751952729;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Th6tfyDO394CCH7+jhRsGZjGv3kV4BdFVr82r26bkjE=;
 b=WKzV2Iv7Wlhn15ba5qBQ1bjQjb18jiSWUF0Xq3p2A5GED1Kmm/93/YF60JtZWFpay5
 C5dlzkc6MfDS2xAI92l9ipMgUnRH5zKofYWlkgfId9z7OKHpGCo54mdtQLZ+lXl6aR2p
 82rmVOKu21zcC5XZhgkSr93JfTLhrlKBN9egF8CkWIMIekLIejNzrF8jUE/T8Gh6jbak
 EH4ws5YVwrNwhKi3CTPRXGOiwB2CWbbHd0Y3IYslOI0Hw6wce+Twjpxwvu0ca9oXiBLF
 W6lyJgfx0jrRP3LJEP6a08DWmCLWwYzSftqvChy2O6vJ8K9/7VkqtJTMG83V06pGwLRo
 rROA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdHPyBSw8JDMD9X0y/HhfbGTHgBBbLqVM6rab+8MV2KEnbmblBC1NID0aC2RBOmpl9x7TCeM8/SKYw3n609NQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwvnTkNMbscO42zz1Rbggb9l3tVHJzYiPgRcUhTFskWvXoLR5o7
 5a1nD5+H7C+ftkC/X2tgrB6IIeVWdXE25lfvOKZfFitojlzmPYoO0AiWXi2XMr7Dok262WqswZB
 gx3jH0cEDnqW8WzN+IaWSOmkl14gDZk3rB/hL0OG2c3UsdXOPZWG54tYDZ9DpX588+HCij9NkJf
 HZzqVVO6IdgLy/aDqt5sVe65OblO6RYLbBvTrjqgHL/VhXcnwyuq0xHmqvUZU+Ag==
X-Gm-Gg: ASbGnctyfgdNEvWQgoqPpe7kyiaxE4lfAcbmXOnMv5noo/w6lNGzKdLPGhICL86lgJH
 mNcqYGs1bg6b2tCi74m7JpU1ZLx4uf90OsX28q0UZEZos1GZm5EYgrSalgKyoLqH9FW67tJtdqs
 e8SJgF
X-Received: by 2002:adf:e68d:0:b0:3a4:fc3f:b7fd with SMTP id
 ffacd0b85a97d-3a90d69c1ebmr9798645f8f.19.1751347929280; 
 Mon, 30 Jun 2025 22:32:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQS3XawVxrrKMLZsnhzsHuYQTttD0IeJ90NQXWb6KtNxi3msiWFQZXCQ9dWC8kYKoB37mb6mkCcsSe0DFPtYM=
X-Received: by 2002:adf:e68d:0:b0:3a4:fc3f:b7fd with SMTP id
 ffacd0b85a97d-3a90d69c1ebmr9798628f8f.19.1751347928826; Mon, 30 Jun 2025
 22:32:08 -0700 (PDT)
MIME-Version: 1.0
From: En-Wei WU <en-wei.wu@canonical.com>
Date: Tue, 1 Jul 2025 13:31:57 +0800
X-Gm-Features: Ac12FXzfag1g2nwhulkJ_FDCmz-gasu-2kJw2gi7_6NbhQZX4c5tIUv2dN6Kb-g
Message-ID: <CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Cc: regressions@lists.linux.dev, stable@vger.kernel.org, sashal@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1751347929;
 bh=Th6tfyDO394CCH7+jhRsGZjGv3kV4BdFVr82r26bkjE=;
 h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type;
 b=gaKgX+W+VexCsXAJxsS4XeD9Tx0vZCGaRS578fQLBraubCjqSMKmmx7gr/RmXQKTJ
 ruZvEBAPi02fKk2mwkYbezafpAK0Ra4x8AdxAwzH5thAQfCPJYvuf6OBXVUxsP1dOs
 j6zLRGFjnP8eUhBzubp3nhG9H+ADrffJE+uTpwzQmxOlgIbqjaLKuMCU7/F/UzIYWR
 P227V/wZkMmLQXXXKN0PUBjqKjrB+g5CDIRcuIzjP8csAhtYSjc1/EFSHhyHex5DqU
 D5N0H23HfA0ZqE5aW/krq6nBsbQC2Lj7DVJ6KdR2x8pQM8nVBLuFvEX01IDAlSgbS2
 /jw4cee3I8xMA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=gaKgX+W+
Subject: [Intel-wired-lan] [REGRESSION] Packet loss after hot-plugging
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

Hi,

I'm seeing a regression on an HP ZBook using the e1000e driver
(chipset PCI ID: [8086:57a0]) -- the system can't get an IP address
after hot-plugging an Ethernet cable. In this case, the Ethernet cable
was unplugged at boot. The network interface eno1 was present but
stuck in the DHCP process. Using tcpdump, only TX packets were visible
and never got any RX -- indicating a possible packet loss or
link-layer issue.

This is on the vanilla Linux 6.16-rc4 (commit
62f224733431dbd564c4fe800d4b67a0cf92ed10).

Bisect says it's this commit:

commit efaaf344bc2917cbfa5997633bc18a05d3aed27f
Author: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date:   Thu Mar 13 16:05:56 2025 +0200

    e1000e: change k1 configuration on MTP and later platforms

    Starting from Meteor Lake, the Kumeran interface between the integrated
    MAC and the I219 PHY works at a different frequency. This causes sporadic
    MDI errors when accessing the PHY, and in rare circumstances could lead
    to packet corruption.

    To overcome this, introduce minor changes to the Kumeran idle
    state (K1) parameters during device initialization. Hardware reset
    reverts this configuration, therefore it needs to be applied in a few
    places.

    Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
    Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
    Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
    Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>

 drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 80
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
 drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++++
 3 files changed, 82 insertions(+), 5 deletions(-)

Reverting this patch resolves the issue.

Based on the symptoms and the bisect result, this issue might be
similar to https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/


Affected machine is:
HP ZBook X G1i 16 inch Mobile Workstation PC, BIOS 01.02.03 05/27/2025
(see end of message for dmesg from boot)

CPU model name:
Intel(R) Core(TM) Ultra 7 265H (Arrow Lake)

ethtool output:
driver: e1000e
version: 6.16.0-061600rc4-generic
firmware-version: 0.1-4
expansion-rom-version:
bus-info: 0000:00:1f.6
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

lspci output:
0:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:57a0]
        DeviceName: Onboard Ethernet
        Subsystem: Hewlett-Packard Company Device [103c:8e1d]
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
        Interrupt: pin D routed to IRQ 162
        IOMMU group: 17
        Region 0: Memory at 92280000 (32-bit, non-prefetchable) [size=128K]
        Capabilities: [c8] Power Management version 3
                Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
PME(D0+,D1-,D2-,D3hot+,D3cold+)
                Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
        Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
                Address: 00000000fee00798  Data: 0000
        Kernel driver in use: e1000e
        Kernel modules: e1000e

The relevant dmesg:
<<<cable disconnected>>>

[    0.927394] e1000e: Intel(R) PRO/1000 Network Driver
[    0.927398] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    0.927933] e1000e 0000:00:1f.6: enabling device (0000 -> 0002)
[    0.928249] e1000e 0000:00:1f.6: Interrupt Throttling Rate
(ints/sec) set to dynamic conservative mode
[    1.155716] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized):
registered PHC clock
[    1.220694] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width
x1) 24:fb:e3:bf:28:c6
[    1.220721] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network Connection
[    1.220903] e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, PBA No: FFFFFF-0FF
[    1.222632] e1000e 0000:00:1f.6 eno1: renamed from eth0

<<<cable connected>>>

[  153.932626] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps Half
Duplex, Flow Control: None
[  153.934527] e1000e 0000:00:1f.6 eno1: NIC Link is Down
[  157.622238] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps Full
Duplex, Flow Control: None

No error message seen after hot-plugging the Ethernet cable.

-- 
Best Regards,
En-Wei.
