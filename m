Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 368163A1B41
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 18:52:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC3C360A5E;
	Wed,  9 Jun 2021 16:52:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OT1JbZ_lgaqd; Wed,  9 Jun 2021 16:52:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A250E6090C;
	Wed,  9 Jun 2021 16:52:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23E1B1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F11E4056C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12dv5wqxwwJ5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 16:51:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5440240499
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 16:51:49 +0000 (UTC)
IronPort-SDR: PlK3Qq6ciEbpiLEysZBR1JNBN6rR3NDoPCteiZHVLpVj3aimVLovUPpurMLE/DXfvCBdEDHYSp
 awGpdUoGizrA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="290743480"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="290743480"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 09:51:48 -0700
IronPort-SDR: KtK9t+WahjwGxqM7mo1b6Dc5M/Xi7Tdcrh5JHHcIpazk0l4rvmYHlqQxwEZxcrw/2teDKeeuy5
 3th8MKeAQb1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="638054836"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jun 2021 09:51:47 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Jun 2021 09:39:47 -0700
Message-Id: <20210609163953.52440-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 2/8] ice: process 1588 PTP capabilities
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

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
index 272d1600268e..f10c1b8555a4 100644
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
index 8abb70d13832..103839feb12e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2093,6 +2093,48 @@ ice_parse_vsi_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
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
@@ -2159,6 +2201,9 @@ ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		case ICE_AQC_CAPS_VSI:
 			ice_parse_vsi_func_caps(hw, func_p, &cap_resp[i]);
 			break;
+		case ICE_AQC_CAPS_1588:
+			ice_parse_1588_func_caps(hw, func_p, &cap_resp[i]);
+			break;
 		case ICE_AQC_CAPS_FD:
 			ice_parse_fdir_func_caps(hw, func_p);
 			break;
@@ -2231,6 +2276,57 @@ ice_parse_vsi_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
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
@@ -2292,6 +2388,9 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
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
index 4a40e2b3732a..0e5d8d52728b 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -265,6 +265,7 @@ struct ice_hw_common_caps {
 	u8 rss_table_entry_width;	/* RSS Entry width in bits */
 
 	u8 dcb;
+	u8 ieee_1588;
 	u8 rdma;
 
 	bool nvm_update_pending_nvm;
@@ -277,6 +278,54 @@ struct ice_hw_common_caps {
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
@@ -285,6 +334,7 @@ struct ice_hw_func_caps {
 	u32 guar_num_vsi;
 	u32 fd_fltr_guar;		/* Number of filters guaranteed */
 	u32 fd_fltr_best_effort;	/* Number of best effort filters */
+	struct ice_ts_func_info ts_func_info;
 };
 
 /* Device wide capabilities */
@@ -293,6 +343,7 @@ struct ice_hw_dev_caps {
 	u32 num_vfs_exposed;		/* Total number of VFs exposed */
 	u32 num_vsi_allocd_to_host;	/* Excluding EMP VSI */
 	u32 num_flow_director_fltr;	/* Number of FD filters available */
+	struct ice_ts_dev_info ts_dev_info;
 	u32 num_funcs;
 };
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
