Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A98694C8E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 17:24:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D463402AA;
	Mon, 13 Feb 2023 16:24:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D463402AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676305446;
	bh=QN3uA4L0PHA6aD1ItD8TESnl6T8RzC5PHgSEE6rD0dQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=duUqpdNFlaTjA4FFHkxlMm6XVuNgmxhxzEjqrxukf92xnkGa1f5x8gOelGV1lI5yK
	 OJLxqSCQgJp0IAR3spk4Y/e7J3TmlU4JZdn/JcNqzSRT5o0hYQkJ76gUwgBiJ1nzlo
	 DiQcxDXJhbhjBkizCxh6mwhn/biEz0Z+vyJi/PvYCnXV0nQCJoBU2WLvp0v7GA6R59
	 KKACYib51qNUeXyrLid87LOJlqJhn6J8ZLeKraxyI4kj4TX0Ss+xMAw5UMBBGJHbIj
	 k00m/MzcSTgF8kMK40DUq5cOa5sUtnb1+rIJg4T2t8IqTPGPdhd+uiaJJ6pGu5zVAw
	 iZau6GRrvlEiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ldMeN8Fc6Bo0; Mon, 13 Feb 2023 16:24:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70EF9402A6;
	Mon, 13 Feb 2023 16:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70EF9402A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A17A71BF421
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7961341A4C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7961341A4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UyBgzCiqVxoc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Feb 2023 07:41:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0585341A1C
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0585341A1C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:39 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVc-0003zW-Rr; Sat, 11 Feb 2023 08:41:20 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-004ALa-2A; Sat, 11 Feb 2023 08:41:16 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-00BfsU-1d; Sat, 11 Feb 2023 08:41:15 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Sat, 11 Feb 2023 08:41:06 +0100
Message-Id: <20230211074113.2782508-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230211074113.2782508-1-o.rempel@pengutronix.de>
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 13 Feb 2023 16:23:36 +0000
Subject: [Intel-wired-lan] [PATCH net-next v8 2/9] net: phy: add
 genphy_c45_read_eee_abilities() function
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

Add generic function for EEE abilities defined by IEEE 802.3
specification. For now following registers are supported:
- IEEE 802.3-2018 45.2.3.10 EEE control and capability 1 (Register 3.20)
- IEEE 802.3cg-2019 45.2.1.186b 10BASE-T1L PMA status register
  (Register 1.2295)

Since I was not able to find any flag signaling support of these
registers, we should detect link mode abilities first and then based on
these abilities doing EEE link modes detection.

Results of EEE ability detection will be stored into new variable
phydev->supported_eee.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/phy/phy-c45.c    | 70 ++++++++++++++++++++++++++++++++++++
 drivers/net/phy/phy_device.c | 16 +++++++++
 include/linux/mdio.h         | 26 ++++++++++++++
 include/linux/phy.h          |  6 ++++
 4 files changed, 118 insertions(+)

diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
index 9f9565a4819d..2d10d22e7684 100644
--- a/drivers/net/phy/phy-c45.c
+++ b/drivers/net/phy/phy-c45.c
@@ -661,6 +661,76 @@ int genphy_c45_read_mdix(struct phy_device *phydev)
 }
 EXPORT_SYMBOL_GPL(genphy_c45_read_mdix);
 
+/**
+ * genphy_c45_read_eee_cap1 - read supported EEE link modes from register 3.20
+ * @phydev: target phy_device struct
+ */
+static int genphy_c45_read_eee_cap1(struct phy_device *phydev)
+{
+	int val;
+
+	/* IEEE 802.3-2018 45.2.3.10 EEE control and capability 1
+	 * (Register 3.20)
+	 */
+	val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
+	if (val < 0)
+		return val;
+
+	/* The 802.3 2018 standard says the top 2 bits are reserved and should
+	 * read as 0. Also, it seems unlikely anybody will build a PHY which
+	 * supports 100GBASE-R deep sleep all the way down to 100BASE-TX EEE.
+	 * If MDIO_PCS_EEE_ABLE is 0xffff assume EEE is not supported.
+	 */
+	if (val == 0xffff)
+		return 0;
+
+	mii_eee_cap1_mod_linkmode_t(phydev->supported_eee, val);
+
+	/* Some buggy devices indicate EEE link modes in MDIO_PCS_EEE_ABLE
+	 * which they don't support as indicated by BMSR, ESTATUS etc.
+	 */
+	linkmode_and(phydev->supported_eee, phydev->supported_eee,
+		     phydev->supported);
+
+	return 0;
+}
+
+/**
+ * genphy_c45_read_eee_abilities - read supported EEE link modes
+ * @phydev: target phy_device struct
+ */
+int genphy_c45_read_eee_abilities(struct phy_device *phydev)
+{
+	int val;
+
+	/* There is not indicator whether optional register
+	 * "EEE control and capability 1" (3.20) is supported. Read it only
+	 * on devices with appropriate linkmodes.
+	 */
+	if (linkmode_intersects(phydev->supported, PHY_EEE_CAP1_FEATURES)) {
+		val = genphy_c45_read_eee_cap1(phydev);
+		if (val)
+			return val;
+	}
+
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
+			      phydev->supported)) {
+		/* IEEE 802.3cg-2019 45.2.1.186b 10BASE-T1L PMA status register
+		 * (Register 1.2295)
+		 */
+		val = phy_read_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_PMA_10T1L_STAT);
+		if (val < 0)
+			return val;
+
+		linkmode_mod_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
+				 phydev->supported_eee,
+				 val & MDIO_PMA_10T1L_STAT_EEE);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(genphy_c45_read_eee_abilities);
+
 /**
  * genphy_c45_pma_read_abilities - read supported link modes from PMA
  * @phydev: target phy_device struct
diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index a3917c7acbd3..66a4e62009bb 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -132,6 +132,18 @@ static const int phy_10gbit_full_features_array[] = {
 	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
 };
 
+static const int phy_eee_cap1_features_array[] = {
+	ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
+};
+
+__ETHTOOL_DECLARE_LINK_MODE_MASK(phy_eee_cap1_features) __ro_after_init;
+EXPORT_SYMBOL_GPL(phy_eee_cap1_features);
+
 static void features_init(void)
 {
 	/* 10/100 half/full*/
@@ -213,6 +225,10 @@ static void features_init(void)
 	linkmode_set_bit_array(phy_10gbit_fec_features_array,
 			       ARRAY_SIZE(phy_10gbit_fec_features_array),
 			       phy_10gbit_fec_features);
+	linkmode_set_bit_array(phy_eee_cap1_features_array,
+			       ARRAY_SIZE(phy_eee_cap1_features_array),
+			       phy_eee_cap1_features);
+
 }
 
 void phy_device_free(struct phy_device *phydev)
diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index c0da30d63b1d..e75583f5d967 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -402,6 +402,32 @@ static inline u32 linkmode_adv_to_mii_t1_adv_m_t(unsigned long *advertising)
 	return result;
 }
 
+/**
+ * mii_eee_cap1_mod_linkmode_t()
+ * @adv: target the linkmode advertisement settings
+ * @val: register value
+ *
+ * A function that translates value of following registers to the linkmode:
+ * IEEE 802.3-2018 45.2.3.10 "EEE control and capability 1" register (3.20)
+ * IEEE 802.3-2018 45.2.7.13 "EEE advertisement 1" register (7.60)
+ * IEEE 802.3-2018 45.2.7.14 "EEE "link partner ability 1 register (7.61)
+ */
+static inline void mii_eee_cap1_mod_linkmode_t(unsigned long *adv, u32 val)
+{
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+			 adv, val & MDIO_EEE_100TX);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			 adv, val & MDIO_EEE_1000T);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+			 adv, val & MDIO_EEE_10GT);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
+			 adv, val & MDIO_EEE_1000KX);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
+			 adv, val & MDIO_EEE_10GKX4);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
+			 adv, val & MDIO_EEE_10GKR);
+}
+
 int __mdiobus_read(struct mii_bus *bus, int addr, u32 regnum);
 int __mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val);
 int __mdiobus_modify_changed(struct mii_bus *bus, int addr, u32 regnum,
diff --git a/include/linux/phy.h b/include/linux/phy.h
index fbeba4fee8d4..c183a8a27986 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -52,6 +52,7 @@ extern __ETHTOOL_DECLARE_LINK_MODE_MASK(phy_gbit_all_ports_features) __ro_after_
 extern __ETHTOOL_DECLARE_LINK_MODE_MASK(phy_10gbit_features) __ro_after_init;
 extern __ETHTOOL_DECLARE_LINK_MODE_MASK(phy_10gbit_fec_features) __ro_after_init;
 extern __ETHTOOL_DECLARE_LINK_MODE_MASK(phy_10gbit_full_features) __ro_after_init;
+extern __ETHTOOL_DECLARE_LINK_MODE_MASK(phy_eee_cap1_features) __ro_after_init;
 
 #define PHY_BASIC_FEATURES ((unsigned long *)&phy_basic_features)
 #define PHY_BASIC_T1_FEATURES ((unsigned long *)&phy_basic_t1_features)
@@ -62,6 +63,7 @@ extern __ETHTOOL_DECLARE_LINK_MODE_MASK(phy_10gbit_full_features) __ro_after_ini
 #define PHY_10GBIT_FEATURES ((unsigned long *)&phy_10gbit_features)
 #define PHY_10GBIT_FEC_FEATURES ((unsigned long *)&phy_10gbit_fec_features)
 #define PHY_10GBIT_FULL_FEATURES ((unsigned long *)&phy_10gbit_full_features)
+#define PHY_EEE_CAP1_FEATURES ((unsigned long *)&phy_eee_cap1_features)
 
 extern const int phy_basic_ports_array[3];
 extern const int phy_fibre_port_array[1];
@@ -572,6 +574,7 @@ struct macsec_ops;
  * @supported: Combined MAC/PHY supported linkmodes
  * @advertising: Currently advertised linkmodes
  * @adv_old: Saved advertised while power saving for WoL
+ * @supported_eee: supported PHY EEE linkmodes
  * @lp_advertising: Current link partner advertised linkmodes
  * @host_interfaces: PHY interface modes supported by host
  * @eee_broken_modes: Energy efficient ethernet modes which should be prohibited
@@ -676,6 +679,8 @@ struct phy_device {
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising);
 	/* used with phy_speed_down */
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(adv_old);
+	/* used for eee validation */
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported_eee);
 
 	/* Host supported PHY interface types. Should be ignored if empty. */
 	DECLARE_PHY_INTERFACE_MASK(host_interfaces);
@@ -1737,6 +1742,7 @@ int genphy_c45_an_config_aneg(struct phy_device *phydev);
 int genphy_c45_an_disable_aneg(struct phy_device *phydev);
 int genphy_c45_read_mdix(struct phy_device *phydev);
 int genphy_c45_pma_read_abilities(struct phy_device *phydev);
+int genphy_c45_read_eee_abilities(struct phy_device *phydev);
 int genphy_c45_pma_baset1_read_master_slave(struct phy_device *phydev);
 int genphy_c45_read_status(struct phy_device *phydev);
 int genphy_c45_baset1_read_status(struct phy_device *phydev);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
