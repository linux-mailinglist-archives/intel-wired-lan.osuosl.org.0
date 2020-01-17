Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B34141515
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jan 2020 01:12:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7837C86A24;
	Sat, 18 Jan 2020 00:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V7qkwmrbL1me; Sat, 18 Jan 2020 00:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F14F2847EB;
	Sat, 18 Jan 2020 00:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E83691BF846
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2020 00:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E561D221AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2020 00:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6waNPoByY61X for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jan 2020 00:12:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 3379122610
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2020 00:11:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 16:11:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,332,1574150400"; d="scan'208";a="398818589"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga005.jf.intel.com with ESMTP; 17 Jan 2020 16:11:55 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Jan 2020 07:39:18 -0800
Message-Id: <20200117153919.50321-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200117153919.50321-1-anthony.l.nguyen@intel.com>
References: <20200117153919.50321-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S36 7/8] ice: Implement ethtool get/set
 rx-flow-hash
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

From: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>

Provide support to change or retrieve RSS hash options for a flow type.
The supported flow-types are: tcp4, tcp6, udp4, udp6, sctp4, sctp6.

Signed-off-by: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 243 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_flow.c    |  29 +++
 drivers/net/ethernet/intel/ice/ice_flow.h    |   1 +
 3 files changed, 273 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f395457b728f..90c6a3ca20c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4,6 +4,7 @@
 /* ethtool support for ice */
 
 #include "ice.h"
+#include "ice_flow.h"
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
@@ -2533,6 +2534,243 @@ ice_set_link_ksettings(struct net_device *netdev,
 	return err;
 }
 
+/**
+ * ice_parse_hdrs - parses headers from RSS hash input
+ * @nfc: ethtool rxnfc command
+ *
+ * This function parses the rxnfc command and returns intended
+ * header types for RSS configuration
+ */
+static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
+{
+	u32 hdrs = ICE_FLOW_SEG_HDR_NONE;
+
+	switch (nfc->flow_type) {
+	case TCP_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case UDP_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case SCTP_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case TCP_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	case UDP_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_UDP | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	case SCTP_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	default:
+		break;
+	}
+	return hdrs;
+}
+
+#define ICE_FLOW_HASH_FLD_IPV4_SA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_SA)
+#define ICE_FLOW_HASH_FLD_IPV6_SA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_SA)
+#define ICE_FLOW_HASH_FLD_IPV4_DA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV4_DA)
+#define ICE_FLOW_HASH_FLD_IPV6_DA	BIT_ULL(ICE_FLOW_FIELD_IDX_IPV6_DA)
+#define ICE_FLOW_HASH_FLD_TCP_SRC_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_SRC_PORT)
+#define ICE_FLOW_HASH_FLD_TCP_DST_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_TCP_DST_PORT)
+#define ICE_FLOW_HASH_FLD_UDP_SRC_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_SRC_PORT)
+#define ICE_FLOW_HASH_FLD_UDP_DST_PORT	BIT_ULL(ICE_FLOW_FIELD_IDX_UDP_DST_PORT)
+#define ICE_FLOW_HASH_FLD_SCTP_SRC_PORT	\
+	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)
+#define ICE_FLOW_HASH_FLD_SCTP_DST_PORT	\
+	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)
+
+/**
+ * ice_parse_hash_flds - parses hash fields from RSS hash input
+ * @nfc: ethtool rxnfc command
+ *
+ * This function parses the rxnfc command and returns intended
+ * hash fields for RSS configuration
+ */
+static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc)
+{
+	u64 hfld = ICE_HASH_INVALID;
+
+	if (nfc->data & RXH_IP_SRC || nfc->data & RXH_IP_DST) {
+		switch (nfc->flow_type) {
+		case TCP_V4_FLOW:
+		case UDP_V4_FLOW:
+		case SCTP_V4_FLOW:
+			if (nfc->data & RXH_IP_SRC)
+				hfld |= ICE_FLOW_HASH_FLD_IPV4_SA;
+			if (nfc->data & RXH_IP_DST)
+				hfld |= ICE_FLOW_HASH_FLD_IPV4_DA;
+			break;
+		case TCP_V6_FLOW:
+		case UDP_V6_FLOW:
+		case SCTP_V6_FLOW:
+			if (nfc->data & RXH_IP_SRC)
+				hfld |= ICE_FLOW_HASH_FLD_IPV6_SA;
+			if (nfc->data & RXH_IP_DST)
+				hfld |= ICE_FLOW_HASH_FLD_IPV6_DA;
+			break;
+		default:
+			break;
+		}
+	}
+
+	if (nfc->data & RXH_L4_B_0_1 || nfc->data & RXH_L4_B_2_3) {
+		switch (nfc->flow_type) {
+		case TCP_V4_FLOW:
+		case TCP_V6_FLOW:
+			if (nfc->data & RXH_L4_B_0_1)
+				hfld |= ICE_FLOW_HASH_FLD_TCP_SRC_PORT;
+			if (nfc->data & RXH_L4_B_2_3)
+				hfld |= ICE_FLOW_HASH_FLD_TCP_DST_PORT;
+			break;
+		case UDP_V4_FLOW:
+		case UDP_V6_FLOW:
+			if (nfc->data & RXH_L4_B_0_1)
+				hfld |= ICE_FLOW_HASH_FLD_UDP_SRC_PORT;
+			if (nfc->data & RXH_L4_B_2_3)
+				hfld |= ICE_FLOW_HASH_FLD_UDP_DST_PORT;
+			break;
+		case SCTP_V4_FLOW:
+		case SCTP_V6_FLOW:
+			if (nfc->data & RXH_L4_B_0_1)
+				hfld |= ICE_FLOW_HASH_FLD_SCTP_SRC_PORT;
+			if (nfc->data & RXH_L4_B_2_3)
+				hfld |= ICE_FLOW_HASH_FLD_SCTP_DST_PORT;
+			break;
+		default:
+			break;
+		}
+	}
+
+	return hfld;
+}
+
+/**
+ * ice_set_rss_hash_opt - Enable/Disable flow types for RSS hash
+ * @vsi: the VSI being configured
+ * @nfc: ethtool rxnfc command
+ *
+ * Returns Success if the flow input set is supported.
+ */
+static int
+ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
+{
+	struct ice_pf *pf = vsi->back;
+	enum ice_status status;
+	struct device *dev;
+	u64 hashed_flds;
+	u32 hdrs;
+
+	dev = ice_pf_to_dev(pf);
+	if (ice_is_safe_mode(pf)) {
+		dev_dbg(dev, "Advanced RSS disabled. Package download failed, vsi num = %d\n",
+			vsi->vsi_num);
+		return -EINVAL;
+	}
+
+	hashed_flds = ice_parse_hash_flds(nfc);
+	if (hashed_flds == ICE_HASH_INVALID) {
+		dev_dbg(dev, "Invalid hash fields, vsi num = %d\n",
+			vsi->vsi_num);
+		return -EINVAL;
+	}
+
+	hdrs = ice_parse_hdrs(nfc);
+	if (hdrs == ICE_FLOW_SEG_HDR_NONE) {
+		dev_dbg(dev, "Header type is not valid, vsi num = %d\n",
+			vsi->vsi_num);
+		return -EINVAL;
+	}
+
+	status = ice_add_rss_cfg(&pf->hw, vsi->idx, hashed_flds, hdrs);
+	if (status) {
+		dev_dbg(dev, "ice_add_rss_cfg failed, vsi num = %d, error = %d\n",
+			vsi->vsi_num, status);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_get_rss_hash_opt - Retrieve hash fields for a given flow-type
+ * @vsi: the VSI being configured
+ * @nfc: ethtool rxnfc command
+ */
+static void
+ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
+{
+	struct ice_pf *pf = vsi->back;
+	struct device *dev;
+	u64 hash_flds;
+	u32 hdrs;
+
+	dev = ice_pf_to_dev(pf);
+
+	nfc->data = 0;
+	if (ice_is_safe_mode(pf)) {
+		dev_dbg(dev, "Advanced RSS disabled. Package download failed, vsi num = %d\n",
+			vsi->vsi_num);
+		return;
+	}
+
+	hdrs = ice_parse_hdrs(nfc);
+	if (hdrs == ICE_FLOW_SEG_HDR_NONE) {
+		dev_dbg(dev, "Header type is not valid, vsi num = %d\n",
+			vsi->vsi_num);
+		return;
+	}
+
+	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs);
+	if (hash_flds == ICE_HASH_INVALID) {
+		dev_dbg(dev, "No hash fields found for the given header type, vsi num = %d\n",
+			vsi->vsi_num);
+		return;
+	}
+
+	if (hash_flds & ICE_FLOW_HASH_FLD_IPV4_SA ||
+	    hash_flds & ICE_FLOW_HASH_FLD_IPV6_SA)
+		nfc->data |= (u64)RXH_IP_SRC;
+
+	if (hash_flds & ICE_FLOW_HASH_FLD_IPV4_DA ||
+	    hash_flds & ICE_FLOW_HASH_FLD_IPV6_DA)
+		nfc->data |= (u64)RXH_IP_DST;
+
+	if (hash_flds & ICE_FLOW_HASH_FLD_TCP_SRC_PORT ||
+	    hash_flds & ICE_FLOW_HASH_FLD_UDP_SRC_PORT ||
+	    hash_flds & ICE_FLOW_HASH_FLD_SCTP_SRC_PORT)
+		nfc->data |= (u64)RXH_L4_B_0_1;
+
+	if (hash_flds & ICE_FLOW_HASH_FLD_TCP_DST_PORT ||
+	    hash_flds & ICE_FLOW_HASH_FLD_UDP_DST_PORT ||
+	    hash_flds & ICE_FLOW_HASH_FLD_SCTP_DST_PORT)
+		nfc->data |= (u64)RXH_L4_B_2_3;
+}
+
+/**
+ * ice_set_rxnfc - command to set Rx flow rules.
+ * @netdev: network interface device structure
+ * @cmd: ethtool rxnfc command
+ *
+ * Returns 0 for success and negative values for errors
+ */
+static int ice_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+
+	switch (cmd->cmd) {
+	case ETHTOOL_SRXFH:
+		return ice_set_rss_hash_opt(vsi, cmd);
+	default:
+		break;
+	}
+	return -EOPNOTSUPP;
+}
+
 /**
  * ice_get_rxnfc - command to get Rx flow classification rules
  * @netdev: network interface device structure
@@ -2554,6 +2792,10 @@ ice_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 		cmd->data = vsi->rss_size;
 		ret = 0;
 		break;
+	case ETHTOOL_GRXFH:
+		ice_get_rss_hash_opt(vsi, cmd);
+		ret = 0;
+		break;
 	default:
 		break;
 	}
@@ -3857,6 +4099,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_priv_flags		= ice_set_priv_flags,
 	.get_sset_count		= ice_get_sset_count,
 	.get_rxnfc		= ice_get_rxnfc,
+	.set_rxnfc		= ice_set_rxnfc,
 	.get_ringparam		= ice_get_ringparam,
 	.set_ringparam		= ice_set_ringparam,
 	.nway_reset		= ice_nway_reset,
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index d160695c22e0..1a0bad4cd5f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1244,3 +1244,32 @@ enum ice_status ice_replay_rss_cfg(struct ice_hw *hw, u16 vsi_handle)
 
 	return status;
 }
+
+/**
+ * ice_get_rss_cfg - returns hashed fields for the given header types
+ * @hw: pointer to the hardware structure
+ * @vsi_handle: software VSI handle
+ * @hdrs: protocol header type
+ *
+ * This function will return the match fields of the first instance of flow
+ * profile having the given header types and containing input VSI
+ */
+u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs)
+{
+	struct ice_rss_cfg *r, *rss_cfg = NULL;
+
+	/* verify if the protocol header is non zero and VSI is valid */
+	if (hdrs == ICE_FLOW_SEG_HDR_NONE || !ice_is_vsi_valid(hw, vsi_handle))
+		return ICE_HASH_INVALID;
+
+	mutex_lock(&hw->rss_locks);
+	list_for_each_entry(r, &hw->rss_list_head, l_entry)
+		if (test_bit(vsi_handle, r->vsis) &&
+		    r->packet_hdr == hdrs) {
+			rss_cfg = r;
+			break;
+		}
+	mutex_unlock(&hw->rss_locks);
+
+	return rss_cfg ? rss_cfg->hashed_flds : ICE_HASH_INVALID;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 475a025d3a2d..5558627bd5eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -203,4 +203,5 @@ enum ice_status ice_rem_vsi_rss_cfg(struct ice_hw *hw, u16 vsi_handle);
 enum ice_status
 ice_add_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u64 hashed_flds,
 		u32 addl_hdrs);
+u64 ice_get_rss_cfg(struct ice_hw *hw, u16 vsi_handle, u32 hdrs);
 #endif /* _ICE_FLOW_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
