Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1079686BA5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 17:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E66741973;
	Wed,  1 Feb 2023 16:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E66741973
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675268847;
	bh=g4jlYXxJE8ywA7F7Sc5N+COQsyEryIem7rKMHpR/1o8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4Vd6T4adhxOwCn6RsKB52prOQ281zKrE4DmvknZ7fSlhMuRHzZMvRzowJRVBpdhhH
	 WZvzot4VjlBikP6WgXxOBhc/FnhYtzfFXbl8UUeQjdl/8IN8lFtvfqzB/R4dAvNNCD
	 4aq5Iu61xJIAdCoJu4EkkPSsEwp6yUpkTSfKW+8J/FY1InRBmIR//oaZBGMWpWq1aL
	 icVaCAGA/JzU/q0QgmM5iP6oUQX3LUmmEIW3+tUwUCOuBVbGxEuB/tUoaX8ki99JV/
	 oG+xfcnL1lhRfvr8wpGAwYGMdJTlqwYgbMWxpiI8iO0PxAj0L+ttuHVp1CjCuBldUc
	 WuM1fmTc/pP2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QuQ1on96tPIL; Wed,  1 Feb 2023 16:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CF9E4194A;
	Wed,  1 Feb 2023 16:27:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CF9E4194A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D63411BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B01F160FB0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B01F160FB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IhC4dG-7oN4S for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 15:17:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D73756104B
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D73756104B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:44 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-0002ra-0C; Wed, 01 Feb 2023 15:58:52 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZW-001w1G-Ih; Wed, 01 Feb 2023 15:58:49 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZT-009hUY-6r; Wed, 01 Feb 2023 15:58:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Wed,  1 Feb 2023 15:58:22 +0100
Message-Id: <20230201145845.2312060-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Wed, 01 Feb 2023 16:25:41 +0000
Subject: [Intel-wired-lan] [PATCH net-next v4 00/23] net: add EEE support
 for KSZ9477 and AR8035 with i.MX6
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

With this patch series we provide EEE control for KSZ9477 family of switches and
AR8035 with i.MX6 configuration.
According to my tests, on a system with KSZ8563 switch and 100Mbit idle link,
we consume 0,192W less power per port if EEE is enabled.

Oleksij Rempel (23):
  net: dsa: microchip: enable EEE support
  net: phy: add genphy_c45_read_eee_abilities() function
  net: phy: micrel: add ksz9477_get_features()
  net: phy: export phy_check_valid() function
  net: phy: add genphy_c45_ethtool_get/set_eee() support
  net: phy: c22: migrate to genphy_c45_write_eee_adv()
  net: phy: c45: migrate to genphy_c45_write_eee_adv()
  net: phy: migrate phy_init_eee() to genphy_c45_eee_is_active()
  net: phy: start using genphy_c45_ethtool_get/set_eee()
  net: phy: add driver specific get/set_eee support
  net: phy: at803x: implement ethtool access to SmartEEE functionality
  net: phy: at803x: ar8035: fix EEE support for half duplex links
  net: phy: add PHY specifica flag to signal SmartEEE support
  net: phy: at803x: add PHY_SMART_EEE flag to AR8035
  net: phy: add phy_has_smarteee() helper
  net: fec: add support for PHYs with SmartEEE support
  e1000e: replace EEE ethtool helpers to linkmode variants
  igb: replace EEE ethtool helpers to linkmode variants
  igc: replace EEE ethtool helpers to linkmode variants
  tg3: replace EEE ethtool helpers to linkmode variants
  r8152: replace EEE ethtool helpers to linkmode variants
  net: usb: ax88179_178a: replace EEE ethtool helpers to linkmode
    variants
  net: mdio: drop EEE ethtool helpers in favor to linkmode variants

 drivers/net/dsa/microchip/ksz_common.c       |  66 ++++
 drivers/net/ethernet/broadcom/tg3.c          |   9 +-
 drivers/net/ethernet/freescale/fec_main.c    |  22 +-
 drivers/net/ethernet/intel/e1000e/ethtool.c  |  16 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c |  23 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  12 +-
 drivers/net/phy/at803x.c                     | 142 ++++++++-
 drivers/net/phy/micrel.c                     |  21 ++
 drivers/net/phy/phy-c45.c                    | 298 ++++++++++++++++++-
 drivers/net/phy/phy.c                        | 155 ++--------
 drivers/net/phy/phy_device.c                 |  26 +-
 drivers/net/usb/ax88179_178a.c               |  24 +-
 drivers/net/usb/r8152.c                      |  34 ++-
 include/linux/mdio.h                         | 136 ++++-----
 include/linux/phy.h                          |  28 ++
 include/uapi/linux/mdio.h                    |   8 +
 16 files changed, 760 insertions(+), 260 deletions(-)

-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
