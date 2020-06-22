Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02278203CFC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 18:47:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DF918871E;
	Mon, 22 Jun 2020 16:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hUMBIpkOsME8; Mon, 22 Jun 2020 16:47:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 462478873A;
	Mon, 22 Jun 2020 16:47:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46E701BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:09:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3EEAB86D16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gEBj97Zv_gx4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 10:09:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2EE7986422
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 10:09:27 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 17so549290wmo.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 03:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5QarOMVR645D9ubKovjzVLDL1uXK7z1gDINN/6iJvAs=;
 b=LpewbTVAIvBpnXi99/xVv5fbqz2WujW0FcFIKxrOtFsxX8fD+Q/1J+ukHVtzm2tM0u
 nrSNkek+MnZpGtu/cb3IES/Oe0XCrkBfBJI7bMVzqbKrpKpiN6tkeNUJijkQQ2taMHgV
 F2/kkG8pj76PGjfgqO9kVPMj+M50223gvL2bEDlGEZm57XR+OYc7hJ2fylF1Euolc3X2
 Sv/NLPTj62fMq3VPOxv/PcWtMYNVFJgKmLsSKRZG3V9OJmDfKzvarPK3gG08+dN+VRLN
 hib1dKtxy+nGusP97umOk8eJL3G8NZUA6W5f4/aFKPSPpMx8D1c5kMmHmm6jkKV4D31K
 rYAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5QarOMVR645D9ubKovjzVLDL1uXK7z1gDINN/6iJvAs=;
 b=PcCJjGCWXYh0BUXjiSyAcx7zqTfFcMwiL2t4WPSSMJjyxj4WaYSXyrxIyfclppcL6o
 5Zj+r5mmWo2qJbKyqnxPt5EIG08n19yG1iul0BDK1iTBIiIlsqe+kDxis3O4EIcFqSOm
 zYgJKCpV51bubN7eOvokLGmc5Pwj55QMLtojvBgo5ci5F90jbfLKVs766IxJn14nKXNW
 vRIXK/xFB0JMwNBMjATFZIBAfnkk2Id9CQDlH6rPIfi5stSeJZQ8a1f0c+qU6gjKNUZm
 Na9/QutmvXVYhiG8YvxofmtPqa2FHj2ef6C6DxemjoY9LrV5FMuqZT+gmwtW6gOOSaSo
 P1uA==
X-Gm-Message-State: AOAM531CCQ8mdKxmeFNbmOND2zDg+B8zMoC1LVY/a8mqVKO5dzQvXx+1
 Dk/o4/Mj4K59nMGHm/J3+we6OKt4eVM=
X-Google-Smtp-Source: ABdhPJyQJrKCdVTA5/4h6jLuGo2TntfNLAXOnjZEpfXKXnJs07i++H3XlKxtAUGNs97IxT5JDpCRCw==
X-Received: by 2002:a1c:bc55:: with SMTP id m82mr10040285wmf.92.1592820066976; 
 Mon, 22 Jun 2020 03:01:06 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id x205sm16822187wmx.21.2020.06.22.03.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 03:01:06 -0700 (PDT)
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
Date: Mon, 22 Jun 2020 12:00:46 +0200
Message-Id: <20200622100056.10151-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200622100056.10151-1-brgl@bgdev.pl>
References: <20200622100056.10151-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Jun 2020 16:47:24 +0000
Subject: [Intel-wired-lan] [PATCH 01/11] net: ethernet: ixgbe: check the
 return value of ixgbe_mii_bus_init()
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

This function may fail. Check its return value and propagate the error
code.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index f162b8b8f345..4ec4eeb9736b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11167,10 +11167,14 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			IXGBE_LINK_SPEED_10GB_FULL | IXGBE_LINK_SPEED_1GB_FULL,
 			true);
 
-	ixgbe_mii_bus_init(hw);
+	err = ixgbe_mii_bus_init(hw);
+	if (err)
+		goto err_netdev;
 
 	return 0;
 
+err_netdev:
+	unregister_netdev(netdev);
 err_register:
 	ixgbe_release_hw_control(adapter);
 	ixgbe_clear_interrupt_scheme(adapter);
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
