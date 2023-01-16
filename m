Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A642266E376
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:23:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A92EC40BE8;
	Tue, 17 Jan 2023 16:23:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A92EC40BE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972624;
	bh=IZjJUZOdolJA5hplPmjYr2oTIoZDGKmO4/1TlunR0nQ=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g/q+nBvm1bvFNmX/KEYW7a9//WqXZSKoDTcALuVnTuW6fdjvqTpIF14t410TrQowg
	 nCXB9u4Ev4/0rJhEqVyqD95tVzJqsFYa9ev4e07KTVCas+iIDHRXaDby99NCvnaDup
	 VxvKJjtxmesgOcozisQZt1XEOfwy4ZVjMrI4LTQ7l51FgkKstTDOvFf1UzjstmelqS
	 5fsJ4k/sLY9M3ResD1Lbm67cXEf7WFlwA3XTmFWlqvRRYQDUbJ9T+0wIXwGY8WeXNY
	 0/M37q6v3tjvUPT+qK4TdDVSfl8ldRNGQHvydxfouYS0jYwbLSpXCkEbSLVy+lz51e
	 F5eBjXxiE8e2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fd4yt4aiBo3n; Tue, 17 Jan 2023 16:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7544C4064D;
	Tue, 17 Jan 2023 16:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7544C4064D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 638721BF956
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EE4660BB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EE4660BB3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ql3pJS1bCukw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 23:58:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E27760AB0
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E27760AB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:44 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id 1799DD5D;
 Tue, 17 Jan 2023 00:52:45 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:17 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-2-0c53afa56aad@walle.cc>
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
 d=walle.cc; s=mail2022082101; t=1673913165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kLjDb6Z8ltzyK2BgVssXp9+2hjvKuJoCm2q3gVXDY64=;
 b=XItSZsfnJuwjkmNaFwtcgj+Y7MpJYfyoWA7PaQkMzgeEmESyAyLYKWX9qam1NV2ZXuQuxt
 k1GZsNnjqa0pKwncLNhxKXnQQ8BSKBcE9/n7CLgAbsv5UV4OIVTW3DqJp1XA4iq/fNXcyY
 MVdBjdGSZDN9f1SEF3EcZYfftynKEKUNGq0/06LeEcLY6eszPLLosepdF0q3fSSI/zYzib
 VS8hplpbKetRNCUM7SZbN+WOzuwgmDwi2TwPpmZcz7EcSgCgosWxidTzYe1I4+0qJqkwCp
 OQo5dIiT6ZsvMoZHqGpAR/xWyBA7ChtO655PnnLhyNVbbn4AFIOLK0ZS1Jayow==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=XItSZsfn
Subject: [Intel-wired-lan] [PATCH net-next 02/12] net: sxgbe: Separate C22
 and C45 transactions
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

The sxgdb MDIO bus driver can perform both C22 and C45 transfers.
Create separate functions for each and register the C45 versions using
the new API calls where appropriate.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c | 105 ++++++++++++++++++------
 1 file changed, 81 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c b/drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c
index fceb6d637235..0227223c06fa 100644
--- a/drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c
+++ b/drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c
@@ -50,12 +50,12 @@ static void sxgbe_mdio_ctrl_data(struct sxgbe_priv_data *sp, u32 cmd,
 }
 
 static void sxgbe_mdio_c45(struct sxgbe_priv_data *sp, u32 cmd, int phyaddr,
-			   int phyreg, u16 phydata)
+			   int devad, int phyreg, u16 phydata)
 {
 	u32 reg;
 
 	/* set mdio address register */
-	reg = ((phyreg >> 16) & 0x1f) << 21;
+	reg = (devad & 0x1f) << 21;
 	reg |= (phyaddr << 16) | (phyreg & 0xffff);
 	writel(reg, sp->ioaddr + sp->hw->mii.addr);
 
@@ -76,8 +76,8 @@ static void sxgbe_mdio_c22(struct sxgbe_priv_data *sp, u32 cmd, int phyaddr,
 	sxgbe_mdio_ctrl_data(sp, cmd, phydata);
 }
 
-static int sxgbe_mdio_access(struct sxgbe_priv_data *sp, u32 cmd, int phyaddr,
-			     int phyreg, u16 phydata)
+static int sxgbe_mdio_access_c22(struct sxgbe_priv_data *sp, u32 cmd,
+				 int phyaddr, int phyreg, u16 phydata)
 {
 	const struct mii_regs *mii = &sp->hw->mii;
 	int rc;
@@ -86,33 +86,46 @@ static int sxgbe_mdio_access(struct sxgbe_priv_data *sp, u32 cmd, int phyaddr,
 	if (rc < 0)
 		return rc;
 
-	if (phyreg & MII_ADDR_C45) {
-		sxgbe_mdio_c45(sp, cmd, phyaddr, phyreg, phydata);
-	} else {
-		 /* Ports 0-3 only support C22. */
-		if (phyaddr >= 4)
-			return -ENODEV;
+	/* Ports 0-3 only support C22. */
+	if (phyaddr >= 4)
+		return -ENODEV;
 
-		sxgbe_mdio_c22(sp, cmd, phyaddr, phyreg, phydata);
-	}
+	sxgbe_mdio_c22(sp, cmd, phyaddr, phyreg, phydata);
+
+	return sxgbe_mdio_busy_wait(sp->ioaddr, mii->data);
+}
+
+static int sxgbe_mdio_access_c45(struct sxgbe_priv_data *sp, u32 cmd,
+				 int phyaddr, int devad, int phyreg,
+				 u16 phydata)
+{
+	const struct mii_regs *mii = &sp->hw->mii;
+	int rc;
+
+	rc = sxgbe_mdio_busy_wait(sp->ioaddr, mii->data);
+	if (rc < 0)
+		return rc;
+
+	sxgbe_mdio_c45(sp, cmd, phyaddr, devad, phyreg, phydata);
 
 	return sxgbe_mdio_busy_wait(sp->ioaddr, mii->data);
 }
 
 /**
- * sxgbe_mdio_read
+ * sxgbe_mdio_read_c22
  * @bus: points to the mii_bus structure
  * @phyaddr: address of phy port
  * @phyreg: address of register with in phy register
- * Description: this function used for C45 and C22 MDIO Read
+ * Description: this function used for C22 MDIO Read
  */
-static int sxgbe_mdio_read(struct mii_bus *bus, int phyaddr, int phyreg)
+static int sxgbe_mdio_read_c22(struct mii_bus *bus, int phyaddr, int phyreg)
 {
 	struct net_device *ndev = bus->priv;
 	struct sxgbe_priv_data *priv = netdev_priv(ndev);
 	int rc;
 
-	rc = sxgbe_mdio_access(priv, SXGBE_SMA_READ_CMD, phyaddr, phyreg, 0);
+	rc = sxgbe_mdio_access_c22(priv, SXGBE_SMA_READ_CMD, phyaddr,
+				   phyreg, 0);
 	if (rc < 0)
 		return rc;
 
@@ -120,21 +133,63 @@ static int sxgbe_mdio_read(struct mii_bus *bus, int phyaddr, int phyreg)
 }
 
 /**
- * sxgbe_mdio_write
+ * sxgbe_mdio_read_c45
+ * @bus: points to the mii_bus structure
+ * @phyaddr: address of phy port
+ * @devad: device (MMD) address
+ * @phyreg: address of register with in phy register
+ * Description: this function used for C45 MDIO Read
+ */
+static int sxgbe_mdio_read_c45(struct mii_bus *bus, int phyaddr, int devad,
+			       int phyreg)
+{
+	struct net_device *ndev = bus->priv;
+	struct sxgbe_priv_data *priv = netdev_priv(ndev);
+	int rc;
+
+	rc = sxgbe_mdio_access_c45(priv, SXGBE_SMA_READ_CMD, phyaddr,
+				   devad, phyreg, 0);
+	if (rc < 0)
+		return rc;
+
+	return readl(priv->ioaddr + priv->hw->mii.data) & 0xffff;
+}
+
+/**
+ * sxgbe_mdio_write_c22
+ * @bus: points to the mii_bus structure
+ * @phyaddr: address of phy port
+ * @phyreg: address of phy registers
+ * @phydata: data to be written into phy register
+ * Description: this function is used for C22 MDIO write
+ */
+static int sxgbe_mdio_write_c22(struct mii_bus *bus, int phyaddr, int phyreg,
+				u16 phydata)
+{
+	struct net_device *ndev = bus->priv;
+	struct sxgbe_priv_data *priv = netdev_priv(ndev);
+
+	return sxgbe_mdio_access_c22(priv, SXGBE_SMA_WRITE_CMD, phyaddr, phyreg,
+				     phydata);
+}
+
+/**
+ * sxgbe_mdio_write_c45
  * @bus: points to the mii_bus structure
  * @phyaddr: address of phy port
  * @phyreg: address of phy registers
+ * @devad: device (MMD) address
  * @phydata: data to be written into phy register
- * Description: this function is used for C45 and C22 MDIO write
+ * Description: this function is used for C45 MDIO write
  */
-static int sxgbe_mdio_write(struct mii_bus *bus, int phyaddr, int phyreg,
-			     u16 phydata)
+static int sxgbe_mdio_write_c45(struct mii_bus *bus, int phyaddr, int devad,
+				int phyreg, u16 phydata)
 {
 	struct net_device *ndev = bus->priv;
 	struct sxgbe_priv_data *priv = netdev_priv(ndev);
 
-	return sxgbe_mdio_access(priv, SXGBE_SMA_WRITE_CMD, phyaddr, phyreg,
-				 phydata);
+	return sxgbe_mdio_access_c45(priv, SXGBE_SMA_WRITE_CMD, phyaddr,
+				     devad, phyreg, phydata);
 }
 
 int sxgbe_mdio_register(struct net_device *ndev)
@@ -161,8 +216,10 @@ int sxgbe_mdio_register(struct net_device *ndev)
 
 	/* assign mii bus fields */
 	mdio_bus->name = "sxgbe";
-	mdio_bus->read = &sxgbe_mdio_read;
-	mdio_bus->write = &sxgbe_mdio_write;
+	mdio_bus->read = sxgbe_mdio_read_c22;
+	mdio_bus->write = sxgbe_mdio_write_c22;
+	mdio_bus->read_c45 = sxgbe_mdio_read_c45;
+	mdio_bus->write_c45 = sxgbe_mdio_write_c45;
 	snprintf(mdio_bus->id, MII_BUS_ID_SIZE, "%s-%x",
 		 mdio_bus->name, priv->plat->bus_id);
 	mdio_bus->priv = ndev;

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
