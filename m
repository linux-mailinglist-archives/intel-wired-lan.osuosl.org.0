Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A74E38B49A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 18:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C19B183A4E;
	Thu, 20 May 2021 16:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R4pRZ-XhcXSG; Thu, 20 May 2021 16:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCC5684323;
	Thu, 20 May 2021 16:49:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8FA6A1BF956
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 16:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8816C403C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 16:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sYmRed0THpdZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 16:49:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E49040409
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 16:49:00 +0000 (UTC)
IronPort-SDR: 64TdLr1z4sVm2T3liJE9zPy+mIItz/RGPPi7cTWYpqa+5Fy9zaaq2KyXKqlTAcmtAQVsRPtSDU
 WayT/UAX2img==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="188401243"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="188401243"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 09:48:58 -0700
IronPort-SDR: 5pUoulV3EVqUP88UIe7J++ZJw4nUm1+eH7NkSCDH6auCk8+nShM/oS9jXb1bZve9JWxS+C0FMo
 hmQwofYCbk2Q==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="543659615"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 09:48:58 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 20 May 2021 09:48:44 -0700
Message-Id: <20210520164850.1884656-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20210520164850.1884656-1-jacob.e.keller@intel.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/8] ice: process 1588 PTP capabilities
 during initialization
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
Cc: Sean Lion <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The device firmware reports PTP clock capabilities to each PF during
initialization. This includes various information for both the overall
device and the individual function, including

For functions:
* whether this function has timesync enabled
* whether this function owns one of the 2 possible clock timers, and
  which one
* which timer the function is associated with
* the clock frequency, if the device supports multiple clock frequencies
* The GPIO pin association for the timer owned by this PF, if any

For the device:
* Which PF owns timer 0, if any
* Which PF owns timer 1, if any
* whether timer 0 is enabled
* whether timer 1 is enabled

Extract the bits from the capabilities information reported by firmware
and store them in the device and function capability structures.o

This information will be used in a future change to have the function
driver enable PTP hardware clock support.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 99 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     | 51 ++++++++++
 3 files changed, 151 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 350ed018beac..2edee746a03c 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -108,6 +108,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_TXQS				0x0042
 #define ICE_AQC_CAPS_MSIX				0x0043
 #define ICE_AQC_CAPS_FD					0x0045
+#define ICE_AQC_CAPS_1588				0x0046
 #define ICE_AQC_CAPS_MAX_MTU				0x0047
 #define ICE_AQC_CAPS_NVM_VER				0x0048
 #define ICE_AQC_CAPS_PENDING_NVM_VER			0x0049
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 5878c3c0595f..17b57ccf2492 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2076,6 +2076,48 @@ ice_parse_vsi_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		  func_p->guar_num_vsi);
 }
 
+/**
+ * ice_parse_1588_func_caps - Parse ICE_AQC_CAPS_1588 function caps
+ * @hw: pointer to the HW struct
+ * @func_p: pointer to function capabilities structure
+ * @cap: pointer to the capability element to parse
+ *
+ * Extract function capabilities for ICE_AQC_CAPS_1588.
+ */
+static void
+ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
+			 struct ice_aqc_list_caps_elem *cap)
+{
+	struct ice_ts_func_info *info = &func_p->ts_func_info;
+	u32 number = le32_to_cpu(cap->number);
+
+	info->ena = ((number & ICE_TS_FUNC_ENA_M) != 0);
+	func_p->common_cap.ieee_1588 = info->ena;
+
+	info->src_tmr_owned = ((number & ICE_TS_SRC_TMR_OWND_M) != 0);
+	info->tmr_ena = ((number & ICE_TS_TMR_ENA_M) != 0);
+	info->tmr_index_owned = ((number & ICE_TS_TMR_IDX_OWND_M) != 0);
+	info->tmr_index_assoc = ((number & ICE_TS_TMR_IDX_ASSOC_M) != 0);
+
+	info->clk_freq = (number & ICE_TS_CLK_FREQ_M) >> ICE_TS_CLK_FREQ_S;
+	info->clk_src = ((number & ICE_TS_CLK_SRC_M) != 0);
+
+	ice_debug(hw, ICE_DBG_INIT, "func caps: ieee_1588 = %u\n",
+		  func_p->common_cap.ieee_1588);
+	ice_debug(hw, ICE_DBG_INIT, "func caps: src_tmr_owned = %u\n",
+		  info->src_tmr_owned);
+	ice_debug(hw, ICE_DBG_INIT, "func caps: tmr_ena = %u\n",
+		  info->tmr_ena);
+	ice_debug(hw, ICE_DBG_INIT, "func caps: tmr_index_owned = %u\n",
+		  info->tmr_index_owned);
+	ice_debug(hw, ICE_DBG_INIT, "func caps: tmr_index_assoc = %u\n",
+		  info->tmr_index_assoc);
+	ice_debug(hw, ICE_DBG_INIT, "func caps: clk_freq = %u\n",
+		  info->clk_freq);
+	ice_debug(hw, ICE_DBG_INIT, "func caps: clk_src = %u\n",
+		  info->clk_src);
+}
+
 /**
  * ice_parse_fdir_func_caps - Parse ICE_AQC_CAPS_FD function caps
  * @hw: pointer to the HW struct
@@ -2142,6 +2184,9 @@ ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		case ICE_AQC_CAPS_VSI:
 			ice_parse_vsi_func_caps(hw, func_p, &cap_resp[i]);
 			break;
+		case ICE_AQC_CAPS_1588:
+			ice_parse_1588_func_caps(hw, func_p, &cap_resp[i]);
+			break;
 		case ICE_AQC_CAPS_FD:
 			ice_parse_fdir_func_caps(hw, func_p);
 			break;
@@ -2214,6 +2259,57 @@ ice_parse_vsi_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		  dev_p->num_vsi_allocd_to_host);
 }
 
+/**
+ * ice_parse_1588_dev_caps - Parse ICE_AQC_CAPS_1588 device caps
+ * @hw: pointer to the HW struct
+ * @dev_p: pointer to device capabilities structure
+ * @cap: capability element to parse
+ *
+ * Parse ICE_AQC_CAPS_1588 for device capabilities.
+ */
+static void
+ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
+			struct ice_aqc_list_caps_elem *cap)
+{
+	struct ice_ts_dev_info *info = &dev_p->ts_dev_info;
+	u32 logical_id = le32_to_cpu(cap->logical_id);
+	u32 phys_id = le32_to_cpu(cap->phys_id);
+	u32 number = le32_to_cpu(cap->number);
+
+	info->ena = ((number & ICE_TS_DEV_ENA_M) != 0);
+	dev_p->common_cap.ieee_1588 = info->ena;
+
+	info->tmr0_owner = number & ICE_TS_TMR0_OWNR_M;
+	info->tmr0_owned = ((number & ICE_TS_TMR0_OWND_M) != 0);
+	info->tmr0_ena = ((number & ICE_TS_TMR0_ENA_M) != 0);
+
+	info->tmr1_owner = (number & ICE_TS_TMR1_OWNR_M) >> ICE_TS_TMR1_OWNR_S;
+	info->tmr1_owned = ((number & ICE_TS_TMR1_OWND_M) != 0);
+	info->tmr1_ena = ((number & ICE_TS_TMR1_ENA_M) != 0);
+
+	info->ena_ports = logical_id;
+	info->tmr_own_map = phys_id;
+
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: ieee_1588 = %u\n",
+		  dev_p->common_cap.ieee_1588);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr0_owner = %u\n",
+		  info->tmr0_owner);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr0_owned = %u\n",
+		  info->tmr0_owned);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr0_ena = %u\n",
+		  info->tmr0_ena);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr1_owner = %u\n",
+		  info->tmr1_owner);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr1_owned = %u\n",
+		  info->tmr1_owned);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr1_ena = %u\n",
+		  info->tmr1_ena);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: ieee_1588 ena_ports = %u\n",
+		  info->ena_ports);
+	ice_debug(hw, ICE_DBG_INIT, "dev caps: tmr_own_map = %u\n",
+		  info->tmr_own_map);
+}
+
 /**
  * ice_parse_fdir_dev_caps - Parse ICE_AQC_CAPS_FD device caps
  * @hw: pointer to the HW struct
@@ -2275,6 +2371,9 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		case ICE_AQC_CAPS_VSI:
 			ice_parse_vsi_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
+		case ICE_AQC_CAPS_1588:
+			ice_parse_1588_dev_caps(hw, dev_p, &cap_resp[i]);
+			break;
 		case  ICE_AQC_CAPS_FD:
 			ice_parse_fdir_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 77d4c4513104..3400719a2770 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -264,6 +264,7 @@ struct ice_hw_common_caps {
 	u8 rss_table_entry_width;	/* RSS Entry width in bits */
 
 	u8 dcb;
+	u8 ieee_1588;
 
 	bool nvm_update_pending_nvm;
 	bool nvm_update_pending_orom;
@@ -275,6 +276,54 @@ struct ice_hw_common_caps {
 #define ICE_NVM_MGMT_UNIFIED_UPD_SUPPORT	BIT(3)
 };
 
+/* IEEE 1588 TIME_SYNC specific info */
+/* Function specific definitions */
+#define ICE_TS_FUNC_ENA_M		BIT(0)
+#define ICE_TS_SRC_TMR_OWND_M		BIT(1)
+#define ICE_TS_TMR_ENA_M		BIT(2)
+#define ICE_TS_TMR_IDX_OWND_S		4
+#define ICE_TS_TMR_IDX_OWND_M		BIT(4)
+#define ICE_TS_CLK_FREQ_S		16
+#define ICE_TS_CLK_FREQ_M		ICE_M(0x7, ICE_TS_CLK_FREQ_S)
+#define ICE_TS_CLK_SRC_S		20
+#define ICE_TS_CLK_SRC_M		BIT(20)
+#define ICE_TS_TMR_IDX_ASSOC_S		24
+#define ICE_TS_TMR_IDX_ASSOC_M		BIT(24)
+
+struct ice_ts_func_info {
+	/* Function specific info */
+	u32 clk_freq;
+	u8 clk_src;
+	u8 tmr_index_assoc;
+	u8 ena;
+	u8 tmr_index_owned;
+	u8 src_tmr_owned;
+	u8 tmr_ena;
+};
+
+/* Device specific definitions */
+#define ICE_TS_TMR0_OWNR_M		0x7
+#define ICE_TS_TMR0_OWND_M		BIT(3)
+#define ICE_TS_TMR1_OWNR_S		4
+#define ICE_TS_TMR1_OWNR_M		ICE_M(0x7, ICE_TS_TMR1_OWNR_S)
+#define ICE_TS_TMR1_OWND_M		BIT(7)
+#define ICE_TS_DEV_ENA_M		BIT(24)
+#define ICE_TS_TMR0_ENA_M		BIT(25)
+#define ICE_TS_TMR1_ENA_M		BIT(26)
+
+struct ice_ts_dev_info {
+	/* Device specific info */
+	u32 ena_ports;
+	u32 tmr_own_map;
+	u32 tmr0_owner;
+	u32 tmr1_owner;
+	u8 tmr0_owned;
+	u8 tmr1_owned;
+	u8 ena;
+	u8 tmr0_ena;
+	u8 tmr1_ena;
+};
+
 /* Function specific capabilities */
 struct ice_hw_func_caps {
 	struct ice_hw_common_caps common_cap;
@@ -283,6 +332,7 @@ struct ice_hw_func_caps {
 	u32 guar_num_vsi;
 	u32 fd_fltr_guar;		/* Number of filters guaranteed */
 	u32 fd_fltr_best_effort;	/* Number of best effort filters */
+	struct ice_ts_func_info ts_func_info;
 };
 
 /* Device wide capabilities */
@@ -291,6 +341,7 @@ struct ice_hw_dev_caps {
 	u32 num_vfs_exposed;		/* Total number of VFs exposed */
 	u32 num_vsi_allocd_to_host;	/* Excluding EMP VSI */
 	u32 num_flow_director_fltr;	/* Number of FD filters available */
+	struct ice_ts_dev_info ts_dev_info;
 	u32 num_funcs;
 };
 
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
