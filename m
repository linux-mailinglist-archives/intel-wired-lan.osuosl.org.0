Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139D770313A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 17:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB64141D50;
	Mon, 15 May 2023 15:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB64141D50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684163587;
	bh=piEsAI82SLmmCoUaYATqyTlo5tIh0YyA8Z9D7R5XMUQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ACDiZIfU7CkUKDL9KsuwHFgDUceMHb19DgXk6mTIQH4Thh7s1PBOAzS4g6jprASNO
	 U8d1eGxqbu5+nrOTzYF/sDxTcHYvnljZl0KfMfL79lfklvekebh/ItxO1C6xDBt/38
	 HCedCWN1MHGhuqZ6aX/cOc8a5Out7fpkDJdNgB7JrsmbXB1y1vW7EW4u+XM4nwYYsh
	 QeXXiqjDoLuCGmzCiddQhft57darKybuFF7txEdP/j7khtnu27bMFD7SDbZm834ZSJ
	 gVvm/yWcUdkXmmKEIDO9pPxmpBlNwgHrCzA0Z8Mz2GAMZLjCuetFpJ7yTlneWXpU72
	 7Gtl6sjKk7nTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NvujeA93Bu4R; Mon, 15 May 2023 15:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F346341D6A;
	Mon, 15 May 2023 15:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F346341D6A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8501F1BF316
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 07:04:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D103821EB
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 07:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D103821EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rhxJRnYkpl_c for <intel-wired-lan@osuosl.org>;
 Mon, 15 May 2023 07:04:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6745821C8
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D6745821C8
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 07:04:26 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-969f90d71d4so1150986866b.3
 for <intel-wired-lan@osuosl.org>; Mon, 15 May 2023 00:04:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684134264; x=1686726264;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/gYRbTQBl+syqb2Eyh7/qFHtMJrGM887hszhGYQkyK4=;
 b=U2LH323FrCttECNegZ6K1H5GdyOJ1aO5Zx60c5sk/5dECN9EJoFR7G74aBcIzaoH1U
 9EfW8TOA/3gmvPI+91ch8DE2G6DJJr/v3GV/XfrgBv5pfd79P40XyJsFHFhWNEObNVE/
 oSYP/voxFAz3RFXU/VH+O7fhqX7pEpbpQ8pwhgse2pcsqnpJF9JC61XNvwEpagfG8gDo
 0dDQgcWphFzWvoP4rE2B+KMk8eqw0TnibizB3sw0gM1uJvmviYw2fZvs2KzPHlSmzyyM
 22y5QeoTL41J9GWef6rlnmklEuGDElQMu0d6XNF53Ncf8l+dcXw/RZN7va5Q1evtIIZL
 uK4Q==
X-Gm-Message-State: AC+VfDycnSjdZJTvBBgn10BWmwRGsAlgKufaF4FgTCDkI8JrhuUGqhwp
 A+GKk22Yhg5HImTNmgzieM8ruPRmScc0jjt1MhPgmlErp+hrgxmo8fU=
X-Google-Smtp-Source: ACHHUZ7PF+HK+YcBKaV++9ppq8pCqVckGAbkLR6zc6iyvthR9gjWQLBbK7r4qdjVLgydmpHDsRMl5Mt9+pSXcaQkiz0=
X-Received: by 2002:a17:907:3683:b0:94f:3b07:a708 with SMTP id
 bi3-20020a170907368300b0094f3b07a708mr28655056ejc.29.1684134264359; Mon, 15
 May 2023 00:04:24 -0700 (PDT)
MIME-Version: 1.0
From: Prasad Koya <prasad@arista.com>
Date: Mon, 15 May 2023 00:04:13 -0700
Message-ID: <CAKh1g57BP-RHN7uG7+v3mzni1ZLOmd7aiqTTTunm=8D5dnCJBQ@mail.gmail.com>
To: intel-wired-lan@osuosl.org
X-Mailman-Approved-At: Mon, 15 May 2023 15:12:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1684134264; x=1686726264;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=/gYRbTQBl+syqb2Eyh7/qFHtMJrGM887hszhGYQkyK4=;
 b=i2nQDl01QBW4YVb7oQ9bxCXWpFuz8PLzKDnt78HsHRVxlR/RLSYXiGcqRuTl96ZvVW
 sUuZe05LxPUeLxkvSiaIm/r0a8HYfmucUVelEt9g2xvO+pPoU5k3m4kxPxF7T4hhnfBk
 3LHpzH+VlpO+Nfc1IHJRoz+0ATOZmyY7pzmgI7l7+/UKUKRXLrUJYbgaHbMmw7aBm4v6
 r8o8uWYsE0PPIXAxjVakjVn7h1OOkSRgqymLZBsJioU6yJuq9jIJAbpbaj+USDHE+78N
 YClTAQ2Rhyw0CosaEWp1ndZqrf42Wi8StDOltZ0fnclXfjvCR+l7xP1eySBX9VDwWyPD
 FCiA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=i2nQDl01
Subject: [Intel-wired-lan] I225/I226 does not power down the PHY during "ip
 link set dev down"
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
Cc: Salam Noureddine <noureddine@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi

When we set the interface down with "ip link set dev <xyz> down", we
see that the PHY is not powered off. That is, the LED next to the
RJ-45 connector is still solid green on the host where the interface
is "down" and at the peer port. After "ip link set dev <xyz> down",
"ip link show dev <xyz>" show does not have the "UP" flag but the LED
is not turned off.

Here are the logs when I tried this on Ubuntu running 6.1.0 kernel:

root@arista-Idaville:/home/arista# ethtool -i enp2s0
driver: igc
version: 6.1.0-rc4
firmware-version: 2017:888d
expansion-rom-version:
bus-info: 0000:02:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes
root@arista-Idaville:/home/arista#
root@arista-Idaville:/home/arista# lspci -s 0000:02:00.0
02:00.0 Ethernet controller: Intel Corporation Device 125b (rev 04)
root@arista-Idaville:/home/arista#
root@arista-Idaville:/home/arista# ip -d link show dev enp2s0
2: enp2s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state
UP mode DEFAULT group default qlen 1000
    link/ether 00:1c:73:b4:e3:76 brd ff:ff:ff:ff:ff:ff promiscuity 0
minmtu 68 maxmtu 9216 addrgenmode none numtxqueues 4 numrxqueues 4
gso_max_size 65536
gso_max_segs 65535
root@arista-Idaville:/home/arista#
root@arista-Idaville:/home/arista# ip link set dev enp2s0 down
root@arista-Idaville:/home/arista#


root@arista-Idaville:/home/arista# cat /sys/class/net/enp2s0/carrier
/sys/class/net/enp2s0/operstate /sys/class/net/enp2s0/flags
cat: /sys/class/net/enp2s0/carrier: Invalid argument
down
0x1002
root@arista-Idaville:/home/arista#

root@arista-Idaville:/home/arista# ethtool enp2s0
Settings for enp2s0:
        Supported ports: [ ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
                                2500baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
                                2500baseT/Full
        Advertised pause frame use: Symmetric
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Speed: 1000Mb/s
        Duplex: Full
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: on
        MDI-X: off (auto)
        Supports Wake-on: pumbg
        Wake-on: g
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: no
root@arista-Idaville:/home/arista#

root@arista-Idaville:/home/arista# ip -d link show dev enp2s0
2: enp2s0: <BROADCAST,MULTICAST> mtu 1500 qdisc mq state DOWN mode
DEFAULT group default qlen 1000
    link/ether 00:1c:73:b4:e3:76 brd ff:ff:ff:ff:ff:ff promiscuity 0
minmtu 68 maxmtu 9216 addrgenmode none numtxqueues 4 numrxqueues 4
gso_max_size 65536 gso_max_segs 65535
root@arista-Idaville:/home/arista#


Looking at the sources, I see that the following code is commented out
in igc_phy.c

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/net/ethernet/intel/igc/igc_phy.c?h=v6.3.2#n136

void igc_power_down_phy_copper(struct igc_hw *hw)
{
    u16 mii_reg = 0;

    /* The PHY will retain its settings across a power down/up cycle */
    hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
    mii_reg |= MII_CR_POWER_DOWN;

    /* Temporary workaround - should be removed when PHY will implement
     * IEEE registers as properly
     */
    /* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg); */
    usleep_range(1000, 2000);
}

Uncommenting above line works. However, Intel support suggested using
"Go Link Disconnect" (bit number 5) in the PHPM register to turn the
PHY off. The documentation in the "Intel Ethernet Controller
I225/I226" User manual suggests accessing this register by following
the semantics to acquire and release the SW_FW_SYNC semaphore. If we
go this way, after a few link down/up, I run into error. Please see
the dmesg logs and my code below. Perhaps I'm accessing the register
incorrectly?

bash-4.2# dmesg | grep -B3 igc_

[  8.936695] Copyright(c) 2018 Intel Corporation.
[  8.936739] igc 0000:07:00.0: PCIe PTM not supported by PCIe bus/controller
[  8.981607] igc 0000:07:00.0 (unnamed net_device) (uninitialized): PHC added
[  9.003934] igc_power_down_phy_copper: 135 link DOWN. retval 0
[  9.003942] igc_power_down_phy_copper: 142 link DOWN

--
:
[  15.791931] igc_power_up_phy_copper: 113 link UP. retval 0
[  15.791934] igc_power_up_phy_copper: 118 link UP

--
:
[  71.918835] igc 0000:07:00.0 ma1: Error on hardware initialization.
[  72.986277] igc_power_down_phy_copper: 135 link DOWN. retval -13.
[  74.975243] igc_power_up_phy_copper: 113 link UP. retval -13
[  77.074806] igc 0000:07:00.0 ma1: Error on hardware initialization
[  78.142251] igc_power_down_phy_copper: 135 link DOWN. retval -13

--
:
[ 134.156688] igc_power_up_phy_copper: 113 link UP. retval -13

bash-4.2#


108 void igc_power_up_phy_copper(struct igc_hw *hw)
109 {
110   struct igc_phy_info *phy = &hw->phy;
111   s32 ret_val = phy->ops.acquire(hw);
112
113   printk(KERN_INFO "%s: %d link UP. retval %d\n", __func__,
__LINE__, ret_val);
114   if (!ret_val) {
115     u32 phpm = rd32(IGC_I225_PHPM);
116     phpm &= ~0x20;
117     wr32(IGC_I225_PHPM, phpm);
118     printk(KERN_INFO "%s: %d link UP\n", __func__, __LINE__);
119     usleep_range(1000, 2000);
120   }
121 }
122

123 /**
124 * igc_power_down_phy_copper - Power down copper PHY
125 * @hw: pointer to the HW structure
126 *
127 * Power down PHY to save power when interface is down and wake on lan
128 * is not enabled.
129 */
130 void igc_power_down_phy_copper(struct igc_hw *hw)
131 {
132   struct igc_phy_info *phy = &hw->phy;
133
134   s32 ret_val = phy->ops.acquire(hw);
135   printk(KERN_INFO "%s: %d link DOWN. retval %d\n", __func__,
__LINE__, ret_val);
136   if (!ret_val) {
137     u32 phpm = rd32(IGC_I225_PHPM);
138     phpm |= 0x20;
139     wr32(IGC_I225_PHPM, phpm);
140
141     phy->ops.release(hw);
142     printk(KERN_INFO "%s: %d link DOWN\n", __func__, __LINE__);
143     usleep_range(1000, 2000);
144   }
145 }

What is the preferred way? We are using linux kernel version 5.10.165
but I see the same code for igc_power_down_phy_copper() in the kernel
version 6.3.2.

Thank you.
Prasad
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
