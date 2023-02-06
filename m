Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA85F68C348
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:29:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76B5160B3C;
	Mon,  6 Feb 2023 16:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76B5160B3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675700996;
	bh=AhVONSP06vkVo1wMy9SYok1dbUWtADFT3htF2WkaJ2I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dPC0G8Knb+N0wjx6263H5Mr6W/v0Rf86hFTyU1NMpj/3HwfM3I8z+72czNta7sAGi
	 rqYkwqj16mVaD3jVQZmC+0uTdKR2eBA9+jpJpkXpP+5kTPDsEYB4g8vtx5Vq3tpJBu
	 sjW0nmWL65E21MaQj+ALUTJHz4yNSifQ4yi0meCCPtNvn2TxDPqi3vyHDB5aZZH0M6
	 ayAj4q3RcPaOV/LIJvahsvMtJi3Zltua9jZ7D652/wtMaB6aDRwTztSRmy0w39VB5P
	 IZFmp3z0R+yJ1tOAANASfO0QC1w0/UJl6epIo9uMr/EkbXpSnOTzgFVVJmm2SHjhRx
	 ak69M9HKQnqMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQ3ZjJeKT2Bx; Mon,  6 Feb 2023 16:29:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E2DF60B2D;
	Mon,  6 Feb 2023 16:29:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E2DF60B2D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C98A1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D0FC40360
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D0FC40360
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKWa2DlqWzkz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 13:51:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8FE2403B8
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C8FE2403B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:35 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tX-0007EO-4g; Mon, 06 Feb 2023 14:50:55 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tU-0034db-OC; Mon, 06 Feb 2023 14:50:53 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tU-00DaPA-I0; Mon, 06 Feb 2023 14:50:52 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Mon,  6 Feb 2023 14:50:37 +0100
Message-Id: <20230206135050.3237952-11-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v5 10/23] net: phy: add driver
 specific get/set_eee support
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

Not all PHYs can be handled by generic phy_ethtool_get/set_eee()
functions. So, add driver specific get/set_eee support.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/phy.c | 6 ++++++
 include/linux/phy.h   | 5 +++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 2f1041a7211e..c42df62df302 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -1520,6 +1520,9 @@ int phy_ethtool_get_eee(struct phy_device *phydev, struct ethtool_eee *data)
 	if (!phydev->drv)
 		return -EIO;
 
+	if (phydev->drv->get_eee)
+		return phydev->drv->get_eee(phydev, data);
+
 	return genphy_c45_ethtool_get_eee(phydev, data);
 }
 EXPORT_SYMBOL(phy_ethtool_get_eee);
@@ -1536,6 +1539,9 @@ int phy_ethtool_set_eee(struct phy_device *phydev, struct ethtool_eee *data)
 	if (!phydev->drv)
 		return -EIO;
 
+	if (phydev->drv->set_eee)
+		return phydev->drv->set_eee(phydev, data);
+
 	return genphy_c45_ethtool_set_eee(phydev, data);
 }
 EXPORT_SYMBOL(phy_ethtool_set_eee);
diff --git a/include/linux/phy.h b/include/linux/phy.h
index ef0e3212f68e..b14ca4b06607 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1051,6 +1051,11 @@ struct phy_driver {
 	/** @get_plca_status: Return the current PLCA status info */
 	int (*get_plca_status)(struct phy_device *dev,
 			       struct phy_plca_status *plca_st);
+
+	/** @get_eee: Return the current EEE configuration */
+	int (*get_eee)(struct phy_device *phydev, struct ethtool_eee *e);
+	/** @set_eee: Set the EEE configuration */
+	int (*set_eee)(struct phy_device *phydev, struct ethtool_eee *e);
 };
 #define to_phy_driver(d) container_of(to_mdio_common_driver(d),		\
 				      struct phy_driver, mdiodrv)
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
