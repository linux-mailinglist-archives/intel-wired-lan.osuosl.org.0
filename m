Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B86466E383
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:24:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEB6341832;
	Tue, 17 Jan 2023 16:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEB6341832
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972669;
	bh=TK3c4XF5q8WSeGx2UBA2zO9Qwhua4UFW4AyfxZUL9Pg=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qS1ZazmoU4kEv5r2MbKWUAuqhZIm0ISJLAa/+B+6kS1e46rxsvwVwDOVIVkAu2oPO
	 tppSjGf6/zure3v3iSuQFH+Mrj6WHcigO7mhWFK2nYFHyireXJpD349q8zvkol6/MB
	 IUyKICMFTfzEXo/NXvfY5//Ydr8CFTLnZbZsvPk3HNnK5yUXKXFwgfsqYD00gcvK9k
	 +2wXRdvWPv4f7p8ymPzFM5MxZAdR8Al5cADZmUBXMYLvjvzUvLsDiL/UjMrYFdzuAu
	 R+YEsZsT7NOzi9aybTe4XkCBls7wxRhvqJgpMUkHUeyFU/wS2gkJDggTDwub8nta87
	 8gG8bAKoRGVjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vKdO2KPjjLv4; Tue, 17 Jan 2023 16:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C229402C8;
	Tue, 17 Jan 2023 16:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C229402C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 436E71BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5FAC280CC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FAC280CC8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ufc1nWIoVxlA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 00:03:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52C2D80DB4
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52C2D80DB4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:44 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id 2B4AF1A07;
 Tue, 17 Jan 2023 00:52:50 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:25 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-10-0c53afa56aad@walle.cc>
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
 d=walle.cc; s=mail2022082101; t=1673913170;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fRnrZfwUNJp2IC+ysULsHp9fJlB7cZ3Z/7z1oE7VHLk=;
 b=18nYmw1ZzKt9SdoRatWrAq/uSj+xNfpSivkKWAE1vnYD55Gox9PlHJPByiRafi31nONmSq
 1X6VAdHXUfB0PVK0xVODgP6gShYhma8kU1cvmTbHg53jrqNYH3DyR4CKC/5/5AGMGd6DFS
 p/6ir9U0U0dEndLbublpwLroqVSb2iKvzWH1N57DgLDc2vo3JHrKfAkptS2Hojp+iUlYsE
 I0vkjOv5YBm6j3A1SwBdi8cT+qJ+ZYK3uRKOR5k7zDfeJ3wC0K2WzhFaYOnbXbFVC2cFor
 rf2CVH6+ys1lOBHLqhcM6INYECWdi5HgfRX4IucvCXb4PBzfMwS1MzgZ2AEHBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=18nYmw1Z
Subject: [Intel-wired-lan] [PATCH net-next 10/12] net: dsa: sja1105: C45
 only transactions for PCS
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

The sja1105 MDIO bus driver only supports C45 transfers. Update the
function names to make this clear, pass the mmd as a parameter, and
register the accessors to the _c45 ops of the bus driver structure.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/dsa/sja1105/sja1105.h      | 16 ++++++++-----
 drivers/net/dsa/sja1105/sja1105_mdio.c | 44 ++++++++++------------------------
 drivers/net/dsa/sja1105/sja1105_spi.c  | 24 +++++++++----------
 3 files changed, 35 insertions(+), 49 deletions(-)

diff --git a/drivers/net/dsa/sja1105/sja1105.h b/drivers/net/dsa/sja1105/sja1105.h
index 9ba2ec2b966d..fb1549a5fe32 100644
--- a/drivers/net/dsa/sja1105/sja1105.h
+++ b/drivers/net/dsa/sja1105/sja1105.h
@@ -149,8 +149,10 @@ struct sja1105_info {
 	bool (*rxtstamp)(struct dsa_switch *ds, int port, struct sk_buff *skb);
 	void (*txtstamp)(struct dsa_switch *ds, int port, struct sk_buff *skb);
 	int (*clocking_setup)(struct sja1105_private *priv);
-	int (*pcs_mdio_read)(struct mii_bus *bus, int phy, int reg);
-	int (*pcs_mdio_write)(struct mii_bus *bus, int phy, int reg, u16 val);
+	int (*pcs_mdio_read_c45)(struct mii_bus *bus, int phy, int mmd,
+				 int reg);
+	int (*pcs_mdio_write_c45)(struct mii_bus *bus, int phy, int mmd,
+				  int reg, u16 val);
 	int (*disable_microcontroller)(struct sja1105_private *priv);
 	const char *name;
 	bool supports_mii[SJA1105_MAX_NUM_PORTS];
@@ -303,10 +305,12 @@ void sja1105_frame_memory_partitioning(struct sja1105_private *priv);
 /* From sja1105_mdio.c */
 int sja1105_mdiobus_register(struct dsa_switch *ds);
 void sja1105_mdiobus_unregister(struct dsa_switch *ds);
-int sja1105_pcs_mdio_read(struct mii_bus *bus, int phy, int reg);
-int sja1105_pcs_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val);
-int sja1110_pcs_mdio_read(struct mii_bus *bus, int phy, int reg);
-int sja1110_pcs_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val);
+int sja1105_pcs_mdio_read_c45(struct mii_bus *bus, int phy, int mmd, int reg);
+int sja1105_pcs_mdio_write_c45(struct mii_bus *bus, int phy, int mmd, int reg,
+			       u16 val);
+int sja1110_pcs_mdio_read_c45(struct mii_bus *bus, int phy, int mmd, int reg);
+int sja1110_pcs_mdio_write_c45(struct mii_bus *bus, int phy, int mmd, int reg,
+			       u16 val);
 
 /* From sja1105_devlink.c */
 int sja1105_devlink_setup(struct dsa_switch *ds);
diff --git a/drivers/net/dsa/sja1105/sja1105_mdio.c b/drivers/net/dsa/sja1105/sja1105_mdio.c
index 4059fcc8c832..8f1fcaf8e1d9 100644
--- a/drivers/net/dsa/sja1105/sja1105_mdio.c
+++ b/drivers/net/dsa/sja1105/sja1105_mdio.c
@@ -7,20 +7,15 @@
 
 #define SJA1110_PCS_BANK_REG		SJA1110_SPI_ADDR(0x3fc)
 
-int sja1105_pcs_mdio_read(struct mii_bus *bus, int phy, int reg)
+int sja1105_pcs_mdio_read_c45(struct mii_bus *bus, int phy, int mmd, int reg)
 {
 	struct sja1105_mdio_private *mdio_priv = bus->priv;
 	struct sja1105_private *priv = mdio_priv->priv;
 	u64 addr;
 	u32 tmp;
-	u16 mmd;
 	int rc;
 
-	if (!(reg & MII_ADDR_C45))
-		return -EINVAL;
-
-	mmd = (reg >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-	addr = (mmd << 16) | (reg & GENMASK(15, 0));
+	addr = (mmd << 16) | reg;
 
 	if (mmd != MDIO_MMD_VEND1 && mmd != MDIO_MMD_VEND2)
 		return 0xffff;
@@ -37,19 +32,15 @@ int sja1105_pcs_mdio_read(struct mii_bus *bus, int phy, int reg)
 	return tmp & 0xffff;
 }
 
-int sja1105_pcs_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
+int sja1105_pcs_mdio_write_c45(struct mii_bus *bus, int phy, int mmd,
+			       int reg, u16 val)
 {
 	struct sja1105_mdio_private *mdio_priv = bus->priv;
 	struct sja1105_private *priv = mdio_priv->priv;
 	u64 addr;
 	u32 tmp;
-	u16 mmd;
-
-	if (!(reg & MII_ADDR_C45))
-		return -EINVAL;
 
-	mmd = (reg >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-	addr = (mmd << 16) | (reg & GENMASK(15, 0));
+	addr = (mmd << 16) | reg;
 	tmp = val;
 
 	if (mmd != MDIO_MMD_VEND1 && mmd != MDIO_MMD_VEND2)
@@ -58,7 +49,7 @@ int sja1105_pcs_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
 	return sja1105_xfer_u32(priv, SPI_WRITE, addr, &tmp, NULL);
 }
 
-int sja1110_pcs_mdio_read(struct mii_bus *bus, int phy, int reg)
+int sja1110_pcs_mdio_read_c45(struct mii_bus *bus, int phy, int mmd, int reg)
 {
 	struct sja1105_mdio_private *mdio_priv = bus->priv;
 	struct sja1105_private *priv = mdio_priv->priv;
@@ -66,17 +57,12 @@ int sja1110_pcs_mdio_read(struct mii_bus *bus, int phy, int reg)
 	int offset, bank;
 	u64 addr;
 	u32 tmp;
-	u16 mmd;
 	int rc;
 
-	if (!(reg & MII_ADDR_C45))
-		return -EINVAL;
-
 	if (regs->pcs_base[phy] == SJA1105_RSV_ADDR)
 		return -ENODEV;
 
-	mmd = (reg >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-	addr = (mmd << 16) | (reg & GENMASK(15, 0));
+	addr = (mmd << 16) | reg;
 
 	if (mmd == MDIO_MMD_VEND2 && (reg & GENMASK(15, 0)) == MII_PHYSID1)
 		return NXP_SJA1110_XPCS_ID >> 16;
@@ -108,7 +94,8 @@ int sja1110_pcs_mdio_read(struct mii_bus *bus, int phy, int reg)
 	return tmp & 0xffff;
 }
 
-int sja1110_pcs_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
+int sja1110_pcs_mdio_write_c45(struct mii_bus *bus, int phy, int reg, int mmd,
+			       u16 val)
 {
 	struct sja1105_mdio_private *mdio_priv = bus->priv;
 	struct sja1105_private *priv = mdio_priv->priv;
@@ -116,17 +103,12 @@ int sja1110_pcs_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
 	int offset, bank;
 	u64 addr;
 	u32 tmp;
-	u16 mmd;
 	int rc;
 
-	if (!(reg & MII_ADDR_C45))
-		return -EINVAL;
-
 	if (regs->pcs_base[phy] == SJA1105_RSV_ADDR)
 		return -ENODEV;
 
-	mmd = (reg >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-	addr = (mmd << 16) | (reg & GENMASK(15, 0));
+	addr = (mmd << 16) | reg;
 
 	bank = addr >> 8;
 	offset = addr & GENMASK(7, 0);
@@ -398,7 +380,7 @@ static int sja1105_mdiobus_pcs_register(struct sja1105_private *priv)
 	int rc = 0;
 	int port;
 
-	if (!priv->info->pcs_mdio_read || !priv->info->pcs_mdio_write)
+	if (!priv->info->pcs_mdio_read_c45 || !priv->info->pcs_mdio_write_c45)
 		return 0;
 
 	bus = mdiobus_alloc_size(sizeof(*mdio_priv));
@@ -408,8 +390,8 @@ static int sja1105_mdiobus_pcs_register(struct sja1105_private *priv)
 	bus->name = "SJA1105 PCS MDIO bus";
 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s-pcs",
 		 dev_name(ds->dev));
-	bus->read = priv->info->pcs_mdio_read;
-	bus->write = priv->info->pcs_mdio_write;
+	bus->read_c45 = priv->info->pcs_mdio_read_c45;
+	bus->write_c45 = priv->info->pcs_mdio_write_c45;
 	bus->parent = ds->dev;
 	/* There is no PHY on this MDIO bus => mask out all PHY addresses
 	 * from auto probing.
diff --git a/drivers/net/dsa/sja1105/sja1105_spi.c b/drivers/net/dsa/sja1105/sja1105_spi.c
index d3c9ad6d39d4..5ce29c8057a4 100644
--- a/drivers/net/dsa/sja1105/sja1105_spi.c
+++ b/drivers/net/dsa/sja1105/sja1105_spi.c
@@ -719,8 +719,8 @@ const struct sja1105_info sja1105r_info = {
 	.ptp_cmd_packing	= sja1105pqrs_ptp_cmd_packing,
 	.rxtstamp		= sja1105_rxtstamp,
 	.clocking_setup		= sja1105_clocking_setup,
-	.pcs_mdio_read		= sja1105_pcs_mdio_read,
-	.pcs_mdio_write		= sja1105_pcs_mdio_write,
+	.pcs_mdio_read_c45	= sja1105_pcs_mdio_read_c45,
+	.pcs_mdio_write_c45	= sja1105_pcs_mdio_write_c45,
 	.regs			= &sja1105pqrs_regs,
 	.port_speed		= {
 		[SJA1105_SPEED_AUTO] = 0,
@@ -756,8 +756,8 @@ const struct sja1105_info sja1105s_info = {
 	.ptp_cmd_packing	= sja1105pqrs_ptp_cmd_packing,
 	.rxtstamp		= sja1105_rxtstamp,
 	.clocking_setup		= sja1105_clocking_setup,
-	.pcs_mdio_read		= sja1105_pcs_mdio_read,
-	.pcs_mdio_write		= sja1105_pcs_mdio_write,
+	.pcs_mdio_read_c45	= sja1105_pcs_mdio_read_c45,
+	.pcs_mdio_write_c45	= sja1105_pcs_mdio_write_c45,
 	.port_speed		= {
 		[SJA1105_SPEED_AUTO] = 0,
 		[SJA1105_SPEED_10MBPS] = 3,
@@ -794,8 +794,8 @@ const struct sja1105_info sja1110a_info = {
 	.rxtstamp		= sja1110_rxtstamp,
 	.txtstamp		= sja1110_txtstamp,
 	.disable_microcontroller = sja1110_disable_microcontroller,
-	.pcs_mdio_read		= sja1110_pcs_mdio_read,
-	.pcs_mdio_write		= sja1110_pcs_mdio_write,
+	.pcs_mdio_read_c45	= sja1110_pcs_mdio_read_c45,
+	.pcs_mdio_write_c45	= sja1110_pcs_mdio_write_c45,
 	.port_speed		= {
 		[SJA1105_SPEED_AUTO] = 0,
 		[SJA1105_SPEED_10MBPS] = 4,
@@ -844,8 +844,8 @@ const struct sja1105_info sja1110b_info = {
 	.rxtstamp		= sja1110_rxtstamp,
 	.txtstamp		= sja1110_txtstamp,
 	.disable_microcontroller = sja1110_disable_microcontroller,
-	.pcs_mdio_read		= sja1110_pcs_mdio_read,
-	.pcs_mdio_write		= sja1110_pcs_mdio_write,
+	.pcs_mdio_read_c45	= sja1110_pcs_mdio_read_c45,
+	.pcs_mdio_write_c45	= sja1110_pcs_mdio_write_c45,
 	.port_speed		= {
 		[SJA1105_SPEED_AUTO] = 0,
 		[SJA1105_SPEED_10MBPS] = 4,
@@ -894,8 +894,8 @@ const struct sja1105_info sja1110c_info = {
 	.rxtstamp		= sja1110_rxtstamp,
 	.txtstamp		= sja1110_txtstamp,
 	.disable_microcontroller = sja1110_disable_microcontroller,
-	.pcs_mdio_read		= sja1110_pcs_mdio_read,
-	.pcs_mdio_write		= sja1110_pcs_mdio_write,
+	.pcs_mdio_read_c45	= sja1110_pcs_mdio_read_c45,
+	.pcs_mdio_write_c45	= sja1110_pcs_mdio_write_c45,
 	.port_speed		= {
 		[SJA1105_SPEED_AUTO] = 0,
 		[SJA1105_SPEED_10MBPS] = 4,
@@ -944,8 +944,8 @@ const struct sja1105_info sja1110d_info = {
 	.rxtstamp		= sja1110_rxtstamp,
 	.txtstamp		= sja1110_txtstamp,
 	.disable_microcontroller = sja1110_disable_microcontroller,
-	.pcs_mdio_read		= sja1110_pcs_mdio_read,
-	.pcs_mdio_write		= sja1110_pcs_mdio_write,
+	.pcs_mdio_read_c45	= sja1110_pcs_mdio_read_c45,
+	.pcs_mdio_write_c45	= sja1110_pcs_mdio_write_c45,
 	.port_speed		= {
 		[SJA1105_SPEED_AUTO] = 0,
 		[SJA1105_SPEED_10MBPS] = 4,

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
