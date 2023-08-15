Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FB577D63E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 00:36:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C64F611DE;
	Tue, 15 Aug 2023 22:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C64F611DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692138994;
	bh=b9xr2xc+4V5icylQZw4mgEpl8j9tHDvNwY1bjVlYt9s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eWuqbsGVrEYRcj9XZmnvjSSpxaGQJtSAelTxvGbXXwd0AJnt5eyBxSm+zuQWeMbmO
	 pFreP+XxIc73szE0W8oECB+dyo5toYtgyNR3Ssp34hAwUN/E7hStkb4s64fVi+jjwZ
	 jMgVZOCKal1K8u/m+5nwMy5YZYauFQkkGE74p5RN227ezWWvn3SJ424C/NdjjAbWhe
	 JRjuICoIEV4RvGjdawv6UNydEOu5v2HpPOg5aqUNiPKm06SPmbmlm+wfAYs3Ap2+Ck
	 sUr4j6VJbq8kdRLuVtqU3gTM0+gZp0PMm/g22efzF6ecRaSG61Wg2SNkTMmk6rxr4L
	 ET0+JrAUGlcMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2jDPlHiDnHht; Tue, 15 Aug 2023 22:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42FA8611C3;
	Tue, 15 Aug 2023 22:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42FA8611C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9DDAC1BF47F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E939A414A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E939A414A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RI9OP38TynIP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28DC04149C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28DC04149C
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352718856"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="352718856"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710906004"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710906004"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:56 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Aug 2023 15:35:50 -0700
Message-ID: <20230815223551.1238091-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230815223551.1238091-1-jacob.e.keller@intel.com>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692138959; x=1723674959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BBMMYeRK5I/hXjyakFRZ4+JxA+9BUgIdpNrxGmNyUoc=;
 b=fDPEoPlcX1Zcvps2IIudgWnZwEmebRcOvgsOFMq84ViqHxdYfehaUNO7
 v6JnzotcaKNfJv7qwNoubpjlHSX/z4AeEB6bJh21MSMA2ZN6LHJd00U9V
 jAjBbs7+IeCIGjDSdE2+fb1OII4HiA0sYmzL2WjiN+x/OVpTqxvrp2soj
 KWozSx7BrZPQY+OoXKNVvrOfVi0cQ8J4EczlIpNo12Xv12q+hTw0BuOqa
 cxB3gD1gbIWDqjz8B/nuKzcmZhVlDMm5k8/Chky53lALweKYPkB7rL8P+
 PFclS9FkHi5zxfW+8+KqOWNpzKhAjH0vgwwljyXsf8ytNQ5GwwU649Lt+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fDPEoPlc
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist
 before enabling ICE_F_SMA_CTRL
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, the ice driver unconditionally enables ICE_F_SMA_CTRL for all
E810-T based devices. In some cases, the SMA control access is not
available in the netlist firmware component. In such a case, the driver
will fail to setup the SMA pins. When this happens, the driver prints
"Failed to configure E810-T SMA pin control" and forcibly disables all PTP
pin configuration support.

This results in failure to use even the fixed pin capabilities of standard
E810 devices, resulting in reduced functionality.

To avoid this, check the netlist for the SMA control module before enabling
the ICE_F_SMA_CTRL feature. If the netlist lacks this module, then the
feature will not be enabled. In this case, the driver flow for enabling
periodic outputs and external timestamps will fall back to the standard
fixed pin configuration.

This allows supporting the software defined pins on a wider array of
platforms.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 46 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      |  3 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 16 +++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  1 +
 6 files changed, 72 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 90616750e779..82c4daf0a825 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1367,6 +1367,7 @@ struct ice_aqc_link_topo_params {
 #define ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE	6
 #define ICE_AQC_LINK_TOPO_NODE_TYPE_MEZZ	7
 #define ICE_AQC_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
+#define ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX	10
 #define ICE_AQC_LINK_TOPO_NODE_CTX_S		4
 #define ICE_AQC_LINK_TOPO_NODE_CTX_M		\
 				(0xF << ICE_AQC_LINK_TOPO_NODE_CTX_S)
@@ -1403,8 +1404,9 @@ struct ice_aqc_link_topo_addr {
 struct ice_aqc_get_link_topo {
 	struct ice_aqc_link_topo_addr addr;
 	u8 node_part_num;
-#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
-#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827	0x31
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575			0x21
+#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827			0x31
+#define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX		0x47
 	u8 rsvd[9];
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2652e4f5c4a2..9eeda3f5aa75 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2503,6 +2503,52 @@ bool ice_is_pf_c827(struct ice_hw *hw)
 	return false;
 }
 
+#define MAX_NETLIST_SIZE 10
+/**
+ * ice_find_netlist_node
+ * @hw: pointer to the hw struct
+ * @node_type_ctx: type of netlist node to look for
+ * @node_part_number: node part number to look for
+ * @node_handle: output parameter if node found - optional
+ *
+ * Find and return the node handle for a given node type and part number in the
+ * netlist. When found 0 is returned, -ENOENT otherwise. If
+ * node_handle provided, it would be set to found node handle.
+ */
+int
+ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
+		      u16 *node_handle)
+{
+	struct ice_aqc_get_link_topo cmd;
+	u8 rec_node_part_number;
+	u16 rec_node_handle;
+	u8 idx;
+
+	for (idx = 0; idx < MAX_NETLIST_SIZE; idx++) {
+		int status;
+
+		memset(&cmd, 0, sizeof(cmd));
+
+		cmd.addr.topo_params.node_type_ctx =
+			(node_type_ctx << ICE_AQC_LINK_TOPO_NODE_TYPE_S);
+		cmd.addr.topo_params.index = idx;
+
+		status = ice_aq_get_netlist_node(hw, &cmd,
+						 &rec_node_part_number,
+						 &rec_node_handle);
+		if (status)
+			return status;
+
+		if (rec_node_part_number == node_part_number) {
+			if (node_handle)
+				*node_handle = rec_node_handle;
+			return 0;
+		}
+	}
+
+	return -ENOENT;
+}
+
 /**
  * ice_aq_list_caps - query function/device capabilities
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 2250a9c5f61e..f7178a5686a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -94,6 +94,9 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_sq_cd *cd);
 bool ice_is_pf_c827(struct ice_hw *hw);
 int
+ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
+		      u16 *node_handle);
+int
 ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f29ff54383b5..4ac8998cb964 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3989,8 +3989,9 @@ void ice_init_feature_support(struct ice_pf *pf)
 		/* If we don't own the timer - don't enable other caps */
 		if (!ice_pf_src_tmr_owned(pf))
 			break;
-		if (ice_is_e810t(&pf->hw)) {
+		if (ice_is_clock_mux_present_e810t(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
+		if (ice_is_e810t(&pf->hw)) {
 			if (ice_gnss_is_gps_present(&pf->hw))
 				ice_set_feature_support(pf, ICE_F_GNSS);
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index fd19afaf9c85..bd3f32bfbc78 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3018,6 +3018,22 @@ ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
 	return 0;
 }
 
+/**
+ * ice_is_clock_mux_present_e810t
+ * @hw: pointer to the hw struct
+ *
+ * Check if the Clock Multiplexer device is present in the netlist
+ */
+bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
+{
+	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
+				  ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
+				  NULL))
+		return false;
+
+	return true;
+}
+
 /**
  * ice_read_sma_ctrl_e810t
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 4e3c1382c477..3768e7a01920 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -195,6 +195,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
 
 /* E810 family functions */
+bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
