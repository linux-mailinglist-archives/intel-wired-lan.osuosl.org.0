Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C75633866
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 10:28:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B54A24021C;
	Tue, 22 Nov 2022 09:28:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B54A24021C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669109304;
	bh=2LtKc9NLxt1KnkmIHzjrZyL8Ta9PKxjewhd7rrj15ig=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2poobFXHA7dlQ8xmYICSQ9ARjseURAfH3yDT9gnwdbLwjVAJecTRxTtAu8eBAF3sL
	 U75A63GmCXXP3tF7ZSW63SwTeHvrCWMbpioSLeU/aI1374Opl0EpZVFPXx2NOuS7a3
	 23KjKlMF5xwRbgJLPSiptKe1UKXMmdc0BsWDDGmiiqMjrzihVgVZ59yR+PTvbZYrov
	 T1re4VC2MqRwFz/e10vtU+afwJULBsg5/x+yVaFio8/i01dBeqYsrsPUg55Wi/EDGY
	 /T+ncSGtsMnxpTVfFnfND70t+gu5H8LOIydzhdulAG+ol44YD6ngPUbKaOg+cgOK0B
	 40rbuXM5S10Wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0MRBV8d1mMUe; Tue, 22 Nov 2022 09:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B04040228;
	Tue, 22 Nov 2022 09:28:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B04040228
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5A451BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 09:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9FCA4408B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 09:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FCA4408B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T49wY_BTEgYc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 09:28:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB60440160
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB60440160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 09:28:16 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id ci10so6574545pjb.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 01:28:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/GVFeQ7YQxZxifzanltQSzgNMaKfrPVzQi5mw4Z3bF4=;
 b=TujV9SPXhlXWdFw4pgMLpHBSl4Tlki9aeGuz75I3cz9iU29VVrSh75YHc9kbwxYQ6p
 uy+t0y13uxmp04mG76w7pBlM3iF5E+UW/UsDFNClMBQ3njAEiL2JAw8pEmUaqVgOrvZQ
 N8DKU3xVKjU3faGxtxuldydXAN9JSrm3N4rTDtzqs/ZMZYjAtoKi+rxsZsLH8+cI/dAc
 Ymn7hrx1VJ0OQYV6VZeGMlC9asHGUxfEHjcLz7eYhwZIKCSI/+VuB2UiS2w0ZQagtuH7
 QywPojF0K/8Dhc1MGCzrtqInpW8HQVqp49YiM199072/KOlz2S+X2NpdtZ3eJ6z2CrFe
 UM2g==
X-Gm-Message-State: ANoB5pmODYFhcU6NZhtUNf4VlZ7y3DDt5B9+vRyVgTNuKGLgqNQ255Om
 9RhxeeeGRmUZxR3XAhLEoDHYsA==
X-Google-Smtp-Source: AA0mqf5voQeb5q+y0iCbkC5x9G+rL6VjFxbtDwT+AZaXlqsIb0KbSzfOgfT4Fyt5x0BQg7QWOATYDQ==
X-Received: by 2002:a17:902:a984:b0:188:feab:4fd3 with SMTP id
 bh4-20020a170902a98400b00188feab4fd3mr4013430plb.167.1669109296171; 
 Tue, 22 Nov 2022 01:28:16 -0800 (PST)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 e7-20020aa798c7000000b0056d98e31439sm10558784pfm.140.2022.11.22.01.28.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Nov 2022 01:28:15 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Tue, 22 Nov 2022 18:28:03 +0900
Message-Id: <20221122092803.31083-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/GVFeQ7YQxZxifzanltQSzgNMaKfrPVzQi5mw4Z3bF4=;
 b=InlihnCtBXub3e4GGhMCBwY1/GPSUE/nd2yAnHD2vdhAGxwrNEgB9rOSw/YuihxPJ6
 O5k7Bggkul+2KPHCPA6WcrVckzd2qSw+plh8tGOMIKHtSnWM6C7k9BLbfWCInLryFm8C
 1E9oidtS4WE1nQFGv44edb8P6ZIZUuJF9/Mz4cy/zHLq+niDa+k1gx0yzALzi5+GGYw5
 96h9zc3fgKrj9tms7P58EBKRhwy+rtwSKsE//H6ooFmZqOuvrQ8E6eCvkQQYAiftlLNe
 x9fSp9HeDFyHBvg0P838npW4aMYcTU9dPK1ANnA+r8myNRq8G5jQY3hY7xl9Kroh2GxH
 +JDQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=InlihnCt
Subject: [Intel-wired-lan] [PATCH] igb: Enable SR-IOV after reinit
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Yan Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enabling SR-IOV causes the virtual functions to make requests to the
PF via the mailbox. Notably, E1000_VF_RESET request will happen during
the initialization of the VF. However, unless the reinit is done, the
VMMB interrupt, which delivers mailbox interrupt from VF to PF will be
kept masked and such requests will be silently ignored.

Enable SR-IOV at the very end of the procedure to configure the device
for SR-IOV so that the PF is configured properly for SR-IOV when a VF is
activated.

Fixes: fa44f2f185f7 ("igb: Enable SR-IOV configuration via PCI sysfs interface")
Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 135 ++++++++++------------
 1 file changed, 58 insertions(+), 77 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index cfe6bf6e2336..74694a27e35d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -109,6 +109,7 @@ static void igb_free_all_rx_resources(struct igb_adapter *);
 static void igb_setup_mrqc(struct igb_adapter *);
 static int igb_probe(struct pci_dev *, const struct pci_device_id *);
 static void igb_remove(struct pci_dev *pdev);
+static void igb_init_queue_configuration(struct igb_adapter *adapter);
 static int igb_sw_init(struct igb_adapter *);
 int igb_open(struct net_device *);
 int igb_close(struct net_device *);
@@ -175,9 +176,7 @@ static void igb_nfc_filter_restore(struct igb_adapter *adapter);
 
 #ifdef CONFIG_PCI_IOV
 static int igb_vf_configure(struct igb_adapter *adapter, int vf);
-static int igb_pci_enable_sriov(struct pci_dev *dev, int num_vfs);
-static int igb_disable_sriov(struct pci_dev *dev);
-static int igb_pci_disable_sriov(struct pci_dev *dev);
+static int igb_disable_sriov(struct pci_dev *dev, bool reinit);
 #endif
 
 static int igb_suspend(struct device *);
@@ -3616,7 +3615,7 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	kfree(adapter->shadow_vfta);
 	igb_clear_interrupt_scheme(adapter);
 #ifdef CONFIG_PCI_IOV
-	igb_disable_sriov(pdev);
+	igb_disable_sriov(pdev, false);
 #endif
 	pci_iounmap(pdev, adapter->io_addr);
 err_ioremap:
@@ -3631,7 +3630,38 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 }
 
 #ifdef CONFIG_PCI_IOV
-static int igb_disable_sriov(struct pci_dev *pdev)
+static int igb_sriov_reinit(struct pci_dev *dev)
+{
+	struct net_device *netdev = pci_get_drvdata(dev);
+	struct igb_adapter *adapter = netdev_priv(netdev);
+	struct pci_dev *pdev = adapter->pdev;
+
+	rtnl_lock();
+
+	if (netif_running(netdev))
+		igb_close(netdev);
+	else
+		igb_reset(adapter);
+
+	igb_clear_interrupt_scheme(adapter);
+
+	igb_init_queue_configuration(adapter);
+
+	if (igb_init_interrupt_scheme(adapter, true)) {
+		rtnl_unlock();
+		dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
+		return -ENOMEM;
+	}
+
+	if (netif_running(netdev))
+		igb_open(netdev);
+
+	rtnl_unlock();
+
+	return 0;
+}
+
+static int igb_disable_sriov(struct pci_dev *pdev, bool reinit)
 {
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
@@ -3665,10 +3695,10 @@ static int igb_disable_sriov(struct pci_dev *pdev)
 		adapter->flags |= IGB_FLAG_DMAC;
 	}
 
-	return 0;
+	return reinit ? igb_sriov_reinit(pdev) : 0;
 }
 
-static int igb_enable_sriov(struct pci_dev *pdev, int num_vfs)
+static int igb_enable_sriov(struct pci_dev *pdev, int num_vfs, bool reinit)
 {
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
@@ -3733,12 +3763,6 @@ static int igb_enable_sriov(struct pci_dev *pdev, int num_vfs)
 			"Unable to allocate memory for VF MAC filter list\n");
 	}
 
-	/* only call pci_enable_sriov() if no VFs are allocated already */
-	if (!old_vfs) {
-		err = pci_enable_sriov(pdev, adapter->vfs_allocated_count);
-		if (err)
-			goto err_out;
-	}
 	dev_info(&pdev->dev, "%d VFs allocated\n",
 		 adapter->vfs_allocated_count);
 	for (i = 0; i < adapter->vfs_allocated_count; i++)
@@ -3746,6 +3770,17 @@ static int igb_enable_sriov(struct pci_dev *pdev, int num_vfs)
 
 	/* DMA Coalescing is not supported in IOV mode. */
 	adapter->flags &= ~IGB_FLAG_DMAC;
+
+	if (reinit) {
+		err = igb_sriov_reinit(pdev);
+		if (err)
+			goto err_out;
+	}
+
+	/* only call pci_enable_sriov() if no VFs are allocated already */
+	if (!old_vfs)
+		err = pci_enable_sriov(pdev, adapter->vfs_allocated_count);
+
 	goto out;
 
 err_out:
@@ -3816,7 +3851,7 @@ static void igb_remove(struct pci_dev *pdev)
 
 #ifdef CONFIG_PCI_IOV
 	rtnl_lock();
-	igb_disable_sriov(pdev);
+	igb_disable_sriov(pdev, false);
 	rtnl_unlock();
 #endif
 
@@ -3865,7 +3900,7 @@ static void igb_probe_vfs(struct igb_adapter *adapter)
 	igb_reset_interrupt_capability(adapter);
 
 	pci_sriov_set_totalvfs(pdev, 7);
-	igb_enable_sriov(pdev, max_vfs);
+	igb_enable_sriov(pdev, max_vfs, false);
 
 #endif /* CONFIG_PCI_IOV */
 }
@@ -9475,71 +9510,17 @@ static void igb_shutdown(struct pci_dev *pdev)
 	}
 }
 
-#ifdef CONFIG_PCI_IOV
-static int igb_sriov_reinit(struct pci_dev *dev)
-{
-	struct net_device *netdev = pci_get_drvdata(dev);
-	struct igb_adapter *adapter = netdev_priv(netdev);
-	struct pci_dev *pdev = adapter->pdev;
-
-	rtnl_lock();
-
-	if (netif_running(netdev))
-		igb_close(netdev);
-	else
-		igb_reset(adapter);
-
-	igb_clear_interrupt_scheme(adapter);
-
-	igb_init_queue_configuration(adapter);
-
-	if (igb_init_interrupt_scheme(adapter, true)) {
-		rtnl_unlock();
-		dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
-		return -ENOMEM;
-	}
-
-	if (netif_running(netdev))
-		igb_open(netdev);
-
-	rtnl_unlock();
-
-	return 0;
-}
-
-static int igb_pci_disable_sriov(struct pci_dev *dev)
-{
-	int err = igb_disable_sriov(dev);
-
-	if (!err)
-		err = igb_sriov_reinit(dev);
-
-	return err;
-}
-
-static int igb_pci_enable_sriov(struct pci_dev *dev, int num_vfs)
-{
-	int err = igb_enable_sriov(dev, num_vfs);
-
-	if (err)
-		goto out;
-
-	err = igb_sriov_reinit(dev);
-	if (!err)
-		return num_vfs;
-
-out:
-	return err;
-}
-
-#endif
 static int igb_pci_sriov_configure(struct pci_dev *dev, int num_vfs)
 {
 #ifdef CONFIG_PCI_IOV
-	if (num_vfs == 0)
-		return igb_pci_disable_sriov(dev);
-	else
-		return igb_pci_enable_sriov(dev, num_vfs);
+	int err;
+
+	if (num_vfs == 0) {
+		return igb_disable_sriov(dev, true);
+	} else {
+		err = igb_enable_sriov(dev, num_vfs, true);
+		return err ? err : num_vfs;
+	}
 #endif
 	return 0;
 }
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
