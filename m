Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DB5A5DD96
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:13:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D37082140;
	Wed, 12 Mar 2025 13:13:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kkpBcrXwOasG; Wed, 12 Mar 2025 13:13:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A3C282AC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741785212;
	bh=0tiYERGDp93F3meYchb9NxbZj3GIU5K4/5LRoRRJTMU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7vuYZ1/Bgf3+Wm+vnZd2aAxK9tQn9Fyhqg+Osd+sSmFMrFcNgOZeQbz6qmyG8ptEc
	 CeGXQNoDFfJyURrkPAimDpw9yFn0smu3ev8W3vGagPYJpTO/ag8AfGlmNcQSGWKYOW
	 j7dYzp13HtWvaQys2WGbZnU8qoCSul3UCUBDfAD5K4sE+oUPmqsGFafAssCutej1Y+
	 ATmhBfJkJjFZXNrMqAYlBZhOQDfU4tzuCuHAvmbHntdozVqypXUnSLlY9f3M2LCzWj
	 nOdaDmxuH5VeMq4Nhfn9vIpZLNnSbP9D6fKuN8+EbAuN5k5QnQuGNzSM725daD8JLx
	 kMX1tFPpQ2PWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A3C282AC6;
	Wed, 12 Mar 2025 13:13:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2346D943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E3E860898
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TphJrNUANm4q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:13:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C6FFE60885
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6FFE60885
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C6FFE60885
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:26 +0000 (UTC)
X-CSE-ConnectionGUID: siOFgYClRreOApgEBLRv1A==
X-CSE-MsgGUID: buxi50tcTs+jOc19V7V2Bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53510743"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53510743"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:13:27 -0700
X-CSE-ConnectionGUID: Io/UCxO2SJev5TbGOSF4IA==
X-CSE-MsgGUID: SWFPyfcVRZaF6nplFb8LUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="121542209"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 12 Mar 2025 06:13:24 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Bharath R <bharath.r@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Date: Wed, 12 Mar 2025 13:58:40 +0100
Message-Id: <20250312125843.347191-13-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
References: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741785207; x=1773321207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3jmkXDAnJ613rSzUsyVV9HlnStUD5TQTxqjl14QkX80=;
 b=gAu/ZWqIQUErHCZ9joFoJFNw96dDjDg5iaYup0b18iB7aF2/BMdaIB7G
 nTnc8MIeWQcD5H3I20OtPEjC/3LcuO6q6e/Bg/DeFfI/p1coPMIDyCkIj
 kF2Ev+x2lzq8/TvFe+mWeZ1p9wkX+eKDlQ4xswt3osrjYgpA984HugeGP
 lxv3nxPVniK1AnlYKPF0OonbF7Xwrzt6n5kb61mfPK3QOFP30sVbuJLGA
 SYFT+jY9ENECmOXSYu7Hw6D+vHQPy0+1DcTGjXOHSCTBUasWKx/+9Jyy6
 WlhvcAbrEG+V214xRR25G7HalI3VVCHdToagQvUNKnWy7kvIHGG9M7XUs
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gAu/ZWqI
Subject: [Intel-wired-lan] [PATCH iwl-next v7 12/15] ixgbe: add support for
 devlink reload
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

The E610 adapters contain an embedded chip with firmware which can be
updated using devlink flash. The firmware which runs on this chip is
referred to as the Embedded Management Processor firmware (EMP
firmware).

Activating the new firmware image currently requires that the system be
rebooted. This is not ideal as rebooting the system can cause unwanted
downtime.

The EMP firmware itself can be reloaded by issuing a special update
to the device called an Embedded Management Processor reset (EMP
reset). This reset causes the device to reset and reload the EMP
firmware.

Implement support for devlink reload with the "fw_activate" flag. This
allows user space to request the firmware be activated immediately.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Tested-by: Bharath R <bharath.r@intel.com>
Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v6: fix doc
---
 Documentation/networking/devlink/ixgbe.rst    |  17 +++
 .../ethernet/intel/ixgbe/devlink/devlink.c    | 112 ++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   4 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  18 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  12 ++
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    |  37 +++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   5 +-
 8 files changed, 199 insertions(+), 7 deletions(-)

diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
index 41aedf4b8017..f7cfb9cedf6d 100644
--- a/Documentation/networking/devlink/ixgbe.rst
+++ b/Documentation/networking/devlink/ixgbe.rst
@@ -88,3 +88,20 @@ combined flash image that contains the ``fw.mgmt``, ``fw.undi``, and
        and device serial number. It is expected that this combination be used with an
        image customized for the specific device.
 
+Reload
+======
+
+The ``ixgbe`` driver supports activating new firmware after a flash update
+using ``DEVLINK_CMD_RELOAD`` with the ``DEVLINK_RELOAD_ACTION_FW_ACTIVATE``
+action.
+
+.. code:: shell
+
+    $ devlink dev reload pci/0000:01:00.0 reload action fw_activate
+
+The new firmware is activated by issuing a device specific Embedded
+Management Processor reset which requests the device to reset and reload the
+EMP firmware image.
+
+The driver does not currently support reloading the driver via
+``DEVLINK_RELOAD_ACTION_DRIVER_REINIT``.
diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index 2ffe59a88811..391d53503627 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -352,6 +352,9 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 	if (!ctx)
 		return -ENOMEM;
 
+	if (hw->mac.type == ixgbe_mac_e610)
+		ixgbe_refresh_fw_version(adapter);
+
 	ixgbe_info_get_dsn(adapter, ctx);
 	err = devlink_info_serial_number_put(req, ctx->buf);
 	if (err)
@@ -393,11 +396,120 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 	return err;
 }
 
+/**
+ * ixgbe_devlink_reload_empr_start - Start EMP reset to activate new firmware
+ * @devlink: pointer to the devlink instance to reload
+ * @netns_change: if true, the network namespace is changing
+ * @action: the action to perform. Must be DEVLINK_RELOAD_ACTION_FW_ACTIVATE
+ * @limit: limits on what reload should do, such as not resetting
+ * @extack: netlink extended ACK structure
+ *
+ * Allow user to activate new Embedded Management Processor firmware by
+ * issuing device specific EMP reset. Called in response to
+ * a DEVLINK_CMD_RELOAD with the DEVLINK_RELOAD_ACTION_FW_ACTIVATE.
+ *
+ * Note that teardown and rebuild of the driver state happens automatically as
+ * part of an interrupt and watchdog task. This is because all physical
+ * functions on the device must be able to reset when an EMP reset occurs from
+ * any source.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_devlink_reload_empr_start(struct devlink *devlink,
+					   bool netns_change,
+					   enum devlink_reload_action action,
+					   enum devlink_reload_limit limit,
+					   struct netlink_ext_ack *extack)
+{
+	struct ixgbe_adapter *adapter = devlink_priv(devlink);
+	struct ixgbe_hw *hw = &adapter->hw;
+	u8 pending;
+	int err;
+
+	if (hw->mac.type != ixgbe_mac_e610)
+		return -EOPNOTSUPP;
+
+	err = ixgbe_get_pending_updates(adapter, &pending, extack);
+	if (err)
+		return err;
+
+	/* Pending is a bitmask of which flash banks have a pending update,
+	 * including the main NVM bank, the Option ROM bank, and the netlist
+	 * bank. If any of these bits are set, then there is a pending update
+	 * waiting to be activated.
+	 */
+	if (!pending) {
+		NL_SET_ERR_MSG_MOD(extack, "No pending firmware update");
+		return -ECANCELED;
+	}
+
+	if (adapter->fw_emp_reset_disabled) {
+		NL_SET_ERR_MSG_MOD(extack,
+		"EMP reset is not available. To activate firmware, a reboot or power cycle is needed\n");
+		return -ECANCELED;
+	}
+
+	err = ixgbe_aci_nvm_update_empr(hw);
+	if (err)
+		NL_SET_ERR_MSG_MOD(extack,
+		"Failed to trigger EMP device reset to reload firmware");
+
+	return err;
+}
+
+/*Wait for 10 sec with 0.5 sec tic. EMPR takes no less than half of a sec */
+#define IXGBE_DEVLINK_RELOAD_TIMEOUT_SEC	20
+
+/**
+ * ixgbe_devlink_reload_empr_finish - finishes EMP reset
+ * @devlink: pointer to the devlink instance
+ * @action: the action to perform.
+ * @limit: limits on what reload should do
+ * @actions_performed: actions performed
+ * @extack: netlink extended ACK structure
+ *
+ * Wait for new NVM to be loaded during EMP reset.
+ *
+ * Return: -ETIME when timer is exceeded, 0 on success.
+ */
+static int ixgbe_devlink_reload_empr_finish(struct devlink *devlink,
+					    enum devlink_reload_action action,
+					    enum devlink_reload_limit limit,
+					    u32 *actions_performed,
+					    struct netlink_ext_ack *extack)
+{
+	struct ixgbe_adapter *adapter = devlink_priv(devlink);
+	struct ixgbe_hw *hw = &adapter->hw;
+	int i = 0;
+	u32 fwsm;
+
+	do {
+		/* Just right away after triggering EMP reset the FWSM register
+		 * may be not cleared yet, so begin the loop with the delay
+		 * in order to not check the not updated register.
+		 */
+		mdelay(500);
+
+		fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM(hw));
+
+		if (i++ >= IXGBE_DEVLINK_RELOAD_TIMEOUT_SEC)
+			return -ETIME;
+
+	} while (!(fwsm & IXGBE_FWSM_FW_VAL_BIT));
+
+	*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
+
+	return 0;
+}
+
 static const struct devlink_ops ixgbe_devlink_ops = {
 	.info_get = ixgbe_devlink_info_get,
 	.supported_flash_update_params =
 		DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
 	.flash_update = ixgbe_flash_pldm_image,
+	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
+	.reload_down = ixgbe_devlink_reload_empr_start,
+	.reload_up = ixgbe_devlink_reload_empr_finish,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 6cb8772b1ebf..83d4d7368cda 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -759,6 +759,8 @@ struct ixgbe_adapter {
 	u32 atr_sample_rate;
 	spinlock_t fdir_perfect_lock;
 
+	bool fw_emp_reset_disabled;
+
 #ifdef IXGBE_FCOE
 	struct ixgbe_fcoe fcoe;
 #endif /* IXGBE_FCOE */
@@ -960,6 +962,8 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter);
 int ixgbe_init_interrupt_scheme(struct ixgbe_adapter *adapter);
 bool ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
 			 u16 subdevice_id);
+void ixgbe_set_fw_version_e610(struct ixgbe_adapter *adapter);
+void ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter);
 #ifdef CONFIG_PCI_IOV
 void ixgbe_full_sync_mac_table(struct ixgbe_adapter *adapter);
 #endif
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 6a43b806ca25..e6b35792fdee 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -3305,6 +3305,24 @@ int ixgbe_get_flash_data(struct ixgbe_hw *hw)
 	return err;
 }
 
+/**
+ * ixgbe_aci_nvm_update_empr - update NVM using EMPR
+ * @hw: pointer to the HW struct
+ *
+ * Force EMP reset using ACI command (0x0709). This command allows SW to
+ * request an EMPR to activate new FW.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_nvm_update_empr(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_desc desc;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_update_empr);
+
+	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+}
+
 /* ixgbe_nvm_set_pkg_data - NVM set package data
  * @hw: pointer to the HW struct
  * @del_pkg_data_flag: If is set then the current pkg_data store by FW
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index c24a41fe16a7..b668ff0ae2e5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -81,6 +81,7 @@ int ixgbe_read_ee_aci_buffer_e610(struct ixgbe_hw *hw, u16 offset,
 int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val);
 int ixgbe_reset_hw_e610(struct ixgbe_hw *hw);
 int ixgbe_get_flash_data(struct ixgbe_hw *hw);
+int ixgbe_aci_nvm_update_empr(struct ixgbe_hw *hw);
 int ixgbe_nvm_set_pkg_data(struct ixgbe_hw *hw, bool del_pkg_data_flag,
 			   u8 *data, u16 length);
 int ixgbe_nvm_pass_component_tbl(struct ixgbe_hw *hw, u8 *data, u16 length,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 0b21e70918b6..70d91c7d7ac4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1104,11 +1104,23 @@ static int ixgbe_set_eeprom(struct net_device *netdev,
 	return ret_val;
 }
 
+void ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	ixgbe_get_flash_data(hw);
+	ixgbe_set_fw_version_e610(adapter);
+}
+
 static void ixgbe_get_drvinfo(struct net_device *netdev,
 			      struct ethtool_drvinfo *drvinfo)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
+	/* need to refresh info for e610 in case fw reloads in runtime */
+	if (adapter->hw.mac.type == ixgbe_mac_e610)
+		ixgbe_refresh_fw_version(adapter);
+
 	strscpy(drvinfo->driver, ixgbe_driver_name, sizeof(drvinfo->driver));
 
 	strscpy(drvinfo->fw_version, adapter->eeprom_id,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
index 1ff55dc8a6b7..052d5b3fb371 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
@@ -16,6 +16,7 @@ struct ixgbe_fwu_priv {
 
 	/* Track which NVM banks to activate at the end of the update */
 	u8 activate_flags;
+	bool emp_reset_available;
 };
 
 /**
@@ -352,6 +353,7 @@ static int ixgbe_erase_nvm_module(struct ixgbe_adapter *adapter, u16 module,
  * ixgbe_switch_flash_banks - Tell firmware to switch NVM banks
  * @adapter: Pointer to the PF data structure
  * @activate_flags: flags used for the activation command
+ * @emp_reset_available: on return, indicates if EMP reset is available
  * @extack: netlink extended ACK structure
  *
  * Notify firmware to activate the newly written flash banks, and wait for the
@@ -361,6 +363,7 @@ static int ixgbe_erase_nvm_module(struct ixgbe_adapter *adapter, u16 module,
  */
 static int ixgbe_switch_flash_banks(struct ixgbe_adapter *adapter,
 				    u8 activate_flags,
+				    bool *emp_reset_available,
 				    struct netlink_ext_ack *extack)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
@@ -368,11 +371,21 @@ static int ixgbe_switch_flash_banks(struct ixgbe_adapter *adapter,
 	int err;
 
 	err = ixgbe_nvm_write_activate(hw, activate_flags, &response_flags);
-	if (err)
+	if (err) {
 		NL_SET_ERR_MSG_MOD(extack,
 				   "Failed to switch active flash banks");
+		return err;
+	}
 
-	return err;
+	if (emp_reset_available) {
+		if (hw->dev_caps.common_cap.reset_restrict_support)
+			*emp_reset_available =
+				response_flags & IXGBE_ACI_NVM_EMPR_ENA;
+		else
+			*emp_reset_available = true;
+	}
+
+	return 0;
 }
 
 /**
@@ -451,9 +464,23 @@ static int ixgbe_finalize_update(struct pldmfw *context)
 						   context);
 	struct ixgbe_adapter *adapter = priv->adapter;
 	struct netlink_ext_ack *extack = priv->extack;
+	struct devlink *devlink = adapter->devlink;
+	int err;
+
+	/* Finally, notify firmware to activate the written NVM banks */
+	err = ixgbe_switch_flash_banks(adapter, priv->activate_flags,
+				       &priv->emp_reset_available, extack);
+	if (err)
+		return err;
+
+	adapter->fw_emp_reset_disabled = !priv->emp_reset_available;
 
-	return ixgbe_switch_flash_banks(adapter, priv->activate_flags,
-				       extack);
+	if (!adapter->fw_emp_reset_disabled)
+		devlink_flash_update_status_notify(devlink,
+			"Suggested is to activate new firmware by devlink reload, if it doesn't work then a power cycle is required",
+			NULL, 0, 0);
+
+	return 0;
 }
 
 static const struct pldmfw_ops ixgbe_fwu_ops_e610 = {
@@ -567,7 +594,7 @@ static int ixgbe_cancel_pending_update(struct ixgbe_adapter *adapter,
 	}
 
 	pending |= IXGBE_ACI_NVM_REVERT_LAST_ACTIV;
-	err = ixgbe_switch_flash_banks(adapter, pending, extack);
+	err = ixgbe_switch_flash_banks(adapter, pending, NULL, extack);
 
 	ixgbe_release_nvm(hw);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index d853d10ccccb..9892d3f41620 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8375,8 +8375,9 @@ static bool ixgbe_check_fw_error(struct ixgbe_adapter *adapter)
 	/* read fwsm.ext_err_ind register and log errors */
 	fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM(hw));
 
+	/* skip if E610's FW is reloading, warning in that case may be misleading */
 	if (fwsm & IXGBE_FWSM_EXT_ERR_IND_MASK ||
-	    !(fwsm & IXGBE_FWSM_FW_VAL_BIT))
+	    (!(fwsm & IXGBE_FWSM_FW_VAL_BIT) && !(hw->mac.type == ixgbe_mac_e610)))
 		e_dev_warn("Warning firmware error detected FWSM: 0x%08X\n",
 			   fwsm);
 
@@ -11143,7 +11144,7 @@ bool ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
  * format to display. The FW version is taken from the EEPROM/NVM.
  *
  */
-static void ixgbe_set_fw_version_e610(struct ixgbe_adapter *adapter)
+void ixgbe_set_fw_version_e610(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_orom_info *orom = &adapter->hw.flash.orom;
 	struct ixgbe_nvm_info *nvm = &adapter->hw.flash.nvm;
-- 
2.31.1

