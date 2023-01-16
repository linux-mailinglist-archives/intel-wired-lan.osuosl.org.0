Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E94466E381
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:24:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21DCC81237;
	Tue, 17 Jan 2023 16:24:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21DCC81237
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972661;
	bh=2mY206pvr7z8PoqQgJn4WsTaN9PcI1JHdxt+Tzh3NDY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ymjQpCCfpEiD4skVFG4V+oaKq+DVi7EoTfAQ9Zxuj/6DadCjBmG8mTncPZu8AaTbs
	 tzErA824x4/oLfXM6Rsg54UD8Olkdy+HNWM3Q5V5VfM1K6dEq2Eymy9p+w+WS1bz/x
	 VbVJZgSFWIX5FDuBK/FHaqvt1ongFiYSKaJyOYbylLihylVr0PJygYb7cLYb2Zrw+/
	 RPv3knd5/DFBoQByvN1gYWftwYaH0hMYqStoqjmgz6rvQHJWzzHHicj6K1c8YJO7e3
	 ow2sIjflQGOTmv9z1bijN3cPxxoOdJXP0UqV6GPrvG7x+ckk8FRt6y7nl/LgVvyJ+R
	 mikD4dMdqLAEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q1fWtlziXLC6; Tue, 17 Jan 2023 16:24:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E108281413;
	Tue, 17 Jan 2023 16:24:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E108281413
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E9D71BF956
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A0B160746
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A0B160746
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f4XnIm5Fv4Ll for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 00:03:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F52F60672
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F52F60672
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:44 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id C5F951A3D;
 Tue, 17 Jan 2023 00:52:50 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:26 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-11-0c53afa56aad@walle.cc>
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
 d=walle.cc; s=mail2022082101; t=1673913171;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=COkswAySxVV9ZpIM0zsphdnLDffX8p/RY2QGfsrBvlk=;
 b=g9T38H6nBHcRXorUkzgRp7Ym/eOnwVbkNjQKYHN7wMMLMjyYNraA8JVO3Dok8DrIwzEW0k
 gIdBp/1p682iBH/8jsHLciJK2nX7mUlQ9YozETBI2U1C0lKIp5EbBU6fNCyCstv13Lmv8G
 K/ITd7str2gQaUTnXyfx/ybXX7J2ATJGeCoZMZbnXvPbDJH/591cDVM+oIUbBx3OEw+F5K
 nLESQtbg40RSglrU3RJgr5NHPahBynQWKOUZm1QX3slza6/jq+H7MqIVxkiUOpeJFyMF32
 ep+Lo+Mi2wgmWo9EmKsErAKmWxP7vUkSs9swoucoS6NZg1c/ZmjFiSm8mP3UdQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=g9T38H6n
Subject: [Intel-wired-lan] [PATCH net-next 11/12] net: dsa: sja1105:
 Separate C22 and C45 transactions for T1 MDIO bus
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

The T1 MDIO bus driver can perform both C22 and C45 transfers. Create
separate functions for each and register the C45 versions using the
new API calls where appropriate.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/dsa/sja1105/sja1105_mdio.c | 87 +++++++++++++++++-----------------
 1 file changed, 43 insertions(+), 44 deletions(-)

diff --git a/drivers/net/dsa/sja1105/sja1105_mdio.c b/drivers/net/dsa/sja1105/sja1105_mdio.c
index 8f1fcaf8e1d9..2fcb601cb4eb 100644
--- a/drivers/net/dsa/sja1105/sja1105_mdio.c
+++ b/drivers/net/dsa/sja1105/sja1105_mdio.c
@@ -149,7 +149,7 @@ static u64 sja1105_base_t1_encode_addr(struct sja1105_private *priv,
 	return regs->mdio_100base_t1 | (phy << 7) | (op << 5) | (xad << 0);
 }
 
-static int sja1105_base_t1_mdio_read(struct mii_bus *bus, int phy, int reg)
+static int sja1105_base_t1_mdio_read_c22(struct mii_bus *bus, int phy, int reg)
 {
 	struct sja1105_mdio_private *mdio_priv = bus->priv;
 	struct sja1105_private *priv = mdio_priv->priv;
@@ -157,30 +157,31 @@ static int sja1105_base_t1_mdio_read(struct mii_bus *bus, int phy, int reg)
 	u32 tmp;
 	int rc;
 
-	if (reg & MII_ADDR_C45) {
-		u16 mmd = (reg >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-
-		addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C45_ADDR,
-						   mmd);
+	addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C22, reg & 0x1f);
 
-		tmp = reg & MII_REGADDR_C45_MASK;
+	rc = sja1105_xfer_u32(priv, SPI_READ, addr, &tmp, NULL);
+	if (rc < 0)
+		return rc;
 
-		rc = sja1105_xfer_u32(priv, SPI_WRITE, addr, &tmp, NULL);
-		if (rc < 0)
-			return rc;
+	return tmp & 0xffff;
+}
 
-		addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C45_DATA,
-						   mmd);
+static int sja1105_base_t1_mdio_read_c45(struct mii_bus *bus, int phy,
+					 int mmd, int reg)
+{
+	struct sja1105_mdio_private *mdio_priv = bus->priv;
+	struct sja1105_private *priv = mdio_priv->priv;
+	u64 addr;
+	u32 tmp;
+	int rc;
 
-		rc = sja1105_xfer_u32(priv, SPI_READ, addr, &tmp, NULL);
-		if (rc < 0)
-			return rc;
+	addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C45_ADDR, mmd);
 
-		return tmp & 0xffff;
-	}
+	rc = sja1105_xfer_u32(priv, SPI_WRITE, addr, &reg, NULL);
+	if (rc < 0)
+		return rc;
 
-	/* Clause 22 read */
-	addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C22, reg & 0x1f);
+	addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C45_DATA, mmd);
 
 	rc = sja1105_xfer_u32(priv, SPI_READ, addr, &tmp, NULL);
 	if (rc < 0)
@@ -189,41 +190,37 @@ static int sja1105_base_t1_mdio_read(struct mii_bus *bus, int phy, int reg)
 	return tmp & 0xffff;
 }
 
-static int sja1105_base_t1_mdio_write(struct mii_bus *bus, int phy, int reg,
-				      u16 val)
+static int sja1105_base_t1_mdio_write_c22(struct mii_bus *bus, int phy, int reg,
+					  u16 val)
 {
 	struct sja1105_mdio_private *mdio_priv = bus->priv;
 	struct sja1105_private *priv = mdio_priv->priv;
 	u64 addr;
 	u32 tmp;
-	int rc;
-
-	if (reg & MII_ADDR_C45) {
-		u16 mmd = (reg >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-
-		addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C45_ADDR,
-						   mmd);
 
-		tmp = reg & MII_REGADDR_C45_MASK;
+	addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C22, reg & 0x1f);
 
-		rc = sja1105_xfer_u32(priv, SPI_WRITE, addr, &tmp, NULL);
-		if (rc < 0)
-			return rc;
+	tmp = val & 0xffff;
 
-		addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C45_DATA,
-						   mmd);
+	return sja1105_xfer_u32(priv, SPI_WRITE, addr, &tmp, NULL);
+}
 
-		tmp = val & 0xffff;
+static int sja1105_base_t1_mdio_write_c45(struct mii_bus *bus, int phy,
+					  int mmd, int reg, u16 val)
+{
+	struct sja1105_mdio_private *mdio_priv = bus->priv;
+	struct sja1105_private *priv = mdio_priv->priv;
+	u64 addr;
+	u32 tmp;
+	int rc;
 
-		rc = sja1105_xfer_u32(priv, SPI_WRITE, addr, &tmp, NULL);
-		if (rc < 0)
-			return rc;
+	addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C45_ADDR, mmd);
 
-		return 0;
-	}
+	rc = sja1105_xfer_u32(priv, SPI_WRITE, addr, &reg, NULL);
+	if (rc < 0)
+		return rc;
 
-	/* Clause 22 write */
-	addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C22, reg & 0x1f);
+	addr = sja1105_base_t1_encode_addr(priv, phy, SJA1105_C45_DATA, mmd);
 
 	tmp = val & 0xffff;
 
@@ -342,8 +339,10 @@ static int sja1105_mdiobus_base_t1_register(struct sja1105_private *priv,
 	bus->name = "SJA1110 100base-T1 MDIO bus";
 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s-base-t1",
 		 dev_name(priv->ds->dev));
-	bus->read = sja1105_base_t1_mdio_read;
-	bus->write = sja1105_base_t1_mdio_write;
+	bus->read = sja1105_base_t1_mdio_read_c22;
+	bus->write = sja1105_base_t1_mdio_write_c22;
+	bus->read_c45 = sja1105_base_t1_mdio_read_c45;
+	bus->write_c45 = sja1105_base_t1_mdio_write_c45;
 	bus->parent = priv->ds->dev;
 	mdio_priv = bus->priv;
 	mdio_priv->priv = priv;

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
