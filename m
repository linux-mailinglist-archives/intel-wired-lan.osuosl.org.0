Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B39A81E2E56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 21:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75B0186936;
	Tue, 26 May 2020 19:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ZwTv3RASrTs; Tue, 26 May 2020 19:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 840D88693D;
	Tue, 26 May 2020 19:28:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3A061BF384
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 12:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE6FD85FA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 12:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2sDXIfASXB_n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 May 2020 12:28:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2DF0E85F5C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 12:28:07 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p21so8614055pgm.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 05:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+E+o+aNk0CHjmIBkGKHgmosMQQyVO/7BF9hxr8UpXao=;
 b=gbHF0I8l8bVjcUzFdEYW48thV0WucozZhYw8JGmAmLv4MFXm2Fo/2sG9J+9swMgfJB
 H8BvwFudl25lv3J9Vmr4L1PuMaOjt6AVEnwVJFQQ3ojsKBPtbvLyh9Nv3KtvpEo/63LX
 UOatZ58ylsIBXCED3SJtycPD+z5Q6GWuuweu12iBZAOfBPtEPrqgmzQDRDTMtpeRyznV
 SrlXp+Z8rDnWUcbHCeY0tWOpLRBboBWQHzfJJf5YuBHRtM8LfPJC1lkajYImz3bNIHUw
 eV/JTX6Vx0pwj6HSA9f2yrrYhAxX7HNhMuZXiWlTh3kZQqBCR9zyY4fLlEEFksTgqyfO
 XsxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+E+o+aNk0CHjmIBkGKHgmosMQQyVO/7BF9hxr8UpXao=;
 b=WNu2jitGBbvI7TAcGwNtHDFy2Upx3iKazGBlz2Y/f5RrFyGmkFW9YlKyK/lXNfPlmp
 kCz0c1N4owENLiV5E/E1KullWzoaZIGxenTD/L2+BLvlzpTo2Kntr5oWRAvZP4tyZH4/
 f0Uge993Oc7KuSyGruSKh3MB85XTt/ZDZdoDz09gjcggO3Vr0e42Kol2HhYBqYTDITzj
 6Mk6YwtF0lYKX9XL3VM6iuoDXJgS5CktRj2kcTCkU952Kb9UDRNmdwYzPCD2u1PrZZkD
 Ko027Ne3jLpbN0I5sAvNg14E3gY78mmdxv2RPbDSDqQ4L+jTmtAIsHaV5srAKevezCNM
 0RRg==
X-Gm-Message-State: AOAM533l9H37qT51sMmp5TJpJT3MQyrj+fvLxbwhvemBBRaOOkg5+nFu
 e9gL37vOleTB2m8A7aS3c3E=
X-Google-Smtp-Source: ABdhPJwTEJ27OYACa1+AlYAvcPMWB9JsfTWTgmrQEgc6lVISLR09tt4cnP0umhCR/NNEkHAOniSX1Q==
X-Received: by 2002:a05:6a00:150c:: with SMTP id
 q12mr16628282pfu.270.1590409686633; 
 Mon, 25 May 2020 05:28:06 -0700 (PDT)
Received: from varodek.iballbatonwifi.com ([103.105.152.209])
 by smtp.gmail.com with ESMTPSA id r21sm12635055pjo.2.2020.05.25.05.28.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 05:28:05 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, rjw@rjwysocki.net
Date: Mon, 25 May 2020 17:57:10 +0530
Message-Id: <20200525122710.25064-1-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 26 May 2020 19:28:43 +0000
Subject: [Intel-wired-lan] [PATCH v2] e1000: use generic power management
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

compile-tested only

With legacy PM hooks, it was the responsibility of a driver to manage PCI
states and also the device's power state. The generic approach is to let PCI
core handle the work.

e1000_suspend() calls __e1000_shutdown() to perform intermediate tasks.
__e1000_shutdown() modifies the value of "wake" (device should be wakeup
enabled or not), responsible for controlling the flow of legacy PM.

Since, PCI core has no idea about the value of "wake", new code for generic
PM may produce unexpected results. Thus, use "device_set_wakeup_enable()"
to wakeup-enable the device accordingly.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 49 +++++--------------
 1 file changed, 13 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 0d51cbc88028..011509709b3f 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -151,10 +151,8 @@ static int e1000_vlan_rx_kill_vid(struct net_device *netdev,
 				  __be16 proto, u16 vid);
 static void e1000_restore_vlan(struct e1000_adapter *adapter);
 
-#ifdef CONFIG_PM
-static int e1000_suspend(struct pci_dev *pdev, pm_message_t state);
-static int e1000_resume(struct pci_dev *pdev);
-#endif
+static int __maybe_unused e1000_suspend(struct device *dev);
+static int __maybe_unused e1000_resume(struct device *dev);
 static void e1000_shutdown(struct pci_dev *pdev);
 
 #ifdef CONFIG_NET_POLL_CONTROLLER
@@ -179,16 +177,16 @@ static const struct pci_error_handlers e1000_err_handler = {
 	.resume = e1000_io_resume,
 };
 
+static SIMPLE_DEV_PM_OPS(e1000_pm_ops, e1000_suspend, e1000_resume);
+
 static struct pci_driver e1000_driver = {
 	.name     = e1000_driver_name,
 	.id_table = e1000_pci_tbl,
 	.probe    = e1000_probe,
 	.remove   = e1000_remove,
-#ifdef CONFIG_PM
-	/* Power Management Hooks */
-	.suspend  = e1000_suspend,
-	.resume   = e1000_resume,
-#endif
+	.driver = {
+		.pm = &e1000_pm_ops,
+	},
 	.shutdown = e1000_shutdown,
 	.err_handler = &e1000_err_handler
 };
@@ -5048,9 +5046,6 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 ctrl, ctrl_ext, rctl, status;
 	u32 wufc = adapter->wol;
-#ifdef CONFIG_PM
-	int retval = 0;
-#endif
 
 	netif_device_detach(netdev);
 
@@ -5064,12 +5059,6 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
 		e1000_down(adapter);
 	}
 
-#ifdef CONFIG_PM
-	retval = pci_save_state(pdev);
-	if (retval)
-		return retval;
-#endif
-
 	status = er32(STATUS);
 	if (status & E1000_STATUS_LU)
 		wufc &= ~E1000_WUFC_LNKC;
@@ -5130,37 +5119,26 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int e1000_suspend(struct pci_dev *pdev, pm_message_t state)
+static int __maybe_unused e1000_suspend(struct device *dev)
 {
 	int retval;
+	struct pci_dev *pdev = to_pci_dev(dev);
 	bool wake;
 
 	retval = __e1000_shutdown(pdev, &wake);
-	if (retval)
-		return retval;
-
-	if (wake) {
-		pci_prepare_to_sleep(pdev);
-	} else {
-		pci_wake_from_d3(pdev, false);
-		pci_set_power_state(pdev, PCI_D3hot);
-	}
+	device_set_wakeup_enable(dev, wake);
 
-	return 0;
+	return retval;
 }
 
-static int e1000_resume(struct pci_dev *pdev)
+static int __maybe_unused e1000_resume(struct device *dev)
 {
+	struct pci_dev *pdev = to_pci_dev(dev);
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
 	u32 err;
 
-	pci_set_power_state(pdev, PCI_D0);
-	pci_restore_state(pdev);
-	pci_save_state(pdev);
-
 	if (adapter->need_ioport)
 		err = pci_enable_device(pdev);
 	else
@@ -5197,7 +5175,6 @@ static int e1000_resume(struct pci_dev *pdev)
 
 	return 0;
 }
-#endif
 
 static void e1000_shutdown(struct pci_dev *pdev)
 {
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
