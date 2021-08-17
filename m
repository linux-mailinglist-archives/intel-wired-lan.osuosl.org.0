Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D699F3EEB90
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 13:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 747ED607E2;
	Tue, 17 Aug 2021 11:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jTBs1xMd6aEZ; Tue, 17 Aug 2021 11:25:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 214646080B;
	Tue, 17 Aug 2021 11:25:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D5911BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6275F83696
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id At3sLbcJr6_u for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 11:24:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC189836A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:24:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="279788789"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="279788789"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 04:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="531010235"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2021 04:24:49 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Aug 2021 13:09:15 +0200
Message-Id: <20210817110918.1937113-2-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
References: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-next 1/4] ice: Refactor
 ice_aqc_link_topo_addr
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

Separate link topo parameters and move to the ice_aqc_link_topo_params
in the ice_aqc_link_topo_addr.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 6 +++++-
 drivers/net/ethernet/intel/ice/ice_common.c     | 8 +++++---
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 6c727745bb29..941342f4be85 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1283,7 +1283,7 @@ struct ice_aqc_set_mac_lb {
 	u8 reserved[15];
 };
 
-struct ice_aqc_link_topo_addr {
+struct ice_aqc_link_topo_params {
 	u8 lport_num;
 	u8 lport_num_valid;
 #define ICE_AQC_LINK_TOPO_PORT_NUM_VALID	BIT(0)
@@ -1309,6 +1309,10 @@ struct ice_aqc_link_topo_addr {
 #define ICE_AQC_LINK_TOPO_NODE_CTX_PROVIDED	4
 #define ICE_AQC_LINK_TOPO_NODE_CTX_OVERRIDE	5
 	u8 index;
+};
+
+struct ice_aqc_link_topo_addr {
+	struct ice_aqc_link_topo_params topo_params;
 	__le16 handle;
 #define ICE_AQC_LINK_TOPO_HANDLE_S	0
 #define ICE_AQC_LINK_TOPO_HANDLE_M	(0x3FF << ICE_AQC_LINK_TOPO_HANDLE_S)
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 1a3c6b60fdca..5822589aebdc 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -240,11 +240,13 @@ ice_aq_get_link_topo_handle(struct ice_port_info *pi, u8 node_type,
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
 
-	cmd->addr.node_type_ctx = (ICE_AQC_LINK_TOPO_NODE_CTX_PORT <<
-				   ICE_AQC_LINK_TOPO_NODE_CTX_S);
+	cmd->addr.topo_params.node_type_ctx =
+		(ICE_AQC_LINK_TOPO_NODE_CTX_PORT <<
+		 ICE_AQC_LINK_TOPO_NODE_CTX_S);
 
 	/* set node type */
-	cmd->addr.node_type_ctx |= (ICE_AQC_LINK_TOPO_NODE_TYPE_M & node_type);
+	cmd->addr.topo_params.node_type_ctx |=
+		(ICE_AQC_LINK_TOPO_NODE_TYPE_M & node_type);
 
 	return ice_aq_send_cmd(pi->hw, &desc, NULL, 0, cd);
 }
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
