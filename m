Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D99872D01
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 03:50:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F83F415F1;
	Wed,  6 Mar 2024 02:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9koiyYQZcCdD; Wed,  6 Mar 2024 02:50:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C25E410C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709693445;
	bh=Ex44tciKwdzE8cp64QdNnZbQX5H1hr1SlXOV4LoAglo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tJmP6OsFdEHTJXJLZWu1lXfXUCvlrytVdzOt2EqihRc92Rv7NOJW+E5VS1HN9QOv1
	 b3YCtf8O8b/vEWWlPcMwrBZQavlyTZ8WkbDdAYosR2OZww8RMnrQYa2Q7oHaIUwcga
	 o2vHYszR65Y0CqKKqlE0YQVTg04U6iUC40jonllvLckA2Wjgf6BmzENBnHPmTx9zaS
	 sQTlGlXCs/TS+WA+AiZFwNVPBMdy0eIuKlDRqFqv8c+0G7ZCHWtBXlO1a4hVj+r6K1
	 HiUoVdyHpiqVcP2CY2DUYvswJgO7kuIYRO2fZH1xJQmFmNf4DsIPpT67uTb57vh3qu
	 20TFsIQ6C5oTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C25E410C7;
	Wed,  6 Mar 2024 02:50:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D707C1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 02:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3DA660A38
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 02:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id icUVdQsZ7Y7O for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 02:50:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6903E608C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6903E608C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6903E608C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 02:50:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="21741378"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="21741378"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 18:50:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="14088538"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 18:50:30 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Mar 2024 18:50:21 -0800
Message-Id: <20240306025023.800029-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240306025023.800029-1-jesse.brandeburg@intel.com>
References: <20240306025023.800029-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709693438; x=1741229438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=npkyWm4n0dy2Pz8WO8hv3jyBtDCyWKRzIoOA7bdosGc=;
 b=c0KkptDgcgPWCr3Uhn9aEiHsPBTQS/OVYiP1N/eqdC9ncw0fX3JfY5tL
 x3qn4bRzZ4PLxbViFfvvVFzEo8/DrRuJCXDVrUhPAp4UeXt+b94Bmg6+J
 LgqB+rBtjBgcNdv61Hfrf2sbpkrKbWFkAZLmpPdSZBnzefBl5Yrv/d0Lo
 LChe6kZ0MaCjaf4GyhWN8GlLaPaJPLhcnT7gO8zoeznOVhzvsQqyFzMas
 qT4yDaiq9EF1wNWCP9mHXkAlst3UwJYrJxXL+g15yaWutcHspjG6cZaeV
 eij2e28k0+oKWaJPqs2rFEz+/VUtvW8kzv/rTl2vzqCu7+r3lh1+hftp5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c0KkptDg
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] igb: simplify pci ops
 declaration
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alan Brady <alan.brady@intel.com>, horms@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The igb driver was pre-declaring tons of functions just so that it could
have an early declaration of the pci_driver struct.

Delete a bunch of the declarations and move the struct to the bottom of the
file, after all the functions are declared.

Reviewed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: address compilation failure when CONFIG_PM=n, which is then updated
    in patch 2/2, fix alignment.
    changes in v1 reviewed by Simon Horman
    changes in v1 reviewed by Paul Menzel
v1: original net-next posting
---
 drivers/net/ethernet/intel/igb/igb_main.c | 53 ++++++++++-------------
 1 file changed, 24 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 518298bbdadc..e749bf5164b8 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -106,8 +106,6 @@ static int igb_setup_all_rx_resources(struct igb_adapter *);
 static void igb_free_all_tx_resources(struct igb_adapter *);
 static void igb_free_all_rx_resources(struct igb_adapter *);
 static void igb_setup_mrqc(struct igb_adapter *);
-static int igb_probe(struct pci_dev *, const struct pci_device_id *);
-static void igb_remove(struct pci_dev *pdev);
 static void igb_init_queue_configuration(struct igb_adapter *adapter);
 static int igb_sw_init(struct igb_adapter *);
 int igb_open(struct net_device *);
@@ -178,20 +176,6 @@ static int igb_vf_configure(struct igb_adapter *adapter, int vf);
 static int igb_disable_sriov(struct pci_dev *dev, bool reinit);
 #endif
 
-static int igb_suspend(struct device *);
-static int igb_resume(struct device *);
-static int igb_runtime_suspend(struct device *dev);
-static int igb_runtime_resume(struct device *dev);
-static int igb_runtime_idle(struct device *dev);
-#ifdef CONFIG_PM
-static const struct dev_pm_ops igb_pm_ops = {
-	SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
-	SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
-			igb_runtime_idle)
-};
-#endif
-static void igb_shutdown(struct pci_dev *);
-static int igb_pci_sriov_configure(struct pci_dev *dev, int num_vfs);
 #ifdef CONFIG_IGB_DCA
 static int igb_notify_dca(struct notifier_block *, unsigned long, void *);
 static struct notifier_block dca_notifier = {
@@ -219,19 +203,6 @@ static const struct pci_error_handlers igb_err_handler = {
 
 static void igb_init_dmac(struct igb_adapter *adapter, u32 pba);
 
-static struct pci_driver igb_driver = {
-	.name     = igb_driver_name,
-	.id_table = igb_pci_tbl,
-	.probe    = igb_probe,
-	.remove   = igb_remove,
-#ifdef CONFIG_PM
-	.driver.pm = &igb_pm_ops,
-#endif
-	.shutdown = igb_shutdown,
-	.sriov_configure = igb_pci_sriov_configure,
-	.err_handler = &igb_err_handler
-};
-
 MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
 MODULE_DESCRIPTION("Intel(R) Gigabit Ethernet Network Driver");
 MODULE_LICENSE("GPL v2");
@@ -647,6 +618,8 @@ struct net_device *igb_get_hw_dev(struct e1000_hw *hw)
 	return adapter->netdev;
 }
 
+static struct pci_driver igb_driver;
+
 /**
  *  igb_init_module - Driver Registration Routine
  *
@@ -10170,4 +10143,26 @@ static void igb_nfc_filter_restore(struct igb_adapter *adapter)
 
 	spin_unlock(&adapter->nfc_lock);
 }
+
+#ifdef CONFIG_PM
+static const struct dev_pm_ops igb_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
+	SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
+			   igb_runtime_idle)
+};
+#endif
+
+static struct pci_driver igb_driver = {
+	.name     = igb_driver_name,
+	.id_table = igb_pci_tbl,
+	.probe    = igb_probe,
+	.remove   = igb_remove,
+#ifdef CONFIG_PM
+	.driver.pm = &igb_pm_ops,
+#endif
+	.shutdown = igb_shutdown,
+	.sriov_configure = igb_pci_sriov_configure,
+	.err_handler = &igb_err_handler
+};
+
 /* igb_main.c */
-- 
2.39.3

