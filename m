Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C86666E37E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:24:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 071A361099;
	Tue, 17 Jan 2023 16:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 071A361099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972657;
	bh=s7cXdcamo2wR/JZIkLnLjJ7XUK5zvmGsQOyUPpikPzg=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LB7rlTPGkSktqvwszMQv7L9AhHC8WTIz70fgRMa8hF8TVVB6qI92PuiyuuIvOKwG9
	 VEde29HfuUztHc536AYK3jT9uaC58dZh1Tj4yTlLmFOwNSA/ObA6oq12BsqIgQ+8r3
	 jCVDHhwFzaCCDtQkL4Vff67gbTLl7ov/95PB9wBJEZdCqj2DCKbKKHavK6fdysEbr7
	 gw3T+HS2fd5n+0l9UTfw1UOOfGWCOSEYdyVWZwuDfUqi9wcafDw6mwlVj0yDul1Hnd
	 AIQG5OxcU0iHbjQeQd9PrxFj24YvK4P/RNjHINlqJECUWD1wzrbyhgDaN6OBHB2EXA
	 TVGwq5KGqi1EA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5o3sscc6DXWz; Tue, 17 Jan 2023 16:24:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF03361084;
	Tue, 17 Jan 2023 16:24:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF03361084
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 332831BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F93380E17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F93380E17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tIeUCBVqPO17 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 00:03:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 492B580CB8
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 492B580CB8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:44 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id 377561AA3;
 Tue, 17 Jan 2023 00:52:51 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:27 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-12-0c53afa56aad@walle.cc>
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
 bh=VAC3lvYePixzcXebo4E3nrWp2H/ZNlz8TyV8NSReGQs=;
 b=GX7X6H8lc5xEN2+bG0vGPNrbHpUIAQOgt5cogS4U1N7qThjjN2kBzzYQp/8KzT84ti0igo
 xSB7LtanZuOWOoFLF//R6xu0DEVnKAgh2gmiPE8/wZoeTLTCRdhRpTvFILbtntC9hLuBLj
 CnLtT1FJ5lt9YoGY5oDs0zZjipTZSuzptW13uvMVmynj6dYqNfnd42XKFSNgMGotGTUKE8
 BXzciw/3UQuIntlC/9InYkjZ7/KD6wG+fCP+B75yawvNq2My4riw29+tbN+fKgvqe1mdeQ
 IY10rHas3nLp7tewG0aHGrt5ZwAbQkMfxwLieYn3rr2+MYMWJ09/jxb5QTziBA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=GX7X6H8l
Subject: [Intel-wired-lan] [PATCH net-next 12/12] net: ethernet: renesas:
 rswitch: C45 only transactions
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

The rswitch MDIO bus driver only supports C45 transfers. Update the
function names to make this clear, pass the mmd as a parameter, and
register the accessors to the _c45 ops of the bus driver structure.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/ethernet/renesas/rswitch.c | 28 ++++++----------------------
 1 file changed, 6 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/renesas/rswitch.c b/drivers/net/ethernet/renesas/rswitch.c
index 6441892636db..885fdb077b62 100644
--- a/drivers/net/ethernet/renesas/rswitch.c
+++ b/drivers/net/ethernet/renesas/rswitch.c
@@ -1024,34 +1024,18 @@ static int rswitch_etha_set_access(struct rswitch_etha *etha, bool read,
 	return ret;
 }
 
-static int rswitch_etha_mii_read(struct mii_bus *bus, int addr, int regnum)
+static int rswitch_etha_mii_read_c45(struct mii_bus *bus, int addr, int devad,
+				     int regad)
 {
 	struct rswitch_etha *etha = bus->priv;
-	int mode, devad, regad;
-
-	mode = regnum & MII_ADDR_C45;
-	devad = (regnum >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-	regad = regnum & MII_REGADDR_C45_MASK;
-
-	/* Not support Clause 22 access method */
-	if (!mode)
-		return -EOPNOTSUPP;
 
 	return rswitch_etha_set_access(etha, true, addr, devad, regad, 0);
 }
 
-static int rswitch_etha_mii_write(struct mii_bus *bus, int addr, int regnum, u16 val)
+static int rswitch_etha_mii_write_c45(struct mii_bus *bus, int addr, int devad,
+				      int regad, u16 val)
 {
 	struct rswitch_etha *etha = bus->priv;
-	int mode, devad, regad;
-
-	mode = regnum & MII_ADDR_C45;
-	devad = (regnum >> MII_DEVADDR_C45_SHIFT) & 0x1f;
-	regad = regnum & MII_REGADDR_C45_MASK;
-
-	/* Not support Clause 22 access method */
-	if (!mode)
-		return -EOPNOTSUPP;
 
 	return rswitch_etha_set_access(etha, false, addr, devad, regad, val);
 }
@@ -1142,8 +1126,8 @@ static int rswitch_mii_register(struct rswitch_device *rdev)
 	mii_bus->name = "rswitch_mii";
 	sprintf(mii_bus->id, "etha%d", rdev->etha->index);
 	mii_bus->priv = rdev->etha;
-	mii_bus->read = rswitch_etha_mii_read;
-	mii_bus->write = rswitch_etha_mii_write;
+	mii_bus->read_c45 = rswitch_etha_mii_read_c45;
+	mii_bus->write_c45 = rswitch_etha_mii_write_c45;
 	mii_bus->parent = &rdev->priv->pdev->dev;
 
 	mdio_np = rswitch_get_mdio_node(rdev);

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
