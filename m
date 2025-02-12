Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F2BA3270D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 14:28:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EE1583FAD;
	Wed, 12 Feb 2025 13:28:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id USJTpS8QVJZ9; Wed, 12 Feb 2025 13:28:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46DFF84028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739366912;
	bh=VViSuehAE1WU2nW2ndwyFmgRNSu+aCX5FCcfvOMKLBA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G3yQGuhWaGGEIEZiIRLjVXQGCbkdNgrFeox6HGlCWGo7L8Ld1xjg9AMdm6JMUWsqS
	 ay46vvnvTwH0BapNJG1S2HS3Tokcy4bozXYGG7YB87GSVXD59DKyVHRfJVu7nrX/+R
	 wYg5jeCrONTBtTPHjgqUDO+dZrZZrxoOl/RnDdfdH7lSQbcGWxIgFcu3Q6CDeIUEeB
	 E6x3Wrgk24xgCTbiK8/NHQ2lTAfbmGZqxHxqF40lcRy3IypuLqfe5wz4ob8Ib/MlzC
	 ix6WqRH/0t8mmpnUgldGZdE4kCREggJotTcy3tSA5doE+/22k2DF58H7kQtsWtnR/3
	 RDNiWopOVIA9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46DFF84028;
	Wed, 12 Feb 2025 13:28:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FF63C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6439560A94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cw8rNDgsP8sD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 13:28:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 807416067F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 807416067F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 807416067F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:28 +0000 (UTC)
X-CSE-ConnectionGUID: kSvDMIO6Q0CMNfbVGtVCQQ==
X-CSE-MsgGUID: 58CzJe7gQ4KQw/LwNESLJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50665586"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50665586"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:28:28 -0800
X-CSE-ConnectionGUID: os87a03GQ5uUFUA+FxG/wQ==
X-CSE-MsgGUID: jCQ4Tg+zQj2tnIhNEfSdCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="117830718"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa004.jf.intel.com with ESMTP; 12 Feb 2025 05:28:25 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 horms@kernel.org, Andrii Staikov <andrii.staikov@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Wed, 12 Feb 2025 14:14:13 +0100
Message-Id: <20250212131413.91787-15-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366908; x=1770902908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iZLki8g6+7bBYWzWzs7M9/Qu2T1GZ1smH31Up/yjY64=;
 b=S6QwU2V86vZH5qrqZoV9KIrYMBuSoulOlKNWUI85IJirZiVklRs/ZDWJ
 QiwkLCw7U6sZC3n74vDRbpDTvwoL8/cUMmtUwF0HdnzTvIeO2UKTagfc8
 uv715UBoLqzPBJgrUAyGzH0meHZDes3XPGopHM5fyhqlpL/plr+MV2vSk
 /G5BYIKc0cm988wJ3/cvcOLYLQSb0cA7qaNtfq5VFIjoNrWQdVlynoCFy
 G8qftu17sNkbil+MOkxKfZ8Go1qJs/Ty2RcvtVyQzZj2m4ykL843FTuB6
 2Lk6uOJ+PtX9YSPtj9I3k8B6peEz3jYUvKUMJrBJRs0C4sAyYY+yiJvEW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S6QwU2V8
Subject: [Intel-wired-lan] [PATCH iwl-next v3 14/14] ixgbe: add support for
 FW rollback mode
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

From: Andrii Staikov <andrii.staikov@intel.com>

The driver should detect whether the device entered FW rollback
mode and then notify user with the dedicated message including
FW and NVM versions.

Even if the driver detected rollback mode, this should not result
in an probe error and the normal flow proceeds.

FW tries to rollback to “old” operational FW located in the
inactive NVM bank in cases when newly loaded FW exhibits faulty
behavior. If something goes wrong during boot the FW may switch
into rollback mode in an attempt to avoid recovery mode and stay
operational. After rollback is successful, the banks are swapped,
and the “rollback” bank becomes the active bank for the next reset.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 34 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 26 ++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  3 ++
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  1 +
 6 files changed, 67 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index 2c54c6fa55a2..8db0d94a1f42 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -488,7 +488,8 @@ static int ixgbe_devlink_reload_empr_finish(struct devlink *devlink,
 
 	*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
 
-	adapter->flags2 &= ~IXGBE_FLAG2_API_MISMATCH;
+	adapter->flags2 &= ~(IXGBE_FLAG2_API_MISMATCH |
+			     IXGBE_FLAG2_FW_ROLLBACK);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 59dceb96e76a..68f77d7b4cad 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -672,6 +672,7 @@ struct ixgbe_adapter {
 #define IXGBE_FLAG2_NO_MEDIA			BIT(21)
 #define IXGBE_FLAG2_MOD_POWER_UNSUPPORTED	BIT(22)
 #define IXGBE_FLAG2_API_MISMATCH		BIT(23)
+#define IXGBE_FLAG2_FW_ROLLBACK			BIT(24)
 
 	/* Tx fast path data */
 	int num_tx_queues;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index c263e4e08179..e46696baf4a4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1826,6 +1826,22 @@ static bool ixgbe_fw_recovery_mode_e610(struct ixgbe_hw *hw)
 	return !!(fwsm & IXGBE_GL_MNG_FWSM_RECOVERY_M);
 }
 
+/**
+ * ixgbe_fw_rollback_mode_e610 - Check FW NVM rollback mode
+ * @hw: pointer to hardware structure
+ *
+ * Check FW NVM rollback mode by reading the value of
+ * the dedicated register.
+ *
+ * Return: true if FW is in rollback mode, otherwise false.
+ */
+static bool ixgbe_fw_rollback_mode_e610(struct ixgbe_hw *hw)
+{
+	u32 fwsm = IXGBE_READ_REG(hw, IXGBE_GL_MNG_FWSM);
+
+	return !!(fwsm & IXGBE_GL_MNG_FWSM_ROLLBACK_M);
+}
+
 /**
  * ixgbe_init_phy_ops_e610 - PHY specific init
  * @hw: pointer to hardware structure
@@ -3158,6 +3174,21 @@ int ixgbe_get_inactive_nvm_ver(struct ixgbe_hw *hw, struct ixgbe_nvm_info *nvm)
 	return ixgbe_get_nvm_ver_info(hw, IXGBE_INACTIVE_FLASH_BANK, nvm);
 }
 
+/**
+ * ixgbe_get_active_nvm_ver - Read Option ROM version from the active bank
+ * @hw: pointer to the HW structure
+ * @nvm: storage for Option ROM version information
+ *
+ * Reads the NVM EETRACK ID, Map version, and security revision of the
+ * active NVM bank.
+ *
+ * Return: the exit code of the operation.
+ */
+static int ixgbe_get_active_nvm_ver(struct ixgbe_hw *hw, struct ixgbe_nvm_info *nvm)
+{
+	return ixgbe_get_nvm_ver_info(hw, IXGBE_ACTIVE_FLASH_BANK, nvm);
+}
+
 /**
  * ixgbe_get_netlist_info - Read the netlist version information
  * @hw: pointer to the HW struct
@@ -3889,6 +3920,9 @@ static const struct ixgbe_mac_operations mac_ops_e610 = {
 	.get_media_type			= ixgbe_get_media_type_e610,
 	.setup_link			= ixgbe_setup_link_e610,
 	.fw_recovery_mode		= ixgbe_fw_recovery_mode_e610,
+	.fw_rollback_mode		= ixgbe_fw_rollback_mode_e610,
+	.get_fw_ver			= ixgbe_aci_get_fw_ver,
+	.get_nvm_ver			= ixgbe_get_active_nvm_ver,
 	.get_link_capabilities		= ixgbe_get_link_capabilities_e610,
 	.get_bus_info			= ixgbe_get_bus_info_generic,
 	.acquire_swfw_sync		= ixgbe_acquire_swfw_sync_X540,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 265770ea32bd..dfb4c85f7a02 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8417,6 +8417,32 @@ static bool ixgbe_check_fw_error(struct ixgbe_adapter *adapter)
 			return true;
 	}
 
+	/* return here if FW rollback mode has been already detected */
+	if (adapter->flags2 & IXGBE_FLAG2_FW_ROLLBACK)
+		return false;
+
+	if (hw->mac.ops.fw_rollback_mode && hw->mac.ops.fw_rollback_mode(hw)) {
+		struct ixgbe_nvm_info *nvm_info = &adapter->hw.flash.nvm;
+		char ver_buff[64] = "";
+
+		if (hw->mac.ops.get_fw_ver && hw->mac.ops.get_fw_ver(hw))
+			goto no_version;
+
+		if (hw->mac.ops.get_nvm_ver &&
+		    hw->mac.ops.get_nvm_ver(hw, nvm_info))
+			goto no_version;
+
+		snprintf(ver_buff, sizeof(ver_buff),
+			 "Current version is NVM:%x.%x.%x, FW:%d.%d. ",
+			 nvm_info->major, nvm_info->minor, nvm_info->eetrack,
+			 hw->fw_maj_ver, hw->fw_maj_ver);
+no_version:
+		e_dev_warn("Firmware rollback mode detected. %sDevice may exhibit limited functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware rollback mode.",
+			   ver_buff);
+
+		adapter->flags2 |= IXGBE_FLAG2_FW_ROLLBACK;
+	}
+
 	return false;
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 5f814f023573..33406e1f0b9e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3524,6 +3524,9 @@ struct ixgbe_mac_operations {
 	int (*get_thermal_sensor_data)(struct ixgbe_hw *);
 	int (*init_thermal_sensor_thresh)(struct ixgbe_hw *hw);
 	bool (*fw_recovery_mode)(struct ixgbe_hw *hw);
+	bool (*fw_rollback_mode)(struct ixgbe_hw *hw);
+	int (*get_fw_ver)(struct ixgbe_hw *hw);
+	int (*get_nvm_ver)(struct ixgbe_hw *hw, struct ixgbe_nvm_info *nvm);
 	void (*disable_rx)(struct ixgbe_hw *hw);
 	void (*enable_rx)(struct ixgbe_hw *hw);
 	void (*set_source_address_pruning)(struct ixgbe_hw *, bool,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 1df5ac2e1fc5..c5cf153a19e9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -90,6 +90,7 @@
 
 #define IXGBE_GL_MNG_FWSM		0x000B6134 /* Reset Source: POR */
 #define IXGBE_GL_MNG_FWSM_RECOVERY_M	BIT(1)
+#define IXGBE_GL_MNG_FWSM_ROLLBACK_M    BIT(2)
 
 /* Flash Access Register */
 #define IXGBE_GLNVM_FLA			0x000B6108 /* Reset Source: POR */
-- 
2.31.1

