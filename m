Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFEA20CD95
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 11:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D836888D1;
	Mon, 29 Jun 2020 09:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CtT31tBh9+I0; Mon, 29 Jun 2020 09:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6760888A64;
	Mon, 29 Jun 2020 09:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39F491BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 30F748761F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zT6O2H3rDnWi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 09:31:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A02F18761D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:20 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e8so8049571pgc.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 02:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y9KYjkbiR1My5Ffq4vIf/Hm4e77c+uBf3NZ5oJyz9ys=;
 b=A6ebBXcZgYVQ4MmoB/nHGk8Jgn7ZEian0Q8zKJFOteyApn8XDBK3mz/j1RRpS3Xkv5
 8tOGySH9jVq3r0NEVP3vVtSDCwCAh+1mMz5DoUYHrzS0QsyFzbSuW7ptHRoRgtwtKVl7
 OqxLMbjiwVUNUHekMWK9GrJr0KljM9lMqsKWYJw+mgCZ5aB8kX8G+064BMMLeXTU6O+B
 q1X9y8gnU2yUc9K1gcn+i9uKnE924tcSnqsWjUC2HLOr4gvTlMd3I1LXbtFMykcHsHZm
 F5ZCgLU9wBfcXRGm8bSDEtcVlxGYB2MUkvYHuavM3G630oOVjc2raTslJAPd4sYGW+og
 QdfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y9KYjkbiR1My5Ffq4vIf/Hm4e77c+uBf3NZ5oJyz9ys=;
 b=dp2y0ml/roWXxb1WTx6EauF2Edui4h10fXh2Yg8/GNlIKNoEVZvB74VrjfXk/gl4cf
 azgs1MXDCp3sB8s8bIDOxaZYk2RXTw8nAIeC5Kb8DtMPVI/2inTQPGrN58fB16Ki9t2S
 Jw+IEXwX0Vvj7hJpGRk8+t96IrEHK/IzYosaXF9wbr1f1nF62dpDxo67pSMA3CvDrsJy
 2Jgg72cDMd3DkXl7ZGRlU8Zl17zoU6aizNOltHm1v7fQujXnK6K/3gRiRf+AgeJ8AIn8
 DFJc5EpcQ8cM5loACcPddh1SM3RcisCEcBNOx0YW9IlfHOD+CQDY1mHxSeckpYRyzmiD
 knzg==
X-Gm-Message-State: AOAM531M8BOqzF1DMQRSRol5MyPhlzo74KZn2gRJRR9aSL5SIafqFasa
 ML8A2Fi5cDoL32rXd/0FEmU=
X-Google-Smtp-Source: ABdhPJz/nRI7irHgjO0iq6QaoncxuD3EEDuh0r14Hz0DHIyPXF79779I+BckEkrN3/yh9CfuDsdgXg==
X-Received: by 2002:a62:1d81:: with SMTP id d123mr13563954pfd.38.1593423080148; 
 Mon, 29 Jun 2020 02:31:20 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id q20sm2921286pfn.111.2020.06.29.02.31.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 02:31:19 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Mon, 29 Jun 2020 14:59:39 +0530
Message-Id: <20200629092943.227910-2-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
References: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/5] iavf: use generic power management
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

With the support of generic PM callbacks, drivers no longer need to use
legacy .suspend() and .resume() in which they had to maintain PCI states
changes and device's power state themselves. The required operations are
done by PCI core.

PCI drivers are not expected to invoke PCI helper functions like
pci_save/restore_state(), pci_enable/disable_device(),
pci_set_power_state(), etc. Their tasks are completed by PCI core itself.

Compile-tested only.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 45 ++++++---------------
 1 file changed, 12 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index fa82768e5eda..93fa0884ca69 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3772,7 +3772,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	return err;
 }
 
-#ifdef CONFIG_PM
 /**
  * iavf_suspend - Power management suspend routine
  * @pdev: PCI device information struct
@@ -3780,11 +3779,10 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
  *
  * Called when the system (VM) is entering sleep/suspend.
  **/
-static int iavf_suspend(struct pci_dev *pdev, pm_message_t state)
+static int __maybe_unused iavf_suspend(struct device *dev_d)
 {
-	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct net_device *netdev = dev_get_drvdata(dev_d);
 	struct iavf_adapter *adapter = netdev_priv(netdev);
-	int retval = 0;
 
 	netif_device_detach(netdev);
 
@@ -3802,12 +3800,6 @@ static int iavf_suspend(struct pci_dev *pdev, pm_message_t state)
 
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 
-	retval = pci_save_state(pdev);
-	if (retval)
-		return retval;
-
-	pci_disable_device(pdev);
-
 	return 0;
 }
 
@@ -3817,24 +3809,13 @@ static int iavf_suspend(struct pci_dev *pdev, pm_message_t state)
  *
  * Called when the system (VM) is resumed from sleep/suspend.
  **/
-static int iavf_resume(struct pci_dev *pdev)
+static int __maybe_unused iavf_resume(struct device *dev_d)
 {
+	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct iavf_adapter *adapter = pci_get_drvdata(pdev);
 	struct net_device *netdev = adapter->netdev;
 	u32 err;
 
-	pci_set_power_state(pdev, PCI_D0);
-	pci_restore_state(pdev);
-	/* pci_restore_state clears dev->state_saved so call
-	 * pci_save_state to restore it.
-	 */
-	pci_save_state(pdev);
-
-	err = pci_enable_device_mem(pdev);
-	if (err) {
-		dev_err(&pdev->dev, "Cannot enable PCI device from suspend.\n");
-		return err;
-	}
 	pci_set_master(pdev);
 
 	rtnl_lock();
@@ -3858,7 +3839,6 @@ static int iavf_resume(struct pci_dev *pdev)
 	return err;
 }
 
-#endif /* CONFIG_PM */
 /**
  * iavf_remove - Device Removal Routine
  * @pdev: PCI device information struct
@@ -3960,16 +3940,15 @@ static void iavf_remove(struct pci_dev *pdev)
 	pci_disable_device(pdev);
 }
 
+static SIMPLE_DEV_PM_OPS(iavf_pm_ops, iavf_suspend, iavf_resume);
+
 static struct pci_driver iavf_driver = {
-	.name     = iavf_driver_name,
-	.id_table = iavf_pci_tbl,
-	.probe    = iavf_probe,
-	.remove   = iavf_remove,
-#ifdef CONFIG_PM
-	.suspend  = iavf_suspend,
-	.resume   = iavf_resume,
-#endif
-	.shutdown = iavf_shutdown,
+	.name      = iavf_driver_name,
+	.id_table  = iavf_pci_tbl,
+	.probe     = iavf_probe,
+	.remove    = iavf_remove,
+	.driver.pm = &iavf_pm_ops,
+	.shutdown  = iavf_shutdown,
 };
 
 /**
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
