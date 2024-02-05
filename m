Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A3F849B83
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 14:13:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 348F560FE1;
	Mon,  5 Feb 2024 13:13:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 348F560FE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707138798;
	bh=EmXT+o1W3KzZ1oi1vSgeskxM1KewO2c9eIiV4A+5eBQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zuzUVQ6vwUOFpRgGyJVTtgn0gAESi1dsm8XyPM/HESBQG4qR/yc/Hyg8dQX23w+yx
	 C/6/LWmv7xOJoa+/7ITfAgwmLBL/xEkRgjxCa+iRtc32cLIU0ZxrQIai5xeL5u2qeS
	 TOXGTvPhr33tuFk9aumGeB36UuRQd7ByYXaqGnLm/AoNT17+/XWsqx9lVSWZLQIC1d
	 a5kDGlj9OuUNgQY8nCnJ8wrFWghWXf9puzxt853iLnMVLBXcpaz1xONuEskx2lAQd4
	 SM6agb7HxG4ZFzMbcMXty/PJ8hVI6fWePkqP3q8sltF3S/palue1ZuRlfzz5AEWUsO
	 RS1QQhIn/alpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fD29Qx5IVdDg; Mon,  5 Feb 2024 13:13:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30F8660F2B;
	Mon,  5 Feb 2024 13:13:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30F8660F2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2106A1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 13:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0582060F2B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 13:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0582060F2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9nMbmXPexBa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Feb 2024 13:13:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5310960E32
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 13:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5310960E32
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="407552"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="407552"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:05:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="933151702"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="933151702"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 05 Feb 2024 05:05:56 -0800
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 71BDE27BB6;
 Mon,  5 Feb 2024 13:05:53 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Feb 2024 14:03:57 +0100
Message-Id: <20240205130357.106665-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240205130357.106665-1-wojciech.drewek@intel.com>
References: <20240205130357.106665-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707138784; x=1738674784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=st0mATr4D+JloWcT1mJHpcSg8tnYAr5Rc1tpLla9LdY=;
 b=ZQl2KAak78XXRn2P0rCliMMXm1C56FS/2JvJlfidNEEJAnAqt8GlGWA8
 Yx+EOK13KlNztBcV2R7OThj2JPWjo6OxnP6QnlFsoSVofwEaFvhD6wFin
 cuoVLHZwtKxgWLZWoxNHv/y+SlomSSQM5SOph2GTEzLKaarvBaDqBWpNR
 hR9WqcMH4rIKkSbjzatwLYulq8ClTcbtP0GdrxAduQ6Mjz0CZewik1eqb
 kiC42y7mAeWp9AXIVUAYzh19zmzkXaf5w5+GiIwRXX3KdjNSgirJTPoB2
 fL2Wk0hflE9dtlti6Eyn6b5P3jPfE1KwW/KBg0hT2RjvNT8I3v4bj2ez8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZQl2KAak
Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/2] ice: Fix debugfs with
 devlink reload
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
Cc: vadim.fedorenko@linux.dev, bcreeley@amd.com, netdev@vger.kernel.org,
 paul.m.stillwell.jr@intel.com, przemyslaw.kitszel@intel.com, jiri@resnulli.us
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During devlink reload it is needed to remove debugfs entries
correlated with only one PF. ice_debugfs_exit() removes all
entries created by ice driver so we can't use it.

Introduce ice_debugfs_pf_deinit() in order to release PF's
debugfs entries. Move ice_debugfs_exit() call to ice_module_exit(),
it makes more sense since ice_debugfs_init() is called in
ice_module_init() and not in ice_probe().

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_debugfs.c | 10 ++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c   |  2 ++
 drivers/net/ethernet/intel/ice/ice_main.c    |  3 +--
 4 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 118e84835720..365c03d1c462 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -896,6 +896,7 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
 }
 
 void ice_debugfs_fwlog_init(struct ice_pf *pf);
+void ice_debugfs_pf_deinit(struct ice_pf *pf);
 void ice_debugfs_init(void);
 void ice_debugfs_exit(void);
 void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module);
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index 85aa31dd86b1..d252d98218d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -644,6 +644,16 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
 	kfree(fw_modules);
 }
 
+/**
+ * ice_debugfs_pf_deinit - cleanup PF's debugfs
+ * @pf: pointer to the PF struct
+ */
+void ice_debugfs_pf_deinit(struct ice_pf *pf)
+{
+	debugfs_remove_recursive(pf->ice_debugfs_pf);
+	pf->ice_debugfs_pf = NULL;
+}
+
 /**
  * ice_debugfs_init - create root directory for debugfs entries
  */
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 92b5dac481cd..4fd15387a7e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -188,6 +188,8 @@ void ice_fwlog_deinit(struct ice_hw *hw)
 	if (hw->bus.func)
 		return;
 
+	ice_debugfs_pf_deinit(hw->back);
+
 	/* make sure FW logging is disabled to not put the FW in a weird state
 	 * for the next driver load
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 85a996ad2c1f..9c2c8637b4a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5276,8 +5276,6 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
-	ice_debugfs_exit();
-
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
 		ice_free_vfs(pf);
@@ -5783,6 +5781,7 @@ module_init(ice_module_init);
 static void __exit ice_module_exit(void)
 {
 	pci_unregister_driver(&ice_driver);
+	ice_debugfs_exit();
 	destroy_workqueue(ice_wq);
 	destroy_workqueue(ice_lag_wq);
 	pr_info("module unloaded\n");
-- 
2.40.1

