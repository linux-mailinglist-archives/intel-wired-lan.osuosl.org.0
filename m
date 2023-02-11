Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12541694C90
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 17:24:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D379410BB;
	Mon, 13 Feb 2023 16:24:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D379410BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676305453;
	bh=YB106DdWgji4vk7QxDeG/pyQq55lK1sTD+lectaLtWc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sCjdWCKo5CiwkZEy7iHwS/KJ19bS6WHM9m5vntt/Gd+aK2SAcoQAmBYiQivxBkEYu
	 kUwaavL6eF9eub6gFTYfiu1wDFvrLzuKW+vh9O52+tNbeK6BGMXRf0ANXeE2JDo5yn
	 nLVlG0pabgpuSdqj1v+ibRiR7jwNWDelI22nWIXM/qoCh6O52WIPvbx7yG5yaFpXfL
	 o2r6+RwNZ2S37ZTQj2tOF4RUOS1fPhLP1hCOFlo8Z5cIeyWmloVP6aEdzOp4GO0h9x
	 j69CGp8BevRseIPBsfHvS/EYBFShoTX+eh3PzRKua6r6HWomSEMCsrLXo97NkeVWX7
	 0y14cjY/4aeFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQt3DmcXDcbv; Mon, 13 Feb 2023 16:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 228FC402A6;
	Mon, 13 Feb 2023 16:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 228FC402A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 251F21BF421
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63D7041731
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63D7041731
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RmZmt8LQxKlj for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Feb 2023 07:41:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8700B41733
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8700B41733
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Feb 2023 07:41:40 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVc-0003zZ-Rr; Sat, 11 Feb 2023 08:41:20 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-004ALj-Lz; Sat, 11 Feb 2023 08:41:16 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pQkVX-00BfsL-0r; Sat, 11 Feb 2023 08:41:15 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Sat, 11 Feb 2023 08:41:05 +0100
Message-Id: <20230211074113.2782508-2-o.rempel@pengutronix.de>
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
Subject: [Intel-wired-lan] [PATCH net-next v8 1/9] net: dsa: microchip:
 enable EEE support
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

Some of KSZ9477 family switches provides EEE support. To enable it, we
just need to register set_mac_eee/set_mac_eee handlers and validate
supported chip version and port.

Currently supported chip variants are: KSZ8563, KSZ9477, KSZ9563,
KSZ9567, KSZ9893, KSZ9896, KSZ9897. KSZ8563 supports EEE only with
100BaseTX/Full.  Other chips support 100BaseTX/Full and 1000BaseTX/Full.
Low Power Idle configuration is not supported and currently not
documented in the datasheets.

EEE PHY specific tunings are not documented in the switch datasheets, but can
overlap with KSZ9131 specification.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Acked-by: Arun Ramadoss <arun.ramadoss@microchip.com>
---
 drivers/net/dsa/microchip/ksz_common.c | 66 ++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/drivers/net/dsa/microchip/ksz_common.c b/drivers/net/dsa/microchip/ksz_common.c
index 46becc0382d6..729b36eeb2c4 100644
--- a/drivers/net/dsa/microchip/ksz_common.c
+++ b/drivers/net/dsa/microchip/ksz_common.c
@@ -2673,6 +2673,70 @@ static int ksz_max_mtu(struct dsa_switch *ds, int port)
 	return -EOPNOTSUPP;
 }
 
+static int ksz_validate_eee(struct dsa_switch *ds, int port)
+{
+	struct ksz_device *dev = ds->priv;
+
+	if (!dev->info->internal_phy[port])
+		return -EOPNOTSUPP;
+
+	switch (dev->chip_id) {
+	case KSZ8563_CHIP_ID:
+	case KSZ9477_CHIP_ID:
+	case KSZ9563_CHIP_ID:
+	case KSZ9567_CHIP_ID:
+	case KSZ9893_CHIP_ID:
+	case KSZ9896_CHIP_ID:
+	case KSZ9897_CHIP_ID:
+		return 0;
+	}
+
+	return -EOPNOTSUPP;
+}
+
+static int ksz_get_mac_eee(struct dsa_switch *ds, int port,
+			   struct ethtool_eee *e)
+{
+	int ret;
+
+	ret = ksz_validate_eee(ds, port);
+	if (ret)
+		return ret;
+
+	/* There is no documented control of Tx LPI configuration. */
+	e->tx_lpi_enabled = true;
+
+	/* There is no documented control of Tx LPI timer. According to tests
+	 * Tx LPI timer seems to be set by default to minimal value.
+	 */
+	e->tx_lpi_timer = 0;
+
+	return 0;
+}
+
+static int ksz_set_mac_eee(struct dsa_switch *ds, int port,
+			   struct ethtool_eee *e)
+{
+	struct ksz_device *dev = ds->priv;
+	int ret;
+
+	ret = ksz_validate_eee(ds, port);
+	if (ret)
+		return ret;
+
+	if (!e->tx_lpi_enabled) {
+		dev_err(dev->dev, "Disabling EEE Tx LPI is not supported\n");
+		return -EINVAL;
+	}
+
+	if (e->tx_lpi_timer) {
+		dev_err(dev->dev, "Setting EEE Tx LPI timer is not supported\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static void ksz_set_xmii(struct ksz_device *dev, int port,
 			 phy_interface_t interface)
 {
@@ -3130,6 +3194,8 @@ static const struct dsa_switch_ops ksz_switch_ops = {
 	.port_txtstamp		= ksz_port_txtstamp,
 	.port_rxtstamp		= ksz_port_rxtstamp,
 	.port_setup_tc		= ksz_setup_tc,
+	.get_mac_eee		= ksz_get_mac_eee,
+	.set_mac_eee		= ksz_set_mac_eee,
 };
 
 struct ksz_device *ksz_switch_alloc(struct device *base, void *priv)
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
