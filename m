Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05747084B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 17:11:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E40E417D6;
	Thu, 18 May 2023 15:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E40E417D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684422714;
	bh=upx4V0g4T8LVM3pc1DlbsojRxKqVGNf5pcYTnqjpRUI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ldgEY0fTj+qUj/4y2yOp8NJsavTWJ5LHO8pxJ28m8nJm/BlR6z2DBIp+QswQnrAM1
	 CAlKBSY4zvq70ymKf8Zpy0fOHFyTkmxbA8VdDlBD60T91rfu6NXLG0mONPIUwe7usn
	 7VNxhXA0YRbpp0A+oqVip+BZzGRZb7D7w39NRUyt5cKlenNvm/eEVVhDAH7h+6JDGP
	 79HJH8kMiYyMMDaBKSy89qUg47ByIcruBtFDj7OgUS+/1iSXlRnkESOmREH0kWZLAL
	 neyddGDgUqql19xzG8jE/4yKEDQLG3WiO2KR2fn6sLoChvyO4zqwuQhH7fOAaNvsrs
	 so2zE//bz04Lw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MwdVGNGLONkW; Thu, 18 May 2023 15:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC1314012F;
	Thu, 18 May 2023 15:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC1314012F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C1DD1BF29D
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 21:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23B7E83B3F
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 21:14:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23B7E83B3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jzkEqU_9zjKc for <intel-wired-lan@osuosl.org>;
 Wed, 17 May 2023 21:14:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46B2983B21
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46B2983B21
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 21:14:15 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-965ab8ed1c0so199092866b.2
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 14:14:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684358053; x=1686950053;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NbP7wHIUXD7BM+t6BqCQzvWUCOsaXSDK0f7krPOwwRc=;
 b=TUPjB1FA1OqCsDeeqRBQhW9gtpJ4K3+1x/38ey+ZVue7ZNLrxau3tz/bvm12bL4Me+
 mV0ZpV4kJTTdIUsvNzESwi3E8tzWSt+IF32ZB/Rl7/ZCU9POXap9rzNEgIOm5+TMgSiV
 v1ggrcYpGcP3CGwxcDTCfNfR/LIhcEeFWahj3tO+w1Jlw6zLfb34hkcS8NxqREiS0SaK
 3POX1uYJvJHe226f8yNQMFErKSoIv6ElNO+QZziU6u4HAqwFn47UUNswcanY8yDBXw+M
 mqKBKPq0VuP07fPOzs/VjycrYjWilxUKZnGiUQemD7hhXdvgqcENmXp+7luUPXWpKvW4
 Obkw==
X-Gm-Message-State: AC+VfDy0QHY42vdyqgOjIC1K9N0pMX/91WKeBr6tV6y7MaecUYZ0Ob6C
 dpGwDmgwQCu49F/bU/sUdd5f2/A3LjNAQsq1OdPrQg==
X-Google-Smtp-Source: ACHHUZ5PF4tppKLbJaEXfxRV43LOCxUqj9S9w4glCVkzVZzZ+Otz6ksbx8ALsBFJIyle40EYHIlvxdwMz3MXDWuUOs0=
X-Received: by 2002:a17:907:1c23:b0:966:2984:3da0 with SMTP id
 nc35-20020a1709071c2300b0096629843da0mr39029497ejc.63.1684358053026; Wed, 17
 May 2023 14:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAKh1g57BP-RHN7uG7+v3mzni1ZLOmd7aiqTTTunm=8D5dnCJBQ@mail.gmail.com>
 <ce25c481-94b9-8a46-2963-3c881566dbcf@intel.com>
In-Reply-To: <ce25c481-94b9-8a46-2963-3c881566dbcf@intel.com>
From: Prasad Koya <prasad@arista.com>
Date: Wed, 17 May 2023 14:14:01 -0700
Message-ID: <CAKh1g57x4iJPu2phc7=_7MirxCKcgSFOTSaxCtz-qBi7Zf5XFg@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Thu, 18 May 2023 15:11:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=google; t=1684358053; x=1686950053;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NbP7wHIUXD7BM+t6BqCQzvWUCOsaXSDK0f7krPOwwRc=;
 b=BsbnDDg84lk6uSKsRh6BHWeLRbtPQ23M1la6LoBw+H6C0c8rD+dBEbA2UJH1yFDK5T
 HwjxyT4uRlalO37KEc2C25BhpsJZoSIgYqFxiZ7IXDinVeaaeo+aeeC9ijYD5ExaFBHn
 7Lfc8rQQlffnqmxEzeSVoXwUKn6/rLooVKrJqyoj8Oi8CVcQqU3QETXGKO9vTFEhuVtn
 FB6WvbnsAJLOlkSeIzwhbAK8eAqenNsiqJa+fCOexRV4m2D6WySe/jhGSMhHl5muADBo
 rLePgHwcuhag7AWZvOl4PxClF95bsvmYifdB3dm0qJJ4osl62R4nBUqEoUkiMgy29x7K
 /MaQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com
 header.a=rsa-sha256 header.s=google header.b=BsbnDDg8
Subject: Re: [Intel-wired-lan] I225/I226 does not power down the PHY during
 "ip link set dev down"
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
Cc: intel-wired-lan@osuosl.org, Salam Noureddine <noureddine@arista.com>,
 "Avivi, Amir" <amir.avivi@intel.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>
Content-Type: multipart/mixed; boundary="===============1905875899309703207=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1905875899309703207==
Content-Type: multipart/alternative; boundary="0000000000006d5b6a05fbea2b91"

--0000000000006d5b6a05fbea2b91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for replying.

We were on NVM version 2.14 earlier. We plan to update the NVM version to
2.17 on our I226 firmware. Does the 2.17 NVM version also have the problem
you mentioned?

On Mon, May 15, 2023 at 10:25=E2=80=AFAM Neftin, Sasha <sasha.neftin@intel.=
com>
wrote:

> !
> What's this?
> <https://dashboard.greathorn.com/approveEmail.html?authType=3Dgoogle&requ=
estType=3DlearnMore&id=3D692468209&client=3D288> WARNING:
> Suspicious link identified. Please exercise caution when clicking links i=
n
> this email.
>
>
> On 5/15/2023 10:04, Prasad Koya wrote:
> > Hi
> >
> > When we set the interface down with "ip link set dev  down", we
> > see that the PHY is not powered off. That is, the LED next to the
> > RJ-45 connector is still solid green on the host where the interface
> > is "down" and at the peer port. After "ip link set dev  down",
> > "ip link show dev " show does not have the "UP" flag but the LED
> > is not turned off.
> correct, this is expected behavior.
> >
> > Here are the logs when I tried this on Ubuntu running 6.1.0 kernel:
> >
> > root@arista-Idaville:/home/arista# ethtool -i enp2s0
> > driver: igc
> > version: 6.1.0-rc4
> > firmware-version: 2017:888d
> > expansion-rom-version:
> > bus-info: 0000:02:00.0
> > supports-statistics: yes
> > supports-test: yes
> > supports-eeprom-access: yes
> > supports-register-dump: yes
> > supports-priv-flags: yes
> > root@arista-Idaville:/home/arista#
> > root@arista-Idaville:/home/arista# lspci -s 0000:02:00.0
> > 02:00.0 Ethernet controller: Intel Corporation Device 125b (rev 04)
> > root@arista-Idaville:/home/arista#
> > root@arista-Idaville:/home/arista# ip -d link show dev enp2s0
> > 2: enp2s0:  mtu 1500 qdisc mq state
> > UP mode DEFAULT group default qlen 1000
> >      link/ether 00:1c:73:b4:e3:76 brd ff:ff:ff:ff:ff:ff promiscuity 0
> > minmtu 68 maxmtu 9216 addrgenmode none numtxqueues 4 numrxqueues 4
> > gso_max_size 65536
> > gso_max_segs 65535
> > root@arista-Idaville:/home/arista#
> > root@arista-Idaville:/home/arista# ip link set dev enp2s0 down
> > root@arista-Idaville:/home/arista#
> >
> >
> > root@arista-Idaville:/home/arista# cat /sys/class/net/enp2s0/carrier
> > /sys/class/net/enp2s0/operstate /sys/class/net/enp2s0/flags
> > cat: /sys/class/net/enp2s0/carrier: Invalid argument
> > down
> > 0x1002
> > root@arista-Idaville:/home/arista#
> >
> > root@arista-Idaville:/home/arista# ethtool enp2s0
> > Settings for enp2s0:
> >          Supported ports: [ ]
> >          Supported link modes:   10baseT/Half 10baseT/Full
> >                                  100baseT/Half 100baseT/Full
> >                                  1000baseT/Full
> >                                  2500baseT/Full
> >          Supported pause frame use: Symmetric
> >          Supports auto-negotiation: Yes
> >          Supported FEC modes: Not reported
> >          Advertised link modes:  10baseT/Half 10baseT/Full
> >                                  100baseT/Half 100baseT/Full
> >                                  1000baseT/Full
> >                                  2500baseT/Full
> >          Advertised pause frame use: Symmetric
> >          Advertised auto-negotiation: Yes
> >          Advertised FEC modes: Not reported
> >          Speed: 1000Mb/s
> >          Duplex: Full
> >          Port: Twisted Pair
> >          PHYAD: 0
> >          Transceiver: internal
> >          Auto-negotiation: on
> >          MDI-X: off (auto)
> >          Supports Wake-on: pumbg
> >          Wake-on: g
> >          Current message level: 0x00000007 (7)
> >                                 drv probe link
> >          Link detected: no
> > root@arista-Idaville:/home/arista#
> >
> > root@arista-Idaville:/home/arista# ip -d link show dev enp2s0
> > 2: enp2s0:  mtu 1500 qdisc mq state DOWN mode
> > DEFAULT group default qlen 1000
> >      link/ether 00:1c:73:b4:e3:76 brd ff:ff:ff:ff:ff:ff promiscuity 0
> > minmtu 68 maxmtu 9216 addrgenmode none numtxqueues 4 numrxqueues 4
> > gso_max_size 65536 gso_max_segs 65535
> > root@arista-Idaville:/home/arista#
> >
> >
> > Looking at the sources, I see that the following code is commented out
> > in igc_phy.c
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/d=
rivers/net/ethernet/intel/igc/igc_phy.c?h=3Dv6.3.2#n136
> >
> > void igc_power_down_phy_copper(struct igc_hw *hw)
> > {
> >      u16 mii_reg =3D 0;
> >
> >      /* The PHY will retain its settings across a power down/up cycle *=
/
> >      hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
> >      mii_reg |=3D MII_CR_POWER_DOWN;
> >
> >      /* Temporary workaround - should be removed when PHY will implemen=
t
> >       * IEEE registers as properly
> >       */
> >      /* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg); */
> >      usleep_range(1000, 2000);
> > }
> >
> > Uncommenting above line works. However, Intel support suggested using
> > "Go Link Disconnect" (bit number 5) in the PHPM register to turn the
> > PHY off. The documentation in the "Intel Ethernet Controller
> > I225/I226" User manual suggests accessing this register by following
> > the semantics to acquire and release the SW_FW_SYNC semaphore. If we
> > go this way, after a few link down/up, I run into error. Please see
> > the dmesg logs and my code below. Perhaps I'm accessing the register
> > incorrectly?
> >
> > bash-4.2# dmesg | grep -B3 igc_
> >
> > [  8.936695] Copyright(c) 2018 Intel Corporation.
> > [  8.936739] igc 0000:07:00.0: PCIe PTM not supported by PCIe bus/contr=
oller
> > [  8.981607] igc 0000:07:00.0 (unnamed net_device) (uninitialized): PHC=
 added
> > [  9.003934] igc_power_down_phy_copper: 135 link DOWN. retval 0
> > [  9.003942] igc_power_down_phy_copper: 142 link DOWN
> >
> > --
> > :
> > [  15.791931] igc_power_up_phy_copper: 113 link UP. retval 0
> > [  15.791934] igc_power_up_phy_copper: 118 link UP
> >
> > --
> > :
> > [  71.918835] igc 0000:07:00.0 ma1: Error on hardware initialization.
> > [  72.986277] igc_power_down_phy_copper: 135 link DOWN. retval -13.
> > [  74.975243] igc_power_up_phy_copper: 113 link UP. retval -13
> > [  77.074806] igc 0000:07:00.0 ma1: Error on hardware initialization
> > [  78.142251] igc_power_down_phy_copper: 135 link DOWN. retval -13
> you hit on PHY firmware bug - please do not use PHPM ("Go Link
> Disconnect" (bit number 5)).
> >
> > --
> > :
> > [ 134.156688] igc_power_up_phy_copper: 113 link UP. retval -13
> >
> > bash-4.2#
> >
> >
> > 108 void igc_power_up_phy_copper(struct igc_hw *hw)
> > 109 {
> > 110   struct igc_phy_info *phy =3D &hw->phy;
> > 111   s32 ret_val =3D phy->ops.acquire(hw);
> > 112
> > 113   printk(KERN_INFO "%s: %d link UP. retval %d\n", __func__,
> > __LINE__, ret_val);
> > 114   if (!ret_val) {
> > 115     u32 phpm =3D rd32(IGC_I225_PHPM);
> > 116     phpm &=3D ~0x20;
> > 117     wr32(IGC_I225_PHPM, phpm);
> > 118     printk(KERN_INFO "%s: %d link UP\n", __func__, __LINE__);
> > 119     usleep_range(1000, 2000);
> > 120   }
> > 121 }
> > 122
> >
> > 123 /**
> > 124 * igc_power_down_phy_copper - Power down copper PHY
> > 125 * @hw: pointer to the HW structure
> > 126 *
> > 127 * Power down PHY to save power when interface is down and wake on l=
an
> > 128 * is not enabled.
> > 129 */
> > 130 void igc_power_down_phy_copper(struct igc_hw *hw)
> > 131 {
> > 132   struct igc_phy_info *phy =3D &hw->phy;
> > 133
> > 134   s32 ret_val =3D phy->ops.acquire(hw);
> > 135   printk(KERN_INFO "%s: %d link DOWN. retval %d\n", __func__,
> > __LINE__, ret_val);
> > 136   if (!ret_val) {
> > 137     u32 phpm =3D rd32(IGC_I225_PHPM);
> > 138     phpm |=3D 0x20;
> > 139     wr32(IGC_I225_PHPM, phpm);
> > 140
> > 141     phy->ops.release(hw);
> > 142     printk(KERN_INFO "%s: %d link DOWN\n", __func__, __LINE__);
> > 143     usleep_range(1000, 2000);
> > 144   }
> > 145 }
> >
> > What is the preferred way? We are using linux kernel version 5.10.165
> > but I see the same code for igc_power_down_phy_copper() in the kernel
> > version 6.3.2.
> >
> Preferred way is IEEE via MII_CR_POWER_DOWN bit - this is a line in a /*
> comment */
> I mask this code due to a problem with PHY firmware and I would prefer
> not to release it meanwhile (I am not sure it is finally resolved). We
> need to run the validation cycle over a wide range of platforms before.
> > Thank you.
> > Prasad
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
>

--0000000000006d5b6a05fbea2b91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for replying.<div><br></div><div>We were on NVM ver=
sion 2.14 earlier. We plan to update the NVM version to 2.17 on our I226 fi=
rmware. Does the 2.17=C2=A0NVM version also have the problem you mentioned?=
</div><div><span style=3D"white-space:pre-wrap"></span></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 15=
, 2023 at 10:25=E2=80=AFAM Neftin, Sasha &lt;<a href=3D"mailto:sasha.neftin=
@intel.com">sasha.neftin@intel.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><u></u><div>
<div>
  <div id=3D"m_-3582549208661917093613d1feef2fe07cf80e21fa0c779cd0b02ea4a39=
5f8c26f6819f9a4ad47e08ec" style=3D"width:100%">
    <div style=3D"height:0px;overflow:hidden;display:none">
     =20
    </div>
    <table style=3D"width:100%">
      <tbody><tr>
        <td style=3D"text-align:center">
          <table width=3D"600" cellpadding=3D"0" cellspacing=3D"0" style=3D=
"width:600px;min-height:56px;display:block;margin-left:auto;margin-right:au=
to;border:1px solid rgb(141,86,0);background-color:rgb(255,245,192)">
              <tbody><tr>
                  <td align=3D"center" width=3D"75" style=3D"margin:8px;wid=
th:75px;padding:8px 8px 8px 15px;text-align:center">

                       =20
                         =20
                          <a href=3D"https://dashboard.greathorn.com/approv=
eEmail.html?authType=3Dgoogle&amp;requestType=3DlearnMore&amp;id=3D69246820=
9&amp;client=3D288" style=3D"text-decoration:none" target=3D"_blank">
                           =20
                            <div style=3D"width:24px;height:24px;border-rad=
ius:12px;text-align:center;margin-left:auto;margin-right:auto;background-co=
lor:rgb(141,86,0)">
                              <span style=3D"font-weight:bold;color:rgb(255=
,255,255);height:21px;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-s=
erif;text-align:left;font-size:17px;width:4px;font-stretch:normal;font-styl=
e:normal;line-height:1.5;text-decoration:none">!</span>
                            </div>
                           =20
                            <span style=3D"line-height:1.2;width:52px;font-=
family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:10px;font-we=
ight:normal;font-stretch:normal;font-style:normal;height:12px;letter-spacin=
g:normal;text-align:center;color:rgb(46,125,204);text-decoration:underline;=
white-space:nowrap;display:block;margin:auto">What&#39;s this?</span>
                          </a>
                         =20
                       =20
                       =20
                       =20

                  </td>
                  <td align=3D"left" style=3D"font-weight:normal;width:450p=
x;font-family:Arial;padding:8px;font-size:13px;vertical-align:inherit;font-=
stretch:normal;font-style:normal;line-height:1.31;letter-spacing:normal;col=
or:rgb(141,86,0);text-align:left">WARNING: Suspicious link identified. Plea=
se exercise caution when clicking links in this email.</td>
                 =20
                    <td align=3D"center" width=3D"75" style=3D"padding-righ=
t:15px;padding-left:8px;width:75px;text-align:center">
                        <img src=3D"https://www.arista.com/assets/images/Ar=
ista-A-160x160.png" height=3D"42" style=3D"width: auto; height: 42px;">
                    </td>
                 =20
              </tr>
          </tbody></table>
        </td>
      </tr>
    </tbody></table>
  </div>
  <div style=3D"height:1px;background:none;display:block"><span style=3D"wh=
ite-space:nowrap">=C2=A0</span></div>
</div><pre>On 5/15/2023 10:04, Prasad Koya wrote:
&gt; Hi
&gt;=20
&gt; When we set the interface down with &quot;ip link set dev <u></u> down=
&quot;, we
&gt; see that the PHY is not powered off. That is, the LED next to the
&gt; RJ-45 connector is still solid green on the host where the interface
&gt; is &quot;down&quot; and at the peer port. After &quot;ip link set dev =
<u></u> down&quot;,
&gt; &quot;ip link show dev <u></u>&quot; show does not have the &quot;UP&q=
uot; flag but the LED
&gt; is not turned off.
correct, this is expected behavior.
&gt;=20
&gt; Here are the logs when I tried this on Ubuntu running 6.1.0 kernel:
&gt;=20
&gt; root@arista-Idaville:/home/arista# ethtool -i enp2s0
&gt; driver: igc
&gt; version: 6.1.0-rc4
&gt; firmware-version: 2017:888d
&gt; expansion-rom-version:
&gt; bus-info: 0000:02:00.0
&gt; supports-statistics: yes
&gt; supports-test: yes
&gt; supports-eeprom-access: yes
&gt; supports-register-dump: yes
&gt; supports-priv-flags: yes
&gt; root@arista-Idaville:/home/arista#
&gt; root@arista-Idaville:/home/arista# lspci -s 0000:02:00.0
&gt; 02:00.0 Ethernet controller: Intel Corporation Device 125b (rev 04)
&gt; root@arista-Idaville:/home/arista#
&gt; root@arista-Idaville:/home/arista# ip -d link show dev enp2s0
&gt; 2: enp2s0: <u></u> mtu 1500 qdisc mq state
&gt; UP mode DEFAULT group default qlen 1000
&gt;      link/ether 00:1c:73:b4:e3:76 brd ff:ff:ff:ff:ff:ff promiscuity 0
&gt; minmtu 68 maxmtu 9216 addrgenmode none numtxqueues 4 numrxqueues 4
&gt; gso_max_size 65536
&gt; gso_max_segs 65535
&gt; root@arista-Idaville:/home/arista#
&gt; root@arista-Idaville:/home/arista# ip link set dev enp2s0 down
&gt; root@arista-Idaville:/home/arista#
&gt;=20
&gt;=20
&gt; root@arista-Idaville:/home/arista# cat /sys/class/net/enp2s0/carrier
&gt; /sys/class/net/enp2s0/operstate /sys/class/net/enp2s0/flags
&gt; cat: /sys/class/net/enp2s0/carrier: Invalid argument
&gt; down
&gt; 0x1002
&gt; root@arista-Idaville:/home/arista#
&gt;=20
&gt; root@arista-Idaville:/home/arista# ethtool enp2s0
&gt; Settings for enp2s0:
&gt;          Supported ports: [ ]
&gt;          Supported link modes:   10baseT/Half 10baseT/Full
&gt;                                  100baseT/Half 100baseT/Full
&gt;                                  1000baseT/Full
&gt;                                  2500baseT/Full
&gt;          Supported pause frame use: Symmetric
&gt;          Supports auto-negotiation: Yes
&gt;          Supported FEC modes: Not reported
&gt;          Advertised link modes:  10baseT/Half 10baseT/Full
&gt;                                  100baseT/Half 100baseT/Full
&gt;                                  1000baseT/Full
&gt;                                  2500baseT/Full
&gt;          Advertised pause frame use: Symmetric
&gt;          Advertised auto-negotiation: Yes
&gt;          Advertised FEC modes: Not reported
&gt;          Speed: 1000Mb/s
&gt;          Duplex: Full
&gt;          Port: Twisted Pair
&gt;          PHYAD: 0
&gt;          Transceiver: internal
&gt;          Auto-negotiation: on
&gt;          MDI-X: off (auto)
&gt;          Supports Wake-on: pumbg
&gt;          Wake-on: g
&gt;          Current message level: 0x00000007 (7)
&gt;                                 drv probe link
&gt;          Link detected: no
&gt; root@arista-Idaville:/home/arista#
&gt;=20
&gt; root@arista-Idaville:/home/arista# ip -d link show dev enp2s0
&gt; 2: enp2s0: <u></u> mtu 1500 qdisc mq state DOWN mode
&gt; DEFAULT group default qlen 1000
&gt;      link/ether 00:1c:73:b4:e3:76 brd ff:ff:ff:ff:ff:ff promiscuity 0
&gt; minmtu 68 maxmtu 9216 addrgenmode none numtxqueues 4 numrxqueues 4
&gt; gso_max_size 65536 gso_max_segs 65535
&gt; root@arista-Idaville:/home/arista#
&gt;=20
&gt;=20
&gt; Looking at the sources, I see that the following code is commented out
&gt; in igc_phy.c
&gt;=20
&gt; <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/stable/linu=
x.git/tree/drivers/net/ethernet/intel/igc/igc_phy.c?h=3Dv6.3.2#n136" target=
=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.gi=
t/tree/drivers/net/ethernet/intel/igc/igc_phy.c?h=3Dv6.3.2#n136</a>
&gt;=20
&gt; void igc_power_down_phy_copper(struct igc_hw *hw)
&gt; {
&gt;      u16 mii_reg =3D 0;
&gt;=20
&gt;      /* The PHY will retain its settings across a power down/up cycle =
*/
&gt;      hw-&gt;phy.ops.read_reg(hw, PHY_CONTROL, &amp;mii_reg);
&gt;      mii_reg |=3D MII_CR_POWER_DOWN;
&gt;=20
&gt;      /* Temporary workaround - should be removed when PHY will impleme=
nt
&gt;       * IEEE registers as properly
&gt;       */
&gt;      /* hw-&gt;phy.ops.write_reg(hw, PHY_CONTROL, mii_reg); */
&gt;      usleep_range(1000, 2000);
&gt; }
&gt;=20
&gt; Uncommenting above line works. However, Intel support suggested using
&gt; &quot;Go Link Disconnect&quot; (bit number 5) in the PHPM register to =
turn the
&gt; PHY off. The documentation in the &quot;Intel Ethernet Controller
&gt; I225/I226&quot; User manual suggests accessing this register by follow=
ing
&gt; the semantics to acquire and release the SW_FW_SYNC semaphore. If we
&gt; go this way, after a few link down/up, I run into error. Please see
&gt; the dmesg logs and my code below. Perhaps I&#39;m accessing the regist=
er
&gt; incorrectly?
&gt;=20
&gt; bash-4.2# dmesg | grep -B3 igc_
&gt;=20
&gt; [  8.936695] Copyright(c) 2018 Intel Corporation.
&gt; [  8.936739] igc 0000:07:00.0: PCIe PTM not supported by PCIe bus/cont=
roller
&gt; [  8.981607] igc 0000:07:00.0 (unnamed net_device) (uninitialized): PH=
C added
&gt; [  9.003934] igc_power_down_phy_copper: 135 link DOWN. retval 0
&gt; [  9.003942] igc_power_down_phy_copper: 142 link DOWN
&gt;=20
&gt; --
&gt; :
&gt; [  15.791931] igc_power_up_phy_copper: 113 link UP. retval 0
&gt; [  15.791934] igc_power_up_phy_copper: 118 link UP
&gt;=20
&gt; --
&gt; :
&gt; [  71.918835] igc 0000:07:00.0 ma1: Error on hardware initialization.
&gt; [  72.986277] igc_power_down_phy_copper: 135 link DOWN. retval -13.
&gt; [  74.975243] igc_power_up_phy_copper: 113 link UP. retval -13
&gt; [  77.074806] igc 0000:07:00.0 ma1: Error on hardware initialization
&gt; [  78.142251] igc_power_down_phy_copper: 135 link DOWN. retval -13
you hit on PHY firmware bug - please do not use PHPM (&quot;Go Link=20
Disconnect&quot; (bit number 5)).
&gt;=20
&gt; --
&gt; :
&gt; [ 134.156688] igc_power_up_phy_copper: 113 link UP. retval -13
&gt;=20
&gt; bash-4.2#
&gt;=20
&gt;=20
&gt; 108 void igc_power_up_phy_copper(struct igc_hw *hw)
&gt; 109 {
&gt; 110   struct igc_phy_info *phy =3D &amp;hw-&gt;phy;
&gt; 111   s32 ret_val =3D phy-&gt;ops.acquire(hw);
&gt; 112
&gt; 113   printk(KERN_INFO &quot;%s: %d link UP. retval %d\n&quot;, __func=
__,
&gt; __LINE__, ret_val);
&gt; 114   if (!ret_val) {
&gt; 115     u32 phpm =3D rd32(IGC_I225_PHPM);
&gt; 116     phpm &amp;=3D ~0x20;
&gt; 117     wr32(IGC_I225_PHPM, phpm);
&gt; 118     printk(KERN_INFO &quot;%s: %d link UP\n&quot;, __func__, __LIN=
E__);
&gt; 119     usleep_range(1000, 2000);
&gt; 120   }
&gt; 121 }
&gt; 122
&gt;=20
&gt; 123 /**
&gt; 124 * igc_power_down_phy_copper - Power down copper PHY
&gt; 125 * @hw: pointer to the HW structure
&gt; 126 *
&gt; 127 * Power down PHY to save power when interface is down and wake on =
lan
&gt; 128 * is not enabled.
&gt; 129 */
&gt; 130 void igc_power_down_phy_copper(struct igc_hw *hw)
&gt; 131 {
&gt; 132   struct igc_phy_info *phy =3D &amp;hw-&gt;phy;
&gt; 133
&gt; 134   s32 ret_val =3D phy-&gt;ops.acquire(hw);
&gt; 135   printk(KERN_INFO &quot;%s: %d link DOWN. retval %d\n&quot;, __fu=
nc__,
&gt; __LINE__, ret_val);
&gt; 136   if (!ret_val) {
&gt; 137     u32 phpm =3D rd32(IGC_I225_PHPM);
&gt; 138     phpm |=3D 0x20;
&gt; 139     wr32(IGC_I225_PHPM, phpm);
&gt; 140
&gt; 141     phy-&gt;ops.release(hw);
&gt; 142     printk(KERN_INFO &quot;%s: %d link DOWN\n&quot;, __func__, __L=
INE__);
&gt; 143     usleep_range(1000, 2000);
&gt; 144   }
&gt; 145 }
&gt;=20
&gt; What is the preferred way? We are using linux kernel version 5.10.165
&gt; but I see the same code for igc_power_down_phy_copper() in the kernel
&gt; version 6.3.2.
&gt;=20
Preferred way is IEEE via MII_CR_POWER_DOWN bit - this is a line in a /*=20
comment */
I mask this code due to a problem with PHY firmware and I would prefer=20
not to release it meanwhile (I am not sure it is finally resolved). We=20
need to run the validation cycle over a wide range of platforms before.
&gt; Thank you.
&gt; Prasad
&gt; _______________________________________________
&gt; Intel-wired-lan mailing list
&gt; <a href=3D"mailto:Intel-wired-lan@osuosl.org" target=3D"_blank">Intel-=
wired-lan@osuosl.org</a>
&gt; <a href=3D"https://lists.osuosl.org/mailman/listinfo/intel-wired-lan" =
target=3D"_blank">https://lists.osuosl.org/mailman/listinfo/intel-wired-lan=
</a>

</pre></div></blockquote></div>

--0000000000006d5b6a05fbea2b91--

--===============1905875899309703207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1905875899309703207==--
