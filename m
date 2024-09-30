Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BA598AC42
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 20:41:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ED08810CC;
	Mon, 30 Sep 2024 18:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M5ACIm6skGHr; Mon, 30 Sep 2024 18:41:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B5D9810C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727721672;
	bh=bY6Xo73AWHsLr0N0vDG5Yqxchj/TWk8LTBJcHRdTQyA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7SURGSXxztahQiXTtRamspFMij7Xeqms240KBAt0DG6fuCdbUDeA9stlfx3Jyjb6L
	 mibwCPJk15wzy/PICxv9z0b/RGur4zxtGV2wf3tfMTOLgc5uRxHVahwE5WWOVSZPfz
	 gjrR2CR7O1LYK4YKbCSl14p2L/UClu7A1/IIY0D7SbfwAzt54k3DuxYChdUSJ55Vwt
	 YBIgVtparP1ScsMyY/bRDBxQO32H/nBTV7XJHjQf8ANVP2e86owu0NabGazvUeEPyR
	 xdtnBriPcEEKUSroVzHLiUIGNAWuUKuWJ/VLchkdQuaZuNGg8P1AXn5260bYIabURs
	 tH0V5KlnQQYxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B5D9810C8;
	Mon, 30 Sep 2024 18:41:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C23571BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFDD2606E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sDNAipOAs7be for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 18:41:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B7F40606EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7F40606EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7F40606EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 18:41:05 +0000 (UTC)
X-CSE-ConnectionGUID: DRmW/iqlRWqEk1tWNoy6sQ==
X-CSE-MsgGUID: NTv3D5rVRBKf2lRzK/J/og==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="37503954"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="37503954"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 11:41:05 -0700
X-CSE-ConnectionGUID: pPFT+mntRS+9sU2135O1AA==
X-CSE-MsgGUID: dKfJQhjlTpCr3vzn6z+VYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73006463"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa006.fm.intel.com with ESMTP; 30 Sep 2024 11:41:03 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 20:36:22 +0200
Message-Id: <20240930183622.897485-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727721666; x=1759257666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GG/OJKhDL0RBKwrdAegSZu+YlLNna1KjYgbZ2ujHHIs=;
 b=agsUQntDznApeIqlo49oDaKdImOQzvDJXiPEXA6uE2HOGngXuIKDIp3j
 O1vswhTwDAyKzK1Is6yDiKvhHVvz1zIg8aa+CzInX4tNlZF1PBFkstiid
 57XPaFYNiDwQq/Fe9yCWuFZ84xPQ7McgYQByOu6X+zK8R13zRxIEEOMio
 XDULs7Co721lCAXLr1wh0ilsYQnxAWNBuK8a0maos8sb5qTdfo1i4s7eS
 CSgSiVZ0+QsbYNAUpQnlVnXODPySUMAT6jxN2hxpY2S1I5tne3/2rno5A
 hObpxbDf7UGrpdgeiqZChgJ7mOkNu63ihUaorkD1lhMCvq+kScmodCVVX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=agsUQntD
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY Clock Recovery
 availability check
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To check if PHY Clock Recovery mechanic is available for a device, there
is a need to verify if given PHY is available within the netlist, but the
netlist node type used for the search is wrong, also the search context
shall be specified.

Modify the search function to allow specifying the context in the
search.

Use the PHY node type instead of CLOCK CONTROLLER type, also use proper
search context which for PHY search is PORT, as defined in E810
Datasheet [1] ('3.3.8.2.4 Node Part Number and Node Options (0x0003)' and
'Table 3-105. Program Topology Device NVM Admin Command').

[1] https://cdrdv2.intel.com/v1/dl/getContent/613875?explicitVersion=true

Fixes: 91e43ca0090b ("ice: fix linking when CONFIG_PTP_1588_CLOCK=n")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 25 ++++++++++++++-------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 009716a12a26..f1324e25b2af 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -542,7 +542,8 @@ ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
 /**
  * ice_find_netlist_node
  * @hw: pointer to the hw struct
- * @node_type_ctx: type of netlist node to look for
+ * @node_type: type of netlist node to look for
+ * @ctx: context of the search
  * @node_part_number: node part number to look for
  * @node_handle: output parameter if node found - optional
  *
@@ -552,10 +553,12 @@ ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
  * valid if the function returns zero, and should be ignored on any non-zero
  * return value.
  *
- * Returns: 0 if the node is found, -ENOENT if no handle was found, and
- * a negative error code on failure to access the AQ.
+ * Return:
+ * * 0 if the node is found,
+ * * -ENOENT if no handle was found,
+ * * negative error code on failure to access the AQ.
  */
-static int ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx,
+static int ice_find_netlist_node(struct ice_hw *hw, u8 node_type, u8 ctx,
 				 u8 node_part_number, u16 *node_handle)
 {
 	u8 idx;
@@ -566,8 +569,8 @@ static int ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx,
 		int status;
 
 		cmd.addr.topo_params.node_type_ctx =
-			FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M,
-				   node_type_ctx);
+			FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M, node_type) |
+			FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M, ctx);
 		cmd.addr.topo_params.index = idx;
 
 		status = ice_aq_get_netlist_node(hw, &cmd,
@@ -2726,9 +2729,11 @@ bool ice_is_pf_c827(struct ice_hw *hw)
  */
 bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw)
 {
-	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_PHY,
+				  ICE_AQC_LINK_TOPO_NODE_CTX_PORT,
 				  ICE_AQC_GET_LINK_TOPO_NODE_NR_C827, NULL) &&
-	    ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+	    ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_PHY,
+				  ICE_AQC_LINK_TOPO_NODE_CTX_PORT,
 				  ICE_AQC_GET_LINK_TOPO_NODE_NR_E822_PHY, NULL))
 		return false;
 
@@ -2744,6 +2749,7 @@ bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw)
 bool ice_is_clock_mux_in_netlist(struct ice_hw *hw)
 {
 	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
+				  ICE_AQC_LINK_TOPO_NODE_CTX_GLOBAL,
 				  ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
 				  NULL))
 		return false;
@@ -2764,12 +2770,14 @@ bool ice_is_clock_mux_in_netlist(struct ice_hw *hw)
 bool ice_is_cgu_in_netlist(struct ice_hw *hw)
 {
 	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+				   ICE_AQC_LINK_TOPO_NODE_CTX_GLOBAL,
 				   ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
 				   NULL)) {
 		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
 		return true;
 	} else if (!ice_find_netlist_node(hw,
 					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
+					  ICE_AQC_LINK_TOPO_NODE_CTX_GLOBAL,
 					  ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384,
 					  NULL)) {
 		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384;
@@ -2788,6 +2796,7 @@ bool ice_is_cgu_in_netlist(struct ice_hw *hw)
 bool ice_is_gps_in_netlist(struct ice_hw *hw)
 {
 	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_GPS,
+				  ICE_AQC_LINK_TOPO_NODE_CTX_GLOBAL,
 				  ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_GPS, NULL))
 		return false;
 
-- 
2.38.1

