Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21418587BCF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 13:52:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3A5F8139E;
	Tue,  2 Aug 2022 11:52:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3A5F8139E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659441162;
	bh=MJvA1AZXHJJvbb+bV6Gj7tqg+lx7YWDcyizMqJi5Ukw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xKODvzemhpJwCgHXbZ95Cw9W9Kh7T+DE3so+eQ509nB5lTrb6L1z1AfFKNGc+l1Ba
	 Yt5pTk8vXf+wsHH486q4gamdPIwlr+adH1xX94prGiYk57d/8TxIxSCP5UxArN4gpz
	 wBXkioa2UWXEXX3tJPIb0+ms1eo6txgA36am6XtanC6SMM5RLAwxFDnhMfCLbv2TlE
	 CwNbIjaiq+BttPl4RatlWvH9HHe3XAegEAbhHKywF9FpuRFzQa0ZL8lzyGVFXiqQM0
	 JQlbhFhB5RTTPFrbYwxYmkLMsGskxkSYQqEY6pBfOwjznKAXc5LCbMIj+EoKgeXFpZ
	 N92lIl7KvSSWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ngyVrkBj97dS; Tue,  2 Aug 2022 11:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C01E88139D;
	Tue,  2 Aug 2022 11:52:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C01E88139D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C919D1BF409
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACF29405CF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACF29405CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJMxdBwRQOZn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 11:52:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4A4D40370
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4A4D40370
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="289401284"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="289401284"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 04:52:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="728807633"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2022 04:52:31 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Aug 2022 13:51:41 +0200
Message-Id: <20220802115142.65176-2-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220802115142.65176-1-mateusz.palczewski@intel.com>
References: <20220802115142.65176-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659441152; x=1690977152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DpMwQRFoAF2+HvpsTw77Ge6Qg8v1mZ2nUjH64Qhffwk=;
 b=CnK1VQM2s6LSQ8otn4I+UY+3sHnbPgH9DGp4njhwVRs53ItGDFRypxyC
 yIRknRRhAcTpNYSymWcjyoDW2iUyoKgCf1v8wXrbI9qAynWfu5CuCCWUb
 I5vsr2lASo5u+dQGmK2AWJlcprUqK+0P4wS4tzg2TRwvC0jcdrW39Qxfg
 2Q2yacFee2DBr0IOFO5OF7yTN3WgIKqljz/C7yH2xPsBE5ts3c8trfaeV
 5FcUi2XsyEViuCHPE86XI+iGe19OM880QNyJoxS+uqVjt9Tlwt9zPwTLl
 BHhC+aqXPQBtcEUsMNxgdukxf4on6SAJ+sgxKQhZLAjk/XZ033tIwJprY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CnK1VQM2
Subject: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix shutdown pci
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Slawomir Laba <slawomirx.laba@intel.com>

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
 v2: Fixed author
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 40 +++++++--------------
 1 file changed, 12 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 04fb9fc0de19..6357dea93b99 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4647,34 +4647,6 @@ int iavf_process_config(struct iavf_adapter *adapter)
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
@@ -5011,6 +4983,18 @@ static void iavf_remove(struct pci_dev *pdev)
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
