Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D8468C34E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:30:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74A6E60B46;
	Mon,  6 Feb 2023 16:30:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74A6E60B46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675701021;
	bh=7voKLFbyMEXKXSq/mlSvhF1aeIyht7beiqEeEE4SJEc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mfg6lWnarCF//DjubPdwvOvhmc6J94dODbb/dZAagW7jAXYud7BJTrdjIZwLxZiSQ
	 eJX9vqC2xUM0SKIhb7T7CK1+W0xFZum03hRsG5k6yhiN6p/cvZnwLK9AqojQDG6LTN
	 /j5CIAv3DRt1VSI5stF1iYvQwRY9uUM786B4N2z7u75RV+5aYy2Zcy3aQhtrEySoy3
	 oi8aC6rV/t7NXaFBA6Pwo5kqyeCUjK4nrtNoabWjBicTzcQb72gmcXtvIWdiQ/awnH
	 RQLprKkle9PKIp648TF0lDSXYZE2bE0Q5s/PvKQPNjlnWaIcFmvBZ4pCB5+MQDyeTb
	 iJ41B1eDjGehA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cPw2zJTjk8qw; Mon,  6 Feb 2023 16:30:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58B5D60B38;
	Mon,  6 Feb 2023 16:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58B5D60B38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 102081BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E87B040230
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E87B040230
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wpdkaIR83OlE for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 13:51:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE9C640259
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE9C640259
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:43 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tZ-0007Kb-Ev; Mon, 06 Feb 2023 14:50:57 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tX-0034eh-81; Mon, 06 Feb 2023 14:50:56 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tU-00DaP1-FM; Mon, 06 Feb 2023 14:50:52 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Mon,  6 Feb 2023 14:50:36 +0100
Message-Id: <20230206135050.3237952-10-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v5 09/23] net: phy: start using
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
