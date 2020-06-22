Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21732203CEE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C5BAB203BB;
	Mon, 22 Jun 2020 16:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GUIxo3LywYGc; Mon, 22 Jun 2020 16:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74130204B8;
	Mon, 22 Jun 2020 16:47:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77A411BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 532D021FFB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:06:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5CE-+O5p3aXP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:06:56 +0000 (UTC)
X-Greylist: delayed 00:05:48 by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id AEA9C20784
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:06:55 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a6so4156066wmm.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rcgV1UNGKm4K4QD82m2Udcr1uoHRVa+LAuPxtdS553M=;
 b=RkGI6towfSCgupn14twIBaRcPBpM6kTZkAyARWvNzlnwP2dFp8mTrnv4XT4CqOTAtt
 IZZIzKyBSsI3/vkakwGdPxh4YtWTjHfNDgdbQoZiEHDRdqwaJzeBZU2n3pe3Hl1JIPX3
 j5b+wJ80RHNzlW79fmuSMN+irizFshjUfl7KHbTO/28J+86JZlFjPu2oxnw1xDlP9U+o
 Tz/qaKPx5+I3TcQfOgtfVc5nagMQ1oAW9Ofb8YpEYwg0Zu2KW4gsBJQW7Tl/PL353xVB
 MT3qUFDfoJzdv7OI5y+BMBaG6gcer8a9lZAr62OJTJz3NDwnsNdQyvR6wevtOPQ6vWAU
 9aMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rcgV1UNGKm4K4QD82m2Udcr1uoHRVa+LAuPxtdS553M=;
 b=KYWmwfjQbDlSc+DCgKda11yNESMuf8pN8//JEQpKmjJqVaTrMJSUyET2FVk3RAgI8+
 lMWIGvLmYkDgxKjrLvgxOPyxYNQPc+dNtO8vwfcp08tlD0Yf4jrna3LTPbJscAui97yK
 gY6Ll9wmzJbtsHWTue1AoYtEB9K2a59SyuET+Z58bmV0huc3WGFd8aLAUkjaPC9YWvKb
 03r2QObie/iOTt1qefYyAQKF/ZnS/9YuaEgPWqvT5u7qas3xd1xtcaE6dqEpKQA7GoDa
 jnKc6hbGbs0bwpI8imMVrc2PPvbxlune9sN/Zz4MeQEyBiuhrHmzclR9hkOZSHPqxWeR
 1Vug==
X-Gm-Message-State: AOAM532KA9fKR/sERe/t3bTURPZsMPtCVjKgrdzjDRWywKPlKLAReEsW
 bIP9FXi3CHxkK+/2HYsSBUQErpBKf+E=
X-Google-Smtp-Source: ABdhPJy6HpyoKYwmL67X7W6b1kvbkakGECdClzNJkWp/hMLI6DOqKfaBEc4Vc9FAS3rR166Apmbchw==
X-Received: by 2002:a1c:f616:: with SMTP id w22mr9844980wmc.155.1592820077095; 
 Mon, 22 Jun 2020 03:01:17 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:16 -0700 (PDT)
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
Date: Mon, 22 Jun 2020 12:00:52 +0200
Message-Id: <20200622100056.10151-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200622100056.10151-1-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 07/11] phy: mdio: add kerneldoc for
 __devm_mdiobus_register()
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

This function is not documented. Add a short kerneldoc description.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/phy/mdio_devres.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/phy/mdio_devres.c b/drivers/net/phy/mdio_devres.c
index f0b4b6cfe5e3..3ee887733d4a 100644
--- a/drivers/net/phy/mdio_devres.c
+++ b/drivers/net/phy/mdio_devres.c
@@ -2,6 +2,13 @@
 
 #include <linux/phy.h>
 
+/**
+ * __devm_mdiobus_register - Resource-managed variant of mdiobus_register()
+ * @bus:	MII bus structure to register
+ * @owner:	Owning module
+ *
+ * Returns 0 on success, negative error number on failure.
+ */
 int __devm_mdiobus_register(struct mii_bus *bus, struct module *owner)
 {
 	int ret;
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
