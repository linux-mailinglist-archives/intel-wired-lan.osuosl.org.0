Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3454C686BA1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 17:27:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBBFC81EF6;
	Wed,  1 Feb 2023 16:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBBFC81EF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675268830;
	bh=NfKuzZRbAGCFV68K9RV3Je/mVcxB9QCSx1Wb8PXBR6Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7IjpUCy46ScpjuFM1pAwXAgzzMvLVsGg2GXY4t/Mc+rFCeIV81GqCppHVaRV8fEV6
	 aP6uiwmmkhFhIgmsdtypBE/no6rx+cDKvbGOznCkc7qshZfYgCPqsdQ2dUiVGakvR4
	 fCOPthzF5Y2Y+/9yVI0loCAm0KllQlPmRXtTbDkgmssDDpdYuREMg2XiIsqfv95kKJ
	 Oq+rDhbal5zuj3RBUkaXMjxZnLyT82K5FwY0nVDIRob0xvm6+4vKFCUD8j5pi+LYZ4
	 ZDyrtc26idXEEmZ+m1cXHhZgo6XtEsgI8mH9i/wpJZwjpzLnbdF1tapQ/yp2PGkKUY
	 wbtZbBblS5+mA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6GPswDI1I-h; Wed,  1 Feb 2023 16:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C058A81E75;
	Wed,  1 Feb 2023 16:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C058A81E75
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 217071BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0C04409E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0C04409E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VZZZXQoSu8QK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 15:17:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37C50409DE
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37C50409DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:37 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZc-0002rm-Vc; Wed, 01 Feb 2023 15:58:57 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-001w1r-5c; Wed, 01 Feb 2023 15:58:51 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZT-009hUz-9u; Wed, 01 Feb 2023 15:58:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Wed,  1 Feb 2023 15:58:25 +0100
Message-Id: <20230201145845.2312060-4-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v4 03/23] net: phy: micrel: add
 ksz9477_get_features()
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

KSZ8563R, which has same PHYID as KSZ9477 family, will change "EEE control
and capability 1" (Register 3.20) content depending on configuration of
"EEE advertisement 1" (Register 7.60). Changes on the 7.60 will affect
3.20 register.

So, instead of depending on register 3.20 driver should set supported_eee.

Proper supported_eee configuration is needed to make use of generic
PHY c45 set/get_eee functions provided by next patches.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index d5b80c31ab91..767c4111cb18 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -1370,6 +1370,26 @@ static int ksz9131_config_aneg(struct phy_device *phydev)
 	return genphy_config_aneg(phydev);
 }
 
+static int ksz9477_get_features(struct phy_device *phydev)
+{
+	int ret;
+
+	ret = genphy_read_abilities(phydev);
+	if (ret)
+		return ret;
+
+	/* The "EEE control and capability 1" (Register 3.20) seems to be
+	 * influenced by the "EEE advertisement 1" (Register 7.60). Changes
+	 * on the 7.60 will affect 3.20. So, we need to construct our own list
+	 * of caps.
+	 * KSZ8563R should have 100BaseTX/Full only.
+	 */
+	linkmode_and(phydev->supported_eee, phydev->supported,
+		     PHY_EEE_100_10000_FEATURES);
+
+	return 0;
+}
+
 #define KSZ8873MLL_GLOBAL_CONTROL_4	0x06
 #define KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX	BIT(6)
 #define KSZ8873MLL_GLOBAL_CONTROL_4_SPEED	BIT(4)
@@ -3422,6 +3442,7 @@ static struct phy_driver ksphy_driver[] = {
 	.handle_interrupt = kszphy_handle_interrupt,
 	.suspend	= genphy_suspend,
 	.resume		= genphy_resume,
+	.get_features	= ksz9477_get_features,
 } };
 
 module_phy_driver(ksphy_driver);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
