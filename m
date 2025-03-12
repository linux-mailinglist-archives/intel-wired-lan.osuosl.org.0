Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 584D1A5DD9A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:13:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A3D282B97;
	Wed, 12 Mar 2025 13:13:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tRC-6oLnZ4wA; Wed, 12 Mar 2025 13:13:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6095F81F9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741785216;
	bh=PBghrgzBo+afwHLSJ5ZcMem/imN3BPAkcWSsORSfqlc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QdEAgkVY2sHoAq40pu89VNMmj5fC6mzk1xYjAVjcTHN6Hc9rL9yWrDNctJMqcftUW
	 KzCRWTgFbgGgttmCTGqWjR7GgjqfuFpyVfrgGeGOdrIDvEWfJSz3ZfGflu2P3BcmPQ
	 8Bbjmpu5L/9daW03aGgc+bknzg3Pm1N6deaxIAjATHwzZCPk6DZsNFvwGOpxav006p
	 nRggpgk4iR6yPGbfMi+URSfO3gJErqpGEA8V8n5hAFgDhXEN2WS9b/xayBCe+X8gv9
	 flyeAkQDSGb2Ffyj+bdzNLnZD63TLulIrwWPH2NQ3kQtgGBfZ9yXmEZ0PxemZokWBb
	 +IEjHb62CUrIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6095F81F9F;
	Wed, 12 Mar 2025 13:13:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 70EBC1C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5567060898
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cNtqyYi_6D84 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:13:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 541A860885
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 541A860885
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 541A860885
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:31 +0000 (UTC)
X-CSE-ConnectionGUID: va8GKnEwS7GsdjLh0qWlkg==
X-CSE-MsgGUID: bg71WnuZTxCm40PM2nw7AA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53510753"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53510753"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:13:31 -0700
X-CSE-ConnectionGUID: ViR+C6hrR9WRgdwlfd650A==
X-CSE-MsgGUID: wR1qS0KMRgmyh3PrVTERcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="121542223"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 12 Mar 2025 06:13:29 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Date: Wed, 12 Mar 2025 13:58:42 +0100
Message-Id: <20250312125843.347191-15-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
References: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741785211; x=1773321211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SsDaLDaG/mp/J/KmH4PrfCM8wMgls9r5LIM4UUK805g=;
 b=YgckH9+qtPLFfgXrWdkgJMEGIxnCrJqFcTSW3eTH5WI2WxzdVYmjsMGs
 nWTQ0Wtzr0hTblGX+eYU6gbk/FEm1T+fjbV/6bzVWnKBHJG0chFeIKtoY
 z9gcfJHUpm3EzLEQFVBLzg/nuWghMNfXNEPqFPU4odjeUzPUhlCBVp56t
 6Fy5+eXP+oHJ4hnWPKm8qMbbxHV19XO2x6Rzh2gzzPzAI1tFaiWAvJktd
 6n9oYQt7z8yaDiOrwXGK9k6oG2RGGIyKifU6VA61n9pRdLM3M5Qp9WG+M
 /UKlIh39zqbkb7XNcZWnkA7lFapBM3S+P2rxSJkOWNKkKfZWkTt82qaxA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YgckH9+q
Subject: [Intel-wired-lan] [PATCH iwl-next v7 14/15] ixgbe: add E610
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
once FW error is detected in order to load a healthy img.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v7: unregister mdiobus before unregistering netdev
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 17 ++++
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    | 14 ++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 94 +++++++++++++++++--
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  3 +
 4 files changed, 117 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 5aa66534aa75..84b015e2dac2 100644
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
index 052d5b3fb371..39f106e39be6 100644
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
@@ -653,7 +660,12 @@ int ixgbe_flash_pldm_image(struct devlink *devlink,
 		return -EOPNOTSUPP;
 	}
 
-	if (!hw->dev_caps.common_cap.nvm_unified_update) {
+	/* Cannot get caps in recovery mode, so lack of nvm_unified_update bit
+	 * cannot lead to error
+	 */
+	if (!hw->dev_caps.common_cap.nvm_unified_update &&
+	    (hw->mac.ops.fw_recovery_mode &&
+	     !hw->mac.ops.fw_recovery_mode(hw))) {
 		NL_SET_ERR_MSG_MOD(extack,
 				   "Current firmware does not support unified update");
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index de74132f9001..5c9de1fafd28 100644
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
@@ -8442,8 +8454,13 @@ static void ixgbe_service_task(struct work_struct *work)
 		return;
 	}
 	if (ixgbe_check_fw_error(adapter)) {
-		if (!test_bit(__IXGBE_DOWN, &adapter->state))
+		if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
+			if (adapter->mii_bus) {
+				mdiobus_unregister(adapter->mii_bus);
+				adapter->mii_bus = NULL;
+			}
 			unregister_netdev(adapter->netdev);
+		}
 		ixgbe_service_event_complete(adapter);
 		return;
 	}
@@ -11228,6 +11245,65 @@ static void ixgbe_set_fw_version(struct ixgbe_adapter *adapter)
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
+	/* We are creating devlink interface so NIC can be managed,
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
@@ -11366,6 +11442,13 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
@@ -11392,10 +11475,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		break;
 	}
 
-	/* Make sure the SWFW semaphore is in a valid state */
-	if (hw->mac.ops.init_swfw_sync)
-		hw->mac.ops.init_swfw_sync(hw);
-
 	/* Make it possible the adapter to be woken up via WOL */
 	switch (adapter->hw.mac.type) {
 	case ixgbe_mac_82599EB:
@@ -11548,11 +11627,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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

