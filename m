Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D801268C357
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:30:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62124416E7;
	Mon,  6 Feb 2023 16:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62124416E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675701043;
	bh=ozI57DgMhrnj8U9+bd3eVFl5tx09VwDSq+JOcvpcKeU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BaCHZZgrtaYOuUmd88AnIw6FsCV9m854YNVHbVvo5ll/DpvrtW4uRoshNh955VQG6
	 62/tnfxMOCR9qyJWlDG8CiNIYOgEDFJBRpqH4t80gDGldUWYS7wwG7kqj465h9t/yC
	 mZFYYe/t2HWS6K5thP7uaPqIYpxA+/qX+AOLmepHeTZxtNJw8XUmq5JjE42H7TC1kj
	 J6Mv4YD8bId4IP9Tu13HIXyr3R+z/aAoDPjm0PWnIDd3t9JVSlrHjN2hrgG58/KRhD
	 IOwEu0i+bbtoMVfqY1NTmUmHamMvTQkTn7/d8WEaN33uj0c5mF3IuGIzrtBfIscUtH
	 WtJaOpQ2VuxnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZS1lPGXbcHh; Mon,  6 Feb 2023 16:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 764D2416E4;
	Mon,  6 Feb 2023 16:30:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 764D2416E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51F9A1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8751A40360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8751A40360
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKST1hzRleZz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 13:51:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2850940476
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2850940476
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:42 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tX-0007E7-4f; Mon, 06 Feb 2023 14:50:55 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tU-0034dJ-2s; Mon, 06 Feb 2023 14:50:53 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tU-00DaOR-6q; Mon, 06 Feb 2023 14:50:52 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Mon,  6 Feb 2023 14:50:32 +0100
Message-Id: <20230206135050.3237952-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230206135050.3237952-1-o.rempel@pengutronix.de>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 06 Feb 2023 16:29:04 +0000
Subject: [Intel-wired-lan] [PATCH net-next v5 05/23] net: phy: add
 genphy_c45_ethtool_get/set_eee() support
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

Add replacement for phy_ethtool_get/set_eee() functions.

Current phy_ethtool_get/set_eee() implementation is great and it is
possible to make it even better:
- this functionality is for devices implementing parts of IEEE 802.3
  specification beyond Clause 22. The better place for this code is
  phy-c45.c
- currently it is able to do read/write operations on PHYs with
  different abilities to not existing registers. It is better to
  use stored supported_eee abilities to avoid false read/write
  operations.
- the eee_active detection will provide wrong results on not supported
  link modes. It is better to validate speed/duplex properties against
  supported EEE link modes.
- it is able to support only limited amount of link modes. We have more
  EEE link modes...

By refactoring this code I address most of this point except of the last
one. Adding additional EEE link modes will need more work.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/phy-c45.c | 235 ++++++++++++++++++++++++++++++++++++++
 include/linux/mdio.h      |  58 ++++++++++
 include/linux/phy.h       |   7 ++
 include/uapi/linux/mdio.h |   8 ++
 4 files changed, 308 insertions(+)

diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
index 3ae642d3ae14..38361df1e669 100644
--- a/drivers/net/phy/phy-c45.c
+++ b/drivers/net/phy/phy-c45.c
@@ -661,6 +661,129 @@ int genphy_c45_read_mdix(struct phy_device *phydev)
 }
 EXPORT_SYMBOL_GPL(genphy_c45_read_mdix);
 
+/**
+ * genphy_c45_write_eee_adv - write advertised EEE link modes
+ * @phydev: target phy_device struct
+ * @adv: the linkmode advertisement settings
+ */
+int genphy_c45_write_eee_adv(struct phy_device *phydev, unsigned long *adv)
+{
+	int val, changed;
+
+	if (linkmode_intersects(phydev->supported, PHY_EEE_CAP1_FEATURES)) {
+		val = linkmode_to_mii_eee_cap1_t(adv);
+
+		/* In eee_broken_modes are stored MDIO_AN_EEE_ADV specific raw
+		 * register values.
+		 */
+		val &= ~phydev->eee_broken_modes;
+
+		/* IEEE 802.3-2018 45.2.7.13 EEE advertisement 1
+		 * (Register 7.60)
+		 */
+		val = phy_modify_mmd_changed(phydev, MDIO_MMD_AN,
+					     MDIO_AN_EEE_ADV,
+					     MDIO_EEE_100TX | MDIO_EEE_1000T |
+					     MDIO_EEE_10GT | MDIO_EEE_1000KX |
+					     MDIO_EEE_10GKX4 | MDIO_EEE_10GKR,
+					     val);
+		if (val < 0)
+			return val;
+		if (val > 0)
+			changed = 1;
+	}
+
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
+			      phydev->supported_eee)) {
+		val = linkmode_adv_to_mii_10base_t1_t(adv);
+		/* IEEE 802.3cg-2019 45.2.7.25 10BASE-T1 AN control register
+		 * (Register 7.526)
+		 */
+		val = phy_modify_mmd_changed(phydev, MDIO_MMD_AN,
+					     MDIO_AN_10BT1_AN_CTRL,
+					     MDIO_AN_10BT1_AN_CTRL_ADV_EEE_T1L,
+					     val);
+		if (val < 0)
+			return val;
+		if (val > 0)
+			changed = 1;
+	}
+
+	return changed;
+}
+
+/**
+ * genphy_c45_read_eee_adv - read advertised EEE link modes
+ * @phydev: target phy_device struct
+ * @adv: the linkmode advertisement status
+ */
+static int genphy_c45_read_eee_adv(struct phy_device *phydev,
+				   unsigned long *adv)
+{
+	int val;
+
+	if (linkmode_intersects(phydev->supported, PHY_EEE_CAP1_FEATURES)) {
+		/* IEEE 802.3-2018 45.2.7.13 EEE advertisement 1
+		 * (Register 7.60)
+		 */
+		val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
+		if (val < 0)
+			return val;
+
+		mii_eee_cap1_mod_linkmode_t(adv, val);
+	}
+
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
+			      phydev->supported_eee)) {
+		/* IEEE 802.3cg-2019 45.2.7.25 10BASE-T1 AN control register
+		 * (Register 7.526)
+		 */
+		val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_10BT1_AN_CTRL);
+		if (val < 0)
+			return val;
+
+		mii_10base_t1_adv_mod_linkmode_t(adv, val);
+	}
+
+	return 0;
+}
+
+/**
+ * genphy_c45_read_eee_lpa - read advertised LP EEE link modes
+ * @phydev: target phy_device struct
+ * @lpa: the linkmode LP advertisement status
+ */
+static int genphy_c45_read_eee_lpa(struct phy_device *phydev,
+				   unsigned long *lpa)
+{
+	int val;
+
+	if (linkmode_intersects(phydev->supported, PHY_EEE_CAP1_FEATURES)) {
+		/* IEEE 802.3-2018 45.2.7.14 EEE link partner ability 1
+		 * (Register 7.61)
+		 */
+		val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE);
+		if (val < 0)
+			return val;
+
+		mii_eee_cap1_mod_linkmode_t(lpa, val);
+	}
+
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
+			      phydev->supported_eee)) {
+		/* IEEE 802.3cg-2019 45.2.7.26 10BASE-T1 AN status register
+		 * (Register 7.527)
+		 */
+		val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_10BT1_AN_STAT);
+		if (val < 0)
+			return val;
+
+		mii_10base_t1_adv_mod_linkmode_t(lpa, val);
+	}
+
+	return 0;
+}
+
 /**
  * genphy_c45_read_eee_cap1 - read supported EEE link modes from register 3.20
  * @phydev: target phy_device struct
@@ -1194,6 +1317,118 @@ int genphy_c45_plca_get_status(struct phy_device *phydev,
 }
 EXPORT_SYMBOL_GPL(genphy_c45_plca_get_status);
 
+/**
+ * genphy_c45_eee_is_active - get EEE supported and status
+ * @phydev: target phy_device struct
+ * @data: ethtool_eee data
+ *
+ * Description: it reports the possible state of EEE functionality.
+ */
+int genphy_c45_eee_is_active(struct phy_device *phydev, unsigned long *adv,
+			     unsigned long *lp, bool *is_enabled)
+{
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(tmp_adv) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(tmp_lp) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(common);
+	bool eee_enabled, eee_active;
+	int ret;
+
+	ret = genphy_c45_read_eee_adv(phydev, tmp_adv);
+	if (ret)
+		return ret;
+
+	ret = genphy_c45_read_eee_lpa(phydev, tmp_lp);
+	if (ret)
+		return ret;
+
+	eee_enabled = !linkmode_empty(tmp_adv);
+	linkmode_and(common, tmp_adv, tmp_lp);
+	if (eee_enabled && !linkmode_empty(common))
+		eee_active = phy_check_valid(phydev->speed, phydev->duplex,
+					     common);
+	else
+		eee_active = false;
+
+	if (adv)
+		linkmode_copy(adv, tmp_adv);
+	if (lp)
+		linkmode_copy(lp, tmp_lp);
+	if (is_enabled)
+		*is_enabled = eee_enabled;
+
+	return eee_active;
+}
+EXPORT_SYMBOL(genphy_c45_eee_is_active);
+
+/**
+ * genphy_c45_ethtool_get_eee - get EEE supported and status
+ * @phydev: target phy_device struct
+ * @data: ethtool_eee data
+ *
+ * Description: it reports the Supported/Advertisement/LP Advertisement
+ * capabilities.
+ */
+int genphy_c45_ethtool_get_eee(struct phy_device *phydev,
+			       struct ethtool_eee *data)
+{
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(adv) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(lp) = {};
+	bool overflow = false, is_enabled;
+	int ret;
+
+	ret = genphy_c45_eee_is_active(phydev, adv, lp, &is_enabled);
+	if (ret < 0)
+		return ret;
+
+	data->eee_enabled = is_enabled;
+	data->eee_active = ret;
+
+	if (!ethtool_convert_link_mode_to_legacy_u32(&data->supported,
+						     phydev->supported_eee))
+		overflow = true;
+	if (!ethtool_convert_link_mode_to_legacy_u32(&data->advertised, adv))
+		overflow = true;
+	if (!ethtool_convert_link_mode_to_legacy_u32(&data->lp_advertised, lp))
+		overflow = true;
+
+	if (overflow)
+		phydev_warn(phydev, "Not all supported or advertised EEE link modes were passed to the user space\n");
+
+	return 0;
+}
+EXPORT_SYMBOL(genphy_c45_ethtool_get_eee);
+
+/**
+ * genphy_c45_ethtool_set_eee - get EEE supported and status
+ * @phydev: target phy_device struct
+ * @data: ethtool_eee data
+ *
+ * Description: it reportes the Supported/Advertisement/LP Advertisement
+ * capabilities.
+ */
+int genphy_c45_ethtool_set_eee(struct phy_device *phydev,
+			       struct ethtool_eee *data)
+{
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(adv) = {};
+	int ret;
+
+	if (data->eee_enabled) {
+		if (data->advertised)
+			adv[0] = data->advertised;
+		else
+			linkmode_copy(adv, phydev->supported_eee);
+	}
+
+	ret = genphy_c45_write_eee_adv(phydev, adv);
+	if (ret < 0)
+		return ret;
+	if (ret > 0)
+		return phy_restart_aneg(phydev);
+
+	return 0;
+}
+EXPORT_SYMBOL(genphy_c45_ethtool_set_eee);
+
 struct phy_driver genphy_c45_driver = {
 	.phy_id         = 0xffffffff,
 	.phy_id_mask    = 0xffffffff,
diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index 1549e73d9a56..6776eea770fa 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -428,6 +428,64 @@ static inline void mii_eee_cap1_mod_linkmode_t(unsigned long *adv, u32 val)
 			 adv, val & MDIO_EEE_10GKR);
 }
 
+/**
+ * mii_eee_cap1_mod_linkmode_t
+ * @adv: the linkmode advertisement settings
+ *
+ * A function that translates linkmode to value for IEEE 802.3-2018 45.2.7.13
+ * "EEE advertisement 1" register (7.60)
+ */
+static inline u32 linkmode_to_mii_eee_cap1_t(unsigned long *adv)
+{
+	u32 result = 0;
+
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT, adv))
+		result |= MDIO_EEE_100TX;
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, adv))
+		result |= MDIO_EEE_1000T;
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT, adv))
+		result |= MDIO_EEE_10GT;
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseKX_Full_BIT, adv))
+		result |= MDIO_EEE_1000KX;
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT, adv))
+		result |= MDIO_EEE_10GKX4;
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10000baseKR_Full_BIT, adv))
+		result |= MDIO_EEE_10GKR;
+
+	return result;
+}
+
+/**
+ * mii_10base_t1_adv_mod_linkmode_t
+ * @adv: linkmode advertisement settings
+ * @val: register value
+ *
+ * A function that translates IEEE 802.3cg-2019 45.2.7.26 "10BASE-T1 AN status"
+ * register (7.527) value to the linkmode.
+ */
+static inline void mii_10base_t1_adv_mod_linkmode_t(unsigned long *adv, u16 val)
+{
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
+			 adv, val & MDIO_AN_10BT1_AN_CTRL_ADV_EEE_T1L);
+}
+
+/**
+ * linkmode_adv_to_mii_10base_t1_t
+ * @adv: linkmode advertisement settings
+ *
+ * A function that translates the linkmode to IEEE 802.3cg-2019 45.2.7.25
+ * "10BASE-T1 AN control" register (7.526) value.
+ */
+static inline u32 linkmode_adv_to_mii_10base_t1_t(unsigned long *adv)
+{
+	u32 result = 0;
+
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10baseT1L_Full_BIT, adv))
+		result |= MDIO_AN_10BT1_AN_CTRL_ADV_EEE_T1L;
+
+	return result;
+}
+
 int __mdiobus_read(struct mii_bus *bus, int addr, u32 regnum);
 int __mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val);
 int __mdiobus_modify_changed(struct mii_bus *bus, int addr, u32 regnum,
diff --git a/include/linux/phy.h b/include/linux/phy.h
index d6b078dd61dd..ef0e3212f68e 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1757,6 +1757,13 @@ int genphy_c45_plca_set_cfg(struct phy_device *phydev,
 			    const struct phy_plca_cfg *plca_cfg);
 int genphy_c45_plca_get_status(struct phy_device *phydev,
 			       struct phy_plca_status *plca_st);
+int genphy_c45_eee_is_active(struct phy_device *phydev, unsigned long *adv,
+			     unsigned long *lp, bool *is_enabled);
+int genphy_c45_ethtool_get_eee(struct phy_device *phydev,
+			       struct ethtool_eee *data);
+int genphy_c45_ethtool_set_eee(struct phy_device *phydev,
+			       struct ethtool_eee *data);
+int genphy_c45_write_eee_adv(struct phy_device *phydev, unsigned long *adv);
 
 /* Generic C45 PHY driver */
 extern struct phy_driver genphy_c45_driver;
diff --git a/include/uapi/linux/mdio.h b/include/uapi/linux/mdio.h
index 75b7257a51e1..256b463e47a6 100644
--- a/include/uapi/linux/mdio.h
+++ b/include/uapi/linux/mdio.h
@@ -79,6 +79,8 @@
 #define MDIO_AN_T1_LP_L		517	/* BASE-T1 AN LP Base Page ability register [15:0] */
 #define MDIO_AN_T1_LP_M		518	/* BASE-T1 AN LP Base Page ability register [31:16] */
 #define MDIO_AN_T1_LP_H		519	/* BASE-T1 AN LP Base Page ability register [47:32] */
+#define MDIO_AN_10BT1_AN_CTRL	526	/* 10BASE-T1 AN control register */
+#define MDIO_AN_10BT1_AN_STAT	527	/* 10BASE-T1 AN status register */
 #define MDIO_PMA_PMD_BT1_CTRL	2100	/* BASE-T1 PMA/PMD control register */
 
 /* LASI (Link Alarm Status Interrupt) registers, defined by XENPAK MSA. */
@@ -340,6 +342,12 @@
 #define MDIO_AN_T1_LP_H_10L_TX_HI_REQ	0x1000	/* 10BASE-T1L High Level LP Transmit Request */
 #define MDIO_AN_T1_LP_H_10L_TX_HI	0x2000	/* 10BASE-T1L High Level LP Transmit Ability */
 
+/* 10BASE-T1 AN control register */
+#define MDIO_AN_10BT1_AN_CTRL_ADV_EEE_T1L	0x4000 /* 10BASE-T1L EEE ability advertisement */
+
+/* 10BASE-T1 AN status register */
+#define MDIO_AN_10BT1_AN_STAT_LPA_EEE_T1L	0x4000 /* 10BASE-T1L LP EEE ability advertisement */
+
 /* BASE-T1 PMA/PMD control register */
 #define MDIO_PMA_PMD_BT1_CTRL_CFG_MST	0x4000 /* MASTER-SLAVE config value */
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
