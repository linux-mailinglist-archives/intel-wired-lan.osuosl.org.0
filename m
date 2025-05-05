Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2872AAA082
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 00:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8469040879;
	Mon,  5 May 2025 22:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KEsfKXVZn88u; Mon,  5 May 2025 22:35:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6764740877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746484534;
	bh=JCC+eF3Nw2SJSo7EnMe2QPDn5iaYFrs4wioZCTf2SZM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=71ykebrnC2ATy5pm1Djc1PuIKiYJcUXWMVoBgYJdD3m8KIoxPOVqqv3ze8IU2XA3L
	 SI/fBvgvWVyLIWa0fPW/sHoP3qPnVxm5sah+WNYxrkJQ9SDLsqk0igyf1hOTfsFmLK
	 8SVjWWM6IjDPn04VNCc0EmI3a9bQFqQpAGWcwkHTc8ofC3zg5beNCfWBQaijDKASXb
	 9LQWT7c7LrHgJnVFFzq232sV2EnHUFP8SuW75c/ntY8MwU6gDRD/x+Ymj4v6+zEglm
	 udLHuVQwI65857vMcfvHcsnCsinqu6UqGocv+GFnjw4FQsVZ5i8/3hL+C42F6tGYh4
	 0qCcKk3aok4XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6764740877;
	Mon,  5 May 2025 22:35:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5BE6C12E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 585DC80D8A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 80tr3HPcRR80 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 22:35:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A16680CE0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A16680CE0
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A16680CE0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:35:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 799A643578;
 Mon,  5 May 2025 22:35:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7467DC4CEED;
 Mon,  5 May 2025 22:35:30 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 richardcochran@gmail.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Date: Mon,  5 May 2025 18:12:14 -0400
Message-Id: <20250505221419.2672473-518-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505221419.2672473-1-sashal@kernel.org>
References: <20250505221419.2672473-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.5
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746484532;
 bh=/gmC/LwgV+P9VSR2RvnXgektOsV3wus6WxQdu8FpCHA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kusESlna6ppCO670sw4HZuUXPX8jEs+UXq4RRGS3XkO5lKjgH9E4AvI5xdofSBBcX
 Qbed/afc89MOo47KK8QJLhOA33ah1MJ6bKShaeACD6cxgCvhI6jRh55v7oP5dYOzuB
 eQFmkJmDSVmOaM6k0IGxfWWznlwPbFOI92jHJinCDUmep/IM0Lil67cWub+eFrmvXe
 7BclBUrnYdSh0nFbtw3NRy1q5pgr1U3yOegGTA5Czah7B/KyGEYvDUSsOCrzJXjC4q
 3erbaadKTYmBWiaDuhuVvUYJQ30MLEfEh/JpNjSIvbsoqf4WtZzAmeTQUbjDiW948k
 9itN/rx50k/Lg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kusESlna
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.14 518/642] ice: Don't check
 device type when checking GNSS presence
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

[ Upstream commit e2c6737e6e82e9991646cd5389391bb6d3572a68 ]

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
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
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
index 1e801300310e9..f48cb93e10183 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5765,6 +5765,96 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
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
index 15ba385437389..54a8692839dd0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -306,5 +306,7 @@ int
 ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		 u16 bus_addr, __le16 addr, u8 params, const u8 *data,
 		 struct ice_sq_cd *cd);
+int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle);
+int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index b2148dbe49b28..6b26290452d48 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -381,32 +381,23 @@ void ice_gnss_exit(struct ice_pf *pf)
 }
 
 /**
- * ice_gnss_is_gps_present - Check if GPS HW is present
+ * ice_gnss_is_module_present - Check if GNSS HW is present
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
index 75e567ad70594..15daf603ed7bf 100644
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
index d0faa087793da..e0785e820d601 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3882,7 +3882,7 @@ void ice_init_feature_support(struct ice_pf *pf)
 			ice_set_feature_support(pf, ICE_F_CGU);
 		if (ice_is_clock_mux_in_netlist(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
-		if (ice_gnss_is_gps_present(&pf->hw))
+		if (ice_gnss_is_module_present(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_GNSS);
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ec91822e92806..53ce40fa2fe6b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5315,68 +5315,6 @@ ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64 *tstamp_ready)
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
@@ -5441,37 +5379,6 @@ int ice_write_sma_ctrl(struct ice_hw *hw, u8 data)
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
index 6779ce120515a..15f048d9b5823 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -395,7 +395,6 @@ int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold);
 /* E810 family functions */
 int ice_read_sma_ctrl(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl(struct ice_hw *hw, u8 data);
-int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 int ice_ptp_read_sdp_ac(struct ice_hw *hw, __le16 *entries, uint *num_entries);
 int ice_cgu_get_num_pins(struct ice_hw *hw, bool input);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
-- 
2.39.5

