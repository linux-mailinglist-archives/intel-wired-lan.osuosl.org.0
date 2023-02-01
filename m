Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD93686B7B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 17:25:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07E9B4198F;
	Wed,  1 Feb 2023 16:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07E9B4198F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675268752;
	bh=xbNihxi/FpIp42wiBDE1XdomNQPAOuRE9SJ+2cqVSTA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xt1+uguB6vuq6lGgJHOPUOfK7z71Z60oLMpqQFO1yFzdbrTjztVZE/Po95ruJfy7r
	 9LZezpWVxVWML5KRnb0sBD3eceqqsawGDe4wz1MUtTSRYdog1vHz5NwJMFOdz0U1mA
	 naqyzTpz8bOr+BQcv0yIjKCkNSJwpjcRaWX+AlmyX+XQHSb9YlwMsZvu06djkik94t
	 YMLUT0siYvoM4OXYNVC+2+s/NKWreMTxxT0iir0LXDfzc2phSLIWeAn/WNiE6xMTpk
	 ZXf1UQJFzstuvYhi/ZTuDQHanngaMKMTyDmRJFSoXaaErxgf3YWGVAruAnZvk4V2sf
	 FyFKaAf6PPIyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtiuwueiSveX; Wed,  1 Feb 2023 16:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B29C0418F5;
	Wed,  1 Feb 2023 16:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B29C0418F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20F671BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED2DD81E9A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED2DD81E9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ac0Bp2_qBwZa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 15:17:00 +0000 (UTC)
X-Greylist: delayed 00:17:49 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B793A81E96
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B793A81E96
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:00 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-0002rf-0D; Wed, 01 Feb 2023 15:58:52 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZX-001w1V-48; Wed, 01 Feb 2023 15:58:50 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZT-009hWs-H9; Wed, 01 Feb 2023 15:58:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Wed,  1 Feb 2023 15:58:38 +0100
Message-Id: <20230201145845.2312060-17-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v4 16/23] net: fec: add support
 for PHYs with SmartEEE support
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

Ethernet controller in i.MX6*/i.MX7* series do not provide EEE support.
But this chips are used sometimes in combinations with SmartEEE capable
PHYs.
So, instead of aborting get/set_eee access on MACs without EEE support,
ask PHY if it is able to do the EEE job by using SmartEEE.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/ethernet/freescale/fec_main.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/freescale/fec_main.c b/drivers/net/ethernet/freescale/fec_main.c
index 5ff45b1a74a5..fb5c050f3fd3 100644
--- a/drivers/net/ethernet/freescale/fec_main.c
+++ b/drivers/net/ethernet/freescale/fec_main.c
@@ -3102,8 +3102,15 @@ fec_enet_get_eee(struct net_device *ndev, struct ethtool_eee *edata)
 	struct fec_enet_private *fep = netdev_priv(ndev);
 	struct ethtool_eee *p = &fep->eee;
 
-	if (!(fep->quirks & FEC_QUIRK_HAS_EEE))
-		return -EOPNOTSUPP;
+	if (!(fep->quirks & FEC_QUIRK_HAS_EEE)) {
+		if (!netif_running(ndev))
+			return -ENETDOWN;
+
+		if (!phy_has_smarteee(ndev->phydev))
+			return -EOPNOTSUPP;
+
+		return phy_ethtool_get_eee(ndev->phydev, edata);
+	}
 
 	if (!netif_running(ndev))
 		return -ENETDOWN;
@@ -3123,8 +3130,15 @@ fec_enet_set_eee(struct net_device *ndev, struct ethtool_eee *edata)
 	struct ethtool_eee *p = &fep->eee;
 	int ret = 0;
 
-	if (!(fep->quirks & FEC_QUIRK_HAS_EEE))
-		return -EOPNOTSUPP;
+	if (!(fep->quirks & FEC_QUIRK_HAS_EEE)) {
+		if (!netif_running(ndev))
+			return -ENETDOWN;
+
+		if (!phy_has_smarteee(ndev->phydev))
+			return -EOPNOTSUPP;
+
+		return phy_ethtool_set_eee(ndev->phydev, edata);
+	}
 
 	if (!netif_running(ndev))
 		return -ENETDOWN;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
