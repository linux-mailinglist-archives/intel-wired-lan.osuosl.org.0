Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FD520CD97
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 11:31:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0BBC725E17;
	Mon, 29 Jun 2020 09:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XwpqkDx2c04b; Mon, 29 Jun 2020 09:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 04DC525DC5;
	Mon, 29 Jun 2020 09:31:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D583D1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D12DE88832
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2mKDp9P72gf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 09:31:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 52D3B88822
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:27 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id o13so5077973pgf.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 02:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ywkIyM7V2PjtWkJiS8MsW9js5hP4ibuo2yhx5IWsTOA=;
 b=HYzbq7y7ft+b+SgtlZUKORkLXD8Ox0BEYlONq/fc08nJbzaWhEHray6rrcNVvj3vq3
 QETe5Qt14tj9Qqde3VfFY7V1p+X/OjRGb7RIIUDfxYf+sJeQ2Aqx+n9WO+lRRwzJSEID
 ea+v0EZnOptAUfaa3/MOYbbbGW3EZgtd6RsRk/2ZC0W5sUsuwj6Wag7T0M3Zsc/M2Yrq
 LzhtGOI4lwgKdGPkOwoCuI2TmrIdqNFqxLf+qOCannsKEu2R7HU2IOGCIRs8hd2X4+Z6
 zEHKs0Px4+cpBGIeSKREsUL+0QLT/ZLg3ztZZiI6Xdrqrzc3hUnHSHO6UyBeCKFugOLF
 Tx9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ywkIyM7V2PjtWkJiS8MsW9js5hP4ibuo2yhx5IWsTOA=;
 b=A3pNiW6t5FCYG2IQUxD+onwENJ1vBFD/oI+o1n3uxtYQPCz8gT9DZaBQWQH/h7YKeN
 XHsIAHQTF0M/Xqc0jL8I8crtOPB0ykylJtvlOytbmmWsFCUglAApLttpvBeyYWkNEodm
 mgzKfnWfLO3mOquQJ4mZ5qBUwF4Ie43UtGVmCSxgXyh3OY1+TAXRbnTOjqrWpRRMC7rY
 TBzIxDDFgWeIUmnfkIokWrXQSSWjhKlm1MgExw9bFTYlG9gewjWGq8WaEqCPesbp50pZ
 46HdA7ouxmDd/EAJ2f6VEJny/vOJZR+KzO7kwSevD81mU8/LHcP1K+3RJYAOQRRjS0bF
 x0jA==
X-Gm-Message-State: AOAM5312VB9LsqgF4gZ7ydW2PM4Cdli0L0ePgWKKq4wfiiN+BkEu3rtX
 x7CTyaN7UwPCPs3rsR/2wqQ=
X-Google-Smtp-Source: ABdhPJzlRgVbHpNX+XulZrbU31t1gGCVj4aLHjb27mH1TsN3aLjlO4iG3QLYEo7yQtCkNOykRft0Fw==
X-Received: by 2002:a65:62c9:: with SMTP id m9mr9172551pgv.392.1593423086940; 
 Mon, 29 Jun 2020 02:31:26 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id q20sm2921286pfn.111.2020.06.29.02.31.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 02:31:26 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Mon, 29 Jun 2020 14:59:40 +0530
Message-Id: <20200629092943.227910-3-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
References: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 2/5] igbvf: netdev: use generic power
 management
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

Remove legacy PM callbacks and use generic operations. With legacy code,
drivers were responsible for handling PCI PM operations like
pci_save_state(). In generic code, all these hre andled by PCI core.

The generic suspend() and resume() are called at the same point the legacy
ones were called. Thus, it does not affect the normal functioning of the
driver.

__maybe_unused attribute is used with .resume() but not with .suspend(), as
.suspend() is calleb by .shutdown().

Compile-tested only.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 37 +++++------------------
 1 file changed, 8 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 5b1800c3ba82..76285724b1f3 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2459,13 +2459,10 @@ static int igbvf_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 	}
 }
 
-static int igbvf_suspend(struct pci_dev *pdev, pm_message_t state)
+static int igbvf_suspend(struct device *dev_d)
 {
-	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct net_device *netdev = dev_get_drvdata(dev_d);
 	struct igbvf_adapter *adapter = netdev_priv(netdev);
-#ifdef CONFIG_PM
-	int retval = 0;
-#endif
 
 	netif_device_detach(netdev);
 
@@ -2475,31 +2472,16 @@ static int igbvf_suspend(struct pci_dev *pdev, pm_message_t state)
 		igbvf_free_irq(adapter);
 	}
 
-#ifdef CONFIG_PM
-	retval = pci_save_state(pdev);
-	if (retval)
-		return retval;
-#endif
-
-	pci_disable_device(pdev);
-
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int igbvf_resume(struct pci_dev *pdev)
+static int __maybe_unused igbvf_resume(struct device *dev_d)
 {
+	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igbvf_adapter *adapter = netdev_priv(netdev);
 	u32 err;
 
-	pci_restore_state(pdev);
-	err = pci_enable_device_mem(pdev);
-	if (err) {
-		dev_err(&pdev->dev, "Cannot enable PCI device from suspend\n");
-		return err;
-	}
-
 	pci_set_master(pdev);
 
 	if (netif_running(netdev)) {
@@ -2517,11 +2499,10 @@ static int igbvf_resume(struct pci_dev *pdev)
 
 	return 0;
 }
-#endif
 
 static void igbvf_shutdown(struct pci_dev *pdev)
 {
-	igbvf_suspend(pdev, PMSG_SUSPEND);
+	igbvf_suspend(&pdev->dev);
 }
 
 #ifdef CONFIG_NET_POLL_CONTROLLER
@@ -2962,17 +2943,15 @@ static const struct pci_device_id igbvf_pci_tbl[] = {
 };
 MODULE_DEVICE_TABLE(pci, igbvf_pci_tbl);
 
+static SIMPLE_DEV_PM_OPS(igbvf_pm_ops, igbvf_suspend, igbvf_resume);
+
 /* PCI Device API Driver */
 static struct pci_driver igbvf_driver = {
 	.name		= igbvf_driver_name,
 	.id_table	= igbvf_pci_tbl,
 	.probe		= igbvf_probe,
 	.remove		= igbvf_remove,
-#ifdef CONFIG_PM
-	/* Power Management Hooks */
-	.suspend	= igbvf_suspend,
-	.resume		= igbvf_resume,
-#endif
+	.driver.pm	= &igbvf_pm_ops,
 	.shutdown	= igbvf_shutdown,
 	.err_handler	= &igbvf_err_handler
 };
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
