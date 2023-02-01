Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589CB686BA0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 17:27:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBC5540B69;
	Wed,  1 Feb 2023 16:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBC5540B69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675268826;
	bh=65a+eudCggsNzZPht70cy1nnb2esHmZA8Rm1qdw3iAQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OBS+VmRtMDL4bqtO6fExGxI1hYEU38bjCtGJLPvNjMuIO/Pz5iLFguWCnhcBonPut
	 qjjRJfbF2c5+y2VVHlQ4mscp4gxnQtHjrFy8HNWxoZ6tAglBZWX5hdUwqXYp8LjOqT
	 igI3HoBfVRDojK2/HHtaSta3o9A7lM4lQaFyV1SA+ciVXx3KB5gx6kS/MiriT2h880
	 t9g9/xntrpX4pM3EUAXNLNXiwL69ZtJU00U6OqjLmvJAx1bjndDJC1fx/kO68/D/vK
	 Tfglwp1I1bBbbMEPi4IlOQuHD0byN4aCt4+nAxc5vhoVpXxIRvBgWKUIHYqJfsUVN8
	 VEPN3l9visMlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C51FNu_HMmZE; Wed,  1 Feb 2023 16:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40A2940A90;
	Wed,  1 Feb 2023 16:27:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40A2940A90
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC47F1BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B2894196E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B2894196E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0myb7zTO2DKj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 15:17:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AECA41968
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AECA41968
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:35 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-0002ri-0K; Wed, 01 Feb 2023 15:58:52 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZX-001w1h-QP; Wed, 01 Feb 2023 15:58:50 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZT-009hW0-Dx; Wed, 01 Feb 2023 15:58:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Wed,  1 Feb 2023 15:58:32 +0100
Message-Id: <20230201145845.2312060-11-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v4 10/23] net: phy: add driver
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
index f8fbbf137ece..89556cb2c555 100644
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
