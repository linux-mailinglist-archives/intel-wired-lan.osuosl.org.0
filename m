Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08186203CF9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B194A88671;
	Mon, 22 Jun 2020 16:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kioiarIhMRr6; Mon, 22 Jun 2020 16:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 054F08871E;
	Mon, 22 Jun 2020 16:47:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 959AA1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 911DD88575
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FATcHLiWiNUS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:09:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC87D8815E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:09:33 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id t194so15111367wmt.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A+lImr9HJg7an5aR2kWVhsrz0bguXORdrvazpSsfAy4=;
 b=Tsq60zSlQyklW6ikiOvVha9m8MSQkGcpaji1GbS6xFPATyiJUUq3JKJyfCAyoxgehy
 6CzmzBfAhfYC+JJ7E2jJttBs8SlhgR8oo9tMY8qH0H5uA72QFI9xKDo+9n217Y4MWcDI
 iIpqF19hJetEL+xliD5MhEvVcUjPcnrYARK0a04t2IuYk/3fmnQix3PKNa1StSQ2Ywir
 OsASWBCKRjtVl/oQTuUFv5MYvUju1kmBOyveg54l6ZkSpLRCgEJ7CT/LJK7QfCebpVVu
 Mj4niG7n9b0pf3hzpGxkqMvGlvJ+MWwIDdWWPh8rjVNo3Yy750rQCUi4Ar9S11Dn+wof
 slIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A+lImr9HJg7an5aR2kWVhsrz0bguXORdrvazpSsfAy4=;
 b=PuoR7rDOT+YhjRLxoepkZP7XcbOIaeCVzP9yAYwIpTqEy5z0DIPZ8RvAh3CO2qGUyL
 dvyzw37vNtWqK304Lz/PXRb/HzE/8QAZ3IhBkN0+fX/ko+UPOueQwCRw3dUf3GlOKmTH
 XTwGeCpGaN+csRzF0PC2W6JlHnzzjr7vdxHPlIZU6D8X+SKJgysV2OgLaFScpbCGFCGa
 x0XYhCNBgCAstDw7WyM+BOTUnKBvBbRMnX+yyFFWrJ55viX3kMukzh5myC8ZVjxO8ms6
 u/nYoVL28iQ0yRT138h1+jJZkppOiHf5bCEYROlYD3LO4IG6qkwXrDB5ovNQRBuyqk4+
 YAJQ==
X-Gm-Message-State: AOAM532wcsIYDucpbiFIPoyh/ULCYK+rhw8ho0tYepJdSoywJiBBiuyM
 qaPPEElmnaG3c2kr2iXX5iLe0ci5jPA=
X-Google-Smtp-Source: ABdhPJz+xi3uc649226XqSHmo+O8gA+/80J/5T5A137PMAF2MXQi5PymwGW6I5MXBKX7A322evi/xw==
X-Received: by 2002:a1c:3bc2:: with SMTP id i185mr17995739wma.33.1592820071777; 
 Mon, 22 Jun 2020 03:01:11 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:11 -0700 (PDT)
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
Date: Mon, 22 Jun 2020 12:00:49 +0200
Message-Id: <20200622100056.10151-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200622100056.10151-1-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 04/11] net: devres: rename the release
 callback of devm_register_netdev()
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

Make it an explicit counterpart to devm_register_netdev() just like we
do with devm_free_netdev() for better clarity.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 net/devres.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/devres.c b/net/devres.c
index 1583ccb207c0..d7aa92243844 100644
--- a/net/devres.c
+++ b/net/devres.c
@@ -39,7 +39,7 @@ struct net_device *devm_alloc_etherdev_mqs(struct device *dev, int sizeof_priv,
 }
 EXPORT_SYMBOL(devm_alloc_etherdev_mqs);
 
-static void devm_netdev_release(struct device *dev, void *this)
+static void devm_unregister_netdev(struct device *dev, void *this)
 {
 	struct net_device_devres *res = this;
 
@@ -60,7 +60,7 @@ int devm_register_netdev(struct device *dev, struct net_device *ndev)
 	struct net_device_devres *dr;
 	int ret;
 
-	dr = devres_alloc(devm_netdev_release, sizeof(*dr), GFP_KERNEL);
+	dr = devres_alloc(devm_unregister_netdev, sizeof(*dr), GFP_KERNEL);
 	if (!dr)
 		return -ENOMEM;
 
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
