Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7250694C93
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 17:24:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5625B410DE;
	Mon, 13 Feb 2023 16:24:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5625B410DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676305462;
	bh=MuenOeGWvfQIvnkXXUQZZJCwCdRSNidUO44WsDwo7g4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=q7WNt3Sq6UOXX9cwArFvSdi0yPVhnqj8xzFJD41mP45Ltn83h7PX/1f/BeE/MxjWV
	 W6gnqgWHseYMyASmjS8o+Qhz9C+aBXp7GDbtW64t1gjF9Tjtr0j2hvtTfS5JF4Lbcb
	 J9qdOtq4c5VlF8vWU4PS9YSFz53mCGzZsmwEhtClRkGh6KqzSMwvud0IOLMu4KQosP
	 a0vL1bGxVESQz6W/PsVSxoIdC1uLupF2wRKXM575v04wVjOtQi7exZdgn23tevY1TW
	 hoaPrzYrDlNci5S0QjkTmIQwpE8AM/4TAxf4nK1z4uRCSRHDwUH9sitVMkAG68DE3c
	 caDffF3KaZydQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IVZjYZzQIy8u; Mon, 13 Feb 2023 16:24:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F36BA40304;
	Mon, 13 Feb 2023 16:24:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F36BA40304
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 227F81BF421
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A7E1D41736
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7E1D41736
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PHBh0x1dUUeE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Feb 2023 07:41:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81CCE400D7
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81CCE400D7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:40 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVc-0003za-Rp; Sat, 11 Feb 2023 08:41:20 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-004ALl-OG; Sat, 11 Feb 2023 08:41:16 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVW-00BfsC-Vw; Sat, 11 Feb 2023 08:41:14 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Sat, 11 Feb 2023 08:41:04 +0100
Message-Id: <20230211074113.2782508-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 13 Feb 2023 16:23:36 +0000
Subject: [Intel-wired-lan] [PATCH net-next v8 0/9] net: add EEE support for
 KSZ9477 switch family
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
Cc: Arun.Ramadoss@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 intel-wired-lan@lists.osuosl.org, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

changes v8:
- fix comment for linkmode_to_mii_eee_cap1_t() function
- add Acked-by: Arun Ramadoss <arun.ramadoss@microchip.com>
- add Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

changes v7:
- update documentation for genphy_c45_eee_is_active()
- address review comments on "net: dsa: microchip: enable EEE support"
  patch

changes v6:
- split patch set and send only first 9 patches
- Add Reviewed-by: Andrew Lunn <andrew@lunn.ch>
- use 0xffff instead of GENMASK
- Document @supported_eee
- use "()" with function name in comments

changes v5:
- spell fixes
- move part of genphy_c45_read_eee_abilities() to
  genphy_c45_read_eee_cap1()
- validate MDIO_PCS_EEE_ABLE register against 0xffff val.
- rename *eee_100_10000* to *eee_cap1*
- use linkmode_intersects(phydev->supported, PHY_EEE_CAP1_FEATURES)
  instead of !linkmode_empty()
- add documentation to linkmode/register helpers

changes v4:
- remove following helpers:
  mmd_eee_cap_to_ethtool_sup_t
  mmd_eee_adv_to_ethtool_adv_t
  ethtool_adv_to_mmd_eee_adv_t
  and port drivers from this helpers to linkmode helpers.
- rebase against latest net-next
- port phy_init_eee() to genphy_c45_eee_is_active()

changes v3:
- rework some parts of EEE infrastructure and move it to c45 code.
- add supported_eee storage and start using it in EEE code and by the
  micrel driver.
- add EEE support for ar8035 PHY
- add SmartEEE support to FEC i.MX series.

changes v2:
- use phydev->supported instead of reading MII_BMSR regiaster
- fix @get_eee > @set_eee

With this patch series we provide EEE control for KSZ9477 family of
switches and
AR8035 with i.MX6 configuration.
According to my tests, on a system with KSZ8563 switch and 100Mbit idle
link,
we consume 0,192W less power per port if EEE is enabled.

Oleksij Rempel (9):
  net: dsa: microchip: enable EEE support
  net: phy: add genphy_c45_read_eee_abilities() function
  net: phy: micrel: add ksz9477_get_features()
  net: phy: export phy_check_valid() function
  net: phy: add genphy_c45_ethtool_get/set_eee() support
  net: phy: c22: migrate to genphy_c45_write_eee_adv()
  net: phy: c45: migrate to genphy_c45_write_eee_adv()
  net: phy: migrate phy_init_eee() to genphy_c45_eee_is_active()
  net: phy: start using genphy_c45_ethtool_get/set_eee()

 drivers/net/dsa/microchip/ksz_common.c |  66 +++++
 drivers/net/phy/micrel.c               |  21 ++
 drivers/net/phy/phy-c45.c              | 319 ++++++++++++++++++++++++-
 drivers/net/phy/phy.c                  | 153 ++----------
 drivers/net/phy/phy_device.c           |  26 +-
 include/linux/mdio.h                   |  84 +++++++
 include/linux/phy.h                    |  14 ++
 include/uapi/linux/mdio.h              |   8 +
 8 files changed, 554 insertions(+), 137 deletions(-)

-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
