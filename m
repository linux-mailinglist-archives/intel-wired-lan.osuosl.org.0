Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B86CF21A49D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 748498915B;
	Thu,  9 Jul 2020 16:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RvtEidU+vmu; Thu,  9 Jul 2020 16:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A67C489161;
	Thu,  9 Jul 2020 16:20:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BDCC1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2067E893A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2p8mOTjMVaip for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BBE0188A6C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:14 +0000 (UTC)
IronPort-SDR: E8A6qsUhjI4ZZXsbq6EGPSRo3DbPq9ROftJOzZRr2O2YW/BaVuCoOIbfacacIpPNYw7KY8PmRv
 PPiLYwOmwidw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="232906021"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232906021"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:07 -0700
IronPort-SDR: xKef1s583uQqh4BgGOuWwHU03WhaQZ7gAVQBz31yeVDo8l+twk00lT7mN83aM1tKI9rYKjveIU
 myMqzY4xXfZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352061"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:06 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:03 -0700
Message-Id: <20200709161614.61098-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 04/15] ice: Add advanced power mgmt
 for WoL
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

Adds callbacks needed to support advanced power management for Wake on LAN.
Also make ice_pf_state_is_nominal function available for all configurations
not just CONFIG_PCI_IOV.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   3 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  56 +++
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  24 ++
 drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 363 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   3 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  25 --
 10 files changed, 458 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f0c58e3f46a1..a7a758377240 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -426,6 +426,8 @@ struct ice_pf {
 	u16 empr_count;		/* EMP reset count */
 	u16 pfr_count;		/* PF reset count */
 
+	u8 wol_ena : 1;		/* software state of WoL */
+	u32 wakeup_reason;	/* last wakeup reason */
 	struct ice_hw_port_stats stats;
 	struct ice_hw_port_stats stats_prev;
 	struct ice_hw hw;
@@ -574,6 +576,7 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
 const char *ice_stat_str(enum ice_status stat_err);
 const char *ice_aq_str(enum ice_aq_err aq_err);
+bool ice_is_wol_supported(struct ice_pf *pf);
 int
 ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
 		    bool is_tun);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 7066775769eb..c2291cf4dc6e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3322,6 +3322,58 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 	return 0;
 }
 
+/**
+ * ice_get_wol - get current Wake on LAN configuration
+ * @netdev: network interface device structure
+ * @wol: Ethtool structure to retrieve WoL settings
+ */
+static void ice_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
+
+	if (np->vsi->type != ICE_VSI_PF)
+		netdev_warn(netdev, "Wake on LAN is not supported on this interface!\n");
+
+	/* Get WoL settings based on the HW capability */
+	if (ice_is_wol_supported(pf)) {
+		wol->supported = WAKE_MAGIC;
+		wol->wolopts = pf->wol_ena ? WAKE_MAGIC : 0;
+	} else {
+		wol->supported = 0;
+		wol->wolopts = 0;
+	}
+}
+
+/**
+ * ice_set_wol - set Wake on LAN on supported device
+ * @netdev: network interface device structure
+ * @wol: Ethtool structure to set WoL
+ */
+static int ice_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+
+	if (vsi->type != ICE_VSI_PF || !ice_is_wol_supported(pf))
+		return -EOPNOTSUPP;
+
+	/* only magic packet is supported */
+	if (wol->wolopts && wol->wolopts != WAKE_MAGIC)
+		return -EOPNOTSUPP;
+
+	/* Set WoL only if there is a new value */
+	if (pf->wol_ena != !!wol->wolopts) {
+		pf->wol_ena = !!wol->wolopts;
+		device_set_wakeup_enable(ice_pf_to_dev(pf), pf->wol_ena);
+		netdev_dbg(netdev, "WoL magic packet %sabled\n",
+			   pf->wol_ena ? "en" : "dis");
+	}
+
+	return 0;
+}
+
 enum ice_container_type {
 	ICE_RX_CONTAINER,
 	ICE_TX_CONTAINER,
@@ -3805,6 +3857,8 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.get_drvinfo		= ice_get_drvinfo,
 	.get_regs_len		= ice_get_regs_len,
 	.get_regs		= ice_get_regs,
+	.get_wol		= ice_get_wol,
+	.set_wol		= ice_set_wol,
 	.get_msglevel		= ice_get_msglevel,
 	.set_msglevel		= ice_set_msglevel,
 	.self_test		= ice_self_test,
@@ -3847,6 +3901,8 @@ static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
 	.get_drvinfo		= ice_get_drvinfo,
 	.get_regs_len		= ice_get_regs_len,
 	.get_regs		= ice_get_regs,
+	.get_wol		= ice_get_wol,
+	.set_wol		= ice_set_wol,
 	.get_msglevel		= ice_get_msglevel,
 	.set_msglevel		= ice_set_msglevel,
 	.get_link		= ethtool_op_get_link,
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index a9163471dbc0..4dddc5119d6d 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -389,6 +389,15 @@
 #define VSIQF_FD_SIZE(_VSI)                     (0x00462000 + ((_VSI) * 4))
 #define VSIQF_HKEY_MAX_INDEX			12
 #define VSIQF_HLUT_MAX_INDEX			15
+#define PFPM_APM				0x000B8080
+#define PFPM_APM_APME_M				BIT(0)
+#define PFPM_WUFC				0x0009DC00
+#define PFPM_WUFC_MAG_M				BIT(1)
+#define PFPM_WUS				0x0009DB80
+#define PFPM_WUS_LNKC_M				BIT(0)
+#define PFPM_WUS_MAG_M				BIT(1)
+#define PFPM_WUS_MNG_M				BIT(3)
+#define PFPM_WUS_FW_RST_WK_M			BIT(31)
 #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
 #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
 #define PRTRPB_RDPC				0x000AC260
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 340dab5569f2..01d742400f7f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1498,6 +1498,30 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 			vsi_num, ice_stat_str(status));
 }
 
+/**
+ * ice_pf_state_is_nominal - checks the PF for nominal state
+ * @pf: pointer to PF to check
+ *
+ * Check the PF's state for a collection of bits that would indicate
+ * the PF is in a state that would inhibit normal operation for
+ * driver functionality.
+ *
+ * Returns true if PF is in a nominal state, false otherwise
+ */
+bool ice_pf_state_is_nominal(struct ice_pf *pf)
+{
+	DECLARE_BITMAP(check_bits, __ICE_STATE_NBITS) = { 0 };
+
+	if (!pf)
+		return false;
+
+	bitmap_set(check_bits, 0, __ICE_STATE_NOMINAL_CHECK_BITS);
+	if (bitmap_intersects(pf->state, check_bits, __ICE_STATE_NBITS))
+		return false;
+
+	return true;
+}
+
 /**
  * ice_update_eth_stats - Update VSI-specific ethernet statistics counters
  * @vsi: the VSI to be updated
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index d80e6afa4511..981f3a156c24 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -8,6 +8,8 @@
 
 const char *ice_vsi_type_str(enum ice_vsi_type vsi_type);
 
+bool ice_pf_state_is_nominal(struct ice_pf *pf);
+
 void ice_update_eth_stats(struct ice_vsi *vsi);
 
 int ice_vsi_cfg_rxqs(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c0b5f7f83d67..d3f50b41118e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1129,10 +1129,15 @@ static void ice_service_task_complete(struct ice_pf *pf)
 /**
  * ice_service_task_stop - stop service task and cancel works
  * @pf: board private structure
+ *
+ * Return 0 if the __ICE_SERVICE_DIS bit was not already set,
+ * 1 otherwise.
  */
-static void ice_service_task_stop(struct ice_pf *pf)
+static int ice_service_task_stop(struct ice_pf *pf)
 {
-	set_bit(__ICE_SERVICE_DIS, pf->state);
+	int ret;
+
+	ret = test_and_set_bit(__ICE_SERVICE_DIS, pf->state);
 
 	if (pf->serv_tmr.function)
 		del_timer_sync(&pf->serv_tmr);
@@ -1140,6 +1145,7 @@ static void ice_service_task_stop(struct ice_pf *pf)
 		cancel_work_sync(&pf->serv_task);
 
 	clear_bit(__ICE_SERVICE_SCHED, pf->state);
+	return ret;
 }
 
 /**
@@ -2947,6 +2953,27 @@ static int ice_init_interrupt_scheme(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_is_wol_supported - get NVM state of WoL
+ * @pf: board private structure
+ *
+ * Check if WoL is supported based on the HW configuration.
+ * Returns true if NVM supports and enables WoL for this port, false otherwise
+ */
+bool ice_is_wol_supported(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+	u16 wol_ctrl;
+
+	/* A bit set to 1 in the NVM Software Reserved Word 2 (WoL control
+	 * word) indicates WoL is not supported on the corresponding PF ID.
+	 */
+	if (ice_read_sr_word(hw, ICE_SR_NVM_WOL_CFG, &wol_ctrl))
+		return false;
+
+	return !(BIT(hw->pf_id) & wol_ctrl);
+}
+
 /**
  * ice_vsi_recfg_qs - Change the number of queues on a VSI
  * @vsi: VSI being changed
@@ -3296,6 +3323,33 @@ static void ice_request_fw(struct ice_pf *pf)
 	release_firmware(firmware);
 }
 
+/**
+ * ice_print_wake_reason - show the wake up cause in the log
+ * @pf: pointer to the PF struct
+ */
+static void ice_print_wake_reason(struct ice_pf *pf)
+{
+	u32 wus = pf->wakeup_reason;
+	const char *wake_str;
+
+	/* if no wake event, nothing to print */
+	if (!wus)
+		return;
+
+	if (wus & PFPM_WUS_LNKC_M)
+		wake_str = "Link\n";
+	else if (wus & PFPM_WUS_MAG_M)
+		wake_str = "Magic Packet\n";
+	else if (wus & PFPM_WUS_MNG_M)
+		wake_str = "Management\n";
+	else if (wus & PFPM_WUS_FW_RST_WK_M)
+		wake_str = "Firmware Reset\n";
+	else
+		wake_str = "Unknown\n";
+
+	dev_info(ice_pf_to_dev(pf), "Wake reason: %s", wake_str);
+}
+
 /**
  * ice_probe - Device initialization routine
  * @pdev: PCI device information struct
@@ -3479,6 +3533,18 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	ice_verify_cacheline_size(pf);
 
+	/* Save wakeup reason register for later use */
+	pf->wakeup_reason = rd32(hw, PFPM_WUS);
+
+	/* check for a power management event */
+	ice_print_wake_reason(pf);
+
+	/* clear wake status, all bits */
+	wr32(hw, PFPM_WUS, U32_MAX);
+
+	/* Disable WoL at init, wait for user to enable */
+	device_set_wakeup_enable(dev, false);
+
 	/* If no DDP driven features have to be setup, we are done with probe */
 	if (ice_is_safe_mode(pf))
 		goto probe_done;
@@ -3523,9 +3589,72 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 err_exit_unroll:
 	ice_devlink_unregister(pf);
 	pci_disable_pcie_error_reporting(pdev);
+	pci_disable_device(pdev);
 	return err;
 }
 
+/**
+ * ice_set_wake - enable or disable Wake on LAN
+ * @pf: pointer to the PF struct
+ *
+ * Simple helper for WoL control
+ */
+static void ice_set_wake(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+	bool wol = pf->wol_ena;
+
+	/* clear wake state, otherwise new wake events won't fire */
+	wr32(hw, PFPM_WUS, U32_MAX);
+
+	/* enable / disable APM wake up, no RMW needed */
+	wr32(hw, PFPM_APM, wol ? PFPM_APM_APME_M : 0);
+
+	/* set magic packet filter enabled */
+	wr32(hw, PFPM_WUFC, wol ? PFPM_WUFC_MAG_M : 0);
+}
+
+/**
+ * ice_setup_magic_mc_wake - setup device to wake on multicast magic packet
+ * @pf: pointer to the PF struct
+ *
+ * Issue firmware command to enable multicast magic wake, making
+ * sure that any locally administered address (LAA) is used for
+ * wake, and that PF reset doesn't undo the LAA.
+ */
+static void ice_setup_mc_magic_wake(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	enum ice_status status;
+	u8 mac_addr[ETH_ALEN];
+	struct ice_vsi *vsi;
+	u8 flags;
+
+	if (!pf->wol_ena)
+		return;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi)
+		return;
+
+	/* Get current MAC address in case it's an LAA */
+	if (vsi->netdev)
+		ether_addr_copy(mac_addr, vsi->netdev->dev_addr);
+	else
+		ether_addr_copy(mac_addr, vsi->port_info->mac.perm_addr);
+
+	flags = ICE_AQC_MAN_MAC_WR_MC_MAG_EN |
+		ICE_AQC_MAN_MAC_UPDATE_LAA_WOL |
+		ICE_AQC_MAN_MAC_WR_WOL_LAA_PFR_KEEP;
+
+	status = ice_aq_manage_mac_write(hw, mac_addr, flags, NULL);
+	if (status)
+		dev_err(dev, "Failed to enable Multicast Magic Packet wake, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
+}
+
 /**
  * ice_remove - Device removal routine
  * @pdev: PCI device information struct
@@ -3555,8 +3684,10 @@ static void ice_remove(struct pci_dev *pdev)
 	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
+	ice_setup_mc_magic_wake(pf);
 	ice_devlink_destroy_port(pf);
 	ice_vsi_release_all(pf);
+	ice_set_wake(pf);
 	ice_free_irq_msix_misc(pf);
 	ice_for_each_vsi(pf, i) {
 		if (!pf->vsi[i])
@@ -3576,8 +3707,230 @@ static void ice_remove(struct pci_dev *pdev)
 	pci_wait_for_pending_transaction(pdev);
 	ice_clear_interrupt_scheme(pf);
 	pci_disable_pcie_error_reporting(pdev);
+	pci_disable_device(pdev);
+}
+
+/**
+ * ice_shutdown - PCI callback for shutting down device
+ * @pdev: PCI device information struct
+ */
+static void ice_shutdown(struct pci_dev *pdev)
+{
+	struct ice_pf *pf = pci_get_drvdata(pdev);
+
+	ice_remove(pdev);
+
+	if (system_state == SYSTEM_POWER_OFF) {
+		pci_wake_from_d3(pdev, pf->wol_ena);
+		pci_set_power_state(pdev, PCI_D3hot);
+	}
+}
+
+#ifdef CONFIG_PM
+/**
+ * ice_prepare_for_shutdown - prep for PCI shutdown
+ * @pf: board private structure
+ *
+ * Inform or close all dependent features in prep for PCI device shutdown
+ */
+static void ice_prepare_for_shutdown(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+	u32 v;
+
+	/* Notify VFs of impending reset */
+	if (ice_check_sq_alive(hw, &hw->mailboxq))
+		ice_vc_notify_reset(pf);
+
+	dev_dbg(ice_pf_to_dev(pf), "Tearing down internal switch for shutdown\n");
+
+	/* disable the VSIs and their queues that are not already DOWN */
+	ice_pf_dis_all_vsi(pf, false);
+
+	ice_for_each_vsi(pf, v)
+		if (pf->vsi[v])
+			pf->vsi[v]->vsi_num = 0;
+
+	ice_shutdown_all_ctrlq(hw);
+}
+
+/**
+ * ice_reinit_interrupt_scheme - Reinitialize interrupt scheme
+ * @pf: board private structure to reinitialize
+ *
+ * This routine reinitialize interrupt scheme that was cleared during
+ * power management suspend callback.
+ *
+ * This should be called during resume routine to re-allocate the q_vectors
+ * and reacquire interrupts.
+ */
+static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	int ret, v;
+
+	/* Since we clear MSIX flag during suspend, we need to
+	 * set it back during resume...
+	 */
+
+	ret = ice_init_interrupt_scheme(pf);
+	if (ret) {
+		dev_err(dev, "Failed to re-initialize interrupt %d\n", ret);
+		return ret;
+	}
+
+	/* Remap vectors and rings, after successful re-init interrupts */
+	ice_for_each_vsi(pf, v) {
+		if (!pf->vsi[v])
+			continue;
+
+		ret = ice_vsi_alloc_q_vectors(pf->vsi[v]);
+		if (ret)
+			goto err_reinit;
+		ice_vsi_map_rings_to_vectors(pf->vsi[v]);
+	}
+
+	ret = ice_req_irq_msix_misc(pf);
+	if (ret) {
+		dev_err(dev, "Setting up misc vector failed after device suspend %d\n",
+			ret);
+		goto err_reinit;
+	}
+
+	return 0;
+
+err_reinit:
+	while (v--)
+		if (pf->vsi[v])
+			ice_vsi_free_q_vectors(pf->vsi[v]);
+
+	return ret;
+}
+
+/**
+ * ice_suspend
+ * @dev: generic device information structure
+ *
+ * Power Management callback to quiesce the device and prepare
+ * for D3 transition.
+ */
+static int ice_suspend(struct device *dev)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+	struct ice_pf *pf;
+	int disabled, v;
+
+	pf = pci_get_drvdata(pdev);
+
+	if (!ice_pf_state_is_nominal(pf)) {
+		dev_err(dev, "Device is not ready, no need to suspend it\n");
+		return -EBUSY;
+	}
+
+	/* Stop watchdog tasks until resume completion.
+	 * Even though it is most likely that the service task is
+	 * disabled if the device is suspended or down, the service task's
+	 * state is controlled by a different state bit, and we should
+	 * store and honor whatever state that bit is in at this point.
+	 */
+	disabled = ice_service_task_stop(pf);
+
+	/* Already suspended?, then there is nothing to do */
+	if (test_and_set_bit(__ICE_SUSPENDED, pf->state)) {
+		if (!disabled)
+			ice_service_task_restart(pf);
+		return 0;
+	}
+
+	if (test_bit(__ICE_DOWN, pf->state) ||
+	    ice_is_reset_in_progress(pf->state)) {
+		dev_err(dev, "can't suspend device in reset or already down\n");
+		if (!disabled)
+			ice_service_task_restart(pf);
+		return 0;
+	}
+
+	ice_setup_mc_magic_wake(pf);
+
+	ice_prepare_for_shutdown(pf);
+
+	ice_set_wake(pf);
+
+	/* Free vectors, clear the interrupt scheme and release IRQs
+	 * for proper hibernation, especially with large number of CPUs.
+	 * Otherwise hibernation might fail when mapping all the vectors back
+	 * to CPU0.
+	 */
+	ice_free_irq_msix_misc(pf);
+	ice_for_each_vsi(pf, v) {
+		if (!pf->vsi[v])
+			continue;
+		ice_vsi_free_q_vectors(pf->vsi[v]);
+	}
+	ice_clear_interrupt_scheme(pf);
+
+	pci_wake_from_d3(pdev, pf->wol_ena);
+	pci_set_power_state(pdev, PCI_D3hot);
+	return 0;
 }
 
+/**
+ * ice_resume - PM callback for waking up from D3
+ * @dev: generic device information structure
+ */
+static int ice_resume(struct device *dev)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+	enum ice_reset_req reset_type;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	int ret;
+
+	pci_set_power_state(pdev, PCI_D0);
+	pci_restore_state(pdev);
+	pci_save_state(pdev);
+
+	if (!pci_device_is_present(pdev))
+		return -ENODEV;
+
+	ret = pci_enable_device_mem(pdev);
+	if (ret) {
+		dev_err(dev, "Cannot enable device after suspend\n");
+		return ret;
+	}
+
+	pf = pci_get_drvdata(pdev);
+	hw = &pf->hw;
+
+	pf->wakeup_reason = rd32(hw, PFPM_WUS);
+	ice_print_wake_reason(pf);
+
+	/* We cleared the interrupt scheme when we suspended, so we need to
+	 * restore it now to resume device functionality.
+	 */
+	ret = ice_reinit_interrupt_scheme(pf);
+	if (ret)
+		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
+
+	clear_bit(__ICE_DOWN, pf->state);
+	/* Now perform PF reset and rebuild */
+	reset_type = ICE_RESET_PFR;
+	/* re-enable service task for reset, but allow reset to schedule it */
+	clear_bit(__ICE_SERVICE_DIS, pf->state);
+
+	if (ice_schedule_reset(pf, reset_type))
+		dev_err(dev, "Reset during resume failed.\n");
+
+	clear_bit(__ICE_SUSPENDED, pf->state);
+	ice_service_task_restart(pf);
+
+	/* Restart the service task */
+	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf->serv_tmr_period));
+
+	return 0;
+}
+#endif /* CONFIG_PM */
+
 /**
  * ice_pci_err_detected - warning that PCI error has been detected
  * @pdev: PCI device information struct
@@ -3743,6 +4096,8 @@ static const struct pci_device_id ice_pci_tbl[] = {
 };
 MODULE_DEVICE_TABLE(pci, ice_pci_tbl);
 
+static __maybe_unused SIMPLE_DEV_PM_OPS(ice_pm_ops, ice_suspend, ice_resume);
+
 static const struct pci_error_handlers ice_pci_err_handler = {
 	.error_detected = ice_pci_err_detected,
 	.slot_reset = ice_pci_err_slot_reset,
@@ -3756,6 +4111,10 @@ static struct pci_driver ice_driver = {
 	.id_table = ice_pci_tbl,
 	.probe = ice_probe,
 	.remove = ice_remove,
+#ifdef CONFIG_PM
+	.driver.pm = &ice_pm_ops,
+#endif /* CONFIG_PM */
+	.shutdown = ice_shutdown,
 	.sriov_configure = ice_sriov_configure,
 	.err_handler = &ice_pci_err_handler
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index b049c1c30c88..b1172a67573b 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -172,8 +172,7 @@ void ice_release_nvm(struct ice_hw *hw)
  *
  * Reads one 16 bit word from the Shadow RAM using the ice_read_sr_word_aq.
  */
-static enum ice_status
-ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
+enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
 {
 	enum ice_status status;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index 165eda07b93d..e3993c04c97a 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -13,4 +13,5 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 enum ice_status
 ice_read_pba_string(struct ice_hw *hw, u8 *pba_num, u32 pba_num_size);
 enum ice_status ice_init_nvm(struct ice_hw *hw);
+enum ice_status ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data);
 #endif /* _ICE_NVM_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1aaa06c01a55..d14bfb329407 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -736,6 +736,7 @@ enum ice_sw_fwd_act_type {
 
 /* Checksum and Shadow RAM pointers */
 #define ICE_SR_BOOT_CFG_PTR		0x132
+#define ICE_SR_NVM_WOL_CFG		0x19
 #define ICE_NVM_OROM_VER_OFF		0x02
 #define ICE_SR_PBA_BLOCK_PTR		0x16
 #define ICE_SR_NVM_DEV_STARTER_VER	0x18
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0a859ee027f3..0aa0f7084856 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1927,31 +1927,6 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	return ret;
 }
 
-/**
- * ice_pf_state_is_nominal - checks the PF for nominal state
- * @pf: pointer to PF to check
- *
- * Check the PF's state for a collection of bits that would indicate
- * the PF is in a state that would inhibit normal operation for
- * driver functionality.
- *
- * Returns true if PF is in a nominal state.
- * Returns false otherwise
- */
-static bool ice_pf_state_is_nominal(struct ice_pf *pf)
-{
-	DECLARE_BITMAP(check_bits, __ICE_STATE_NBITS) = { 0 };
-
-	if (!pf)
-		return false;
-
-	bitmap_set(check_bits, 0, __ICE_STATE_NOMINAL_CHECK_BITS);
-	if (bitmap_intersects(pf->state, check_bits, __ICE_STATE_NBITS))
-		return false;
-
-	return true;
-}
-
 /**
  * ice_pci_sriov_ena - Enable or change number of VFs
  * @pf: pointer to the PF structure
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
