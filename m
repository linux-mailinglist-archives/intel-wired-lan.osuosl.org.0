Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65088D1BDA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 131A386A0E;
	Wed,  9 Oct 2019 22:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1e80EckovmBD; Wed,  9 Oct 2019 22:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF9F284553;
	Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC1B31BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B34BD883B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sqhjUMPpGXII for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B87988305
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="197052252"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 09 Oct 2019 15:40:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:41 -0700
Message-Id: <20191009140953.14087-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
References: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S31 03/15] ice: Add support for FW
 recovery mode detection
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

This patch adds support for firmware recovery mode detection.

The idea behind FW recovery mode is to recover from a bad FW state,
due to corruption or misconfiguration. The FW triggers recovery mode
by setting the right bits in the GL_MNG_FWSM register and issuing
an EMP reset.

The driver may or may not be loaded when recovery mode is triggered. So
on module load, the driver first checks if the FW is already in recovery
mode. If so, it drops into recovery mode as well, where it creates and
registers a single netdev that only allows a very small set of repair/
diagnostic operations (like updating the FW, checking version, etc.)
through ethtool.

If recovery mode is triggered when the driver is loaded/operational,
the first indication of this in the driver is via the EMP reset event.
As part of processing the reset event, the driver checks the GL_MNG_FWSM
register to determine if recovery mode was triggered. If so, traffic is
stopped, peers are closed and the ethtool ops are updated to allow only
repair/diagnostic operations.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   3 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  52 ++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  20 ++
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 179 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   6 +
 7 files changed, 259 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f48c3ab28ded..54077dc5c028 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -191,6 +191,8 @@ enum ice_state {
 	__ICE_EMPR_RECV,		/* set by OICR handler */
 	__ICE_SUSPENDED,		/* set on module remove path */
 	__ICE_RESET_FAILED,		/* set by reset/rebuild */
+	__ICE_RECOVERY_MODE,		/* set when recovery mode is detected */
+	__ICE_PREPPED_RECOVERY_MODE,	/* set on recovery mode transition */
 	/* When checking for the PF to be in a nominal operating state, the
 	 * bits that are grouped at the beginning of the list need to be
 	 * checked. Bits occurring before __ICE_STATE_NOMINAL_CHECK_BITS will
@@ -497,6 +499,7 @@ static inline struct ice_vsi *ice_get_main_vsi(struct ice_pf *pf)
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
 int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
 void ice_set_ethtool_ops(struct net_device *netdev);
+void ice_set_ethtool_recovery_ops(struct net_device *netdev);
 void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
 u16 ice_get_avail_txq_count(struct ice_pf *pf);
 u16 ice_get_avail_rxq_count(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index eb99ca4099ca..494e51be2eac 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -751,6 +751,25 @@ ice_get_nvm_version(struct ice_hw *hw, u8 *oem_ver, u16 *oem_build,
 	*ver_lo = (nvm->ver & ICE_NVM_VER_LO_MASK) >> ICE_NVM_VER_LO_SHIFT;
 }
 
+/**
+ * ice_print_rollback_msg - print FW rollback message
+ * @hw: pointer to the hardware structure
+ */
+void ice_print_rollback_msg(struct ice_hw *hw)
+{
+	char nvm_str[ICE_NVM_VER_LEN] = { 0 };
+	u8 oem_ver, oem_patch, ver_hi, ver_lo;
+	u16 oem_build;
+
+	ice_get_nvm_version(hw, &oem_ver, &oem_build, &oem_patch, &ver_hi,
+			    &ver_lo);
+	snprintf(nvm_str, sizeof(nvm_str), "%x.%02x 0x%x %d.%d.%d", ver_hi,
+		 ver_lo, hw->nvm.eetrack, oem_ver, oem_build, oem_patch);
+	dev_warn(ice_hw_to_dev(hw),
+		 "Firmware rollback mode detected. Current version is NVM: %s, FW: %d.%d. Device may exhibit limited functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware rollback mode\n",
+		 nvm_str, hw->fw_maj_ver, hw->fw_min_ver);
+}
+
 /**
  * ice_init_hw - main hardware initialization routine
  * @hw: pointer to the hardware structure
@@ -786,16 +805,19 @@ enum ice_status ice_init_hw(struct ice_hw *hw)
 	if (status)
 		ice_debug(hw, ICE_DBG_INIT, "Failed to enable FW logging.\n");
 
-	status = ice_clear_pf_cfg(hw);
+	status = ice_init_nvm(hw);
 	if (status)
 		goto err_unroll_cqinit;
 
-	ice_clear_pxe_mode(hw);
+	if (ice_get_fw_mode(hw) == ICE_FW_MODE_ROLLBACK)
+		ice_print_rollback_msg(hw);
 
-	status = ice_init_nvm(hw);
+	status = ice_clear_pf_cfg(hw);
 	if (status)
 		goto err_unroll_cqinit;
 
+	ice_clear_pxe_mode(hw);
+
 	status = ice_get_caps(hw);
 	if (status)
 		goto err_unroll_cqinit;
@@ -3788,3 +3810,27 @@ ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		ice_debug(hw, ICE_DBG_SCHED, "query element failed\n");
 	return status;
 }
+
+/**
+ * ice_get_fw_mode - returns FW mode
+ * @hw: pointer to the HW struct
+ */
+enum ice_fw_modes ice_get_fw_mode(struct ice_hw *hw)
+{
+#define ICE_FW_MODE_DBG_M BIT(0)
+#define ICE_FW_MODE_REC_M BIT(1)
+#define ICE_FW_MODE_ROLLBACK_M BIT(2)
+	u32 fw_mode;
+
+	/* check the current FW mode */
+	fw_mode = rd32(hw, GL_MNG_FWSM) & GL_MNG_FWSM_FW_MODES_M;
+
+	if (fw_mode & ICE_FW_MODE_DBG_M)
+		return ICE_FW_MODE_DBG;
+	else if (fw_mode & ICE_FW_MODE_REC_M)
+		return ICE_FW_MODE_REC;
+	else if (fw_mode & ICE_FW_MODE_ROLLBACK_M)
+		return ICE_FW_MODE_ROLLBACK;
+	else
+		return ICE_FW_MODE_NORMAL;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index c469d0db5ddc..e416721f5d9a 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -11,6 +11,13 @@
 #include "ice_switch.h"
 #include <linux/avf/virtchnl.h>
 
+enum ice_fw_modes {
+	ICE_FW_MODE_NORMAL,
+	ICE_FW_MODE_DBG,
+	ICE_FW_MODE_REC,
+	ICE_FW_MODE_ROLLBACK
+};
+
 enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw);
 
 void
@@ -153,6 +160,8 @@ ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 void
 ice_get_nvm_version(struct ice_hw *hw, u8 *oem_ver, u16 *oem_build,
 		    u8 *oem_patch, u8 *ver_hi, u8 *ver_lo);
+enum ice_fw_modes ice_get_fw_mode(struct ice_hw *hw);
+void ice_print_rollback_msg(struct ice_hw *hw);
 enum ice_status
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_get_elem *buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 48d13e305d9e..67d884e27ea4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -174,6 +174,10 @@ ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 		sizeof(drvinfo->fw_version));
 	strlcpy(drvinfo->bus_info, pci_name(pf->pdev),
 		sizeof(drvinfo->bus_info));
+
+	if (test_bit(__ICE_RECOVERY_MODE, pf->state))
+		return;
+
 	drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
 }
 
@@ -3725,6 +3729,13 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.get_module_eeprom	= ice_get_module_eeprom,
 };
 
+static const struct ethtool_ops ice_ethtool_recovery_ops = {
+	.get_drvinfo		= ice_get_drvinfo,
+	.get_eeprom_len		= ice_get_eeprom_len,
+	.get_eeprom		= ice_get_eeprom,
+	.set_eeprom		= ice_set_eeprom,
+};
+
 static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
 	.get_link_ksettings	= ice_get_link_ksettings,
 	.set_link_ksettings	= ice_set_link_ksettings,
@@ -3744,6 +3755,15 @@ static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
 	.nway_reset		= ice_nway_reset,
 };
 
+/**
+ * ice_set_ethtool_recovery_ops - setup FW recovery ethtool ops
+ * @netdev: network interface device structure
+ */
+void ice_set_ethtool_recovery_ops(struct net_device *netdev)
+{
+	netdev->ethtool_ops = &ice_ethtool_recovery_ops;
+}
+
 /**
  * ice_set_ethtool_safe_mode_ops - setup safe mode ethtool ops
  * @netdev: network interface device structure
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index d541815230de..ffb008be3fa2 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -270,6 +270,7 @@
 #define VP_MDET_TX_TDPU(_VF)			(0x00040000 + ((_VF) * 4))
 #define VP_MDET_TX_TDPU_VALID_M			BIT(0)
 #define GL_MNG_FWSM				0x000B6134
+#define GL_MNG_FWSM_FW_MODES_M			ICE_M(0x7, 0)
 #define GLNVM_FLA				0x000B6108
 #define GLNVM_FLA_LOCKED_M			BIT(6)
 #define GLNVM_GENS				0x000B6100
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 88b5941ecf5c..3f8f0ad41258 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -41,6 +41,7 @@ MODULE_PARM_DESC(debug, "netif level (0=none,...,16=all)");
 #endif /* !CONFIG_DYNAMIC_DEBUG */
 
 static struct workqueue_struct *ice_wq;
+static const struct net_device_ops ice_netdev_recovery_ops;
 static const struct net_device_ops ice_netdev_safe_mode_ops;
 static const struct net_device_ops ice_netdev_ops;
 
@@ -517,6 +518,133 @@ ice_prepare_for_reset(struct ice_pf *pf)
 	set_bit(__ICE_PREPARED_FOR_RESET, pf->state);
 }
 
+/**
+ * ice_print_recovery_msg - print recovery mode message
+ * @dev: pointer to the device instance
+ */
+static void ice_print_recovery_msg(struct device *dev)
+{
+	dev_err(dev,
+		"Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode\n");
+}
+
+/**
+ * ice_prepare_for_recovery_mode - prepare the driver for FW recovery mode
+ * @pf: pointer to the PF instance
+ */
+static void ice_prepare_for_recovery_mode(struct ice_pf *pf)
+{
+	enum iidc_close_reason reason;
+	struct ice_vsi *vsi;
+
+	ice_print_recovery_msg(&pf->pdev->dev);
+	set_bit(__ICE_RECOVERY_MODE, pf->state);
+
+	vsi = ice_get_main_vsi(pf);
+	if (vsi && vsi->netdev) {
+		ice_set_ethtool_recovery_ops(vsi->netdev);
+		netif_carrier_off(vsi->netdev);
+		netif_tx_stop_all_queues(vsi->netdev);
+	}
+
+	/* close peer devices */
+	reason = IIDC_REASON_RECOVERY_MODE;
+	ice_for_each_peer(pf, &reason, ice_peer_close);
+
+	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags))
+		if (!pci_vfs_assigned(pf->pdev))
+			pci_disable_sriov(pf->pdev);
+
+	set_bit(__ICE_PREPPED_RECOVERY_MODE, pf->state);
+}
+
+/**
+ * ice_remove_recovery_mode - Unload helper when in FW recovery mode
+ * @pf: pointer to the PF instance
+ */
+static void ice_remove_recovery_mode(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+
+	if (vsi && vsi->netdev) {
+		unregister_netdev(vsi->netdev);
+		free_netdev(vsi->netdev);
+		devm_kfree(&pf->pdev->dev, vsi);
+	}
+
+	ice_reset(&pf->hw, ICE_RESET_PFR);
+	pci_disable_pcie_error_reporting(pf->pdev);
+	devm_kfree(&pf->pdev->dev, pf->vsi);
+	devm_kfree(&pf->pdev->dev, pf);
+}
+
+/**
+ * ice_probe_recovery_mode - Load helper when in FW recovery mode
+ * @pf: pointer to the PF instance
+ */
+static int ice_probe_recovery_mode(struct ice_pf *pf)
+{
+	struct device *dev = &pf->pdev->dev;
+	struct ice_netdev_priv *np;
+	struct net_device *netdev;
+	struct ice_vsi *vsi;
+	int err;
+
+	ice_print_recovery_msg(dev);
+	set_bit(__ICE_RECOVERY_MODE, pf->state);
+
+	/* create one single VSI instance and netdev to allow for ethtool
+	 * recovery ops. This VSI cannot be backed by a VSI in the HW as
+	 * the FW is in recovery mode. Thus, no traffic is possible on this
+	 * VSI/netdev
+	 */
+	pf->vsi = devm_kcalloc(dev, 1, sizeof(*pf->vsi), GFP_KERNEL);
+	if (!pf->vsi)
+		return -ENOMEM;
+
+	vsi = devm_kzalloc(dev, sizeof(*vsi), GFP_KERNEL);
+	if (!vsi) {
+		err = -ENOMEM;
+		goto err_vsi;
+	}
+
+	pf->vsi[0] = vsi;
+	vsi->back = pf;
+
+	/* allocate an etherdev with 1 queue pair */
+	netdev = alloc_etherdev(sizeof(*np));
+	if (!netdev) {
+		err = -ENOMEM;
+		goto err_netdev;
+	}
+
+	vsi->netdev = netdev;
+	np = netdev_priv(netdev);
+	np->vsi = vsi;
+	SET_NETDEV_DEV(netdev, dev);
+	eth_hw_addr_random(netdev);
+
+	netdev->netdev_ops = &ice_netdev_recovery_ops;
+	ice_set_ethtool_recovery_ops(netdev);
+
+	err = register_netdev(netdev);
+	if (err)
+		goto err_register;
+
+	netif_carrier_off(netdev);
+	netif_tx_stop_all_queues(netdev);
+
+	return 0;
+
+err_register:
+	free_netdev(netdev);
+err_netdev:
+	devm_kfree(dev, vsi);
+err_vsi:
+	devm_kfree(dev, pf->vsi);
+	return err;
+}
+
 /**
  * ice_do_reset - Initiate one of many types of resets
  * @pf: board private structure
@@ -595,21 +723,32 @@ static void ice_reset_subtask(struct ice_pf *pf)
 		/* make sure we are ready to rebuild */
 		if (ice_check_reset(&pf->hw)) {
 			set_bit(__ICE_RESET_FAILED, pf->state);
-		} else {
-			/* done with reset. start rebuild */
-			pf->hw.reset_ongoing = false;
-			ice_rebuild(pf, reset_type);
-			/* clear bit to resume normal operations, but
-			 * ICE_NEEDS_RESTART bit is set in case rebuild failed
-			 */
 			clear_bit(__ICE_RESET_OICR_RECV, pf->state);
 			clear_bit(__ICE_PREPARED_FOR_RESET, pf->state);
 			clear_bit(__ICE_PFR_REQ, pf->state);
 			clear_bit(__ICE_CORER_REQ, pf->state);
 			clear_bit(__ICE_GLOBR_REQ, pf->state);
-			ice_reset_all_vfs(pf, true);
+			if (ice_get_fw_mode(&pf->hw) == ICE_FW_MODE_REC)
+				ice_prepare_for_recovery_mode(pf);
+			return;
 		}
 
+		/* came out of reset. check if an NVM rollback happened */
+		if (ice_get_fw_mode(&pf->hw) == ICE_FW_MODE_ROLLBACK)
+			ice_print_rollback_msg(&pf->hw);
+
+		/* done with reset. start rebuild */
+		pf->hw.reset_ongoing = false;
+		ice_rebuild(pf, reset_type);
+		/* clear bit to resume normal operations, but
+		 * ICE_NEEDS_RESTART bit is set in case rebuild failed
+		 */
+		clear_bit(__ICE_RESET_OICR_RECV, pf->state);
+		clear_bit(__ICE_PREPARED_FOR_RESET, pf->state);
+		clear_bit(__ICE_PFR_REQ, pf->state);
+		clear_bit(__ICE_CORER_REQ, pf->state);
+		clear_bit(__ICE_GLOBR_REQ, pf->state);
+		ice_reset_all_vfs(pf, true);
 		return;
 	}
 
@@ -1161,6 +1300,7 @@ static void ice_service_task_schedule(struct ice_pf *pf)
 {
 	if (!test_bit(__ICE_SERVICE_DIS, pf->state) &&
 	    !test_and_set_bit(__ICE_SERVICE_SCHED, pf->state) &&
+	    !test_bit(__ICE_RECOVERY_MODE, pf->state) &&
 	    !test_bit(__ICE_NEEDS_RESTART, pf->state))
 		queue_work(ice_wq, &pf->serv_task);
 }
@@ -3222,6 +3362,15 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		hw->debug_mask = debug;
 #endif
 
+	/* check if device FW is in recovery mode */
+	if (ice_get_fw_mode(hw) == ICE_FW_MODE_REC) {
+		err = ice_probe_recovery_mode(pf);
+		if (err)
+			goto err_rec_mode;
+
+		return 0;
+	}
+
 	err = ice_init_hw(hw);
 	if (err) {
 		dev_err(dev, "ice_init_hw failed: %d\n", err);
@@ -3394,6 +3543,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	ice_deinit_pf(pf);
 	ice_deinit_hw(hw);
 err_exit_unroll:
+err_rec_mode:
 	pci_disable_pcie_error_reporting(pdev);
 	return err;
 }
@@ -3411,6 +3561,19 @@ static void ice_remove(struct pci_dev *pdev)
 	if (!pf)
 		return;
 
+	/* __ICE_PREPPED_RECOVERY_MODE is set when the up and running
+	 * driver transitions to recovery mode. If this is not set
+	 * it means that the driver went into recovery mode on load.
+	 * For the former case, go through the usual flow for module
+	 * unload. For the latter, call ice_remove_recovery_mode
+	 * and return.
+	 */
+	if (!test_bit(__ICE_PREPPED_RECOVERY_MODE, pf->state) &&
+	    test_bit(__ICE_RECOVERY_MODE, pf->state)) {
+		ice_remove_recovery_mode(pf);
+		return;
+	}
+
 	for (i = 0; i < ICE_MAX_RESET_WAIT; i++) {
 		if (!ice_is_reset_in_progress(pf->state))
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 5cb809c58609..6fa929eae789 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1419,6 +1419,12 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 {
 	struct ice_pf *pf = pci_get_drvdata(pdev);
 
+	if (test_bit(__ICE_RECOVERY_MODE, pf->state)) {
+		dev_err(&pf->pdev->dev,
+			"SR-IOV cannot be configured - Device is in Recovery Mode\n");
+		return -EOPNOTSUPP;
+	}
+
 	if (ice_is_safe_mode(pf)) {
 		dev_err(&pf->pdev->dev,
 			"SR-IOV cannot be configured - Device is in Safe Mode\n");
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
