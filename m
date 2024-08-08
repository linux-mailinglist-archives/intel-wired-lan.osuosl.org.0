Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C6694BE0B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 14:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2394A60AC4;
	Thu,  8 Aug 2024 12:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vFWdutYXonmd; Thu,  8 Aug 2024 12:58:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1C1E60593
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723121921;
	bh=xPiqwXFk0eFj5ehp+P1wCQ2r1GZqA2yF+nIMa+YgrkQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GsxSxFAetxNJlrF5DER4pJIyutfjxhhFqVQGe7xBpYHymFUbIL3uXQRBVNqYTmZlF
	 e99xu8uz0xPPql7qPnLun81sDkHj8/KlKX4J91T+eLXwwUCr39LV4T+9x6nrJTRbKO
	 0l5Bp/CMZ+o0R3V6wPrMbnqPGMA6aGdcXtc3kvOV+s8d1/tL+nmSFTpjmAZ1JopFyK
	 5sZTQlYLiDwJlNYIBi4JVa1UZV3Wz45GE1Sa2RqjqQOKg1OSsNim0MUCfPOI/ImQr1
	 YHh1TVfBIJ5cbmdiWvE/6XBCwkiIrOGcEd5EN+Bc8yhJay5c5uJitb1CnnAs3gtxLJ
	 rLACoz/UWHK+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1C1E60593;
	Thu,  8 Aug 2024 12:58:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2ADB61BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA7C960AA7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WvGkGXRC55XD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 12:58:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EBE5B60AA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBE5B60AA6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EBE5B60AA6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:58:36 +0000 (UTC)
X-CSE-ConnectionGUID: i/qNSo1bS+K8CaIeXRtecQ==
X-CSE-MsgGUID: 6RmWMpU2QHSF744oaT2Fmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21404755"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="21404755"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 05:58:32 -0700
X-CSE-ConnectionGUID: cp631c/aQ2KIVqmcx4zyFA==
X-CSE-MsgGUID: k9vMaQsQRy+zK8Mpz9LktQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="61595068"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa005.fm.intel.com with ESMTP; 08 Aug 2024 05:58:31 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 14:57:43 +0200
Message-ID: <20240808125825.560093-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240808125825.560093-8-karol.kolacinski@intel.com>
References: <20240808125825.560093-8-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723121917; x=1754657917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/IU+oVW2ica3xhRNHVg1JHP2UsOi/uQPXfsNFCa2GSM=;
 b=dmg2PxyC50nL1yUzcuhE8tXsBhUbi40oWKSoqpgzBsfYnfji7Eg3AJxu
 WOgUx6H1C64Oh0jWfSzcL2wVzh3iLFR6MBwlOvLuqeEVvJa/XiNNmsVWK
 VVC/1tEnETli/2XvchKVr6PoViz50UnDGdgENRXndFSV7yJ+rEE0zyrXP
 ZRuT20EqnqFcDtw6lnEY8yOnrGsRnnsDsYYsVaqXAfSWAy5xDo3vs+QTS
 pHuJNv4+mhvK9krgVwTxc8Qq7RKyd6rZnEn5H/crw8r3RH+AwmgRX7RuC
 ACv4v9AcIJFFTsDxr3r5c2Tl4yNFRga0sYY+vt95XLj4hN6xAvPI+kaFx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dmg2PxyC
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 1/6] ice: Remove unncecessary
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

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 128 +-------------------
 drivers/net/ethernet/intel/ice/ice_common.h |  19 ++-
 drivers/net/ethernet/intel/ice/ice_ddp.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c   |  23 ++--
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  99 ++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 108 ++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  16 +--
 drivers/net/ethernet/intel/ice/ice_type.h   |   9 --
 8 files changed, 139 insertions(+), 267 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..42f516aa52f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -181,132 +181,6 @@ static int ice_set_mac_type(struct ice_hw *hw)
 	return 0;
 }
 
-/**
- * ice_is_generic_mac - check if device's mac_type is generic
- * @hw: pointer to the hardware structure
- *
- * Return: true if mac_type is generic (with SBQ support), false if not
- */
-bool ice_is_generic_mac(struct ice_hw *hw)
-{
-	return (hw->mac_type == ICE_MAC_GENERIC ||
-		hw->mac_type == ICE_MAC_GENERIC_3K_E825);
-}
-
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
@@ -2311,7 +2185,7 @@ ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 	info->tmr_index_owned = ((number & ICE_TS_TMR_IDX_OWND_M) != 0);
 	info->tmr_index_assoc = ((number & ICE_TS_TMR_IDX_ASSOC_M) != 0);
 
-	if (!ice_is_e825c(hw)) {
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
 		info->clk_freq = FIELD_GET(ICE_TS_CLK_FREQ_M, number);
 		info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
 	} else {
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 27208a60cece..84014aa58117 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -132,8 +132,6 @@ ice_update_phy_type(u64 *phy_type_low, u64 *phy_type_high,
 int
 ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
 			struct ice_sq_cd *cd);
-bool ice_is_generic_mac(struct ice_hw *hw);
-bool ice_is_e810(struct ice_hw *hw);
 int ice_clear_pf_cfg(struct ice_hw *hw);
 int
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
@@ -275,10 +273,6 @@ ice_stat_update40(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
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
@@ -306,4 +300,17 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		 u16 bus_addr, __le16 addr, u8 params, const u8 *data,
 		 struct ice_sq_cd *cd);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
+
+/**
+ * ice_is_generic_mac - check if device's mac_type is generic
+ * @hw: pointer to the hardware structure
+ *
+ * Return: true if mac_type is generic (with SBQ support), false if not
+ */
+static inline bool ice_is_generic_mac(const struct ice_hw *hw)
+{
+	return (hw->mac_type == ICE_MAC_GENERIC ||
+		hw->mac_type == ICE_MAC_GENERIC_3K_E825);
+}
+
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 953262b88a58..94a2035b5d42 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -2323,14 +2323,14 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
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
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index f02e8ca55375..dd65b2db9856 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -386,27 +386,22 @@ void ice_gnss_exit(struct ice_pf *pf)
  */
 bool ice_gnss_is_gps_present(struct ice_hw *hw)
 {
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
+	int err;
+	u8 data;
+
 	if (!hw->func_caps.ts_func_info.src_tmr_owned)
 		return false;
 
 	if (!ice_is_gps_in_netlist(hw))
 		return false;
 
-#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
-	if (ice_is_e810t(hw)) {
-		int err;
-		u8 data;
-
-		err = ice_read_pca9575_reg(hw, ICE_PCA9575_P0_IN, &data);
-		if (err || !!(data & ICE_P0_GNSS_PRSNT_N))
-			return false;
-	} else {
+	err = ice_read_pca9575_reg(hw, ICE_PCA9575_P0_IN, &data);
+	if (err || !!(data & ICE_P0_GNSS_PRSNT_N))
 		return false;
-	}
-#else
-	if (!ice_is_e810t(hw))
-		return false;
-#endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 
 	return true;
+#else
+	return false;
+#endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 8ed6280af320..56905b0e43b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1280,20 +1280,20 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
-	if (ice_is_e810(hw))
-		return 0;
-
 	mutex_lock(&ptp_port->ps_lock);
 
-	switch (hw->ptp.phy_model) {
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
@@ -1323,19 +1323,16 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	unsigned long flags;
 	int err;
 
-	if (ice_is_e810(hw))
-		return 0;
-
 	if (!ptp_port->link_up)
 		return ice_ptp_port_phy_stop(ptp_port);
 
 	mutex_lock(&ptp_port->ps_lock);
 
-	switch (hw->ptp.phy_model) {
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
 
@@ -1360,6 +1357,9 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 		kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work,
 					   0);
 		break;
+	case ICE_MAC_GENERIC_3K_E825:
+		err = ice_start_phy_timer_eth56g(hw, port);
+		break;
 	default:
 		err = -ENODEV;
 	}
@@ -1391,7 +1391,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 		return;
 
 	ptp_port = &pf->ptp.port;
-	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825 && hw->ptp.is_2x50g_muxed_topo)
 		port *= 2;
 	if (WARN_ON_ONCE(ptp_port->port_num != port))
 		return;
@@ -1403,12 +1403,12 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	if (pf->hw.reset_ongoing)
 		return;
 
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		/* Do not reconfigure E810 PHY */
 		return;
-	case ICE_PHY_ETH56G:
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC_3K_E825:
+	case ICE_MAC_GENERIC:
 		ice_ptp_port_phy_restart(ptp_port);
 		return;
 	default:
@@ -1436,8 +1436,8 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 
 	ice_ptp_reset_ts_memory(hw);
 
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G: {
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825: {
 		int port;
 
 		for (port = 0; port < hw->ptp.num_lports; port++) {
@@ -1453,7 +1453,7 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 
 		return 0;
 	}
-	case ICE_PHY_E82X: {
+	case ICE_MAC_GENERIC: {
 		int quad;
 
 		for (quad = 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports);
@@ -1470,12 +1470,12 @@ static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 
 		return 0;
 	}
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		return 0;
-	case ICE_PHY_UNSUP:
+	case ICE_MAC_UNKNOWN:
 	default:
 		dev_warn(dev, "%s: Unexpected PHY model %d\n", __func__,
-			 hw->ptp.phy_model);
+			 hw->mac_type);
 		return -EOPNOTSUPP;
 	}
 }
@@ -1705,7 +1705,7 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
 	/* 0. Reset mode & out_en in AUX_OUT */
 	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), 0);
 
-	if (ice_is_e825c(hw)) {
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
 		int err;
 
 		/* Enable/disable CGU 1PPS output for E825C */
@@ -1788,7 +1788,7 @@ static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
 		return ice_ptp_write_perout(hw, rq->index, gpio_pin, 0, 0);
 
 	if (strncmp(pf->ptp.pin_desc[pin_desc_idx].name, "1PPS", 64) == 0 &&
-	    period != NSEC_PER_SEC && hw->ptp.phy_model == ICE_PHY_E82X) {
+	    period != NSEC_PER_SEC && hw->mac_type == ICE_MAC_GENERIC) {
 		dev_err(ice_pf_to_dev(pf), "1PPS pin supports only 1 s period\n");
 		return -EOPNOTSUPP;
 	}
@@ -2046,7 +2046,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	/* For Vernier mode on E82X, we need to recalibrate after new settime.
 	 * Start with marking timestamps as invalid.
 	 */
-	if (hw->ptp.phy_model == ICE_PHY_E82X) {
+	if (hw->mac_type == ICE_MAC_GENERIC) {
 		err = ice_ptp_clear_phy_offset_ready_e82x(hw);
 		if (err)
 			dev_warn(ice_pf_to_dev(pf), "Failed to mark timestamps as invalid before settime\n");
@@ -2070,7 +2070,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	ice_ptp_enable_all_perout(pf);
 
 	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
-	if (hw->ptp.phy_model == ICE_PHY_E82X)
+	if (hw->mac_type == ICE_MAC_GENERIC)
 		ice_ptp_restart_all_phy(pf);
 exit:
 	if (err) {
@@ -2538,7 +2538,7 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
 
 #endif /* CONFIG_ICE_HWTS */
-	if (ice_is_e825c(&pf->hw)) {
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
 		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
 	} else {
@@ -2626,10 +2626,17 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
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
@@ -2759,7 +2766,7 @@ static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
 	bool trigger_oicr = false;
 	unsigned int i;
 
-	if (ice_is_e810(hw))
+	if (!pf->ptp.port.tx.has_ready_bitmap)
 		return;
 
 	if (!ice_pf_src_tmr_owned(pf))
@@ -2898,14 +2905,12 @@ static int ice_ptp_rebuild_owner(struct ice_pf *pf)
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
@@ -3265,13 +3270,13 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 
 	mutex_init(&ptp_port->ps_lock);
 
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
 					      ptp_port->port_num);
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		kthread_init_delayed_work(&ptp_port->ov_work,
 					  ice_ptp_wait_for_offsets);
 
@@ -3363,8 +3368,8 @@ static void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
  */
 static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
 {
-	switch (pf->hw.ptp.phy_model) {
-	case ICE_PHY_E82X:
+	switch (pf->hw.mac_type) {
+	case ICE_MAC_GENERIC:
 		/* E822 based PHY has the clock owner process the interrupt
 		 * for all ports.
 		 */
@@ -3413,7 +3418,7 @@ void ice_ptp_init(struct ice_pf *pf)
 	}
 
 	ptp->port.port_num = hw->pf_id;
-	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825 && hw->ptp.is_2x50g_muxed_topo)
 		ptp->port.port_num = hw->pf_id * 2;
 
 	err = ice_ptp_init_port(pf, &ptp->port);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 6dff422b7f4e..00c6483dbffc 100644
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
-	switch (hw->ptp.phy_model) {
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
@@ -5402,16 +5399,14 @@ int ice_ptp_read_sdp_ac(struct ice_hw *hw, __le16 *entries, uint *num_entries)
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
@@ -5474,14 +5469,19 @@ void ice_ptp_init_hw(struct ice_hw *hw)
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
@@ -5502,10 +5502,10 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 static int ice_ptp_write_port_cmd(struct ice_hw *hw, u8 port,
 				  enum ice_ptp_tmr_cmd cmd)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		return ice_ptp_write_port_cmd_eth56g(hw, port, cmd);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_ptp_write_port_cmd_e82x(hw, port, cmd);
 	default:
 		return -EOPNOTSUPP;
@@ -5567,8 +5567,8 @@ static int ice_ptp_port_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	u32 port;
 
 	/* PHY models which can program all ports simultaneously */
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_E810:
+	switch (hw->mac_type) {
+	case ICE_MAC_E810:
 		return ice_ptp_port_cmd_e810(hw, cmd);
 	default:
 		break;
@@ -5646,15 +5646,15 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 
 	/* PHY timers */
 	/* Fill Rx and Tx ports and send msg to PHY */
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		err = ice_ptp_prep_phy_time_eth56g(hw,
 						   (u32)(time & 0xFFFFFFFF));
 		break;
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		err = ice_ptp_prep_phy_time_e82x(hw, time & 0xFFFFFFFF);
 		break;
 	default:
@@ -5692,14 +5692,14 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
 
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		err = ice_ptp_prep_phy_incval_eth56g(hw, incval);
 		break;
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		err = ice_ptp_prep_phy_incval_e810(hw, incval);
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		err = ice_ptp_prep_phy_incval_e82x(hw, incval);
 		break;
 	default:
@@ -5761,14 +5761,14 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), 0);
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), adj);
 
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		err = ice_ptp_prep_phy_adj_eth56g(hw, adj);
 		break;
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		err = ice_ptp_prep_phy_adj_e810(hw, adj);
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		err = ice_ptp_prep_phy_adj_e82x(hw, adj);
 		break;
 	default:
@@ -5794,12 +5794,12 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
  */
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		return ice_read_ptp_tstamp_eth56g(hw, block, idx, tstamp);
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_read_phy_tstamp_e82x(hw, block, idx, tstamp);
 	default:
 		return -EOPNOTSUPP;
@@ -5824,12 +5824,12 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
  */
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		return ice_clear_ptp_tstamp_eth56g(hw, block, idx);
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		return ice_clear_phy_tstamp_e810(hw, block, idx);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_clear_phy_tstamp_e82x(hw, block, idx);
 	default:
 		return -EOPNOTSUPP;
@@ -5887,14 +5887,14 @@ static int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
  */
 void ice_ptp_reset_ts_memory(struct ice_hw *hw)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		ice_ptp_reset_ts_memory_eth56g(hw);
 		break;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		ice_ptp_reset_ts_memory_e82x(hw);
 		break;
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 	default:
 		return;
 	}
@@ -5916,12 +5916,12 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	/* Clear event err indications for auxiliary pins */
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		return ice_ptp_init_phc_eth56g(hw);
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		return ice_ptp_init_phc_e810(hw);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_ptp_init_phc_e82x(hw);
 	default:
 		return -EOPNOTSUPP;
@@ -5941,14 +5941,14 @@ int ice_ptp_init_phc(struct ice_hw *hw)
  */
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		return ice_get_phy_tx_tstamp_ready_eth56g(hw, block,
 							  tstamp_ready);
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_get_phy_tx_tstamp_ready_e82x(hw, block,
 							tstamp_ready);
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index fc946fcd28b9..8a28155b206f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -436,12 +436,12 @@ int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
 
 static inline u64 ice_prop_delay(const struct ice_hw *hw)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		return ICE_E825C_OUT_PROP_DELAY_NS;
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		return ICE_E810_OUT_PROP_DELAY_NS;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_e82x_pps_delay(ice_e82x_time_ref(hw));
 	default:
 		return 0;
@@ -456,12 +456,12 @@ static inline u64 ice_prop_delay(const struct ice_hw *hw)
  */
 static inline u64 ice_get_base_incval(struct ice_hw *hw)
 {
-	switch (hw->ptp.phy_model) {
-	case ICE_PHY_ETH56G:
+	switch (hw->mac_type) {
+	case ICE_MAC_GENERIC_3K_E825:
 		return ICE_ETH56G_NOMINAL_INCVAL;
-	case ICE_PHY_E810:
+	case ICE_MAC_E810:
 		return ICE_PTP_NOMINAL_INCVAL_E810;
-	case ICE_PHY_E82X:
+	case ICE_MAC_GENERIC:
 		return ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
 	default:
 		return 0;
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
2.45.2

