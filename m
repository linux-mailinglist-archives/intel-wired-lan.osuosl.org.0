Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3509765F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 11:47:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D79E81D2D;
	Thu, 12 Sep 2024 09:47:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vCbCCxZxYcgD; Thu, 12 Sep 2024 09:47:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D693814B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726134452;
	bh=d6dGlfCWYPEWkbXDPakm39LW7juzri5n4hTF3e9ZKaQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ee4S01Gf5n+gn3fLeWzzGGu6xXoZkws2GFAw/VttDXW7TyABg3FmCUmWPYXaQVIwr
	 W/sDH5gQQBp0hcxRqfu4Y1sFyorYkl65VreAnUPJqkHki0wOKrVRHJUiH9gLUOAIkw
	 Y50V+WcW6AGeb9vDUb3B6C2j7zTgP3cEf9qkDEdgScHY/lHjq0YfUGcLYNp7BMzuJz
	 wbaBQdlUs8+dI6NYagRUZ8GeZyUwgGwhT+vki1lmrg4nRa+AlZw8NrG9pTPvnldB2q
	 Y4QDh7Tfauchx0XgHmyumZPlqLZwK5Hx+LDLJMKa4kj2b209oPtWeN4UC5tplS7Zhf
	 yga9RbVMtOMHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D693814B8;
	Thu, 12 Sep 2024 09:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 450AC1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 343C0812E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YH5x2cJLdU7i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 09:47:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0BADF812F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BADF812F8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BADF812F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 09:47:26 +0000 (UTC)
X-CSE-ConnectionGUID: UbHbZfXbSECNs/GLDM+irw==
X-CSE-MsgGUID: LVvo21eeQqKz0eY2rSfW1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36115365"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="36115365"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:47:27 -0700
X-CSE-ConnectionGUID: 7WEWFrzMRG6q39emLXHCnA==
X-CSE-MsgGUID: abvMIcmkRGGrle3QHoBl4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72650652"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa004.jf.intel.com with ESMTP; 12 Sep 2024 02:47:25 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Sep 2024 11:41:46 +0200
Message-ID: <20240912094720.832348-10-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240912094720.832348-9-karol.kolacinski@intel.com>
References: <20240912094720.832348-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726134447; x=1757670447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sNC/tSDoio4BTM9+zIjT5K+kGgfK+m9czsEr7fcjr90=;
 b=bhoV0T/rAODG18EJ9EKJCcHXfJRh+k8qJADZZ+X8UD2TW8CXmdfiAsO3
 bQFQPFkL37s7FkE8tyZETh/srYMm/j4yvE1Ws+9ATdblAETW5x5HX7Xp6
 4wNIImMO8OD16/imBuTt9PJBzfoRvP4I2s150TLlGmMvVWdrRENWh/y7K
 qkSrxW+m+Z6ldU7782WiWFqzAxy6muPrle1Op2E42JAYW1nLnTeQAyG2e
 RW+rR+k3V69JPWmVYlkH0RRpkxErYH/05Q/wTL5MLJCM5cdTg5PL1zNNx
 Pmr1k1MhUlYj26tqgvEvT2s4IlSPiYlEmCvcaOBhqLyeinEbJpH42FNmm
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bhoV0T/r
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 1/7] ice: Don't check device
 type when checking GNSS presence
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

Don't check if the device type is E810T as non-E810T devices can support
GNSS too and PCA9575 check is enough to determine if GNSS is present or
not.

Rename ice_gnss_is_gps_present() to ice_gnss_is_module_present()
because GNSS module supports multiple GNSS providers, not only GPS.

Move functions related to PCA9575 from ice_ptp_hw.c to ice_common.c
to be able to access them when PTP is disabled in the kernel, but GNSS
is enabled.

Remove logical AND with ICE_AQC_LINK_TOPO_NODE_TYPE_M in
ice_get_pca9575_handle(), which has no effect, and reorder device type
checks to check the device_id first, then set other variables.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 90 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h |  2 +
 drivers/net/ethernet/intel/ice/ice_gnss.c   | 29 +++----
 drivers/net/ethernet/intel/ice/ice_gnss.h   |  4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 93 ---------------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 -
 7 files changed, 105 insertions(+), 116 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..71a75d27affd 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5819,6 +5819,96 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
 
+/**
+ * ice_get_pca9575_handle - find and return the PCA9575 controller
+ * @hw: pointer to the hw struct
+ * @pca9575_handle: GPIO controller's handle
+ *
+ * Find and return the GPIO controller's handle in the netlist.
+ * When found - the value will be cached in the hw structure and following calls
+ * will return cached value.
+ *
+ * Return: 0 on success, -ENXIO when there's no PCA9575 present.
+ */
+int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
+{
+	struct ice_aqc_get_link_topo *cmd;
+	struct ice_aq_desc desc;
+	int err;
+	u8 idx;
+
+	/* If handle was read previously return cached value */
+	if (hw->io_expander_handle) {
+		*pca9575_handle = hw->io_expander_handle;
+		return 0;
+	}
+
+#define SW_PCA9575_SFP_TOPO_IDX		2
+#define SW_PCA9575_QSFP_TOPO_IDX	1
+
+	/* Check if the SW IO expander controlling SMA exists in the netlist. */
+	if (hw->device_id == ICE_DEV_ID_E810C_SFP)
+		idx = SW_PCA9575_SFP_TOPO_IDX;
+	else if (hw->device_id == ICE_DEV_ID_E810C_QSFP)
+		idx = SW_PCA9575_QSFP_TOPO_IDX;
+	else
+		return -ENXIO;
+
+	/* If handle was not detected read it from the netlist */
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
+	cmd = &desc.params.get_link_topo;
+	cmd->addr.topo_params.node_type_ctx =
+		ICE_AQC_LINK_TOPO_NODE_TYPE_GPIO_CTRL;
+	cmd->addr.topo_params.index = idx;
+
+	err = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	if (err)
+		return -ENXIO;
+
+	/* Verify if we found the right IO expander type */
+	if (desc.params.get_link_topo.node_part_num !=
+	    ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575)
+		return -ENXIO;
+
+	/* If present save the handle and return it */
+	hw->io_expander_handle =
+		le16_to_cpu(desc.params.get_link_topo.addr.handle);
+	*pca9575_handle = hw->io_expander_handle;
+
+	return 0;
+}
+
+/**
+ * ice_read_pca9575_reg - read the register from the PCA9575 controller
+ * @hw: pointer to the hw struct
+ * @offset: GPIO controller register offset
+ * @data: pointer to data to be read from the GPIO controller
+ *
+ * Return: 0 on success, negative error code otherwise.
+ */
+int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data)
+{
+	struct ice_aqc_link_topo_addr link_topo;
+	__le16 addr;
+	u16 handle;
+	int err;
+
+	memset(&link_topo, 0, sizeof(link_topo));
+
+	err = ice_get_pca9575_handle(hw, &handle);
+	if (err)
+		return err;
+
+	link_topo.handle = cpu_to_le16(handle);
+	link_topo.topo_params.node_type_ctx =
+		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M,
+			   ICE_AQC_LINK_TOPO_NODE_CTX_PROVIDED);
+
+	addr = cpu_to_le16((u16)offset);
+
+	return ice_aq_read_i2c(hw, link_topo, 0, addr, 1, data, NULL);
+}
+
 /**
  * ice_aq_set_gpio
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 27208a60cece..b8ec795854ec 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -305,5 +305,7 @@ int
 ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		 u16 bus_addr, __le16 addr, u8 params, const u8 *data,
 		 struct ice_sq_cd *cd);
+int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle);
+int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index f02e8ca55375..66390eeb2343 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -381,32 +381,23 @@ void ice_gnss_exit(struct ice_pf *pf)
 }
 
 /**
- * ice_gnss_is_gps_present - Check if GPS HW is present
+ * ice_gnss_is_module_present - Check if GPS HW is present
  * @hw: pointer to HW struct
+ *
+ * Return: true when GNSS is present, false otherwise.
  */
-bool ice_gnss_is_gps_present(struct ice_hw *hw)
+bool ice_gnss_is_module_present(struct ice_hw *hw)
 {
-	if (!hw->func_caps.ts_func_info.src_tmr_owned)
-		return false;
+	int err;
+	u8 data;
 
-	if (!ice_is_gps_in_netlist(hw))
+	if (!hw->func_caps.ts_func_info.src_tmr_owned ||
+	    !ice_is_gps_in_netlist(hw))
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
-		return false;
-	}
-#else
-	if (!ice_is_e810t(hw))
+	err = ice_read_pca9575_reg(hw, ICE_PCA9575_P0_IN, &data);
+	if (err || !!(data & ICE_P0_GNSS_PRSNT_N))
 		return false;
-#endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 
 	return true;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index 75e567ad7059..15daf603ed7b 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -37,11 +37,11 @@ struct gnss_serial {
 #if IS_ENABLED(CONFIG_GNSS)
 void ice_gnss_init(struct ice_pf *pf);
 void ice_gnss_exit(struct ice_pf *pf);
-bool ice_gnss_is_gps_present(struct ice_hw *hw);
+bool ice_gnss_is_module_present(struct ice_hw *hw);
 #else
 static inline void ice_gnss_init(struct ice_pf *pf) { }
 static inline void ice_gnss_exit(struct ice_pf *pf) { }
-static inline bool ice_gnss_is_gps_present(struct ice_hw *hw)
+static inline bool ice_gnss_is_module_present(struct ice_hw *hw)
 {
 	return false;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d4e74f96a8ad..0407fec170d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3874,7 +3874,7 @@ void ice_init_feature_support(struct ice_pf *pf)
 			ice_set_feature_support(pf, ICE_F_CGU);
 		if (ice_is_clock_mux_in_netlist(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
-		if (ice_gnss_is_gps_present(&pf->hw))
+		if (ice_gnss_is_module_present(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_GNSS);
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index da88c6ccfaeb..04286e872b24 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5179,68 +5179,6 @@ ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64 *tstamp_ready)
  * to access the extended GPIOs available.
  */
 
-/**
- * ice_get_pca9575_handle
- * @hw: pointer to the hw struct
- * @pca9575_handle: GPIO controller's handle
- *
- * Find and return the GPIO controller's handle in the netlist.
- * When found - the value will be cached in the hw structure and following calls
- * will return cached value
- */
-static int
-ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
-{
-	struct ice_aqc_get_link_topo *cmd;
-	struct ice_aq_desc desc;
-	int status;
-	u8 idx;
-
-	/* If handle was read previously return cached value */
-	if (hw->io_expander_handle) {
-		*pca9575_handle = hw->io_expander_handle;
-		return 0;
-	}
-
-	/* If handle was not detected read it from the netlist */
-	cmd = &desc.params.get_link_topo;
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
-
-	/* Set node type to GPIO controller */
-	cmd->addr.topo_params.node_type_ctx =
-		(ICE_AQC_LINK_TOPO_NODE_TYPE_M &
-		 ICE_AQC_LINK_TOPO_NODE_TYPE_GPIO_CTRL);
-
-#define SW_PCA9575_SFP_TOPO_IDX		2
-#define SW_PCA9575_QSFP_TOPO_IDX	1
-
-	/* Check if the SW IO expander controlling SMA exists in the netlist. */
-	if (hw->device_id == ICE_DEV_ID_E810C_SFP)
-		idx = SW_PCA9575_SFP_TOPO_IDX;
-	else if (hw->device_id == ICE_DEV_ID_E810C_QSFP)
-		idx = SW_PCA9575_QSFP_TOPO_IDX;
-	else
-		return -EOPNOTSUPP;
-
-	cmd->addr.topo_params.index = idx;
-
-	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
-	if (status)
-		return -EOPNOTSUPP;
-
-	/* Verify if we found the right IO expander type */
-	if (desc.params.get_link_topo.node_part_num !=
-		ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575)
-		return -EOPNOTSUPP;
-
-	/* If present save the handle and return it */
-	hw->io_expander_handle =
-		le16_to_cpu(desc.params.get_link_topo.addr.handle);
-	*pca9575_handle = hw->io_expander_handle;
-
-	return 0;
-}
-
 /**
  * ice_read_sma_ctrl
  * @hw: pointer to the hw struct
@@ -5305,37 +5243,6 @@ int ice_write_sma_ctrl(struct ice_hw *hw, u8 data)
 	return status;
 }
 
-/**
- * ice_read_pca9575_reg
- * @hw: pointer to the hw struct
- * @offset: GPIO controller register offset
- * @data: pointer to data to be read from the GPIO controller
- *
- * Read the register from the GPIO controller
- */
-int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data)
-{
-	struct ice_aqc_link_topo_addr link_topo;
-	__le16 addr;
-	u16 handle;
-	int err;
-
-	memset(&link_topo, 0, sizeof(link_topo));
-
-	err = ice_get_pca9575_handle(hw, &handle);
-	if (err)
-		return err;
-
-	link_topo.handle = cpu_to_le16(handle);
-	link_topo.topo_params.node_type_ctx =
-		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M,
-			   ICE_AQC_LINK_TOPO_NODE_CTX_PROVIDED);
-
-	addr = cpu_to_le16((u16)offset);
-
-	return ice_aq_read_i2c(hw, link_topo, 0, addr, 1, data, NULL);
-}
-
 /**
  * ice_ptp_read_sdp_ac - read SDP available connections section from NVM
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 656daff3447e..ca1ef49db4bc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -404,7 +404,6 @@ int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold);
 /* E810 family functions */
 int ice_read_sma_ctrl(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl(struct ice_hw *hw, u8 data);
-int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 int ice_ptp_read_sdp_ac(struct ice_hw *hw, __le16 *entries, uint *num_entries);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
-- 
2.46.0

