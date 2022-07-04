Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E829565572
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 14:34:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8906660E92;
	Mon,  4 Jul 2022 12:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8906660E92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656938054;
	bh=eoAS0xxB3FBHpV/BslOXmnoL2MhShn55mQhnz1/BSCU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tjQj9N3/wqzZ9Q7OqIgWw961LPjMmXjiTcIbrREtGdYeJSR8+CX3kiUUQIIEQFeYB
	 q33qWPxh/kVxL6LEyvT6jDxd3q9ygseDXNEncdBzIXovJf3bWsjivXBzo56CFPwrqd
	 ddAzyeuAbwMmbirbaIKBSi8KPlckhHwlPnetcVAJCz7Pg+U4KVZApRqzyCz+Kdk2sW
	 52Zy652Dypr9IqX/l6/tV2fNDoSXtQtCy2uCCZPsVNHK9LcffM+8lNO2MrVvYJGuxv
	 Nn31YAlkGOSAv3Gpcv+jweiVYvJiiT0cElUltTZE9yIT9AvGeRXJ3JgcjXB2oJ1vqj
	 fFtgzHSMp9Wlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k2SASutcmFWD; Mon,  4 Jul 2022 12:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CBCB60EBC;
	Mon,  4 Jul 2022 12:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CBCB60EBC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA991BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D407F60E7D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D407F60E7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELPJs-5WH0hp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 12:34:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7DA060E09
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7DA060E09
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 12:34:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="369444162"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="369444162"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 05:33:16 -0700
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="567212629"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 05:33:15 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 14:32:52 +0200
Message-Id: <20220704123252.2962020-4-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220704123252.2962020-1-michal.wilczynski@intel.com>
References: <20220704123252.2962020-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656938044; x=1688474044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mVQSYaeiep21fC/sgzHk/CjWOtTzebcuzihJPyUbzCM=;
 b=j6QE1EPVWmWRwmLgy0IQ41x51tE/eC7mBVvXduhfPuCbI1isz7lcVGD3
 AjvLaALGRAgB4jxrgm6QRdUFqAkSknpETP2myX41NPxRqSm1Sqh1vPHbB
 1vuTiI6IKN2/oVOkseQJ9tOL5vrXdRwlxyx2ghkASPMzjrCHiHBVGKEBk
 6VUTiJaZ3o7sRGkgZtrAI+w+8HO30gxE4E6fVzLNOk/EIqTwXXlYL4Ywo
 QYuJ5K1SnCACVMFcEpLghfpZ68WreqOYT09lFekE03siVvGbCdjelclIx
 T/RDsdUiUFPZr7X6aUiIrPYeivSRAK2NkiCKjDmZek9kHdbQriRS+qgaD
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j6QE1EPV
Subject: [Intel-wired-lan] [PATCH net-next v4 3/3] ice: Enable switching
 default tx scheduler topology
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce support for tx scheduler topology change, based on user
selection, from default 9-layer to 5-layer. In order for switch to be
successful there is a new NVM(version 3.20 or older) and DDP package(OS
Package 1.3.29 or older).

Enable 5-layer topology switch in init path of the driver. To accomplish
that upload of the DDP package needs to be delayed, until change in Tx
topology is finished. To trigger the Tx change user selection should be
changed in NVM using devlink. Then the platform should be rebooted.

Example way of switching NVM settings in devlink:

Show:
devlink dev param show pci/0000:4b:00.0
  name txbalancing type driver-specific
    values:
      cmode permanent value true

Set:
devlink dev param set pci/0000:4b:00.0 name txbalancing value true cmode
permanent

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 113 +++++++++++++++---
 3 files changed, 98 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8b65e2bfb160..167f9d5c345a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1535,6 +1535,8 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
 	case ice_aqc_opc_set_port_params:
 	case ice_aqc_opc_get_vlan_mode_parameters:
 	case ice_aqc_opc_set_vlan_mode_parameters:
+	case ice_aqc_opc_set_tx_topo:
+	case ice_aqc_opc_get_tx_topo:
 	case ice_aqc_opc_add_recipe:
 	case ice_aqc_opc_recipe_to_profile:
 	case ice_aqc_opc_get_recipe:
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 7c82f05621e3..02c7f3d2c027 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1952,7 +1952,8 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
 	/* acquire global lock to make sure that set topology issued
 	 * by one PF
 	 */
-	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
+	status = ice_acquire_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, ICE_RES_WRITE,
+				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT, "Failed to acquire global lock\n");
 		return status;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c1ac2f746714..1c975b034f6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4453,11 +4453,11 @@ static char *ice_get_opt_fw_name(struct ice_pf *pf)
 /**
  * ice_request_fw - Device initialization routine
  * @pf: pointer to the PF instance
+ * @firmware: double pointer to firmware struct
  */
-static void ice_request_fw(struct ice_pf *pf)
+static int ice_request_fw(struct ice_pf *pf, const struct firmware **firmware)
 {
 	char *opt_fw_filename = ice_get_opt_fw_name(pf);
-	const struct firmware *firmware = NULL;
 	struct device *dev = ice_pf_to_dev(pf);
 	int err = 0;
 
@@ -4466,29 +4466,98 @@ static void ice_request_fw(struct ice_pf *pf)
 	 * and warning messages for other errors.
 	 */
 	if (opt_fw_filename) {
-		err = firmware_request_nowarn(&firmware, opt_fw_filename, dev);
-		if (err) {
-			kfree(opt_fw_filename);
-			goto dflt_pkg_load;
-		}
-
-		/* request for firmware was successful. Download to device */
-		ice_load_pkg(firmware, pf);
+		err = firmware_request_nowarn(firmware, opt_fw_filename, dev);
 		kfree(opt_fw_filename);
-		release_firmware(firmware);
-		return;
+		if (!err)
+			return err;
 	}
 
-dflt_pkg_load:
-	err = request_firmware(&firmware, ICE_DDP_PKG_FILE, dev);
-	if (err) {
+	err = request_firmware(firmware, ICE_DDP_PKG_FILE, dev);
+	if (err)
 		dev_err(dev, "The DDP package file was not found or could not be read. Entering Safe Mode\n");
-		return;
+
+	return err;
+}
+
+/**
+ * ice_init_tx_topology - performs Tx topology initialization
+ * @hw: pointer to the hardware structure
+ * @firmware: pointer to firmware structure
+ */
+static int ice_init_tx_topology(struct ice_hw *hw,
+				const struct firmware *firmware)
+{
+	u8 num_tx_sched_layers = hw->num_tx_sched_layers;
+	struct ice_pf *pf = hw->back;
+	struct device *dev;
+	u8 *buf_copy;
+	int err;
+
+	dev = ice_pf_to_dev(pf);
+	/* ice_cfg_tx_topo buf argument is not a constant,
+	 * so we have to make a copy
+	 */
+	buf_copy = kmemdup(firmware->data, firmware->size, GFP_KERNEL);
+
+	err = ice_cfg_tx_topo(hw, buf_copy, firmware->size);
+	if (!err) {
+		if (hw->num_tx_sched_layers > num_tx_sched_layers)
+			dev_info(dev, "Transmit balancing feature disabled\n");
+		else
+			dev_info(dev, "Transmit balancing feature enabled\n");
+
+		/* if there was a change in topology ice_cfg_tx_topo triggered
+		 * a CORER and we need to re-init hw.
+		 */
+		ice_deinit_hw(hw);
+		err = ice_init_hw(hw);
+
+		/* in this case we're not allowing safe mode */
+		devm_kfree(ice_hw_to_dev(hw), buf_copy);
+
+		return err;
+
+	} else if (err == -EIO) {
+		dev_info(dev, "DDP package does not support transmit balancing feature - please update to the latest DDP package and try again\n");
+	}
+
+	kfree(buf_copy);
+
+	return 0;
+}
+
+/**
+ * ice_init_ddp_config - DDP related configuration
+ * @hw: pointer to the hardware structure
+ * @pf: pointer to pf structure
+ *
+ * This function loads DDP file from the disk, then initializes tx
+ * topology. At the end DDP package is loaded on the card.
+ */
+static int ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	const struct firmware *firmware = NULL;
+	int err;
+
+	err = ice_request_fw(pf, &firmware);
+	if (err)
+		/* we can still operate in safe mode if DDP package load fails */
+		return 0;
+
+	err = ice_init_tx_topology(hw, firmware);
+	if (err) {
+		dev_err(dev, "ice_init_hw during change of tx topology failed: %d\n",
+			err);
+		release_firmware(firmware);
+		return err;
 	}
 
-	/* request for firmware was successful. Download to device */
+	/* Download firmware to device */
 	ice_load_pkg(firmware, pf);
 	release_firmware(firmware);
+
+	return 0;
 }
 
 /**
@@ -4641,9 +4710,15 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	ice_init_feature_support(pf);
 
-	ice_request_fw(pf);
+	err = ice_init_ddp_config(hw, pf);
+
+	/* during topology change ice_init_hw may fail */
+	if (err) {
+		err = -EIO;
+		goto err_exit_unroll;
+	}
 
-	/* if ice_request_fw fails, ICE_FLAG_ADV_FEATURES bit won't be
+	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
 	 * set in pf->state, which will cause ice_is_safe_mode to return
 	 * true
 	 */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
