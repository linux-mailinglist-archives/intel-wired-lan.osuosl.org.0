Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B838A66E37D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:24:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4801A61098;
	Tue, 17 Jan 2023 16:24:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4801A61098
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972653;
	bh=TxJe6Ju6VhXT4UYQs2H921cs1yD5ofvZhDun6FjowRw=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SWKRazP3g+zuAZMi0wicHf5Fys05oYY0d2RZ9JtgRa2/KuIvCJTbcBXKPC1wDZ0Y9
	 uUHblOhYAeFyrp3G7mvS5WCcvo+NBqluyVHJVZg5TYNS094vEKejCdrJE/LlJlqfQ5
	 kGF2AtmUWnhy61CQlW6hMrfbGP6L4xqU9nTOGLAxJy5KGIKJi0sc4qFT8pDFKbrRAp
	 thFvHZaTyTIJj4GQySKJG4r0A8iEPovHonj/mGQMb7RIk6P7pFs3w07xr33M7T6+kz
	 /xlZtXvzAkSreoA4tru0kxml1oYKfMvBXsY2G3Ls752qGubgQU4mrLggZYgOG6E4cF
	 OaV70hZNpD3/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 680Gl4fuoFZ8; Tue, 17 Jan 2023 16:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA59A60C02;
	Tue, 17 Jan 2023 16:24:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA59A60C02
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 915001BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6BBCF403ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BBCF403ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNXg-evIJvj9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 23:58:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54B5A40290
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54B5A40290
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:46 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id 4B4EA16EE;
 Tue, 17 Jan 2023 00:52:48 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:22 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-7-0c53afa56aad@walle.cc>
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
 d=walle.cc; s=mail2022082101; t=1673913168;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FP6Dfe7S3M3hCeaRI1q2BDnXh3eLy37Yd4LAgViRJ1k=;
 b=akUvi4nTSTzYmjPbkFEuJoTMNw3gVMOk55vUK+WTdFBQ1CFr0QJ3R0Fn6gIvD+XvMBSGHG
 PFVed9eFfifdqML3SzPqMUHI2GAbwUGpsu0w5XIf7hha1qRWeE+j9Qmjhq1c6Ctkr31s/Z
 2saNhC1zyEOAL+EvKzmlJ4KFjgVGAwG9yDZvdviRHqoqJEvHw5/t8QzNCa21zofLwUknJE
 xRR1i1edEj2+Xvw6d6FHRFQ6Ss/w/PoyMntuAWMCD/qIJlN6ow4zO3U/hbfzGvqQcoMOGJ
 +msggqphhalz1CJ/DTMKRCae/4/jYeE9ciSgUgIjdal5n9iLthQx2T3KXcC0LA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=akUvi4nT
Subject: [Intel-wired-lan] [PATCH net-next 07/12] net: hns: Separate C22 and
 C45 transactions
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

The hns MDIO bus driver can perform both C22 and C45 transfers.
Create separate functions for each and register the C45 versions using
the new API calls where appropriate.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/ethernet/hisilicon/hns_mdio.c | 192 +++++++++++++++++++++---------
 1 file changed, 135 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/hisilicon/hns_mdio.c b/drivers/net/ethernet/hisilicon/hns_mdio.c
index c2ae1b4f9a5f..9232caaf0bdc 100644
--- a/drivers/net/ethernet/hisilicon/hns_mdio.c
+++ b/drivers/net/ethernet/hisilicon/hns_mdio.c
@@ -206,7 +206,7 @@ static void hns_mdio_cmd_write(struct hns_mdio_device *mdio_dev,
 }
 
 /**
- * hns_mdio_write - access phy register
+ * hns_mdio_write_c22 - access phy register
  * @bus: mdio bus
  * @phy_id: phy id
  * @regnum: register num
@@ -214,21 +214,19 @@ static void hns_mdio_cmd_write(struct hns_mdio_device *mdio_dev,
  *
  * Return 0 on success, negative on failure
  */
-static int hns_mdio_write(struct mii_bus *bus,
-			  int phy_id, int regnum, u16 data)
+static int hns_mdio_write_c22(struct mii_bus *bus,
+			      int phy_id, int regnum, u16 data)
 {
-	int ret;
 	struct hns_mdio_device *mdio_dev = (struct hns_mdio_device *)bus->priv;
-	u8 devad = ((regnum >> 16) & 0x1f);
-	u8 is_c45 = !!(regnum & MII_ADDR_C45);
 	u16 reg = (u16)(regnum & 0xffff);
-	u8 op;
 	u16 cmd_reg_cfg;
+	int ret;
+	u8 op;
 
 	dev_dbg(&bus->dev, "mdio write %s,base is %p\n",
 		bus->id, mdio_dev->vbase);
-	dev_dbg(&bus->dev, "phy id=%d, is_c45=%d, devad=%d, reg=%#x, write data=%d\n",
-		phy_id, is_c45, devad, reg, data);
+	dev_dbg(&bus->dev, "phy id=%d, reg=%#x, write data=%d\n",
+		phy_id, reg, data);
 
 	/* wait for ready */
 	ret = hns_mdio_wait_ready(bus);
@@ -237,58 +235,91 @@ static int hns_mdio_write(struct mii_bus *bus,
 		return ret;
 	}
 
-	if (!is_c45) {
-		cmd_reg_cfg = reg;
-		op = MDIO_C22_WRITE;
-	} else {
-		/* config the cmd-reg to write addr*/
-		MDIO_SET_REG_FIELD(mdio_dev, MDIO_ADDR_REG, MDIO_ADDR_DATA_M,
-				   MDIO_ADDR_DATA_S, reg);
+	cmd_reg_cfg = reg;
+	op = MDIO_C22_WRITE;
 
-		hns_mdio_cmd_write(mdio_dev, is_c45,
-				   MDIO_C45_WRITE_ADDR, phy_id, devad);
+	MDIO_SET_REG_FIELD(mdio_dev, MDIO_WDATA_REG, MDIO_WDATA_DATA_M,
+			   MDIO_WDATA_DATA_S, data);
 
-		/* check for read or write opt is finished */
-		ret = hns_mdio_wait_ready(bus);
-		if (ret) {
-			dev_err(&bus->dev, "MDIO bus is busy\n");
-			return ret;
-		}
+	hns_mdio_cmd_write(mdio_dev, false, op, phy_id, cmd_reg_cfg);
+
+	return 0;
+}
+
+/**
+ * hns_mdio_write_c45 - access phy register
+ * @bus: mdio bus
+ * @phy_id: phy id
+ * @devad: device address to read
+ * @regnum: register num
+ * @data: register value
+ *
+ * Return 0 on success, negative on failure
+ */
+static int hns_mdio_write_c45(struct mii_bus *bus, int phy_id, int devad,
+			      int regnum, u16 data)
+{
+	struct hns_mdio_device *mdio_dev = (struct hns_mdio_device *)bus->priv;
+	u16 reg = (u16)(regnum & 0xffff);
+	u16 cmd_reg_cfg;
+	int ret;
+	u8 op;
+
+	dev_dbg(&bus->dev, "mdio write %s,base is %p\n",
+		bus->id, mdio_dev->vbase);
+	dev_dbg(&bus->dev, "phy id=%d, devad=%d, reg=%#x, write data=%d\n",
+		phy_id, devad, reg, data);
+
+	/* wait for ready */
+	ret = hns_mdio_wait_ready(bus);
+	if (ret) {
+		dev_err(&bus->dev, "MDIO bus is busy\n");
+		return ret;
+	}
+
+	/* config the cmd-reg to write addr*/
+	MDIO_SET_REG_FIELD(mdio_dev, MDIO_ADDR_REG, MDIO_ADDR_DATA_M,
+			   MDIO_ADDR_DATA_S, reg);
 
-		/* config the data needed writing */
-		cmd_reg_cfg = devad;
-		op = MDIO_C45_WRITE_DATA;
+	hns_mdio_cmd_write(mdio_dev, true, MDIO_C45_WRITE_ADDR, phy_id, devad);
+
+	/* check for read or write opt is finished */
+	ret = hns_mdio_wait_ready(bus);
+	if (ret) {
+		dev_err(&bus->dev, "MDIO bus is busy\n");
+		return ret;
 	}
 
+	/* config the data needed writing */
+	cmd_reg_cfg = devad;
+	op = MDIO_C45_WRITE_DATA;
+
 	MDIO_SET_REG_FIELD(mdio_dev, MDIO_WDATA_REG, MDIO_WDATA_DATA_M,
 			   MDIO_WDATA_DATA_S, data);
 
-	hns_mdio_cmd_write(mdio_dev, is_c45, op, phy_id, cmd_reg_cfg);
+	hns_mdio_cmd_write(mdio_dev, true, op, phy_id, cmd_reg_cfg);
 
 	return 0;
 }
 
 /**
- * hns_mdio_read - access phy register
+ * hns_mdio_read_c22 - access phy register
  * @bus: mdio bus
  * @phy_id: phy id
  * @regnum: register num
  *
  * Return phy register value
  */
-static int hns_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
+static int hns_mdio_read_c22(struct mii_bus *bus, int phy_id, int regnum)
 {
-	int ret;
-	u16 reg_val;
-	u8 devad = ((regnum >> 16) & 0x1f);
-	u8 is_c45 = !!(regnum & MII_ADDR_C45);
-	u16 reg = (u16)(regnum & 0xffff);
 	struct hns_mdio_device *mdio_dev = (struct hns_mdio_device *)bus->priv;
+	u16 reg = (u16)(regnum & 0xffff);
+	u16 reg_val;
+	int ret;
 
 	dev_dbg(&bus->dev, "mdio read %s,base is %p\n",
 		bus->id, mdio_dev->vbase);
-	dev_dbg(&bus->dev, "phy id=%d, is_c45=%d, devad=%d, reg=%#x!\n",
-		phy_id, is_c45, devad, reg);
+	dev_dbg(&bus->dev, "phy id=%d, reg=%#x!\n", phy_id, reg);
 
 	/* Step 1: wait for ready */
 	ret = hns_mdio_wait_ready(bus);
@@ -297,29 +328,74 @@ static int hns_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
 		return ret;
 	}
 
-	if (!is_c45) {
-		hns_mdio_cmd_write(mdio_dev, is_c45,
-				   MDIO_C22_READ, phy_id, reg);
-	} else {
-		MDIO_SET_REG_FIELD(mdio_dev, MDIO_ADDR_REG, MDIO_ADDR_DATA_M,
-				   MDIO_ADDR_DATA_S, reg);
+	hns_mdio_cmd_write(mdio_dev, false, MDIO_C22_READ, phy_id, reg);
 
-		/* Step 2; config the cmd-reg to write addr*/
-		hns_mdio_cmd_write(mdio_dev, is_c45,
-				   MDIO_C45_WRITE_ADDR, phy_id, devad);
+	/* Step 2: waiting for MDIO_COMMAND_REG 's mdio_start==0,*/
+	/* check for read or write opt is finished */
+	ret = hns_mdio_wait_ready(bus);
+	if (ret) {
+		dev_err(&bus->dev, "MDIO bus is busy\n");
+		return ret;
+	}
 
-		/* Step 3: check for read or write opt is finished */
-		ret = hns_mdio_wait_ready(bus);
-		if (ret) {
-			dev_err(&bus->dev, "MDIO bus is busy\n");
-			return ret;
-		}
+	reg_val = MDIO_GET_REG_BIT(mdio_dev, MDIO_STA_REG, MDIO_STATE_STA_B);
+	if (reg_val) {
+		dev_err(&bus->dev, " ERROR! MDIO Read failed!\n");
+		return -EBUSY;
+	}
 
-		hns_mdio_cmd_write(mdio_dev, is_c45,
-				   MDIO_C45_READ, phy_id, devad);
+	/* Step 3; get out data*/
+	reg_val = (u16)MDIO_GET_REG_FIELD(mdio_dev, MDIO_RDATA_REG,
+					  MDIO_RDATA_DATA_M, MDIO_RDATA_DATA_S);
+
+	return reg_val;
+}
+
+/**
+ * hns_mdio_read_c45 - access phy register
+ * @bus: mdio bus
+ * @phy_id: phy id
+ * @devad: device address to read
+ * @regnum: register num
+ *
+ * Return phy register value
+ */
+static int hns_mdio_read_c45(struct mii_bus *bus, int phy_id, int devad,
+			     int regnum)
+{
+	struct hns_mdio_device *mdio_dev = (struct hns_mdio_device *)bus->priv;
+	u16 reg = (u16)(regnum & 0xffff);
+	u16 reg_val;
+	int ret;
+
+	dev_dbg(&bus->dev, "mdio read %s,base is %p\n",
+		bus->id, mdio_dev->vbase);
+	dev_dbg(&bus->dev, "phy id=%d, devad=%d, reg=%#x!\n",
+		phy_id, devad, reg);
+
+	/* Step 1: wait for ready */
+	ret = hns_mdio_wait_ready(bus);
+	if (ret) {
+		dev_err(&bus->dev, "MDIO bus is busy\n");
+		return ret;
+	}
+
+	MDIO_SET_REG_FIELD(mdio_dev, MDIO_ADDR_REG, MDIO_ADDR_DATA_M,
+			   MDIO_ADDR_DATA_S, reg);
+
+	/* Step 2; config the cmd-reg to write addr*/
+	hns_mdio_cmd_write(mdio_dev, true, MDIO_C45_WRITE_ADDR, phy_id, devad);
+
+	/* Step 3: check for read or write opt is finished */
+	ret = hns_mdio_wait_ready(bus);
+	if (ret) {
+		dev_err(&bus->dev, "MDIO bus is busy\n");
+		return ret;
 	}
 
-	/* Step 5: waiting for MDIO_COMMAND_REG's mdio_start==0,*/
+	hns_mdio_cmd_write(mdio_dev, true, MDIO_C45_READ, phy_id, devad);
+
+	/* Step 5: waiting for MDIO_COMMAND_REG 's mdio_start==0,*/
 	/* check for read or write opt is finished */
 	ret = hns_mdio_wait_ready(bus);
 	if (ret) {
@@ -438,8 +514,10 @@ static int hns_mdio_probe(struct platform_device *pdev)
 	}
 
 	new_bus->name = MDIO_BUS_NAME;
-	new_bus->read = hns_mdio_read;
-	new_bus->write = hns_mdio_write;
+	new_bus->read = hns_mdio_read_c22;
+	new_bus->write = hns_mdio_write_c22;
+	new_bus->read_c45 = hns_mdio_read_c45;
+	new_bus->write_c45 = hns_mdio_write_c45;
 	new_bus->reset = hns_mdio_reset;
 	new_bus->priv = mdio_dev;
 	new_bus->parent = &pdev->dev;

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
