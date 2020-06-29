Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DD420CD9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 11:31:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8EC7425D5D;
	Mon, 29 Jun 2020 09:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGWGdUKeUGij; Mon, 29 Jun 2020 09:31:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3488A25DC5;
	Mon, 29 Jun 2020 09:31:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3329F1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2ABDE25D76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jGwn4Id+LK21 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 09:31:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 20BFA25D5D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:46 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d4so8042274pgk.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 02:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U8LfJvZ8Suv0UU3L8Vq/myysU79XrKbzAI5mVt1upHA=;
 b=UMnRMoplidwqa2axc+13CTf6GjvG/QKjq19NX5mr89r2PyhZPX2MmNwdhqGn5qo/AE
 M/IV5z4/XD05V3cPZvLn0BS3/ArPV/QS+ZEH9j7MePFM4pBR9FEAf7VN6gytNgMOuzwd
 LpJdF3e/tF391hQub1QawVUYlZHIIYXfYfAVpsYvXVu9lab+VFzIx3/ydCnJKYCUXEmR
 VdWO4gpulSb43KzGvbLkwnqUkfIXscpggHyFGR/ixKo889mdkn9g1akJKYcwTJTY+HIS
 VYxamiq6E56/6ub1rzvsawOCbz6kYBvFRVeo28EdhIndpB5xhclS+Eh+UmAAuX0JpzPp
 egYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U8LfJvZ8Suv0UU3L8Vq/myysU79XrKbzAI5mVt1upHA=;
 b=X9QxXWC7IoAesJjac+Mc/+O+Qyqj6PJBIJRfDuVfS66VipGMdFoZnv2QpJSvQcishY
 aJnm462Q81ANj6B5dY4BcpJV3G1pgpLQMvqiiHKgVicz/501Rx/tODBkRUVADRCKmL6R
 R+j63vh1dt/m1f4A0gDpbj7jfQ12kgrQogwcMKVEqdJHWvQVJ7eEoxTnzMPIq2mLY40b
 mYkNMpo8dyCzDKWnf8aRiWCnd3cpQImJM2Q5OJzviE5V/De3mDRHUOlSqbLLCgeK4afW
 JqyOpsQm0ERIWnAxr/ehXhRqZ2HG6T1Ye/9Hu7KqdQ92prEq3xiIgMvk9v0DYYhJBGiT
 yG2g==
X-Gm-Message-State: AOAM533ADEX2uwT7m2N9Wx+KPYmhUpAHfEd8PluuPnidQR/FB3ZeYr5C
 Y6x6AVxXPAAeE07cvIB7jPY=
X-Google-Smtp-Source: ABdhPJxCrwzkJMp9WcEN5z/vEr5Xrtqg4Z1I1sF8VTyeVMLmhzbwmlekF7t0Va8jyim44rh9w5wtUA==
X-Received: by 2002:a63:b915:: with SMTP id z21mr9981906pge.145.1593423105725; 
 Mon, 29 Jun 2020 02:31:45 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id q20sm2921286pfn.111.2020.06.29.02.31.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 02:31:45 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Mon, 29 Jun 2020 14:59:43 +0530
Message-Id: <20200629092943.227910-6-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
References: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 5/5] e100: use generic power management
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
Cc: Vaibhav Gupta <vaibhavgupta40@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With legacy PM hooks, it was the responsibility of a driver to manage PCI
states and also the device's power state. The generic approach is to let
PCI core handle the work.

e100_suspend() calls __e100_shutdown() to perform intermediate tasks.
__e100_shutdown() calls pci_save_state() which is not recommended.

e100_suspend() also calls __e100_power_off() which is calling PCI helper
functions, pci_prepare_to_sleep(), pci_set_power_state(), along with
pci_wake_from_d3(...,false). Hence, the functin call is removed and wol is
disabled as earlier using device_wakeup_disable().

Compile-tested only.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/net/ethernet/intel/e100.c | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 1b8d015ebfb0..7506fb5eca8f 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -2997,8 +2997,6 @@ static void __e100_shutdown(struct pci_dev *pdev, bool *enable_wake)
 		e100_down(nic);
 	netif_device_detach(netdev);
 
-	pci_save_state(pdev);
-
 	if ((nic->flags & wol_magic) | e100_asf(nic)) {
 		/* enable reverse auto-negotiation */
 		if (nic->phy == phy_82552_v) {
@@ -3028,24 +3026,21 @@ static int __e100_power_off(struct pci_dev *pdev, bool wake)
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int e100_suspend(struct pci_dev *pdev, pm_message_t state)
+static int __maybe_unused e100_suspend(struct device *dev_d)
 {
 	bool wake;
-	__e100_shutdown(pdev, &wake);
-	return __e100_power_off(pdev, wake);
+	__e100_shutdown(to_pci_dev(dev_d), &wake);
+
+	device_wakeup_disable(dev_d);
+
+	return 0;
 }
 
-static int e100_resume(struct pci_dev *pdev)
+static int __maybe_unused e100_resume(struct device *dev_d)
 {
-	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct net_device *netdev = dev_get_drvdata(dev_d);
 	struct nic *nic = netdev_priv(netdev);
 
-	pci_set_power_state(pdev, PCI_D0);
-	pci_restore_state(pdev);
-	/* ack any pending wake events, disable PME */
-	pci_enable_wake(pdev, PCI_D0, 0);
-
 	/* disable reverse auto-negotiation */
 	if (nic->phy == phy_82552_v) {
 		u16 smartspeed = mdio_read(netdev, nic->mii.phy_id,
@@ -3062,7 +3057,6 @@ static int e100_resume(struct pci_dev *pdev)
 
 	return 0;
 }
-#endif /* CONFIG_PM */
 
 static void e100_shutdown(struct pci_dev *pdev)
 {
@@ -3150,16 +3144,17 @@ static const struct pci_error_handlers e100_err_handler = {
 	.resume = e100_io_resume,
 };
 
+static SIMPLE_DEV_PM_OPS(e100_pm_ops, e100_suspend, e100_resume);
+
 static struct pci_driver e100_driver = {
 	.name =         DRV_NAME,
 	.id_table =     e100_id_table,
 	.probe =        e100_probe,
 	.remove =       e100_remove,
-#ifdef CONFIG_PM
+
 	/* Power Management hooks */
-	.suspend =      e100_suspend,
-	.resume =       e100_resume,
-#endif
+	.driver.pm =	&e100_pm_ops,
+
 	.shutdown =     e100_shutdown,
 	.err_handler = &e100_err_handler,
 };
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
