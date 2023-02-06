Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666F468C34A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:30:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6CE340499;
	Mon,  6 Feb 2023 16:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6CE340499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675701000;
	bh=SUagxt/C4jp0fFTzfT6DUS68tx1AUk4zW76KkyTTCq0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sB2W46ExUVARvCqJOF295Z7so14ixFQgK8XCIAPLQml9gKEmoyCIThyyaa4xch7zB
	 8HoaNkoAsnqSxPgrrVbYVgQEfMe3iAjrlyH72wlXe1pmjKJQP5IHMMNDi0yOhREui0
	 4x7YZtljuU7pKHGhDHr6H7RDWImnv5l7AQKgYTo/q77e3sd930b7aa5F8PF8akw9Jp
	 CazVEz8AUeq6Hstma/uvXGrtdHDe2BlUIcK2ur14jZNQOvyyi3Jo86dBLtM0NMkQcy
	 lAuyJCaWks9cR/XCmqtn0HJ1MQO5tq3JZWmVeW76wJKCDXzV2NSGkBRqwCvzU0s/4S
	 x15+6OrYd6ogw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id krSxQExiAajt; Mon,  6 Feb 2023 16:30:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2E624049E;
	Mon,  6 Feb 2023 16:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2E624049E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10BD91BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBB7940230
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBB7940230
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30zsXIrfsR2L for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 13:51:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD41740226
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DD41740226
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:37 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tX-0007Gh-Vh; Mon, 06 Feb 2023 14:50:56 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tV-0034dp-Q0; Mon, 06 Feb 2023 14:50:55 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tV-00DaRT-J6; Mon, 06 Feb 2023 14:50:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Mon,  6 Feb 2023 14:50:50 +0100
Message-Id: <20230206135050.3237952-24-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v5 23/23] net: mdio: drop EEE
 ethtool helpers in favor to linkmode variants
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

IEEE 802.3 specification provides more EEE capable link modes as this
helpers will be able to handle. So, remove them in favor of:
mii_eee_cap1_mod_linkmode_t
linkmode_to_mii_eee_cap1_t

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/linux/mdio.h | 83 --------------------------------------------
 1 file changed, 83 deletions(-)

diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index 6776eea770fa..082a9115b5e2 100644
--- a/include/linux/mdio.h
+++ b/include/linux/mdio.h
@@ -205,89 +205,6 @@ mdio45_ethtool_ksettings_get(const struct mdio_if_info *mdio,
 extern int mdio_mii_ioctl(const struct mdio_if_info *mdio,
 			  struct mii_ioctl_data *mii_data, int cmd);
 
-/**
- * mmd_eee_cap_to_ethtool_sup_t
- * @eee_cap: value of the MMD EEE Capability register
- *
- * A small helper function that translates MMD EEE Capability (3.20) bits
- * to ethtool supported settings.
- */
-static inline u32 mmd_eee_cap_to_ethtool_sup_t(u16 eee_cap)
-{
-	u32 supported = 0;
-
-	if (eee_cap & MDIO_EEE_100TX)
-		supported |= SUPPORTED_100baseT_Full;
-	if (eee_cap & MDIO_EEE_1000T)
-		supported |= SUPPORTED_1000baseT_Full;
-	if (eee_cap & MDIO_EEE_10GT)
-		supported |= SUPPORTED_10000baseT_Full;
-	if (eee_cap & MDIO_EEE_1000KX)
-		supported |= SUPPORTED_1000baseKX_Full;
-	if (eee_cap & MDIO_EEE_10GKX4)
-		supported |= SUPPORTED_10000baseKX4_Full;
-	if (eee_cap & MDIO_EEE_10GKR)
-		supported |= SUPPORTED_10000baseKR_Full;
-
-	return supported;
-}
-
-/**
- * mmd_eee_adv_to_ethtool_adv_t
- * @eee_adv: value of the MMD EEE Advertisement/Link Partner Ability registers
- *
- * A small helper function that translates the MMD EEE Advertisment (7.60)
- * and MMD EEE Link Partner Ability (7.61) bits to ethtool advertisement
- * settings.
- */
-static inline u32 mmd_eee_adv_to_ethtool_adv_t(u16 eee_adv)
-{
-	u32 adv = 0;
-
-	if (eee_adv & MDIO_EEE_100TX)
-		adv |= ADVERTISED_100baseT_Full;
-	if (eee_adv & MDIO_EEE_1000T)
-		adv |= ADVERTISED_1000baseT_Full;
-	if (eee_adv & MDIO_EEE_10GT)
-		adv |= ADVERTISED_10000baseT_Full;
-	if (eee_adv & MDIO_EEE_1000KX)
-		adv |= ADVERTISED_1000baseKX_Full;
-	if (eee_adv & MDIO_EEE_10GKX4)
-		adv |= ADVERTISED_10000baseKX4_Full;
-	if (eee_adv & MDIO_EEE_10GKR)
-		adv |= ADVERTISED_10000baseKR_Full;
-
-	return adv;
-}
-
-/**
- * ethtool_adv_to_mmd_eee_adv_t
- * @adv: the ethtool advertisement settings
- *
- * A small helper function that translates ethtool advertisement settings
- * to EEE advertisements for the MMD EEE Advertisement (7.60) and
- * MMD EEE Link Partner Ability (7.61) registers.
- */
-static inline u16 ethtool_adv_to_mmd_eee_adv_t(u32 adv)
-{
-	u16 reg = 0;
-
-	if (adv & ADVERTISED_100baseT_Full)
-		reg |= MDIO_EEE_100TX;
-	if (adv & ADVERTISED_1000baseT_Full)
-		reg |= MDIO_EEE_1000T;
-	if (adv & ADVERTISED_10000baseT_Full)
-		reg |= MDIO_EEE_10GT;
-	if (adv & ADVERTISED_1000baseKX_Full)
-		reg |= MDIO_EEE_1000KX;
-	if (adv & ADVERTISED_10000baseKX4_Full)
-		reg |= MDIO_EEE_10GKX4;
-	if (adv & ADVERTISED_10000baseKR_Full)
-		reg |= MDIO_EEE_10GKR;
-
-	return reg;
-}
-
 /**
  * linkmode_adv_to_mii_10gbt_adv_t
  * @advertising: the linkmode advertisement settings
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
