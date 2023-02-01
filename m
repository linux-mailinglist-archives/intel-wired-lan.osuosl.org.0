Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED400686B82
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 17:26:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AF6861075;
	Wed,  1 Feb 2023 16:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AF6861075
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675268781;
	bh=o6eXmtrQ3eZjN024KNtRaOnXJe72ZiRd6o4UQ5+m7Hg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UrNkV7VpZtsQt1+3jQ852zsESnQkHt/zWlOzB/bvxgZKPHuKseHDrf2hcCIsgN0/C
	 9S2NQXh1bSkofbfJGwjiCTQlmnFD+AnF5eVafZhXcGQAQIg+aWA/nOCQInyjvikZOR
	 MDnWP4zu16fPpi+ggI4YqOFo46B6hPEavut3lh/Rx4n6o8J/tTe44AOVWZlElLkdGi
	 jX4vr4pCvfEbjoJcAB5zL8TYDDBRF+YFkAyN8tM3iWh5+kl0SclK7X0rckPMeLZh5I
	 f/CwE4zqzKtYeN7/KFLhgMGtm2UnJs481S/Vb5TEQN2fZ1j1cTbrcLT+rPiAVFg0p1
	 BftAQujii4AxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AItyQA0W_yxz; Wed,  1 Feb 2023 16:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AA3B61071;
	Wed,  1 Feb 2023 16:26:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AA3B61071
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88F711BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63F3B409DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63F3B409DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-x3FnprmQCu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 15:17:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91EFB409E0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91EFB409E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:14 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-0002rY-0C; Wed, 01 Feb 2023 15:58:52 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZW-001w1D-CR; Wed, 01 Feb 2023 15:58:49 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZT-009hWI-F4; Wed, 01 Feb 2023 15:58:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Wed,  1 Feb 2023 15:58:34 +0100
Message-Id: <20230201145845.2312060-13-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230201145845.2312060-1-o.rempel@pengutronix.de>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Wed, 01 Feb 2023 16:25:41 +0000
Subject: [Intel-wired-lan] [PATCH net-next v4 12/23] net: phy: at803x:
 ar8035: fix EEE support for half duplex links
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

If AR8035 is running with enabled EEE and LPI, it will not be able to
establish an 100BaseTX/Half or 1000BaseT/Half link. Similar issue we
will have with 100BaseTX/Full and LPI TX timer configured to less then
80msec.

To avoid this issue, we need to keep LPI disabled before link is
establish and enable it only we detected supported link configuration.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/at803x.c | 41 +++++++++++++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 9eb4439b0afc..5ab43eb63581 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -313,6 +313,7 @@ struct at803x_priv {
 	u8 smarteee_lpi_tw_100m;
 	bool is_fiber;
 	bool is_1000basex;
+	bool tx_lpi_on;
 	struct regulator_dev *vddio_rdev;
 	struct regulator_dev *vddh_rdev;
 	struct regulator *vddio;
@@ -970,6 +971,8 @@ static int at803x_smarteee_config(struct phy_device *phydev, bool enable,
 	u16 mask = 0, val = 0;
 	int ret;
 
+	priv->tx_lpi_on = enable;
+
 	if (priv->flags & AT803X_DISABLE_SMARTEEE || !enable)
 		return phy_modify_mmd(phydev, MDIO_MMD_PCS,
 				      AT803X_MMD3_SMARTEEE_CTL3,
@@ -1010,10 +1013,15 @@ static int at803x_smarteee_config(struct phy_device *phydev, bool enable,
 	if (ret)
 		return ret;
 
-	val = AT803X_MMD3_SMARTEEE_CTL3_LPI_EN |
-		FIELD_PREP(AT803X_MMD3_SMARTEEE_LPI_TIME_HIGH,
-			   FIELD_GET(AT803X_MMD3_SMARTEEE_LPI_TIME_23_16,
-				     tx_lpi_timer_raw));
+	val = FIELD_PREP(AT803X_MMD3_SMARTEEE_LPI_TIME_HIGH,
+			 FIELD_GET(AT803X_MMD3_SMARTEEE_LPI_TIME_23_16,
+				   tx_lpi_timer_raw));
+
+	if (phydev->state == PHY_RUNNING &&
+	    phy_check_valid(phydev->speed, phydev->duplex,
+			    phydev->supported_eee)) {
+		val |= AT803X_MMD3_SMARTEEE_CTL3_LPI_EN;
+	}
 
 	return phy_modify_mmd(phydev, MDIO_MMD_PCS, AT803X_MMD3_SMARTEEE_CTL3,
 			      AT803X_MMD3_SMARTEEE_CTL3_LPI_EN |
@@ -1682,7 +1690,7 @@ static int at803x_get_eee(struct phy_device *phydev, struct ethtool_eee *data)
 	tx_timer_ns = tx_timer_raw * AT803X_MMD3_SMARTEEE_LPI_TIME_RESOL_NS;
 	data->tx_lpi_timer = DIV_ROUND_CLOSEST_ULL(tx_timer_ns, NSEC_PER_USEC);
 
-	data->tx_lpi_enabled = !!(ret & AT803X_MMD3_SMARTEEE_CTL3_LPI_EN);
+	data->tx_lpi_enabled = priv->tx_lpi_on;
 
 	return genphy_c45_ethtool_get_eee(phydev, data);
 }
@@ -1709,6 +1717,28 @@ static int at803x_set_eee(struct phy_device *phydev, struct ethtool_eee *data)
 	return genphy_c45_ethtool_set_eee(phydev, data);
 }
 
+static void at8035_link_change_notify(struct phy_device *phydev)
+{
+	struct at803x_priv *priv = phydev->priv;
+
+	if (priv->flags & AT803X_DISABLE_SMARTEEE)
+		return;
+
+	if (phydev->state == PHY_RUNNING) {
+		if (priv->tx_lpi_on && phy_check_valid(phydev->speed,
+						       phydev->duplex,
+						       phydev->supported_eee))
+			phy_set_bits_mmd(phydev, MDIO_MMD_PCS,
+					 AT803X_MMD3_SMARTEEE_CTL3,
+					 AT803X_MMD3_SMARTEEE_CTL3_LPI_EN);
+	} else {
+		if (priv->tx_lpi_on)
+			phy_clear_bits_mmd(phydev, MDIO_MMD_PCS,
+					   AT803X_MMD3_SMARTEEE_CTL3,
+					   AT803X_MMD3_SMARTEEE_CTL3_LPI_EN);
+	}
+}
+
 static int qca83xx_config_init(struct phy_device *phydev)
 {
 	u8 switch_revision;
@@ -2137,6 +2167,7 @@ static struct phy_driver at803x_driver[] = {
 	.cable_test_get_status	= at803x_cable_test_get_status,
 	.get_eee		= at803x_get_eee,
 	.set_eee		= at803x_set_eee,
+	.link_change_notify	= at8035_link_change_notify,
 }, {
 	/* Qualcomm Atheros AR8030 */
 	.phy_id			= ATH8030_PHY_ID,
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
