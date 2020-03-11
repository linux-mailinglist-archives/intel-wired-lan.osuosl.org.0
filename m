Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D64C1823EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2020 22:33:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01E8A876BD;
	Wed, 11 Mar 2020 21:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7ST6h-6EyK1; Wed, 11 Mar 2020 21:33:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5064A876C3;
	Wed, 11 Mar 2020 21:33:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D38C1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9920C26084
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UdOCzkHKw6-c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2020 21:33:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 20A8E228AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 21:33:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 14:33:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,542,1574150400"; d="scan'208";a="242812519"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 14:33:39 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 14:33:18 -0700
Message-Id: <20200311213319.783841-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200311213319.783841-1-jacob.e.keller@intel.com>
References: <20200311213319.783841-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 7/8] ice: add basic handler for devlink
 .info_get
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The devlink .info_get callback allows the driver to report detailed
version information. The following devlink versions are reported with
this initial implementation:

 "fw.mgmt" -> The version of the firmware that controls PHY, link, etc
 "fw.mgmt.api" -> API version of interface exposed over the AdminQ
 "fw.mgmt.build" -> Unique build id of the source for the management fw
 "fw.undi" -> Version of the Option ROM containing the UEFI driver
 "fw.psid.api" -> Version of the NVM image format.
 "fw.bundle" -> Unique identifier for the combined flash image.
 "fw.app.name" -> The name of the active DDP package.
 "fw.app" -> The version of the active DDP package.

With this, devlink dev info can report at least as much information as
is reported by ETHTOOL_GDRVINFO.

Compare the output from ethtool vs from devlink:

  $ ethtool -i ens785s0
  driver: ice
  version: 0.8.1-k
  firmware-version: 0.80 0x80002ec0 1.2581.0
  expansion-rom-version:
  bus-info: 0000:3b:00.0
  supports-statistics: yes
  supports-test: yes
  supports-eeprom-access: yes
  supports-register-dump: yes
  supports-priv-flags: yes

  $ devlink dev info pci/0000:3b:00.0
  pci/0000:3b:00.0:
  driver ice
  serial number 00-01-ab-ff-ff-ca-05-68
  versions:
      running:
        fw.mgmt 2.1.7
        fw.mgmt.api 1.5
        fw.mgmt.build 0x305d955f
        fw.undi 1.2581.0
        fw.psid.api 0.80
        fw.bundle 0x80002ec0
        fw.app.name ICE OS Default Package
        fw.app 1.3.1.0

More pieces of information can be displayed, each version is kept
separate instead of munged together, and each version has an identifier
which comes with associated documentation.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/ice.rst     |  67 +++++++
 Documentation/networking/devlink/index.rst   |   1 +
 drivers/net/ethernet/intel/ice/ice_devlink.c | 189 +++++++++++++++++++
 3 files changed, 257 insertions(+)
 create mode 100644 Documentation/networking/devlink/ice.rst

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
new file mode 100644
index 000000000000..e9c5ddfefc84
--- /dev/null
+++ b/Documentation/networking/devlink/ice.rst
@@ -0,0 +1,67 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+===================
+ice devlink support
+===================
+
+This document describes the devlink features implemented by the ``ice``
+device driver.
+
+Info versions
+=============
+
+The ``ice`` driver reports the following versions
+
+.. list-table:: devlink info versions implemented
+    :widths: 5 5 5 90
+
+    * - Name
+      - Type
+      - Example
+      - Description
+    * - ``fw.mgmt``
+      - running
+      - 2.1.7
+      - 3-digit version number of the management firmware that controls the
+        PHY, link, etc.
+    * - ``fw.mgmt.api``
+      - running
+      - 1.5
+      - 2-digit version number of the API exported over the AdminQ by the
+        management firmware. Used by the driver to identify what commands
+        are supported.
+    * - ``fw.mgmt.build``
+      - running
+      - 0x305d955f
+      - Unique identifier of the source for the management firmware.
+    * - ``fw.undi``
+      - running
+      - 1.2581.0
+      - Version of the Option ROM containing the UEFI driver. The version is
+        reported in ``major.minor.patch`` format. The major version is
+        incremented whenever a major breaking change occurs, or when the
+        minor version would overflow. The minor version is incremented for
+        non-breaking changes and reset to 1 when the major version is
+        incremented. The patch version is normally 0 but is incremented when
+        a fix is delivered as a patch against an older base Option ROM.
+    * - ``fw.psid.api``
+      - running
+      - 0.80
+      - Version defining the format of the flash contents.
+    * - ``fw.bundle``
+      - running
+      - 0x80002ec0
+      - Unique identifier of the firmware image file that was loaded onto
+        the device. Also referred to as the EETRACK identifier of the NVM.
+    * - ``fw.app.name``
+      - running
+      - ICE OS Default Package
+      - The name of the DDP package that is active in the device. The DDP
+        package is loaded by the driver during initialization. Each varation
+        of DDP package shall have a unique name.
+    * - ``fw.app``
+      - running
+      - 1.3.1.0
+      - The version of the DDP package that is active in the device. Note
+        that both the name (as reported by ``fw.app.name``) and version are
+        required to uniquely identify the package.
diff --git a/Documentation/networking/devlink/index.rst b/Documentation/networking/devlink/index.rst
index 087ff54d53fc..272509cd9215 100644
--- a/Documentation/networking/devlink/index.rst
+++ b/Documentation/networking/devlink/index.rst
@@ -32,6 +32,7 @@ parameters, info versions, and other features it supports.
 
    bnxt
    ionic
+   ice
    mlx4
    mlx5
    mlxsw
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index cedd9d02299e..60516e9becb9 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -2,9 +2,198 @@
 /* Copyright (c) 2020, Intel Corporation. */
 
 #include "ice.h"
+#include "ice_lib.h"
 #include "ice_devlink.h"
 
+static int ice_info_get_dsn(struct ice_pf *pf, char *buf, size_t len)
+{
+	u8 dsn[8];
+
+	/* Copy the DSN into an array in Big Endian format */
+	put_unaligned_be64(pci_get_dsn(pf->pdev), dsn);
+
+	snprintf(buf, len, "%02x-%02x-%02x-%02x-%02x-%02x-%02x-%02x",
+		 dsn[0], dsn[1], dsn[2], dsn[3],
+		 dsn[4], dsn[5], dsn[6], dsn[7]);
+
+	return 0;
+}
+
+static int ice_info_fw_mgmt(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	snprintf(buf, len, "%u.%u.%u", hw->fw_maj_ver, hw->fw_min_ver,
+		 hw->fw_patch);
+
+	return 0;
+}
+
+static int ice_info_fw_api(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	snprintf(buf, len, "%u.%u", hw->api_maj_ver, hw->api_min_ver);
+
+	return 0;
+}
+
+static int ice_info_fw_build(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	snprintf(buf, len, "0x%08x", hw->fw_build);
+
+	return 0;
+}
+
+static int ice_info_orom_ver(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_orom_info *orom = &pf->hw.nvm.orom;
+
+	snprintf(buf, len, "%u.%u.%u", orom->major, orom->build, orom->patch);
+
+	return 0;
+}
+
+static int ice_info_nvm_ver(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_nvm_info *nvm = &pf->hw.nvm;
+
+	snprintf(buf, len, "%x.%02x", nvm->major_ver, nvm->minor_ver);
+
+	return 0;
+}
+
+static int ice_info_eetrack(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_nvm_info *nvm = &pf->hw.nvm;
+
+	snprintf(buf, len, "0x%08x", nvm->eetrack);
+
+	return 0;
+}
+
+static int ice_info_ddp_pkg_name(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	snprintf(buf, len, "%s", hw->active_pkg_name);
+
+	return 0;
+}
+
+static int ice_info_ddp_pkg_version(struct ice_pf *pf, char *buf, size_t len)
+{
+	struct ice_pkg_ver *pkg = &pf->hw.active_pkg_ver;
+
+	snprintf(buf, len, "%u.%u.%u.%u", pkg->major, pkg->minor, pkg->update,
+		 pkg->draft);
+
+	return 0;
+}
+
+#define running(key, getter) { ICE_VERSION_RUNNING, key, getter }
+
+enum ice_version_type {
+	ICE_VERSION_FIXED,
+	ICE_VERSION_RUNNING,
+	ICE_VERSION_STORED,
+};
+
+static const struct ice_devlink_version {
+	enum ice_version_type type;
+	const char *key;
+	int (*getter)(struct ice_pf *pf, char *buf, size_t len);
+} ice_devlink_versions[] = {
+	running(DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, ice_info_fw_mgmt),
+	running("fw.mgmt.api", ice_info_fw_api),
+	running("fw.mgmt.build", ice_info_fw_build),
+	running(DEVLINK_INFO_VERSION_GENERIC_FW_UNDI, ice_info_orom_ver),
+	running("fw.psid.api", ice_info_nvm_ver),
+	running("fw.bundle", ice_info_eetrack),
+	running("fw.app.name", ice_info_ddp_pkg_name),
+	running(DEVLINK_INFO_VERSION_GENERIC_FW_APP, ice_info_ddp_pkg_version),
+};
+
+/**
+ * ice_devlink_info_get - .info_get devlink handler
+ * @devlink: devlink instance structure
+ * @req: the devlink info request
+ * @extack: extended netdev ack structure
+ *
+ * Callback for the devlink .info_get operation. Reports information about the
+ * device.
+ *
+ * @returns zero on success or an error code on failure.
+ */
+static int ice_devlink_info_get(struct devlink *devlink,
+				struct devlink_info_req *req,
+				struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	char buf[100];
+	size_t i;
+	int err;
+
+	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to set driver name");
+		return err;
+	}
+
+	err = ice_info_get_dsn(pf, buf, sizeof(buf));
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to obtain serial number");
+		return err;
+	}
+
+	err = devlink_info_serial_number_put(req, buf);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Unable to set serial number");
+		return err;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(ice_devlink_versions); i++) {
+		enum ice_version_type type = ice_devlink_versions[i].type;
+		const char *key = ice_devlink_versions[i].key;
+
+		err = ice_devlink_versions[i].getter(pf, buf, sizeof(buf));
+		if (err) {
+			NL_SET_ERR_MSG_MOD(extack, "Unable to obtain version info");
+			return err;
+		}
+
+		switch (type) {
+		case ICE_VERSION_FIXED:
+			err = devlink_info_version_fixed_put(req, key, buf);
+			if (err) {
+				NL_SET_ERR_MSG_MOD(extack, "Unable to set fixed version");
+				return err;
+			}
+			break;
+		case ICE_VERSION_RUNNING:
+			err = devlink_info_version_running_put(req, key, buf);
+			if (err) {
+				NL_SET_ERR_MSG_MOD(extack, "Unable to set running version");
+				return err;
+			}
+			break;
+		case ICE_VERSION_STORED:
+			err = devlink_info_version_stored_put(req, key, buf);
+			if (err) {
+				NL_SET_ERR_MSG_MOD(extack, "Unable to set stored version");
+				return err;
+			}
+			break;
+		}
+	}
+
+	return 0;
+}
+
 static const struct devlink_ops ice_devlink_ops = {
+	.info_get = ice_devlink_info_get,
 };
 
 static void ice_devlink_free(void *devlink_ptr)
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
