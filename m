Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E181A56A95
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C141A6105F;
	Fri,  7 Mar 2025 14:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z9S8q4aL5bwY; Fri,  7 Mar 2025 14:39:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2308B61059
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741358345;
	bh=U8XFdDACgb0E+28IC/cNzstscOSdAaiSGNgbZm9psCM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=25nEZh2S4kBStTsrtAqklklmRPSOLvp1bxJ296Gz+6hWT9EslUyoK44u3y9iQW7d1
	 kz/HwjH9NecH7eV9rJs4V5Dm0WVb5J8dDPVbYrh3QNHooxwv/wzcxRmXrH0FgspNTP
	 mFvtb4lXJtB/8rjqyC3r6QzilL8jVvXJvlP4GaGnbbocbz3bXxo0meYoPSwNNSoGbM
	 jkLpzVhF5WXYX9f5RmmO6wMdYL3fG+3ywCRn3HwhD3mThDSI3N1q4b7d9jwYIaxmKx
	 0A8YXMjSIm4P1dolI9Pm3bhdbCEdvasau1/yJQsviowGeDbFPERQ/l1YXCP/BrNFIU
	 d2kp2HEhF4xBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2308B61059;
	Fri,  7 Mar 2025 14:39:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 648341C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5470A413E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:39:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Av5IfQKdikFB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:39:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 40D954076C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40D954076C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40D954076C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:39:01 +0000 (UTC)
X-CSE-ConnectionGUID: eW4U05WGTnqhlQqmsb0kIQ==
X-CSE-MsgGUID: 1wUT+FpFSoG8ww7juhHHkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42263388"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42263388"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:39:02 -0800
X-CSE-ConnectionGUID: KB6+2n/+QBaD+edvX7gvjw==
X-CSE-MsgGUID: t5xFSZfCS2KFkUQNDbZa8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="142570886"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 07 Mar 2025 06:38:59 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Date: Fri,  7 Mar 2025 15:24:18 +0100
Message-Id: <20250307142419.314402-15-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
References: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741358342; x=1772894342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MrOp5/5hsovneYwDrWbvivcHZSNtV25ZPnodbs8ClvI=;
 b=Bv2B5gtehDgscPSy1Hook3WPROONcuIb3lNmsrk6E1emhah+Tt5gYQXm
 y0bgV+S7X9a9nmr33SQYqikE11XrAMOWEfwogPsA75Geyjae9Jlmk8ZwV
 /+YsGzxuzW4o4c5SQuEqTa3uueSkVNu8KD6nAqqo6zZqTtLQ4D2wgIg89
 xJIH3xLgG/x3Cu1ttVfMxF8bAGH8Jc0MytiVGGel7jCplQXZ7msvFkgfN
 HvIz+6sMZCiyNHrUnP+oTKyaLyekTpwg7HxaL4JElGF2N3kC81MmyDJe+
 JonuJ/3GKm7BkBzayd+9pF7uIOlttX5EiSEcGGggMecl9oIG8Rr0m78Su
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bv2B5gte
Subject: [Intel-wired-lan] [PATCH iwl-next v6 14/15] ixgbe: add E610
 implementation of FW recovery mode
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

Add E610 implementation of fw_recovery_mode MAC operation.

In case of E610 information about recovery mode is obtained
from FW_MODES field in IXGBE_GL_MNG_FWSM register (0x000B6134).

Introduce recovery specific probing flow and init only
vital features.

User should be able to perform NVM update using devlink
once recovery mode is detected in order to load a healthy img.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 17 ++++
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    | 15 +++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 88 +++++++++++++++++--
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  3 +
 4 files changed, 113 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 1d894dc9aa6c..d4a3943faa21 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1815,6 +1815,22 @@ void ixgbe_disable_rx_e610(struct ixgbe_hw *hw)
 	}
 }
 
+/**
+ * ixgbe_fw_recovery_mode_e610 - Check FW NVM recovery mode
+ * @hw: pointer to hardware structure
+ *
+ * Check FW NVM recovery mode by reading the value of
+ * the dedicated register.
+ *
+ * Return: true if FW is in recovery mode, otherwise false.
+ */
+static bool ixgbe_fw_recovery_mode_e610(struct ixgbe_hw *hw)
+{
+	u32 fwsm = IXGBE_READ_REG(hw, IXGBE_GL_MNG_FWSM);
+
+	return !!(fwsm & IXGBE_GL_MNG_FWSM_RECOVERY_M);
+}
+
 /**
  * ixgbe_init_phy_ops_e610 - PHY specific init
  * @hw: pointer to hardware structure
@@ -3880,6 +3896,7 @@ static const struct ixgbe_mac_operations mac_ops_e610 = {
 	.get_fw_ver                     = ixgbe_aci_get_fw_ver,
 	.get_media_type			= ixgbe_get_media_type_e610,
 	.setup_link			= ixgbe_setup_link_e610,
+	.fw_recovery_mode		= ixgbe_fw_recovery_mode_e610,
 	.get_link_capabilities		= ixgbe_get_link_capabilities_e610,
 	.get_bus_info			= ixgbe_get_bus_info_generic,
 	.acquire_swfw_sync		= ixgbe_acquire_swfw_sync_X540,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
index 052d5b3fb371..c74f397cebb7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
@@ -73,6 +73,8 @@ static int ixgbe_check_component_response(struct ixgbe_adapter *adapter,
 					  u8 response, u8 code,
 					  struct netlink_ext_ack *extack)
 {
+	struct ixgbe_hw *hw = &adapter->hw;
+
 	switch (response) {
 	case IXGBE_ACI_NVM_PASS_COMP_CAN_BE_UPDATED:
 		/* Firmware indicated this update is good to proceed. */
@@ -84,6 +86,11 @@ static int ixgbe_check_component_response(struct ixgbe_adapter *adapter,
 	case IXGBE_ACI_NVM_PASS_COMP_CAN_NOT_BE_UPDATED:
 		NL_SET_ERR_MSG_MOD(extack, "Firmware has rejected updating.");
 		break;
+	case IXGBE_ACI_NVM_PASS_COMP_PARTIAL_CHECK:
+		if (hw->mac.ops.fw_recovery_mode &&
+		    hw->mac.ops.fw_recovery_mode(hw))
+			return 0;
+		break;
 	}
 
 	switch (code) {
@@ -653,7 +660,13 @@ int ixgbe_flash_pldm_image(struct devlink *devlink,
 		return -EOPNOTSUPP;
 	}
 
-	if (!hw->dev_caps.common_cap.nvm_unified_update) {
+	/*
+	 * Cannot get caps in recovery mode, so lack of nvm_unified_update bit
+	 * cannot lead to error
+	 */
+	if (!hw->dev_caps.common_cap.nvm_unified_update &&
+	    (hw->mac.ops.fw_recovery_mode &&
+	     !hw->mac.ops.fw_recovery_mode(hw))) {
 		NL_SET_ERR_MSG_MOD(extack,
 				   "Current firmware does not support unified update");
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 492e6b194f61..0667e4e85f10 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8423,6 +8423,18 @@ static bool ixgbe_check_fw_error(struct ixgbe_adapter *adapter)
 	return false;
 }
 
+static void ixgbe_recovery_service_task(struct work_struct *work)
+{
+	struct ixgbe_adapter *adapter = container_of(work,
+						     struct ixgbe_adapter,
+						     service_task);
+
+	ixgbe_handle_fw_event(adapter);
+	ixgbe_service_event_complete(adapter);
+
+	mod_timer(&adapter->service_timer, jiffies + msecs_to_jiffies(100));
+}
+
 /**
  * ixgbe_service_task - manages and runs subtasks
  * @work: pointer to work_struct containing our data
@@ -11228,6 +11240,66 @@ static void ixgbe_set_fw_version(struct ixgbe_adapter *adapter)
 		 "0x%08x", nvm_ver.etk_id);
 }
 
+/**
+ * ixgbe_recovery_probe - Handle FW recovery mode during probe
+ * @adapter: the adapter private structure
+ *
+ * Perform limited driver initialization when FW error is detected.
+ *
+ * Return: 0 on successful probe for E610, -EIO if recovery mode is detected
+ * for non-E610 adapter, error status code on any other case.
+ */
+static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+	struct pci_dev *pdev = adapter->pdev;
+	struct ixgbe_hw *hw = &adapter->hw;
+	bool disable_dev;
+	int err = -EIO;
+
+	if (hw->mac.type != ixgbe_mac_e610)
+		goto clean_up_probe;
+
+	ixgbe_get_hw_control(adapter);
+	mutex_init(&hw->aci.lock);
+	err = ixgbe_get_flash_data(&adapter->hw);
+	if (err)
+		goto shutdown_aci;
+
+	timer_setup(&adapter->service_timer, ixgbe_service_timer, 0);
+	INIT_WORK(&adapter->service_task, ixgbe_recovery_service_task);
+	set_bit(__IXGBE_SERVICE_INITED, &adapter->state);
+	clear_bit(__IXGBE_SERVICE_SCHED, &adapter->state);
+
+	if (hw->mac.ops.get_bus_info)
+		hw->mac.ops.get_bus_info(hw);
+
+	pci_set_drvdata(pdev, adapter);
+	/*
+	 * We are creating devlink interface so NIC can be managed,
+	 * e.g. new NVM image loaded
+	 */
+	devl_lock(adapter->devlink);
+	ixgbe_devlink_register_port(adapter);
+	SET_NETDEV_DEVLINK_PORT(adapter->netdev,
+				&adapter->devlink_port);
+	devl_register(adapter->devlink);
+	devl_unlock(adapter->devlink);
+
+	return 0;
+shutdown_aci:
+	mutex_destroy(&adapter->hw.aci.lock);
+	ixgbe_release_hw_control(adapter);
+	devlink_free(adapter->devlink);
+clean_up_probe:
+	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
+	free_netdev(netdev);
+	pci_release_mem_regions(pdev);
+	if (disable_dev)
+		pci_disable_device(pdev);
+	return err;
+}
+
 /**
  * ixgbe_probe - Device Initialization Routine
  * @pdev: PCI device information struct
@@ -11366,6 +11438,13 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_sw_init;
 
+	/* Make sure the SWFW semaphore is in a valid state */
+	if (hw->mac.ops.init_swfw_sync)
+		hw->mac.ops.init_swfw_sync(hw);
+
+	if (ixgbe_check_fw_error(adapter))
+		return ixgbe_recovery_probe(adapter);
+
 	if (adapter->hw.mac.type == ixgbe_mac_e610) {
 		err = ixgbe_get_caps(&adapter->hw);
 		if (err)
@@ -11392,10 +11471,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		break;
 	}
 
-	/* Make sure the SWFW semaphore is in a valid state */
-	if (hw->mac.ops.init_swfw_sync)
-		hw->mac.ops.init_swfw_sync(hw);
-
 	/* Make it possible the adapter to be woken up via WOL */
 	switch (adapter->hw.mac.type) {
 	case ixgbe_mac_82599EB:
@@ -11548,11 +11623,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)
 		netdev->features |= NETIF_F_LRO;
 
-	if (ixgbe_check_fw_error(adapter)) {
-		err = -EIO;
-		goto err_sw_init;
-	}
-
 	/* make sure the EEPROM is good */
 	if (hw->eeprom.ops.validate_checksum(hw, NULL) < 0) {
 		e_dev_err("The EEPROM Checksum Is Not Valid\n");
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 4d591019dd07..1df5ac2e1fc5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -88,6 +88,9 @@
 #define GLNVM_GENS		0x000B6100 /* Reset Source: POR */
 #define GLNVM_GENS_SR_SIZE_M	GENMASK(7, 5)
 
+#define IXGBE_GL_MNG_FWSM		0x000B6134 /* Reset Source: POR */
+#define IXGBE_GL_MNG_FWSM_RECOVERY_M	BIT(1)
+
 /* Flash Access Register */
 #define IXGBE_GLNVM_FLA			0x000B6108 /* Reset Source: POR */
 #define IXGBE_GLNVM_FLA_LOCKED_S	6
-- 
2.31.1

