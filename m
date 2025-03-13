Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A78A5F97C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 16:18:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB90A83EE7;
	Thu, 13 Mar 2025 15:18:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RUx82QkDss97; Thu, 13 Mar 2025 15:18:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA71583AE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741879112;
	bh=7g13gednx5ntrGUBQCF/1IvUG02Q+bleaICPj08fKSI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EB+iHv6A5GXBO4iNzSbIUAKbql+TEqoDIqFErUC+d7qtrT7pZgHpGrdidbYuUW6R2
	 xiHXDI+pFHLgeztDWjPAP/FbNBYeIWCb6CGlhXm0cV3fMtOf2GEKkcWje6KXNMtYSv
	 ukDugZMw8mboR7qg1lx/sq/Ab5RAG06XOXss8c2MP5oUeM4BXKK8SwUNxDKBeH1VDV
	 sKT5/d9zEpqlYNp8tPkSPH6rTG7uergGKrDqMaqRdykXzyIN//DsWz3ijR1QP+4Pif
	 tFttDs7jyhwWPfg2XPGupV6DAyfDqUHXovDlEsBijo8o9yA29YSxe95TVyu6i+RF+M
	 OnJQkua1kG+MA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA71583AE6;
	Thu, 13 Mar 2025 15:18:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 34513E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 15:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CDC94174B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 15:18:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eiG1i4Zq_MPH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Mar 2025 15:18:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 09C2641756
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09C2641756
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09C2641756
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 15:18:27 +0000 (UTC)
X-CSE-ConnectionGUID: KK8FFkhlS06zBolmrE9PHQ==
X-CSE-MsgGUID: NwJKrgiUS0+bHuTOCaV/8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="43104877"
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="43104877"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 08:18:27 -0700
X-CSE-ConnectionGUID: j0EYCdgRR/e+3xzxAoFarg==
X-CSE-MsgGUID: wBQ9vGkRSlOh4h0702AcWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="121918115"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 13 Mar 2025 08:18:24 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, horms@kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Bharath R <bharath.r@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Date: Thu, 13 Mar 2025 16:03:42 +0100
Message-Id: <20250313150346.356612-12-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250313150346.356612-1-jedrzej.jagielski@intel.com>
References: <20250313150346.356612-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741879108; x=1773415108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a5Q7ezK0DdhhyqCR55cGWGD5T/iPf+tJIdeEYTyICTA=;
 b=D8W43R4Ueg9F9SuO243wKEPp9x2aXvyuo820E9aAAvnnpuvLQbxgpHGM
 0H+vRXM1WbYTsh5GYsLvMRJk3f3zxegGIMziQCJwbdoSJw/C7THL1g7KE
 ptrZe/MOZ+YgrETDaayZ9v09v8dZGceK314zOXrn8HarCMO6hP89MHaT6
 NCi5Is9O6WSIN5s3i27kCUOoKsHv2QQCpVPnNLLleWAj3Y8FFuNToaxGW
 TtjQpL5ubm9OpwtQVLvs3rmMsWyaWkuTYQ3uJdp3w2TT1cw6a3+exrXFJ
 l3OZ/o0P24Iaj4ZUoAjdV5/PTOyd+M3/JlxB13kUK7oHXDWkseBa84JrE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D8W43R4U
Subject: [Intel-wired-lan] [PATCH iwl-next v8 11/15] ixgbe: add device flash
 update via devlink
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

Use the pldmfw library to implement device flash update for
the Intel ixgbe networking device driver specifically for E610 devices.
This support uses the devlink flash update interface.

Using the pldmfw library, the provided firmware file will be scanned for
the three major components, "fw.undi" for the Option ROM, "fw.mgmt" for
the main NVM module containing the primary device firmware, and
"fw.netlist" containing the netlist module.

The flash is separated into two banks, the active bank containing the
running firmware, and the inactive bank which we use for update. Each
module is updated in a staged process. First, the inactive bank is
erased, preparing the device for update. Second, the contents of the
component are copied to the inactive portion of the flash. After all
components are updated, the driver signals the device to switch the
active bank during the next EMP reset.

With this implementation, basic flash update for the E610 hardware is
supported.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Bharath R <bharath.r@intel.com>
Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v5: fix caps->nvm_unified_update assignment
v8: fix doc
---
 Documentation/networking/devlink/ixgbe.rst    |  27 +
 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/ixgbe/Makefile     |   2 +-
 .../ethernet/intel/ixgbe/devlink/devlink.c    |   4 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 210 ++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  11 +
 .../ethernet/intel/ixgbe/ixgbe_fw_update.c    | 668 ++++++++++++++++++
 .../ethernet/intel/ixgbe/ixgbe_fw_update.h    |  12 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  64 ++
 9 files changed, 998 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
 create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h

diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
index a41073a62776..aa4eab95b3d5 100644
--- a/Documentation/networking/devlink/ixgbe.rst
+++ b/Documentation/networking/devlink/ixgbe.rst
@@ -64,3 +64,30 @@ The ``ixgbe`` driver reports the following versions
       - running
       - 0xee16ced7
       - The first 4 bytes of the hash of the netlist module contents.
+
+Flash Update
+============
+
+The ``ixgbe`` driver implements support for flash update using the
+``devlink-flash`` interface. It supports updating the device flash using a
+combined flash image that contains the ``fw.mgmt``, ``fw.undi``, and
+``fw.netlist`` components.
+
+.. list-table:: List of supported overwrite modes
+   :widths: 5 95
+
+   * - Bits
+     - Behavior
+   * - ``DEVLINK_FLASH_OVERWRITE_SETTINGS``
+     - Do not preserve settings stored in the flash components being
+       updated. This includes overwriting the port configuration that
+       determines the number of physical functions the device will
+       initialize with.
+   * - ``DEVLINK_FLASH_OVERWRITE_SETTINGS`` and ``DEVLINK_FLASH_OVERWRITE_IDENTIFIERS``
+     - Do not preserve either settings or identifiers. Overwrite everything
+       in the flash with the contents from the provided image, without
+       performing any preservation. This includes overwriting device
+       identifying fields such as the MAC address, Vital product Data (VPD) area,
+       and device serial number. It is expected that this combination be used with an
+       image customized for the specific device.
+
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 3366738c57c8..8fecb8a4e249 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -148,6 +148,7 @@ config IXGBE
 	depends on PTP_1588_CLOCK_OPTIONAL
 	select MDIO
 	select NET_DEVLINK
+	select PLDMFW
 	select PHYLIB
 	help
 	  This driver supports Intel(R) 10GbE PCI Express family of
diff --git a/drivers/net/ethernet/intel/ixgbe/Makefile b/drivers/net/ethernet/intel/ixgbe/Makefile
index 11f37140c0a3..ce447540d146 100644
--- a/drivers/net/ethernet/intel/ixgbe/Makefile
+++ b/drivers/net/ethernet/intel/ixgbe/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_IXGBE) += ixgbe.o
 ixgbe-y := ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
            ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
            ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_ptp.o \
-           ixgbe_xsk.o ixgbe_e610.o devlink/devlink.o
+           ixgbe_xsk.o ixgbe_e610.o devlink/devlink.o ixgbe_fw_update.o
 
 ixgbe-$(CONFIG_IXGBE_DCB) +=  ixgbe_dcb.o ixgbe_dcb_82598.o \
                               ixgbe_dcb_82599.o ixgbe_dcb_nl.o
diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index 6b45846f0ddd..2ffe59a88811 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -3,6 +3,7 @@
 
 #include "ixgbe.h"
 #include "devlink.h"
+#include "ixgbe_fw_update.h"
 
 struct ixgbe_info_ctx {
 	char buf[128];
@@ -394,6 +395,9 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 
 static const struct devlink_ops ixgbe_devlink_ops = {
 	.info_get = ixgbe_devlink_info_get,
+	.supported_flash_update_params =
+		DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
+	.flash_update = ixgbe_flash_pldm_image,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 397e22df9d28..6a43b806ca25 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -598,6 +598,11 @@ static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
 	case IXGBE_ACI_CAPS_PENDING_NET_VER:
 		caps->nvm_update_pending_netlist = true;
 		break;
+	case IXGBE_ACI_CAPS_NVM_MGMT:
+		caps->nvm_unified_update =
+			(number & IXGBE_NVM_MGMT_UNIFIED_UPD_SUPPORT) ?
+			true : false;
+		break;
 	case IXGBE_ACI_CAPS_MAX_MTU:
 		caps->max_mtu = number;
 		break;
@@ -2293,6 +2298,131 @@ int ixgbe_aci_read_nvm(struct ixgbe_hw *hw, u16 module_typeid, u32 offset,
 	return ixgbe_aci_send_cmd(hw, &desc, data, length);
 }
 
+/**
+ * ixgbe_aci_erase_nvm - erase NVM sector
+ * @hw: pointer to the HW struct
+ * @module_typeid: module pointer location in words from the NVM beginning
+ *
+ * Erase the NVM sector using the ACI command (0x0702).
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_erase_nvm(struct ixgbe_hw *hw, u16 module_typeid)
+{
+	struct ixgbe_aci_cmd_nvm *cmd;
+	struct ixgbe_aci_desc desc;
+	__le16 len;
+	int err;
+
+	/* Read a length value from SR, so module_typeid is equal to 0,
+	 * calculate offset where module size is placed from bytes to words
+	 * set last command and read from SR values to true.
+	 */
+	err = ixgbe_aci_read_nvm(hw, 0, 2 * module_typeid + 2, 2, &len, true,
+				 true);
+	if (err)
+		return err;
+
+	cmd = &desc.params.nvm;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_erase);
+
+	cmd->module_typeid = cpu_to_le16(module_typeid);
+	cmd->length = len;
+	cmd->offset_low = 0;
+	cmd->offset_high = 0;
+
+	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+}
+
+/**
+ * ixgbe_aci_update_nvm - update NVM
+ * @hw: pointer to the HW struct
+ * @module_typeid: module pointer location in words from the NVM beginning
+ * @offset: byte offset from the module beginning
+ * @length: length of the section to be written (in bytes from the offset)
+ * @data: command buffer (size [bytes] = length)
+ * @last_command: tells if this is the last command in a series
+ * @command_flags: command parameters
+ *
+ * Update the NVM using the ACI command (0x0703).
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_update_nvm(struct ixgbe_hw *hw, u16 module_typeid,
+			 u32 offset, u16 length, void *data,
+			 bool last_command, u8 command_flags)
+{
+	struct ixgbe_aci_cmd_nvm *cmd;
+	struct ixgbe_aci_desc desc;
+
+	cmd = &desc.params.nvm;
+
+	/* In offset the highest byte must be zeroed. */
+	if (offset & 0xFF000000)
+		return -EINVAL;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_write);
+
+	cmd->cmd_flags |= command_flags;
+
+	/* If this is the last command in a series, set the proper flag. */
+	if (last_command)
+		cmd->cmd_flags |= IXGBE_ACI_NVM_LAST_CMD;
+	cmd->module_typeid = cpu_to_le16(module_typeid);
+	cmd->offset_low = cpu_to_le16(offset & 0xFFFF);
+	cmd->offset_high = FIELD_GET(IXGBE_ACI_NVM_OFFSET_HI_U_MASK, offset);
+	cmd->length = cpu_to_le16(length);
+
+	desc.flags |= cpu_to_le16(IXGBE_ACI_FLAG_RD);
+
+	return ixgbe_aci_send_cmd(hw, &desc, data, length);
+}
+
+/**
+ * ixgbe_nvm_write_activate - NVM activate write
+ * @hw: pointer to the HW struct
+ * @cmd_flags: flags for write activate command
+ * @response_flags: response indicators from firmware
+ *
+ * Update the control word with the required banks' validity bits
+ * and dumps the Shadow RAM to flash using ACI command (0x0707).
+ *
+ * cmd_flags controls which banks to activate, the preservation level to use
+ * when activating the NVM bank, and whether an EMP reset is required for
+ * activation.
+ *
+ * Note that the 16bit cmd_flags value is split between two separate 1 byte
+ * flag values in the descriptor.
+ *
+ * On successful return of the firmware command, the response_flags variable
+ * is updated with the flags reported by firmware indicating certain status,
+ * such as whether EMP reset is enabled.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_nvm_write_activate(struct ixgbe_hw *hw, u16 cmd_flags,
+			     u8 *response_flags)
+{
+	struct ixgbe_aci_cmd_nvm *cmd;
+	struct ixgbe_aci_desc desc;
+	s32 err;
+
+	cmd = &desc.params.nvm;
+	ixgbe_fill_dflt_direct_cmd_desc(&desc,
+					ixgbe_aci_opc_nvm_write_activate);
+
+	cmd->cmd_flags = (u8)(cmd_flags & 0xFF);
+	cmd->offset_high = (u8)FIELD_GET(IXGBE_ACI_NVM_OFFSET_HI_A_MASK,
+					 cmd_flags);
+
+	err = ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+	if (!err && response_flags)
+		*response_flags = cmd->cmd_flags;
+
+	return err;
+}
+
 /**
  * ixgbe_nvm_validate_checksum - validate checksum
  * @hw: pointer to the HW struct
@@ -3175,6 +3305,86 @@ int ixgbe_get_flash_data(struct ixgbe_hw *hw)
 	return err;
 }
 
+/* ixgbe_nvm_set_pkg_data - NVM set package data
+ * @hw: pointer to the HW struct
+ * @del_pkg_data_flag: If is set then the current pkg_data store by FW
+ *		       is deleted.
+ *		       If bit is set to 1, then buffer should be size 0.
+ * @data: pointer to buffer
+ * @length: length of the buffer
+ *
+ * Set package data using ACI command (0x070A).
+ * This command is equivalent to the reception of
+ * a PLDM FW Update GetPackageData cmd. This command should be sent
+ * as part of the NVM update as the first cmd in the flow.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_nvm_set_pkg_data(struct ixgbe_hw *hw, bool del_pkg_data_flag,
+			   u8 *data, u16 length)
+{
+	struct ixgbe_aci_cmd_nvm_pkg_data *cmd;
+	struct ixgbe_aci_desc desc;
+
+	if (length != 0 && !data)
+		return -EINVAL;
+
+	cmd = &desc.params.pkg_data;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_nvm_pkg_data);
+	desc.flags |= cpu_to_le16(IXGBE_ACI_FLAG_RD);
+
+	if (del_pkg_data_flag)
+		cmd->cmd_flags |= IXGBE_ACI_NVM_PKG_DELETE;
+
+	return ixgbe_aci_send_cmd(hw, &desc, data, length);
+}
+
+/* ixgbe_nvm_pass_component_tbl - NVM pass component table
+ * @hw: pointer to the HW struct
+ * @data: pointer to buffer
+ * @length: length of the buffer
+ * @transfer_flag: parameter for determining stage of the update
+ * @comp_response: a pointer to the response from the 0x070B ACI.
+ * @comp_response_code: a pointer to the response code from the 0x070B ACI.
+ *
+ * Pass component table using ACI command (0x070B). This command is equivalent
+ * to the reception of a PLDM FW Update PassComponentTable cmd.
+ * This command should be sent once per component. It can be only sent after
+ * Set Package Data cmd and before actual update. FW will assume these
+ * commands are going to be sent until the TransferFlag is set to End or
+ * StartAndEnd.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_nvm_pass_component_tbl(struct ixgbe_hw *hw, u8 *data, u16 length,
+				 u8 transfer_flag, u8 *comp_response,
+				 u8 *comp_response_code)
+{
+	struct ixgbe_aci_cmd_nvm_pass_comp_tbl *cmd;
+	struct ixgbe_aci_desc desc;
+	int err;
+
+	if (!data || !comp_response || !comp_response_code)
+		return -EINVAL;
+
+	cmd = &desc.params.pass_comp_tbl;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc,
+					ixgbe_aci_opc_nvm_pass_component_tbl);
+	desc.flags |= cpu_to_le16(IXGBE_ACI_FLAG_RD);
+
+	cmd->transfer_flag = transfer_flag;
+	err = ixgbe_aci_send_cmd(hw, &desc, data, length);
+
+	if (!err) {
+		*comp_response = cmd->component_response;
+		*comp_response_code = cmd->component_response_code;
+	}
+
+	return err;
+}
+
 /**
  * ixgbe_read_sr_word_aci - Reads Shadow RAM via ACI
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 07c888d554d5..c24a41fe16a7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -81,5 +81,16 @@ int ixgbe_read_ee_aci_buffer_e610(struct ixgbe_hw *hw, u16 offset,
 int ixgbe_validate_eeprom_checksum_e610(struct ixgbe_hw *hw, u16 *checksum_val);
 int ixgbe_reset_hw_e610(struct ixgbe_hw *hw);
 int ixgbe_get_flash_data(struct ixgbe_hw *hw);
+int ixgbe_nvm_set_pkg_data(struct ixgbe_hw *hw, bool del_pkg_data_flag,
+			   u8 *data, u16 length);
+int ixgbe_nvm_pass_component_tbl(struct ixgbe_hw *hw, u8 *data, u16 length,
+				 u8 transfer_flag, u8 *comp_response,
+				 u8 *comp_response_code);
+int ixgbe_aci_erase_nvm(struct ixgbe_hw *hw, u16 module_typeid);
+int ixgbe_aci_update_nvm(struct ixgbe_hw *hw, u16 module_typeid,
+			 u32 offset, u16 length, void *data,
+			 bool last_command, u8 command_flags);
+int ixgbe_nvm_write_activate(struct ixgbe_hw *hw, u16 cmd_flags,
+			     u8 *response_flags);
 
 #endif /* _IXGBE_E610_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
new file mode 100644
index 000000000000..1ff55dc8a6b7
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.c
@@ -0,0 +1,668 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright(c) 2025 Intel Corporation. */
+
+#include <linux/crc32.h>
+#include <linux/pldmfw.h>
+#include <linux/uuid.h>
+
+#include "ixgbe.h"
+#include "ixgbe_fw_update.h"
+
+struct ixgbe_fwu_priv {
+	struct pldmfw context;
+
+	struct ixgbe_adapter *adapter;
+	struct netlink_ext_ack *extack;
+
+	/* Track which NVM banks to activate at the end of the update */
+	u8 activate_flags;
+};
+
+/**
+ * ixgbe_send_package_data - Send record package data to firmware
+ * @context: PLDM fw update structure
+ * @data: pointer to the package data
+ * @length: length of the package data
+ *
+ * Send a copy of the package data associated with the PLDM record matching
+ * this device to the firmware.
+ *
+ * Note that this function sends an AdminQ command that will fail unless the
+ * NVM resource has been acquired.
+ *
+ * Return: zero on success, or a negative error code on failure.
+ */
+static int ixgbe_send_package_data(struct pldmfw *context,
+				   const u8 *data, u16 length)
+{
+	struct ixgbe_fwu_priv *priv = container_of(context,
+						   struct ixgbe_fwu_priv,
+						   context);
+	struct ixgbe_adapter *adapter = priv->adapter;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u8 *package_data;
+	int err;
+
+	package_data = kmemdup(data, length, GFP_KERNEL);
+	if (!package_data)
+		return -ENOMEM;
+
+	err = ixgbe_nvm_set_pkg_data(hw, false, package_data, length);
+
+	kfree(package_data);
+
+	return err;
+}
+
+/**
+ * ixgbe_check_component_response - Report firmware response to a component
+ * @adapter: device private data structure
+ * @response: indicates whether this component can be updated
+ * @code: code indicating reason for response
+ * @extack: netlink extended ACK structure
+ *
+ * Check whether firmware indicates if this component can be updated. Report
+ * a suitable error message over the netlink extended ACK if the component
+ * cannot be updated.
+ *
+ * Return: 0 if the component can be updated, or -ECANCELED if the
+ * firmware indicates the component cannot be updated.
+ */
+static int ixgbe_check_component_response(struct ixgbe_adapter *adapter,
+					  u8 response, u8 code,
+					  struct netlink_ext_ack *extack)
+{
+	switch (response) {
+	case IXGBE_ACI_NVM_PASS_COMP_CAN_BE_UPDATED:
+		/* Firmware indicated this update is good to proceed. */
+		return 0;
+	case IXGBE_ACI_NVM_PASS_COMP_CAN_MAY_BE_UPDATEABLE:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Firmware recommends not updating, as it may result in a downgrade. Continuing anyways");
+		return 0;
+	case IXGBE_ACI_NVM_PASS_COMP_CAN_NOT_BE_UPDATED:
+		NL_SET_ERR_MSG_MOD(extack, "Firmware has rejected updating.");
+		break;
+	}
+
+	switch (code) {
+	case IXGBE_ACI_NVM_PASS_COMP_STAMP_IDENTICAL_CODE:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Component comparison stamp is identical to running image");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_STAMP_LOWER:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Component comparison stamp is lower than running image");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_INVALID_STAMP_CODE:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Component comparison stamp is invalid");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_CONFLICT_CODE:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Component table conflict occurred");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_PRE_REQ_NOT_MET_CODE:
+		NL_SET_ERR_MSG_MOD(extack, "Component pre-requisites not met");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_NOT_SUPPORTED_CODE:
+		NL_SET_ERR_MSG_MOD(extack, "Component not supported");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_CANNOT_DOWNGRADE_CODE:
+		NL_SET_ERR_MSG_MOD(extack, "Component cannot be downgraded");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_INCOMPLETE_IMAGE_CODE:
+		NL_SET_ERR_MSG_MOD(extack, "Incomplete component image");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_VER_STR_IDENTICAL_CODE:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Component version is identical to running image");
+		break;
+	case IXGBE_ACI_NVM_PASS_COMP_VER_STR_LOWER_CODE:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Component version is lower than the running image");
+		break;
+	default:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Received unexpected response code from firmware");
+		break;
+	}
+
+	return -ECANCELED;
+}
+
+/**
+ * ixgbe_send_component_table - Send PLDM component table to firmware
+ * @context: PLDM fw update structure
+ * @component: the component to process
+ * @transfer_flag: relative transfer order of this component
+ *
+ * Read relevant data from the component and forward it to the device
+ * firmware. Check the response to determine if the firmware indicates that
+ * the update can proceed.
+ *
+ * This function sends ACI commands related to the NVM, and assumes that
+ * the NVM resource has been acquired.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int ixgbe_send_component_table(struct pldmfw *context,
+				      struct pldmfw_component *component,
+				      u8 transfer_flag)
+{
+	struct ixgbe_fwu_priv *priv = container_of(context,
+						   struct ixgbe_fwu_priv,
+						   context);
+	struct ixgbe_adapter *adapter = priv->adapter;
+	struct netlink_ext_ack *extack = priv->extack;
+	struct ixgbe_aci_cmd_nvm_comp_tbl *comp_tbl;
+	u8 comp_response, comp_response_code;
+	struct ixgbe_hw *hw = &adapter->hw;
+	size_t length;
+	int err;
+
+	switch (component->identifier) {
+	case NVM_COMP_ID_OROM:
+	case NVM_COMP_ID_NVM:
+	case NVM_COMP_ID_NETLIST:
+		break;
+	default:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Unable to update due to unknown firmware component");
+		return -EOPNOTSUPP;
+	}
+
+	length = struct_size(comp_tbl, cvs, component->version_len);
+	comp_tbl = kzalloc(length, GFP_KERNEL);
+	if (!comp_tbl)
+		return -ENOMEM;
+
+	comp_tbl->comp_class = cpu_to_le16(component->classification);
+	comp_tbl->comp_id = cpu_to_le16(component->identifier);
+	comp_tbl->comp_class_idx = FWU_COMP_CLASS_IDX_NOT_USE;
+	comp_tbl->comp_cmp_stamp = cpu_to_le32(component->comparison_stamp);
+	comp_tbl->cvs_type = component->version_type;
+	comp_tbl->cvs_len = component->version_len;
+
+	memcpy(comp_tbl->cvs, component->version_string,
+	       component->version_len);
+
+	err = ixgbe_nvm_pass_component_tbl(hw, (u8 *)comp_tbl, length,
+					   transfer_flag, &comp_response,
+					   &comp_response_code);
+
+	kfree(comp_tbl);
+
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to transfer component table to firmware");
+		return -EIO;
+	}
+
+	return ixgbe_check_component_response(adapter,
+					      comp_response,
+					      comp_response_code, extack);
+}
+
+/**
+ * ixgbe_write_one_nvm_block - Write an NVM block and await completion response
+ * @adapter: the PF data structure
+ * @module: the module to write to
+ * @offset: offset in bytes
+ * @block_size: size of the block to write, up to 4k
+ * @block: pointer to block of data to write
+ * @last_cmd: whether this is the last command
+ * @extack: netlink extended ACK structure
+ *
+ * Write a block of data to a flash module, and await for the completion
+ * response message from firmware.
+ *
+ * Note this function assumes the caller has acquired the NVM resource.
+ *
+ * On successful return, reset level indicates the device reset required to
+ * complete the update.
+ *
+ *   0 - IXGBE_ACI_NVM_POR_FLAG - A full power on is required
+ *   1 - IXGBE_ACI_NVM_PERST_FLAG - A cold PCIe reset is required
+ *   2 - IXGBE_ACI_NVM_EMPR_FLAG - An EMP reset is required
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int ixgbe_write_one_nvm_block(struct ixgbe_adapter *adapter,
+				     u16 module, u32 offset,
+				     u16 block_size, u8 *block, bool last_cmd,
+				     struct netlink_ext_ack *extack)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	return ixgbe_aci_update_nvm(hw, module, offset, block_size, block,
+				    last_cmd, 0);
+}
+
+/**
+ * ixgbe_write_nvm_module - Write data to an NVM module
+ * @adapter: the PF driver structure
+ * @module: the module id to program
+ * @component: the name of the component being updated
+ * @image: buffer of image data to write to the NVM
+ * @length: length of the buffer
+ * @extack: netlink extended ACK structure
+ *
+ * Loop over the data for a given NVM module and program it in 4 Kb
+ * blocks. Notify devlink core of progress after each block is programmed.
+ * Loops over a block of data and programs the NVM in 4k block chunks.
+ *
+ * Note this function assumes the caller has acquired the NVM resource.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int ixgbe_write_nvm_module(struct ixgbe_adapter *adapter, u16 module,
+				  const char *component, const u8 *image,
+				  u32 length,
+				  struct netlink_ext_ack *extack)
+{
+	struct devlink *devlink = adapter->devlink;
+	u32 offset = 0;
+	bool last_cmd;
+	u8 *block;
+	int err;
+
+	devlink_flash_update_status_notify(devlink, "Flashing",
+					   component, 0, length);
+
+	block = kzalloc(IXGBE_ACI_MAX_BUFFER_SIZE, GFP_KERNEL);
+	if (!block)
+		return -ENOMEM;
+
+	do {
+		u32 block_size;
+
+		block_size = min_t(u32, IXGBE_ACI_MAX_BUFFER_SIZE,
+				   length - offset);
+		last_cmd = !(offset + block_size < length);
+
+		memcpy(block, image + offset, block_size);
+
+		err = ixgbe_write_one_nvm_block(adapter, module, offset,
+						block_size, block, last_cmd,
+						extack);
+		if (err)
+			break;
+
+		offset += block_size;
+
+		devlink_flash_update_status_notify(devlink, "Flashing",
+						   component, offset, length);
+	} while (!last_cmd);
+
+	if (err)
+		devlink_flash_update_status_notify(devlink, "Flashing failed",
+						   component, length, length);
+	else
+		devlink_flash_update_status_notify(devlink, "Flashing done",
+						   component, length, length);
+
+	kfree(block);
+
+	return err;
+}
+
+/* Length in seconds to wait before timing out when erasing a flash module.
+ * Yes, erasing really can take minutes to complete.
+ */
+#define IXGBE_FW_ERASE_TIMEOUT 300
+
+/**
+ * ixgbe_erase_nvm_module - Erase an NVM module and await firmware completion
+ * @adapter: the PF data structure
+ * @module: the module to erase
+ * @component: name of the component being updated
+ * @extack: netlink extended ACK structure
+ *
+ * Erase the inactive NVM bank associated with this module, and await for
+ * a completion response message from firmware.
+ *
+ * Note this function assumes the caller has acquired the NVM resource.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int ixgbe_erase_nvm_module(struct ixgbe_adapter *adapter, u16 module,
+				  const char *component,
+				  struct netlink_ext_ack *extack)
+{
+	struct devlink *devlink = adapter->devlink;
+	struct ixgbe_hw *hw = &adapter->hw;
+	int err;
+
+	devlink_flash_update_timeout_notify(devlink, "Erasing", component,
+					    IXGBE_FW_ERASE_TIMEOUT);
+
+	err = ixgbe_aci_erase_nvm(hw, module);
+	if (err)
+		devlink_flash_update_status_notify(devlink, "Erasing failed",
+						   component, 0, 0);
+	else
+		devlink_flash_update_status_notify(devlink, "Erasing done",
+						   component, 0, 0);
+
+	return err;
+}
+
+/**
+ * ixgbe_switch_flash_banks - Tell firmware to switch NVM banks
+ * @adapter: Pointer to the PF data structure
+ * @activate_flags: flags used for the activation command
+ * @extack: netlink extended ACK structure
+ *
+ * Notify firmware to activate the newly written flash banks, and wait for the
+ * firmware response.
+ *
+ * Return: 0 on success or an error code on failure.
+ */
+static int ixgbe_switch_flash_banks(struct ixgbe_adapter *adapter,
+				    u8 activate_flags,
+				    struct netlink_ext_ack *extack)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+	u8 response_flags;
+	int err;
+
+	err = ixgbe_nvm_write_activate(hw, activate_flags, &response_flags);
+	if (err)
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to switch active flash banks");
+
+	return err;
+}
+
+/**
+ * ixgbe_flash_component - Flash a component of the NVM
+ * @context: PLDM fw update structure
+ * @component: the component table to program
+ *
+ * Program the flash contents for a given component. First, determine the
+ * module id. Then, erase the secondary bank for this module. Finally, write
+ * the contents of the component to the NVM.
+ *
+ * Note this function assumes the caller has acquired the NVM resource.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int ixgbe_flash_component(struct pldmfw *context,
+				 struct pldmfw_component *component)
+{
+	struct ixgbe_fwu_priv *priv = container_of(context,
+						   struct ixgbe_fwu_priv,
+						   context);
+	struct netlink_ext_ack *extack = priv->extack;
+	struct ixgbe_adapter *adapter = priv->adapter;
+	const char *name;
+	u16 module;
+	int err;
+	u8 flag;
+
+	switch (component->identifier) {
+	case NVM_COMP_ID_OROM:
+		module = IXGBE_E610_SR_1ST_OROM_BANK_PTR;
+		flag = IXGBE_ACI_NVM_ACTIV_SEL_OROM;
+		name = "fw.undi";
+		break;
+	case NVM_COMP_ID_NVM:
+		module = IXGBE_E610_SR_1ST_NVM_BANK_PTR;
+		flag = IXGBE_ACI_NVM_ACTIV_SEL_NVM;
+		name = "fw.mgmt";
+		break;
+	case NVM_COMP_ID_NETLIST:
+		module = IXGBE_E610_SR_NETLIST_BANK_PTR;
+		flag = IXGBE_ACI_NVM_ACTIV_SEL_NETLIST;
+		name = "fw.netlist";
+		break;
+
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	/* Mark this component for activating at the end. */
+	priv->activate_flags |= flag;
+
+	err = ixgbe_erase_nvm_module(adapter, module, name, extack);
+	if (err)
+		return err;
+
+	return ixgbe_write_nvm_module(adapter, module, name,
+				      component->component_data,
+				      component->component_size, extack);
+}
+
+/**
+ * ixgbe_finalize_update - Perform last steps to complete device update
+ * @context: PLDM fw update structure
+ *
+ * Called as the last step of the update process. Complete the update by
+ * telling the firmware to switch active banks, and perform a reset of
+ * configured.
+ *
+ * Return: 0 on success, or an error code on failure.
+ */
+static int ixgbe_finalize_update(struct pldmfw *context)
+{
+	struct ixgbe_fwu_priv *priv = container_of(context,
+						   struct ixgbe_fwu_priv,
+						   context);
+	struct ixgbe_adapter *adapter = priv->adapter;
+	struct netlink_ext_ack *extack = priv->extack;
+
+	return ixgbe_switch_flash_banks(adapter, priv->activate_flags,
+				       extack);
+}
+
+static const struct pldmfw_ops ixgbe_fwu_ops_e610 = {
+	.match_record = &pldmfw_op_pci_match_record,
+	.send_package_data = &ixgbe_send_package_data,
+	.send_component_table = &ixgbe_send_component_table,
+	.flash_component = &ixgbe_flash_component,
+	.finalize_update = &ixgbe_finalize_update,
+};
+
+/**
+ * ixgbe_get_pending_updates - Check if the component has a pending update
+ * @adapter: the PF driver structure
+ * @pending: on return, bitmap of updates pending
+ * @extack: Netlink extended ACK
+ *
+ * Check if the device has any pending updates on any flash components.
+ *
+ * Return: 0 on success, or a negative error code on failure. Update
+ * pending with the bitmap of pending updates.
+ */
+int ixgbe_get_pending_updates(struct ixgbe_adapter *adapter, u8 *pending,
+			      struct netlink_ext_ack *extack)
+{
+	struct ixgbe_hw_dev_caps *dev_caps;
+	struct ixgbe_hw *hw = &adapter->hw;
+	int err;
+
+	dev_caps = kzalloc(sizeof(*dev_caps), GFP_KERNEL);
+	if (!dev_caps)
+		return -ENOMEM;
+
+	err = ixgbe_discover_dev_caps(hw, dev_caps);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Unable to read device capabilities");
+		kfree(dev_caps);
+		return -EIO;
+	}
+
+	*pending = 0;
+
+	if (dev_caps->common_cap.nvm_update_pending_nvm)
+		*pending |= IXGBE_ACI_NVM_ACTIV_SEL_NVM;
+
+	if (dev_caps->common_cap.nvm_update_pending_orom)
+		*pending |= IXGBE_ACI_NVM_ACTIV_SEL_OROM;
+
+	if (dev_caps->common_cap.nvm_update_pending_netlist)
+		*pending |= IXGBE_ACI_NVM_ACTIV_SEL_NETLIST;
+
+	kfree(dev_caps);
+
+	return 0;
+}
+
+/**
+ * ixgbe_cancel_pending_update - Cancel any pending update for a component
+ * @adapter: the PF driver structure
+ * @component: if not NULL, the name of the component being updated
+ * @extack: Netlink extended ACK structure
+ *
+ * Cancel any pending update for the specified component. If component is
+ * NULL, all device updates will be canceled.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int ixgbe_cancel_pending_update(struct ixgbe_adapter *adapter,
+				       const char *component,
+				       struct netlink_ext_ack *extack)
+{
+	struct devlink *devlink = adapter->devlink;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u8 pending;
+	int err;
+
+	err = ixgbe_get_pending_updates(adapter, &pending, extack);
+	if (err)
+		return err;
+
+	/* If the flash_update request is for a specific component, ignore all
+	 * of the other components.
+	 */
+	if (component) {
+		if (strcmp(component, "fw.mgmt") == 0)
+			pending &= IXGBE_ACI_NVM_ACTIV_SEL_NVM;
+		else if (strcmp(component, "fw.undi") == 0)
+			pending &= IXGBE_ACI_NVM_ACTIV_SEL_OROM;
+		else if (strcmp(component, "fw.netlist") == 0)
+			pending &= IXGBE_ACI_NVM_ACTIV_SEL_NETLIST;
+		else
+			return -EINVAL;
+	}
+
+	/* There is no previous pending update, so this request may continue */
+	if (!pending)
+		return 0;
+
+	/* In order to allow overwriting a previous pending update, notify
+	 * firmware to cancel that update by issuing the appropriate command.
+	 */
+	devlink_flash_update_status_notify(devlink,
+					   "Canceling previous pending update",
+					   component, 0, 0);
+
+	err = ixgbe_acquire_nvm(hw, IXGBE_RES_WRITE);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to acquire device flash lock");
+		return -EIO;
+	}
+
+	pending |= IXGBE_ACI_NVM_REVERT_LAST_ACTIV;
+	err = ixgbe_switch_flash_banks(adapter, pending, extack);
+
+	ixgbe_release_nvm(hw);
+
+	return err;
+}
+
+/**
+ * ixgbe_flash_pldm_image - Write a PLDM-formatted firmware image to the device
+ * @devlink: pointer to devlink associated with the device to update
+ * @params: devlink flash update parameters
+ * @extack: netlink extended ACK structure
+ *
+ * Parse the data for a given firmware file, verifying that it is a valid PLDM
+ * formatted image that matches this device.
+ *
+ * Extract the device record Package Data and Component Tables and send them
+ * to the firmware. Extract and write the flash data for each of the three
+ * main flash components, "fw.mgmt", "fw.undi", and "fw.netlist". Notify
+ * firmware once the data is written to the inactive banks.
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int ixgbe_flash_pldm_image(struct devlink *devlink,
+			   struct devlink_flash_update_params *params,
+			   struct netlink_ext_ack *extack)
+{
+	struct ixgbe_adapter *adapter = devlink_priv(devlink);
+	struct device *dev = &adapter->pdev->dev;
+	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_fwu_priv priv;
+	u8 preservation;
+	int err;
+
+	if (hw->mac.type != ixgbe_mac_e610)
+		return -EOPNOTSUPP;
+
+	switch (params->overwrite_mask) {
+	case 0:
+		/* preserve all settings and identifiers */
+		preservation = IXGBE_ACI_NVM_PRESERVE_ALL;
+		break;
+	case DEVLINK_FLASH_OVERWRITE_SETTINGS:
+		/* Overwrite settings, but preserve vital information such as
+		 * device identifiers.
+		 */
+		preservation = IXGBE_ACI_NVM_PRESERVE_SELECTED;
+		break;
+	case (DEVLINK_FLASH_OVERWRITE_SETTINGS |
+	      DEVLINK_FLASH_OVERWRITE_IDENTIFIERS):
+		/* overwrite both settings and identifiers, preserve nothing */
+		preservation = IXGBE_ACI_NVM_NO_PRESERVATION;
+		break;
+	default:
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Requested overwrite mask is not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (!hw->dev_caps.common_cap.nvm_unified_update) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Current firmware does not support unified update");
+		return -EOPNOTSUPP;
+	}
+
+	memset(&priv, 0, sizeof(priv));
+
+	priv.context.ops = &ixgbe_fwu_ops_e610;
+	priv.context.dev = dev;
+	priv.extack = extack;
+	priv.adapter = adapter;
+	priv.activate_flags = preservation;
+
+	devlink_flash_update_status_notify(devlink,
+					   "Preparing to flash", NULL, 0, 0);
+
+	err = ixgbe_cancel_pending_update(adapter, NULL, extack);
+	if (err)
+		return err;
+
+	err = ixgbe_acquire_nvm(hw, IXGBE_RES_WRITE);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to acquire device flash lock");
+		return -EIO;
+	}
+
+	err = pldmfw_flash_image(&priv.context, params->fw);
+	if (err == -ENOENT) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Firmware image has no record matching this device");
+	} else if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to flash PLDM image");
+	}
+
+	ixgbe_release_nvm(hw);
+
+	return err;
+}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h
new file mode 100644
index 000000000000..abdd708c93df
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fw_update.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright(c) 2025 Intel Corporation. */
+
+#ifndef _IXGBE_FW_UPDATE_H_
+#define _IXGBE_FW_UPDATE_H_
+
+int ixgbe_flash_pldm_image(struct devlink *devlink,
+			   struct devlink_flash_update_params *params,
+			   struct netlink_ext_ack *extack);
+int ixgbe_get_pending_updates(struct ixgbe_adapter *adapter, u8 *pending,
+			      struct netlink_ext_ack *extack);
+#endif
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index aa063d39091a..93d854b8a92e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -830,6 +830,8 @@ struct ixgbe_aci_cmd_nvm {
 #define IXGBE_ACI_NVM_MAX_OFFSET	0xFFFFFF
 	__le16 offset_low;
 	u8 offset_high; /* For Write Activate offset_high is used as flags2 */
+#define IXGBE_ACI_NVM_OFFSET_HI_A_MASK  GENMASK(15, 8)
+#define IXGBE_ACI_NVM_OFFSET_HI_U_MASK	GENMASK(23, 16)
 	u8 cmd_flags;
 #define IXGBE_ACI_NVM_LAST_CMD		BIT(0)
 #define IXGBE_ACI_NVM_PCIR_REQ		BIT(0) /* Used by NVM Write reply */
@@ -845,6 +847,9 @@ struct ixgbe_aci_cmd_nvm {
 #define IXGBE_ACI_NVM_PERST_FLAG	1
 #define IXGBE_ACI_NVM_EMPR_FLAG		2
 #define IXGBE_ACI_NVM_EMPR_ENA		BIT(0) /* Write Activate reply only */
+#define IXGBE_ACI_NVM_NO_PRESERVATION	0x0
+#define IXGBE_ACI_NVM_PRESERVE_SELECTED	0x6
+
 	/* For Write Activate, several flags are sent as part of a separate
 	 * flags2 field using a separate byte. For simplicity of the software
 	 * interface, we pass the flags as a 16 bit value so these flags are
@@ -874,6 +879,63 @@ struct ixgbe_aci_cmd_nvm_checksum {
 	u8 rsvd2[12];
 };
 
+/* Used for NVM Set Package Data command - 0x070A */
+struct ixgbe_aci_cmd_nvm_pkg_data {
+	u8 reserved[3];
+	u8 cmd_flags;
+#define IXGBE_ACI_NVM_PKG_DELETE	BIT(0) /* used for command call */
+
+	u32 reserved1;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+/* Used for Pass Component Table command - 0x070B */
+struct ixgbe_aci_cmd_nvm_pass_comp_tbl {
+	u8 component_response; /* Response only */
+#define IXGBE_ACI_NVM_PASS_COMP_CAN_BE_UPDATED		0x0
+#define IXGBE_ACI_NVM_PASS_COMP_CAN_MAY_BE_UPDATEABLE	0x1
+#define IXGBE_ACI_NVM_PASS_COMP_CAN_NOT_BE_UPDATED	0x2
+#define IXGBE_ACI_NVM_PASS_COMP_PARTIAL_CHECK		0x3
+	u8 component_response_code; /* Response only */
+#define IXGBE_ACI_NVM_PASS_COMP_CAN_BE_UPDATED_CODE	0x0
+#define IXGBE_ACI_NVM_PASS_COMP_STAMP_IDENTICAL_CODE	0x1
+#define IXGBE_ACI_NVM_PASS_COMP_STAMP_LOWER		0x2
+#define IXGBE_ACI_NVM_PASS_COMP_INVALID_STAMP_CODE	0x3
+#define IXGBE_ACI_NVM_PASS_COMP_CONFLICT_CODE		0x4
+#define IXGBE_ACI_NVM_PASS_COMP_PRE_REQ_NOT_MET_CODE	0x5
+#define IXGBE_ACI_NVM_PASS_COMP_NOT_SUPPORTED_CODE	0x6
+#define IXGBE_ACI_NVM_PASS_COMP_CANNOT_DOWNGRADE_CODE	0x7
+#define IXGBE_ACI_NVM_PASS_COMP_INCOMPLETE_IMAGE_CODE	0x8
+#define IXGBE_ACI_NVM_PASS_COMP_VER_STR_IDENTICAL_CODE	0xA
+#define IXGBE_ACI_NVM_PASS_COMP_VER_STR_LOWER_CODE	0xB
+	u8 reserved;
+	u8 transfer_flag;
+	__le32 reserved1;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+
+struct ixgbe_aci_cmd_nvm_comp_tbl {
+	__le16 comp_class;
+#define NVM_COMP_CLASS_ALL_FW		0x000A
+
+	__le16 comp_id;
+#define NVM_COMP_ID_OROM		0x5
+#define NVM_COMP_ID_NVM			0x6
+#define NVM_COMP_ID_NETLIST		0x8
+
+	u8 comp_class_idx;
+#define FWU_COMP_CLASS_IDX_NOT_USE	0x0
+
+	__le32 comp_cmp_stamp;
+	u8 cvs_type;
+#define NVM_CVS_TYPE_ASCII		0x1
+
+	u8 cvs_len;
+	u8 cvs[]; /* Component Version String */
+} __packed;
+
 /**
  * struct ixgbe_aci_desc - Admin Command (AC) descriptor
  * @flags: IXGBE_ACI_FLAG_* flags
@@ -917,6 +979,8 @@ struct ixgbe_aci_desc {
 		struct ixgbe_aci_cmd_sff_eeprom read_write_sff_param;
 		struct ixgbe_aci_cmd_nvm nvm;
 		struct ixgbe_aci_cmd_nvm_checksum nvm_checksum;
+		struct ixgbe_aci_cmd_nvm_pkg_data pkg_data;
+		struct ixgbe_aci_cmd_nvm_pass_comp_tbl pass_comp_tbl;
 	} params;
 };
 
-- 
2.31.1

