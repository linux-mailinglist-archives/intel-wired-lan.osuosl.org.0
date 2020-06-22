Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4436203CF1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 838C5893D0;
	Mon, 22 Jun 2020 16:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YNyFdU3WA3hK; Mon, 22 Jun 2020 16:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B403D89411;
	Mon, 22 Jun 2020 16:47:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C54CC1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C144A885FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hc4oFjR5p6p9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:08:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3FEE9885DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:48 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id g10so14277448wmh.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=okWA8PmH0C2v2F1PxoaaMH4dinGpC6QBNEa7DW2Zh+g=;
 b=0NIB4N040OCOlLgg1O0x3F3JvByO2McpYkbxqJlqEN6Uq58x4AMdQ+vmj+3LegiabQ
 Qi5h6Dcv3VNEw+1qhAS9iL+Ip15A313D+S5s7uJcHHRwosRSi7RgslmsGIt0O228NVDo
 PoTwoUyuwGRep31ekyLWFFUPoZ/TiBca0eNIeHgmWQ1XaehWYL72IoRRCRAZdx1cSaJ3
 OlWtHwtJz9u+WM0ep6ON0EkIZ8Sve2lyWWwlIAcWWWiut3v+6NKMu8uaSloirjUY3JBr
 9Z8QSzo7FQnOxk4qsBB/iDIcaICDzSEM/QDfagcUetqaFwncNnOOvWoj+ek6OenujuR7
 /TRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=okWA8PmH0C2v2F1PxoaaMH4dinGpC6QBNEa7DW2Zh+g=;
 b=GW+6Lduot9ts8jt8seDoaSmWnDU0FnFHjVJ8xVR73lvB6+o6lo8+qx+kamhxfkBsNS
 fg8KXIQubwKfBT1B+v/PderHcX2ZFIIGve2vWQduW7/IlHm3R/+EFrbLgfMufKEOSxfc
 RxHeWv2v5OEnbYQ7ihlTAn+sP3x/SolAqQtaeHND9ZpGhQeS0qUUuvFIt69kNvIbslSm
 itd9LQQZGjY1i+9p5YaTRltMBulsYCyhvKliwenaCy1So4YmSQ3A2UdfsrK5XKpsaqWP
 nUrAt2AGMwsKwBFbCdmMuC8I1s7r4Qmm/tqzMZUdSMemx8T88DkAxQKPrM8ln8MHChjp
 vL4A==
X-Gm-Message-State: AOAM531CbTSuouG80FqqhfP7RmxIwRIkxRzo+FRw3Bi8X/8Vns5zupUT
 jeV7eHuIFgurJmVC7fcHPruLP0M/0+E=
X-Google-Smtp-Source: ABdhPJwS5xS9WKkHvow7dKsFvCMdQtYLfCBeItKxhFKFlwRPqAUaAjn5C3o1Oi23Aq0D8zU5tG1vjg==
X-Received: by 2002:a1c:804c:: with SMTP id b73mr698464wmd.59.1592820070021;
 Mon, 22 Jun 2020 03:01:10 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:09 -0700 (PDT)
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
Date: Mon, 22 Jun 2020 12:00:48 +0200
Message-Id: <20200622100056.10151-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200622100056.10151-1-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 03/11] net: devres: relax
 devm_register_netdev()
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

This devres helper registers a release callback that only unregisters
the net_device. It works perfectly fine with netdev structs that are
not managed on their own. There's no reason to check this - drop the
warning.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 net/devres.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/net/devres.c b/net/devres.c
index 57a6a88d11f6..1583ccb207c0 100644
--- a/net/devres.c
+++ b/net/devres.c
@@ -46,14 +46,6 @@ static void devm_netdev_release(struct device *dev, void *this)
 	unregister_netdev(res->ndev);
 }
 
-static int netdev_devres_match(struct device *dev, void *this, void *match_data)
-{
-	struct net_device_devres *res = this;
-	struct net_device *ndev = match_data;
-
-	return ndev == res->ndev;
-}
-
 /**
  *	devm_register_netdev - resource managed variant of register_netdev()
  *	@dev: managing device for this netdev - usually the parent device
@@ -61,22 +53,13 @@ static int netdev_devres_match(struct device *dev, void *this, void *match_data)
  *
  *	This is a devres variant of register_netdev() for which the unregister
  *	function will be call automatically when the managing device is
- *	detached. Note: the net_device used must also be resource managed by
- *	the same struct device.
+ *	detached.
  */
 int devm_register_netdev(struct device *dev, struct net_device *ndev)
 {
 	struct net_device_devres *dr;
 	int ret;
 
-	/* struct net_device must itself be managed. For now a managed netdev
-	 * can only be allocated by devm_alloc_etherdev_mqs() so the check is
-	 * straightforward.
-	 */
-	if (WARN_ON(!devres_find(dev, devm_free_netdev,
-				 netdev_devres_match, ndev)))
-		return -EINVAL;
-
 	dr = devres_alloc(devm_netdev_release, sizeof(*dr), GFP_KERNEL);
 	if (!dr)
 		return -ENOMEM;
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
