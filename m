Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 775D342FE98
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Oct 2021 01:13:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA4B06059D;
	Fri, 15 Oct 2021 23:13:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QIFWSlpvHHRi; Fri, 15 Oct 2021 23:13:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E303760736;
	Fri, 15 Oct 2021 23:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 687621BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 23:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9EE7E40208
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 23:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H4RKc8FSEt9x for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Oct 2021 23:13:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 150A04021C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Oct 2021 23:13:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10138"; a="251452633"
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="251452633"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 16:13:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,376,1624345200"; d="scan'208";a="488609466"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 16:13:38 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 15 Oct 2021 16:13:04 -0700
Message-Id: <20211015231304.3080026-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20211015231304.3080026-1-jacob.e.keller@intel.com>
References: <20211015231304.3080026-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v3 2/2] ice: support immediate
 firmware activation via devlink reload
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In order to complete a device flash update for the ice device, the
system administrator currently must perform a system reboot. This is not
ideal, as rebooting the entire system can cause unwanted downtime.

In many cases, it is possible to update the device firmware immediately
using what is known as an EMP reset. This can be used to complete
a device firmware update without the undesired effects caused by a full
platform reboot.

We can implement support for this in userspace using the devlink reload
command. Implement this command for the ice driver so that a devlink
reload with the FW_ACTIVATE reload action. This enables the
administrator to request a firmware activation after performing a flash
update.

Unfortunately, it is not always possible to complete an update with
a simple EMP reset. In some cases, the update cannot be completed
without performing either a full power on or a cold PCIe reset. In these
cases a system reboot is the only known way to complete the update.

When actually writing the flash device, newer versions of firmware can
inform the driver about whether an EMP reset is sufficient. It does this
using two mechanisms, which are detected via firmware capability bits.

The first is known as PCIe reset avoidance, and the second is known as
indication of reset restriction.

If the firmware supports these capabilities, it will be able to indicate
to the driver when an EMP reset is sufficient to complete an update.

The minimum required reset level is provided as part of the response to
the final NVM module block write. This reset level indicates what reset
is required in order to properly initialize the firmware given the
contents that were updated in the NVM.

The availability of EMP reset is indicated as part of the response to
asking firmware to switch flash backs for the next load.

Track these responses in the private structure when performing a flash
update. After finalizing the update, add a status notification to inform
the user of the required reset needed to switch the running firmware.

Also track whether or not the EMP reset is available for use during
reload. If firmware reported that it is available, an EMP reset can be
requested using the appropriate firmware command.

Add support for devlink reload, and allow the user to request a reload
to the new firmware using the FW_ACTIVIATE flag. If an EMP reset is
available from firmware, we will attempt to load the newly activated
firmware.

In some cases, such as older firmware versions which do not check or
report whether EMP reset is suitable, the driver may not be able to
determine when an EMP reset is available. In this case, whether an EMP
reset is sufficient or not. In this case, we will always attempt the EMP
reset.

Finally, this change does *not* implement basic driver-only reload
support. I did look into trying to do this. However, it requires
significant refactor of how the ice driver probes and loads everything.
The ice driver probe and allocation flows were not designed with such
a reload in mind.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---

Changes since v2
* ensure DEVLINK_F_RELOAD gets set
* rebase to avoid conflicts

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   7 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  12 ++
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  91 ++++++++++
 .../net/ethernet/intel/ice/ice_fw_update.c    | 166 +++++++++++++++---
 .../net/ethernet/intel/ice/ice_fw_update.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 7 files changed, 261 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2fc2208be9de..6c0bf0f41a4c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -557,6 +557,7 @@ struct ice_pf {
 	spinlock_t aq_wait_lock;
 	struct hlist_head aq_wait_list;
 	wait_queue_head_t aq_wait_queue;
+	bool fw_empr_disabled;
 
 	wait_queue_head_t reset_wait_queue;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index a8909c01bd59..d79578f01d18 100644
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
@@ -1424,6 +1426,11 @@ struct ice_aqc_nvm {
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
index 3ab115c3bdf9..53c2fdc909ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2067,6 +2067,18 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
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
index c64286aad7be..80e4a747b220 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -370,8 +370,98 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	return err;
 }
 
+/**
+ * ice_devlink_reload_down - Start reload
+ * @devlink: pointer to the devlink instance to reload
+ * @netns_change: if true, the network namespace is changing
+ * @action: the action to perform. Must be DEVLINK_RELOAD_ACTION_FW_ACTIVATE
+ * @limit: limits on what reload should do, such as not resetting
+ * @extack: netlink extended ACK structure
+ *
+ * Command issued by devlink core to perform a reload. This driver only
+ * supports firmware activation.
+ */
+static int
+ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
+			enum devlink_reload_action action,
+			enum devlink_reload_limit limit,
+			struct netlink_ext_ack *extack)
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
+	if (!pending) {
+		NL_SET_ERR_MSG_MOD(extack, "No pending firmware update");
+		return -ECANCELED;
+	}
+
+	if (pf->fw_empr_disabled) {
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
+ * ice_devlink_reload_up - Finish reload
+ * @devlink: pointer to the devlink instance reloading
+ * @action: the action requested
+ * @limit: limits imposed by userspace, such as not resetting
+ * @actions_performed: on return, indicate what actions actually performed
+ * @extack: netlink extended ACK structure
+ *
+ * Complete a reload, such as waiting for the driver to come back up. The ice
+ * driver only supports firmware activation, which requires a device reset.
+ */
+static int
+ice_devlink_reload_up(struct devlink *devlink,
+		      enum devlink_reload_action action,
+		      enum devlink_reload_limit limit,
+		      u32 *actions_performed,
+		      struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	int err;
+
+	*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
+
+	err = ice_wait_for_reset(pf, 20 * HZ);
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack, "Device still resetting");
+		return err;
+	}
+
+	/* After a device reset is complete, we no longer know whether the EMP
+	 * reset is restricted.
+	 */
+	pf->fw_empr_disabled = false;
+
+	return 0;
+}
+
 static const struct devlink_ops ice_devlink_ops = {
 	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
+	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
+	.reload_down = ice_devlink_reload_down,
+	.reload_up = ice_devlink_reload_up,
 	.eswitch_mode_get = ice_eswitch_mode_get,
 	.eswitch_mode_set = ice_eswitch_mode_set,
 	.info_get = ice_devlink_info_get,
@@ -516,6 +606,7 @@ void ice_devlink_register(struct ice_pf *pf)
 	struct device *dev = ice_pf_to_dev(pf);
 	int err;
 
+	devlink_set_features(devlink, DEVLINK_F_RELOAD);
 	devlink_register(devlink);
 
 	err = devlink_params_register(devlink, ice_devlink_params,
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 1f8e0e5d5660..e947fd6d8daa 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -16,6 +16,12 @@ struct ice_fwu_priv {
 
 	/* Track which NVM banks to activate at the end of the update */
 	u8 activate_flags;
+
+	/* Track the firmware response of reset level required */
+	u8 reset_level;
+
+	/* Track if EMP reset is available */
+	u8 empr_available;
 };
 
 /**
@@ -257,6 +263,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
  * @block_size: size of the block to write, up to 4k
  * @block: pointer to block of data to write
  * @last_cmd: whether this is the last command
+ * @reset_level: storage for reset level required
  * @extack: netlink extended ACK structure
  *
  * Write a block of data to a flash module, and await for the completion
@@ -269,7 +276,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
 static int
 ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 			u16 block_size, u8 *block, bool last_cmd,
-			struct netlink_ext_ack *extack)
+			u8 *reset_level, struct netlink_ext_ack *extack)
 {
 	u16 completion_module, completion_retval;
 	struct device *dev = ice_pf_to_dev(pf);
@@ -335,6 +342,24 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
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
 
@@ -345,6 +370,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
  * @component: the name of the component being updated
  * @image: buffer of image data to write to the NVM
  * @length: length of the buffer
+ * @reset_level: storage for reset level required
  * @extack: netlink extended ACK structure
  *
  * Loop over the data for a given NVM module and program it in 4 Kb
@@ -357,7 +383,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
  */
 static int
 ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
-		     const u8 *image, u32 length,
+		     const u8 *image, u32 length, u8 *reset_level,
 		     struct netlink_ext_ack *extack)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -391,7 +417,8 @@ ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 		memcpy(block, image + offset, block_size);
 
 		err = ice_write_one_nvm_block(pf, module, offset, block_size,
-					      block, last_cmd, extack);
+					      block, last_cmd, reset_level,
+					      extack);
 		if (err)
 			break;
 
@@ -507,6 +534,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
  * ice_switch_flash_banks - Tell firmware to switch NVM banks
  * @pf: Pointer to the PF data structure
  * @activate_flags: flags used for the activation command
+ * @empr_available: on return, indicates of EMP reset is available
  * @extack: netlink extended ACK structure
  *
  * Notify firmware to activate the newly written flash banks, and wait for the
@@ -514,8 +542,9 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
  *
  * Returns: zero on success or an error code on failure.
  */
-static int ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
-				  struct netlink_ext_ack *extack)
+static int
+ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
+		       u8 *empr_available, struct netlink_ext_ack *extack)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_rq_event_info event;
@@ -550,6 +579,23 @@ static int ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 		return -EIO;
 	}
 
+	/* Newer versions of firmware have support to indicate whether an EMP
+	 * reset to reload firmware is available. For older firmware, EMP
+	 * reset is always available.
+	 */
+	if (empr_available) {
+		if (hw->dev_caps.common_cap.reset_restrict_support) {
+			*empr_available = (event.desc.params.nvm.cmd_flags &
+					   ICE_AQC_NVM_EMPR_ENA);
+			dev_dbg(dev, "Firmware indicated that EMP reset is %s\n",
+				*empr_available ?
+				"available" : "not available");
+		} else {
+			*empr_available = true;
+			dev_dbg(dev, "Firmware does not support restricting EMP reset availability\n");
+		}
+	}
+
 	return 0;
 }
 
@@ -573,6 +619,7 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
 	struct netlink_ext_ack *extack = priv->extack;
 	struct ice_pf *pf = priv->pf;
 	const char *name;
+	u8 *reset_level;
 	u16 module;
 	u8 flag;
 	int err;
@@ -581,16 +628,19 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
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
@@ -610,7 +660,8 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
 		return err;
 
 	return ice_write_nvm_module(pf, module, name, component->component_data,
-				    component->component_size, extack);
+				    component->component_size, reset_level,
+				    extack);
 }
 
 /**
@@ -628,9 +679,48 @@ static int ice_finalize_update(struct pldmfw *context)
 	struct ice_fwu_priv *priv = container_of(context, struct ice_fwu_priv, context);
 	struct netlink_ext_ack *extack = priv->extack;
 	struct ice_pf *pf = priv->pf;
+	struct devlink *devlink;
+	int err;
 
 	/* Finally, notify firmware to activate the written NVM banks */
-	return ice_switch_flash_banks(pf, priv->activate_flags, extack);
+	err = ice_switch_flash_banks(pf, priv->activate_flags,
+				     &priv->empr_available, extack);
+	if (err)
+		return err;
+
+	devlink = priv_to_devlink(pf);
+
+	/* If the required reset is EMPR, but EMPR is disabled, report that
+	 * a reboot is required instead.
+	 */
+	if (priv->reset_level == ICE_AQC_NVM_EMPR_FLAG &&
+	    !priv->empr_available) {
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
+	pf->fw_empr_disabled = !priv->empr_available;
+
+	return 0;
 }
 
 static const struct pldmfw_ops ice_fwu_ops = {
@@ -642,25 +732,22 @@ static const struct pldmfw_ops ice_fwu_ops = {
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
@@ -679,23 +766,53 @@ ice_cancel_pending_update(struct ice_pf *pf, const char *component,
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
@@ -730,10 +847,15 @@ ice_cancel_pending_update(struct ice_pf *pf, const char *component,
 	}
 
 	pending |= ICE_AQC_NVM_REVERT_LAST_ACTIV;
-	err = ice_switch_flash_banks(pf, pending, extack);
+	err = ice_switch_flash_banks(pf, pending, NULL, extack);
 
 	ice_release_nvm(hw);
 
+	/* Since we've canceled the pending update, we no longer know if EMP
+	 * reset is restricted.
+	 */
+	pf->fw_empr_disabled = false;
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
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b8644adfba78..669702b16ef5 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -278,6 +278,10 @@ struct ice_hw_common_caps {
 #define ICE_NVM_PENDING_NETLIST			BIT(2)
 	bool nvm_unified_update;
 #define ICE_NVM_MGMT_UNIFIED_UPD_SUPPORT	BIT(3)
+	/* PCIe reset avoidance */
+	bool pcie_reset_avoidance; /* false: not supported, true: supported */
+	/* Post update reset restriction */
+	bool reset_restrict_support; /* false: not supported, true: supported */
 };
 
 /* IEEE 1588 TIME_SYNC specific info */
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
