Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E87203CEF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C2A68659E;
	Mon, 22 Jun 2020 16:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivn_43QwhTPN; Mon, 22 Jun 2020 16:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBCCA864EA;
	Mon, 22 Jun 2020 16:47:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EF2A1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 07AB0891B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0L+wFjV0UCnh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:08:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CEB2C891C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:08:18 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id j18so738115wmi.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0a5wnHY7CslRA6Iynsfhb3yG1izm8FY/pWdetFoi42c=;
 b=rxCKkG6SfwCZOTa1iL5Lojz3NDEQwyb2IxWpdYBFS7nvwaSmH3nUs6LKzmpIqO9fmz
 T0E4/NHNhWS1FxOj6Knq7vaDIfED18iz4zDTKFADfGdZ87o9VBNoHn9xKkFZ5ABiLuMo
 spikJGn8iabnLkYyJ4CKFueyLxhkCPXnn+tT0IIM62ri0cxtQBzPXWPE2OKAi+/WB4Hb
 Zm7iXcDn1Km9OIDru3YUscj0Ip3rFJhgBzUhsF68MWUFQB29eaTMLMdCy2o5sHrQdX4O
 +4gvt10n83RfLFmg67wO7WMqC6KCkbs7hPXvMxFl4ifmIlhRhWH6of7y0Q6ilwx8joXN
 aa9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0a5wnHY7CslRA6Iynsfhb3yG1izm8FY/pWdetFoi42c=;
 b=Ek3owpuLpDUDrjHnhvgzrLrQyz7MWC9RjjuxAB1S6fAuItbu24rt4J0ienycGFqCrD
 xUzok3FWrrFW/tLc2z5Vc6Zr8cIxQ62SfeOMH/1pXFUTYRAOvspyX9jIlAY1emcDiQgj
 +LPmEqkz3UDvr+gsmtGl8UeR1VfJteNyz2azccfsRrlrEmGyJyfgKjaa0xfVH0PqU8ok
 s6eDQIBam4U6gqgiVUMgLA3VjnZWbfZIZ159dp0vCDUGk+H056QFrDCmT9bOFU43ukqV
 5k1URC23p2ywK8AXhaI3uEaDdE/buORX8/IIle1FYbu2j6cF+C0hDJj9kbUBD0Bm4TEF
 vUIg==
X-Gm-Message-State: AOAM531UA70E0EPTblrAJA9/tX/4zkticnwT5E4HzL+n+cvFnhoxnUTN
 v5t367YdC4nT6NVmmGVRnd5XsKOC+48=
X-Google-Smtp-Source: ABdhPJwltFZXM/3VYa9tIy2MbCHj//CBC2paauuUY5AwGyYeKiWa1AZvShK5hzeRuXlvCn791GVruA==
X-Received: by 2002:a1c:c1:: with SMTP id 184mr17443220wma.74.1592820065387;
 Mon, 22 Jun 2020 03:01:05 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:04 -0700 (PDT)
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
Date: Mon, 22 Jun 2020 12:00:45 +0200
Message-Id: <20200622100056.10151-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 00/11] net: improve devres helpers
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

When I first submitted the series adding devm_register_netdev() I was
told during review that it should check if the underlying struct net_device
is managed too before proceeding. I initially accepted this as the right
approach but in the back of my head something seemed wrong about this.
I started looking around and noticed how devm_mdiobus_register()
is implemented.

It turned out that struct mii_bus contains information about whether it's
managed or not and the release callback of devm_mdiobus_alloc() is responsible
for calling mdiobus_unregister(). This seems wrong to me as managed structures
shouldn't care about who manages them. It's devres' code task to correctly undo
whatever it registers/allocates.

With this series I propose to make the release callbacks of mdiobus devm
helpers only release the resources they actually allocate themselves as it the
standard in devm routines. I also propose to not check whether the structures
passed to devm_mdiobus_register() and devm_register_netdev() are already
managed as they could have been allocated over devres as part of bigger
memory chunk. I see this as an unnecessary limitation.

First two patches aim at removing the only use of devm_mdiobus_free(). It
modifies the ixgbe driver. I only compile tested it as I don't have the
relevant hw.

Next two patches relax devm_register_netdev() - we stop checking whether
struct net_device was registered using devm_etherdev_alloc().

We then document the mdio devres helper that's missing in devres.rst list
and un-inline the current implementation of devm_mdiobus_register().

Patch 8 re-implements the devres helpers for mdio conforming to common
devres patterns.

Patches 9 and 10 provide devm_of_mdiobus_register() and the last patch
adds its first user.

Bartosz Golaszewski (11):
  net: ethernet: ixgbe: check the return value of ixgbe_mii_bus_init()
  net: ethernet: ixgbe: don't call devm_mdiobus_free()
  net: devres: relax devm_register_netdev()
  net: devres: rename the release callback of devm_register_netdev()
  Documentation: devres: add missing mdio helper
  phy: un-inline devm_mdiobus_register()
  phy: mdio: add kerneldoc for __devm_mdiobus_register()
  net: phy: don't abuse devres in devm_mdiobus_register()
  of: mdio: remove the 'extern' keyword from function declarations
  of: mdio: provide devm_of_mdiobus_register()
  net: ethernet: mtk-star-emac: use devm_of_mdiobus_register()

 .../driver-api/driver-model/devres.rst        |  3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 14 +---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 13 +--
 drivers/net/ethernet/realtek/r8169_main.c     |  2 +-
 drivers/net/phy/Makefile                      |  2 +-
 drivers/net/phy/mdio_bus.c                    | 73 ----------------
 drivers/net/phy/mdio_devres.c                 | 83 +++++++++++++++++++
 drivers/of/of_mdio.c                          | 43 ++++++++++
 include/linux/of_mdio.h                       | 40 ++++-----
 include/linux/phy.h                           | 21 +----
 net/devres.c                                  | 23 +----
 12 files changed, 167 insertions(+), 156 deletions(-)
 create mode 100644 drivers/net/phy/mdio_devres.c

-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
