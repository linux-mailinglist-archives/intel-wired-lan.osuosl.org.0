Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CA077EE08
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:01:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E856241788;
	Thu, 17 Aug 2023 00:01:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E856241788
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692230489;
	bh=U1qtvef/x+QKDZtczf/zAiyHz4ElPTs8PYgiCAd6j9k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qdZqS+14wrfj5heELXe93JepShnHRnepN7v2kdUtbdT4TUFdXsN/scsMcMuSGdXlc
	 7kYT3wBTUDioUisL53IkiBDgFuCsHALTG1/bJhxtjimii25yn3Kf77TE1KXnBAG5fh
	 zA4OGdmS5v1UkHResaXBbK9Iz1os6c2q7Wof1VLPnc/TcO3SK1jzEC90Qmtgek1s8C
	 L4QNx7uX3qyHNAfqjRMsFEcb1X4mdKOy2tzyl5hYHJRDCFwUU2R3jWMmmUYI1v3A9T
	 8u9Wj14Hm7+EqynEl5NqxX5ZTxNEZUgOOvApWRdvams4JEg0pn13cpTrVHtBiO9mx5
	 MT1q55rXIC59w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NgPE6XUiUL7l; Thu, 17 Aug 2023 00:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9111741774;
	Thu, 17 Aug 2023 00:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9111741774
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A58D41BF97F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A04861318
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A04861318
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lEBjYZI2fD7w for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:01:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B3936139A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B3936139A
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403649713"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="403649713"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799805049"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="799805049"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Aug 2023 17:00:57 -0700
Message-ID: <20230817000058.2433236-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230817000058.2433236-1-jacob.e.keller@intel.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692230466; x=1723766466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Dof2eRlUQzxkmXtqMr+BzvEoI3dlku3BM50SZMTE2Q=;
 b=EL7d3m7Yk9RJ3HNn91/0QetMs+uI5jS27iK2m0hXj0eezcDk81R/giPA
 K/Rq2BQ9wYO9b/Gb17JrL6g+39ftyjanKJwwE+b3+kuBJc76gqcW3+Vaf
 EvOBsgmmkCX6waCxJwcJSKJI5eXtmIM3kHE983jwV36EuPPaJ00R4c4XN
 NHrfTl8vbSPCCQqcXHry2TCTMtA8TC6NqXu4STWkN7Xs1FhEGvj/oLI7u
 KP2F1GWCoDuUcefxBSinYqusiaFeUN4ykowhzW1JNt4ZEi2FWbZmq2+Wd
 7rFhBlwZyaKEHTojVidwUluvfZ7IRFqus1MvRgqjr9ottoK4I/kReQIji
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EL7d3m7Y
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: check the netlist
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
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
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
Changes since v1:
* rename ice_is_clock_mux_present_e810t() to
  ice_is_clock_mux_in_netlist_e810t() and move it into ice_common.c
* make ice_find_netlist_node() static
* reduce the scope of some variables in ice_find_netlist_node()
* use FIELD_PREP to set the node_type_ctx field
* remove rec_node_handle
* update function comment to indicate that node_handle contents should be
  ignored on error

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 62 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  3 +-
 4 files changed, 69 insertions(+), 3 deletions(-)

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
index 2652e4f5c4a2..3d1b87151dc6 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2503,6 +2503,68 @@ bool ice_is_pf_c827(struct ice_hw *hw)
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
+ * Scan the netlist for a node handle of the given node type and part number.
+ *
+ * If node_handle is non-NULL it will be modified on function exit. It is only
+ * valid if the function returns zero, and should be ignored on any non-zero
+ * return value.
+ *
+ * Returns: 0 if the node is found, -ENOENT if no handle was found, and
+ * a negative error code on failure to access the AQ.
+ */
+static int
+ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
+		      u16 *node_handle)
+{
+	u8 idx;
+
+	for (idx = 0; idx < MAX_NETLIST_SIZE; idx++) {
+		struct ice_aqc_get_link_topo cmd = {};
+		u8 rec_node_part_number;
+		int status;
+
+		cmd.addr.topo_params.node_type_ctx =
+			FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M,
+				   node_type_ctx);
+		cmd.addr.topo_params.index = idx;
+
+		status = ice_aq_get_netlist_node(hw, &cmd,
+						 &rec_node_part_number,
+						 node_handle);
+		if (status)
+			return status;
+
+		if (rec_node_part_number == node_part_number)
+			return 0;
+	}
+
+	return -ENOENT;
+}
+
+/**
+ * ice_is_clock_mux_in_netlist_e810t
+ * @hw: pointer to the hw struct
+ *
+ * Check if the Clock Multiplexer device is present in the netlist
+ */
+bool ice_is_clock_mux_in_netlist_e810t(struct ice_hw *hw)
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
  * ice_aq_list_caps - query function/device capabilities
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 2250a9c5f61e..a7a55c536150 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -93,6 +93,7 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		    struct ice_aqc_get_phy_caps_data *caps,
 		    struct ice_sq_cd *cd);
 bool ice_is_pf_c827(struct ice_hw *hw);
+bool ice_is_clock_mux_in_netlist_e810t(struct ice_hw *hw);
 int
 ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f29ff54383b5..fe4bf5967d32 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3989,8 +3989,9 @@ void ice_init_feature_support(struct ice_pf *pf)
 		/* If we don't own the timer - don't enable other caps */
 		if (!ice_pf_src_tmr_owned(pf))
 			break;
-		if (ice_is_e810t(&pf->hw)) {
+		if (ice_is_clock_mux_in_netlist_e810t(&pf->hw))
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
+		if (ice_is_e810t(&pf->hw)) {
 			if (ice_gnss_is_gps_present(&pf->hw))
 				ice_set_feature_support(pf, ICE_F_GNSS);
 		}
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
