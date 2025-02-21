Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE89A3F3B5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 13:05:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A33C540CD9;
	Fri, 21 Feb 2025 12:05:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hGXWBcFK-6hh; Fri, 21 Feb 2025 12:05:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A2F540CA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740139548;
	bh=Akv1YpY5uugiyu6WJjFnyESYr0WilM0VnoYaZzx1L5o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cRurxD3a2zu0ZKp5d16R9KX16vTBYsD2DjIDdwyTmkvGR1xJxBNWG8xG+PKl1RfWG
	 WlSPPV04l67JeRxioV5JxHRVN8eHTsRH/b4XqzQfczr+RoAbFig9+0K3sfhVpyHV4D
	 oJlyIRTZW+aeoAOpl4pJIJMdSYKQkcZAiW8NoPqSyoNmQpOlJ0VeU/8oDOVaA1f2dS
	 dWnoN5vjQjtFiYlrtFzjjxWaQLkC7AXHB+4pACxjt+g0mkpFdhkpIbWbF+2DRbCbJ4
	 bsX7SoM5InwfAfQgvwX1ZO4aWs3t3xRWqUPAIEmYNrGNmZVnwpcubXMT+NVj1qraIw
	 9OP2Tf+Hv2Dxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A2F540CA5;
	Fri, 21 Feb 2025 12:05:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B0A8D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F57A82026
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9eMYjRZAE6lt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 12:05:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7082882145
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7082882145
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7082882145
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:44 +0000 (UTC)
X-CSE-ConnectionGUID: kBXqDFHzS2mFMLanT4nf0A==
X-CSE-MsgGUID: jeo7+39tRJ+AqRFCJLWAEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51599043"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="51599043"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 04:05:44 -0800
X-CSE-ConnectionGUID: Px2FsCo6QrmZWh1PtphBlA==
X-CSE-MsgGUID: deNJwFw9RPqrDqzTIcqRVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116260338"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 21 Feb 2025 04:05:42 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Date: Fri, 21 Feb 2025 12:51:15 +0100
Message-Id: <20250221115116.169158-15-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740139544; x=1771675544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xixukXm7ljB32mPhw/quuTckGgmI2fpv9SRa11Vs+5w=;
 b=eIZ3lToO8IeG5Mak0nntssRa80B51zhVpXUQ0IYU8Wb+XJLqH808GXmn
 6kLMti3BAtfD90VaEqWqAWiGscazHEFmYkiLSGaOvFgpeCK8RMZtD81kq
 hskMXqkSLUDGGvniS03NtdzKBSf8h9QZyxE7FtqGh+zrdOLFewkoOUDNu
 bGMNM5+x/X1vJ5Kquf42B6ENDAuE3/PoIGa0eY/sKLjt7uVLAUJT3AxEv
 PGMMPeerQ/L6b5uHlmYtR9PWjNkjV6Cf1vpy86ld9v+rHexWIxe+gIc4U
 RxIV16o4leHPue8oIto4TG8s5ZrcBMx/l9WEpEDKR2UDGE3O8L6UTzCNh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eIZ3lToO
Subject: [Intel-wired-lan] [PATCH iwl-next v5 14/15] ixgbe: add E610
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
index 21a94a43144c..e029257f1ccb 100644
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
@@ -3878,6 +3894,7 @@ static const struct ixgbe_mac_operations mac_ops_e610 = {
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

