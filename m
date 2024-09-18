Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5E097BC15
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 14:21:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E113423DD;
	Wed, 18 Sep 2024 12:21:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y54sL_H6tdGo; Wed, 18 Sep 2024 12:21:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 456DA42450
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726662062;
	bh=mK1rkzQma791taZ1jNF82d5BJxYqleLTcn7mqQKCp90=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qRh+FpbxwH7je7BfeA0uhuOo0MeNAqiwRkrOwkpzP/hR39HtVRVXX2W0GXp/Jq+Hn
	 dYdcR25t96FrC8ma/qQc/PS36cbZfsyA50rhoJ4GeQ2meHgPXqpZUazmFJVRFkWCzb
	 1nHxDN7kT4LBPChI2Gx5OCpY+cXcVqHCOku/W3h62K4ml3wK/UNjjYL+JCKiYvWKVS
	 5gPZLGRSayk85kL0V4UDR+GIFwNUdpnfI1WyOBHq/BC0I+7YdMSTJkE4TKp2t5pZR2
	 Z/Rf7AsoacFwlANjweshEbmMaPv5lbdq2Jm3bFvCjdit8PG9eXlwUsrVjS+Vg2++lt
	 XN5/shH137K5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 456DA42450;
	Wed, 18 Sep 2024 12:21:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62C321BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5191B84857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyHi9RBvq-qF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2024 12:20:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 253B784854
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 253B784854
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 253B784854
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:20:57 +0000 (UTC)
X-CSE-ConnectionGUID: zwk7CPd0SjGCirzQ9pQ6AQ==
X-CSE-MsgGUID: +mMTAU2hSlOfozEctm9V+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25689210"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25689210"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 05:20:58 -0700
X-CSE-ConnectionGUID: XQPShb99T96aynD5DF46ag==
X-CSE-MsgGUID: mtKR9x3jRxGuZFrXuxvp/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69636445"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa008.fm.intel.com with ESMTP; 18 Sep 2024 05:20:55 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Sep 2024 14:12:30 +0200
Message-ID: <20240918122048.1554692-11-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240918122048.1554692-9-karol.kolacinski@intel.com>
References: <20240918122048.1554692-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726662059; x=1758198059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UYbl63DVfDSG+TLIFjHT1e5kdZUwOyVsYN+7+vciyLk=;
 b=nXxGdHEuO0mkKOUP6vwbo1kD5C+LM1k4pzDuWVakeeoSk6PjtcAf+V8p
 cd+lIKcPcNPJVOi6vH57dXXjtEO1FZd4as7TTyiogr8YXNDSOD7rNHwgz
 hlRlraT3g+74YuBLKz3j+zhGuIZlS3aK1+sQX7AVAGRXozgeiTR6COCCM
 MZtg0IX94kVc9MJiuEpwznRvAMTIP3VSV/0BDGv99YOWSVHvyTtVI2ukd
 t771jQH7p14qH1m7X6oBnpTsNmP6NEpEVBu4w1a9/MzrzfCWbMy4pfIuH
 E4Wk/g4QN8/DvfnVbsPGrW/+BIFcwNWmtbxNX6Si4psBOy/vIJz1FIf3w
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nXxGdHEu
Subject: [Intel-wired-lan] [PATCH v11 iwl-next 2/7] ice: Remove unncecessary
 ice_is_e8xx() functions
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove unnecessary ice_is_e8xx() functions and PHY model. Instead, use
MAC type where applicable.

Don't check device type in ice_ptp_maybe_trigger_tx_interrupt(), because
in reality it depends on the ready bitmap, which only E810 does not
have.

Call ice_ptp_cfg_phy_interrupt() unconditionally, because all further
function calls check the MAC type anyway and this allows simpler code
in the future with addition of the new MAC types.

Reorder ICE_MAC_* cases in switches in ice_ptp* as in enum ice_mac_type.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V9 -> V10: Fixed E825C MAC condition in ice_parse_1588_func_caps()
V8 -> V9: Fixed compilation issue after rebase
V7 -> V8: Added reordering of ICE_MAC_* cases in switches and explained the rest
          of previous changes in the commit description

 drivers/net/ethernet/intel/ice/ice.h        |   5 -
 drivers/net/ethernet/intel/ice/ice_common.c | 120 +----------------
 drivers/net/ethernet/intel/ice/ice_common.h |   5 -
 drivers/net/ethernet/intel/ice/ice_ddp.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 137 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 138 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  20 +--
 drivers/net/ethernet/intel/ice/ice_type.h   |   9 --
 8 files changed, 155 insertions(+), 283 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index d2235e8bfea4..7be903d5fbc7 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1047,10 +1047,5 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
 	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
 }
 
-static inline enum ice_phy_model ice_get_phy_model(const struct ice_hw *hw)
-{
-	return hw->ptp.phy_model;
-}
-
 extern const struct xdp_metadata_ops ice_xdp_md_ops;
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 71a75d27affd..3ea46e64f463 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -182,10 +182,10 @@ static int ice_set_mac_type(struct ice_hw *hw)
 }
 
 /**
- * ice_is_generic_mac - check if device's mac_type is generic
+ * ice_is_generic_mac
  * @hw: pointer to the hardware structure
  *
- * Return: true if mac_type is generic (with SBQ support), false if not
+ * Return: true if mac_type is ICE_MAC_GENERIC*, false otherwise.
  */
 bool ice_is_generic_mac(struct ice_hw *hw)
 {
@@ -193,120 +193,6 @@ bool ice_is_generic_mac(struct ice_hw *hw)
 		hw->mac_type == ICE_MAC_GENERIC_3K_E825);
 }
 
-/**
- * ice_is_e810
- * @hw: pointer to the hardware structure
- *
- * returns true if the device is E810 based, false if not.
- */
-bool ice_is_e810(struct ice_hw *hw)
-{
-	return hw->mac_type == ICE_MAC_E810;
-}
-
-/**
- * ice_is_e810t
- * @hw: pointer to the hardware structure
- *
- * returns true if the device is E810T based, false if not.
- */
-bool ice_is_e810t(struct ice_hw *hw)
-{
-	switch (hw->device_id) {
-	case ICE_DEV_ID_E810C_SFP:
-		switch (hw->subsystem_device_id) {
-		case ICE_SUBDEV_ID_E810T:
-		case ICE_SUBDEV_ID_E810T2:
-		case ICE_SUBDEV_ID_E810T3:
-		case ICE_SUBDEV_ID_E810T4:
-		case ICE_SUBDEV_ID_E810T6:
-		case ICE_SUBDEV_ID_E810T7:
-			return true;
-		}
-		break;
-	case ICE_DEV_ID_E810C_QSFP:
-		switch (hw->subsystem_device_id) {
-		case ICE_SUBDEV_ID_E810T2:
-		case ICE_SUBDEV_ID_E810T3:
-		case ICE_SUBDEV_ID_E810T5:
-			return true;
-		}
-		break;
-	default:
-		break;
-	}
-
-	return false;
-}
-
-/**
- * ice_is_e822 - Check if a device is E822 family device
- * @hw: pointer to the hardware structure
- *
- * Return: true if the device is E822 based, false if not.
- */
-bool ice_is_e822(struct ice_hw *hw)
-{
-	switch (hw->device_id) {
-	case ICE_DEV_ID_E822C_BACKPLANE:
-	case ICE_DEV_ID_E822C_QSFP:
-	case ICE_DEV_ID_E822C_SFP:
-	case ICE_DEV_ID_E822C_10G_BASE_T:
-	case ICE_DEV_ID_E822C_SGMII:
-	case ICE_DEV_ID_E822L_BACKPLANE:
-	case ICE_DEV_ID_E822L_SFP:
-	case ICE_DEV_ID_E822L_10G_BASE_T:
-	case ICE_DEV_ID_E822L_SGMII:
-		return true;
-	default:
-		return false;
-	}
-}
-
-/**
- * ice_is_e823
- * @hw: pointer to the hardware structure
- *
- * returns true if the device is E823-L or E823-C based, false if not.
- */
-bool ice_is_e823(struct ice_hw *hw)
-{
-	switch (hw->device_id) {
-	case ICE_DEV_ID_E823L_BACKPLANE:
-	case ICE_DEV_ID_E823L_SFP:
-	case ICE_DEV_ID_E823L_10G_BASE_T:
-	case ICE_DEV_ID_E823L_1GBE:
-	case ICE_DEV_ID_E823L_QSFP:
-	case ICE_DEV_ID_E823C_BACKPLANE:
-	case ICE_DEV_ID_E823C_QSFP:
-	case ICE_DEV_ID_E823C_SFP:
-	case ICE_DEV_ID_E823C_10G_BASE_T:
-	case ICE_DEV_ID_E823C_SGMII:
-		return true;
-	default:
-		return false;
-	}
-}
-
-/**
- * ice_is_e825c - Check if a device is E825C family device
- * @hw: pointer to the hardware structure
- *
- * Return: true if the device is E825-C based, false if not.
- */
-bool ice_is_e825c(struct ice_hw *hw)
-{
-	switch (hw->device_id) {
-	case ICE_DEV_ID_E825C_BACKPLANE:
-	case ICE_DEV_ID_E825C_QSFP:
-	case ICE_DEV_ID_E825C_SFP:
-	case ICE_DEV_ID_E825C_SGMII:
-		return true;
-	default:
-		return false;
-	}
-}
-
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
@@ -2311,7 +2197,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 	info->tmr_index_owned = ((number & ICE_TS_TMR_IDX_OWND_M) != 0);
 	info->tmr_index_assoc = ((number & ICE_TS_TMR_IDX_ASSOC_M) != 0);
 
-	if (!ice_is_e825c(hw)) {
+	if (hw->mac_type != ICE_MAC_GENERIC_3K_E825) {
 		info->clk_freq = FIELD_GET(ICE_TS_CLK_FREQ_M, number);
 		info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
 	} else {
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index b8ec795854ec..9a2c6d178ad5 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -133,7 +133,6 @@ int
 ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
 			struct ice_sq_cd *cd);
 bool ice_is_generic_mac(struct ice_hw *hw);
-bool ice_is_e810(struct ice_hw *hw);
 int ice_clear_pf_cfg(struct ice_hw *hw);
 int
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
@@ -275,10 +274,6 @@ ice_stat_update40(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 void
 ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 		  u64 *prev_stat, u64 *cur_stat);
-bool ice_is_e810t(struct ice_hw *hw);
-bool ice_is_e822(struct ice_hw *hw);
-bool ice_is_e823(struct ice_hw *hw);
-bool ice_is_e825c(struct ice_hw *hw);
 int
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 272fd823a825..016fcab6ba34 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -2321,14 +2321,14 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
 			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
 					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
 
-		if (ice_is_e825c(hw))
+		if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
 			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 	} else {
 		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
 		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
 	}
 
-	if (!ice_is_e825c(hw))
+	if (hw->mac_type != ICE_MAC_GENERIC_3K_E825)
 		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 74de7d8b17ac..46988640a6c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1292,20 +1292,20 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
-	if (ice_is_e810(hw))
-		return 0;
-
 	mutex_lock(&ptp_port->ps_lock);
 
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		err = ice_stop_phy_timer_eth56g(hw, port, true);
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
+		err = 0;
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
 		err = ice_stop_phy_timer_e82x(hw, port, true);
 		break;
+	case ICE_MAC_GENERIC_3K_E825:
+		err = ice_stop_phy_timer_eth56g(hw, port, true);
+		break;
 	default:
 		err = -ENODEV;
 	}
@@ -1335,19 +1335,16 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	unsigned long flags;
 	int err;
 
-	if (ice_is_e810(hw))
-		return 0;
-
 	if (!ptp_port->link_up)
 		return ice_ptp_port_phy_stop(ptp_port);
 
 	mutex_lock(&ptp_port->ps_lock);
 
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		err = ice_start_phy_timer_eth56g(hw, port);
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
+		err = 0;
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		/* Start the PHY timer in Vernier mode */
 		kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
@@ -1372,6 +1369,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 		kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work,
 					   0);
 		break;
+	case ICE_MAC_GENERIC_3K_E825:
+		err = ice_start_phy_timer_eth56g(hw, port);
+		break;
 	default:
 		err = -ENODEV;
 	}
@@ -1403,7 +1403,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 		return;
 
 	ptp_port = &pf->ptp.port;
-	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825 && hw->ptp.is_2x50g_muxed_topo)
 		port *= 2;
 	if (WARN_ON_ONCE(ptp_port->port_num != port))
 		return;
@@ -1414,12 +1414,13 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	/* Skip HW writes if reset is in progress */
 	if (pf->hw.reset_ongoing)
 		return;
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_E810:
+
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		/* Do not reconfigure E810 PHY */
 		return;
-	case ICE_PHY_ETH56G:
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
+	case ICE_MAC_GENERIC_3K_E825:
 		ice_ptp_port_phy_restart(ptp_port);
 		return;
 	default:
@@ -1447,46 +1448,44 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 
 	ice_ptp_reset_ts_memory(hw);
 
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G: {
-		int port;
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
+		return 0;
+	case ICE_MAC_GENERIC: {
+		int quad;
 
-		for (port = 0; port < hw->ptp.num_lports; port++) {
+		for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports);
+		     quad++) {
 			int err;
 
-			err = ice_phy_cfg_intr_eth56g(hw, port, ena, threshold);
+			err = ice_phy_cfg_intr_e82x(hw, quad, ena, threshold);
 			if (err) {
-				dev_err(dev, "Failed to configure PHY interrupt for port %d, err %d\n",
-					port, err);
+				dev_err(dev, "Failed to configure PHY interrupt for quad %d, err %d\n",
+					quad, err);
 				return err;
 			}
 		}
 
 		return 0;
 	}
-	case ICE_PHY_E82X: {
-		int quad;
+	case ICE_MAC_GENERIC_3K_E825: {
+		int port;
 
-		for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports);
-		     quad++) {
+		for (port = 0; port < hw->ptp.num_lports; port++) {
 			int err;
 
-			err = ice_phy_cfg_intr_e82x(hw, quad, ena, threshold);
+			err = ice_phy_cfg_intr_eth56g(hw, port, ena, threshold);
 			if (err) {
-				dev_err(dev, "Failed to configure PHY interrupt for quad %d, err %d\n",
-					quad, err);
+				dev_err(dev, "Failed to configure PHY interrupt for port %d, err %d\n",
+					port, err);
 				return err;
 			}
 		}
 
 		return 0;
 	}
-	case ICE_PHY_E810:
-		return 0;
-	case ICE_PHY_UNSUP:
+	case ICE_MAC_UNKNOWN:
 	default:
-		dev_warn(dev, "%s: Unexpected PHY model %d\n", __func__,
-			 ice_get_phy_model(hw));
 		return -EOPNOTSUPP;
 	}
 }
@@ -1711,7 +1710,7 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 	/* 0. Reset mode & out_en in AUX_OUT */
 	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), 0);
 
-	if (ice_is_e825c(hw)) {
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
 		int err;
 
 		/* Enable/disable CGU 1PPS output for E825C */
@@ -1794,7 +1793,7 @@ static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 		return ice_ptp_write_perout(hw, rq->index, gpio_pin, 0, 0);
 
 	if (strncmp(pf->ptp.pin_desc[pin_desc_idx].name, "1PPS", 64) == 0 &&
-	    period != NSEC_PER_SEC && hw->ptp.phy_model == ICE_PHY_E82X) {
+	    period != NSEC_PER_SEC && hw->mac_type == ICE_MAC_GENERIC) {
 		dev_err(ice_pf_to_dev(pf), "1PPS pin supports only 1 s period\n");
 		return -EOPNOTSUPP;
 	}
@@ -2048,7 +2047,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	/* For Vernier mode on E82X, we need to recalibrate after new settime.
 	 * Start with marking timestamps as invalid.
 	 */
-	if (ice_get_phy_model(hw) == ICE_PHY_E82X) {
+	if (hw->mac_type == ICE_MAC_GENERIC) {
 		err = ice_ptp_clear_phy_offset_ready_e82x(hw);
 		if (err)
 			dev_warn(ice_pf_to_dev(pf), "Failed to mark timestamps as invalid before settime\n");
@@ -2072,7 +2071,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	ice_ptp_enable_all_perout(pf);
 
 	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
-	if (ice_get_phy_model(hw) == ICE_PHY_E82X)
+	if (hw->mac_type == ICE_MAC_GENERIC)
 		ice_ptp_restart_all_phy(pf);
 exit:
 	if (err) {
@@ -2526,7 +2525,7 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
 
 #endif /* CONFIG_ICE_HWTS */
-	if (ice_is_e825c(&pf->hw)) {
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
 		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
 	} else {
@@ -2614,10 +2613,17 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	info->enable = ice_ptp_gpio_enable;
 	info->verify = ice_verify_pin;
 
-	if (ice_is_e810(&pf->hw))
+	switch (pf->hw.mac_type) {
+	case ICE_MAC_E810:
 		ice_ptp_set_funcs_e810(pf);
-	else
+		return;
+	case ICE_MAC_GENERIC:
+	case ICE_MAC_GENERIC_3K_E825:
 		ice_ptp_set_funcs_e82x(pf);
+		return;
+	default:
+		return;
+	}
 }
 
 /**
@@ -2747,7 +2753,7 @@ static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
 	bool trigger_oicr = false;
 	unsigned int i;
 
-	if (ice_is_e810(hw))
+	if (!pf->ptp.port.tx.has_ready_bitmap)
 		return;
 
 	if (!ice_pf_src_tmr_owned(pf))
@@ -2886,14 +2892,12 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
 	 */
 	ice_ptp_flush_all_tx_tracker(pf);
 
-	if (!ice_is_e810(hw)) {
-		/* Enable quad interrupts */
-		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
-		if (err)
-			return err;
+	/* Enable quad interrupts */
+	err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
+	if (err)
+		return err;
 
-		ice_ptp_restart_all_phy(pf);
-	}
+	ice_ptp_restart_all_phy(pf);
 
 	/* Re-enable all periodic outputs and external timestamp events */
 	ice_ptp_enable_all_perout(pf);
@@ -2941,8 +2945,9 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 static bool ice_is_primary(struct ice_hw *hw)
 {
-	return ice_is_e825c(hw) && ice_is_dual(hw) ?
-		!!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M) : true;
+	return hw->mac_type == ICE_MAC_GENERIC_3K_E825 && ice_is_dual(hw) ?
+		       !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M) :
+		       true;
 }
 
 static int ice_ptp_setup_adapter(struct ice_pf *pf)
@@ -2960,7 +2965,7 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
 	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
 	struct ice_ptp *ptp = &pf->ptp;
 
-	if (WARN_ON(!ctrl_ptp) || ice_get_phy_model(&pf->hw) == ICE_PHY_UNSUP)
+	if (WARN_ON(!ctrl_ptp) || pf->hw.mac_type == ICE_MAC_UNKNOWN)
 		return -ENODEV;
 
 	INIT_LIST_HEAD(&ptp->port.list_node);
@@ -2977,7 +2982,7 @@ static void ice_ptp_cleanup_pf(struct ice_pf *pf)
 {
 	struct ice_ptp *ptp = &pf->ptp;
 
-	if (ice_get_phy_model(&pf->hw) != ICE_PHY_UNSUP) {
+	if (pf->hw.mac_type != ICE_MAC_UNKNOWN) {
 		mutex_lock(&pf->adapter->ports.lock);
 		list_del(&ptp->port.list_node);
 		mutex_unlock(&pf->adapter->ports.lock);
@@ -3104,18 +3109,18 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 
 	mutex_init(&ptp_port->ps_lock);
 
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
-					      ptp_port->port_num);
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		kthread_init_delayed_work(&ptp_port->ov_work,
 					  ice_ptp_wait_for_offsets);
 
 		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
 					    ptp_port->port_num);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
+					      ptp_port->port_num);
 	default:
 		return -ENODEV;
 	}
@@ -3132,8 +3137,8 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
  */
 static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
 {
-	switch (ice_get_phy_model(&pf->hw)) {
-	case ICE_PHY_E82X:
+	switch (pf->hw.mac_type) {
+	case ICE_MAC_GENERIC:
 		/* E822 based PHY has the clock owner process the interrupt
 		 * for all ports.
 		 */
@@ -3189,7 +3194,7 @@ void ice_ptp_init(struct ice_pf *pf)
 		goto err_exit;
 
 	ptp->port.port_num = hw->pf_id;
-	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825 && hw->ptp.is_2x50g_muxed_topo)
 		ptp->port.port_num = hw->pf_id * 2;
 
 	err = ice_ptp_init_port(pf, &ptp->port);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 04286e872b24..0fc4092fd261 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -748,7 +748,7 @@ static int ice_init_cgu_e82x(struct ice_hw *hw)
 	int err;
 
 	/* Disable sticky lock detection so lock err reported is accurate */
-	if (ice_is_e825c(hw))
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
 		err = ice_cfg_cgu_pll_dis_sticky_bits_e825c(hw);
 	else
 		err = ice_cfg_cgu_pll_dis_sticky_bits_e82x(hw);
@@ -758,7 +758,7 @@ static int ice_init_cgu_e82x(struct ice_hw *hw)
 	/* Configure the CGU PLL using the parameters from the function
 	 * capabilities.
 	 */
-	if (ice_is_e825c(hw))
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825)
 		err = ice_cfg_cgu_pll_e825c(hw, ts_info->time_ref,
 					    (enum ice_clk_src)ts_info->clk_src);
 	else
@@ -829,8 +829,8 @@ static u32 ice_ptp_tmr_cmd_to_port_reg(struct ice_hw *hw,
 	/* Certain hardware families share the same register values for the
 	 * port register and source timer register.
 	 */
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ice_ptp_tmr_cmd_to_src_reg(hw, cmd) & TS_CMD_MASK_E810;
 	default:
 		break;
@@ -2697,7 +2697,6 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
 	struct ice_eth56g_params *params;
 	u8 phy;
 
-	ptp->phy_model = ICE_PHY_ETH56G;
 	params = &ptp->phy.eth56g;
 	params->onestep_ena = false;
 	params->peer_delay = 0;
@@ -2715,7 +2714,6 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
 
 		err = ice_read_phy_eth56g(hw, phy, PHY_REG_REVISION, &phy_rev);
 		if (err || phy_rev != PHY_REVISION_ETH56G) {
-			ptp->phy_model = ICE_PHY_UNSUP;
 			return;
 		}
 	}
@@ -4774,7 +4772,6 @@ int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold)
  */
 static void ice_ptp_init_phy_e82x(struct ice_ptp_hw *ptp)
 {
-	ptp->phy_model = ICE_PHY_E82X;
 	ptp->num_lports = 8;
 	ptp->ports_per_phy = 8;
 }
@@ -5309,16 +5306,14 @@ int ice_ptp_read_sdp_ac(struct ice_hw *hw, __le16 *entries, uint *num_entries)
  */
 static void ice_ptp_init_phy_e810(struct ice_ptp_hw *ptp)
 {
-	ptp->phy_model = ICE_PHY_E810;
 	ptp->num_lports = 8;
 	ptp->ports_per_phy = 4;
 }
 
 /* Device agnostic functions
  *
- * The following functions implement shared behavior common to both E822 and
- * E810 devices, possibly calling a device specific implementation where
- * necessary.
+ * The following functions implement shared behavior common to all devices,
+ * possibly calling a device specific implementation where necessary.
  */
 
 /**
@@ -5381,14 +5376,19 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 {
 	struct ice_ptp_hw *ptp = &hw->ptp;
 
-	if (ice_is_e822(hw) || ice_is_e823(hw))
-		ice_ptp_init_phy_e82x(ptp);
-	else if (ice_is_e810(hw))
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		ice_ptp_init_phy_e810(ptp);
-	else if (ice_is_e825c(hw))
+		break;
+	case ICE_MAC_GENERIC:
+		ice_ptp_init_phy_e82x(ptp);
+		break;
+	case ICE_MAC_GENERIC_3K_E825:
 		ice_ptp_init_phy_e825c(hw);
-	else
-		ptp->phy_model = ICE_PHY_UNSUP;
+		break;
+	default:
+		return;
+	}
 }
 
 /**
@@ -5409,11 +5409,11 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 static int ice_ptp_write_port_cmd(struct ice_hw *hw, u8 port,
 				  enum ice_ptp_tmr_cmd cmd)
 {
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		return ice_ptp_write_port_cmd_eth56g(hw, port, cmd);
-	case ICE_PHY_E82X:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC:
 		return ice_ptp_write_port_cmd_e82x(hw, port, cmd);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_ptp_write_port_cmd_eth56g(hw, port, cmd);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5474,8 +5474,8 @@ static int ice_ptp_port_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	u32 port;
 
 	/* PHY models which can program all ports simultaneously */
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ice_ptp_port_cmd_e810(hw, cmd);
 	default:
 		break;
@@ -5553,17 +5553,17 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 
 	/* PHY timers */
 	/* Fill Rx and Tx ports and send msg to PHY */
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		err = ice_ptp_prep_phy_time_eth56g(hw,
-						   (u32)(time & 0xFFFFFFFF));
-		break;
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		err = ice_ptp_prep_phy_time_e82x(hw, time & 0xFFFFFFFF);
 		break;
+	case ICE_MAC_GENERIC_3K_E825:
+		err = ice_ptp_prep_phy_time_eth56g(hw,
+						   (u32)(time & 0xFFFFFFFF));
+		break;
 	default:
 		err = -EOPNOTSUPP;
 	}
@@ -5599,16 +5599,16 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
 
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		err = ice_ptp_prep_phy_incval_eth56g(hw, incval);
-		break;
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		err = ice_ptp_prep_phy_incval_e810(hw, incval);
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		err = ice_ptp_prep_phy_incval_e82x(hw, incval);
 		break;
+	case ICE_MAC_GENERIC_3K_E825:
+		err = ice_ptp_prep_phy_incval_eth56g(hw, incval);
+		break;
 	default:
 		err = -EOPNOTSUPP;
 	}
@@ -5668,16 +5668,16 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), 0);
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), adj);
 
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		err = ice_ptp_prep_phy_adj_eth56g(hw, adj);
-		break;
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		err = ice_ptp_prep_phy_adj_e810(hw, adj);
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		err = ice_ptp_prep_phy_adj_e82x(hw, adj);
 		break;
+	case ICE_MAC_GENERIC_3K_E825:
+		err = ice_ptp_prep_phy_adj_eth56g(hw, adj);
+		break;
 	default:
 		err = -EOPNOTSUPP;
 	}
@@ -5701,13 +5701,13 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
  */
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_read_phy_tstamp_e82x(hw, block, idx, tstamp);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5731,13 +5731,13 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
  */
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		return ice_clear_ptp_tstamp_eth56g(hw, block, idx);
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ice_clear_phy_tstamp_e810(hw, block, idx);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_clear_phy_tstamp_e82x(hw, block, idx);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_clear_ptp_tstamp_eth56g(hw, block, idx);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5794,14 +5794,14 @@ static int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
  */
 void ice_ptp_reset_ts_memory(struct ice_hw *hw)
 {
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		ice_ptp_reset_ts_memory_eth56g(hw);
-		break;
-	case ICE_PHY_E82X:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC:
 		ice_ptp_reset_ts_memory_e82x(hw);
 		break;
-	case ICE_PHY_E810:
+	case ICE_MAC_GENERIC_3K_E825:
+		ice_ptp_reset_ts_memory_eth56g(hw);
+		break;
+	case ICE_MAC_E810:
 	default:
 		return;
 	}
@@ -5823,13 +5823,13 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	/* Clear event err indications for auxiliary pins */
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		return ice_ptp_init_phc_eth56g(hw);
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ice_ptp_init_phc_e810(hw);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_ptp_init_phc_eth56g(hw);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -5848,16 +5848,16 @@ int ice_ptp_init_phc(struct ice_hw *hw)
  */
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 {
-	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
-							  tstamp_ready);
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_get_phy_tx_tstamp_ready_e82x(hw, block,
 							tstamp_ready);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
+							  tstamp_ready);
 		break;
 	default:
 		return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index ca1ef49db4bc..62bd8dafe19c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -432,13 +432,13 @@ int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
 
 static inline u64 ice_prop_delay(const struct ice_hw *hw)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
-		return ICE_E825C_OUT_PROP_DELAY_NS;
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ICE_E810_OUT_PROP_DELAY_NS;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_e82x_pps_delay(ice_e82x_time_ref(hw));
+	case ICE_MAC_GENERIC_3K_E825:
+		return ICE_E825C_OUT_PROP_DELAY_NS;
 	default:
 		return 0;
 	}
@@ -452,13 +452,13 @@ static inline u64 ice_prop_delay(const struct ice_hw *hw)
  */
 static inline u64 ice_get_base_incval(struct ice_hw *hw)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
-		return ICE_ETH56G_NOMINAL_INCVAL;
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ICE_PTP_NOMINAL_INCVAL_E810;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
+	case ICE_MAC_GENERIC_3K_E825:
+		return ICE_ETH56G_NOMINAL_INCVAL;
 	default:
 		return 0;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 45768796691f..82c96513d31f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -860,14 +860,6 @@ union ice_phy_params {
 	struct ice_eth56g_params eth56g;
 };
 
-/* PHY model */
-enum ice_phy_model {
-	ICE_PHY_UNSUP = -1,
-	ICE_PHY_E810 = 1,
-	ICE_PHY_E82X,
-	ICE_PHY_ETH56G,
-};
-
 /* Global Link Topology */
 enum ice_global_link_topo {
 	ICE_LINK_TOPO_UP_TO_2_LINKS,
@@ -877,7 +869,6 @@ enum ice_global_link_topo {
 };
 
 struct ice_ptp_hw {
-	enum ice_phy_model phy_model;
 	union ice_phy_params phy;
 	u8 num_lports;
 	u8 ports_per_phy;
-- 
2.46.0

