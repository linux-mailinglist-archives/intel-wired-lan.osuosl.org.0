Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7A466E37C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B8F16108B;
	Tue, 17 Jan 2023 16:24:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B8F16108B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972649;
	bh=/9m9A7k4qxb7or85MLceywuUXSMaCUunjp/SafNmvqc=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gJ/DskNPXpZkjjXmD/KXoMLnMyIIopP3TTf3tAwIhq3zMRdGbxvbG9cpNrNO/ZB1D
	 PCbPd1QO6rY+70JX8QxOr3LdW3fIrwT2921yYalNyJS4uBFsDKCW1lHdqcVAo/ouzA
	 yFQ5y9ZhVrpbPWDP4doX+IMnOJVaU8oa7CmbK1EMbw2Y+PEVZWzVhKLoqLUXXA++yR
	 TE3bEbAlM9HDmRa87g2ALcGnvs+XuHXT3SfBqZf8HEDAcqvVEe4U4mtILLgqjSkluc
	 lyXzw+fo6yBy8ufJKajXm7bMn4iUV+4OrP5WS38M+h0IUBlCkGfNGzk9jEMRlWloMc
	 SUvRh5iomGCkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X73gUqw3FZOq; Tue, 17 Jan 2023 16:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD39361081;
	Tue, 17 Jan 2023 16:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD39361081
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F05931BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D760640362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D760640362
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jL59jVJ8ZqkI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 23:58:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72D95402C2
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72D95402C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:46 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id 6F428D5C;
 Tue, 17 Jan 2023 00:52:44 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:16 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-1-0c53afa56aad@walle.cc>
References: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
In-Reply-To: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
To: Sean Wang <sean.wang@mediatek.com>, Landen Chao <Landen.Chao@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Byungho An <bh74.an@samsung.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta <salil.mehta@huawei.com>, 
 Tom Lendacky <thomas.lendacky@amd.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>
X-Mailer: b4 0.11.1
X-Mailman-Approved-At: Tue, 17 Jan 2023 16:23:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=walle.cc; s=mail2022082101; t=1673913164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fbfQoq+/nP40y3Od/7KPlEsF8XCF4vb8Tsl/JXpv37c=;
 b=RIRLUnFhk4lbuRdXBZHwvVY5XR0+dcNDfp4iMVgeUJ/UMEQKXYirRkgdpUGsMF3lEheMEu
 J7n7W4g5GkNe3Ys5h5VF9sorDHMDoon2yECEhIi6H+GgsOB58yXiBggLDlClmOgvMvYtuc
 JalLhD+AYTo6z6j+OUTifMY64KrLoQeoSOzrQQwQbDgxmGlfhhf1lrqUZztKAOuRTAXK1f
 kUqJqu9UC9YABe4lSZmAuB8eAa1kwA3Pl9ZUzsCuP9KGgYTaUswHOLtGA8/u+n4YrBxDx5
 xUqH6i3Zxn684NGuVXqt0uHK1+Xu2e86DjuAgPpa2ZFyVlOBAMl6EmWDewyUEg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=RIRLUnFh
Subject: [Intel-wired-lan] [PATCH net-next 01/12] net: dsa: mt7530: Separate
 C22 and C45 MDIO bus transactions
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Michael Walle <michael@walle.cc>, intel-wired-lan@lists.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrew Lunn <andrew@lunn.ch>

mt7530 does support C45, but its uses a mix of registering its MDIO
bus and providing its private MDIO bus to the DSA core, too. This makes
the change a bit more complex.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
v3 (the 'new' v1):
[mw] Remove dsa core comment
[mw] Rephrase commit message

v2:
[al] Remove conditional c45, since all switches support c45
[al] Remove dsa core changes, they are not needed
[al] Add comment that DSA provided MDIO bus is C22 only.
---
 drivers/net/dsa/mt7530.c | 87 ++++++++++++++++++++++++------------------------
 drivers/net/dsa/mt7530.h | 15 ++++++---
 2 files changed, 55 insertions(+), 47 deletions(-)

diff --git a/drivers/net/dsa/mt7530.c b/drivers/net/dsa/mt7530.c
index 908fa89444c9..616b21c90d05 100644
--- a/drivers/net/dsa/mt7530.c
+++ b/drivers/net/dsa/mt7530.c
@@ -608,17 +608,29 @@ mt7530_mib_reset(struct dsa_switch *ds)
 	mt7530_write(priv, MT7530_MIB_CCR, CCR_MIB_ACTIVATE);
 }
 
-static int mt7530_phy_read(struct mt7530_priv *priv, int port, int regnum)
+static int mt7530_phy_read_c22(struct mt7530_priv *priv, int port, int regnum)
 {
 	return mdiobus_read_nested(priv->bus, port, regnum);
 }
 
-static int mt7530_phy_write(struct mt7530_priv *priv, int port, int regnum,
-			    u16 val)
+static int mt7530_phy_write_c22(struct mt7530_priv *priv, int port, int regnum,
+				u16 val)
 {
 	return mdiobus_write_nested(priv->bus, port, regnum, val);
 }
 
+static int mt7530_phy_read_c45(struct mt7530_priv *priv, int port,
+			       int devad, int regnum)
+{
+	return mdiobus_c45_read_nested(priv->bus, port, devad, regnum);
+}
+
+static int mt7530_phy_write_c45(struct mt7530_priv *priv, int port, int devad,
+				int regnum, u16 val)
+{
+	return mdiobus_c45_write_nested(priv->bus, port, devad, regnum, val);
+}
+
 static int
 mt7531_ind_c45_phy_read(struct mt7530_priv *priv, int port, int devad,
 			int regnum)
@@ -670,7 +682,7 @@ mt7531_ind_c45_phy_read(struct mt7530_priv *priv, int port, int devad,
 
 static int
 mt7531_ind_c45_phy_write(struct mt7530_priv *priv, int port, int devad,
-			 int regnum, u32 data)
+			 int regnum, u16 data)
 {
 	struct mii_bus *bus = priv->bus;
 	struct mt7530_dummy_poll p;
@@ -793,55 +805,36 @@ mt7531_ind_c22_phy_write(struct mt7530_priv *priv, int port, int regnum,
 }
 
 static int
-mt7531_ind_phy_read(struct mt7530_priv *priv, int port, int regnum)
+mt753x_phy_read_c22(struct mii_bus *bus, int port, int regnum)
 {
-	int devad;
-	int ret;
-
-	if (regnum & MII_ADDR_C45) {
-		devad = (regnum >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-		ret = mt7531_ind_c45_phy_read(priv, port, devad,
-					      regnum & MII_REGADDR_C45_MASK);
-	} else {
-		ret = mt7531_ind_c22_phy_read(priv, port, regnum);
-	}
+	struct mt7530_priv *priv = bus->priv;
 
-	return ret;
+	return priv->info->phy_read_c22(priv, port, regnum);
 }
 
 static int
-mt7531_ind_phy_write(struct mt7530_priv *priv, int port, int regnum,
-		     u16 data)
+mt753x_phy_read_c45(struct mii_bus *bus, int port, int devad, int regnum)
 {
-	int devad;
-	int ret;
-
-	if (regnum & MII_ADDR_C45) {
-		devad = (regnum >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-		ret = mt7531_ind_c45_phy_write(priv, port, devad,
-					       regnum & MII_REGADDR_C45_MASK,
-					       data);
-	} else {
-		ret = mt7531_ind_c22_phy_write(priv, port, regnum, data);
-	}
+	struct mt7530_priv *priv = bus->priv;
 
-	return ret;
+	return priv->info->phy_read_c45(priv, port, devad, regnum);
 }
 
 static int
-mt753x_phy_read(struct mii_bus *bus, int port, int regnum)
+mt753x_phy_write_c22(struct mii_bus *bus, int port, int regnum, u16 val)
 {
 	struct mt7530_priv *priv = bus->priv;
 
-	return priv->info->phy_read(priv, port, regnum);
+	return priv->info->phy_write_c22(priv, port, regnum, val);
 }
 
 static int
-mt753x_phy_write(struct mii_bus *bus, int port, int regnum, u16 val)
+mt753x_phy_write_c45(struct mii_bus *bus, int port, int devad, int regnum,
+		     u16 val)
 {
 	struct mt7530_priv *priv = bus->priv;
 
-	return priv->info->phy_write(priv, port, regnum, val);
+	return priv->info->phy_write_c45(priv, port, devad, regnum, val);
 }
 
 static void
@@ -2086,8 +2079,10 @@ mt7530_setup_mdio(struct mt7530_priv *priv)
 	bus->priv = priv;
 	bus->name = KBUILD_MODNAME "-mii";
 	snprintf(bus->id, MII_BUS_ID_SIZE, KBUILD_MODNAME "-%d", idx++);
-	bus->read = mt753x_phy_read;
-	bus->write = mt753x_phy_write;
+	bus->read = mt753x_phy_read_c22;
+	bus->write = mt753x_phy_write_c22;
+	bus->read_c45 = mt753x_phy_read_c45;
+	bus->write_c45 = mt753x_phy_write_c45;
 	bus->parent = dev;
 	bus->phy_mask = ~ds->phys_mii_mask;
 
@@ -3182,8 +3177,10 @@ static const struct mt753x_info mt753x_table[] = {
 		.id = ID_MT7621,
 		.pcs_ops = &mt7530_pcs_ops,
 		.sw_setup = mt7530_setup,
-		.phy_read = mt7530_phy_read,
-		.phy_write = mt7530_phy_write,
+		.phy_read_c22 = mt7530_phy_read_c22,
+		.phy_write_c22 = mt7530_phy_write_c22,
+		.phy_read_c45 = mt7530_phy_read_c45,
+		.phy_write_c45 = mt7530_phy_write_c45,
 		.pad_setup = mt7530_pad_clk_setup,
 		.mac_port_get_caps = mt7530_mac_port_get_caps,
 		.mac_port_config = mt7530_mac_config,
@@ -3192,8 +3189,10 @@ static const struct mt753x_info mt753x_table[] = {
 		.id = ID_MT7530,
 		.pcs_ops = &mt7530_pcs_ops,
 		.sw_setup = mt7530_setup,
-		.phy_read = mt7530_phy_read,
-		.phy_write = mt7530_phy_write,
+		.phy_read_c22 = mt7530_phy_read_c22,
+		.phy_write_c22 = mt7530_phy_write_c22,
+		.phy_read_c45 = mt7530_phy_read_c45,
+		.phy_write_c45 = mt7530_phy_write_c45,
 		.pad_setup = mt7530_pad_clk_setup,
 		.mac_port_get_caps = mt7530_mac_port_get_caps,
 		.mac_port_config = mt7530_mac_config,
@@ -3202,8 +3201,10 @@ static const struct mt753x_info mt753x_table[] = {
 		.id = ID_MT7531,
 		.pcs_ops = &mt7531_pcs_ops,
 		.sw_setup = mt7531_setup,
-		.phy_read = mt7531_ind_phy_read,
-		.phy_write = mt7531_ind_phy_write,
+		.phy_read_c22 = mt7531_ind_c22_phy_read,
+		.phy_write_c22 = mt7531_ind_c22_phy_write,
+		.phy_read_c45 = mt7531_ind_c45_phy_read,
+		.phy_write_c45 = mt7531_ind_c45_phy_write,
 		.pad_setup = mt7531_pad_setup,
 		.cpu_port_config = mt7531_cpu_port_config,
 		.mac_port_get_caps = mt7531_mac_port_get_caps,
@@ -3263,7 +3264,7 @@ mt7530_probe(struct mdio_device *mdiodev)
 	 * properly.
 	 */
 	if (!priv->info->sw_setup || !priv->info->pad_setup ||
-	    !priv->info->phy_read || !priv->info->phy_write ||
+	    !priv->info->phy_read_c22 || !priv->info->phy_write_c22 ||
 	    !priv->info->mac_port_get_caps ||
 	    !priv->info->mac_port_config)
 		return -EINVAL;
diff --git a/drivers/net/dsa/mt7530.h b/drivers/net/dsa/mt7530.h
index e8d966435350..6b2fc6290ea8 100644
--- a/drivers/net/dsa/mt7530.h
+++ b/drivers/net/dsa/mt7530.h
@@ -750,8 +750,10 @@ struct mt753x_pcs {
 /* struct mt753x_info -	This is the main data structure for holding the specific
  *			part for each supported device
  * @sw_setup:		Holding the handler to a device initialization
- * @phy_read:		Holding the way reading PHY port
- * @phy_write:		Holding the way writing PHY port
+ * @phy_read_c22:	Holding the way reading PHY port using C22
+ * @phy_write_c22:	Holding the way writing PHY port using C22
+ * @phy_read_c45:	Holding the way reading PHY port using C45
+ * @phy_write_c45:	Holding the way writing PHY port using C45
  * @pad_setup:		Holding the way setting up the bus pad for a certain
  *			MAC port
  * @phy_mode_supported:	Check if the PHY type is being supported on a certain
@@ -767,8 +769,13 @@ struct mt753x_info {
 	const struct phylink_pcs_ops *pcs_ops;
 
 	int (*sw_setup)(struct dsa_switch *ds);
-	int (*phy_read)(struct mt7530_priv *priv, int port, int regnum);
-	int (*phy_write)(struct mt7530_priv *priv, int port, int regnum, u16 val);
+	int (*phy_read_c22)(struct mt7530_priv *priv, int port, int regnum);
+	int (*phy_write_c22)(struct mt7530_priv *priv, int port, int regnum,
+			     u16 val);
+	int (*phy_read_c45)(struct mt7530_priv *priv, int port, int devad,
+			    int regnum);
+	int (*phy_write_c45)(struct mt7530_priv *priv, int port, int devad,
+			     int regnum, u16 val);
 	int (*pad_setup)(struct dsa_switch *ds, phy_interface_t interface);
 	int (*cpu_port_config)(struct dsa_switch *ds, int port);
 	void (*mac_port_get_caps)(struct dsa_switch *ds, int port,

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
