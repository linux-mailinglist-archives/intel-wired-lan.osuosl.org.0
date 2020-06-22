Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DE6203CF0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D21B988683;
	Mon, 22 Jun 2020 16:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Olgyj+2WNe+8; Mon, 22 Jun 2020 16:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D3508869F;
	Mon, 22 Jun 2020 16:47:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AE931BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3681786371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KsofFNaDPF4q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:08:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B2518458C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:38 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id l17so14299954wmj.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vANIsXo74NzXiDIyR10LVPoVvN0SF3cCppVREngNaSg=;
 b=xtlQ6vt2ftcI+XabUk5dlYEY+EoWH8nR8xcQ0FineEvTFIyHxwdZru/XNV/dfPCuwH
 p+2SV3EvOLiwS1nhvc60TsvMW4YNirrfN8g/xcNwpKisI/ZQhpTItmGFfFpSHrXsGu+S
 b7MvvTAW41tXqhs9scOYapiZqZ36Pfyhf81lebKF4vMaR5ghYo5mQz1TbDxar4ISYJoU
 r97GfAQhf4HMDRDYdamUBfw7XB2G5c/8Yd3xQBk2wd2NRH8kL2poxNolBqJT2m6c+bYv
 ZbtsK6uSEB72jNc60WhrddXbm/mQa5m5tZApNrkGL3PmfTcjFpfrBr+Em/UQj5iDvDis
 u71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vANIsXo74NzXiDIyR10LVPoVvN0SF3cCppVREngNaSg=;
 b=XMYBesVmwc6Bdq7PfyXGehy6sv29GO5QGOxkAPtGRY86n6zdIPdnHj1izFCcZhOIrl
 GjAd1vpfXxv/oz/+eI8ila6SbhbcG9mWARFr6GeDzh4N6kt0YQ29cfQ87S1MNkky28wp
 z6P5yLLg0j2k9xPbd/OJ6UWmOc+gV9qCB9WiP3BWyo2TmblxpGYVSkc7jqyss+TVX8dx
 KfQ9vZtyMTilgyPLwczP2rmI526tJO+iDY1TXrtlwHjEEEZhwrqDctlPuvBHXJUzU7f1
 TD1iF5ERR7yLViHk5vs7WW3Hy5YL5K6gOB0cjUVXuiKGA9fbP1oiRhKG7rGRq7HdO29Z
 6HKg==
X-Gm-Message-State: AOAM530ctyYjKkSsf+j4iJfzDCBzcV2wrlNptVf8MU/f7X8hKXrRnG1b
 bAy2JfKpckhxBFjM8USI687EOe3oIew=
X-Google-Smtp-Source: ABdhPJzUHixuKfQa4u9XvxcXJoOatBovm5nA4dkuN9R2ixW6hpip+ioKdNDg9ycFUOAJ0KD49goWaA==
X-Received: by 2002:a1c:c1:: with SMTP id 184mr17443884wma.74.1592820073899;
 Mon, 22 Jun 2020 03:01:13 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:12 -0700 (PDT)
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
Date: Mon, 22 Jun 2020 12:00:50 +0200
Message-Id: <20200622100056.10151-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200622100056.10151-1-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 05/11] Documentation: devres: add missing
 mdio helper
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

We have a devres variant of mdiobus_register() but it's not listed in
devres.rst. Add it under other mdio devm functions.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 Documentation/driver-api/driver-model/devres.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/driver-api/driver-model/devres.rst b/Documentation/driver-api/driver-model/devres.rst
index e0b58c392e4f..5463fc8a60c1 100644
--- a/Documentation/driver-api/driver-model/devres.rst
+++ b/Documentation/driver-api/driver-model/devres.rst
@@ -343,6 +343,7 @@ MDIO
   devm_mdiobus_alloc()
   devm_mdiobus_alloc_size()
   devm_mdiobus_free()
+  devm_mdiobus_register()
 
 MEM
   devm_free_pages()
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
