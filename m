Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0974C66E378
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:23:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2210408B7;
	Tue, 17 Jan 2023 16:23:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2210408B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972632;
	bh=YdcxlKY601uucQhuK559tRNY6C8Ts1uN9TKbpVliAAE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eo8Hm8WGr8CoHxAm/NlvSlsOqoGZ2HNvvbQC3CQped2VtZUS13Avsi4HxWJIaA6bn
	 WdJXy0jBy993OxEDO4EgQfTuodR7MrQgxR4q+zfCVELatOKuja2slyyVKhlIFDNWuP
	 xkqprYPE1lMysLyS6DHTGXWid3lFBK75QMIzdavRersapTmORHlGS1x91iA1q7Whxn
	 NiLd0V7WknbjIu0IYQ/MK9iSzXjrPekrg/HaVmEjTUDqxlF+FNtIH0Qi33cOl0r1B7
	 Uk3mcBaZoLMSiFYskZtJ7+ieyxj5GeBjnbIkBerCSE4TSdb6N0PVXYdjUMFgOQr7kW
	 G2ugfvaJxunog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tk6etlfRAXRI; Tue, 17 Jan 2023 16:23:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F7F84014D;
	Tue, 17 Jan 2023 16:23:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F7F84014D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3257C1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E1FE60AB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E1FE60AB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4uME1D1d72u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 23:58:44 +0000 (UTC)
X-Greylist: delayed 00:05:56 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4979660A99
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4979660A99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:44 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id 520EB168F;
 Tue, 17 Jan 2023 00:52:46 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:19 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-4-0c53afa56aad@walle.cc>
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
 bh=//jZFF/GKZSX23gW4WXwNqIqRriY0jkw/xc8m4eElhk=;
 b=n+unXMBKmVQ6lkMZJUho3EF4QaA/MqsEgo/LrLZTw7btUrypYoJdg1HHeP55rJlFRxboNT
 0vZiIZ2s1pbZZlpJy1qGoXqOGT67Xco90tEx+VIHUc6GGJN1fAlEbctLk/Xqf4l5Bm7pVE
 2HY9bKMXwdfXZHQR5AAfVI9bKmwTBIyCXAo0A/lBpN4dcZLCGS1CXnzzNDWdjEPgBkp6W/
 nhj3kcgGLDZDP1IBnrjHNVr2XP1TStjM5NOZSVmLWlrwbUFbFJeFitySL9i99nYWiYp0Xp
 8p0TRzCxpz0jELJdAxVgbtLiwrH7HzRUBRXyBwnzYAHJ5uv8164vnFiJep+eNw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=n+unXMBK
Subject: [Intel-wired-lan] [PATCH net-next 04/12] net: macb: Separate C22
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

The macb MDIO bus driver can perform both C22 and C45 transfers.
Create separate functions for each and register the C45 versions using
the new API calls where appropriate.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/ethernet/cadence/macb_main.c | 161 +++++++++++++++++++++----------
 1 file changed, 108 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 95667b979fab..f2d08a2dadf9 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -334,7 +334,7 @@ static int macb_mdio_wait_for_idle(struct macb *bp)
 				  1, MACB_MDIO_TIMEOUT);
 }
 
-static int macb_mdio_read(struct mii_bus *bus, int mii_id, int regnum)
+static int macb_mdio_read_c22(struct mii_bus *bus, int mii_id, int regnum)
 {
 	struct macb *bp = bus->priv;
 	int status;
@@ -347,31 +347,58 @@ static int macb_mdio_read(struct mii_bus *bus, int mii_id, int regnum)
 	if (status < 0)
 		goto mdio_read_exit;
 
-	if (regnum & MII_ADDR_C45) {
-		macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C45_SOF)
-			    | MACB_BF(RW, MACB_MAN_C45_ADDR)
-			    | MACB_BF(PHYA, mii_id)
-			    | MACB_BF(REGA, (regnum >> 16) & 0x1F)
-			    | MACB_BF(DATA, regnum & 0xFFFF)
-			    | MACB_BF(CODE, MACB_MAN_C45_CODE)));
-
-		status = macb_mdio_wait_for_idle(bp);
-		if (status < 0)
-			goto mdio_read_exit;
-
-		macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C45_SOF)
-			    | MACB_BF(RW, MACB_MAN_C45_READ)
-			    | MACB_BF(PHYA, mii_id)
-			    | MACB_BF(REGA, (regnum >> 16) & 0x1F)
-			    | MACB_BF(CODE, MACB_MAN_C45_CODE)));
-	} else {
-		macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C22_SOF)
-				| MACB_BF(RW, MACB_MAN_C22_READ)
-				| MACB_BF(PHYA, mii_id)
-				| MACB_BF(REGA, regnum)
-				| MACB_BF(CODE, MACB_MAN_C22_CODE)));
+	macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C22_SOF)
+			      | MACB_BF(RW, MACB_MAN_C22_READ)
+			      | MACB_BF(PHYA, mii_id)
+			      | MACB_BF(REGA, regnum)
+			      | MACB_BF(CODE, MACB_MAN_C22_CODE)));
+
+	status = macb_mdio_wait_for_idle(bp);
+	if (status < 0)
+		goto mdio_read_exit;
+
+	status = MACB_BFEXT(DATA, macb_readl(bp, MAN));
+
+mdio_read_exit:
+	pm_runtime_mark_last_busy(&bp->pdev->dev);
+	pm_runtime_put_autosuspend(&bp->pdev->dev);
+mdio_pm_exit:
+	return status;
+}
+
+static int macb_mdio_read_c45(struct mii_bus *bus, int mii_id, int devad,
+			      int regnum)
+{
+	struct macb *bp = bus->priv;
+	int status;
+
+	status = pm_runtime_get_sync(&bp->pdev->dev);
+	if (status < 0) {
+		pm_runtime_put_noidle(&bp->pdev->dev);
+		goto mdio_pm_exit;
 	}
 
+	status = macb_mdio_wait_for_idle(bp);
+	if (status < 0)
+		goto mdio_read_exit;
+
+	macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C45_SOF)
+			      | MACB_BF(RW, MACB_MAN_C45_ADDR)
+			      | MACB_BF(PHYA, mii_id)
+			      | MACB_BF(REGA, devad & 0x1F)
+			      | MACB_BF(DATA, regnum & 0xFFFF)
+			      | MACB_BF(CODE, MACB_MAN_C45_CODE)));
+
+	status = macb_mdio_wait_for_idle(bp);
+	if (status < 0)
+		goto mdio_read_exit;
+
+	macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C45_SOF)
+			      | MACB_BF(RW, MACB_MAN_C45_READ)
+			      | MACB_BF(PHYA, mii_id)
+			      | MACB_BF(REGA, devad & 0x1F)
+			      | MACB_BF(CODE, MACB_MAN_C45_CODE)));
+
 	status = macb_mdio_wait_for_idle(bp);
 	if (status < 0)
 		goto mdio_read_exit;
@@ -385,8 +412,8 @@ static int macb_mdio_read(struct mii_bus *bus, int mii_id, int regnum)
 	return status;
 }
 
-static int macb_mdio_write(struct mii_bus *bus, int mii_id, int regnum,
-			   u16 value)
+static int macb_mdio_write_c22(struct mii_bus *bus, int mii_id, int regnum,
+			       u16 value)
 {
 	struct macb *bp = bus->priv;
 	int status;
@@ -399,37 +426,63 @@ static int macb_mdio_write(struct mii_bus *bus, int mii_id, int regnum,
 	if (status < 0)
 		goto mdio_write_exit;
 
-	if (regnum & MII_ADDR_C45) {
-		macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C45_SOF)
-			    | MACB_BF(RW, MACB_MAN_C45_ADDR)
-			    | MACB_BF(PHYA, mii_id)
-			    | MACB_BF(REGA, (regnum >> 16) & 0x1F)
-			    | MACB_BF(DATA, regnum & 0xFFFF)
-			    | MACB_BF(CODE, MACB_MAN_C45_CODE)));
-
-		status = macb_mdio_wait_for_idle(bp);
-		if (status < 0)
-			goto mdio_write_exit;
-
-		macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C45_SOF)
-			    | MACB_BF(RW, MACB_MAN_C45_WRITE)
-			    | MACB_BF(PHYA, mii_id)
-			    | MACB_BF(REGA, (regnum >> 16) & 0x1F)
-			    | MACB_BF(CODE, MACB_MAN_C45_CODE)
-			    | MACB_BF(DATA, value)));
-	} else {
-		macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C22_SOF)
-				| MACB_BF(RW, MACB_MAN_C22_WRITE)
-				| MACB_BF(PHYA, mii_id)
-				| MACB_BF(REGA, regnum)
-				| MACB_BF(CODE, MACB_MAN_C22_CODE)
-				| MACB_BF(DATA, value)));
+	macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C22_SOF)
+			      | MACB_BF(RW, MACB_MAN_C22_WRITE)
+			      | MACB_BF(PHYA, mii_id)
+			      | MACB_BF(REGA, regnum)
+			      | MACB_BF(CODE, MACB_MAN_C22_CODE)
+			      | MACB_BF(DATA, value)));
+
+	status = macb_mdio_wait_for_idle(bp);
+	if (status < 0)
+		goto mdio_write_exit;
+
+mdio_write_exit:
+	pm_runtime_mark_last_busy(&bp->pdev->dev);
+	pm_runtime_put_autosuspend(&bp->pdev->dev);
+mdio_pm_exit:
+	return status;
+}
+
+static int macb_mdio_write_c45(struct mii_bus *bus, int mii_id,
+			       int devad, int regnum,
+			       u16 value)
+{
+	struct macb *bp = bus->priv;
+	int status;
+
+	status = pm_runtime_get_sync(&bp->pdev->dev);
+	if (status < 0) {
+		pm_runtime_put_noidle(&bp->pdev->dev);
+		goto mdio_pm_exit;
 	}
 
 	status = macb_mdio_wait_for_idle(bp);
 	if (status < 0)
 		goto mdio_write_exit;
 
+	macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C45_SOF)
+			      | MACB_BF(RW, MACB_MAN_C45_ADDR)
+			      | MACB_BF(PHYA, mii_id)
+			      | MACB_BF(REGA, devad & 0x1F)
+			      | MACB_BF(DATA, regnum & 0xFFFF)
+			      | MACB_BF(CODE, MACB_MAN_C45_CODE)));
+
+	status = macb_mdio_wait_for_idle(bp);
+	if (status < 0)
+		goto mdio_write_exit;
+
+	macb_writel(bp, MAN, (MACB_BF(SOF, MACB_MAN_C45_SOF)
+			      | MACB_BF(RW, MACB_MAN_C45_WRITE)
+			      | MACB_BF(PHYA, mii_id)
+			      | MACB_BF(REGA, devad & 0x1F)
+			      | MACB_BF(CODE, MACB_MAN_C45_CODE)
+			      | MACB_BF(DATA, value)));
+
+	status = macb_mdio_wait_for_idle(bp);
+	if (status < 0)
+		goto mdio_write_exit;
+
 mdio_write_exit:
 	pm_runtime_mark_last_busy(&bp->pdev->dev);
 	pm_runtime_put_autosuspend(&bp->pdev->dev);
@@ -902,8 +955,10 @@ static int macb_mii_init(struct macb *bp)
 	}
 
 	bp->mii_bus->name = "MACB_mii_bus";
-	bp->mii_bus->read = &macb_mdio_read;
-	bp->mii_bus->write = &macb_mdio_write;
+	bp->mii_bus->read = &macb_mdio_read_c22;
+	bp->mii_bus->write = &macb_mdio_write_c22;
+	bp->mii_bus->read_c45 = &macb_mdio_read_c45;
+	bp->mii_bus->write_c45 = &macb_mdio_write_c45;
 	snprintf(bp->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
 		 bp->pdev->name, bp->pdev->id);
 	bp->mii_bus->priv = bp;

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
