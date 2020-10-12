Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E055228C15E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 21:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A28AD852E9;
	Mon, 12 Oct 2020 19:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c0LdTrbMZ3Qc; Mon, 12 Oct 2020 19:20:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18321854CC;
	Mon, 12 Oct 2020 19:20:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D7D41BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 19:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F32C207B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 19:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TNgSiFZO1UgX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 19:20:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E7712043A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 19:20:49 +0000 (UTC)
Received: by mail-qv1-f45.google.com with SMTP id b10so6650695qvf.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 12:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=TqL6gdVr7qCHO8Hdt0xG8Ty4LTjFKKq0V/Cn256+UdE=;
 b=Y5IuuUyj6xyL7T77bbYb5OmSJvTHvaZ/FZ5hFUtfP3oO95EOTcVB2ajo+z/fP+p8DG
 MK60E0OLj2B+6BI1UbLKsRO2UcVCEsir/erNjJ1W2spuEUrcBpmkp94EDawnApmn8A+a
 fO7BT/Z1Bwoo2838njzVj7DFaDg/uCSZzAsp8kZuzX/JIizIkjVbJyj7AdkRRj7QUAcO
 ONQJOSGcyd1rg/xKTPR01nXZej1nAk7bdxewxt8zamqIzoYaWCl5pGdS3AsDodCPeBLe
 TU3OoLW2m7xOwGyj47V25F+Zg3EMEdSppmb/hPInn9BOW1DRCltTAiuQrDT+hAW85/Vf
 A2Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TqL6gdVr7qCHO8Hdt0xG8Ty4LTjFKKq0V/Cn256+UdE=;
 b=mg0r3TVXhINTgnfeI2/FLtXejga2lxqUIKYEF0lsHp2c+TiOp469WRV1rkms9O7S8X
 /F2r5ZQ99LrcjS3P/o5xkWMYEYHp7Q/aj/m9F+t65ScvA+D9bSPyD+fQOOjkP/sPiXGF
 0i7MxFb6UkugOj3Wz7UIB9FblxBi6BtAhJYLY0MMW6FZesHJOtjF8vqcktqWqU7PQDLU
 NQ71ba08uwC4UBoXCZm9mKccSi6yodtsSpYlny0cGlkBDY8qs9+f2uBs5FItfSExXbRl
 e7sByKRxhUxFPnPqHixnBYWUPBEtMSDCHqXHLcG3/Vdt0IctKMFFfkFIeqO+v+d402wB
 mLmA==
X-Gm-Message-State: AOAM532lVvE52ROekCR3NQ3ftP2pvUuJuwT40vwH/K2N0vkDRTvAlZhY
 +HTEsulU6AKzkW1SU7F4W8R/RkQkA4Xi3ihrnF4=
X-Google-Smtp-Source: ABdhPJyd+4LP+X+xKA7MFSKiv4Dkq5uhqWIy5ewo1bJOGYdpiuEBi7AhQqN610tZFH3hEnmjNxMc1vLBbYQ5GhUMw+4=
X-Received: by 2002:a0c:9e0e:: with SMTP id p14mr25787207qve.25.1602530448089; 
 Mon, 12 Oct 2020 12:20:48 -0700 (PDT)
MIME-Version: 1.0
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Mon, 12 Oct 2020 21:20:37 +0200
Message-ID: <CAA85sZv=13q8NXbjdf7+R=wu0Q5=Vj9covZ24e9Ew2DCd7S==A@mail.gmail.com>
To: jeffrey.t.kirsher@intel.com, 
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Subject: [Intel-wired-lan] ixgbe - only presenting one out of four
 interfaces on 5.9
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

I was really surprised when i rebooted my firewall and there was
network issues, I was even more surprised when
only one of the four ports of my ixbe (x553) nic was available when booted.

You can actually see it dmesg... And i tried some basic looking at
changes to see if it was obvious.... but..

anyway, on v5.8.14:
dmesg |grep ixgbe
[    1.355454] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver -
version 5.1.0-k
[    1.355455] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[    1.711629] ixgbe 0000:06:00.0: Multiqueue Enabled: Rx Queue count
= 12, Tx Queue count = 12 XDP Queue count = 0
[    1.838170] ixgbe 0000:06:00.0: MAC: 6, PHY: 27, PBA No: 030000-000
[    1.838173] ixgbe 0000:06:00.0: 0c:c4:7a:fa:3d:4a
[    1.882060] ixgbe 0000:06:00.0: Intel(R) 10 Gigabit Network Connection
[    1.882196] libphy: ixgbe-mdio: probed
[    2.234835] ixgbe 0000:06:00.1: Multiqueue Enabled: Rx Queue count
= 12, Tx Queue count = 12 XDP Queue count = 0
[    2.361374] ixgbe 0000:06:00.1: MAC: 6, PHY: 27, PBA No: 030000-000
[    2.361377] ixgbe 0000:06:00.1: 0c:c4:7a:fa:3d:4b
[    2.405281] ixgbe 0000:06:00.1: Intel(R) 10 Gigabit Network Connection
[    2.757541] ixgbe 0000:07:00.0: Multiqueue Enabled: Rx Queue count
= 12, Tx Queue count = 12 XDP Queue count = 0
[    2.884104] ixgbe 0000:07:00.0: MAC: 6, PHY: 27, PBA No: 030000-000
[    2.884107] ixgbe 0000:07:00.0: 0c:c4:7a:fa:3d:4c
[    2.928022] ixgbe 0000:07:00.0: Intel(R) 10 Gigabit Network Connection
[    3.280728] ixgbe 0000:07:00.1: Multiqueue Enabled: Rx Queue count
= 12, Tx Queue count = 12 XDP Queue count = 0
[    3.407274] ixgbe 0000:07:00.1: MAC: 6, PHY: 27, PBA No: 030000-000
[    3.407276] ixgbe 0000:07:00.1: 0c:c4:7a:fa:3d:4d
[    3.451155] ixgbe 0000:07:00.1: Intel(R) 10 Gigabit Network Connection
[    4.648725] ixgbe 0000:07:00.0 eno3: renamed from eth2
[    4.659827] ixgbe 0000:06:00.0 eno1: renamed from eth0
[    4.674272] ixgbe 0000:07:00.1 eno4: renamed from eth3
[    4.685838] ixgbe 0000:06:00.1 eno2: renamed from eth1
[    6.070294] ixgbe 0000:06:00.0: registered PHC device on eno1
[    7.178307] ixgbe 0000:07:00.0: registered PHC device on eno3
[    7.421199] ixgbe 0000:07:00.1: registered PHC device on eno4
[    7.662712] ixgbe 0000:06:00.1: registered PHC device on eno2
[    9.587640] ixgbe 0000:06:00.0 eno1: NIC Link is Up 1 Gbps, Flow
Control: RX/TX
[   10.605594] ixgbe 0000:07:00.1 eno4: NIC Link is Up 1 Gbps, Flow
Control: RX/TX
[   10.754615] ixgbe 0000:07:00.0 eno3: NIC Link is Up 1 Gbps, Flow
Control: RX/TX
[   10.768586] ixgbe 0000:06:00.1 eno2: NIC Link is Up 1 Gbps, Flow
Control: RX/TX

on 5.9:
dmesg |grep ixbge
[    1.570400] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver
[    1.570401] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[    1.928030] ixgbe 0000:06:00.0: Multiqueue Enabled: Rx Queue count
= 12, Tx Queue count = 12 XDP Queue count = 0
[    2.054554] ixgbe 0000:06:00.0: MAC: 6, PHY: 27, PBA No: 030000-000
[    2.054556] ixgbe 0000:06:00.0: 0c:c4:7a:fa:3d:4a
[    2.098404] ixgbe 0000:06:00.0: Intel(R) 10 Gigabit Network Connection
[    2.098541] libphy: ixgbe-mdio: probed
[    2.453350] ixgbe 0000:06:00.1: Multiqueue Enabled: Rx Queue count
= 12, Tx Queue count = 12 XDP Queue count = 0
[    2.579938] ixgbe 0000:06:00.1: MAC: 6, PHY: 27, PBA No: 030000-000
[    2.579941] ixgbe 0000:06:00.1: 0c:c4:7a:fa:3d:4b
[    2.623783] ixgbe 0000:06:00.1: Intel(R) 10 Gigabit Network Connection
[    2.987339] ixgbe 0000:07:00.0: Multiqueue Enabled: Rx Queue count
= 12, Tx Queue count = 12 XDP Queue count = 0
[    3.113864] ixgbe 0000:07:00.0: MAC: 6, PHY: 27, PBA No: 030000-000
[    3.113867] ixgbe 0000:07:00.0: 0c:c4:7a:fa:3d:4c
[    3.157635] ixgbe 0000:07:00.0: Intel(R) 10 Gigabit Network Connection
[    3.529503] ixgbe 0000:07:00.1: Multiqueue Enabled: Rx Queue count
= 12, Tx Queue count = 12 XDP Queue count = 0
[    3.656041] ixgbe 0000:07:00.1: MAC: 6, PHY: 27, PBA No: 030000-000
[    3.656043] ixgbe 0000:07:00.1: 0c:c4:7a:fa:3d:4d
[    3.699856] ixgbe 0000:07:00.1: Intel(R) 10 Gigabit Network Connection
[    4.646247] ixgbe 0000:06:00.0 eno1: renamed from eth0
[    6.183074] ixgbe 0000:06:00.0: registered PHC device on eno1
[    9.570382] ixgbe 0000:06:00.0 eno1: NIC Link is Up 1 Gbps, Flow
Control: RX/TX

lspci....
06:00.0 Ethernet controller: Intel Corporation Ethernet Connection
X553 1GbE (rev 11)
06:00.1 Ethernet controller: Intel Corporation Ethernet Connection
X553 1GbE (rev 11)
07:00.0 Ethernet controller: Intel Corporation Ethernet Connection
X553 1GbE (rev 11)
07:00.1 Ethernet controller: Intel Corporation Ethernet Connection
X553 1GbE (rev 11)

ethtool -i eno1 and eno2
driver: ixgbe
version: 5.1.0-k
firmware-version: 0x80000877
expansion-rom-version:
bus-info: 0000:06:00.0 (and 0000:06:00.1)
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes

while eno3 and eno4 gives:
driver: ixgbe
version: 5.1.0-k
firmware-version: 0x8000087c
expansion-rom-version:
bus-info: 0000:07:00.0 (and 0000:07:00.1)
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

Any ideas?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
