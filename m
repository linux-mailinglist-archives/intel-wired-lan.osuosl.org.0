Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D769B21C63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32B2841E02;
	Tue, 12 Aug 2025 04:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sfhxRIcW2Nlr; Tue, 12 Aug 2025 04:54:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6611441DF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974456;
	bh=flh2enX8wr9rsOTQKeVXDq5WjLK3SNogX22LAq9dkjE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JaHnqexPDRLYrtnZ1lE6dJwAD/GC4RyQRMQ1xAVJ2Nh9j6KpJhGCb/oahd9wEF1Ri
	 Pe9zEK/XQgxeXEEu16saeKOQTaYtTrVsbhTVgdkP4iMGMTQqnbGurJzX53/MlcxZsc
	 XsSVDzziQDP142shS1dY+6uwiF90s5IGZ3bXZVAwg3Dawbo6wLbPw53wfV2NaHaZ+w
	 r/ChxFg6BF2B4nK55T1N6PuHuTjbUlITYN5mIR2sUxlrA1aG8SAk5tPbW84G/HE81D
	 +JPc3nlkT+deQo/HQ5tnw1jm64IwseEwqoJIDiGI+i6iM9Dmioxq+AugNZNHQRTGZC
	 Y40rMNGAXZcgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6611441DF3;
	Tue, 12 Aug 2025 04:54:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A3C6183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67D866134E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OBPLxAyxRJO4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B8A9F612A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8A9F612A5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8A9F612A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:12 +0000 (UTC)
X-CSE-ConnectionGUID: VPwJaUZSR6CM4cXuLSNXTQ==
X-CSE-MsgGUID: ezrdMK4+QZGpSv4Z5ZLD5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612754"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612754"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:47:07 -0700
X-CSE-ConnectionGUID: YyMBrYXkQYGtUH0iWvuYpw==
X-CSE-MsgGUID: 9h5ELiN3T6a/Y06HpV8dLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327901"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:47:06 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:28 +0200
Message-ID: <20250812042337.1356907-8-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974453; x=1786510453;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a4DVyQ2ZKjgg4V3riO5kyjID7KlRSJahiBK7W6tnirA=;
 b=mirS892vynWBG6iRbmNb/MIfKt9GyQoCxUNvOVrasKdlC/5pUKEL0ttC
 jePhdS/DsycbU97vW1TtdXdRc8Z60g4spLtoWjj8k0q1MgwhQIlNZPnlN
 bJcnlOavvM8fa6ozWDQTrbsCkJ/6MK/l8zF6zA3cauJGaKxycYvVn7g81
 cuYbqMx/R6qIo1tLGNbsse8oYJ3DlHVTWw8zbkf9kgjXSk2m/O1IjZU/A
 +zIVLOWTjJTeAjaWDB77ILe6V+s4z0v92vqbgmWhmtd9BtblXj5GNVi8y
 UiuUICevLNldwuh+MlvKJBNpQCD+ZAGZeZ70AVkXzNhryzcR7aQGhivaU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mirS892v
Subject: [Intel-wired-lan] [PATCH iwl-next v2 07/15] ice: move out debugfs
 init from fwlog
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The root debugfs directory should be available from driver side, not
from library. Move it out from fwlog code.

Make similar to __fwlog_init() __fwlog_deinit() and deinit debugfs
there. In case of ice only fwlog is using debugfs.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c  | 14 ++++++++++++--
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 20 +++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_fwlog.c   |  2 --
 4 files changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a6803b344540..ee2ae0cbc25e 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -909,6 +909,7 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
 }
 
 void ice_debugfs_fwlog_init(struct ice_pf *pf);
+int ice_debugfs_pf_init(struct ice_pf *pf);
 void ice_debugfs_pf_deinit(struct ice_pf *pf);
 void ice_debugfs_init(void);
 void ice_debugfs_exit(void);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 7b4ff20f3346..9119d097eb08 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1000,6 +1000,11 @@ static int __fwlog_init(struct ice_hw *hw)
 		.send_cmd = __fwlog_send_cmd,
 		.priv = hw,
 	};
+	int err;
+
+	err = ice_debugfs_pf_init(pf);
+	if (err)
+		return err;
 
 	return ice_fwlog_init(hw, &hw->fwlog, &api);
 }
@@ -1179,6 +1184,12 @@ int ice_init_hw(struct ice_hw *hw)
 	return status;
 }
 
+static void __fwlog_deinit(struct ice_hw *hw)
+{
+	ice_debugfs_pf_deinit(hw->back);
+	ice_fwlog_deinit(hw, &hw->fwlog);
+}
+
 /**
  * ice_deinit_hw - unroll initialization operations done by ice_init_hw
  * @hw: pointer to the hardware structure
@@ -1197,8 +1208,7 @@ void ice_deinit_hw(struct ice_hw *hw)
 	ice_free_seg(hw);
 	ice_free_hw_tbls(hw);
 	mutex_destroy(&hw->tnl_lock);
-
-	ice_fwlog_deinit(hw, &hw->fwlog);
+	__fwlog_deinit(hw);
 	ice_destroy_all_ctrlq(hw);
 
 	/* Clear VSI contexts if not already cleared */
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 9235ae099e17..c7d9e92d7f56 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -584,7 +584,6 @@ static const struct file_operations ice_debugfs_data_fops = {
  */
 void ice_debugfs_fwlog_init(struct ice_pf *pf)
 {
-	const char *name = pci_name(pf->pdev);
 	struct dentry *fw_modules_dir;
 	struct dentry **fw_modules;
 	int i;
@@ -601,10 +600,6 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 	if (!fw_modules)
 		return;
 
-	pf->ice_debugfs_pf = debugfs_create_dir(name, ice_debugfs_root);
-	if (IS_ERR(pf->ice_debugfs_pf))
-		goto err_create_module_files;
-
 	pf->ice_debugfs_pf_fwlog = debugfs_create_dir("fwlog",
 						      pf->ice_debugfs_pf);
 	if (IS_ERR(pf->ice_debugfs_pf_fwlog))
@@ -645,6 +640,21 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 	kfree(fw_modules);
 }
 
+/**
+ * ice_debugfs_pf_init - create PF's debugfs
+ * @pf: pointer to the PF struct
+ */
+int ice_debugfs_pf_init(struct ice_pf *pf)
+{
+	const char *name = pci_name(pf->pdev);
+
+	pf->ice_debugfs_pf = debugfs_create_dir(name, ice_debugfs_root);
+	if (IS_ERR(pf->ice_debugfs_pf))
+		return PTR_ERR(pf->ice_debugfs_pf);
+
+	return 0;
+}
+
 /**
  * ice_debugfs_pf_deinit - cleanup PF's debugfs
  * @pf: pointer to the PF struct
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 172905187a3e..f7dbcb5e11aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -300,8 +300,6 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
 	if (hw->bus.func)
 		return;
 
-	ice_debugfs_pf_deinit(hw->back);
-
 	/* make sure FW logging is disabled to not put the FW in a weird state
 	 * for the next driver load
 	 */
-- 
2.49.0

