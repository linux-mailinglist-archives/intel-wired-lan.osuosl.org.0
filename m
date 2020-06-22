Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3A1203CED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 131F586241;
	Mon, 22 Jun 2020 16:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7BD0iaFWN5cl; Mon, 22 Jun 2020 16:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76812862E4;
	Mon, 22 Jun 2020 16:47:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B60E1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A9DF21F6F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1JnFRZ7uVCR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:08:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 35C2120784
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:05 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id l17so14298511wmj.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7pEL+pOqyLTkwaRij99JSBZiVqVmOtzJ61ge9c76alE=;
 b=eaQDTmoIva7YgqUT7n4mmFYcgVR8tYbiSv+EsIHLIkQIJviMpTReLXYVtvFOol2q0e
 LdphqNn3acWhpQSuesmQgbP86SDv2CFnYiE9kY21eMu86QB0XYrJByJRId49gHAlMstK
 B4PEF9TayTWp8MPD7056GMzylW6Q4ubJ6zSD88ao0ofMVT8s1OPaucGSs+G1NKXCU30e
 StG0ZCrSCfsoa1hh3rlMOqh0cMq2OsJKG43o3A8mXuwgeMr2MQBldeFEmmaxo9KTVZVr
 OFBWf0C3jGOzn1RbJXOwkVbboUkef6zzBQaj44aHFBunXxesBGFG26tktECmHQNvp0dY
 2sXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7pEL+pOqyLTkwaRij99JSBZiVqVmOtzJ61ge9c76alE=;
 b=pDVOp7z1wuKDFwnwUQ0msuR25xJDSEQd924HWtYWTq6hlC/hRO8Wx3H1HXo7geCbB9
 M2rvdBhLNS19zIfYfEh6hPA1o1DGXw3srlkqG5nburSwgptjIzAepJoKFTDj01gdNa/C
 5RSB3EYp2nkzrL3VxQvVg7hMbfth9p54fr8llDs/F48VgEmvhCIGPWsZQU0UFpM98XYB
 huGrCk3VKKD16B5571ssKH/HSCB3EWWR2D6mhFnCLTk3IAFTxS2+aRoSQsjNhqx9D0lq
 Tc+Hil2sNdVXTYZXvnh2XNCysZjD29T/2L6kFqhDXMW/QTL+cPBEkms8itr20ePVMCBg
 6dbg==
X-Gm-Message-State: AOAM533aLNNsFyIMXhwnLQpDKqlDMlouYltp5GvCuLRs1udAQFGYXGKq
 AgBv8GUJTnYiOVRLLgJw8wnWuvvP7Zg=
X-Google-Smtp-Source: ABdhPJzbn3QUtTBkSaHKKRlQD+NAcxXoZjCO6pjuNjVVzgSeYV529/r6h+a5y21qbFYnMCH6f96pIg==
X-Received: by 2002:a1c:804c:: with SMTP id b73mr699546wmd.59.1592820083830;
 Mon, 22 Jun 2020 03:01:23 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:23 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Date: Mon, 22 Jun 2020 12:00:56 +0200
Message-Id: <20200622100056.10151-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200622100056.10151-1-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 11/11] net: ethernet: mtk-star-emac: use
 devm_of_mdiobus_register()
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
Cc: devicetree@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Shrink the code by using the managed variant of of_mdiobus_register().

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
index 3e765bdcf9e1..13250553263b 100644
--- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
+++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
@@ -1389,7 +1389,7 @@ static int mtk_star_mdio_init(struct net_device *ndev)
 	priv->mii->write = mtk_star_mdio_write;
 	priv->mii->priv = priv;
 
-	ret = of_mdiobus_register(priv->mii, mdio_node);
+	ret = devm_of_mdiobus_register(dev, priv->mii, mdio_node);
 
 out_put_node:
 	of_node_put(mdio_node);
@@ -1441,13 +1441,6 @@ static void mtk_star_clk_disable_unprepare(void *data)
 	clk_bulk_disable_unprepare(MTK_STAR_NCLKS, priv->clks);
 }
 
-static void mtk_star_mdiobus_unregister(void *data)
-{
-	struct mtk_star_priv *priv = data;
-
-	mdiobus_unregister(priv->mii);
-}
-
 static int mtk_star_probe(struct platform_device *pdev)
 {
 	struct device_node *of_node;
@@ -1549,10 +1542,6 @@ static int mtk_star_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = devm_add_action_or_reset(dev, mtk_star_mdiobus_unregister, priv);
-	if (ret)
-		return ret;
-
 	ret = eth_platform_get_mac_address(dev, ndev->dev_addr);
 	if (ret || !is_valid_ether_addr(ndev->dev_addr))
 		eth_hw_addr_random(ndev);
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
