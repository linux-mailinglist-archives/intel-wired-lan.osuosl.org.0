Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB5666E37B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15498610A1;
	Tue, 17 Jan 2023 16:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15498610A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972645;
	bh=HC3RMvjoGjyQkvDOqjIod0CPZpKq6UK9SFhbpuIZ0PQ=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LOScXHnOlyE3/OavJ5oq+suykegc/RqYoeh47I50uDY0k6ztxS9y5ewSj2hSLkqXQ
	 cuktub+UUtCkfHVM52jkOCqgh5a40z0+qLbBEcfD1oFFv6c+61b5TZJdQpYB6Gt6uf
	 xubCkpQybu3Mex2YrLHAQ17P5NP27z4GFZQy+7QQr6zClvxpEaXzV4W5+YobQIm93j
	 mKnOpORv2IsPmBKDU8NRVi5vYq7cMrBu0y7YobDJSUU3ud55jjG95zdnuD+nqEUEAw
	 RlYbazbwH/kVdFFXgMWO4JfZMDrDWG6kaQhUqLaYg6k1PJ3iB8Dg7Uad3b9zL4xDrt
	 9NZ4fRWcZkmiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6hZJZhkOotA; Tue, 17 Jan 2023 16:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5F6C61087;
	Tue, 17 Jan 2023 16:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5F6C61087
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6C0E1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E11E402B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E11E402B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xo0Dt9hBnxKN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 23:58:46 +0000 (UTC)
X-Greylist: delayed 00:05:55 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4938540BC3
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4938540BC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:46 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id D81451645;
 Tue, 17 Jan 2023 00:52:45 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:18 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-3-0c53afa56aad@walle.cc>
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
 d=walle.cc; s=mail2022082101; t=1673913166;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qrw3VdQJ88seeNfsCmHZ0Ug/EiNIUO7V5SWjfSjWOKQ=;
 b=rvBx26LB/U/ku27CC+lu1uAY7KDI3oh4SWNBjiMZKuPQB+vluqypoYHhh5/2/VukYWWUlc
 UT7lV2rpdokc5dCe1bAjyAZtkHwq8etN0SQsfmTRnLepJAbIYpc6feOCz4+pNTSiWpzhn8
 IHadilsFnOnfAEsWsBPVi+83xk/a5TeB1rOgjQfqySx9PDK2/QQ3m6Ao35i2v3GGXy4iYp
 Wjwk75qQuCMUwq8PSkAVJFdPd0mgfRA5PJlGfZ9KfhJlVZU4lX0g/tWza991VE/YnhVlVa
 /CyBLp1jcHEkB1AwLQMAdwxpXE3r6i4YX3YA1GEqJXimD20zJljhis3cRes2Zw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=rvBx26LB
Subject: [Intel-wired-lan] [PATCH net-next 03/12] net: nixge: Separate C22
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

The nixge MDIO bus driver can perform both C22 and C45 transfers.
Create separate functions for each and register the C45 versions using
the new API calls where appropriate.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/ethernet/ni/nixge.c | 141 ++++++++++++++++++++++++----------------
 1 file changed, 85 insertions(+), 56 deletions(-)

diff --git a/drivers/net/ethernet/ni/nixge.c b/drivers/net/ethernet/ni/nixge.c
index 62320be4de5a..56e02cba0b8a 100644
--- a/drivers/net/ethernet/ni/nixge.c
+++ b/drivers/net/ethernet/ni/nixge.c
@@ -1081,40 +1081,59 @@ static const struct ethtool_ops nixge_ethtool_ops = {
 	.get_link		= ethtool_op_get_link,
 };
 
-static int nixge_mdio_read(struct mii_bus *bus, int phy_id, int reg)
+static int nixge_mdio_read_c22(struct mii_bus *bus, int phy_id, int reg)
 {
 	struct nixge_priv *priv = bus->priv;
 	u32 status, tmp;
 	int err;
 	u16 device;
 
-	if (reg & MII_ADDR_C45) {
-		device = (reg >> 16) & 0x1f;
+	device = reg & 0x1f;
 
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_ADDR, reg & 0xffff);
+	tmp = NIXGE_MDIO_CLAUSE22 | NIXGE_MDIO_OP(NIXGE_MDIO_C22_READ) |
+	      NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
 
-		tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_OP_ADDRESS)
-			| NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
 
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
+	err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
+				      !status, 10, 1000);
+	if (err) {
+		dev_err(priv->dev, "timeout setting read command");
+		return err;
+	}
 
-		err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
-					      !status, 10, 1000);
-		if (err) {
-			dev_err(priv->dev, "timeout setting address");
-			return err;
-		}
+	status = nixge_ctrl_read_reg(priv, NIXGE_REG_MDIO_DATA);
 
-		tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_C45_READ) |
-			NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
-	} else {
-		device = reg & 0x1f;
+	return status;
+}
 
-		tmp = NIXGE_MDIO_CLAUSE22 | NIXGE_MDIO_OP(NIXGE_MDIO_C22_READ) |
-			NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
+static int nixge_mdio_read_c45(struct mii_bus *bus, int phy_id, int device,
+			       int reg)
+{
+	struct nixge_priv *priv = bus->priv;
+	u32 status, tmp;
+	int err;
+
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_ADDR, reg & 0xffff);
+
+	tmp = NIXGE_MDIO_CLAUSE45 |
+	      NIXGE_MDIO_OP(NIXGE_MDIO_OP_ADDRESS) |
+	      NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
+
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
+
+	err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
+				      !status, 10, 1000);
+	if (err) {
+		dev_err(priv->dev, "timeout setting address");
+		return err;
 	}
 
+	tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_C45_READ) |
+	      NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
+
 	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
 	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
 
@@ -1130,57 +1149,65 @@ static int nixge_mdio_read(struct mii_bus *bus, int phy_id, int reg)
 	return status;
 }
 
-static int nixge_mdio_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
+static int nixge_mdio_write_c22(struct mii_bus *bus, int phy_id, int reg,
+				u16 val)
 {
 	struct nixge_priv *priv = bus->priv;
 	u32 status, tmp;
 	u16 device;
 	int err;
 
-	if (reg & MII_ADDR_C45) {
-		device = (reg >> 16) & 0x1f;
+	device = reg & 0x1f;
 
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_ADDR, reg & 0xffff);
+	tmp = NIXGE_MDIO_CLAUSE22 | NIXGE_MDIO_OP(NIXGE_MDIO_C22_WRITE) |
+	      NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
 
-		tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_OP_ADDRESS)
-			| NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_DATA, val);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
 
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
+	err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
+				      !status, 10, 1000);
+	if (err)
+		dev_err(priv->dev, "timeout setting write command");
 
-		err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
-					      !status, 10, 1000);
-		if (err) {
-			dev_err(priv->dev, "timeout setting address");
-			return err;
-		}
+	return err;
+}
 
-		tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_C45_WRITE)
-			| NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
+static int nixge_mdio_write_c45(struct mii_bus *bus, int phy_id,
+				int device, int reg, u16 val)
+{
+	struct nixge_priv *priv = bus->priv;
+	u32 status, tmp;
+	int err;
 
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_DATA, val);
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
-		err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
-					      !status, 10, 1000);
-		if (err)
-			dev_err(priv->dev, "timeout setting write command");
-	} else {
-		device = reg & 0x1f;
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_ADDR, reg & 0xffff);
 
-		tmp = NIXGE_MDIO_CLAUSE22 |
-			NIXGE_MDIO_OP(NIXGE_MDIO_C22_WRITE) |
-			NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
+	tmp = NIXGE_MDIO_CLAUSE45 |
+	      NIXGE_MDIO_OP(NIXGE_MDIO_OP_ADDRESS) |
+	      NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
 
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_DATA, val);
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
-		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
 
-		err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
-					      !status, 10, 1000);
-		if (err)
-			dev_err(priv->dev, "timeout setting write command");
+	err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
+				      !status, 10, 1000);
+	if (err) {
+		dev_err(priv->dev, "timeout setting address");
+		return err;
 	}
 
+	tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_C45_WRITE) |
+	      NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
+
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_DATA, val);
+	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
+
+	err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
+				      !status, 10, 1000);
+	if (err)
+		dev_err(priv->dev, "timeout setting write command");
+
 	return err;
 }
 
@@ -1195,8 +1222,10 @@ static int nixge_mdio_setup(struct nixge_priv *priv, struct device_node *np)
 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s-mii", dev_name(priv->dev));
 	bus->priv = priv;
 	bus->name = "nixge_mii_bus";
-	bus->read = nixge_mdio_read;
-	bus->write = nixge_mdio_write;
+	bus->read = nixge_mdio_read_c22;
+	bus->write = nixge_mdio_write_c22;
+	bus->read_c45 = nixge_mdio_read_c45;
+	bus->write_c45 = nixge_mdio_write_c45;
 	bus->parent = priv->dev;
 
 	priv->mii_bus = bus;

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
