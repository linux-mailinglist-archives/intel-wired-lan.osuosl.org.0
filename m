Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E258D694C83
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 17:23:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FD4A40245;
	Mon, 13 Feb 2023 16:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FD4A40245
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676305428;
	bh=G3AvN+RCBOempyaxAnBRXFc4FcqmXLSJitNJJASdLf4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FdZeNaWz7d3rqKUZURz11b0EKuyebDVDZKp+g5SKXZ+2C8nYUfg6x9zI0i6y5ODzF
	 +EIm18UedAtiuE8zZa9ascGgGf86eiOkXJq2mDgzyKBNo+HI7yln6vus+3I6NmEgCY
	 Vs3WtEjgkdjj7xZ3a35ezTQTw1NtDDrkgeQCjINwbeMVH7WxvOopUIHzJstJ0VZ3yT
	 vaJSzvSIir0tANKCBdsbn/3evez0ICk7ba3hA2neGufX6dW/TaSG8KEr6sdvvAxBVH
	 RxsaPG9NqrdLtzYjmjI1n/MogovMTr35xc9uT8ievGEisZyvlM6uVjFeP4WUWwevIJ
	 t9Xu115pWBORg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KiDXnsdvCs6B; Mon, 13 Feb 2023 16:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A9FD402A6;
	Mon, 13 Feb 2023 16:23:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A9FD402A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1273E1BF853
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E112141731
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E112141731
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CngcYQgd0hiU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Feb 2023 07:41:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAEB6400D7
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DAEB6400D7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:38 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVc-0003zf-Rq; Sat, 11 Feb 2023 08:41:20 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-004ALz-VP; Sat, 11 Feb 2023 08:41:17 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-00BftM-5b; Sat, 11 Feb 2023 08:41:15 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Sat, 11 Feb 2023 08:41:12 +0100
Message-Id: <20230211074113.2782508-9-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v8 8/9] net: phy: migrate
 phy_init_eee() to genphy_c45_eee_is_active()
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

Reduce code duplicated by migrating phy_init_eee() to
genphy_c45_eee_is_active().

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/phy/phy.c | 89 +++++++------------------------------------
 1 file changed, 14 insertions(+), 75 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 41cfb24c48c1..36533746630e 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -1457,30 +1457,6 @@ void phy_mac_interrupt(struct phy_device *phydev)
 }
 EXPORT_SYMBOL(phy_mac_interrupt);
 
-static void mmd_eee_adv_to_linkmode(unsigned long *advertising, u16 eee_adv)
-{
-	linkmode_zero(advertising);
-
-	if (eee_adv & MDIO_EEE_100TX)
-		linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
-				 advertising);
-	if (eee_adv & MDIO_EEE_1000T)
-		linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
-				 advertising);
-	if (eee_adv & MDIO_EEE_10GT)
-		linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
-				 advertising);
-	if (eee_adv & MDIO_EEE_1000KX)
-		linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
-				 advertising);
-	if (eee_adv & MDIO_EEE_10GKX4)
-		linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
-				 advertising);
-	if (eee_adv & MDIO_EEE_10GKR)
-		linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
-				 advertising);
-}
-
 /**
  * phy_init_eee - init and check the EEE feature
  * @phydev: target phy_device struct
@@ -1493,62 +1469,25 @@ static void mmd_eee_adv_to_linkmode(unsigned long *advertising, u16 eee_adv)
  */
 int phy_init_eee(struct phy_device *phydev, bool clk_stop_enable)
 {
+	int ret;
+
 	if (!phydev->drv)
 		return -EIO;
 
-	/* According to 802.3az,the EEE is supported only in full duplex-mode.
-	 */
-	if (phydev->duplex == DUPLEX_FULL) {
-		__ETHTOOL_DECLARE_LINK_MODE_MASK(common);
-		__ETHTOOL_DECLARE_LINK_MODE_MASK(lp);
-		__ETHTOOL_DECLARE_LINK_MODE_MASK(adv);
-		int eee_lp, eee_cap, eee_adv;
-		int status;
-		u32 cap;
-
-		/* Read phy status to properly get the right settings */
-		status = phy_read_status(phydev);
-		if (status)
-			return status;
-
-		/* First check if the EEE ability is supported */
-		eee_cap = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
-		if (eee_cap <= 0)
-			goto eee_exit_err;
-
-		cap = mmd_eee_cap_to_ethtool_sup_t(eee_cap);
-		if (!cap)
-			goto eee_exit_err;
-
-		/* Check which link settings negotiated and verify it in
-		 * the EEE advertising registers.
-		 */
-		eee_lp = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE);
-		if (eee_lp <= 0)
-			goto eee_exit_err;
-
-		eee_adv = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
-		if (eee_adv <= 0)
-			goto eee_exit_err;
-
-		mmd_eee_adv_to_linkmode(adv, eee_adv);
-		mmd_eee_adv_to_linkmode(lp, eee_lp);
-		linkmode_and(common, adv, lp);
-
-		if (!phy_check_valid(phydev->speed, phydev->duplex, common))
-			goto eee_exit_err;
+	ret = genphy_c45_eee_is_active(phydev, NULL, NULL, NULL);
+	if (ret < 0)
+		return ret;
+	if (!ret)
+		return -EPROTONOSUPPORT;
 
-		if (clk_stop_enable)
-			/* Configure the PHY to stop receiving xMII
-			 * clock while it is signaling LPI.
-			 */
-			phy_set_bits_mmd(phydev, MDIO_MMD_PCS, MDIO_CTRL1,
-					 MDIO_PCS_CTRL1_CLKSTOP_EN);
+	if (clk_stop_enable)
+		/* Configure the PHY to stop receiving xMII
+		 * clock while it is signaling LPI.
+		 */
+		ret = phy_set_bits_mmd(phydev, MDIO_MMD_PCS, MDIO_CTRL1,
+				       MDIO_PCS_CTRL1_CLKSTOP_EN);
 
-		return 0; /* EEE supported */
-	}
-eee_exit_err:
-	return -EPROTONOSUPPORT;
+	return ret < 0 ? ret : 0;
 }
 EXPORT_SYMBOL(phy_init_eee);
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
