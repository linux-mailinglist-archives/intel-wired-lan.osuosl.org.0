Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F7B203CF2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06E8B204EE;
	Mon, 22 Jun 2020 16:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3aog58TynfR; Mon, 22 Jun 2020 16:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 288B020768;
	Mon, 22 Jun 2020 16:47:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D5F551BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D28F6885FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2iM5+XOHmEcu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:07:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E4362885DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:07:51 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id r15so15112801wmh.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nZJ9RrYkX//UjOI/5YYylQYoHuaDDR4YnVJY1VbZiK8=;
 b=W5twYeDFovUtibE54WQz/oY7xyAdsth+BrFOY/mwsKgJPsn0I8IXyw+KxwKQF1ccxI
 0Vt4K58MBHihtcBcsAbduhBD/mpp6DDwwRtQDMg4DPDarSks61h5JkloiQmN5VvS0yn1
 0MSYq3+hFxyViGeyscqGmPromya4jk9KRI0GNLYt2z3RxhbOM4E3fY3KBk6qoCm79iXc
 3Hv1vs4zZ9h7EGmVIUsjsu72HT6azkCzrdmgJHG4VQQEoPysFHsyyrj5e60fdxVZexdD
 trJKHKTrt9CadDNiF6JYZkjIDKxYSRiSUtH8aF77wU6jWNuYEqz2A6dAA/jnuyrnG/K6
 JkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nZJ9RrYkX//UjOI/5YYylQYoHuaDDR4YnVJY1VbZiK8=;
 b=Ij7jWn3GA14TDSXQ3Z05zbRK4lrhLSL19VKuPJqSqazp+8lPbd0pfvCqPLUbiswN4p
 ObXntbhSqyAQD4GyOItd9JHQtPciFA2vKIacKAweTPnNAdZJSfDB5YYrRVJ9VIeHD3Yw
 MOAKKPHWrJ+ZofTVjVZfCwqAE2R8FWc9J4tNXugFafHoV8ki3hGHhuCqhjXMfxk+5z5t
 NgQMX7KKL++8KYIj/n67Ke9D/HdMSOZPhByrw9iEGh/xVmzw0fSQAHaHJeBXdnokLc0w
 HqqJuhwa84YIK49tW5BUc+Fr6KADETb0Wau79qUB/D/I7kcd3ZUj1Nkcdz70SfwV85z6
 dmDA==
X-Gm-Message-State: AOAM5303PVCcgyNb00iF1yVA0VEWxPOmL9RuqgYElbRfpt1sNt4jM+8G
 1MVzvWD/hBRwjeEFkUYFm84ct4JVJx4=
X-Google-Smtp-Source: ABdhPJz3Tx9rRuWOQsVP67dBEA0GfJ//6KQ3oIcn8+cDfu01dOKFVefKNNRcSbP+61lUU38AkDnLJw==
X-Received: by 2002:a05:600c:2dc1:: with SMTP id
 e1mr5037577wmh.108.1592820068560; 
 Mon, 22 Jun 2020 03:01:08 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:08 -0700 (PDT)
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
Date: Mon, 22 Jun 2020 12:00:47 +0200
Message-Id: <20200622100056.10151-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200622100056.10151-1-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 02/11] net: ethernet: ixgbe: don't call
 devm_mdiobus_free()
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

The idea behind devres is that the release callbacks are called if
probe fails. As we now check the return value of ixgbe_mii_bus_init(),
we can drop the call devm_mdiobus_free() in error path as the release
callback will be called automatically.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 2fb97967961c..7980d7265e10 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -905,7 +905,6 @@ s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
 	struct pci_dev *pdev = adapter->pdev;
 	struct device *dev = &adapter->netdev->dev;
 	struct mii_bus *bus;
-	int err = -ENODEV;
 
 	bus = devm_mdiobus_alloc(dev);
 	if (!bus)
@@ -923,7 +922,7 @@ s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
 	case IXGBE_DEV_ID_X550EM_A_1G_T:
 	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
 		if (!ixgbe_x550em_a_has_mii(hw))
-			goto ixgbe_no_mii_bus;
+			return -ENODEV;
 		bus->read = &ixgbe_x550em_a_mii_bus_read;
 		bus->write = &ixgbe_x550em_a_mii_bus_write;
 		break;
@@ -948,15 +947,8 @@ s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
 	 */
 	hw->phy.mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_SUPPORTS_C22;
 
-	err = mdiobus_register(bus);
-	if (!err) {
-		adapter->mii_bus = bus;
-		return 0;
-	}
-
-ixgbe_no_mii_bus:
-	devm_mdiobus_free(dev, bus);
-	return err;
+	adapter->mii_bus = bus;
+	return mdiobus_register(bus);
 }
 
 /**
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
