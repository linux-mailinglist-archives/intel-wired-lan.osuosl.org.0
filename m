Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1863D8506D2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Feb 2024 23:08:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7833660650;
	Sat, 10 Feb 2024 22:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QVDbhYduHvAL; Sat, 10 Feb 2024 22:08:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FB636062F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707602916;
	bh=WhJzh02dfZxL6+e1cxgL6hN7P2Lr5SeCQjgYUD40UlQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2nxYdKCDGc/X83FFwWFdHVbKaTYFy8U2+GDascTVxZwm/2HWL22HNp67/3O4BTtFE
	 txk8ASW+/yfxml+LsrZzUP8SWJ+yG38h6/nIkUPkX4k+ZAohng3gr35hHKbL/jamsX
	 dGjndyO+s2/5yzIYMV2yDV5vjfFpWzW9YEoYHWzQ2K2+bfiaNWN5hpycLIRBjjgByB
	 Zy7T/dYQpX0qAKVXAOaNjhFZJhc3I4Gm2OzDGlVSr5xQxJ2INoyE3nLQAejxwH5OEk
	 RT3alLor7CqLTuS72WEmLdS6UTGL9IOsAAWXA3n8/nNwa5w1m1jVEHIQnaAYXfppMz
	 2evhU14VlipkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FB636062F;
	Sat, 10 Feb 2024 22:08:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60AC21BF290
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89B0A404AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cEM49hRrtF-4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Feb 2024 22:08:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 378F5404E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 378F5404E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 378F5404E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10980"; a="1474820"
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; 
   d="scan'208";a="1474820"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 14:01:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; 
   d="scan'208";a="2211143"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 14:01:18 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 10 Feb 2024 14:01:08 -0800
Message-Id: <20240210220109.3179408-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707602908; x=1739138908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=73gVd0jL3LIZ/NUnA4I60xb3vo48N8JaflqhU2tf2SI=;
 b=RcxniXhGguoi7KB1VrPnete8cUJAmo/2jpZnmXc/8laSEHxh+ZZJ52Df
 i12RlOc9Zj544LmjbSVgouBjUaJVzvU8zak6gKX99rOlLyEHJYYl6db4W
 HxdSTnsv0GDQt/dZXJQNhoYu/etPA40bpYyb3sBhKgHBcxiwYaZZF6rk6
 dLTkprHzRex9pmQYnwkkaN6DcIZltKclD6hf6+LpOfEcMf1TV4qxbAZy6
 HUaprYLBKgOzkv5jI+ZnR9J7MyAGIS8RHO38tR3B1i1VLRyrFVbwAPQp7
 w6noD2O22Ek+boaCjKVse6Psj9J7UFrngtvwJGuTYaEeJ/x3tY96WyJzb
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RcxniXhG
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: simplify pci ops
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alan Brady <alan.brady@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The igb driver was pre-declaring tons of functions just so that it could
have an early declaration of the pci_driver struct.

Delete a bunch of the declarations and move the struct to the bottom of the
file, after all the functions are declared.

Reviewed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
e1p v2: add back mistakenly deleted pm ops struct.
---
 drivers/net/ethernet/intel/igb/igb_main.c | 51 ++++++++++-------------
 1 file changed, 22 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 4df8d4153aa5..fdca4901defa 100644
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
@@ -10169,4 +10142,24 @@ static void igb_nfc_filter_restore(struct igb_adapter *adapter)
 
 	spin_unlock(&adapter->nfc_lock);
 }
+
+#ifdef CONFIG_PM
+static const struct dev_pm_ops igb_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
+	SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
+			igb_runtime_idle)
+};
+#endif
+
+static struct pci_driver igb_driver = {
+	.name     = igb_driver_name,
+	.id_table = igb_pci_tbl,
+	.probe    = igb_probe,
+	.remove   = igb_remove,
+	.driver.pm = &igb_pm_ops,
+	.shutdown = igb_shutdown,
+	.sriov_configure = igb_pci_sriov_configure,
+	.err_handler = &igb_err_handler
+};
+
 /* igb_main.c */
-- 
2.39.3

