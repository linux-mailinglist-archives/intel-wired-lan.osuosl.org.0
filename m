Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E605D694C82
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 17:23:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A6D8403C7;
	Mon, 13 Feb 2023 16:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A6D8403C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676305423;
	bh=1MvwihrwQDQojm9yRsPWB1rW+kRgpgcuo1ispfTEqMk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eY4DOuV0XoWn9r+6dv/ao/AP77eLSNdgcaBuoHQ6TUAB/A8zM4p7Od7ospHestZGD
	 l6vdOjSQr5IeLzsUlT3gx1sHWJ33xdaeRkWhI3ulNB6dclfGh9I8WM0Tp546bVAD48
	 dGqmW6EwfuqqjVW/2ie+N4CUfU1FonPix2UUIghIHyzRXU5Cw14riADx4JUyrLGPX5
	 4VRPFOUjf9cfhYvXdVifHt3ezlWkwqDcaiOrDCXW43vWZvYX7Q0GV6FtiMbl7/Gkr7
	 YYIe1gWBTKnj2E4FtM7LV6s81A9aUbcO+LVZ+vxgSSbm8O2av+gQksf5xr29gNI4/u
	 CNMXGFEIcA+kA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uJfvOhv1VfOz; Mon, 13 Feb 2023 16:23:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1535440245;
	Mon, 13 Feb 2023 16:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1535440245
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0481A1BF421
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0D27822C9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0D27822C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ksRnYRBv-UzM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Feb 2023 07:41:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3C64822C6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3C64822C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:38 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVc-0003zb-Rs; Sat, 11 Feb 2023 08:41:20 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-004ALo-Pt; Sat, 11 Feb 2023 08:41:17 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-00BftV-6D; Sat, 11 Feb 2023 08:41:15 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Sat, 11 Feb 2023 08:41:13 +0100
Message-Id: <20230211074113.2782508-10-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v8 9/9] net: phy: start using
 genphy_c45_ethtool_get/set_eee()
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

All preparations are done. Now we can start using new functions and remove
the old code.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/phy/phy.c | 60 ++-----------------------------------------
 1 file changed, 2 insertions(+), 58 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 36533746630e..2f1041a7211e 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -1517,33 +1517,10 @@ EXPORT_SYMBOL(phy_get_eee_err);
  */
 int phy_ethtool_get_eee(struct phy_device *phydev, struct ethtool_eee *data)
 {
-	int val;
-
 	if (!phydev->drv)
 		return -EIO;
 
-	/* Get Supported EEE */
-	val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
-	if (val < 0)
-		return val;
-	data->supported = mmd_eee_cap_to_ethtool_sup_t(val);
-
-	/* Get advertisement EEE */
-	val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
-	if (val < 0)
-		return val;
-	data->advertised = mmd_eee_adv_to_ethtool_adv_t(val);
-	data->eee_enabled = !!data->advertised;
-
-	/* Get LP advertisement EEE */
-	val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE);
-	if (val < 0)
-		return val;
-	data->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(val);
-
-	data->eee_active = !!(data->advertised & data->lp_advertised);
-
-	return 0;
+	return genphy_c45_ethtool_get_eee(phydev, data);
 }
 EXPORT_SYMBOL(phy_ethtool_get_eee);
 
@@ -1556,43 +1533,10 @@ EXPORT_SYMBOL(phy_ethtool_get_eee);
  */
 int phy_ethtool_set_eee(struct phy_device *phydev, struct ethtool_eee *data)
 {
-	int cap, old_adv, adv = 0, ret;
-
 	if (!phydev->drv)
 		return -EIO;
 
-	/* Get Supported EEE */
-	cap = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
-	if (cap < 0)
-		return cap;
-
-	old_adv = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
-	if (old_adv < 0)
-		return old_adv;
-
-	if (data->eee_enabled) {
-		adv = !data->advertised ? cap :
-		      ethtool_adv_to_mmd_eee_adv_t(data->advertised) & cap;
-		/* Mask prohibited EEE modes */
-		adv &= ~phydev->eee_broken_modes;
-	}
-
-	if (old_adv != adv) {
-		ret = phy_write_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV, adv);
-		if (ret < 0)
-			return ret;
-
-		/* Restart autonegotiation so the new modes get sent to the
-		 * link partner.
-		 */
-		if (phydev->autoneg == AUTONEG_ENABLE) {
-			ret = phy_restart_aneg(phydev);
-			if (ret < 0)
-				return ret;
-		}
-	}
-
-	return 0;
+	return genphy_c45_ethtool_set_eee(phydev, data);
 }
 EXPORT_SYMBOL(phy_ethtool_set_eee);
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
