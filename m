Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C135B0D7BB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C35284B7C;
	Tue, 22 Jul 2025 11:07:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9NunRHHUcRMW; Tue, 22 Jul 2025 11:07:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8324984B82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182428;
	bh=CVJYTOPU+eKMVIGzPrpWkvBaKsTj49HYvYyAY/PB6Tg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TFo99Irw4yYk8b6a71k93NJacZFT1o9SCjTwXqlqvzc73ecqH1v57gXDhxf/ZpE9P
	 lgcRt4T3WL5QjDOoNNcKzIABGeKg7NJkSnPBM8ZocvcoB2EaNr+niVU5adqnkslqHW
	 X/NqfMEe6QsLku4s/adSOuVXDSUx0K4WRnDbqMJx9tltTr1RaTJPXWTWu42o6JNHVE
	 1Caps0SSnEj9gISPJUp4uxNYoo1rPF1eTlYqbXDSDu10BvciKhuypcovKepxhy73jn
	 hnkgOyi+tj4zZxGKMAmYlO1XUI8TnZvfJYNx/GvUif406TjQiar6EHeesvuuD1jCLn
	 3RiV5G3ZG63KA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8324984B82;
	Tue, 22 Jul 2025 11:07:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A092A127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 86D1284B78
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0jkIptegJ9jw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:07:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A063384B51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A063384B51
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A063384B51
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:05 +0000 (UTC)
X-CSE-ConnectionGUID: UG6sgNVyQjmxzlP+31E2CA==
X-CSE-MsgGUID: MRYOEMSWR8WvyQf7wZBJEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083598"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083598"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:07:05 -0700
X-CSE-ConnectionGUID: QLBRZ5aMQOyuM3qJZsqlkg==
X-CSE-MsgGUID: 0D7bExcuRkeXJaaVHRD5ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163153945"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:07:03 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 22 Jul 2025 12:45:50 +0200
Message-ID: <20250722104600.10141-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182426; x=1784718426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VDCYv50sR16//RzoiqClod2CdnadLpSqllJULhbeYd4=;
 b=VWHVZdPY71p7Ldtqsss77m5OV6z2kiHcoKOL9qJCTdD3lh/xplTaxlBU
 OE8i7ZuiJSDvCkZmY9L7MlRW6QFwtxieyBl0uQjhrVuyWPcsIA/8L6NyW
 Iyv8l93lO3JIkV01gSrcSoG9GHo0FB7muS4LQZj/ad7LbmqJM8GWhoA2a
 wsMh4PtKRlhalNF138+PFi+i0exAXlWjBsLjIPuAaDlO7fcBAGbEoP/6g
 hFsbr9+UbNm1uSwjbo0D+mzkM7T3qMVT5+IOcPf5G2MNnjxkri3otaN91
 PbkqAJTj1+fob7mTk5ZX4VhE0rPow4u0Sv9cDPoB89WWrjN4LoLO5sp2b
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VWHVZdPY
Subject: [Intel-wired-lan] [PATCH iwl-next v1 05/15] ice: add pdev into
 fwlog structure and use it for logging
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

Prepare the code to be moved to the library. ice_debug() won't be there
so switch to dev_dbg().

Add struct pdev pointer in fwlog to track on which pdev the fwlog was
created.

Switch the dev passed in dev_warn() to the one stored in fwlog.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c  |  3 +-
 drivers/net/ethernet/intel/ice/ice_debugfs.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_fwlog.c   | 37 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_fwlog.h   |  7 ++--
 4 files changed, 26 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 5d7f348aa596..7f293c791775 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -992,6 +992,7 @@ int ice_init_hw(struct ice_hw *hw)
 {
 	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
 	void *mac_buf __free(kfree) = NULL;
+	struct ice_pf *pf = hw->back;
 	u16 mac_buf_len;
 	int status;
 
@@ -1012,7 +1013,7 @@ int ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_cqinit;
 
-	status = ice_fwlog_init(hw, &hw->fwlog);
+	status = ice_fwlog_init(hw, &hw->fwlog, pf->pdev);
 	if (status)
 		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW logging: %d\n",
 			  status);
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index dbcc0cb438aa..1e036bc128c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -450,7 +450,7 @@ ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
 	}
 
 	/* free all the buffers and the tracking info and resize */
-	ice_fwlog_realloc_rings(hw, &hw->fwlog, index);
+	ice_fwlog_realloc_rings(&hw->fwlog, index);
 
 	/* if we get here, nothing went wrong; return count since we didn't
 	 * really write anything
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index a010f655ffb7..b1c1359d5ab5 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -73,13 +73,11 @@ static void ice_fwlog_free_ring_buffs(struct ice_fwlog_ring *rings)
 #define ICE_FWLOG_INDEX_TO_BYTES(n) ((128 * 1024) << (n))
 /**
  * ice_fwlog_realloc_rings - reallocate the FW log rings
- * @hw: pointer to the HW structure
  * @fwlog: pointer to the fwlog structure
  * @index: the new index to use to allocate memory for the log data
  *
  */
-void ice_fwlog_realloc_rings(struct ice_hw *hw, struct ice_fwlog *fwlog,
-			     int index)
+void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
 {
 	struct ice_fwlog_ring ring;
 	int status, ring_size;
@@ -109,7 +107,7 @@ void ice_fwlog_realloc_rings(struct ice_hw *hw, struct ice_fwlog *fwlog,
 
 	status = ice_fwlog_alloc_ring_buffs(&ring);
 	if (status) {
-		dev_warn(ice_hw_to_dev(hw), "Unable to allocate memory for FW log ring data buffers\n");
+		dev_warn(&fwlog->pdev->dev, "Unable to allocate memory for FW log ring data buffers\n");
 		ice_fwlog_free_ring_buffs(&ring);
 		kfree(ring.rings);
 		return;
@@ -165,16 +163,16 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 
 	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
 	if (status) {
-		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
+		dev_dbg(&hw->fwlog.pdev->dev, "Failed to get FW log configuration\n");
 		goto status_out;
 	}
 
 	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
 	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
-		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
+		dev_dbg(&hw->fwlog.pdev->dev, "FW returned less than the expected number of FW log module IDs\n");
 	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
-		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
-			  ICE_AQC_FW_LOG_ID_MAX);
+		dev_dbg(&hw->fwlog.pdev->dev, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
+			ICE_AQC_FW_LOG_ID_MAX);
 		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
 	}
 
@@ -225,8 +223,8 @@ static void ice_fwlog_set_supported(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 	status = ice_aq_fwlog_get(hw, cfg);
 	if (status)
-		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
-			  status);
+		dev_dbg(&fwlog->pdev->dev, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
+			status);
 	else
 		fwlog->supported = true;
 
@@ -237,17 +235,20 @@ static void ice_fwlog_set_supported(struct ice_hw *hw, struct ice_fwlog *fwlog)
  * ice_fwlog_init - Initialize FW logging configuration
  * @hw: pointer to the HW structure
  * @fwlog: pointer to the fwlog structure
+ * @pdev: pointer to the pci dev used in dev_warn()
  *
  * This function should be called on driver initialization during
  * ice_init_hw().
  */
-int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog)
+int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
+		   struct pci_dev *pdev)
 {
 	/* only support fw log commands on PF 0 */
 	if (hw->bus.func)
 		return -EINVAL;
 
 	ice_fwlog_set_supported(hw, fwlog);
+	fwlog->pdev = pdev;
 
 	if (ice_fwlog_supported(fwlog)) {
 		int status;
@@ -261,7 +262,7 @@ int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog)
 					    sizeof(*fwlog->ring.rings),
 					    GFP_KERNEL);
 		if (!fwlog->ring.rings) {
-			dev_warn(ice_hw_to_dev(hw), "Unable to allocate memory for FW log rings\n");
+			dev_warn(&fwlog->pdev->dev, "Unable to allocate memory for FW log rings\n");
 			return -ENOMEM;
 		}
 
@@ -270,7 +271,7 @@ int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 		status = ice_fwlog_alloc_ring_buffs(&fwlog->ring);
 		if (status) {
-			dev_warn(ice_hw_to_dev(hw), "Unable to allocate memory for FW log ring data buffers\n");
+			dev_warn(&fwlog->pdev->dev, "Unable to allocate memory for FW log ring data buffers\n");
 			ice_fwlog_free_ring_buffs(&fwlog->ring);
 			kfree(fwlog->ring.rings);
 			return status;
@@ -278,7 +279,7 @@ int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 		ice_debugfs_fwlog_init(hw->back);
 	} else {
-		dev_warn(ice_hw_to_dev(hw), "FW logging is not supported in this NVM image. Please update the NVM to get FW log support\n");
+		dev_warn(&fwlog->pdev->dev, "FW logging is not supported in this NVM image. Please update the NVM to get FW log support\n");
 	}
 
 	return 0;
@@ -308,7 +309,7 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
 	fwlog->cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
 	status = ice_fwlog_set(hw, &fwlog->cfg);
 	if (status)
-		dev_warn(ice_hw_to_dev(hw), "Unable to turn off FW logging, status: %d\n",
+		dev_warn(&fwlog->pdev->dev, "Unable to turn off FW logging, status: %d\n",
 			 status);
 
 	kfree(pf->ice_debugfs_pf_fwlog_modules);
@@ -317,7 +318,7 @@ void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 	status = ice_fwlog_unregister(hw, fwlog);
 	if (status)
-		dev_warn(ice_hw_to_dev(hw), "Unable to unregister FW logging, status: %d\n",
+		dev_warn(&fwlog->pdev->dev, "Unable to unregister FW logging, status: %d\n",
 			 status);
 
 	if (fwlog->ring.rings) {
@@ -436,7 +437,7 @@ int ice_fwlog_register(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 	status = ice_aq_fwlog_register(hw, true);
 	if (status)
-		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to register for firmware logging events over ARQ\n");
+		dev_dbg(&fwlog->pdev->dev, "Failed to register for firmware logging events over ARQ\n");
 	else
 		fwlog->cfg.options |= ICE_FWLOG_OPTION_IS_REGISTERED;
 
@@ -457,7 +458,7 @@ int ice_fwlog_unregister(struct ice_hw *hw, struct ice_fwlog *fwlog)
 
 	status = ice_aq_fwlog_register(hw, false);
 	if (status)
-		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to unregister from firmware logging events over ARQ\n");
+		dev_dbg(&fwlog->pdev->dev, "Failed to unregister from firmware logging events over ARQ\n");
 	else
 		fwlog->cfg.options &= ~ICE_FWLOG_OPTION_IS_REGISTERED;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 334a125eac80..9c56ca6cbef0 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -68,16 +68,17 @@ struct ice_fwlog {
 	struct ice_fwlog_cfg cfg;
 	bool supported; /* does hardware support FW logging? */
 	struct ice_fwlog_ring ring;
+	struct pci_dev *pdev;
 };
 
 bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);
 void ice_fwlog_ring_increment(u16 *item, u16 size);
-int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog);
+int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
+		   struct pci_dev *pdev);
 void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog);
 int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
 int ice_fwlog_register(struct ice_hw *hw, struct ice_fwlog *fwlog);
 int ice_fwlog_unregister(struct ice_hw *hw, struct ice_fwlog *fwlog);
-void ice_fwlog_realloc_rings(struct ice_hw *hw, struct ice_fwlog *fwlog,
-			     int index);
+void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index);
 void ice_get_fwlog_data(struct ice_fwlog *fwlog, u8 *buf, u16 len);
 #endif /* _ICE_FWLOG_H_ */
-- 
2.49.0

