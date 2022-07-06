Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C932568A37
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jul 2022 15:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC60E40B33;
	Wed,  6 Jul 2022 13:55:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC60E40B33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657115708;
	bh=HvsPsy1BNDLupMgUc5U5GzjJb+V9cMSPFQspp+65HNU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G3bKKdyMJA+Y2sWHfnn28Mik6Nx5AFJxe7/uOe0bsGZwZsKOjGY+8hOpHzMmqxTQ8
	 tjsDGApS1sTrE4Z3phdGnWoMw+sHYeFIzS2qww53Hui3C3c86ed2F+b4OesrIsSJSr
	 GPcpI3yCgfRy/Nm95nxlyakPs/dsr6OnawyJn2vA1JtRNsyzPil5DUIwDQyutmFyy2
	 L0XnImJprQtREiit3+C2dSqUBfQzvX7mwbHO6Ceg0GkIl9KhKFCI1Q8Njoid6B4YXv
	 VNJo5WV/BGbuvetvmJFBG2FOlh5s9zTbXLOTHioiTyrHZl0KMOAfW3uVIRO9llhdR5
	 DHmIdDHisHjmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZfHlu6YVKm7; Wed,  6 Jul 2022 13:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E142640ADA;
	Wed,  6 Jul 2022 13:55:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E142640ADA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F1F31BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 13:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5767460FF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 13:55:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5767460FF7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WYceqcNtEIx7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jul 2022 13:54:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7A4C60FF2
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7A4C60FF2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 13:54:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="282502968"
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="282502968"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 06:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="735573306"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jul 2022 06:54:58 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Jul 2022 15:54:36 +0200
Message-Id: <20220706135437.1695672-2-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220706135437.1695672-1-mateusz.palczewski@intel.com>
References: <20220706135437.1695672-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657115699; x=1688651699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LYBSomNcfWBzYZ8cXDmRwJMUZh4rpv0kVmb4Zyfz7tw=;
 b=a/MYLxd6vJWEnzzOv5c8tHhGClia9ZX5S6s/T0o5C5hbPHcLU8/jKBOG
 ltlTokHhe5GYKPRvu5FdNBR+5icr449qXZw/uA6H0I/ph/7sDifqK5XW5
 Zw91bEp3Z4orq4IKHmR0KYpwDM94NFYsBPYlAEIJSQLnKCjsQkBUUB3kO
 q5sJFcw84xl2z56E17G8IbH/ul1CMRzsstBcyw7xUBWq+B8cog3iasQEl
 XijLd+SiYavhto7DuSwH80kuisXS+niEyMVCwv8EKlTzgQB3A9a9vchoc
 oPbFQ/IkbQ3sHR0nfO5Bd4uuqebQtH1Cob+i3Yo8NZZ098m24Vja3TJox
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a/MYLxd6
Subject: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Fix shutdown pci
 callback to match the remove one
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: SlawomirX Laba <slawomirx.laba@intel.com>

Make the flow for pci shutdown be the same to the pci remove.

iavf_shutdown was implementing an incomplete version
of iavf_remove. It misses several calls  to the kernel like
iavf_free_misc_irq, iavf_reset_interrupt_capability, iounmap
that might break the system on reboot or hibernation.

Implement the call of iavf_remove directly in iavf_shutdown to
close this gap.

Fixes: 5eae00c57f5e ("i40evf: main driver core")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 40 +++++++--------------
 1 file changed, 12 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f3ecb3bca33d..74be5e3a09df 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4545,34 +4545,6 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	return 0;
 }
 
-/**
- * iavf_shutdown - Shutdown the device in preparation for a reboot
- * @pdev: pci device structure
- **/
-static void iavf_shutdown(struct pci_dev *pdev)
-{
-	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
-	struct net_device *netdev = adapter->netdev;
-
-	netif_device_detach(netdev);
-
-	if (netif_running(netdev))
-		iavf_close(netdev);
-
-	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
-		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __FUNCTION__);
-	/* Prevent the watchdog from running. */
-	iavf_change_state(adapter, __IAVF_REMOVE);
-	adapter->aq_required = 0;
-	mutex_unlock(&adapter->crit_lock);
-
-#ifdef CONFIG_PM
-	pci_save_state(pdev);
-
-#endif
-	pci_disable_device(pdev);
-}
-
 /**
  * iavf_probe - Device Initialization Routine
  * @pdev: PCI device information struct
@@ -4909,6 +4881,18 @@ static void iavf_remove(struct pci_dev *pdev)
 	pci_disable_device(pdev);
 }
 
+/**
+ * iavf_shutdown - Shutdown the device in preparation for a reboot
+ * @pdev: pci device structure
+ **/
+static void iavf_shutdown(struct pci_dev *pdev)
+{
+	iavf_remove(pdev);
+
+	if (system_state == SYSTEM_POWER_OFF)
+		pci_set_power_state(pdev, PCI_D3hot);
+}
+
 static SIMPLE_DEV_PM_OPS(iavf_pm_ops, iavf_suspend, iavf_resume);
 
 static struct pci_driver iavf_driver = {
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
