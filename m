Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D1068C33D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:29:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21AB6404A1;
	Mon,  6 Feb 2023 16:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21AB6404A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675700971;
	bh=/xX1/OskSj+59kftbWaRZIqv7+fR1tqKgnf5ix6PEmU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qa6eI81J9lFdRsAZoy/qe5SwNE7i07MMRsK9k7XnlrceicbDqcjhvkpEOY2k2bb3K
	 YxJe7X0cxEj3rqol8ivr66AnJjHn+yD/wlIhiKk775u4XBLl1D5J2lKP0dIKgzsODz
	 SV+apjlCNY84GBPtgOxtc8k+GwTzzWtp2NHMWTfWWyTuYIhNy62NxQfYmzUrok9rxj
	 a/hY+Myo6/evU8vsRn8ws8jISTkVdGRgUZ0Nz2kR/I0owCflNw5L42Zg9TgibV6uSw
	 e045CYXkQUV1UcDzr5im/vQrquZ2/Ylc2Gp3CIhoeMYX5i+a/UC2ZnrC+f+s0BFYPo
	 KVAvjEnlvmfsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZTb2RnlS4u9; Mon,  6 Feb 2023 16:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1A1C4049E;
	Mon,  6 Feb 2023 16:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1A1C4049E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9E981BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 947514021C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 947514021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JaCn6pIF-FPl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 13:51:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3B2F403B8
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3B2F403B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:33 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tX-0007G2-TC; Mon, 06 Feb 2023 14:50:55 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tV-0034dl-LK; Mon, 06 Feb 2023 14:50:54 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tU-00DaPJ-KV; Mon, 06 Feb 2023 14:50:52 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Mon,  6 Feb 2023 14:50:38 +0100
Message-Id: <20230206135050.3237952-12-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v5 11/23] net: phy: at803x:
 implement ethtool access to SmartEEE functionality
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

If AR8035 PHY is used with a MAC without EEE support
(iMX6, etc), then we need to process ethtool_eee::tx_lpi_timer and
tx_lpi_enabled by the PHY driver. So, add get/set_eee support for this
functionality.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/at803x.c | 109 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 104 insertions(+), 5 deletions(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 22f4458274aa..9eb4439b0afc 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -166,8 +166,18 @@
 
 #define AT803X_MMD3_SMARTEEE_CTL1		0x805b
 #define AT803X_MMD3_SMARTEEE_CTL2		0x805c
+#define AT803X_MMD3_SMARTEEE_LPI_TIME_LOW	GENMASK(15, 0)
+#define AT803X_MMD3_SMARTEEE_LPI_TIME_15_0	GENMASK(15, 0)
 #define AT803X_MMD3_SMARTEEE_CTL3		0x805d
 #define AT803X_MMD3_SMARTEEE_CTL3_LPI_EN	BIT(8)
+#define AT803X_MMD3_SMARTEEE_LPI_TIME_HIGH	GENMASK(7, 0)
+#define AT803X_MMD3_SMARTEEE_LPI_TIME_23_16	GENMASK(23, 16)
+/* Tx LPI timer resolution */
+#define AT803X_MMD3_SMARTEEE_LPI_TIME_RESOL_NS	163840
+#define AT803X_MMD3_SMARTEEE_LPI_TIME_MAX_US	\
+	((GENMASK(23, 0) * AT803X_MMD3_SMARTEEE_LPI_TIME_RESOL_NS) / \
+	       NSEC_PER_USEC)
+#define AT803X_MMD3_SMARTEEE_LPI_TIME_DEF_US	335544
 
 #define ATH9331_PHY_ID				0x004dd041
 #define ATH8030_PHY_ID				0x004dd076
@@ -951,17 +961,26 @@ static int at803x_get_features(struct phy_device *phydev)
 	return 0;
 }
 
-static int at803x_smarteee_config(struct phy_device *phydev)
+static int at803x_smarteee_config(struct phy_device *phydev, bool enable,
+				  u32 tx_lpi_timer_us)
 {
 	struct at803x_priv *priv = phydev->priv;
+	u64 tx_lpi_timer_raw;
+	u64 tx_lpi_timer_ns;
 	u16 mask = 0, val = 0;
 	int ret;
 
-	if (priv->flags & AT803X_DISABLE_SMARTEEE)
+	if (priv->flags & AT803X_DISABLE_SMARTEEE || !enable)
 		return phy_modify_mmd(phydev, MDIO_MMD_PCS,
 				      AT803X_MMD3_SMARTEEE_CTL3,
 				      AT803X_MMD3_SMARTEEE_CTL3_LPI_EN, 0);
 
+	if (tx_lpi_timer_us > AT803X_MMD3_SMARTEEE_LPI_TIME_MAX_US) {
+		phydev_err(phydev, "Max LPI timer is %lu microsecs\n",
+			   AT803X_MMD3_SMARTEEE_LPI_TIME_MAX_US);
+		return -EINVAL;
+	}
+
 	if (priv->smarteee_lpi_tw_1g) {
 		mask |= 0xff00;
 		val |= priv->smarteee_lpi_tw_1g << 8;
@@ -978,9 +997,27 @@ static int at803x_smarteee_config(struct phy_device *phydev)
 	if (ret)
 		return ret;
 
+	tx_lpi_timer_ns = tx_lpi_timer_us * NSEC_PER_USEC;
+	tx_lpi_timer_raw =
+		DIV_ROUND_CLOSEST_ULL(tx_lpi_timer_ns,
+				      AT803X_MMD3_SMARTEEE_LPI_TIME_RESOL_NS);
+	val = FIELD_PREP(AT803X_MMD3_SMARTEEE_LPI_TIME_LOW,
+			 FIELD_GET(AT803X_MMD3_SMARTEEE_LPI_TIME_15_0,
+				   tx_lpi_timer_raw));
+
+	ret = phy_write_mmd(phydev, MDIO_MMD_PCS, AT803X_MMD3_SMARTEEE_CTL2,
+			    val);
+	if (ret)
+		return ret;
+
+	val = AT803X_MMD3_SMARTEEE_CTL3_LPI_EN |
+		FIELD_PREP(AT803X_MMD3_SMARTEEE_LPI_TIME_HIGH,
+			   FIELD_GET(AT803X_MMD3_SMARTEEE_LPI_TIME_23_16,
+				     tx_lpi_timer_raw));
+
 	return phy_modify_mmd(phydev, MDIO_MMD_PCS, AT803X_MMD3_SMARTEEE_CTL3,
-			      AT803X_MMD3_SMARTEEE_CTL3_LPI_EN,
-			      AT803X_MMD3_SMARTEEE_CTL3_LPI_EN);
+			      AT803X_MMD3_SMARTEEE_CTL3_LPI_EN |
+			      AT803X_MMD3_SMARTEEE_LPI_TIME_HIGH, val);
 }
 
 static int at803x_clk_out_config(struct phy_device *phydev)
@@ -1067,7 +1104,8 @@ static int at803x_config_init(struct phy_device *phydev)
 	if (ret < 0)
 		return ret;
 
-	ret = at803x_smarteee_config(phydev);
+	ret = at803x_smarteee_config(phydev, true,
+				     AT803X_MMD3_SMARTEEE_LPI_TIME_DEF_US);
 	if (ret < 0)
 		return ret;
 
@@ -1612,6 +1650,65 @@ static int at803x_cable_test_start(struct phy_device *phydev)
 	return 0;
 }
 
+static int at803x_get_eee(struct phy_device *phydev, struct ethtool_eee *data)
+{
+	struct at803x_priv *priv = phydev->priv;
+	u32 tx_timer_raw;
+	u64 tx_timer_ns;
+	int ret;
+
+	/* If SmartEEE is not enabled, it is expected that tx_lpi_* fields
+	 * are processed by the MAC driver.
+	 */
+	if (priv->flags & AT803X_DISABLE_SMARTEEE)
+		return genphy_c45_ethtool_get_eee(phydev, data);
+
+	ret = phy_read_mmd(phydev, MDIO_MMD_PCS,
+			   AT803X_MMD3_SMARTEEE_CTL2);
+	tx_timer_raw = FIELD_PREP(AT803X_MMD3_SMARTEEE_LPI_TIME_15_0,
+				  FIELD_GET(AT803X_MMD3_SMARTEEE_LPI_TIME_LOW,
+					    ret));
+	if (ret < 0)
+		return ret;
+
+	ret = phy_read_mmd(phydev, MDIO_MMD_PCS,
+			   AT803X_MMD3_SMARTEEE_CTL3);
+	if (ret < 0)
+		return ret;
+
+	tx_timer_raw |= FIELD_PREP(AT803X_MMD3_SMARTEEE_LPI_TIME_23_16,
+				   FIELD_GET(AT803X_MMD3_SMARTEEE_LPI_TIME_HIGH,
+					     ret));
+	tx_timer_ns = tx_timer_raw * AT803X_MMD3_SMARTEEE_LPI_TIME_RESOL_NS;
+	data->tx_lpi_timer = DIV_ROUND_CLOSEST_ULL(tx_timer_ns, NSEC_PER_USEC);
+
+	data->tx_lpi_enabled = !!(ret & AT803X_MMD3_SMARTEEE_CTL3_LPI_EN);
+
+	return genphy_c45_ethtool_get_eee(phydev, data);
+}
+
+static int at803x_set_eee(struct phy_device *phydev, struct ethtool_eee *data)
+{
+	struct at803x_priv *priv = phydev->priv;
+	int ret;
+
+	/* If SmartEEE is not enabled, it is expected that tx_lpi_* fields
+	 * are processed by the MAC driver.
+	 */
+	if (priv->flags & AT803X_DISABLE_SMARTEEE)
+		return genphy_c45_ethtool_set_eee(phydev, data);
+
+	/* Changing Tx LPI on/off or Tx LPI timer settings
+	 * do not require link reset.
+	 */
+	ret = at803x_smarteee_config(phydev, data->tx_lpi_enabled,
+				     data->tx_lpi_timer);
+	if (ret)
+		return ret;
+
+	return genphy_c45_ethtool_set_eee(phydev, data);
+}
+
 static int qca83xx_config_init(struct phy_device *phydev)
 {
 	u8 switch_revision;
@@ -2038,6 +2135,8 @@ static struct phy_driver at803x_driver[] = {
 	.set_tunable		= at803x_set_tunable,
 	.cable_test_start	= at803x_cable_test_start,
 	.cable_test_get_status	= at803x_cable_test_get_status,
+	.get_eee		= at803x_get_eee,
+	.set_eee		= at803x_set_eee,
 }, {
 	/* Qualcomm Atheros AR8030 */
 	.phy_id			= ATH8030_PHY_ID,
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
