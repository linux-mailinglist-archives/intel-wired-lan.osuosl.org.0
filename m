Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E797A6F79
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 01:35:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 286D5417D8;
	Tue, 19 Sep 2023 23:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 286D5417D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695166531;
	bh=NYvOZSdLaNtkpLa9FWb47d2sTAAA+T1/N8bQZfjaimY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XJGUMq4p4qkrIBSLN5k31ho38SrCdMqO7UracVyGSzN9XyEMYAATjFeV6SAcWEVPw
	 X84vp9OUOuHf62BLSU9/JuAtiyQBYoFVnfPbqqUT3E0GGs5XQy778Ieeh2iKIvWq8R
	 3eJXfQa3nEFcQbhUyWPYlBZda8SE5cCc5wNlsA6Mzj699k++80yDwWGIxqLA8qdYQL
	 cQ3gNHOVMSsBXCDTW2oWBqzT8WFhP/qYJIF8t8MFyIuuf8uWcVYU/vUzAQMva2MtAa
	 uVkxxDTTuMYtxFPJpn9SqICDlinVAuT4IToNWq781desWEQq3Hi0wThZlwjGD85hW4
	 JHDzy54aj0K3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXrtTOArLIYa; Tue, 19 Sep 2023 23:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81F83417D5;
	Tue, 19 Sep 2023 23:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81F83417D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 071AD1BF407
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 222FF41E3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 222FF41E3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Rw3UOVUR9Rm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 23:35:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C88DB41D86
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C88DB41D86
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="444172127"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="444172127"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="749668103"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="749668103"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 19 Sep 2023 16:34:33 -0700
Message-ID: <20230919233435.518620-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230919233435.518620-1-jacob.e.keller@intel.com>
References: <20230919233435.518620-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695166506; x=1726702506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kgY6Y0OvAcaNtevWc5N5c6CsqK0ZEtQLAWlhFUhDucQ=;
 b=Hxp5DGqQ4NHFZ7/1oecVf8LFBn0aHNkdn2njEl/0fSY5Xo4Ue1NUvDYF
 /yV1sc5cSVodtBVrvIHqFR/KEkWGLAy5OxykxyDhY21pd9BGv5Iok+IqK
 h0dTdON0pTlnl9i6V8bEi3+wusR5qgYCwCIPus/CIlM3JspbaX54wnXWN
 sWyy3qmB0e1Xj+gr0ZfcamyaolNmYeWslxvUIWcda1uDiL61RTtM1T7IL
 wnB7KICyfCb0fxM/aB/KZRdUKgCzIEe1KbejfCTcpDvh5fggwMhId0oXC
 KqCltpxEi6uJuL+WwY3Xfm7eJu6AEfoHtH6OpqG+yolfmkaPdvzHPmitM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hxp5DGqQ
Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: move netlist check
 functions to ice_common.c
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_ptp_hw.c file has a few functions which check for whether the
device netlist has a node indicating hardware support for certain features.
These checks don't really make sense to be in ice_ptp_hw.c. In addition,
their names could be confusing as they just say "is_present" but really are
checking the netlist.

Additionally, these functions are only compiled into the ice module if
CONFIG_PTP_1588_CLOCK is enabled. They are used in ice_lib.c which is
unconditionally compiled, so this can result in build errors if the PTP
support is disabled:

ld: vmlinux.o: in function `ice_init_feature_support':
(.text+0x8702b8): undefined reference to `ice_is_phy_rclk_present'
ld: (.text+0x8702cd): undefined reference to `ice_is_cgu_present'
ld: (.text+0x8702d9): undefined reference to `ice_is_clock_mux_present_e810t'

To fix this, we need to define these functions outside of ice_ptp.c or
ice_ptp_hw.c.

The ice_common.c already hace ice_is_gps_in_netlist. Move the similar
functions in ice_ptp_hw.c into ice_common.c, renaming them to use the
postfix "_in_netlist" to match the GPS check. Where appropriate, also drop
the _e810t postfix as well.

This also makes the ice_find_netlist_node only called from within
ice_common.c, so its safe to mark it static and stop declaring it in the
ice_common.h header.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 66 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h |  6 +-
 drivers/net/ethernet/intel/ice/ice_lib.c    |  6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 66 ---------------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 -
 5 files changed, 69 insertions(+), 78 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index bcf7d9c56248..12c09374c2be 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -477,9 +477,8 @@ ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
  * netlist. When found ICE_SUCCESS is returned, ICE_ERR_DOES_NOT_EXIST
  * otherwise. If node_handle provided, it would be set to found node handle.
  */
-int
-ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
-		      u16 *node_handle)
+static int ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx,
+				 u8 node_part_number, u16 *node_handle)
 {
 	struct ice_aqc_get_link_topo cmd;
 	u8 rec_node_part_number;
@@ -2552,6 +2551,67 @@ bool ice_is_pf_c827(struct ice_hw *hw)
 	return false;
 }
 
+/**
+ * ice_is_phy_rclk_in_netlist
+ * @hw: pointer to the hw struct
+ *
+ * Check if the PHY Recovered Clock device is present in the netlist
+ */
+bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw)
+{
+	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+				  ICE_AQC_GET_LINK_TOPO_NODE_NR_C827, NULL) &&
+	    ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+				  ICE_AQC_GET_LINK_TOPO_NODE_NR_E822_PHY, NULL))
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_is_clock_mux_in_netlist
+ * @hw: pointer to the hw struct
+ *
+ * Check if the Clock Multiplexer device is present in the netlist
+ */
+bool ice_is_clock_mux_in_netlist(struct ice_hw *hw)
+{
+	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
+				  ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
+				  NULL))
+		return false;
+
+	return true;
+}
+
+/**
+ * ice_is_cgu_in_netlist - check for CGU presence
+ * @hw: pointer to the hw struct
+ *
+ * Check if the Clock Generation Unit (CGU) device is present in the netlist.
+ * Save the CGU part number in the hw structure for later use.
+ * Return:
+ * * true - cgu is present
+ * * false - cgu is not present
+ */
+bool ice_is_cgu_in_netlist(struct ice_hw *hw)
+{
+	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+				   ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
+				   NULL)) {
+		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
+		return true;
+	} else if (!ice_find_netlist_node(hw,
+					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+					  ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384,
+					  NULL)) {
+		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384;
+		return true;
+	}
+
+	return false;
+}
+
 /**
  * ice_is_gps_in_netlist
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 59969f702dae..4a75c0c89301 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -93,11 +93,11 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *caps,
 		    struct ice_sq_cd *cd);
 bool ice_is_pf_c827(struct ice_hw *hw);
+bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw);
+bool ice_is_clock_mux_in_netlist(struct ice_hw *hw);
+bool ice_is_cgu_in_netlist(struct ice_hw *hw);
 bool ice_is_gps_in_netlist(struct ice_hw *hw);
 int
-ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
-		      u16 *node_handle);
-int
 ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
 			u8 *node_part_number, u16 *node_handle);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b96fbf76ca6d..6e70d678f323 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3995,14 +3995,14 @@ void ice_init_feature_support(struct ice_pf *pf)
 	case ICE_DEV_ID_E810_XXV_QSFP:
 	case ICE_DEV_ID_E810_XXV_SFP:
 		ice_set_feature_support(pf, ICE_F_DSCP);
-		if (ice_is_phy_rclk_present(&pf->hw))
+		if (ice_is_phy_rclk_in_netlist(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_PHY_RCLK);
 		/* If we don't own the timer - don't enable other caps */
 		if (!ice_pf_src_tmr_owned(pf))
 			break;
-		if (ice_is_cgu_present(&pf->hw))
+		if (ice_is_cgu_in_netlist(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_CGU);
-		if (ice_is_clock_mux_present_e810t(&pf->hw))
+		if (ice_is_clock_mux_in_netlist(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
 		if (ice_gnss_is_gps_present(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_GNSS);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 5619644d5da7..882dfdad0021 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3556,45 +3556,6 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 	}
 }
 
-/**
- * ice_is_phy_rclk_present - check recovered clk presence
- * @hw: pointer to the hw struct
- *
- * Check if the PHY Recovered Clock device is present in the netlist
- * Return:
- * * true - device found in netlist
- * * false - device not found
- */
-bool ice_is_phy_rclk_present(struct ice_hw *hw)
-{
-	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
-				  ICE_AQC_GET_LINK_TOPO_NODE_NR_C827, NULL) &&
-	    ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
-				  ICE_AQC_GET_LINK_TOPO_NODE_NR_E822_PHY, NULL))
-		return false;
-
-	return true;
-}
-
-/**
- * ice_is_clock_mux_present_e810t
- * @hw: pointer to the hw struct
- *
- * Check if the Clock Multiplexer device is present in the netlist
- * Return:
- * * true - device found in netlist
- * * false - device not found
- */
-bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
-{
-	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
-				  ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
-				  NULL))
-		return false;
-
-	return true;
-}
-
 /**
  * ice_get_pf_c827_idx - find and return the C827 index for the current pf
  * @hw: pointer to the hw struct
@@ -3708,33 +3669,6 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 	}
 }
 
-/**
- * ice_is_cgu_present - check for CGU presence
- * @hw: pointer to the hw struct
- *
- * Check if the Clock Generation Unit (CGU) device is present in the netlist
- * Return:
- * * true - cgu is present
- * * false - cgu is not present
- */
-bool ice_is_cgu_present(struct ice_hw *hw)
-{
-	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
-				   ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
-				   NULL)) {
-		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
-		return true;
-	} else if (!ice_find_netlist_node(hw,
-					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
-					  ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384,
-					  NULL)) {
-		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384;
-		return true;
-	}
-
-	return false;
-}
-
 /**
  * ice_cgu_get_pin_desc_e823 - get pin description array
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 6f277e7b06b9..18a993134826 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -271,10 +271,7 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
-bool ice_is_phy_rclk_present(struct ice_hw *hw);
-bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
 int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx);
-bool ice_is_cgu_present(struct ice_hw *hw);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
 ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
