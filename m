Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D70883EEB94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 13:25:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8518C80B7B;
	Tue, 17 Aug 2021 11:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W3GUU_10hYap; Tue, 17 Aug 2021 11:25:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63ACE836A7;
	Tue, 17 Aug 2021 11:25:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 069821BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E89D980B3E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XKO79fDE8FJn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 11:24:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 044BA80ABD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="279788799"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="279788799"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 04:24:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="531010252"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2021 04:24:52 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Aug 2021 13:09:17 +0200
Message-Id: <20210817110918.1937113-4-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
References: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-next 3/4] ice: Add support for
 SMA control multiplexer
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E810-T adapters have two external bidirectional SMA connectors and two
internal unidirectional U.FL connectors. Multiplexing between U.FL and
SMA and SMA direction is controlled using the PCA9575 expander.

Add support for the PCA9575 detection and control of the respective pins
of the SMA/U.FL multiplexer using the GPIO AQ API.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  21 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_devids.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 156 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  22 +++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 7 files changed, 204 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 80cd7a106303..b1072a47e1b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1335,6 +1335,7 @@ struct ice_aqc_link_topo_addr {
 struct ice_aqc_get_link_topo {
 	struct ice_aqc_link_topo_addr addr;
 	u8 node_part_num;
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
 	u8 rsvd[9];
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 4b3f2375cbb2..aee4bbd55e4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -69,6 +69,27 @@ bool ice_is_e810(struct ice_hw *hw)
 	return hw->mac_type == ICE_MAC_E810;
 }
 
+/**
+ * ice_is_e810t
+ * @hw: pointer to the hardware structure
+ *
+ * returns true if the device is E810T based, false if not.
+ */
+bool ice_is_e810t(struct ice_hw *hw)
+{
+	switch (hw->device_id) {
+	case ICE_DEV_ID_E810C_SFP:
+		if (hw->subsystem_device_id == ICE_SUBDEV_ID_E810T ||
+		    hw->subsystem_device_id == ICE_SUBDEV_ID_E810T2)
+			return true;
+		break;
+	default:
+		break;
+	}
+
+	return false;
+}
+
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 60da1af35324..3b3981f0a87b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -183,6 +183,7 @@ ice_stat_update40(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 void
 ice_stat_update32(struct ice_hw *hw, u32 reg, bool prev_stat_loaded,
 		  u64 *prev_stat, u64 *cur_stat);
+bool ice_is_e810t(struct ice_hw *hw);
 enum ice_status
 ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 		     struct ice_aqc_txsched_elem_data *buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
index 9d8194671f6a..8d2c39ee775b 100644
--- a/drivers/net/ethernet/intel/ice/ice_devids.h
+++ b/drivers/net/ethernet/intel/ice/ice_devids.h
@@ -21,6 +21,8 @@
 #define ICE_DEV_ID_E810C_QSFP		0x1592
 /* Intel(R) Ethernet Controller E810-C for SFP */
 #define ICE_DEV_ID_E810C_SFP		0x1593
+#define ICE_SUBDEV_ID_E810T		0x000E
+#define ICE_SUBDEV_ID_E810T2		0x000F
 /* Intel(R) Ethernet Controller E810-XXV for SFP */
 #define ICE_DEV_ID_E810_XXV_SFP		0x159B
 /* Intel(R) Ethernet Connection E823-C for backplane */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 0e1567e4296f..0cc26625ddbe 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3139,3 +3139,159 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	else
 		return ice_ptp_init_phc_e822(hw);
 }
+
+/* E810T SMA functions
+ *
+ * The following functions operate specifically on E810T hardware and are used
+ * to access the extended GPIOs available.
+ */
+
+/**
+ * ice_get_pca9575_handle
+ * @hw: pointer to the hw struct
+ * @pca9575_handle: GPIO controller's handle
+ *
+ * Find and return the GPIO controller's handle in the netlist.
+ * When found - the value will be cached in the hw structure and following calls
+ * will return cached value
+ */
+static int
+ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
+{
+	struct ice_aqc_get_link_topo *cmd;
+	struct ice_aq_desc desc;
+	int status;
+	u8 idx;
+
+	if (!hw || !pca9575_handle)
+		return ICE_ERR_PARAM;
+
+	/* If handle was read previously return cached value */
+	if (hw->io_expander_handle) {
+		*pca9575_handle = hw->io_expander_handle;
+		return 0;
+	}
+
+	/* If handle was not detected read it from the netlist */
+	cmd = &desc.params.get_link_topo;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
+
+	/* Set node type to GPIO controller */
+	cmd->addr.topo_params.node_type_ctx =
+		(ICE_AQC_LINK_TOPO_NODE_TYPE_M &
+		 ICE_AQC_LINK_TOPO_NODE_TYPE_GPIO_CTRL);
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
+		return ICE_ERR_NOT_SUPPORTED;
+
+	cmd->addr.topo_params.index = idx;
+
+	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+	if (status)
+		return ICE_ERR_NOT_SUPPORTED;
+
+	/* Verify if we found the right IO expander type */
+	if (desc.params.get_link_topo.node_part_num !=
+		ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575)
+		return ICE_ERR_NOT_SUPPORTED;
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
+ * ice_read_sma_ctrl_e810t
+ * @hw: pointer to the hw struct
+ * @data: pointer to data to be read from the GPIO controller
+ *
+ * Read the SMA controller state. It is connected to pins 3-7 of Port 1 of the
+ * PCA9575 expander, so only bits 3-7 in data are valid.
+ */
+int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data)
+{
+	int status;
+	u16 handle;
+	u8 i;
+
+	status = ice_get_pca9575_handle(hw, &handle);
+	if (status)
+		return status;
+
+	*data = 0;
+
+	for (i = ICE_SMA_MIN_BIT_E810T; i <= ICE_SMA_MAX_BIT_E810T; i++) {
+		bool pin;
+
+		status = ice_aq_get_gpio(hw, handle, i + ICE_PCA9575_P1_OFFSET,
+					 &pin, NULL);
+		if (status)
+			break;
+		*data |= (u8)(!pin) << i;
+	}
+
+	return status;
+}
+
+/**
+ * ice_write_sma_ctrl_e810t
+ * @hw: pointer to the hw struct
+ * @data: data to be written to the GPIO controller
+ *
+ * Write the data to the SMA controller. It is connected to pins 3-7 of Port 1
+ * of the PCA9575 expander, so only bits 3-7 in data are valid.
+ */
+int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data)
+{
+	int status;
+	u16 handle;
+	u8 i;
+
+	status = ice_get_pca9575_handle(hw, &handle);
+	if (status)
+		return status;
+
+	for (i = ICE_SMA_MIN_BIT_E810T; i <= ICE_SMA_MAX_BIT_E810T; i++) {
+		bool pin;
+
+		pin = !(data & (1 << i));
+		status = ice_aq_set_gpio(hw, handle, i + ICE_PCA9575_P1_OFFSET,
+					 pin, NULL);
+		if (status)
+			break;
+	}
+
+	return status;
+}
+
+/**
+ * ice_is_pca9575_present
+ * @hw: pointer to the hw struct
+ *
+ * Check if the SW IO expander is present in the netlist
+ */
+bool ice_is_pca9575_present(struct ice_hw *hw)
+{
+	int status;
+	__le16 handle = 0;
+
+	if (!ice_is_e810t(hw))
+		return false;
+
+	status = ice_get_pca9575_handle(hw, &handle);
+	if (!status && handle)
+		return true;
+
+	return false;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5fd3c673480c..519e75462e67 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -189,6 +189,9 @@ int ice_phy_exit_bypass_e822(struct ice_hw *hw, u8 port);
 
 /* E810 family functions */
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
+int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
+int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
+bool ice_is_pca9575_present(struct ice_hw *hw);
 
 #define PFTSYN_SEM_BYTES	4
 
@@ -421,4 +424,23 @@ int ice_ptp_init_phy_e810(struct ice_hw *hw);
 #define LOW_TX_MEMORY_BANK_START	0x03090000
 #define HIGH_TX_MEMORY_BANK_START	0x03090004
 
+/* E810T SMA controller pin control */
+#define ICE_SMA1_DIR_EN_E810T		BIT(4)
+#define ICE_SMA1_TX_EN_E810T		BIT(5)
+#define ICE_SMA2_UFL2_RX_DIS_E810T	BIT(3)
+#define ICE_SMA2_DIR_EN_E810T		BIT(6)
+#define ICE_SMA2_TX_EN_E810T		BIT(7)
+
+#define ICE_SMA1_MASK_E810T	(ICE_SMA1_DIR_EN_E810T | \
+				 ICE_SMA1_TX_EN_E810T)
+#define ICE_SMA2_MASK_E810T	(ICE_SMA2_UFL2_RX_DIS_E810T | \
+				 ICE_SMA2_DIR_EN_E810T | \
+				 ICE_SMA2_TX_EN_E810T)
+#define ICE_ALL_SMA_MASK_E810T	(ICE_SMA1_MASK_E810T | \
+				 ICE_SMA2_MASK_E810T)
+
+#define ICE_SMA_MIN_BIT_E810T	3
+#define ICE_SMA_MAX_BIT_E810T	7
+#define ICE_PCA9575_P1_OFFSET	8
+
 #endif /* _ICE_PTP_HW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 582225df46f4..4249dec389bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -938,6 +938,7 @@ struct ice_hw {
 	struct list_head rss_list_head;
 	struct ice_mbx_snapshot mbx_snapshot;
 	DECLARE_BITMAP(hw_ptype, ICE_FLOW_PTYPE_MAX);
+	u16 io_expander_handle;
 };
 
 /* Statistics collected by each port, VSI, VEB, and S-channel */
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
