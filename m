Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A7D43D776
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 01:23:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 993AF40451;
	Wed, 27 Oct 2021 23:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hir9VCTyWJIM; Wed, 27 Oct 2021 23:23:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5F424010E;
	Wed, 27 Oct 2021 23:23:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 257831BF337
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 23:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1530880CED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 23:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ldmW5ofKpfuT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 23:23:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 423A980D0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 23:23:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="210365039"
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="210365039"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 16:23:36 -0700
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="529801910"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.11])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 16:23:36 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 27 Oct 2021 16:22:55 -0700
Message-Id: <20211027232255.669167-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20211027232255.669167-1-jacob.e.keller@intel.com>
References: <20211027232255.669167-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v7 2/2] ice: support immediate firmware
 activation via devlink reload
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
Cc: pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice hardware contains an embedded chip with firmware which can be
updated using devlink flash. The firmware which runs on this chip is
referred to as the Embedded Management Processor firmware (EMP
firmware).

Activating the new firmware image currently requires that the system be
rebooted. This is not ideal as rebooting the system can cause unwanted
downtime.

In practical terms, activating the firmware does not always require a
full system reboot. In many cases it is possible to activate the EMP
firmware immediately. There are a couple of different scenarios to
cover.

 * The EMP firmware itself can be reloaded by issuing a special update
   to the device called an Embedded Management Processor reset (EMP
   reset). This reset causes the device to reset and reload the EMP
   firmware.

 * PCI configuration changes are only reloaded after a cold PCIe reset.
   Unfortunately there is no generic way to trigger this for a PCIe
   device without a system reboot.

When performing a flash update, firmware is capable of responding with
some information about the specific update requirements.

The driver updates the flash by programming a secondary inactive bank
with the contents of the new image, and then issuing a command to
request to switch the active bank starting from the next load.

The response to the final command for updating the inactive NVM flash
bank includes an indication of the minimum reset required to fully
update the device. This can be one of the following:

 * A full power on is required
 * A cold PCIe reset is required
 * An EMP reset is required

The response to the command to switch flash banks includes an indication
of whether or not the firmware will allow an EMP reset request.

For most updates, an EMP reset is sufficient to load the new EMP
firmware without issues. In some cases, this reset is not sufficient
because the PCI configuration space has changed. When this could cause
incompatibility with the new EMP image, the firmware is capable of
rejecting the EMP reset request.

Add logic to ice_fw_update.c to handle the response data flash update
AdminQ commands.

For the reset level, issue a devlink status notification informing the
user of how to complete the update with a simple suggestion like
"Activate new firmware by rebooting the system".

Cache the status of whether or not firmware will restrict the EMP reset
for use in implementing devlink reload.

Implement support for devlink reload with the "fw_activate" flag. This
allows user space to request the firmware be activated immediately.

For the .reload_down handler, we will issue a request for the EMP reset
using the appropriate firmware AdminQ command. If we know that the
firmware will not allow an EMP reset, simply exit with a suitable
netlink extended ACK message indicating that the EMP reset is not
available.

For the .reload_up handler, simply wait until the driver has finished
resetting. Logic to handle processing of an EMP reset already exists in
the driver as part of its reset and rebuild flows.

Implement support for the devlink reload interface with the
"fw_activate" action. This allows userspace to request activation of
firmware without a reboot.

Note that support for indicating the required reset and EMP reset
restriction is not supported on old versions of firmware. The driver can
determine if the two features are supported by checking the device
capabilities report. I confirmed support has existed since at least
version 5.5.2 as reported by the 'fw.mgmt' version. Support to issue the
EMP reset request has existed in all version of the EMP firmware for the
ice hardware.

Check the device capabilities report to determine whether or not the
indications are reported by the running firmware. If the reset
requirement indication is not supported, always assume a full power on
is necessary. If the reset restriction capability is not supported,
always assume the EMP reset is available.

Users can verify if the EMP reset has activated the firmware by using
the devlink info report to check that the 'running' firmware version has
updated. For example a user might do the following:

 # Check current version
 $ devlink dev info

 # Update the device
 $ devlink dev flash pci/0000:af:00.0 file firmware.bin

 # Confirm stored version updated
 $ devlink dev info

 # Reload to activate new firmware
 $ devlink dev reload pci/0000:af:00.0 action fw_activate

 # Confirm running version updated
 $ devlink dev info

Finally, this change does *not* implement basic driver-only reload
support. I did look into trying to do this. However, it requires
significant refactor of how the ice driver probes and loads everything.
The ice driver probe and allocation flows were not designed with such
a reload in mind. Refactoring the flow to support this is beyond the
scope of this change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v6
* none

Changes since v5
* Added a new patch that reduces the reset (and probe!) time
* Reduced the maximum timeout of reload_up to 1 minute. This is probably
  still a bit overkill in terms of total wait but ensures we wait long
  enough for cases where multiple PFs rebuild flows are serialized due to
  locks
* Improved the error message when reset times out.

Changes since v4
* completely re-write commit message for clarity
* Update devlink ice.rst with documentation about reload
* expand the terms "EMP" and "empr" for clarity
* Rename the ice_devlink_reload_down to ice_devlink_reload_empr_start and
  rename ice_devlink_reload_up to ice_devlink_reload_empr_finish. This is
  done to clarify their functionality. It is also done because any future
  support for devlink reload with driver reinit will want to continue
  re-using these functions to support firmware activation.
* Increase the maximum wait time for EMP reset to complete to 2 minutes.
  It turns out that in practice the reset might take a while (longer than
  the original 20 seconds I had in v4 and earlier).
* Move the clearing of fw_emp_reset_disabled into the ice_rebuild logic.
  This ensures the flag is properly cleared even when the EMP reset was
  caused by another physical function.
* Add comments explaining the various reset levels that the firmware can
  report.

Changes since v3
* correctly read response of NVM write activate from synchronous reply value
  instead of from the ARQ event. This fixes a bug where we never reported
  that EMP reset is available.

Changes since v2
* ensure DEVLINK_F_RELOAD gets set
* rebase to avoid conflicts

 Documentation/networking/devlink/ice.rst      |  24 ++-
 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   7 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  12 ++
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  99 ++++++++++
 .../net/ethernet/intel/ice/ice_fw_update.c    | 181 +++++++++++++++---
 .../net/ethernet/intel/ice/ice_fw_update.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   8 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  19 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   2 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 11 files changed, 330 insertions(+), 29 deletions(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 59c78e9717d2..8c082b139bbd 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -26,8 +26,10 @@ The ``ice`` driver reports the following versions
     * - ``fw.mgmt``
       - running
       - 2.1.7
-      - 3-digit version number of the management firmware that controls the
-        PHY, link, etc.
+      - 3-digit version number of the management firmware running on the
+        Embedded Management Processor of the device. It controls the PHY,
+        link, access to device resources, etc. Intel documentation refers to
+        this as the EMP firmware.
     * - ``fw.mgmt.api``
       - running
       - 1.5.1
@@ -119,6 +121,24 @@ preserving settings, and thus ``DEVLINK_FLASH_OVERWRITE_IDENTIFIERS`` on its
 own will be rejected. If no overwrite mask is provided, the firmware will be
 instructed to preserve all settings and identifying fields when updating.
 
+Reload
+======
+
+The ``ice`` driver supports activating new firmware after a flash update
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
+
 Regions
 =======
 
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ed85442551ca..b46ebe04879b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -551,6 +551,7 @@ struct ice_pf {
 	spinlock_t aq_wait_lock;
 	struct hlist_head aq_wait_list;
 	wait_queue_head_t aq_wait_queue;
+	bool fw_emp_reset_disabled;
 
 	wait_queue_head_t reset_wait_queue;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index a5425f0dce3f..88fc7aac915b 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -117,6 +117,8 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_NET_VER				0x004C
 #define ICE_AQC_CAPS_PENDING_NET_VER			0x004D
 #define ICE_AQC_CAPS_RDMA				0x0051
+#define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
+#define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
 #define ICE_AQC_CAPS_NVM_MGMT				0x0080
 
 	u8 major_ver;
@@ -1406,6 +1408,11 @@ struct ice_aqc_nvm {
 #define ICE_AQC_NVM_REVERT_LAST_ACTIV	BIT(6) /* Write Activate only */
 #define ICE_AQC_NVM_ACTIV_SEL_MASK	ICE_M(0x7, 3)
 #define ICE_AQC_NVM_FLASH_ONLY		BIT(7)
+#define ICE_AQC_NVM_RESET_LVL_M		ICE_M(0x3, 0) /* Write reply only */
+#define ICE_AQC_NVM_POR_FLAG		0
+#define ICE_AQC_NVM_PERST_FLAG		1
+#define ICE_AQC_NVM_EMPR_FLAG		2
+#define ICE_AQC_NVM_EMPR_ENA		BIT(0) /* Write Activate reply only */
 	__le16 module_typeid;
 	__le16 length;
 #define ICE_AQC_NVM_ERASE_LEN	0xFFFF
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 830cdc9943ad..01a79b415f00 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2069,6 +2069,18 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 		ice_debug(hw, ICE_DBG_INIT, "%s: max_mtu = %d\n",
 			  prefix, caps->max_mtu);
 		break;
+	case ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE:
+		caps->pcie_reset_avoidance = (number > 0);
+		ice_debug(hw, ICE_DBG_INIT,
+			  "%s: pcie_reset_avoidance = %d\n", prefix,
+			  caps->pcie_reset_avoidance);
+		break;
+	case ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT:
+		caps->reset_restrict_support = (number == 1);
+		ice_debug(hw, ICE_DBG_INIT,
+			  "%s: reset_restrict_support = %d\n", prefix,
+			  caps->reset_restrict_support);
+		break;
 	default:
 		/* Not one of the recognized common capabilities */
 		found = false;
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 3774c3a7281d..73778dbdc269 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -370,8 +370,106 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	return err;
 }
 
+/**
+ * ice_devlink_reload_empr_start - Start EMP reset to activate new firmware
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
+ */
+static int
+ice_devlink_reload_empr_start(struct devlink *devlink, bool netns_change,
+			      enum devlink_reload_action action,
+			      enum devlink_reload_limit limit,
+			      struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	u8 pending;
+	int err;
+
+	err = ice_get_pending_updates(pf, &pending, extack);
+	if (err)
+		return err;
+
+	/* pending is a bitmask of which flash banks have a pending update,
+	 * including the main NVM bank, the Option ROM bank, and the netlist
+	 * bank. If any of these bits are set, then there is a pending update
+	 * waiting to be activated.
+	 */
+	if (!pending) {
+		NL_SET_ERR_MSG_MOD(extack, "No pending firmware update");
+		return -ECANCELED;
+	}
+
+	if (pf->fw_emp_reset_disabled) {
+		NL_SET_ERR_MSG_MOD(extack, "EMP reset is not available. To activate firmware, a reboot or power cycle is needed\n");
+		return -ECANCELED;
+	}
+
+	dev_dbg(dev, "Issuing device EMP reset to activate firmware\n");
+
+	err = ice_aq_nvm_update_empr(hw);
+	if (err) {
+		dev_err(dev, "Failed to trigger EMP device reset to reload firmware, err %d aq_err %s\n",
+			err, ice_aq_str(hw->adminq.sq_last_status));
+		NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device reset to reload firmware");
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_reload_empr_finish - Wait for EMP reset to finish
+ * @devlink: pointer to the devlink instance reloading
+ * @action: the action requested
+ * @limit: limits imposed by userspace, such as not resetting
+ * @actions_performed: on return, indicate what actions actually performed
+ * @extack: netlink extended ACK structure
+ *
+ * Wait for driver to finish rebuilding after EMP reset is completed. This
+ * includes time to wait for both the actual device reset as well as the time
+ * for the driver's rebuild to complete.
+ */
+static int
+ice_devlink_reload_empr_finish(struct devlink *devlink,
+			       enum devlink_reload_action action,
+			       enum devlink_reload_limit limit,
+			       u32 *actions_performed,
+			       struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	int err;
+
+	*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
+
+	err = ice_wait_for_reset(pf, 60 * HZ);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Device still resetting after 1 minute");
+		return err;
+	}
+
+	return 0;
+}
+
 static const struct devlink_ops ice_devlink_ops = {
 	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
+	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
+	/* The ice driver currently does not support driver reinit */
+	.reload_down = ice_devlink_reload_empr_start,
+	.reload_up = ice_devlink_reload_empr_finish,
 	.eswitch_mode_get = ice_eswitch_mode_get,
 	.eswitch_mode_set = ice_eswitch_mode_set,
 	.info_get = ice_devlink_info_get,
@@ -418,6 +516,7 @@ void ice_devlink_register(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
 
+	devlink_set_features(devlink, DEVLINK_F_RELOAD);
 	devlink_register(devlink);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 1f8e0e5d5660..665a344fb9c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -16,6 +16,18 @@ struct ice_fwu_priv {
 
 	/* Track which NVM banks to activate at the end of the update */
 	u8 activate_flags;
+
+	/* Track the firmware response of the required reset to complete the
+	 * flash update.
+	 *
+	 * 0 - ICE_AQC_NVM_POR_FLAG - A full power on is required
+	 * 1 - ICE_AQC_NVM_PERST_FLAG - A cold PCIe reset is required
+	 * 2 - ICE_AQC_NVM_EMPR_FLAG - An EMP reset is required
+	 */
+	u8 reset_level;
+
+	/* Track if EMP reset is available */
+	u8 emp_reset_available;
 };
 
 /**
@@ -257,6 +269,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
  * @block_size: size of the block to write, up to 4k
  * @block: pointer to block of data to write
  * @last_cmd: whether this is the last command
+ * @reset_level: storage for reset level required
  * @extack: netlink extended ACK structure
  *
  * Write a block of data to a flash module, and await for the completion
@@ -264,12 +277,19 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
  *
  * Note this function assumes the caller has acquired the NVM resource.
  *
+ * On successful return, reset level indicates the device reset required to
+ * complete the update.
+ *
+ *   0 - ICE_AQC_NVM_POR_FLAG - A full power on is required
+ *   1 - ICE_AQC_NVM_PERST_FLAG - A cold PCIe reset is required
+ *   2 - ICE_AQC_NVM_EMPR_FLAG - An EMP reset is required
+ *
  * Returns: zero on success, or a negative error code on failure.
  */
 static int
 ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 			u16 block_size, u8 *block, bool last_cmd,
-			struct netlink_ext_ack *extack)
+			u8 *reset_level, struct netlink_ext_ack *extack)
 {
 	u16 completion_module, completion_retval;
 	struct device *dev = ice_pf_to_dev(pf);
@@ -335,6 +355,24 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 		return -EIO;
 	}
 
+	/* For the last command to write the NVM bank, newer versions of
+	 * firmware indicate the required level of reset to complete
+	 * activation of firmware. If the firmware supports this, cache the
+	 * response for indicating to the user later. Otherwise, assume that
+	 * a full power cycle is required.
+	 */
+	if (reset_level && last_cmd && module == ICE_SR_1ST_NVM_BANK_PTR) {
+		if (hw->dev_caps.common_cap.pcie_reset_avoidance) {
+			*reset_level = (event.desc.params.nvm.cmd_flags &
+					ICE_AQC_NVM_RESET_LVL_M);
+			dev_dbg(dev, "Firmware reported required reset level as %u\n",
+				*reset_level);
+		} else {
+			*reset_level = ICE_AQC_NVM_POR_FLAG;
+			dev_dbg(dev, "Firmware doesn't support indicating required reset level. Assuming a power cycle is required\n");
+		}
+	}
+
 	return 0;
 }
 
@@ -345,6 +383,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
  * @component: the name of the component being updated
  * @image: buffer of image data to write to the NVM
  * @length: length of the buffer
+ * @reset_level: storage for reset level required
  * @extack: netlink extended ACK structure
  *
  * Loop over the data for a given NVM module and program it in 4 Kb
@@ -357,7 +396,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
  */
 static int
 ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
-		     const u8 *image, u32 length,
+		     const u8 *image, u32 length, u8 *reset_level,
 		     struct netlink_ext_ack *extack)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -391,7 +430,8 @@ ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 		memcpy(block, image + offset, block_size);
 
 		err = ice_write_one_nvm_block(pf, module, offset, block_size,
-					      block, last_cmd, extack);
+					      block, last_cmd, reset_level,
+					      extack);
 		if (err)
 			break;
 
@@ -507,6 +547,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
  * ice_switch_flash_banks - Tell firmware to switch NVM banks
  * @pf: Pointer to the PF data structure
  * @activate_flags: flags used for the activation command
+ * @emp_reset_available: on return, indicates if EMP reset is available
  * @extack: netlink extended ACK structure
  *
  * Notify firmware to activate the newly written flash banks, and wait for the
@@ -514,18 +555,20 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
  *
  * Returns: zero on success or an error code on failure.
  */
-static int ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
-				  struct netlink_ext_ack *extack)
+static int
+ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
+		       u8 *emp_reset_available, struct netlink_ext_ack *extack)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_rq_event_info event;
 	struct ice_hw *hw = &pf->hw;
 	u16 completion_retval;
+	u8 response_flags;
 	int err;
 
 	memset(&event, 0, sizeof(event));
 
-	err = ice_nvm_write_activate(hw, activate_flags);
+	err = ice_nvm_write_activate(hw, activate_flags, &response_flags);
 	if (err) {
 		dev_err(dev, "Failed to switch active flash banks, err %d aq_err %s\n",
 			err, ice_aq_str(hw->adminq.sq_last_status));
@@ -533,6 +576,22 @@ static int ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 		return -EIO;
 	}
 
+	/* Newer versions of firmware have support to indicate whether an EMP
+	 * reset to reload firmware is available. For older firmware, EMP
+	 * reset is always available.
+	 */
+	if (emp_reset_available) {
+		if (hw->dev_caps.common_cap.reset_restrict_support) {
+			*emp_reset_available = response_flags & ICE_AQC_NVM_EMPR_ENA;
+			dev_dbg(dev, "Firmware indicated that EMP reset is %s\n",
+				*emp_reset_available ?
+				"available" : "not available");
+		} else {
+			*emp_reset_available = ICE_AQC_NVM_EMPR_ENA;
+			dev_dbg(dev, "Firmware does not support restricting EMP reset availability\n");
+		}
+	}
+
 	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write_activate, 30 * HZ,
 				    &event);
 	if (err) {
@@ -573,6 +632,7 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
 	struct netlink_ext_ack *extack = priv->extack;
 	struct ice_pf *pf = priv->pf;
 	const char *name;
+	u8 *reset_level;
 	u16 module;
 	u8 flag;
 	int err;
@@ -581,16 +641,19 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
 	case NVM_COMP_ID_OROM:
 		module = ICE_SR_1ST_OROM_BANK_PTR;
 		flag = ICE_AQC_NVM_ACTIV_SEL_OROM;
+		reset_level = NULL;
 		name = "fw.undi";
 		break;
 	case NVM_COMP_ID_NVM:
 		module = ICE_SR_1ST_NVM_BANK_PTR;
 		flag = ICE_AQC_NVM_ACTIV_SEL_NVM;
+		reset_level = &priv->reset_level;
 		name = "fw.mgmt";
 		break;
 	case NVM_COMP_ID_NETLIST:
 		module = ICE_SR_NETLIST_BANK_PTR;
 		flag = ICE_AQC_NVM_ACTIV_SEL_NETLIST;
+		reset_level = NULL;
 		name = "fw.netlist";
 		break;
 	default:
@@ -610,7 +673,8 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
 		return err;
 
 	return ice_write_nvm_module(pf, module, name, component->component_data,
-				    component->component_size, extack);
+				    component->component_size, reset_level,
+				    extack);
 }
 
 /**
@@ -628,9 +692,48 @@ static int ice_finalize_update(struct pldmfw *context)
 	struct ice_fwu_priv *priv = container_of(context, struct ice_fwu_priv, context);
 	struct netlink_ext_ack *extack = priv->extack;
 	struct ice_pf *pf = priv->pf;
+	struct devlink *devlink;
+	int err;
 
 	/* Finally, notify firmware to activate the written NVM banks */
-	return ice_switch_flash_banks(pf, priv->activate_flags, extack);
+	err = ice_switch_flash_banks(pf, priv->activate_flags,
+				     &priv->emp_reset_available, extack);
+	if (err)
+		return err;
+
+	devlink = priv_to_devlink(pf);
+
+	/* If the required reset is EMPR, but EMPR is disabled, report that
+	 * a reboot is required instead.
+	 */
+	if (priv->reset_level == ICE_AQC_NVM_EMPR_FLAG &&
+	    !priv->emp_reset_available) {
+		dev_dbg(ice_pf_to_dev(pf), "Firmware indicated EMP reset as sufficient, but EMP reset is disabled\n");
+		priv->reset_level = ICE_AQC_NVM_PERST_FLAG;
+	}
+
+	switch (priv->reset_level) {
+	case ICE_AQC_NVM_EMPR_FLAG:
+		devlink_flash_update_status_notify(devlink,
+						   "Activate new firmware by devlink reload",
+						   NULL, 0, 0);
+		break;
+	case ICE_AQC_NVM_PERST_FLAG:
+		devlink_flash_update_status_notify(devlink,
+						   "Activate new firmware by rebooting the system",
+						   NULL, 0, 0);
+		break;
+	case ICE_AQC_NVM_POR_FLAG:
+	default:
+		devlink_flash_update_status_notify(devlink,
+						   "Activate new firmware by power cycling the system",
+						   NULL, 0, 0);
+		break;
+	}
+
+	pf->fw_emp_reset_disabled = !priv->emp_reset_available;
+
+	return 0;
 }
 
 static const struct pldmfw_ops ice_fwu_ops = {
@@ -642,25 +745,22 @@ static const struct pldmfw_ops ice_fwu_ops = {
 };
 
 /**
- * ice_cancel_pending_update - Cancel any pending update for a component
+ * ice_get_pending_updates - Check if the component has a pending update
  * @pf: the PF driver structure
- * @component: if not NULL, the name of the component being updated
- * @extack: Netlink extended ACK structure
+ * @pending: on return, bitmap of updates pending
+ * @extack: Netlink extended ACK
  *
- * Cancel any pending update for the specified component. If component is
- * NULL, all device updates will be canceled.
+ * Check if the device has any pending updates on any flash components.
  *
- * Returns: zero on success, or a negative error code on failure.
+ * Returns: zero on success, or a negative error code on failure. Updates
+ * pending with the bitmap of pending updates.
  */
-static int
-ice_cancel_pending_update(struct ice_pf *pf, const char *component,
-			  struct netlink_ext_ack *extack)
+int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
+			    struct netlink_ext_ack *extack)
 {
-	struct devlink *devlink = priv_to_devlink(pf);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw_dev_caps *dev_caps;
 	struct ice_hw *hw = &pf->hw;
-	u8 pending = 0;
 	int err;
 
 	dev_caps = kzalloc(sizeof(*dev_caps), GFP_KERNEL);
@@ -679,23 +779,53 @@ ice_cancel_pending_update(struct ice_pf *pf, const char *component,
 		return err;
 	}
 
+	*pending = 0;
+
 	if (dev_caps->common_cap.nvm_update_pending_nvm) {
 		dev_info(dev, "The fw.mgmt flash component has a pending update\n");
-		pending |= ICE_AQC_NVM_ACTIV_SEL_NVM;
+		*pending |= ICE_AQC_NVM_ACTIV_SEL_NVM;
 	}
 
 	if (dev_caps->common_cap.nvm_update_pending_orom) {
 		dev_info(dev, "The fw.undi flash component has a pending update\n");
-		pending |= ICE_AQC_NVM_ACTIV_SEL_OROM;
+		*pending |= ICE_AQC_NVM_ACTIV_SEL_OROM;
 	}
 
 	if (dev_caps->common_cap.nvm_update_pending_netlist) {
 		dev_info(dev, "The fw.netlist flash component has a pending update\n");
-		pending |= ICE_AQC_NVM_ACTIV_SEL_NETLIST;
+		*pending |= ICE_AQC_NVM_ACTIV_SEL_NETLIST;
 	}
 
 	kfree(dev_caps);
 
+	return 0;
+}
+
+/**
+ * ice_cancel_pending_update - Cancel any pending update for a component
+ * @pf: the PF driver structure
+ * @component: if not NULL, the name of the component being updated
+ * @extack: Netlink extended ACK structure
+ *
+ * Cancel any pending update for the specified component. If component is
+ * NULL, all device updates will be canceled.
+ *
+ * Returns: zero on success, or a negative error code on failure.
+ */
+static int
+ice_cancel_pending_update(struct ice_pf *pf, const char *component,
+			  struct netlink_ext_ack *extack)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	u8 pending;
+	int err;
+
+	err = ice_get_pending_updates(pf, &pending, extack);
+	if (err)
+		return err;
+
 	/* If the flash_update request is for a specific component, ignore all
 	 * of the other components.
 	 */
@@ -730,10 +860,15 @@ ice_cancel_pending_update(struct ice_pf *pf, const char *component,
 	}
 
 	pending |= ICE_AQC_NVM_REVERT_LAST_ACTIV;
-	err = ice_switch_flash_banks(pf, pending, extack);
+	err = ice_switch_flash_banks(pf, pending, NULL, extack);
 
 	ice_release_nvm(hw);
 
+	/* Since we've canceled the pending update, we no longer know if EMP
+	 * reset is restricted.
+	 */
+	pf->fw_emp_reset_disabled = false;
+
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
index be6d222124f2..750574885716 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
@@ -7,5 +7,7 @@
 int ice_devlink_flash_update(struct devlink *devlink,
 			     struct devlink_flash_update_params *params,
 			     struct netlink_ext_ack *extack);
+int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
+			    struct netlink_ext_ack *extack);
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d0c43f98bf58..86b1b8463a34 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6527,6 +6527,14 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	dev_dbg(dev, "rebuilding PF after reset_type=%d\n", reset_type);
 
+	if (reset_type == ICE_RESET_EMPR) {
+		/* If an EMP reset has occurred, any previously pending flash
+		 * update will have completed. We no longer know whether or
+		 * not the NVM update EMP reset is restricted.
+		 */
+		pf->fw_emp_reset_disabled = false;
+	}
+
 	err = ice_init_all_ctrlq(hw);
 	if (err) {
 		dev_err(dev, "control queues init failed %d\n", err);
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index c5a39aa8ac94..b8be46c6a062 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -1112,22 +1112,35 @@ int ice_nvm_validate_checksum(struct ice_hw *hw)
 /**
  * ice_nvm_write_activate
  * @hw: pointer to the HW struct
- * @cmd_flags: NVM activate admin command bits (banks to be validated)
+ * @cmd_flags: flags for write activate command
+ * @response_flags: response indicators from firmware
  *
  * Update the control word with the required banks' validity bits
  * and dumps the Shadow RAM to flash (0x0707)
+ *
+ * cmd_flags controls which banks to activate, and the preservation level to
+ * use when activating the NVM bank.
+ *
+ * On successful return of the firmware command, the response_flags variable
+ * is updated with the flags reported by firmware indicating certain status,
+ * such as whether EMP reset is enabled.
  */
-int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags)
+int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags, u8 *response_flags)
 {
 	struct ice_aqc_nvm *cmd;
 	struct ice_aq_desc desc;
+	int err;
 
 	cmd = &desc.params.nvm;
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_write_activate);
 
 	cmd->cmd_flags = cmd_flags;
 
-	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	err = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	if (!err && response_flags)
+		*response_flags = cmd->cmd_flags;
+
+	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index ed5165d24cb1..738546ca09d2 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -38,7 +38,7 @@ ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
 int
 ice_aq_erase_nvm(struct ice_hw *hw, u16 module_typeid, struct ice_sq_cd *cd);
 int ice_nvm_validate_checksum(struct ice_hw *hw);
-int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags);
+int ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags, u8 *response_flags);
 int ice_aq_nvm_update_empr(struct ice_hw *hw);
 int
 ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8 *data,
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b8644adfba78..58b1907e3ff1 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -278,6 +278,10 @@ struct ice_hw_common_caps {
 #define ICE_NVM_PENDING_NETLIST			BIT(2)
 	bool nvm_unified_update;
 #define ICE_NVM_MGMT_UNIFIED_UPD_SUPPORT	BIT(3)
+	/* PCIe reset avoidance */
+	bool pcie_reset_avoidance;
+	/* Post update reset restriction */
+	bool reset_restrict_support;
 };
 
 /* IEEE 1588 TIME_SYNC specific info */
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
