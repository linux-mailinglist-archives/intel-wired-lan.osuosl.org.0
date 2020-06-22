Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D339C203CEC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81DFD893EE;
	Mon, 22 Jun 2020 16:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gd+FrmlkOuTc; Mon, 22 Jun 2020 16:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC2E9893C0;
	Mon, 22 Jun 2020 16:47:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD3031BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D5ABD885FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pERCGiGphgO6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:07:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9D262885DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:07:48 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id t194so15105923wmt.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0OwWR9e+WLqXjj7DZkBsabU1u86Gybrt82xzuKAKe9o=;
 b=PF+tNOmBYUtaXR59mgLImt5cydyQjc6gCPHU2lpTFbbnauDrYket1vtlbvya1ZFFaX
 gZcWbJjIa4v6QOhEmbOEpsuz/BzHnaMKaiIZawDoROmh5HVGhBYs/wDzYWqAlUjdnSUP
 UknHwa2e8E7lmYaNQ2ZInYopleBTBrQXkM3owc7xyhGa+IPJhFae9afW+yTnTVvNJVHO
 noPcA8CyypW5+/8+u8UidiqF8N8uVszPjCDi1HZeV9HdAcrfhH1rHUd12HGSNxazdHuY
 1nHtMg93+nwFp/9FA+D2PC82dYeE4jCIN7biofp8SUU38ZY+Mu2iypl7deFI/1IGlFYE
 BSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0OwWR9e+WLqXjj7DZkBsabU1u86Gybrt82xzuKAKe9o=;
 b=a+SajwHZ2mJM1tZScSYHfBC5uPW/smSdcvQI+MC6rygaH5dyCm2oj32uDtpESVYgVO
 8w/AxzHtPb0VWS8As/d6fjffp1VBEZtJJ3cHtSzcNUl7lKj6GkWFdYdeeGluqMo3vbLk
 HwTzpoWlkUqtVKY7ortiJxUXr8m86kI5TIeU9JpTA8eUrGTvVir76i6rj8D6s63wES4Q
 lTsH55HorpRVVRT1oNkhR2sPWUh4uLW4RLD7BSPduk/g3kiAejI+p+XdZRAeCcsfUOFc
 0/5dW45NYqOACRWgGBjJy0PmnGTfv63HKNZU2SFQ48tu08EyqZfcIYUKV4AXVBbxZCQB
 OOOg==
X-Gm-Message-State: AOAM533Pa2v5eldx7y/FqM4PUjghBq5WHh3A6a9WCR/lgxDHn+lItTW5
 0h77PCKS1No9L787QbukM6Ip0b8V7yI=
X-Google-Smtp-Source: ABdhPJwvA59r+zUadSM89AyF+H+fxT/nf2nvFkXIaFeBdOLpCsO/8Bm7rv3uF+bD/IjDwAb9EKnqCw==
X-Received: by 2002:a05:600c:21d7:: with SMTP id
 x23mr18471470wmj.95.1592820082109; 
 Mon, 22 Jun 2020 03:01:22 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:21 -0700 (PDT)
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
Date: Mon, 22 Jun 2020 12:00:55 +0200
Message-Id: <20200622100056.10151-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200622100056.10151-1-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 10/11] of: mdio: provide
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

Implement a managed variant of of_mdiobus_register(). We need to
reimplement the devres structure and the release callback because we
can't put this function in drivers/net/phy/mdio_devres.c or we'd hit
circular dependencies between module symbols. We also don't want to
build this bit if OF is not selected in Kconfig.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../driver-api/driver-model/devres.rst        |  1 +
 drivers/of/of_mdio.c                          | 43 +++++++++++++++++++
 include/linux/of_mdio.h                       |  3 ++
 3 files changed, 47 insertions(+)

diff --git a/Documentation/driver-api/driver-model/devres.rst b/Documentation/driver-api/driver-model/devres.rst
index e0333d66a7f4..eaaaafc21134 100644
--- a/Documentation/driver-api/driver-model/devres.rst
+++ b/Documentation/driver-api/driver-model/devres.rst
@@ -343,6 +343,7 @@ MDIO
   devm_mdiobus_alloc()
   devm_mdiobus_alloc_size()
   devm_mdiobus_register()
+  devm_of_mdiobus_register()
 
 MEM
   devm_free_pages()
diff --git a/drivers/of/of_mdio.c b/drivers/of/of_mdio.c
index a04afe79529c..83e98c6ec96b 100644
--- a/drivers/of/of_mdio.c
+++ b/drivers/of/of_mdio.c
@@ -330,6 +330,49 @@ int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 }
 EXPORT_SYMBOL(of_mdiobus_register);
 
+/* This duplicates the devres code from drivers/net/phy/mdio_devres.c but
+ * if we put devm_of_mdiobus_register() over there we'd hit circular symbol
+ * dependencies between the libphy and of_mdio modules.
+ */
+struct mdiobus_devres {
+	struct mii_bus *mii;
+};
+
+static void devm_mdiobus_unregister(struct device *dev, void *this)
+{
+	struct mdiobus_devres *dr = this;
+
+	mdiobus_unregister(dr->mii);
+}
+
+/**
+ * devm_of_mdiobus_register - Resource managed variant of of_mdiobus_register()
+ * @dev:	Device to register mii_bus for
+ * @mdio:	MII bus structure to register
+ * @np:		Device node to parse
+ */
+int devm_of_mdiobus_register(struct device *dev, struct mii_bus *mdio,
+			     struct device_node *np)
+{
+	struct mdiobus_devres *dr;
+	int ret;
+
+	dr = devres_alloc(devm_mdiobus_unregister, sizeof(*dr), GFP_KERNEL);
+	if (!dr)
+		return -ENOMEM;
+
+	ret = of_mdiobus_register(mdio, np);
+	if (ret) {
+		devres_free(dr);
+		return ret;
+	}
+
+	dr->mii = mdio;
+	devres_add(dev, dr);
+	return 0;
+}
+EXPORT_SYMBOL(devm_of_mdiobus_register);
+
 /**
  * of_phy_find_device - Give a PHY node, find the phy_device
  * @phy_np: Pointer to the phy's device tree node
diff --git a/include/linux/of_mdio.h b/include/linux/of_mdio.h
index ba8e157f24ad..1efb88d9f892 100644
--- a/include/linux/of_mdio.h
+++ b/include/linux/of_mdio.h
@@ -8,12 +8,15 @@
 #ifndef __LINUX_OF_MDIO_H
 #define __LINUX_OF_MDIO_H
 
+#include <linux/device.h>
 #include <linux/phy.h>
 #include <linux/of.h>
 
 #if IS_ENABLED(CONFIG_OF_MDIO)
 bool of_mdiobus_child_is_phy(struct device_node *child);
 int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np);
+int devm_of_mdiobus_register(struct device *dev, struct mii_bus *mdio,
+			     struct device_node *np);
 struct phy_device *of_phy_find_device(struct device_node *phy_np);
 struct phy_device *
 of_phy_connect(struct net_device *dev, struct device_node *phy_np,
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
