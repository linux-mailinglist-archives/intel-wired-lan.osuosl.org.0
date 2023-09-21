Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DCD7A900B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 02:06:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0324B41B98;
	Thu, 21 Sep 2023 00:06:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0324B41B98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695254809;
	bh=8T1FkHNMS9OWEwri7Me7qBBQFzmR6P+P8H2YScSmT0M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7LvtFmYXYXx+2PnX+t4+dZ8dcUrchP7OvCuuEHqvZQb6sLl522U32A4go8z8KpVzW
	 GVlHVdlprpxWvCi2IDEaIilu6gWGzO835+ZseQysA1Yke+yHMcjRlvLeIy860vMR0B
	 A8pQto1szA9fVevY41jxT/j3gjs75xAAF8aORZB3CIdwZ8NPLJZR/IvDV/677Av0k8
	 gHefRlX2zfq1WArv0UuoEurtMNPnxRaXzh3A8QBeYEWrubpKzxg7DHNh/sxTayCoUt
	 K9kzRzxb6jWZvQ0NLhxzkB6OBylMDDz1rHR9Nbak8E1D9ppOMhmE45g7yGp12cQ1Jj
	 asiusqzarhK3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HGPn9rgTLtNb; Thu, 21 Sep 2023 00:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EC594174C;
	Thu, 21 Sep 2023 00:06:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EC594174C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 204DA1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 00:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ECCA440533
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 00:06:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECCA440533
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tmnEBQtWB3sR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 00:06:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A173F400CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 00:06:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A173F400CE
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="377674156"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="377674156"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 17:06:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="696528156"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="696528156"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 17:06:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: netdev@vger.kernel.org, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 20 Sep 2023 17:06:33 -0700
Message-ID: <20230921000633.1238097-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695254799; x=1726790799;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i073M4JOYiPIIs/8A/DMZJZ3u62SvZhupk71CioOZK8=;
 b=lf5/pknGxhp3fFiqKWfSFj/fxMitgs+8s3yf/JbfR0yIzU4DQzwWYow2
 hnhyOO4wx31cVyQemSaO+YuHMDqNAvORm3nkig7dFXe9mQTexZ35YkULZ
 04INsyG8J0q7FFVHxhaTDlQxcjsFnTZpe2XH6qS5SqLXz1ggSSeGZ8zSZ
 53+8LXIVg93FYCeGZd1xX67Z8Jb2ulTl7sIBysGHUyppg0I3UMV1nByoC
 EzyGdyVCnIoiT8nh7z9oBZCA/8sMPLMh4cQmIJKJBkoo3JhUx3v1qLtFP
 j2hCx2QcCiifPZYAGx0WLrxTzLEsqBU42csbFuaWHzKz3wCvw5df7my1y
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lf5/pknG
Subject: [Intel-wired-lan] [PATCH net-next] ice: fix linking when
 CONFIG_PTP_1588_CLOCK=n
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The recent support for DPLL introduced by commit 8a3a565ff210 ("ice: add
admin commands to access cgu configuration") and commit d7999f5ea64b ("ice:
implement dpll interface to control cgu") broke linking the ice driver if
CONFIG_PTP_1588_CLOCK=n:

ld: vmlinux.o: in function `ice_init_feature_support':
(.text+0x8702b8): undefined reference to `ice_is_phy_rclk_present'
ld: (.text+0x8702cd): undefined reference to `ice_is_cgu_present'
ld: (.text+0x8702d9): undefined reference to `ice_is_clock_mux_present_e810t'
ld: vmlinux.o: in function `ice_dpll_init_info_direct_pins':
ice_dpll.c:(.text+0x894167): undefined reference to `ice_cgu_get_pin_freq_supp'
ld: ice_dpll.c:(.text+0x894197): undefined reference to `ice_cgu_get_pin_name'
ld: ice_dpll.c:(.text+0x8941a8): undefined reference to `ice_cgu_get_pin_type'
ld: vmlinux.o: in function `ice_dpll_update_state':
ice_dpll.c:(.text+0x894494): undefined reference to `ice_get_cgu_state'
ld: vmlinux.o: in function `ice_dpll_init':
(.text+0x8953d5): undefined reference to `ice_get_cgu_rclk_pin_info'

The first commit broke things by calling functions in
ice_init_feature_support that are compiled as part of ice_ptp_hw.o,
including:

* ice_is_phy_rclk_present
* ice_is_clock_mux_present_e810t
* ice_is_cgU_present

The second commit continued the break by calling several CGU functions
defined in ice_ptp_hw.c in the DPLL code.
Because the ice_dpll.c file is compiled unconditionally, it will not
link when CONFIG_PTP_1588_CLOCK=n.

It might be possible to break this dependency and expose those functions
without CONFIG_PTP_1588_CLOCK, but that is not clear to me.

For the DPLL case, simply compile ice_dpll.o only when we have
CONFIG_PTP_1588_CLOCK. Add stub no-op implementation of ice_dpll_init() and
ice_dpll_uninit() when CONFIG_PTP_1588_CLOCK=n into ice_dpll.h

The other functions are part of checking the netlist to see if hardware
features are enabled. These checks don't really belong in ice_ptp_hw.c, and
make more sense as part of the ice_common.c file. We already have
ice_is_gps_in_netlist() in ice_common.c which is doing a similar check.

Move the functions into ice_common.c and rename them to have the similar
postfix of "in_netlist()" to be more expressive of what they are actually
checking.

This also makes the ice_find_netlist_node only called from within
ice_common.c, so its safe to mark it static and stop declaring it in the
ice_common.h header as well.

Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202309191214.TaYEct4H-lkp@intel.com
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
This is an alternative approach to fixing the same compilation errors of the
ice driver compared to [1]. It does not include the fix for idpf which I
have no issue with.

I prefer this over the stubs for the functions in ice_ptp_hw.h, and I had
proposed these a while ago as part of [2], but the DPLL code merged first
and had apparently duplicated some of the work.

[1]: https://lore.kernel.org/netdev/20230920180745.1607563-1-aleksander.lobakin@intel.com/T/#mfeeb599a95334e78dba08330a6bd8edee7843fbb
[2]: https://lore.kernel.org/netdev/20230918212814.435688-1-anthony.l.nguyen@intel.com/

 drivers/net/ethernet/intel/ice/Makefile     |  5 +-
 drivers/net/ethernet/intel/ice/ice_common.c | 66 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h |  6 +-
 drivers/net/ethernet/intel/ice/ice_dpll.h   |  6 +-
 drivers/net/ethernet/intel/ice/ice_lib.c    |  6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 66 ---------------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 -
 7 files changed, 76 insertions(+), 82 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 00806ddf5bf0..0679907980f7 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -34,8 +34,7 @@ ice-y := ice_main.o	\
 	 ice_lag.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
-	 ice_tc_lib.o	\
-	 ice_dpll.o
+	 ice_tc_lib.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
 	ice_virtchnl.o		\
@@ -44,7 +43,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
-ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
+ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8f31ae449948..a1f1f037f327 100644
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
@@ -2764,6 +2763,67 @@ bool ice_is_pf_c827(struct ice_hw *hw)
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
index 47a75651ca38..7a966a0c224f 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 9c524c4bdfd7..2dfe764b81e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -97,8 +97,12 @@ struct ice_dplls {
 	s32 output_phase_adj_max;
 };
 
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 void ice_dpll_init(struct ice_pf *pf);
-
 void ice_dpll_deinit(struct ice_pf *pf);
+#else
+static inline void ice_dpll_init(struct ice_pf *pf) { }
+static inline void ice_dpll_deinit(struct ice_pf *pf) { }
+#endif
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 1549890a3cbf..3f0f780110de 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3989,14 +3989,14 @@ void ice_init_feature_support(struct ice_pf *pf)
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
index f839f186797d..de16cf14c4b2 100644
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
