Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 969BD686B83
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 17:26:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35FF781E31;
	Wed,  1 Feb 2023 16:26:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35FF781E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675268785;
	bh=IWLSelHjOfGAC5dVbEhWHz6zCIAPv6fgIpvdQmFNzkc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eoBs4eDG1gK7yK93ByeWOTr0x+360OUABoLqbrGBfvFIR2X+x8/CPzVWdz09epg1H
	 vjniv1GxdYwVglUdXXtcxXs3V6H85DDmR1HqYiB2tqzcJk2QSSMLkZo35e8gTxGVWD
	 Bx99kgkgUqm5vxOlpPTZ+OeUn6lTBnKpyqBsRGZjhPIivAoL9kWQIUAkmf+eoGp7c4
	 5VFamec85uqmij0uHl1VANeXJ3j+eGXeqgWnja4YU6WVKsH1DeAi6XsbkezWZ6yZ1a
	 PGs9kYWkyaXKUCutmSYKHDDCoRKJEwTev7sGBYz1abvCHbA8q7GvnV0T49O45ENcN3
	 2zeFw6Gim5+yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MnAjaNHRPfAY; Wed,  1 Feb 2023 16:26:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 392F481371;
	Wed,  1 Feb 2023 16:26:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 392F481371
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EA0D1BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 385B781EA2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 385B781EA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1upbhGTNRrid for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 15:17:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72FB581E96
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 72FB581E96
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:16 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-0002s6-Sa; Wed, 01 Feb 2023 15:58:52 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-001w2B-Ng; Wed, 01 Feb 2023 15:58:51 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZT-009hXt-Ko; Wed, 01 Feb 2023 15:58:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Wed,  1 Feb 2023 15:58:45 +0100
Message-Id: <20230201145845.2312060-24-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v4 23/23] net: mdio: drop EEE
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

IEEE 802.3 specification provides more EEE capable link modes as this helpers
will be able to handle. So, remove them in favor of:
mii_eee_100_10000_adv_mod_linkmode_t
linkmode_adv_to_mii_eee_100_10000_adv_t

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/linux/mdio.h | 83 --------------------------------------------
 1 file changed, 83 deletions(-)

diff --git a/include/linux/mdio.h b/include/linux/mdio.h
index fcd5492e4993..492ec2de24ac 100644
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
