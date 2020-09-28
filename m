Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC58327A8F6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 09:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B9D786FC9;
	Mon, 28 Sep 2020 07:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yPEXkjNoBKtU; Mon, 28 Sep 2020 07:45:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC9C686FBE;
	Mon, 28 Sep 2020 07:45:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D63161BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 07:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1C6186F87
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 07:45:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jSrwpKIjgBn0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 07:45:23 +0000 (UTC)
X-Greylist: delayed 00:20:00 by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AD4B886F82
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 07:45:22 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id w11so135108lfn.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 00:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ycumBqXo4wWAclMIbSxmeXptXhG4gvIgqWgQjMmj2w=;
 b=Q+9qDxWmgJQ34pYpJlhzSlso9xToKNSGq9GjkKj68qS4NxzOeQsRr7EZhKwEQlnDH0
 jrpjrbaQpd+0avTw4XFQOwcSvJOqO5r99tw9w+TTgLqtc4srgJn0xxEk8fcNU1U4nMnx
 AvrH0RkDBlNh7M+9Un6ayWW0r5Tg8wPBK00jrbp2k1lCkFNwHzKTBwYjLWTdBslVCO2T
 2sMvAhVYgByhrzyjEP06NM9NzI9SKex906hgZjRA3Taw7z2xuQMg2HCYwk4g4YvgdLOz
 5awHPGsK59nnefgp5Z3DiOGMfR5JeSazxAC7+DkJ5Q0spQdOLW/IsAdnhnC4dUO5UGxn
 y//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4ycumBqXo4wWAclMIbSxmeXptXhG4gvIgqWgQjMmj2w=;
 b=Tpo/Sr9J6KckzAm7UcByHfaUBl5AOLXn8+loDEMjIYJvrdKfxdxQOJhlhDfIuXWvwx
 Jh+bKoP1wMId6am0uolvjt8jQ4l6HryZkVknCbMf2wTnpIuiuf3RfKtpsCASPRQ0D8AY
 UU2UoS8p2NIDLxDnd1IhsPw2AMu4Hqckh6EYLgYhGLvxBz5wWTbYaA2t1co/Mv4w2DZb
 Pz7PZk/6rTh5Jbm44Sr4HitBFxgasdOMqZmAX8gWgGSQIPjHLg++FnolFlv7JrmCk/Nj
 ykeBc2LIHpGPNDiEEF9plzYg3jqnaLiZped8tWfE8ORV1I7gx7UsMVHeDYYBxvr1S07q
 7KlQ==
X-Gm-Message-State: AOAM532hnhfyF/VTmQR1M89XDo5dRNwLHXpKgqhZaN9amYrLtJIZU5M0
 0xdOQ+fO6/lNtIWr0pgaPxJ0XjAQgRH6Vg==
X-Google-Smtp-Source: ABdhPJyh8Gb+No1VyK74HU4xDaw3Y5BH21qukKeTT95urlK2ippP/S0WkGxQZWJI1MfOm1E4ZArYgQ==
X-Received: by 2002:adf:edd2:: with SMTP id v18mr47344wro.242.1601277471426;
 Mon, 28 Sep 2020 00:17:51 -0700 (PDT)
Received: from debian-brgl.home (lfbn-nic-1-68-20.w2-15.abo.wanadoo.fr.
 [2.15.159.20])
 by smtp.gmail.com with ESMTPSA id u66sm798wmg.44.2020.09.28.00.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 00:17:50 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Mon, 28 Sep 2020 09:17:44 +0200
Message-Id: <20200928071744.18253-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] net: ethernet: ixgbe: don't propagate
 -ENODEV from ixgbe_mii_bus_init()
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Yongxin Liu <yongxin.liu@windriver.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

It's a valid use-case for ixgbe_mii_bus_init() to return -ENODEV - we
still want to finalize the registration of the ixgbe device. Check the
error code and don't bail out if err == -ENODEV.

This fixes an issue on C3000 family of SoCs where four ixgbe devices
share a single MDIO bus and ixgbe_mii_bus_init() returns -ENODEV for
three of them but we still want to register them.

Fixes: 09ef193fef7e ("net: ethernet: ixgbe: check the return value of ixgbe_mii_bus_init()")
Reported-by: Yongxin Liu <yongxin.liu@windriver.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2f8a4cfc5fa1..d1623af30125 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11032,7 +11032,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			true);
 
 	err = ixgbe_mii_bus_init(hw);
-	if (err)
+	if (err && err != -ENODEV)
 		goto err_netdev;
 
 	return 0;
-- 
2.26.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
