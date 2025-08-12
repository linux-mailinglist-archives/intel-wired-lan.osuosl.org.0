Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5668EB21C61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89DBF41E07;
	Tue, 12 Aug 2025 04:54:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hpG0PEUma3BU; Tue, 12 Aug 2025 04:54:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DC8F41E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974451;
	bh=CVJYTOPU+eKMVIGzPrpWkvBaKsTj49HYvYyAY/PB6Tg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8pX9IEEZMfmYaOZqNy54jWf+d8rTs9UsLMzeznVdDTR2C+e2wCKYINxGOTaII3Usj
	 Db+qeFqY2JdFYeH1dxPmXBZyt4ou+WNA1Mt3ZgrMsx4AWyOORkZ3WmbbKZxL40jAJx
	 i+6maGZO8LPRxW8h3CW9ZA8umPFe52ZLsBPK0u4W0O8E95VshbPNTJmtSviM4r0CQT
	 XM8XvvQ2RdOLMSs8LYAbyLWUd8yRNt3mym3syYfVOJRlFz8f4O8l5NLjYPzoBMmBQq
	 Qv5TqymtLfNvKF5MncaDumlCwaDMxq6zICXtPwIAt6Grpn9uDLD31fCQon4GdNwAlv
	 5bz68C9IvAv1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DC8F41E0B;
	Tue, 12 Aug 2025 04:54:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9EAEE183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90ED36134E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iKimpyPtDK5j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C3BC261271
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3BC261271
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3BC261271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:08 +0000 (UTC)
X-CSE-ConnectionGUID: Rqp0Nx5KQbKLeN4SoyJ7HA==
X-CSE-MsgGUID: qbF5fCCsSoaIwQRHKJYRnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612740"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612740"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:47:03 -0700
X-CSE-ConnectionGUID: zRWU0551Ti+lUc3SiUcD4w==
X-CSE-MsgGUID: jng4B8/7S8WNa8+cMJTwPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327886"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:47:01 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:26 +0200
Message-ID: <20250812042337.1356907-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974449; x=1786510449;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VDCYv50sR16//RzoiqClod2CdnadLpSqllJULhbeYd4=;
 b=RprhaUvAtRt02OfFj0VUj8iPKffUd8t3vCE0Ucrt7KijxKc+e+lWTnhv
 oTdMHrClMIycGh27gtRZxqC9PHxSCdyS7FN7HeEHU1FLASBIytTJMQCQE
 I4qcysvmJ0TilNrPFiGP97jDqVvdMANFzYOospkIFtPO06oxh63o6DQ6m
 pRIUklQD5y5rUfhTu7hYuMPefIeZiQ6gKOJ11+eP5ukDXYbNymTzGeSUD
 NKVEZAjYn0I1HzZJsQQSPEKyrGwTElZ1+sKKLsWYsI1LdloaRH4Y6Ixx1
 4pUAhCdNEqNcf3KDWeRZmywj6aQ52H//jFp6RIAFnwOnbG04IuvzbN11v
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RprhaUvA
Subject: [Intel-wired-lan] [PATCH iwl-next v2 05/15] ice: add pdev into
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

