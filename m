Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0B068C338
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:29:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57D14404A3;
	Mon,  6 Feb 2023 16:29:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57D14404A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675700958;
	bh=27piTYeKVxWyKKPb0g0xkyiY8Y+MXeMm6kxx9UV0Ol4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vb1V1WCxBa4E87qwsyPql2v6hXnBlIDgWiAn1oN2Dn0YhjCmYIqd+TFCnVq/FUTl6
	 uT87Y66jQ7KA8exnT+7NjLooePPdSG2hg/tRlgdOSqzBlREyvUnGpcotpGx0S2D/qX
	 /X2PP6HsDeicjs8pOtxrci+G1dGIfUkLQYG48m96Ho9+J7mSaTw4w7lmoLMdiTXIDQ
	 sarqfEf5pqLM8XbtOKG+32bkFkFAuk9zRFOrQ0nAxR8L8e0ULBlERavPJ9L5ls/S2E
	 seGbaZmGrMXJMnuxGipG+SestIMEwW3oLwC7y7tmQi8JsNC8ovCY4VdGSisoFwSdah
	 bvN9gU5UiGZ8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCHpDTK03zWt; Mon,  6 Feb 2023 16:29:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49351403AC;
	Mon,  6 Feb 2023 16:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49351403AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05D0D1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF1F18135C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF1F18135C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nE-GNl9KgibR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 13:51:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A331481349
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A331481349
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 13:51:31 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tX-0007Fp-Oy; Mon, 06 Feb 2023 14:50:55 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tV-0034dn-LR; Mon, 06 Feb 2023 14:50:54 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pP1tU-00DaOI-4d; Mon, 06 Feb 2023 14:50:52 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Mon,  6 Feb 2023 14:50:31 +0100
Message-Id: <20230206135050.3237952-5-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v5 04/23] net: phy: export
 phy_check_valid() function
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

This function will be needed for genphy_c45_ethtool_get_eee() provided
by next patch.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/phy.c | 4 ++--
 include/linux/phy.h   | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 3378ca4f49b6..41cfb24c48c1 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -242,11 +242,11 @@ unsigned int phy_supported_speeds(struct phy_device *phy,
  *
  * Description: Returns true if there is a valid setting, false otherwise.
  */
-static inline bool phy_check_valid(int speed, int duplex,
-				   unsigned long *features)
+bool phy_check_valid(int speed, int duplex, unsigned long *features)
 {
 	return !!phy_lookup_setting(speed, duplex, features, true);
 }
+EXPORT_SYMBOL(phy_check_valid);
 
 /**
  * phy_sanitize_settings - make sure the PHY is set to supported speed and duplex
diff --git a/include/linux/phy.h b/include/linux/phy.h
index fc4d630bb1da..d6b078dd61dd 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1618,6 +1618,7 @@ int phy_start_aneg(struct phy_device *phydev);
 int phy_aneg_done(struct phy_device *phydev);
 int phy_speed_down(struct phy_device *phydev, bool sync);
 int phy_speed_up(struct phy_device *phydev);
+bool phy_check_valid(int speed, int duplex, unsigned long *features);
 
 int phy_restart_aneg(struct phy_device *phydev);
 int phy_reset_after_clk_enable(struct phy_device *phydev);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
