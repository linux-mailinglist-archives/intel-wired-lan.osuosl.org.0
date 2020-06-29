Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE52E20CD96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 11:31:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6204B87657;
	Mon, 29 Jun 2020 09:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uhlc589slSmD; Mon, 29 Jun 2020 09:31:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5ADCD8762D;
	Mon, 29 Jun 2020 09:31:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 325511BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C7CA88A64
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rFecACMCYSA7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 09:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AFFFF889D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:33 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id x3so2130531pfo.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 02:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qe4WDxIQGl3f8nl5SssfB8C9vc9ueXmXwiDJGu9bR+U=;
 b=gxKy2bwoStooFIbHMuvcV/ySW4DhExicwX6eDsJRMPKxT3EtXkkzy4XkPZ7XaBAXuL
 dsCi0E0ZbCRPX9CA6lrQU0ga29adgeFdIRgXJjtuyloMTQnZ4IHAvGO42VKD1JSQtqx4
 gLo9Ntqaqf1FDwUsl/4tvEBRQlNzQMViHgdFBu8rAY3E++k+ZFaYqfAy29nBtRRXcHPV
 eudann+dY92ttd2o47kcoebTGocwMq5sNRKo9W31Bk+/Q/c5dQpujD1vq1Y+paMDOxPo
 1pFGRPKNa+4nosY5izWIrVe17jk+JELQxI3GZoy1zTCNDM6Vc96RYfSi1wTwKKcqirt2
 Nmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qe4WDxIQGl3f8nl5SssfB8C9vc9ueXmXwiDJGu9bR+U=;
 b=FzyW9nYv6q2atC9yvGaTeWcPd6CtkojzPa3wz9Ay2+rQJOJhXurjF3FkxOku7cOpaU
 ntSUuEwZp2GUJ1JsnlerpwEKPtaHc4vF9WYIFKJpy5LWInu81SNER5eTdkTUnlSh5aIu
 HGnn6FMr1P6s7P4coEIITndo4ibmsyLPnIhHqcO4WrRCC5qTu6Mu8HMgo0oetHliKf15
 5t8MqHAhpcToUoVZKUPeU4n7kSkOIsxKmGsr8uufPyldJ3t8tFFQTkupHezBiXuHJkDf
 jZoXh6ndzU7EwhS06HNtziCmsT1diW+kAZ9ax1EggBbKXTL1aXfbCpOTD0gvnX+PeOOD
 YC6g==
X-Gm-Message-State: AOAM5324M+45RrObpiYZk+JwQUYHvCMGjlE0B3pw0GuGjG7WwnbLdp3L
 0SGwQ/KiPmTRiAr2lMMrm2E=
X-Google-Smtp-Source: ABdhPJzc/HXeM2Z10CROTyp/Ia6gJiD+wH9o2SbtefVvniYcFcPJgHQUf/d2M3s4RdRVXyc6lOCjcA==
X-Received: by 2002:a63:1e60:: with SMTP id p32mr9294309pgm.172.1593423093298; 
 Mon, 29 Jun 2020 02:31:33 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id q20sm2921286pfn.111.2020.06.29.02.31.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 02:31:32 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Mon, 29 Jun 2020 14:59:41 +0530
Message-Id: <20200629092943.227910-4-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
References: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 3/5] ixgbe: use generic power management
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

ixgbe_suspend() calls __ixgbe_shutdown() to perform intermediate tasks.
__ixgbe_shutdown() modifies the value of "wake" (device should be wakeup
enabled or not), responsible for controlling the flow of legacy PM.

Since, PCI core has no idea about the value of "wake", new code for generic
PM may produce unexpected results. Thus, use "device_set_wakeup_enable()"
to wakeup-enable the device accordingly.

Compile-tested only.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 61 +++++--------------
 1 file changed, 15 insertions(+), 46 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 97a423ecf808..145296825e64 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6861,32 +6861,20 @@ int ixgbe_close(struct net_device *netdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int ixgbe_resume(struct pci_dev *pdev)
+static int __maybe_unused ixgbe_resume(struct device *dev_d)
 {
+	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 	struct net_device *netdev = adapter->netdev;
 	u32 err;
 
 	adapter->hw.hw_addr = adapter->io_addr;
-	pci_set_power_state(pdev, PCI_D0);
-	pci_restore_state(pdev);
-	/*
-	 * pci_restore_state clears dev->state_saved so call
-	 * pci_save_state to restore it.
-	 */
-	pci_save_state(pdev);
 
-	err = pci_enable_device_mem(pdev);
-	if (err) {
-		e_dev_err("Cannot enable PCI device from suspend\n");
-		return err;
-	}
 	smp_mb__before_atomic();
 	clear_bit(__IXGBE_DISABLED, &adapter->state);
 	pci_set_master(pdev);
 
-	pci_wake_from_d3(pdev, false);
+	device_wakeup_disable(dev_d);
 
 	ixgbe_reset(adapter);
 
@@ -6904,7 +6892,6 @@ static int ixgbe_resume(struct pci_dev *pdev)
 
 	return err;
 }
-#endif /* CONFIG_PM */
 
 static int __ixgbe_shutdown(struct pci_dev *pdev, bool *enable_wake)
 {
@@ -6913,9 +6900,6 @@ static int __ixgbe_shutdown(struct pci_dev *pdev, bool *enable_wake)
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 ctrl;
 	u32 wufc = adapter->wol;
-#ifdef CONFIG_PM
-	int retval = 0;
-#endif
 
 	rtnl_lock();
 	netif_device_detach(netdev);
@@ -6926,12 +6910,6 @@ static int __ixgbe_shutdown(struct pci_dev *pdev, bool *enable_wake)
 	ixgbe_clear_interrupt_scheme(adapter);
 	rtnl_unlock();
 
-#ifdef CONFIG_PM
-	retval = pci_save_state(pdev);
-	if (retval)
-		return retval;
-
-#endif
 	if (hw->mac.ops.stop_link_on_d3)
 		hw->mac.ops.stop_link_on_d3(hw);
 
@@ -6986,26 +6964,18 @@ static int __ixgbe_shutdown(struct pci_dev *pdev, bool *enable_wake)
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int ixgbe_suspend(struct pci_dev *pdev, pm_message_t state)
+static int __maybe_unused ixgbe_suspend(struct device *dev_d)
 {
+	struct pci_dev *pdev = to_pci_dev(dev_d);
 	int retval;
 	bool wake;
 
 	retval = __ixgbe_shutdown(pdev, &wake);
-	if (retval)
-		return retval;
 
-	if (wake) {
-		pci_prepare_to_sleep(pdev);
-	} else {
-		pci_wake_from_d3(pdev, false);
-		pci_set_power_state(pdev, PCI_D3hot);
-	}
+	device_set_wakeup_enable(dev_d, wake);
 
-	return 0;
+	return retval;
 }
-#endif /* CONFIG_PM */
 
 static void ixgbe_shutdown(struct pci_dev *pdev)
 {
@@ -11489,16 +11459,15 @@ static const struct pci_error_handlers ixgbe_err_handler = {
 	.resume = ixgbe_io_resume,
 };
 
+static SIMPLE_DEV_PM_OPS(ixgbe_pm_ops, ixgbe_suspend, ixgbe_resume);
+
 static struct pci_driver ixgbe_driver = {
-	.name     = ixgbe_driver_name,
-	.id_table = ixgbe_pci_tbl,
-	.probe    = ixgbe_probe,
-	.remove   = ixgbe_remove,
-#ifdef CONFIG_PM
-	.suspend  = ixgbe_suspend,
-	.resume   = ixgbe_resume,
-#endif
-	.shutdown = ixgbe_shutdown,
+	.name      = ixgbe_driver_name,
+	.id_table  = ixgbe_pci_tbl,
+	.probe     = ixgbe_probe,
+	.remove    = ixgbe_remove,
+	.driver.pm = &ixgbe_pm_ops,
+	.shutdown  = ixgbe_shutdown,
 	.sriov_configure = ixgbe_pci_sriov_configure,
 	.err_handler = &ixgbe_err_handler
 };
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
