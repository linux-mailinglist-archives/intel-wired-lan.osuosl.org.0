Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B685A85EA4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 15:21:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15545849BE;
	Fri, 11 Apr 2025 13:21:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vSweun5TQ-Sl; Fri, 11 Apr 2025 13:21:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C3C584040
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744377695;
	bh=pz6JZpBelqtnh2WS6m3CXsWr0Y1DGx1mBifhON6F5Vo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=taSMt4e5qHubsw50KWzeRFWXxUIm+4uCuIH2Xrh+Iovc9za+5/lx75jXTAc9/vd86
	 5cZe85o5Yq/pe8SWqoAEnhuP3aiV73YcZWlOV1ABydjiv8sMThyN1XKhATmusxcMZ+
	 oUucXUAUfjKNWusaABkI1/mrh42z/vJrFwsJunIRq1mUk6SOQ9Hu8RBQF525PBX/sC
	 mRgkNr8Cuxveba8GFFLbPqF7q/ugaLiHtNxYQgsZQaJFT8L5g6720d/8WeU6vFQTK4
	 M7k2znXwbBM/7w/0hyZ41Q3AwEUADqi3/BvNxAh2Ny5je6WUvN8giuz3xmw08IrahG
	 7alw/HOnNUHKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C3C584040;
	Fri, 11 Apr 2025 13:21:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 846A5138
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 13:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7465A403F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 13:21:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RGS1NZLFJmB1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 13:21:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E64440FF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E64440FF9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E64440FF9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 13:21:31 +0000 (UTC)
X-CSE-ConnectionGUID: WDIJ43x0SH2nmOwPQiAdrg==
X-CSE-MsgGUID: CbnBPR8qTly4IUOH4JPB7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="63329063"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="63329063"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 06:21:31 -0700
X-CSE-ConnectionGUID: VGXsYK8vQgSGgelB2ewlbQ==
X-CSE-MsgGUID: hco3pdCfSHSxF7s2xtrhjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="128971395"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 11 Apr 2025 06:21:29 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Fri, 11 Apr 2025 15:06:26 +0200
Message-Id: <20250411130626.535291-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744377692; x=1775913692;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L8M59lJhMhRY1Mk96YdHLMEhcBcK7CKGx7aWpOtwnZo=;
 b=WxXgg1U6DS8qjQPz/giDpPSOVzNpmz8GwTuqX40i8BTRPThehk+N4s+h
 Y05cS5Vh9sKs9BtGmxDXfJnZW7V/kRKO0GrcicDEoVQ0FY2edFp9AnwOI
 nW5UegvXzw72x/FEnLWSd/PJ89pxIIPIz++L7ccMpXFPqAPL7DPSsC0C2
 EG7Hkbde41bqUweewKcq81HnekrGPtUpM4dQAZ/lpF21wyqOtnIHqOAD2
 OhbrFkfK1Qwj5jnneV4fwv0gl50XagL6ES6AJuwjXIi+JVBZ9Tm73+bYT
 AsRyTdG8qyn9cVJQZ4sLpyT62LaIIgOXSo2a4k5csN/G+ygR7Ii/2Y8gi
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WxXgg1U6
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: devlink: add devlink
 region support for E610
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

From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>

Provide support for the following devlink cmds:
 -DEVLINK_CMD_REGION_GET
 -DEVLINK_CMD_REGION_NEW
 -DEVLINK_CMD_REGION_DEL
 -DEVLINK_CMD_REGION_READ

ixgbe devlink region implementation, similarly to the ice one,
lets user to create snapshots of content of Non Volatile Memory,
content of Shadow RAM, and capabilities of the device.

For both NVM and SRAM regions provide .read() handler to let user
read their contents without the need to create full snapshots.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 Documentation/networking/devlink/ixgbe.rst    |  49 +++
 drivers/net/ethernet/intel/ixgbe/Makefile     |   3 +-
 .../ethernet/intel/ixgbe/devlink/devlink.h    |   2 +
 .../net/ethernet/intel/ixgbe/devlink/region.c | 290 ++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   3 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   3 +
 6 files changed, 349 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/region.c

diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
index e5fef951c6f5..d47e3f1acd65 100644
--- a/Documentation/networking/devlink/ixgbe.rst
+++ b/Documentation/networking/devlink/ixgbe.rst
@@ -103,3 +103,52 @@ EMP firmware image.
 
 The driver does not currently support reloading the driver via
 ``DEVLINK_RELOAD_ACTION_DRIVER_REINIT``.
+
+Regions
+=======
+
+The ``ixgbe`` driver implements the following regions for accessing internal
+device data.
+
+.. list-table:: regions implemented
+    :widths: 15 85
+
+    * - Name
+      - Description
+    * - ``nvm-flash``
+      - The contents of the entire flash chip, sometimes referred to as
+        the device's Non Volatile Memory.
+    * - ``shadow-ram``
+      - The contents of the Shadow RAM, which is loaded from the beginning
+        of the flash. Although the contents are primarily from the flash,
+        this area also contains data generated during device boot which is
+        not stored in flash.
+    * - ``device-caps``
+      - The contents of the device firmware's capabilities buffer. Useful to
+        determine the current state and configuration of the device.
+
+Both the ``nvm-flash`` and ``shadow-ram`` regions can be accessed without a
+snapshot. The ``device-caps`` region requires a snapshot as the contents are
+sent by firmware and can't be split into separate reads.
+
+Users can request an immediate capture of a snapshot for all three regions
+via the ``DEVLINK_CMD_REGION_NEW`` command.
+
+.. code:: shell
+
+    $ devlink region show
+    pci/0000:01:00.0/nvm-flash: size 10485760 snapshot [] max 1
+    pci/0000:01:00.0/device-caps: size 4096 snapshot [] max 10
+
+    $ devlink region new pci/0000:01:00.0/nvm-flash snapshot 1
+
+    $ devlink region dump pci/0000:01:00.0/nvm-flash snapshot 1
+    0000000000000000 0014 95dc 0014 9514 0035 1670 0034 db30
+    0000000000000010 0000 0000 ffff ff04 0029 8c00 0028 8cc8
+    0000000000000020 0016 0bb8 0016 1720 0000 0000 c00f 3ffc
+    0000000000000030 bada cce5 bada cce5 bada cce5 bada cce5
+
+    $ devlink region read pci/0000:01:00.0/nvm-flash snapshot 1 address 0 length 16
+    0000000000000000 0014 95dc 0014 9514 0035 1670 0034 db30
+
+    $ devlink region delete pci/0000:01:00.0/device-caps snapshot 1
diff --git a/drivers/net/ethernet/intel/ixgbe/Makefile b/drivers/net/ethernet/intel/ixgbe/Makefile
index ce447540d146..2e7738f41c58 100644
--- a/drivers/net/ethernet/intel/ixgbe/Makefile
+++ b/drivers/net/ethernet/intel/ixgbe/Makefile
@@ -10,7 +10,8 @@ obj-$(CONFIG_IXGBE) += ixgbe.o
 ixgbe-y := ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
            ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
            ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_ptp.o \
-           ixgbe_xsk.o ixgbe_e610.o devlink/devlink.o ixgbe_fw_update.o
+           ixgbe_xsk.o ixgbe_e610.o devlink/devlink.o ixgbe_fw_update.o \
+	   devlink/region.o
 
 ixgbe-$(CONFIG_IXGBE_DCB) +=  ixgbe_dcb.o ixgbe_dcb_82598.o \
                               ixgbe_dcb_82599.o ixgbe_dcb_nl.o
diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
index 0b27653a3407..381558058048 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
@@ -6,5 +6,7 @@
 
 struct ixgbe_adapter *ixgbe_allocate_devlink(struct device *dev);
 int ixgbe_devlink_register_port(struct ixgbe_adapter *adapter);
+void ixgbe_devlink_init_regions(struct ixgbe_adapter *adapter);
+void ixgbe_devlink_destroy_regions(struct ixgbe_adapter *adapter);
 
 #endif /* _IXGBE_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/region.c b/drivers/net/ethernet/intel/ixgbe/devlink/region.c
new file mode 100644
index 000000000000..ad242d4fc860
--- /dev/null
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/region.c
@@ -0,0 +1,290 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2025, Intel Corporation. */
+
+#include "ixgbe.h"
+#include "devlink.h"
+
+#define IXGBE_DEVLINK_READ_BLK_SIZE (1024 * 1024)
+
+static const struct devlink_region_ops ixgbe_nvm_region_ops;
+static const struct devlink_region_ops ixgbe_sram_region_ops;
+
+static int ixgbe_devlink_parse_region(struct ixgbe_hw *hw,
+				      const struct devlink_region_ops *ops,
+				      bool *read_shadow_ram, u32 *nvm_size)
+{
+	if (ops == &ixgbe_nvm_region_ops) {
+		*read_shadow_ram = false;
+		*nvm_size = hw->flash.flash_size;
+	} else if (ops == &ixgbe_sram_region_ops) {
+		*read_shadow_ram = true;
+		*nvm_size = hw->flash.sr_words * 2u;
+	} else {
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+/**
+ * ixgbe_devlink_nvm_snapshot - Capture a snapshot of the NVM content
+ * @devlink: the devlink instance
+ * @ops: the devlink region being snapshotted
+ * @extack: extended ACK response structure
+ * @data: on exit points to snapshot data buffer
+ *
+ * This function is called in response to the DEVLINK_CMD_REGION_NEW cmd.
+ *
+ * Capture a snapshot of the whole requested NVM region.
+ *
+ * No need to worry with freeing @data, devlink core takes care if it.
+ *
+ * Return: 0 on success, -EOPNOTSUPP for unsupported regions, -EBUSY when
+ * cannot lock NVM, -ENOMEM when cannot alloc mem and -EIO when erorr
+ * occurs during reading.
+ */
+static int ixgbe_devlink_nvm_snapshot(struct devlink *devlink,
+				      const struct devlink_region_ops *ops,
+				      struct netlink_ext_ack *extack, u8 **data)
+{
+	struct ixgbe_adapter *adapter = devlink_priv(devlink);
+	struct ixgbe_hw *hw = &adapter->hw;
+	bool read_shadow_ram;
+	u8 *nvm_data, *buf;
+	u32 nvm_size, left;
+	u8 num_blks;
+	int err;
+
+	err = ixgbe_devlink_parse_region(hw, ops, &read_shadow_ram, &nvm_size);
+	if (err)
+		return err;
+
+	nvm_data = kvzalloc(nvm_size, GFP_KERNEL);
+	if (!nvm_data)
+		return -ENOMEM;
+
+	num_blks = DIV_ROUND_UP(nvm_size, IXGBE_DEVLINK_READ_BLK_SIZE);
+	buf = nvm_data;
+	left = nvm_size;
+
+	for (int i = 0; i < num_blks; i++) {
+		u32 read_sz = min_t(u32, IXGBE_DEVLINK_READ_BLK_SIZE, left);
+
+		/* Need to acquire NVM lock during each loop run because the total
+		 * period of reading whole NVM is longer than the maximum period
+		 * the lock can be taken defined by the IXGBE_NVM_TIMEOUT.
+		 */
+		err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+		if (err) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Failed to acquire NVM semaphore");
+			kvfree(nvm_data);
+			return -EBUSY;
+		}
+
+		err = ixgbe_read_flat_nvm(hw, i * IXGBE_DEVLINK_READ_BLK_SIZE,
+					  &read_sz, buf, read_shadow_ram);
+		if (err) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Failed to read RAM content");
+			ixgbe_release_nvm(hw);
+			kvfree(nvm_data);
+			return -EIO;
+		}
+
+		ixgbe_release_nvm(hw);
+
+		buf += read_sz;
+		left -= read_sz;
+	}
+
+	*data = nvm_data;
+	return 0;
+}
+
+/**
+ * ixgbe_devlink_devcaps_snapshot - Capture a snapshot of device capabilities
+ * @devlink: the devlink instance
+ * @ops: the devlink region being snapshotted
+ * @extack: extended ACK response structure
+ * @data: on exit points to snapshot data buffer
+ *
+ * This function is called in response to the DEVLINK_CMD_REGION_NEW for
+ * the device-caps devlink region.
+ *
+ * Capture a snapshot of the device capabilities reported by firmware.
+ *
+ * No need to worry with freeing @data, devlink core takes care if it.
+ *
+ * Return: 0 on success, -ENOMEM when cannot alloc mem, or return code of
+ * the reading operation.
+ */
+static int ixgbe_devlink_devcaps_snapshot(struct devlink *devlink,
+					  const struct devlink_region_ops *ops,
+					  struct netlink_ext_ack *extack,
+					  u8 **data)
+{
+	struct ixgbe_adapter *adapter = devlink_priv(devlink);
+	struct ixgbe_aci_cmd_list_caps_elem *caps;
+	struct ixgbe_hw *hw = &adapter->hw;
+	int err;
+
+	caps = kvzalloc(IXGBE_ACI_MAX_BUFFER_SIZE, GFP_KERNEL);
+	if (!caps)
+		return -ENOMEM;
+
+	err = ixgbe_aci_list_caps(hw, caps, IXGBE_ACI_MAX_BUFFER_SIZE, NULL,
+				  ixgbe_aci_opc_list_dev_caps);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to read device capabilities");
+		kvfree(caps);
+		return err;
+	}
+
+	*data = (u8 *)caps;
+	return 0;
+}
+
+/**
+ * ixgbe_devlink_nvm_read - Read a portion of NVM flash content
+ * @devlink: the devlink instance
+ * @ops: the devlink region to snapshot
+ * @extack: extended ACK response structure
+ * @offset: the offset to start at
+ * @size: the amount to read
+ * @data: the data buffer to read into
+ *
+ * This function is called in response to DEVLINK_CMD_REGION_READ to directly
+ * read a section of the NVM contents.
+ *
+ * Read from either the nvm-flash region either shadow-ram region.
+ *
+ * Return: 0 on success, -EOPNOTSUPP for unsupported regions, -EBUSY when
+ * cannot lock NVM, -ERANGE when buffer limit exceeded and -EIO when error
+ * occurs during reading.
+ */
+static int ixgbe_devlink_nvm_read(struct devlink *devlink,
+				  const struct devlink_region_ops *ops,
+				  struct netlink_ext_ack *extack,
+				  u64 offset, u32 size, u8 *data)
+{
+	struct ixgbe_adapter *adapter = devlink_priv(devlink);
+	struct ixgbe_hw *hw = &adapter->hw;
+	bool read_shadow_ram;
+	u32 nvm_size;
+	int err;
+
+	err = ixgbe_devlink_parse_region(hw, ops, &read_shadow_ram, &nvm_size);
+	if (err)
+		return err;
+
+	if (offset + size > nvm_size) {
+		NL_SET_ERR_MSG_MOD(extack, "Cannot read beyond the region size");
+		return -ERANGE;
+	}
+
+	err = ixgbe_acquire_nvm(hw, IXGBE_RES_READ);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
+		return -EBUSY;
+	}
+
+	err = ixgbe_read_flat_nvm(hw, (u32)offset, &size, data, read_shadow_ram);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Failed to read NVM contents");
+		ixgbe_release_nvm(hw);
+		return -EIO;
+	}
+
+	ixgbe_release_nvm(hw);
+	return 0;
+}
+
+static const struct devlink_region_ops ixgbe_nvm_region_ops = {
+	.name = "nvm-flash",
+	.destructor = kvfree,
+	.snapshot = ixgbe_devlink_nvm_snapshot,
+	.read = ixgbe_devlink_nvm_read,
+};
+
+static const struct devlink_region_ops ixgbe_sram_region_ops = {
+	.name = "shadow-ram",
+	.destructor = kvfree,
+	.snapshot = ixgbe_devlink_nvm_snapshot,
+	.read = ixgbe_devlink_nvm_read,
+};
+
+static const struct devlink_region_ops ixgbe_devcaps_region_ops = {
+	.name = "device-caps",
+	.destructor = kvfree,
+	.snapshot = ixgbe_devlink_devcaps_snapshot,
+};
+
+/**
+ * ixgbe_devlink_init_regions - Initialize devlink regions
+ * @adapter: adapter instance
+ *
+ * Create devlink regions used to enable access to dump the contents of the
+ * flash memory of the device.
+ */
+void ixgbe_devlink_init_regions(struct ixgbe_adapter *adapter)
+{
+	struct devlink *devlink = adapter->devlink;
+	struct device *dev = &adapter->pdev->dev;
+	u64 nvm_size, sram_size;
+
+	if (adapter->hw.mac.type != ixgbe_mac_e610)
+		return;
+
+	nvm_size = adapter->hw.flash.flash_size;
+	adapter->nvm_region = devl_region_create(devlink,
+					&ixgbe_nvm_region_ops, 1, nvm_size);
+	if (IS_ERR(adapter->nvm_region)) {
+		dev_err(dev,
+			"Failed to create NVM devlink region, err %ld\n",
+			PTR_ERR(adapter->nvm_region));
+		adapter->nvm_region = NULL;
+	}
+
+	sram_size = adapter->hw.flash.sr_words * 2u;
+	adapter->sram_region = devl_region_create(devlink,
+					&ixgbe_sram_region_ops, 1, sram_size);
+	if (IS_ERR(adapter->sram_region)) {
+		dev_err(dev,
+			"Failed to create shadow-ram devlink region, err %ld\n",
+			PTR_ERR(adapter->sram_region));
+		adapter->sram_region = NULL;
+	}
+
+	adapter->devcaps_region = devl_region_create(devlink,
+					&ixgbe_devcaps_region_ops, 10,
+					IXGBE_ACI_MAX_BUFFER_SIZE);
+	if (IS_ERR(adapter->devcaps_region)) {
+		dev_err(dev,
+			"Failed to create device-caps devlink region, err %ld\n",
+			PTR_ERR(adapter->devcaps_region));
+		adapter->devcaps_region = NULL;
+	}
+}
+
+/**
+ * ixgbe_devlink_destroy_regions - Destroy devlink regions
+ * @adapter: adapter instance
+ *
+ * Remove previously created regions for this adapter instance.
+ */
+void ixgbe_devlink_destroy_regions(struct ixgbe_adapter *adapter)
+{
+	if (adapter->hw.mac.type != ixgbe_mac_e610)
+		return;
+
+	if (adapter->nvm_region)
+		devl_region_destroy(adapter->nvm_region);
+
+	if (adapter->sram_region)
+		devl_region_destroy(adapter->sram_region);
+
+	if (adapter->devcaps_region)
+		devl_region_destroy(adapter->devcaps_region);
+}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index fe35eb50b441..215672d60bf1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -620,6 +620,9 @@ struct ixgbe_adapter {
 	struct mii_bus *mii_bus;
 	struct devlink *devlink;
 	struct devlink_port devlink_port;
+	struct devlink_region *nvm_region;
+	struct devlink_region *sram_region;
+	struct devlink_region *devcaps_region;
 
 	unsigned long state;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 90cffa50221c..839fdb4fd029 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11494,6 +11494,7 @@ static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)
 	ixgbe_devlink_register_port(adapter);
 	SET_NETDEV_DEVLINK_PORT(adapter->netdev,
 				&adapter->devlink_port);
+	ixgbe_devlink_init_regions(adapter);
 	devl_register(adapter->devlink);
 	devl_unlock(adapter->devlink);
 
@@ -12001,6 +12002,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_netdev;
 
+	ixgbe_devlink_init_regions(adapter);
 	devl_register(adapter->devlink);
 	devl_unlock(adapter->devlink);
 	return 0;
@@ -12059,6 +12061,7 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	netdev  = adapter->netdev;
 	devl_lock(adapter->devlink);
 	devl_unregister(adapter->devlink);
+	ixgbe_devlink_destroy_regions(adapter);
 	ixgbe_dbg_adapter_exit(adapter);
 
 	set_bit(__IXGBE_REMOVING, &adapter->state);
-- 
2.31.1

