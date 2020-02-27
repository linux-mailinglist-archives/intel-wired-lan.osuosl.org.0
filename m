Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067D7176174
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Mar 2020 18:45:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3BC986372;
	Mon,  2 Mar 2020 17:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1YKlbYcuXp7; Mon,  2 Mar 2020 17:45:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14F1087823;
	Mon,  2 Mar 2020 17:45:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D43E1BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 22:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2679683502
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 22:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_KDSGvwi3on for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2020 22:54:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1384480662
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 22:54:29 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id a12so38890ljj.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2020 14:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=iTU/SDq7uYV9y9In9DkLe5ApMN0GwI2MOYTtzWU5wLU=;
 b=hZEx1khQvYl48qeBhw9XSA7c2v2eP0oWTdsIWsjp2hyZ6lFVqUAgQM7sZYYRwvZPQL
 tfjyFU1CgdDZQPKy/iwwl8xJs4IPgQNVER0ipLjs6PNeu5NLraSFyuAyxqrwBE0MLMvF
 zEmPVUNDPb6DC2tuOz6GzG5H9QDfHo32EIsMsAZ3/U6NvrTBCYbUwf4eqPX/uGSSB0sR
 xmHIJuuaD6CGJ2nmqmcCWpxJ9QZnb+uELhfrB9TLvuzgOrMJxZLDR6M+yEUIAC1FN/Dx
 TmrhrMDJwe8pNrgv3oog6N2uaXw1Q0i2Hoqu32b92zvXHOZCD79mge2FGH+jEqCMFMml
 3/Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=iTU/SDq7uYV9y9In9DkLe5ApMN0GwI2MOYTtzWU5wLU=;
 b=qhTZcUNZ6NX2pdhCov3iLgUNlrEdNm74gXPfsNmVs3++FQz8Qb0p9OnBTOvzJpX3vh
 w+X8oysxcthFXrNaYw07kiIBSLniBUvkYNI1u4kWsLh4PXWxAc3FyQKYyphguj+J/dSS
 l7qi0VueWV0AeGcNWMDmGGpRMv4sbegnDvbj/lw/9Gd8FSx+rThWCD2ktRoGwezs6vYT
 vqy5n4NQ06RsblhSJ4x2i06qr60DDr1u+gkonKGj8lSI/cZ4q04bEAK4YU8uoiDbH3cy
 RjyGa1GCoIxF0bKdLC0BCQQhO/WkkXOZjLn/BqQLmjMFzs45CSvKLcVbMsErQbrRLsLo
 DUHA==
X-Gm-Message-State: ANhLgQ3jsqjHO60uJVn55XF7UVAwKz6YujHKx4Vfnw6FNpL1jFS+olJb
 c8GVbVxpSGsZd2qq9KUlTlWhCgQNbPNppcYrwi0=
X-Google-Smtp-Source: ADFU+vs0DVTMJkrMkrhXj8mM4rBJjCTRFlzdnbqOUM+WO3/p3S/G7eJ1rcZSNBtL2T1m0LbUbLIuUFzfdfT3XuvDF5Q=
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr830532ljk.15.1582844067140;
 Thu, 27 Feb 2020 14:54:27 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Maciej_=C5=BBenczykowski?= <zenczykowski@gmail.com>
Date: Thu, 27 Feb 2020 14:54:15 -0800
Message-ID: <CAHo-OozeA2Dp_4pRZr84A+nH8pLbM3L26_50enHgPV4HpevpCg@mail.gmail.com>
To: Linux NetDev <netdev@vger.kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, 
 intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 02 Mar 2020 17:45:32 +0000
Subject: [Intel-wired-lan] ixgbe 2.5 / 5 gbit support works but is not
 reported as supported/advertised
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

https://www.startech.com/Networking-IO/Adapter-Cards/dual-port-network-card~ST10GPEXNDPI

84:00.0 Ethernet controller [0200]: Intel Corporation Ethernet
Controller 10G X550T [8086:1563] (rev 01)
84:00.1 Ethernet controller [0200]: Intel Corporation Ethernet
Controller 10G X550T [8086:1563] (rev 01)

This card will negotiate 2.5g or 5g if plugged in to a 2.5/5g port on
the other end of a 7ft cat 5e cable.
But it doesn't *claim* to support it.

# ethtool eix1
Settings for eix1:
        Supported ports: [ TP ]
        Supported link modes:   100baseT/Full
                                1000baseT/Full
                                10000baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  100baseT/Full
                                1000baseT/Full
                                10000baseT/Full
        Advertised pause frame use: Symmetric
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Speed: 2500Mb/s     <-- or 5000Mb/s
        Duplex: Full
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: on
        MDI-X: Unknown
        Supports Wake-on: d
        Wake-on: d
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes

(note the lack of
                                2500baseT/Full
                                5000baseT/Full
under supported/advertised)

5.2.17-1rodete3-amd64 #1 SMP Debian
[240677.031802] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver
- version 5.1.0-k
[240677.031806] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[240677.717538] ixgbe 0000:84:00.0: Multiqueue Enabled: Rx Queue count
= 56, Tx Queue count = 56 XDP Queue count = 0
[240677.816262] ixgbe 0000:84:00.0: 31.504 Gb/s available PCIe
bandwidth (8 GT/s x4 link)
[240677.844663] ixgbe 0000:84:00.0: MAC: 4, PHY: 0, PBA No: 000500-000
[240677.844668] ixgbe 0000:84:00.0: 00:0a:...
[240677.994928] ixgbe 0000:84:00.0 eix1: renamed from eth1
[240678.005278] ixgbe 0000:84:00.0: Intel(R) 10 Gigabit Network Connection
[240678.005360] libphy: ixgbe-mdio: probed
[240678.694408] ixgbe 0000:84:00.1: Multiqueue Enabled: Rx Queue count
= 56, Tx Queue count = 56 XDP Queue count = 0
[240678.792505] ixgbe 0000:84:00.1: 31.504 Gb/s available PCIe
bandwidth (8 GT/s x4 link)
[240678.820671] ixgbe 0000:84:00.1: MAC: 4, PHY: 0, PBA No: 000500-000
[240678.820677] ixgbe 0000:84:00.1: 00:0a:...
[240678.970174] ixgbe 0000:84:00.1 eix2: renamed from eth1
[240678.980665] ixgbe 0000:84:00.1: Intel(R) 10 Gigabit Network Connection
[240678.980747] libphy: ixgbe-mdio: probed
[242612.969243] ixgbe 0000:84:00.0: registered PHC device on eix1
[242615.246740] ixgbe 0000:84:00.1: registered PHC device on eix2
[242620.138766] ixgbe 0000:84:00.0 eix1: NIC Link is Up 10 Gbps, Flow
Control: RX/TX
[242620.162687] ixgbe 0000:84:00.1 eix2: NIC Link is Up 10 Gbps, Flow
Control: RX/TX
[242712.081620] ixgbe 0000:84:00.0 eix1: NIC Link is Down
[242712.280592] ixgbe 0000:84:00.1 eix2: NIC Link is Down
[242867.346797] ixgbe 0000:84:00.0 eix1: NIC Link is Up 5 Gbps, Flow
Control: RX/TX
[243018.281569] ixgbe 0000:84:00.0 eix1: NIC Link is Down
[243028.975451] ixgbe 0000:84:00.0 eix1: NIC Link is Up 2.5 Gbps, Flow
Control: RX/TX
[243405.309056] ixgbe 0000:84:00.0 eix1: NIC Link is Down
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
