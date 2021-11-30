Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BB44643AE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Dec 2021 00:54:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D063282726;
	Tue, 30 Nov 2021 23:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VL8fky0j8Gai; Tue, 30 Nov 2021 23:54:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6B7D8272A;
	Tue, 30 Nov 2021 23:54:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 385DB1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3ADCB401FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d9laIxk0apwl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A2CA401EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 23:53:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236164185"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="236164185"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 15:53:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="511726104"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2021 15:53:02 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Nov 2021 15:51:43 -0800
Message-Id: <20211130235146.28731-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
References: <20211130235146.28731-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 11/14] ice: Support
 configuring the device to Double VLAN Mode
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

In order to support configuring the device in Double VLAN Mode (DVM),
the DDP and FW have to support DVM. If both support DVM, the PF that
downloads the package needs to update the default recipes, set the
VLAN mode, and update boost TCAM entries.

To support updating the default recipes in DVM, add support for
updating an existing switch recipe's lkup_idx and mask. This is done
by first calling the get recipe AQ (0x0292) with the desired recipe
ID. Then, if that is successful update one of the lookup indices
(lkup_idx) and its associated mask if the mask is valid otherwise
the already existing mask will be used.

The VLAN mode of the device has to be configured while the global
configuration lock is held while downloading the DDP, specifically after
the DDP has been downloaded. If supported, the device will default to
DVM.

Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  64 ++-
 drivers/net/ethernet/intel/ice/ice_common.c   |  49 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 290 ++++++++++--
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  13 +
 .../net/ethernet/intel/ice/ice_flex_type.h    |  40 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  12 +
 .../ethernet/intel/ice/ice_pf_vsi_vlan_ops.c  |   1 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |  75 +++
 drivers/net/ethernet/intel/ice/ice_switch.h   |  13 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   5 +
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |   1 +
 .../net/ethernet/intel/ice/ice_vlan_mode.c    | 439 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_vlan_mode.h    |  13 +
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  25 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |   5 -
 17 files changed, 990 insertions(+), 59 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vlan_mode.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vlan_mode.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 3ece1df919f8..606ff3522bd4 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -23,6 +23,7 @@ ice-y := ice_main.o	\
 	 ice_vsi_vlan_lib.o \
 	 ice_fdir.o	\
 	 ice_ethtool_fdir.o \
+	 ice_vlan_mode.o \
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
 	 ice_idc.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index b638f9e9ecd9..a23a9ea10751 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -226,6 +226,15 @@ struct ice_aqc_get_sw_cfg_resp_elem {
 #define ICE_AQC_GET_SW_CONF_RESP_IS_VF		BIT(15)
 };
 
+/* Set Port parameters, (direct, 0x0203) */
+struct ice_aqc_set_port_params {
+	__le16 cmd_flags;
+#define ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA	BIT(2)
+	__le16 bad_frame_vsi;
+	__le16 swid;
+	u8 reserved[10];
+};
+
 /* These resource type defines are used for all switch resource
  * commands where a resource type is required, such as:
  * Get Resource Allocation command (indirect 0x0204)
@@ -283,6 +292,40 @@ struct ice_aqc_alloc_free_res_elem {
 	struct ice_aqc_res_elem elem[];
 };
 
+/* Request buffer for Set VLAN Mode AQ command (indirect 0x020C) */
+struct ice_aqc_set_vlan_mode {
+	u8 reserved;
+	u8 l2tag_prio_tagging;
+#define ICE_AQ_VLAN_PRIO_TAG_S			0
+#define ICE_AQ_VLAN_PRIO_TAG_M			(0x7 << ICE_AQ_VLAN_PRIO_TAG_S)
+#define ICE_AQ_VLAN_PRIO_TAG_NOT_SUPPORTED	0x0
+#define ICE_AQ_VLAN_PRIO_TAG_STAG		0x1
+#define ICE_AQ_VLAN_PRIO_TAG_OUTER_CTAG		0x2
+#define ICE_AQ_VLAN_PRIO_TAG_OUTER_VLAN		0x3
+#define ICE_AQ_VLAN_PRIO_TAG_INNER_CTAG		0x4
+#define ICE_AQ_VLAN_PRIO_TAG_MAX		0x4
+#define ICE_AQ_VLAN_PRIO_TAG_ERROR		0x7
+	u8 l2tag_reserved[64];
+	u8 rdma_packet;
+#define ICE_AQ_VLAN_RDMA_TAG_S			0
+#define ICE_AQ_VLAN_RDMA_TAG_M			(0x3F << ICE_AQ_VLAN_RDMA_TAG_S)
+#define ICE_AQ_SVM_VLAN_RDMA_PKT_FLAG_SETTING	0x10
+#define ICE_AQ_DVM_VLAN_RDMA_PKT_FLAG_SETTING	0x1A
+	u8 rdma_reserved[2];
+	u8 mng_vlan_prot_id;
+#define ICE_AQ_VLAN_MNG_PROTOCOL_ID_OUTER	0x10
+#define ICE_AQ_VLAN_MNG_PROTOCOL_ID_INNER	0x11
+	u8 prot_id_reserved[30];
+};
+
+/* Response buffer for Get VLAN Mode AQ command (indirect 0x020D) */
+struct ice_aqc_get_vlan_mode {
+	u8 vlan_mode;
+#define ICE_AQ_VLAN_MODE_DVM_ENA	BIT(0)
+	u8 l2tag_prio_tagging;
+	u8 reserved[98];
+};
+
 /* Add VSI (indirect 0x0210)
  * Update VSI (indirect 0x0211)
  * Get VSI (indirect 0x0212)
@@ -494,9 +537,13 @@ struct ice_aqc_add_get_recipe {
 
 struct ice_aqc_recipe_content {
 	u8 rid;
+#define ICE_AQ_RECIPE_ID_S		0
+#define ICE_AQ_RECIPE_ID_M		(0x3F << ICE_AQ_RECIPE_ID_S)
 #define ICE_AQ_RECIPE_ID_IS_ROOT	BIT(7)
 #define ICE_AQ_SW_ID_LKUP_IDX		0
 	u8 lkup_indx[5];
+#define ICE_AQ_RECIPE_LKUP_DATA_S	0
+#define ICE_AQ_RECIPE_LKUP_DATA_M	(0x3F << ICE_AQ_RECIPE_LKUP_DATA_S)
 #define ICE_AQ_RECIPE_LKUP_IGNORE	BIT(7)
 #define ICE_AQ_SW_ID_LKUP_MASK		0x00FF
 	__le16 mask[5];
@@ -507,15 +554,25 @@ struct ice_aqc_recipe_content {
 	u8 rsvd0[3];
 	u8 act_ctrl_join_priority;
 	u8 act_ctrl_fwd_priority;
+#define ICE_AQ_RECIPE_FWD_PRIORITY_S	0
+#define ICE_AQ_RECIPE_FWD_PRIORITY_M	(0xF << ICE_AQ_RECIPE_FWD_PRIORITY_S)
 	u8 act_ctrl;
+#define ICE_AQ_RECIPE_ACT_NEED_PASS_L2	BIT(0)
+#define ICE_AQ_RECIPE_ACT_ALLOW_PASS_L2	BIT(1)
 #define ICE_AQ_RECIPE_ACT_INV_ACT	BIT(2)
+#define ICE_AQ_RECIPE_ACT_PRUNE_INDX_S	4
+#define ICE_AQ_RECIPE_ACT_PRUNE_INDX_M	(0x3 << ICE_AQ_RECIPE_ACT_PRUNE_INDX_S)
 	u8 rsvd1;
 	__le32 dflt_act;
+#define ICE_AQ_RECIPE_DFLT_ACT_S	0
+#define ICE_AQ_RECIPE_DFLT_ACT_M	(0x7FFFF << ICE_AQ_RECIPE_DFLT_ACT_S)
+#define ICE_AQ_RECIPE_DFLT_ACT_VALID	BIT(31)
 };
 
 struct ice_aqc_recipe_data_elem {
 	u8 recipe_indx;
 	u8 resp_bits;
+#define ICE_AQ_RECIPE_WAS_UPDATED	BIT(0)
 	u8 rsvd0[2];
 	u8 recipe_bitmap[8];
 	u8 rsvd1[4];
@@ -1906,7 +1963,7 @@ struct ice_aqc_get_clear_fw_log {
 };
 
 /* Download Package (indirect 0x0C40) */
-/* Also used for Update Package (indirect 0x0C42) */
+/* Also used for Update Package (indirect 0x0C41 and 0x0C42) */
 struct ice_aqc_download_pkg {
 	u8 flags;
 #define ICE_AQC_DOWNLOAD_PKG_LAST_BUF	0x01
@@ -2032,6 +2089,7 @@ struct ice_aq_desc {
 		struct ice_aqc_sff_eeprom read_write_sff_param;
 		struct ice_aqc_set_port_id_led set_port_id_led;
 		struct ice_aqc_get_sw_cfg get_sw_conf;
+		struct ice_aqc_set_port_params set_port_params;
 		struct ice_aqc_sw_rules sw_rules;
 		struct ice_aqc_add_get_recipe add_get_recipe;
 		struct ice_aqc_recipe_to_profile recipe_to_profile;
@@ -2135,10 +2193,13 @@ enum ice_adminq_opc {
 
 	/* internal switch commands */
 	ice_aqc_opc_get_sw_cfg				= 0x0200,
+	ice_aqc_opc_set_port_params			= 0x0203,
 
 	/* Alloc/Free/Get Resources */
 	ice_aqc_opc_alloc_res				= 0x0208,
 	ice_aqc_opc_free_res				= 0x0209,
+	ice_aqc_opc_set_vlan_mode_parameters		= 0x020C,
+	ice_aqc_opc_get_vlan_mode_parameters		= 0x020D,
 
 	/* VSI commands */
 	ice_aqc_opc_add_vsi				= 0x0210,
@@ -2230,6 +2291,7 @@ enum ice_adminq_opc {
 
 	/* package commands */
 	ice_aqc_opc_download_pkg			= 0x0C40,
+	ice_aqc_opc_upload_section			= 0x0C41,
 	ice_aqc_opc_update_pkg				= 0x0C42,
 	ice_aqc_opc_get_pkg_info_list			= 0x0C43,
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 44ed1c9161dc..ede131189a8f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1518,16 +1518,27 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
 
 	/* When a package download is in process (i.e. when the firmware's
 	 * Global Configuration Lock resource is held), only the Download
-	 * Package, Get Version, Get Package Info List and Release Resource
-	 * (with resource ID set to Global Config Lock) AdminQ commands are
-	 * allowed; all others must block until the package download completes
-	 * and the Global Config Lock is released.  See also
-	 * ice_acquire_global_cfg_lock().
+	 * Package, Get Version, Get Package Info List, Upload Section,
+	 * Update Package, Set Port Parameters, Get/Set VLAN Mode Parameters,
+	 * Add Recipe, Set Recipes to Profile Association, Get Recipe, and Get
+	 * Recipes to Profile Association, and Release Resource (with resource
+	 * ID set to Global Config Lock) AdminQ commands are allowed; all others
+	 * must block until the package download completes and the Global Config
+	 * Lock is released.  See also ice_acquire_global_cfg_lock().
 	 */
 	switch (le16_to_cpu(desc->opcode)) {
 	case ice_aqc_opc_download_pkg:
 	case ice_aqc_opc_get_pkg_info_list:
 	case ice_aqc_opc_get_ver:
+	case ice_aqc_opc_upload_section:
+	case ice_aqc_opc_update_pkg:
+	case ice_aqc_opc_set_port_params:
+	case ice_aqc_opc_get_vlan_mode_parameters:
+	case ice_aqc_opc_set_vlan_mode_parameters:
+	case ice_aqc_opc_add_recipe:
+	case ice_aqc_opc_recipe_to_profile:
+	case ice_aqc_opc_get_recipe:
+	case ice_aqc_opc_get_recipe_to_profile:
 		break;
 	case ice_aqc_opc_release_res:
 		if (le16_to_cpu(cmd->res_id) == ICE_AQC_RES_ID_GLBL_LOCK)
@@ -2737,6 +2748,34 @@ void ice_clear_pxe_mode(struct ice_hw *hw)
 		ice_aq_clear_pxe_mode(hw);
 }
 
+/**
+ * ice_aq_set_port_params - set physical port parameters.
+ * @pi: pointer to the port info struct
+ * @double_vlan: if set double VLAN is enabled
+ * @cd: pointer to command details structure or NULL
+ *
+ * Set Physical port parameters (0x0203)
+ */
+int
+ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
+		       struct ice_sq_cd *cd)
+
+{
+	struct ice_aqc_set_port_params *cmd;
+	struct ice_hw *hw = pi->hw;
+	struct ice_aq_desc desc;
+	u16 cmd_flags = 0;
+
+	cmd = &desc.params.set_port_params;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_params);
+	if (double_vlan)
+		cmd_flags |= ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
+	cmd->cmd_flags = cpu_to_le16(cmd_flags);
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
+}
+
 /**
  * ice_get_link_speed_based_on_phy_type - returns link speed
  * @phy_type_low: lower part of phy_type
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 209a3cc113d4..893333b8b738 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -85,6 +85,9 @@ int
 ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
 		       struct ice_sq_cd *cd);
 int
+ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
+		       struct ice_sq_cd *cd);
+int
 ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *caps,
 		    struct ice_sq_cd *cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index b197d3a72014..434169351052 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -5,9 +5,17 @@
 #include "ice_flex_pipe.h"
 #include "ice_flow.h"
 
+/* For supporting double VLAN mode, it is necessary to enable or disable certain
+ * boost tcam entries. The metadata labels names that match the following
+ * prefixes will be saved to allow enabling double VLAN mode.
+ */
+#define ICE_DVM_PRE	"BOOST_MAC_VLAN_DVM"	/* enable these entries */
+#define ICE_SVM_PRE	"BOOST_MAC_VLAN_SVM"	/* disable these entries */
+
 /* To support tunneling entries by PF, the package will append the PF number to
  * the label; for example TNL_VXLAN_PF0, TNL_VXLAN_PF1, TNL_VXLAN_PF2, etc.
  */
+#define ICE_TNL_PRE	"TNL_"
 static const struct ice_tunnel_type_scan tnls[] = {
 	{ TNL_VXLAN,		"TNL_VXLAN_PF" },
 	{ TNL_GENEVE,		"TNL_GENEVE_PF" },
@@ -525,6 +533,55 @@ ice_enum_labels(struct ice_seg *ice_seg, u32 type, struct ice_pkg_enum *state,
 	return label->name;
 }
 
+/**
+ * ice_add_tunnel_hint
+ * @hw: pointer to the HW structure
+ * @label_name: label text
+ * @val: value of the tunnel port boost entry
+ */
+static void ice_add_tunnel_hint(struct ice_hw *hw, char *label_name, u16 val)
+{
+	if (hw->tnl.count < ICE_TUNNEL_MAX_ENTRIES) {
+		u16 i;
+
+		for (i = 0; tnls[i].type != TNL_LAST; i++) {
+			size_t len = strlen(tnls[i].label_prefix);
+
+			/* Look for matching label start, before continuing */
+			if (strncmp(label_name, tnls[i].label_prefix, len))
+				continue;
+
+			/* Make sure this label matches our PF. Note that the PF
+			 * character ('0' - '7') will be located where our
+			 * prefix string's null terminator is located.
+			 */
+			if ((label_name[len] - '0') == hw->pf_id) {
+				hw->tnl.tbl[hw->tnl.count].type = tnls[i].type;
+				hw->tnl.tbl[hw->tnl.count].valid = false;
+				hw->tnl.tbl[hw->tnl.count].boost_addr = val;
+				hw->tnl.tbl[hw->tnl.count].port = 0;
+				hw->tnl.count++;
+				break;
+			}
+		}
+	}
+}
+
+/**
+ * ice_add_dvm_hint
+ * @hw: pointer to the HW structure
+ * @val: value of the boost entry
+ * @enable: true if entry needs to be enabled, or false if needs to be disabled
+ */
+static void ice_add_dvm_hint(struct ice_hw *hw, u16 val, bool enable)
+{
+	if (hw->dvm_upd.count < ICE_DVM_MAX_ENTRIES) {
+		hw->dvm_upd.tbl[hw->dvm_upd.count].boost_addr = val;
+		hw->dvm_upd.tbl[hw->dvm_upd.count].enable = enable;
+		hw->dvm_upd.count++;
+	}
+}
+
 /**
  * ice_init_pkg_hints
  * @hw: pointer to the HW structure
@@ -551,32 +608,23 @@ static void ice_init_pkg_hints(struct ice_hw *hw, struct ice_seg *ice_seg)
 	label_name = ice_enum_labels(ice_seg, ICE_SID_LBL_RXPARSER_TMEM, &state,
 				     &val);
 
-	while (label_name && hw->tnl.count < ICE_TUNNEL_MAX_ENTRIES) {
-		for (i = 0; tnls[i].type != TNL_LAST; i++) {
-			size_t len = strlen(tnls[i].label_prefix);
+	while (label_name) {
+		if (!strncmp(label_name, ICE_TNL_PRE, strlen(ICE_TNL_PRE)))
+			/* check for a tunnel entry */
+			ice_add_tunnel_hint(hw, label_name, val);
 
-			/* Look for matching label start, before continuing */
-			if (strncmp(label_name, tnls[i].label_prefix, len))
-				continue;
+		/* check for a dvm mode entry */
+		else if (!strncmp(label_name, ICE_DVM_PRE, strlen(ICE_DVM_PRE)))
+			ice_add_dvm_hint(hw, val, true);
 
-			/* Make sure this label matches our PF. Note that the PF
-			 * character ('0' - '7') will be located where our
-			 * prefix string's null terminator is located.
-			 */
-			if ((label_name[len] - '0') == hw->pf_id) {
-				hw->tnl.tbl[hw->tnl.count].type = tnls[i].type;
-				hw->tnl.tbl[hw->tnl.count].valid = false;
-				hw->tnl.tbl[hw->tnl.count].boost_addr = val;
-				hw->tnl.tbl[hw->tnl.count].port = 0;
-				hw->tnl.count++;
-				break;
-			}
-		}
+		/* check for a svm mode entry */
+		else if (!strncmp(label_name, ICE_SVM_PRE, strlen(ICE_SVM_PRE)))
+			ice_add_dvm_hint(hw, val, false);
 
 		label_name = ice_enum_labels(NULL, 0, &state, &val);
 	}
 
-	/* Cache the appropriate boost TCAM entry pointers */
+	/* Cache the appropriate boost TCAM entry pointers for tunnels */
 	for (i = 0; i < hw->tnl.count; i++) {
 		ice_find_boost_entry(ice_seg, hw->tnl.tbl[i].boost_addr,
 				     &hw->tnl.tbl[i].boost_entry);
@@ -586,6 +634,11 @@ static void ice_init_pkg_hints(struct ice_hw *hw, struct ice_seg *ice_seg)
 				hw->tnl.valid_count[hw->tnl.tbl[i].type]++;
 		}
 	}
+
+	/* Cache the appropriate boost TCAM entry pointers for DVM and SVM */
+	for (i = 0; i < hw->dvm_upd.count; i++)
+		ice_find_boost_entry(ice_seg, hw->dvm_upd.tbl[i].boost_addr,
+				     &hw->dvm_upd.tbl[i].boost_entry);
 }
 
 /* Key creation */
@@ -876,6 +929,27 @@ ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 	return status;
 }
 
+/**
+ * ice_aq_upload_section
+ * @hw: pointer to the hardware structure
+ * @pkg_buf: the package buffer which will receive the section
+ * @buf_size: the size of the package buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Upload Section (0x0C41)
+ */
+int
+ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+		      u16 buf_size, struct ice_sq_cd *cd)
+{
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_upload_section);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	return ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
+}
+
 /**
  * ice_aq_update_pkg
  * @hw: pointer to the hardware structure
@@ -960,26 +1034,21 @@ ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
 }
 
 /**
- * ice_update_pkg
+ * ice_update_pkg_no_lock
  * @hw: pointer to the hardware structure
  * @bufs: pointer to an array of buffers
  * @count: the number of buffers in the array
- *
- * Obtains change lock and updates package.
  */
 static int
-ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
+ice_update_pkg_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 {
-	u32 offset, info, i;
-	int status;
-
-	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
-	if (status)
-		return status;
+	int status = 0;
+	u32 i;
 
 	for (i = 0; i < count; i++) {
 		struct ice_buf_hdr *bh = (struct ice_buf_hdr *)(bufs + i);
 		bool last = ((i + 1) == count);
+		u32 offset, info;
 
 		status = ice_aq_update_pkg(hw, bh, le16_to_cpu(bh->data_end),
 					   last, &offset, &info, NULL);
@@ -991,6 +1060,27 @@ ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 		}
 	}
 
+	return status;
+}
+
+/**
+ * ice_update_pkg
+ * @hw: pointer to the hardware structure
+ * @bufs: pointer to an array of buffers
+ * @count: the number of buffers in the array
+ *
+ * Obtains change lock and updates package.
+ */
+static int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
+{
+	int status;
+
+	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
+	if (status)
+		return status;
+
+	status = ice_update_pkg_no_lock(hw, bufs, count);
+
 	ice_release_change_lock(hw);
 
 	return status;
@@ -1085,6 +1175,13 @@ ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
 			break;
 	}
 
+	if (!status) {
+		status = ice_set_vlan_mode(hw);
+		if (status)
+			ice_debug(hw, ICE_DBG_PKG, "Failed to set VLAN mode: err %d\n",
+				  status);
+	}
+
 	ice_release_global_cfg_lock(hw);
 
 	return state;
@@ -1122,6 +1219,7 @@ static enum ice_ddp_state
 ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
 {
 	struct ice_buf_table *ice_buf_tbl;
+	int status;
 
 	ice_debug(hw, ICE_DBG_PKG, "Segment format version: %d.%d.%d.%d\n",
 		  ice_seg->hdr.seg_format_ver.major,
@@ -1138,8 +1236,12 @@ ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
 	ice_debug(hw, ICE_DBG_PKG, "Seg buf count: %d\n",
 		  le32_to_cpu(ice_buf_tbl->buf_count));
 
-	return ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
-				  le32_to_cpu(ice_buf_tbl->buf_count));
+	status = ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
+				    le32_to_cpu(ice_buf_tbl->buf_count));
+
+	ice_post_pkg_dwnld_vlan_mode_cfg(hw);
+
+	return status;
 }
 
 /**
@@ -1902,7 +2004,7 @@ void ice_init_prof_result_bm(struct ice_hw *hw)
  *
  * Frees a package buffer
  */
-static void ice_pkg_buf_free(struct ice_hw *hw, struct ice_buf_build *bld)
+void ice_pkg_buf_free(struct ice_hw *hw, struct ice_buf_build *bld)
 {
 	devm_kfree(ice_hw_to_dev(hw), bld);
 }
@@ -2001,6 +2103,43 @@ ice_pkg_buf_alloc_section(struct ice_buf_build *bld, u32 type, u16 size)
 	return NULL;
 }
 
+/**
+ * ice_pkg_buf_alloc_single_section
+ * @hw: pointer to the HW structure
+ * @type: the section type value
+ * @size: the size of the section to reserve (in bytes)
+ * @section: returns pointer to the section
+ *
+ * Allocates a package buffer with a single section.
+ * Note: all package contents must be in Little Endian form.
+ */
+struct ice_buf_build *
+ice_pkg_buf_alloc_single_section(struct ice_hw *hw, u32 type, u16 size,
+				 void **section)
+{
+	struct ice_buf_build *buf;
+
+	if (!section)
+		return NULL;
+
+	buf = ice_pkg_buf_alloc(hw);
+	if (!buf)
+		return NULL;
+
+	if (ice_pkg_buf_reserve_section(buf, 1))
+		goto ice_pkg_buf_alloc_single_section_err;
+
+	*section = ice_pkg_buf_alloc_section(buf, type, size);
+	if (!*section)
+		goto ice_pkg_buf_alloc_single_section_err;
+
+	return buf;
+
+ice_pkg_buf_alloc_single_section_err:
+	ice_pkg_buf_free(hw, buf);
+	return NULL;
+}
+
 /**
  * ice_pkg_buf_get_active_sections
  * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
@@ -2028,7 +2167,7 @@ static u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld)
  *
  * Return a pointer to the buffer's header
  */
-static struct ice_buf *ice_pkg_buf(struct ice_buf_build *bld)
+struct ice_buf *ice_pkg_buf(struct ice_buf_build *bld)
 {
 	if (!bld)
 		return NULL;
@@ -2064,6 +2203,89 @@ ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port,
 	return res;
 }
 
+/**
+ * ice_upd_dvm_boost_entry
+ * @hw: pointer to the HW structure
+ * @entry: pointer to double vlan boost entry info
+ */
+static int
+ice_upd_dvm_boost_entry(struct ice_hw *hw, struct ice_dvm_entry *entry)
+{
+	struct ice_boost_tcam_section *sect_rx, *sect_tx;
+	int status = -ENOSPC;
+	struct ice_buf_build *bld;
+	u8 val, dc, nm;
+
+	bld = ice_pkg_buf_alloc(hw);
+	if (!bld)
+		return -ENOMEM;
+
+	/* allocate 2 sections, one for Rx parser, one for Tx parser */
+	if (ice_pkg_buf_reserve_section(bld, 2))
+		goto ice_upd_dvm_boost_entry_err;
+
+	sect_rx = ice_pkg_buf_alloc_section(bld, ICE_SID_RXPARSER_BOOST_TCAM,
+					    struct_size(sect_rx, tcam, 1));
+	if (!sect_rx)
+		goto ice_upd_dvm_boost_entry_err;
+	sect_rx->count = cpu_to_le16(1);
+
+	sect_tx = ice_pkg_buf_alloc_section(bld, ICE_SID_TXPARSER_BOOST_TCAM,
+					    struct_size(sect_tx, tcam, 1));
+	if (!sect_tx)
+		goto ice_upd_dvm_boost_entry_err;
+	sect_tx->count = cpu_to_le16(1);
+
+	/* copy original boost entry to update package buffer */
+	memcpy(sect_rx->tcam, entry->boost_entry, sizeof(*sect_rx->tcam));
+
+	/* re-write the don't care and never match bits accordingly */
+	if (entry->enable) {
+		/* all bits are don't care */
+		val = 0x00;
+		dc = 0xFF;
+		nm = 0x00;
+	} else {
+		/* disable, one never match bit, the rest are don't care */
+		val = 0x00;
+		dc = 0xF7;
+		nm = 0x08;
+	}
+
+	ice_set_key((u8 *)&sect_rx->tcam[0].key, sizeof(sect_rx->tcam[0].key),
+		    &val, NULL, &dc, &nm, 0, sizeof(u8));
+
+	/* exact copy of entry to Tx section entry */
+	memcpy(sect_tx->tcam, sect_rx->tcam, sizeof(*sect_tx->tcam));
+
+	status = ice_update_pkg_no_lock(hw, ice_pkg_buf(bld), 1);
+
+ice_upd_dvm_boost_entry_err:
+	ice_pkg_buf_free(hw, bld);
+
+	return status;
+}
+
+/**
+ * ice_set_dvm_boost_entries
+ * @hw: pointer to the HW structure
+ *
+ * Enable double vlan by updating the appropriate boost tcam entries.
+ */
+int ice_set_dvm_boost_entries(struct ice_hw *hw)
+{
+	int status;
+	u16 i;
+
+	for (i = 0; i < hw->dvm_upd.count; i++) {
+		status = ice_upd_dvm_boost_entry(hw, &hw->dvm_upd.tbl[i]);
+		if (status)
+			return status;
+	}
+
+	return 0;
+}
+
 /**
  * ice_tunnel_idx_to_entry - convert linear index to the sparse one
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index dd602285c78e..4f0b151e9e9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -89,6 +89,12 @@ ice_init_prof_result_bm(struct ice_hw *hw);
 int
 ice_get_sw_fv_list(struct ice_hw *hw, u8 *prot_ids, u16 ids_cnt,
 		   unsigned long *bm, struct list_head *fv_list);
+int
+ice_pkg_buf_unreserve_section(struct ice_buf_build *bld, u16 count);
+u16 ice_pkg_buf_get_free_space(struct ice_buf_build *bld);
+int
+ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+		      u16 buf_size, struct ice_sq_cd *cd);
 bool
 ice_get_open_tunnel_port(struct ice_hw *hw, u16 *port,
 			 enum ice_tunnel_type type);
@@ -96,6 +102,7 @@ int ice_udp_tunnel_set_port(struct net_device *netdev, unsigned int table,
 			    unsigned int idx, struct udp_tunnel_info *ti);
 int ice_udp_tunnel_unset_port(struct net_device *netdev, unsigned int table,
 			      unsigned int idx, struct udp_tunnel_info *ti);
+int ice_set_dvm_boost_entries(struct ice_hw *hw);
 
 /* Rx parser PTYPE functions */
 bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype);
@@ -120,4 +127,10 @@ void ice_clear_hw_tbls(struct ice_hw *hw);
 void ice_free_hw_tbls(struct ice_hw *hw);
 int
 ice_rem_prof(struct ice_hw *hw, enum ice_block blk, u64 id);
+struct ice_buf_build *
+ice_pkg_buf_alloc_single_section(struct ice_hw *hw, u32 type, u16 size,
+				 void **section);
+struct ice_buf *ice_pkg_buf(struct ice_buf_build *bld);
+void ice_pkg_buf_free(struct ice_hw *hw, struct ice_buf_build *bld);
+
 #endif /* _ICE_FLEX_PIPE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index fc087e0b5292..5735e9542a49 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -162,6 +162,7 @@ struct ice_meta_sect {
 
 #define ICE_SID_RXPARSER_MARKER_PTYPE	55
 #define ICE_SID_RXPARSER_BOOST_TCAM	56
+#define ICE_SID_RXPARSER_METADATA_INIT	58
 #define ICE_SID_TXPARSER_BOOST_TCAM	66
 
 #define ICE_SID_XLT0_PE			80
@@ -442,6 +443,19 @@ struct ice_tunnel_table {
 	u16 valid_count[__TNL_TYPE_CNT];
 };
 
+struct ice_dvm_entry {
+	u16 boost_addr;
+	u16 enable;
+	struct ice_boost_tcam_entry *boost_entry;
+};
+
+#define ICE_DVM_MAX_ENTRIES	48
+
+struct ice_dvm_table {
+	struct ice_dvm_entry tbl[ICE_DVM_MAX_ENTRIES];
+	u16 count;
+};
+
 struct ice_pkg_es {
 	__le16 count;
 	__le16 offset;
@@ -662,4 +676,30 @@ enum ice_prof_type {
 	ICE_PROF_TUN_ALL = 0x6,
 	ICE_PROF_ALL = 0xFF,
 };
+
+/* Number of bits/bytes contained in meta init entry. Note, this should be a
+ * multiple of 32 bits.
+ */
+#define ICE_META_INIT_BITS	192
+#define ICE_META_INIT_DW_CNT	(ICE_META_INIT_BITS / (sizeof(__le32) * \
+				 BITS_PER_BYTE))
+
+/* The meta init Flag field starts at this bit */
+#define ICE_META_FLAGS_ST		123
+
+/* The entry and bit to check for Double VLAN Mode (DVM) support */
+#define ICE_META_VLAN_MODE_ENTRY	0
+#define ICE_META_FLAG_VLAN_MODE		60
+#define ICE_META_VLAN_MODE_BIT		(ICE_META_FLAGS_ST + \
+					 ICE_META_FLAG_VLAN_MODE)
+
+struct ice_meta_init_entry {
+	__le32 bm[ICE_META_INIT_DW_CNT];
+};
+
+struct ice_meta_init_section {
+	__le16 count;
+	__le16 offset;
+	struct ice_meta_init_entry entry;
+};
 #endif /* _ICE_FLEX_TYPE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ff2b721e0e45..563b597b0a85 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3555,12 +3555,17 @@ static int ice_tc_indir_block_register(struct ice_vsi *vsi)
 static int ice_setup_pf_sw(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
+	bool dvm = ice_is_dvm_ena(&pf->hw);
 	struct ice_vsi *vsi;
 	int status;
 
 	if (ice_is_reset_in_progress(pf->state))
 		return -EBUSY;
 
+	status = ice_aq_set_port_params(pf->hw.port_info, dvm, NULL);
+	if (status)
+		return -EIO;
+
 	vsi = ice_pf_vsi_setup(pf, pf->hw.port_info);
 	if (!vsi)
 		return -ENOMEM;
@@ -6649,6 +6654,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
+	bool dvm;
 	int err;
 
 	if (test_bit(ICE_DOWN, pf->state))
@@ -6712,6 +6718,12 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_init_ctrlq;
 	}
 
+	dvm = ice_is_dvm_ena(hw);
+
+	err = ice_aq_set_port_params(pf->hw.port_info, dvm, NULL);
+	if (err)
+		goto err_init_ctrlq;
+
 	err = ice_sched_init_port(hw->port_info);
 	if (err)
 		goto err_sched_init_port;
diff --git a/drivers/net/ethernet/intel/ice/ice_pf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_pf_vsi_vlan_ops.c
index b00360ca6e92..976a03d3bdd5 100644
--- a/drivers/net/ethernet/intel/ice/ice_pf_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_pf_vsi_vlan_ops.c
@@ -3,6 +3,7 @@
 
 #include "ice_vsi_vlan_ops.h"
 #include "ice_vsi_vlan_lib.h"
+#include "ice_vlan_mode.h"
 #include "ice.h"
 #include "ice_pf_vsi_vlan_ops.h"
 
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index f851a81a7240..04308e5fa224 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1096,6 +1096,64 @@ ice_aq_get_recipe(struct ice_hw *hw,
 	return status;
 }
 
+/**
+ * ice_update_recipe_lkup_idx - update a default recipe based on the lkup_idx
+ * @hw: pointer to the HW struct
+ * @params: parameters used to update the default recipe
+ *
+ * This function only supports updating default recipes and it only supports
+ * updating a single recipe based on the lkup_idx at a time.
+ *
+ * This is done as a read-modify-write operation. First, get the current recipe
+ * contents based on the recipe's ID. Then modify the field vector index and
+ * mask if it's valid at the lkup_idx. Finally, use the add recipe AQ to update
+ * the pre-existing recipe with the modifications.
+ */
+int
+ice_update_recipe_lkup_idx(struct ice_hw *hw,
+			   struct ice_update_recipe_lkup_idx_params *params)
+{
+	struct ice_aqc_recipe_data_elem *rcp_list;
+	u16 num_recps = ICE_MAX_NUM_RECIPES;
+	int status;
+
+	rcp_list = kcalloc(num_recps, sizeof(*rcp_list), GFP_KERNEL);
+	if (!rcp_list)
+		return -ENOMEM;
+
+	/* read current recipe list from firmware */
+	rcp_list->recipe_indx = params->rid;
+	status = ice_aq_get_recipe(hw, rcp_list, &num_recps, params->rid, NULL);
+	if (status) {
+		ice_debug(hw, ICE_DBG_SW, "Failed to get recipe %d, status %d\n",
+			  params->rid, status);
+		goto error_out;
+	}
+
+	/* only modify existing recipe's lkup_idx and mask if valid, while
+	 * leaving all other fields the same, then update the recipe firmware
+	 */
+	rcp_list->content.lkup_indx[params->lkup_idx] = params->fv_idx;
+	if (params->mask_valid)
+		rcp_list->content.mask[params->lkup_idx] =
+			cpu_to_le16(params->mask);
+
+	if (params->ignore_valid)
+		rcp_list->content.lkup_indx[params->lkup_idx] |=
+			ICE_AQ_RECIPE_LKUP_IGNORE;
+
+	status = ice_aq_add_recipe(hw, &rcp_list[0], 1, NULL);
+	if (status)
+		ice_debug(hw, ICE_DBG_SW, "Failed to update recipe %d lkup_idx %d fv_idx %d mask %d mask_valid %s, status %d\n",
+			  params->rid, params->lkup_idx, params->fv_idx,
+			  params->mask, params->mask_valid ? "true" : "false",
+			  status);
+
+error_out:
+	kfree(rcp_list);
+	return status;
+}
+
 /**
  * ice_aq_map_recipe_to_profile - Map recipe to packet profile
  * @hw: pointer to the HW struct
@@ -3873,6 +3931,23 @@ ice_find_recp(struct ice_hw *hw, struct ice_prot_lkup_ext *lkup_exts,
 	return ICE_MAX_NUM_RECIPES;
 }
 
+/**
+ * ice_change_proto_id_to_dvm - change proto id in prot_id_tbl
+ *
+ * As protocol id for outer vlan is different in dvm and svm, if dvm is
+ * supported protocol array record for outer vlan has to be modified to
+ * reflect the value proper for DVM.
+ */
+void ice_change_proto_id_to_dvm(void)
+{
+	u8 i;
+
+	for (i = 0; i < ARRAY_SIZE(ice_prot_id_tbl); i++)
+		if (ice_prot_id_tbl[i].type == ICE_VLAN_OFOS &&
+		    ice_prot_id_tbl[i].protocol_id != ICE_VLAN_OF_HW)
+			ice_prot_id_tbl[i].protocol_id = ICE_VLAN_OF_HW;
+}
+
 /**
  * ice_prot_type_to_id - get protocol ID from protocol type
  * @type: protocol type
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 5000cc8276cd..7b42c51a3eb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -118,6 +118,15 @@ struct ice_fltr_info {
 	u8 lan_en;	/* Indicate if packet can be forwarded to the uplink */
 };
 
+struct ice_update_recipe_lkup_idx_params {
+	u16 rid;
+	u16 fv_idx;
+	bool ignore_valid;
+	u16 mask;
+	bool mask_valid;
+	u8 lkup_idx;
+};
+
 struct ice_adv_lkup_elem {
 	enum ice_protocol_type type;
 	union ice_prot_hdr h_u;	/* Header values */
@@ -360,4 +369,8 @@ void ice_rm_all_sw_replay_rule_info(struct ice_hw *hw);
 int
 ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd *cd);
+int
+ice_update_recipe_lkup_idx(struct ice_hw *hw,
+			   struct ice_update_recipe_lkup_idx_params *params);
+void ice_change_proto_id_to_dvm(void);
 #endif /* _ICE_SWITCH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index ef2ef064a74c..1800aee88b9b 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -14,6 +14,7 @@
 #include "ice_flex_type.h"
 #include "ice_protocol_type.h"
 #include "ice_sbq_cmd.h"
+#include "ice_vlan_mode.h"
 
 static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
 {
@@ -919,6 +920,9 @@ struct ice_hw {
 	struct udp_tunnel_nic_shared udp_tunnel_shared;
 	struct udp_tunnel_nic_info udp_tunnel_nic;
 
+	/* dvm boost update information */
+	struct ice_dvm_table dvm_upd;
+
 	/* HW block tables */
 	struct ice_blk_info blk[ICE_BLK_COUNT];
 	struct mutex fl_profs_locks[ICE_BLK_COUNT];	/* lock fltr profiles */
@@ -942,6 +946,7 @@ struct ice_hw {
 	struct list_head rss_list_head;
 	struct ice_mbx_snapshot mbx_snapshot;
 	DECLARE_BITMAP(hw_ptype, ICE_FLOW_PTYPE_MAX);
+	u8 dvm_ena;
 	u16 io_expander_handle;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
index d89577843d68..4be29f97365c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
@@ -3,6 +3,7 @@
 
 #include "ice_vsi_vlan_ops.h"
 #include "ice_vsi_vlan_lib.h"
+#include "ice_vlan_mode.h"
 #include "ice.h"
 #include "ice_vf_vsi_vlan_ops.h"
 #include "ice_virtchnl_pf.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
new file mode 100644
index 000000000000..1b618de592b7
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
@@ -0,0 +1,439 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#include "ice_common.h"
+
+/**
+ * ice_pkg_get_supported_vlan_mode - determine if DDP supports Double VLAN mode
+ * @hw: pointer to the HW struct
+ * @dvm: output variable to determine if DDP supports DVM(true) or SVM(false)
+ */
+static int
+ice_pkg_get_supported_vlan_mode(struct ice_hw *hw, bool *dvm)
+{
+	u16 meta_init_size = sizeof(struct ice_meta_init_section);
+	struct ice_meta_init_section *sect;
+	struct ice_buf_build *bld;
+	int status;
+
+	/* if anything fails, we assume there is no DVM support */
+	*dvm = false;
+
+	bld = ice_pkg_buf_alloc_single_section(hw,
+					       ICE_SID_RXPARSER_METADATA_INIT,
+					       meta_init_size, (void **)&sect);
+	if (!bld)
+		return -ENOMEM;
+
+	/* only need to read a single section */
+	sect->count = cpu_to_le16(1);
+	sect->offset = cpu_to_le16(ICE_META_VLAN_MODE_ENTRY);
+
+	status = ice_aq_upload_section(hw,
+				       (struct ice_buf_hdr *)ice_pkg_buf(bld),
+				       ICE_PKG_BUF_SIZE, NULL);
+	if (!status) {
+		DECLARE_BITMAP(entry, ICE_META_INIT_BITS);
+		u32 arr[ICE_META_INIT_DW_CNT];
+		u16 i;
+
+		/* convert to host bitmap format */
+		for (i = 0; i < ICE_META_INIT_DW_CNT; i++)
+			arr[i] = le32_to_cpu(sect->entry.bm[i]);
+
+		bitmap_from_arr32(entry, arr, (u16)ICE_META_INIT_BITS);
+
+		/* check if DVM is supported */
+		*dvm = test_bit(ICE_META_VLAN_MODE_BIT, entry);
+	}
+
+	ice_pkg_buf_free(hw, bld);
+
+	return status;
+}
+
+/**
+ * ice_aq_get_vlan_mode - get the VLAN mode of the device
+ * @hw: pointer to the HW structure
+ * @get_params: structure FW fills in based on the current VLAN mode config
+ *
+ * Get VLAN Mode Parameters (0x020D)
+ */
+static int
+ice_aq_get_vlan_mode(struct ice_hw *hw,
+		     struct ice_aqc_get_vlan_mode *get_params)
+{
+	struct ice_aq_desc desc;
+
+	if (!get_params)
+		return -EINVAL;
+
+	ice_fill_dflt_direct_cmd_desc(&desc,
+				      ice_aqc_opc_get_vlan_mode_parameters);
+
+	return ice_aq_send_cmd(hw, &desc, get_params, sizeof(*get_params),
+			       NULL);
+}
+
+/**
+ * ice_aq_is_dvm_ena - query FW to check if double VLAN mode is enabled
+ * @hw: pointer to the HW structure
+ *
+ * Returns true if the hardware/firmware is configured in double VLAN mode,
+ * else return false signaling that the hardware/firmware is configured in
+ * single VLAN mode.
+ *
+ * Also, return false if this call fails for any reason (i.e. firmware doesn't
+ * support this AQ call).
+ */
+static bool ice_aq_is_dvm_ena(struct ice_hw *hw)
+{
+	struct ice_aqc_get_vlan_mode get_params = { 0 };
+	int status;
+
+	status = ice_aq_get_vlan_mode(hw, &get_params);
+	if (status) {
+		ice_debug(hw, ICE_DBG_AQ, "Failed to get VLAN mode, status %d\n",
+			  status);
+		return false;
+	}
+
+	return (get_params.vlan_mode & ICE_AQ_VLAN_MODE_DVM_ENA);
+}
+
+/**
+ * ice_is_dvm_ena - check if double VLAN mode is enabled
+ * @hw: pointer to the HW structure
+ *
+ * The device is configured in single or double VLAN mode on initialization and
+ * this cannot be dynamically changed during runtime. Based on this there is no
+ * need to make an AQ call every time the driver needs to know the VLAN mode.
+ * Instead, use the cached VLAN mode.
+ */
+bool ice_is_dvm_ena(struct ice_hw *hw)
+{
+	return hw->dvm_ena;
+}
+
+/**
+ * ice_cache_vlan_mode - cache VLAN mode after DDP is downloaded
+ * @hw: pointer to the HW structure
+ *
+ * This is only called after downloading the DDP and after the global
+ * configuration lock has been released because all ports on a device need to
+ * cache the VLAN mode.
+ */
+static void ice_cache_vlan_mode(struct ice_hw *hw)
+{
+	hw->dvm_ena = ice_aq_is_dvm_ena(hw) ? true : false;
+}
+
+/**
+ * ice_pkg_supports_dvm - find out if DDP supports DVM
+ * @hw: pointer to the HW structure
+ */
+static bool ice_pkg_supports_dvm(struct ice_hw *hw)
+{
+	bool pkg_supports_dvm;
+	int status;
+
+	status = ice_pkg_get_supported_vlan_mode(hw, &pkg_supports_dvm);
+	if (status) {
+		ice_debug(hw, ICE_DBG_PKG, "Failed to get supported VLAN mode, status %d\n",
+			  status);
+		return false;
+	}
+
+	return pkg_supports_dvm;
+}
+
+/**
+ * ice_fw_supports_dvm - find out if FW supports DVM
+ * @hw: pointer to the HW structure
+ */
+static bool ice_fw_supports_dvm(struct ice_hw *hw)
+{
+	struct ice_aqc_get_vlan_mode get_vlan_mode = { 0 };
+	int status;
+
+	/* If firmware returns success, then it supports DVM, else it only
+	 * supports SVM
+	 */
+	status = ice_aq_get_vlan_mode(hw, &get_vlan_mode);
+	if (status) {
+		ice_debug(hw, ICE_DBG_NVM, "Failed to get VLAN mode, status %d\n",
+			  status);
+		return false;
+	}
+
+	return true;
+}
+
+/**
+ * ice_is_dvm_supported - check if Double VLAN Mode is supported
+ * @hw: pointer to the hardware structure
+ *
+ * Returns true if Double VLAN Mode (DVM) is supported and false if only Single
+ * VLAN Mode (SVM) is supported. In order for DVM to be supported the DDP and
+ * firmware must support it, otherwise only SVM is supported. This function
+ * should only be called while the global config lock is held and after the
+ * package has been successfully downloaded.
+ */
+static bool ice_is_dvm_supported(struct ice_hw *hw)
+{
+	if (!ice_pkg_supports_dvm(hw)) {
+		ice_debug(hw, ICE_DBG_PKG, "DDP doesn't support DVM\n");
+		return false;
+	}
+
+	if (!ice_fw_supports_dvm(hw)) {
+		ice_debug(hw, ICE_DBG_PKG, "FW doesn't support DVM\n");
+		return false;
+	}
+
+	return true;
+}
+
+#define ICE_EXTERNAL_VLAN_ID_FV_IDX			11
+#define ICE_SW_LKUP_VLAN_LOC_LKUP_IDX			1
+#define ICE_SW_LKUP_VLAN_PKT_FLAGS_LKUP_IDX		2
+#define ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX		2
+#define ICE_PKT_FLAGS_0_TO_15_FV_IDX			1
+#define ICE_PKT_FLAGS_0_TO_15_VLAN_FLAGS_MASK		0xD000
+static struct ice_update_recipe_lkup_idx_params ice_dvm_dflt_recipes[] = {
+	{
+		/* Update recipe ICE_SW_LKUP_VLAN to filter based on the
+		 * outer/single VLAN in DVM
+		 */
+		.rid = ICE_SW_LKUP_VLAN,
+		.fv_idx = ICE_EXTERNAL_VLAN_ID_FV_IDX,
+		.ignore_valid = true,
+		.mask = 0,
+		.mask_valid = false, /* use pre-existing mask */
+		.lkup_idx = ICE_SW_LKUP_VLAN_LOC_LKUP_IDX,
+	},
+	{
+		/* Update recipe ICE_SW_LKUP_VLAN to filter based on the VLAN
+		 * packet flags to support VLAN filtering on multiple VLAN
+		 * ethertypes (i.e. 0x8100 and 0x88a8) in DVM
+		 */
+		.rid = ICE_SW_LKUP_VLAN,
+		.fv_idx = ICE_PKT_FLAGS_0_TO_15_FV_IDX,
+		.ignore_valid = false,
+		.mask = ICE_PKT_FLAGS_0_TO_15_VLAN_FLAGS_MASK,
+		.mask_valid = true,
+		.lkup_idx = ICE_SW_LKUP_VLAN_PKT_FLAGS_LKUP_IDX,
+	},
+	{
+		/* Update recipe ICE_SW_LKUP_PROMISC_VLAN to filter based on the
+		 * outer/single VLAN in DVM
+		 */
+		.rid = ICE_SW_LKUP_PROMISC_VLAN,
+		.fv_idx = ICE_EXTERNAL_VLAN_ID_FV_IDX,
+		.ignore_valid = true,
+		.mask = 0,
+		.mask_valid = false,  /* use pre-existing mask */
+		.lkup_idx = ICE_SW_LKUP_PROMISC_VLAN_LOC_LKUP_IDX,
+	},
+};
+
+/**
+ * ice_dvm_update_dflt_recipes - update default switch recipes in DVM
+ * @hw: hardware structure used to update the recipes
+ */
+static int ice_dvm_update_dflt_recipes(struct ice_hw *hw)
+{
+	unsigned long i;
+
+	for (i = 0; i < ARRAY_SIZE(ice_dvm_dflt_recipes); i++) {
+		struct ice_update_recipe_lkup_idx_params *params;
+		int status;
+
+		params = &ice_dvm_dflt_recipes[i];
+
+		status = ice_update_recipe_lkup_idx(hw, params);
+		if (status) {
+			ice_debug(hw, ICE_DBG_INIT, "Failed to update RID %d lkup_idx %d fv_idx %d mask_valid %s mask 0x%04x\n",
+				  params->rid, params->lkup_idx, params->fv_idx,
+				  params->mask_valid ? "true" : "false",
+				  params->mask);
+			return status;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_aq_set_vlan_mode - set the VLAN mode of the device
+ * @hw: pointer to the HW structure
+ * @set_params: requested VLAN mode configuration
+ *
+ * Set VLAN Mode Parameters (0x020C)
+ */
+static int
+ice_aq_set_vlan_mode(struct ice_hw *hw,
+		     struct ice_aqc_set_vlan_mode *set_params)
+{
+	u8 rdma_packet, mng_vlan_prot_id;
+	struct ice_aq_desc desc;
+
+	if (!set_params)
+		return -EINVAL;
+
+	if (set_params->l2tag_prio_tagging > ICE_AQ_VLAN_PRIO_TAG_MAX)
+		return -EINVAL;
+
+	rdma_packet = set_params->rdma_packet;
+	if (rdma_packet != ICE_AQ_SVM_VLAN_RDMA_PKT_FLAG_SETTING &&
+	    rdma_packet != ICE_AQ_DVM_VLAN_RDMA_PKT_FLAG_SETTING)
+		return -EINVAL;
+
+	mng_vlan_prot_id = set_params->mng_vlan_prot_id;
+	if (mng_vlan_prot_id != ICE_AQ_VLAN_MNG_PROTOCOL_ID_OUTER &&
+	    mng_vlan_prot_id != ICE_AQ_VLAN_MNG_PROTOCOL_ID_INNER)
+		return -EINVAL;
+
+	ice_fill_dflt_direct_cmd_desc(&desc,
+				      ice_aqc_opc_set_vlan_mode_parameters);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	return ice_aq_send_cmd(hw, &desc, set_params, sizeof(*set_params),
+			       NULL);
+}
+
+/**
+ * ice_set_dvm - sets up software and hardware for double VLAN mode
+ * @hw: pointer to the hardware structure
+ */
+static int ice_set_dvm(struct ice_hw *hw)
+{
+	struct ice_aqc_set_vlan_mode params = { 0 };
+	int status;
+
+	params.l2tag_prio_tagging = ICE_AQ_VLAN_PRIO_TAG_OUTER_CTAG;
+	params.rdma_packet = ICE_AQ_DVM_VLAN_RDMA_PKT_FLAG_SETTING;
+	params.mng_vlan_prot_id = ICE_AQ_VLAN_MNG_PROTOCOL_ID_OUTER;
+
+	status = ice_aq_set_vlan_mode(hw, &params);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to set double VLAN mode parameters, status %d\n",
+			  status);
+		return status;
+	}
+
+	status = ice_dvm_update_dflt_recipes(hw);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to update default recipes for double VLAN mode, status %d\n",
+			  status);
+		return status;
+	}
+
+	status = ice_aq_set_port_params(hw->port_info, true, NULL);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to set port in double VLAN mode, status %d\n",
+			  status);
+		return status;
+	}
+
+	status = ice_set_dvm_boost_entries(hw);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to set boost TCAM entries for double VLAN mode, status %d\n",
+			  status);
+		return status;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_set_svm - set single VLAN mode
+ * @hw: pointer to the HW structure
+ */
+static int ice_set_svm(struct ice_hw *hw)
+{
+	struct ice_aqc_set_vlan_mode *set_params;
+	int status;
+
+	status = ice_aq_set_port_params(hw->port_info, false, NULL);
+	if (status) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to set port parameters for single VLAN mode\n");
+		return status;
+	}
+
+	set_params = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*set_params),
+				  GFP_KERNEL);
+	if (!set_params)
+		return -ENOMEM;
+
+	/* default configuration for SVM configurations */
+	set_params->l2tag_prio_tagging = ICE_AQ_VLAN_PRIO_TAG_INNER_CTAG;
+	set_params->rdma_packet = ICE_AQ_SVM_VLAN_RDMA_PKT_FLAG_SETTING;
+	set_params->mng_vlan_prot_id = ICE_AQ_VLAN_MNG_PROTOCOL_ID_INNER;
+
+	status = ice_aq_set_vlan_mode(hw, set_params);
+	if (status)
+		ice_debug(hw, ICE_DBG_INIT, "Failed to configure port in single VLAN mode\n");
+
+	devm_kfree(ice_hw_to_dev(hw), set_params);
+	return status;
+}
+
+/**
+ * ice_set_vlan_mode
+ * @hw: pointer to the HW structure
+ */
+int ice_set_vlan_mode(struct ice_hw *hw)
+{
+	if (!ice_is_dvm_supported(hw))
+		return 0;
+
+	if (!ice_set_dvm(hw))
+		return 0;
+
+	return ice_set_svm(hw);
+}
+
+/**
+ * ice_print_dvm_not_supported - print if DDP and/or FW doesn't support DVM
+ * @hw: pointer to the HW structure
+ *
+ * The purpose of this function is to print that  QinQ is not supported due to
+ * incompatibilty from the DDP and/or FW. This will give a hint to the user to
+ * update one and/or both components if they expect QinQ functionality.
+ */
+static void ice_print_dvm_not_supported(struct ice_hw *hw)
+{
+	bool pkg_supports_dvm = ice_pkg_supports_dvm(hw);
+	bool fw_supports_dvm = ice_fw_supports_dvm(hw);
+
+	if (!fw_supports_dvm && !pkg_supports_dvm)
+		dev_info(ice_hw_to_dev(hw), "QinQ functionality cannot be enabled on this device. Update your DDP package and NVM to versions that support QinQ.\n");
+	else if (!pkg_supports_dvm)
+		dev_info(ice_hw_to_dev(hw), "QinQ functionality cannot be enabled on this device. Update your DDP package to a version that supports QinQ.\n");
+	else if (!fw_supports_dvm)
+		dev_info(ice_hw_to_dev(hw), "QinQ functionality cannot be enabled on this device. Update your NVM to a version that supports QinQ.\n");
+}
+
+/**
+ * ice_post_pkg_dwnld_vlan_mode_cfg - configure VLAN mode after DDP download
+ * @hw: pointer to the HW structure
+ *
+ * This function is meant to configure any VLAN mode specific functionality
+ * after the global configuration lock has been released and the DDP has been
+ * downloaded.
+ *
+ * Since only one PF downloads the DDP and configures the VLAN mode there needs
+ * to be a way to configure the other PFs after the DDP has been downloaded and
+ * the global configuration lock has been released. All such code should go in
+ * this function.
+ */
+void ice_post_pkg_dwnld_vlan_mode_cfg(struct ice_hw *hw)
+{
+	ice_cache_vlan_mode(hw);
+
+	if (ice_is_dvm_ena(hw))
+		ice_change_proto_id_to_dvm();
+	else
+		ice_print_dvm_not_supported(hw);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vlan_mode.h b/drivers/net/ethernet/intel/ice/ice_vlan_mode.h
new file mode 100644
index 000000000000..a0fb743d08e2
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vlan_mode.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019-2021, Intel Corporation. */
+
+#ifndef _ICE_VLAN_MODE_H_
+#define _ICE_VLAN_MODE_H_
+
+struct ice_hw;
+
+bool ice_is_dvm_ena(struct ice_hw *hw);
+int ice_set_vlan_mode(struct ice_hw *hw);
+void ice_post_pkg_dwnld_vlan_mode_cfg(struct ice_hw *hw);
+
+#endif /* _ICE_VLAN_MODE_H */
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 62a2630d6fab..5b4a0abb4607 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -39,20 +39,20 @@ static bool validate_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
  */
 int ice_vsi_add_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 {
-	int err = 0;
+	int err;
 
 	if (!validate_vlan(vsi, vlan))
 		return -EINVAL;
 
-	if (!ice_fltr_add_vlan(vsi, vlan)) {
-		vsi->num_vlan++;
-	} else {
-		err = -ENODEV;
-		dev_err(ice_pf_to_dev(vsi->back), "Failure Adding VLAN %d on VSI %i\n",
-			vlan->vid, vsi->vsi_num);
+	err = ice_fltr_add_vlan(vsi, vlan);
+	if (err && err != -EEXIST) {
+		dev_err(ice_pf_to_dev(vsi->back), "Failure Adding VLAN %d on VSI %i, status %d\n",
+			vlan->vid, vsi->vsi_num, err);
+		return err;
 	}
 
-	return err;
+	vsi->num_vlan++;
+	return 0;
 }
 
 /**
@@ -72,16 +72,13 @@ int ice_vsi_del_vlan(struct ice_vsi *vsi, struct ice_vlan *vlan)
 	dev = ice_pf_to_dev(pf);
 
 	err = ice_fltr_remove_vlan(vsi, vlan);
-	if (!err) {
+	if (!err)
 		vsi->num_vlan--;
-	} else if (err == -ENOENT) {
-		dev_dbg(dev, "Failed to remove VLAN %d on VSI %i, it does not exist\n",
-			vlan->vid, vsi->vsi_num);
+	else if (err == -ENOENT || err == -EBUSY)
 		err = 0;
-	} else {
+	else
 		dev_err(dev, "Error removing VLAN %d on VSI %i error: %d\n",
 			vlan->vid, vsi->vsi_num, err);
-	}
 
 	return err;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
index 30d02d2b8e5f..5b47568f6256 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_ops.h
@@ -23,11 +23,6 @@ struct ice_vsi_vlan_ops {
 	int (*set_port_vlan)(struct ice_vsi *vsi, struct ice_vlan *vlan);
 };
 
-static inline bool ice_is_dvm_ena(struct ice_hw __always_unused *hw)
-{
-	return false;
-}
-
 void ice_vsi_init_vlan_ops(struct ice_vsi *vsi);
 struct ice_vsi_vlan_ops *ice_get_compat_vsi_vlan_ops(struct ice_vsi *vsi);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
