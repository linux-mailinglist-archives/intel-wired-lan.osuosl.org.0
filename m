Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4BE4041E8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 01:49:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 110D782C75;
	Wed,  8 Sep 2021 23:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZDRxqrR3pYoV; Wed,  8 Sep 2021 23:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C6E882C3C;
	Wed,  8 Sep 2021 23:49:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 583E31BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 616A2605CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BWVkjz8n2YzY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 23:49:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EEEB96070E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 23:49:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="306193168"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="306193168"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 16:49:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="693729503"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 16:49:34 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Sep 2021 16:49:24 -0700
Message-Id: <20210908234924.3416592-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210908234924.3416592-1-jacob.e.keller@intel.com>
References: <20210908234924.3416592-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next 4/4] ice: support immediate firmware
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
update. After finalizing the update, determine the required reset by
checking the two responses. If both the minimum required reset is an EMP
reset and the EMP reset is available, we will be able to reload
immediately.

Use these values within the devlink reload implementation. First, check
if there even is a pending flash update. Then, check the required reset
level. In the event that we know an EMP reset is not sufficient, issue
an appropriate extended ACK message to inform the user.

Otherwise, attempt to issue an EMP reset. This will cause the standard
driver reset handling to run, so the reload up implementation simply
uses the wait_for_reset function to wait until the driver reset has
completed.

In some cases, such as older firmware versions, the driver may not be
able to determine whether an EMP reset is sufficient or not. In this
case, we will always attempt the EMP reset as it may be sufficient.

Finally, this change does *not* implement basic driver-only reload
support. I did look into trying to do this. However, it requires
significant refactor of how the ice driver probes and loads everything.
The ice driver probe and allocation flows were not designed with such
a reload in mind.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   8 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   7 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  12 ++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 105 ++++++++++++++
 .../net/ethernet/intel/ice/ice_fw_update.c    | 137 +++++++++++++++---
 .../net/ethernet/intel/ice/ice_fw_update.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 7 files changed, 252 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 4be0828b4972..62e93f9b11de 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -432,6 +432,13 @@ struct ice_agg_node {
 	u8 valid;
 };
 
+enum ice_fw_activate {
+	ICE_FW_ACTIVATE_UNKNOWN = 0, /* Unknown activation requirement */
+	ICE_FW_ACTIVATE_ON_POR, /* Activate by power on */
+	ICE_FW_ACTIVATE_ON_PCIR, /* Activate by PCI reset */
+	ICE_FW_ACTIVATE_ON_EMPR, /* Activate by EMP reset */
+};
+
 struct ice_pf {
 	struct pci_dev *pdev;
 
@@ -486,6 +493,7 @@ struct ice_pf {
 	spinlock_t aq_wait_lock;
 	struct hlist_head aq_wait_list;
 	wait_queue_head_t aq_wait_queue;
+	enum ice_fw_activate fw_reset_req;
 
 	wait_queue_head_t reset_wait_queue;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index b1072a47e1b5..0f64fbc9d3e8 100644
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
@@ -1410,6 +1412,11 @@ struct ice_aqc_nvm {
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
index aee4bbd55e4f..93df36ccde51 100644
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
index 40d1d113c1ad..ef98ed09ec5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -372,8 +372,109 @@ static int ice_devlink_info_get(struct devlink *devlink,
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
+	enum ice_status status;
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
+	switch (pf->fw_reset_req) {
+	case ICE_FW_ACTIVATE_ON_POR:
+		NL_SET_ERR_MSG_MOD(extack, "Firmware activation requires power on");
+		return -ECANCELED;
+	case ICE_FW_ACTIVATE_ON_PCIR:
+		NL_SET_ERR_MSG_MOD(extack, "Firmware activation requires cold PCI reset\n");
+		return -ECANCELED;
+	case ICE_FW_ACTIVATE_UNKNOWN:
+		dev_dbg(dev, "Firmware activation requirement unknown, assuming EMP reset is sufficient\n");
+		fallthrough;
+	case ICE_FW_ACTIVATE_ON_EMPR:
+		dev_dbg(dev, "Issuing device EMP reset to activate firmware\n");
+
+		status = ice_aq_nvm_update_empr(hw);
+		if (status) {
+			dev_err(dev, "Failed to trigger EMP device reset to reload firmware, err %s aq_err %s\n",
+				ice_stat_str(status),
+				ice_aq_str(hw->adminq.sq_last_status));
+			NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device reset to reload firmware");
+			return -EIO;
+		}
+
+		break;
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
+	/* After a device reset is complete, we no longer know the activation
+	 * requirement.
+	 */
+	pf->fw_reset_req = ICE_FW_ACTIVATE_UNKNOWN;
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
@@ -533,6 +634,8 @@ int ice_devlink_register(struct ice_pf *pf)
 		return err;
 	}
 
+	devlink_reload_enable(devlink);
+
 	return 0;
 }
 
@@ -546,6 +649,8 @@ void ice_devlink_unregister(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
 
+	devlink_reload_disable(devlink);
+
 	devlink_params_unregister(devlink, ice_devlink_params,
 				  ARRAY_SIZE(ice_devlink_params));
 	devlink_unregister(devlink);
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 18fdf90d21d6..2128e3d358bc 100644
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
@@ -259,6 +265,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
  * @block_size: size of the block to write, up to 4k
  * @block: pointer to block of data to write
  * @last_cmd: whether this is the last command
+ * @reset_level: storage for reset level required
  * @extack: netlink extended ACK structure
  *
  * Write a block of data to a flash module, and await for the completion
@@ -271,7 +278,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
 static int
 ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 			u16 block_size, u8 *block, bool last_cmd,
-			struct netlink_ext_ack *extack)
+			u8 *reset_level, struct netlink_ext_ack *extack)
 {
 	u16 completion_module, completion_retval;
 	struct device *dev = ice_pf_to_dev(pf);
@@ -338,6 +345,16 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 		return -EIO;
 	}
 
+	/* If this is the last command to write the NVM bank, the firmware
+	 * response indicates an expected reset level required to activate the
+	 * new NVM image. We cache this response in order to decide what must
+	 * be done to reload the firmware
+	 */
+	if (reset_level && last_cmd && module == ICE_SR_1ST_NVM_BANK_PTR) {
+		*reset_level = (event.desc.params.nvm.cmd_flags &
+				ICE_AQC_NVM_RESET_LVL_M);
+	}
+
 	return 0;
 }
 
@@ -348,6 +365,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
  * @component: the name of the component being updated
  * @image: buffer of image data to write to the NVM
  * @length: length of the buffer
+ * @reset_level: storage for reset level required
  * @extack: netlink extended ACK structure
  *
  * Loop over the data for a given NVM module and program it in 4 Kb
@@ -360,7 +378,7 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
  */
 static int
 ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
-		     const u8 *image, u32 length,
+		     const u8 *image, u32 length, u8 *reset_level,
 		     struct netlink_ext_ack *extack)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -394,7 +412,8 @@ ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 		memcpy(block, image + offset, block_size);
 
 		err = ice_write_one_nvm_block(pf, module, offset, block_size,
-					      block, last_cmd, extack);
+					      block, last_cmd, reset_level,
+					      extack);
 		if (err)
 			break;
 
@@ -511,6 +530,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
  * ice_switch_flash_banks - Tell firmware to switch NVM banks
  * @pf: Pointer to the PF data structure
  * @activate_flags: flags used for the activation command
+ * @empr_available: on return, indicates of EMP reset is available
  * @extack: netlink extended ACK structure
  *
  * Notify firmware to activate the newly written flash banks, and wait for the
@@ -518,8 +538,9 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
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
@@ -556,6 +577,10 @@ static int ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 		return -EIO;
 	}
 
+	if (empr_available)
+		*empr_available = (event.desc.params.nvm.cmd_flags &
+				   ICE_AQC_NVM_EMPR_ENA);
+
 	return 0;
 }
 
@@ -579,6 +604,7 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
 	struct netlink_ext_ack *extack = priv->extack;
 	struct ice_pf *pf = priv->pf;
 	const char *name;
+	u8 *reset_level;
 	u16 module;
 	u8 flag;
 	int err;
@@ -587,16 +613,19 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
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
@@ -616,7 +645,8 @@ ice_flash_component(struct pldmfw *context, struct pldmfw_component *component)
 		return err;
 
 	return ice_write_nvm_module(pf, module, name, component->component_data,
-				    component->component_size, extack);
+				    component->component_size, reset_level,
+				    extack);
 }
 
 /**
@@ -634,9 +664,39 @@ static int ice_finalize_update(struct pldmfw *context)
 	struct ice_fwu_priv *priv = container_of(context, struct ice_fwu_priv, context);
 	struct netlink_ext_ack *extack = priv->extack;
 	struct ice_pf *pf = priv->pf;
+	struct ice_hw *hw = &pf->hw;
+	int err;
 
 	/* Finally, notify firmware to activate the written NVM banks */
-	return ice_switch_flash_banks(pf, priv->activate_flags, extack);
+	err = ice_switch_flash_banks(pf, priv->activate_flags,
+				     &priv->empr_available, extack);
+	if (err)
+		return err;
+
+	if (hw->dev_caps.common_cap.pcie_reset_avoidance &&
+	    hw->dev_caps.common_cap.reset_restrict_support) {
+		switch (priv->reset_level) {
+		case ICE_AQC_NVM_POR_FLAG:
+			pf->fw_reset_req = ICE_FW_ACTIVATE_ON_POR;
+			break;
+		case ICE_AQC_NVM_PERST_FLAG:
+			pf->fw_reset_req = ICE_FW_ACTIVATE_ON_PCIR;
+			break;
+		case ICE_AQC_NVM_EMPR_FLAG:
+			if (priv->empr_available)
+				pf->fw_reset_req = ICE_FW_ACTIVATE_ON_EMPR;
+			else
+				pf->fw_reset_req = ICE_FW_ACTIVATE_ON_PCIR;
+			break;
+		default:
+			pf->fw_reset_req = ICE_FW_ACTIVATE_UNKNOWN;
+			break;
+		}
+	} else {
+		pf->fw_reset_req = ICE_FW_ACTIVATE_UNKNOWN;
+	}
+
+	return 0;
 }
 
 static const struct pldmfw_ops ice_fwu_ops = {
@@ -648,27 +708,23 @@ static const struct pldmfw_ops ice_fwu_ops = {
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
 	enum ice_status status;
-	u8 pending = 0;
-	int err;
 
 	dev_caps = kzalloc(sizeof(*dev_caps), GFP_KERNEL);
 	if (!dev_caps)
@@ -686,23 +742,51 @@ ice_cancel_pending_update(struct ice_pf *pf, const char *component,
 		return -EIO;
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
@@ -729,7 +813,14 @@ ice_cancel_pending_update(struct ice_pf *pf, const char *component,
 					   component, 0, 0);
 
 	pending |= ICE_AQC_NVM_REVERT_LAST_ACTIV;
-	return ice_switch_flash_banks(pf, pending, extack);
+	err = ice_switch_flash_banks(pf, pending, NULL, extack);
+
+	/* Since we've canceled the pending update, we no longer know the
+	 * activation requirement.
+	 */
+	pf->fw_reset_req = ICE_FW_ACTIVATE_UNKNOWN;
+
+	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
index d12e81a00f11..52e5e085bb5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
@@ -7,5 +7,7 @@
 int ice_flash_pldm_image(struct devlink *devlink,
 			 struct devlink_flash_update_params *params,
 			 struct netlink_ext_ack *extack);
+int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
+			    struct netlink_ext_ack *extack);
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 4249dec389bf..4a3187c3abff 100644
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
