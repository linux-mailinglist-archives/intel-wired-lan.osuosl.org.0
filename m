Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0A7686B8E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 17:26:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF0E840A5D;
	Wed,  1 Feb 2023 16:26:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF0E840A5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675268801;
	bh=Ur7ozm2mlGRf1tyF92rCgxBmGJrVmLeamM+9C56PPaQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Td75F0wfzXgT8Ltn5ViTvSJetkcKQQDJpt/TY0NNoT5QESvGF0UUDJyPIu+d0OUMp
	 lC4lP2G0VOTmd6iakLn4vjUz+7ka0XamCFJODBoIyKkOIPduYsx+b4QZ15Ys244QSK
	 h/84HTIRVmMAXx5l7X/U796Ptxymi6trcyY3bxPbxDM1oCa39kr/x0CNfQLQT+ilaa
	 jsVof8LKUICXJtFSK4BOs1hzmFWfqRNF10P0zbNpEujnDvwZu8J2HtMgIxNwwgTCsp
	 NJkzCHwyXfsWw9ARYu1kUbvrgbQqhV9uNn5olzuV6KoePMqU7XOyOJ0mop0PmExTKY
	 I/LCAi2rwr8vA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jtR1n4CW1zxp; Wed,  1 Feb 2023 16:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B100340A37;
	Wed,  1 Feb 2023 16:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B100340A37
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABFDF1BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 920AA81EA2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 920AA81EA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nrcyWTwCY6Yk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 15:17:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFFA681E96
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DFFA681E96
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:23 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-0002ro-6K; Wed, 01 Feb 2023 15:58:52 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-001w1z-CZ; Wed, 01 Feb 2023 15:58:51 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZT-009hXS-JG; Wed, 01 Feb 2023 15:58:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Wed,  1 Feb 2023 15:58:42 +0100
Message-Id: <20230201145845.2312060-21-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v4 20/23] tg3: replace EEE
 ethtool helpers to linkmode variants
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

Replace EEE ethtool helpers with linkmode variants. This will
reduce similar code snippets and prepare ethtool EEE interface to linkmode
migration.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/ethernet/broadcom/tg3.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/tg3.c b/drivers/net/ethernet/broadcom/tg3.c
index 58747292521d..a3764e360d23 100644
--- a/drivers/net/ethernet/broadcom/tg3.c
+++ b/drivers/net/ethernet/broadcom/tg3.c
@@ -2339,6 +2339,8 @@ static void tg3_phy_apply_otp(struct tg3 *tp)
 
 static void tg3_eee_pull_config(struct tg3 *tp, struct ethtool_eee *eee)
 {
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(adv) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(lp) = {};
 	u32 val;
 	struct ethtool_eee *dest = &tp->eee;
 
@@ -2361,13 +2363,16 @@ static void tg3_eee_pull_config(struct tg3 *tp, struct ethtool_eee *eee)
 	/* Pull lp advertised settings */
 	if (tg3_phy_cl45_read(tp, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE, &val))
 		return;
-	dest->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(val);
+	mii_eee_100_10000_adv_mod_linkmode_t(lp, val);
+	ethtool_convert_link_mode_to_legacy_u32(&dest->lp_advertised, lp);
+
 
 	/* Pull advertised and eee_enabled settings */
 	if (tg3_phy_cl45_read(tp, MDIO_MMD_AN, MDIO_AN_EEE_ADV, &val))
 		return;
 	dest->eee_enabled = !!val;
-	dest->advertised = mmd_eee_adv_to_ethtool_adv_t(val);
+	mii_eee_100_10000_adv_mod_linkmode_t(adv, val);
+	ethtool_convert_link_mode_to_legacy_u32(&dest->advertised, adv);
 
 	/* Pull tx_lpi_enabled */
 	val = tr32(TG3_CPMU_EEE_MODE);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
