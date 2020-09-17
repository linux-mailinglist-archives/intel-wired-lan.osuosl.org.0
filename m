Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BE826E68B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 22:19:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACB2387759;
	Thu, 17 Sep 2020 20:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ajIZiO6CpXjI; Thu, 17 Sep 2020 20:19:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7905C87750;
	Thu, 17 Sep 2020 20:19:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A02F1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 680F820438
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VyqUDxJbhewt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 4AEBD2047D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
IronPort-SDR: qbAiKIhMgVe4Agdz4NhqamWDWceILmxZqpSmKcOhTZD0HugzBhBzD8jlmguHyKOhqONENikvIw
 1+8QVE+i81Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="147535888"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="147535888"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:19:14 -0700
IronPort-SDR: 7T7MY2599v+fUHvEySyoxN7XHKqwpaCTEbL5igJesjpsu45evCFSjyP+qi2L/5KiYf4J1Ny68+
 dNZ07mkSt5Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="508574685"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 13:19:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Sep 2020 13:13:39 -0700
Message-Id: <20200917201347.81570-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S53 07/15] ice: implement new LLDP filter
 command
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

From: Dave Ertman <david.m.ertman@intel.com>

There is an issue with some NVMs where an already existent LLDP
filter is blocking the creation of a filter to allow LLDP packets
to be redirected to the default VSI for the interface.  This is
blocking all LLDP functionality based in the kernel when the FW
LLDP agent is disabled (e.g. software based DCBx).

Implement the new AQ command to allow adding VSI destinations to
existent filters on NVM versions that support the new command.

The new lldp_fltr_ctrl AQ command supports Rx filters only, so the
code flow for adding filters to disable Tx of control frames will
remain intact.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 12 +++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 47 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 10 ++--
 drivers/net/ethernet/intel/ice/ice_lib.c      | 13 +++--
 drivers/net/ethernet/intel/ice/ice_type.h     |  5 ++
 6 files changed, 82 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 349839dba64b..d64a0784e1a4 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1562,6 +1562,16 @@ struct ice_aqc_lldp_stop_start_specific_agent {
 	u8 reserved[15];
 };
 
+/* LLDP Filter Control (direct 0x0A0A) */
+struct ice_aqc_lldp_filter_ctrl {
+	u8 cmd_flags;
+#define ICE_AQC_LLDP_FILTER_ACTION_ADD		0x0
+#define ICE_AQC_LLDP_FILTER_ACTION_DELETE	0x1
+	u8 reserved1;
+	__le16 vsi_num;
+	u8 reserved2[12];
+};
+
 /* Get/Set RSS key (indirect 0x0B04/0x0B02) */
 struct ice_aqc_get_set_rss_key {
 #define ICE_AQC_GSET_RSS_KEY_VSI_VALID	BIT(15)
@@ -2249,6 +2259,7 @@ struct ice_aq_desc {
 		struct ice_aqc_lldp_start lldp_start;
 		struct ice_aqc_lldp_set_local_mib lldp_set_mib;
 		struct ice_aqc_lldp_stop_start_specific_agent lldp_agent_ctrl;
+		struct ice_aqc_lldp_filter_ctrl lldp_filter_ctrl;
 		struct ice_aqc_get_set_rss_lut get_set_rss_lut;
 		struct ice_aqc_get_set_rss_key get_set_rss_key;
 		struct ice_aqc_acl_alloc_table alloc_table;
@@ -2399,6 +2410,7 @@ enum ice_adminq_opc {
 	ice_aqc_opc_get_cee_dcb_cfg			= 0x0A07,
 	ice_aqc_opc_lldp_set_local_mib			= 0x0A08,
 	ice_aqc_opc_lldp_stop_start_specific_agent	= 0x0A09,
+	ice_aqc_opc_lldp_filter_ctrl			= 0x0A0A,
 
 	/* RSS commands */
 	ice_aqc_opc_set_rss_key				= 0x0B02,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 7db5fd977367..1aee8d5791a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4403,3 +4403,50 @@ ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 
 	return ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
 }
+
+/**
+ * ice_fw_supports_lldp_fltr - check NVM version supports lldp_fltr_ctrl
+ * @hw: pointer to HW struct
+ */
+bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw)
+{
+	if (hw->mac_type != ICE_MAC_E810)
+		return false;
+
+	if (hw->api_maj_ver == ICE_FW_API_LLDP_FLTR_MAJ) {
+		if (hw->api_min_ver > ICE_FW_API_LLDP_FLTR_MIN)
+			return true;
+		if (hw->api_min_ver == ICE_FW_API_LLDP_FLTR_MIN &&
+		    hw->api_patch >= ICE_FW_API_LLDP_FLTR_PATCH)
+			return true;
+	} else if (hw->api_maj_ver > ICE_FW_API_LLDP_FLTR_MAJ) {
+		return true;
+	}
+	return false;
+}
+
+/**
+ * ice_lldp_fltr_add_remove - add or remove a LLDP Rx switch filter
+ * @hw: pointer to HW struct
+ * @vsi_num: absolute HW index for VSI
+ * @add: boolean for if adding or removing a filter
+ */
+enum ice_status
+ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
+{
+	struct ice_aqc_lldp_filter_ctrl *cmd;
+	struct ice_aq_desc desc;
+
+	cmd = &desc.params.lldp_filter_ctrl;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_filter_ctrl);
+
+	if (add)
+		cmd->cmd_flags = ICE_AQC_LLDP_FILTER_ACTION_ADD;
+	else
+		cmd->cmd_flags = ICE_AQC_LLDP_FILTER_ACTION_DELETE;
+
+	cmd->vsi_num = cpu_to_le16(vsi_num);
+
+	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 3ebb973878c7..baf4064fcbfe 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -175,4 +175,7 @@ ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
 enum ice_status
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
+bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw);
+enum ice_status
+ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 88062a2b496e..53d7e91bbdee 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1242,6 +1242,11 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			enum ice_status status;
 			bool dcbx_agent_status;
 
+			/* Remove rule to direct LLDP packets to default VSI.
+			 * The FW LLDP engine will now be consuming them.
+			 */
+			ice_cfg_sw_lldp(vsi, false, false);
+
 			/* AQ command to start FW LLDP agent will return an
 			 * error if the agent is already started
 			 */
@@ -1270,11 +1275,6 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			if (status)
 				dev_dbg(dev, "Fail to init DCB\n");
 
-			/* Remove rule to direct LLDP packets to default VSI.
-			 * The FW LLDP engine will now be consuming them.
-			 */
-			ice_cfg_sw_lldp(vsi, false, false);
-
 			/* Register for MIB change events */
 			status = ice_cfg_lldp_mib_change(&pf->hw, true);
 			if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index df38fa8a0c7c..f118d33e3a20 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2149,11 +2149,18 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 	dev = ice_pf_to_dev(pf);
 	eth_fltr = create ? ice_fltr_add_eth : ice_fltr_remove_eth;
 
-	if (tx)
+	if (tx) {
 		status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_TX,
 				  ICE_DROP_PACKET);
-	else
-		status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_RX, ICE_FWD_TO_VSI);
+	} else {
+		if (ice_fw_supports_lldp_fltr_ctrl(&pf->hw)) {
+			status = ice_lldp_fltr_add_remove(&pf->hw, vsi->vsi_num,
+							  create);
+		} else {
+			status = eth_fltr(vsi, ETH_P_LLDP, ICE_FLTR_RX,
+					  ICE_FWD_TO_VSI);
+		}
+	}
 
 	if (status)
 		dev_err(dev, "Fail %s %s LLDP rule on VSI %i error: %s\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f5e42ba9a286..a80fcc0dc44c 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -808,4 +808,9 @@ struct ice_hw_port_stats {
 /* Hash redirection LUT for VSI - maximum array size */
 #define ICE_VSIQF_HLUT_ARRAY_SIZE	((VSIQF_HLUT_MAX_INDEX + 1) * 4)
 
+/* AQ API version for LLDP_FILTER_CONTROL */
+#define ICE_FW_API_LLDP_FLTR_MAJ	1
+#define ICE_FW_API_LLDP_FLTR_MIN	7
+#define ICE_FW_API_LLDP_FLTR_PATCH	1
+
 #endif /* _ICE_TYPE_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
