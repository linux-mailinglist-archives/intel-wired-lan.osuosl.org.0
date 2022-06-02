Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E3D53BD6C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jun 2022 19:41:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB83B60B64;
	Thu,  2 Jun 2022 17:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJHcmi_D7Gnv; Thu,  2 Jun 2022 17:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A4C460B62;
	Thu,  2 Jun 2022 17:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABB201BF328
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 17:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A750360B62
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 17:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kz02h2nsqJzA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jun 2022 17:41:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F70460B51
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 17:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654191660; x=1685727660;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LRM+PK3fpjmNaJEUx30NaLIXfaIpU0lNrorRxKPd9dQ=;
 b=kVL/iCg/oQJ55Ie/MNR5EqX5b+2GM9b5H7+EQ/nJRPAX7kxsqnNjUZ8c
 3tNzQwR8wcwbDo0fpb2iXnO0rYejFq23awbOLFhn2lCp4UFAygGm0Qm8O
 LdBcNjrGH0aOJWhEUYc8t2RgUO32r9a2vVRV3Ok/vp/ZiCjVWkfZqgxes
 rfJUFpSiDu8OiMZCsjlLoy6x/kl2gdTUFSH8U+CBBlkDBYi0k1EnIuITr
 fYCPnFA7r2NVKO5T7FzCklkuZezweZgf7xEC8T/8wQGK3eUo6W9vD1WLX
 GLrXvP0ywyvzr2uXodFwCSTBh2HFCwoMLsQyZwXP9/cTZW74758FPCUhf A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="273590335"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="273590335"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 10:41:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="680757341"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jun 2022 10:40:59 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Jun 2022 10:37:36 -0700
Message-Id: <20220602173736.278126-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: add support for Auto FEC with
 FEC disabled
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

The default Link Establishment State Machine (LESM) behavior does not
allow the use of FEC disabled if the media does not support FEC
disabled. However users may want to override this behavior.

Add ethtool private flag allow-no-fec-modules-in-auto to allow Auto FEC
with no-FEC mode.

	ethtool --set-priv-flags ethX allow-no-fec-modules-in-auto
on|off

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 80 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 40 +++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  8 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |  8 +-
 7 files changed, 105 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 60453b3b8d23..70ed8afdbf2b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -487,6 +487,7 @@ enum ice_pf_flags {
 	ICE_FLAG_PLUG_AUX_DEV,
 	ICE_FLAG_MTU_CHANGED,
 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
+	ICE_FLAG_ALLOW_FEC_DIS_AUTO,
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index b25e27c4d887..444efe40c233 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1129,6 +1129,7 @@ struct ice_aqc_get_phy_caps_data {
 #define ICE_AQC_PHY_FEC_25G_RS_528_REQ			BIT(2)
 #define ICE_AQC_PHY_FEC_25G_KR_REQ			BIT(3)
 #define ICE_AQC_PHY_FEC_25G_RS_544_REQ			BIT(4)
+#define ICE_AQC_PHY_FEC_DIS				BIT(5)
 #define ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN		BIT(6)
 #define ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN		BIT(7)
 #define ICE_AQC_PHY_FEC_MASK				ICE_M(0xdf, 0)
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9619bdb9e49a..237a2296ff96 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3107,8 +3107,11 @@ enum ice_fc_mode ice_caps_to_fc_mode(u8 caps)
  */
 enum ice_fec_mode ice_caps_to_fec_mode(u8 caps, u8 fec_options)
 {
-	if (caps & ICE_AQC_PHY_EN_AUTO_FEC)
+	if (caps & ICE_AQC_PHY_EN_AUTO_FEC) {
+		if (fec_options & ICE_AQC_PHY_FEC_DIS)
+			return ICE_FEC_DIS_AUTO;
 		return ICE_FEC_AUTO;
+	}
 
 	if (fec_options & (ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN |
 			   ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ |
@@ -3367,6 +3370,11 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		/* Clear all FEC option bits. */
 		cfg->link_fec_opt &= ~ICE_AQC_PHY_FEC_MASK;
 		break;
+	case ICE_FEC_DIS_AUTO:
+		/* Set No FEC and auto FEC */
+		if (!ice_fw_supports_fec_dis_auto(hw))
+			return -EOPNOTSUPP;
+		fallthrough;
 	case ICE_FEC_AUTO:
 		/* AND auto FEC bit, and all caps bits. */
 		cfg->caps &= ICE_AQC_PHY_CAPS_MASK;
@@ -4984,26 +4992,41 @@ ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
 }
 
 /**
- * ice_fw_supports_link_override
+ * ice_is_fw_min_ver
  * @hw: pointer to the hardware structure
+ * @maj: major version
+ * @min: minor version
+ * @patch: patch version
  *
- * Checks if the firmware supports link override
+ * Checks if the firmware is minimum version
  */
-bool ice_fw_supports_link_override(struct ice_hw *hw)
+static bool ice_is_fw_min_ver(struct ice_hw *hw, u8 maj, u8 min, u8 patch)
 {
-	if (hw->api_maj_ver == ICE_FW_API_LINK_OVERRIDE_MAJ) {
-		if (hw->api_min_ver > ICE_FW_API_LINK_OVERRIDE_MIN)
+	if (hw->api_maj_ver == maj) {
+		if (hw->api_min_ver > min)
 			return true;
-		if (hw->api_min_ver == ICE_FW_API_LINK_OVERRIDE_MIN &&
-		    hw->api_patch >= ICE_FW_API_LINK_OVERRIDE_PATCH)
+		if (hw->api_min_ver == min && hw->api_patch >= patch)
 			return true;
-	} else if (hw->api_maj_ver > ICE_FW_API_LINK_OVERRIDE_MAJ) {
+	} else if (hw->api_maj_ver > maj) {
 		return true;
 	}
 
 	return false;
 }
 
+/**
+ * ice_fw_supports_link_override
+ * @hw: pointer to the hardware structure
+ *
+ * Checks if the firmware supports link override
+ */
+bool ice_fw_supports_link_override(struct ice_hw *hw)
+{
+	return ice_is_fw_min_ver(hw, ICE_FW_API_LINK_OVERRIDE_MAJ,
+				 ICE_FW_API_LINK_OVERRIDE_MIN,
+				 ICE_FW_API_LINK_OVERRIDE_PATCH);
+}
+
 /**
  * ice_get_link_default_override
  * @ldo: pointer to the link default override struct
@@ -5134,16 +5157,9 @@ bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw)
 	if (hw->mac_type != ICE_MAC_E810)
 		return false;
 
-	if (hw->api_maj_ver == ICE_FW_API_LLDP_FLTR_MAJ) {
-		if (hw->api_min_ver > ICE_FW_API_LLDP_FLTR_MIN)
-			return true;
-		if (hw->api_min_ver == ICE_FW_API_LLDP_FLTR_MIN &&
-		    hw->api_patch >= ICE_FW_API_LLDP_FLTR_PATCH)
-			return true;
-	} else if (hw->api_maj_ver > ICE_FW_API_LLDP_FLTR_MAJ) {
-		return true;
-	}
-	return false;
+	return ice_is_fw_min_ver(hw, ICE_FW_API_LLDP_FLTR_MAJ,
+				 ICE_FW_API_LLDP_FLTR_MIN,
+				 ICE_FW_API_LLDP_FLTR_PATCH);
 }
 
 /**
@@ -5180,14 +5196,20 @@ ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
  */
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
 {
-	if (hw->api_maj_ver == ICE_FW_API_REPORT_DFLT_CFG_MAJ) {
-		if (hw->api_min_ver > ICE_FW_API_REPORT_DFLT_CFG_MIN)
-			return true;
-		if (hw->api_min_ver == ICE_FW_API_REPORT_DFLT_CFG_MIN &&
-		    hw->api_patch >= ICE_FW_API_REPORT_DFLT_CFG_PATCH)
-			return true;
-	} else if (hw->api_maj_ver > ICE_FW_API_REPORT_DFLT_CFG_MAJ) {
-		return true;
-	}
-	return false;
+	return ice_is_fw_min_ver(hw, ICE_FW_API_REPORT_DFLT_CFG_MAJ,
+				 ICE_FW_API_REPORT_DFLT_CFG_MIN,
+				 ICE_FW_API_REPORT_DFLT_CFG_PATCH);
+}
+
+/**
+ * ice_fw_supports_fec_dis_auto
+ * @hw: pointer to the hardware structure
+ *
+ * Checks if the firmware supports FEC disable in Auto FEC mode
+ */
+bool ice_fw_supports_fec_dis_auto(struct ice_hw *hw)
+{
+	return ice_is_fw_min_ver(hw, ICE_FW_API_FEC_DIS_AUTO_MAJ,
+				 ICE_FW_API_FEC_DIS_AUTO_MIN,
+				 ICE_FW_API_FEC_DIS_AUTO_PATCH);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 872ea7d2332d..6a7764dd264c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -110,6 +110,7 @@ int
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 		   struct ice_aqc_set_phy_cfg_data *cfg, struct ice_sq_cd *cd);
 bool ice_fw_supports_link_override(struct ice_hw *hw);
+bool ice_fw_supports_fec_dis_auto(struct ice_hw *hw);
 int
 ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 			      struct ice_port_info *pi);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 1e71b70f0e52..40067e1d6593 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -166,6 +166,8 @@ static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 	ICE_PRIV_FLAG("mdd-auto-reset-vf", ICE_FLAG_MDD_AUTO_RESET_VF),
 	ICE_PRIV_FLAG("vf-vlan-pruning", ICE_FLAG_VF_VLAN_PRUNING),
 	ICE_PRIV_FLAG("legacy-rx", ICE_FLAG_LEGACY_RX),
+	ICE_PRIV_FLAG("allow-no-fec-modules-in-auto",
+		      ICE_FLAG_ALLOW_FEC_DIS_AUTO),
 };
 
 #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
@@ -1012,11 +1014,16 @@ ice_set_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
 	enum ice_fec_mode fec;
 
 	switch (fecparam->fec) {
 	case ETHTOOL_FEC_AUTO:
-		fec = ICE_FEC_AUTO;
+		if (ice_fw_supports_fec_dis_auto(&pf->hw) &&
+		    test_bit(ICE_FLAG_ALLOW_FEC_DIS_AUTO, pf->flags))
+			fec = ICE_FEC_DIS_AUTO;
+		else
+			fec = ICE_FEC_AUTO;
 		break;
 	case ETHTOOL_FEC_RS:
 		fec = ICE_FEC_RS;
@@ -1029,7 +1036,7 @@ ice_set_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 		fec = ICE_FEC_NONE;
 		break;
 	default:
-		dev_warn(ice_pf_to_dev(vsi->back), "Unsupported FEC mode: %d\n",
+		dev_warn(ice_pf_to_dev(pf), "Unsupported FEC mode: %d\n",
 			 fecparam->fec);
 		return -EINVAL;
 	}
@@ -1306,6 +1313,35 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 		change_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags);
 		ret = -EOPNOTSUPP;
 	}
+
+	if (test_bit(ICE_FLAG_ALLOW_FEC_DIS_AUTO, change_flags)) {
+		enum ice_fec_mode fec = ICE_FEC_AUTO;
+
+		if (!ice_fw_supports_fec_dis_auto(&pf->hw)) {
+			netdev_info(vsi->netdev, "Unsupported Firmware to Enable/Disable auto configuration of No FEC modules\n");
+			change_bit(ICE_FLAG_ALLOW_FEC_DIS_AUTO, pf->flags);
+			ret = -EOPNOTSUPP;
+			goto ethtool_exit;
+		}
+
+		/* Set FEC configuration */
+		if (test_bit(ICE_FLAG_ALLOW_FEC_DIS_AUTO, pf->flags))
+			fec = ICE_FEC_DIS_AUTO;
+
+		ret = ice_set_fec_cfg(netdev, fec);
+
+		/* If FEC configuration fails, restore original FEC flags */
+		if (ret) {
+			netdev_warn(vsi->netdev, "Failed to Enable/Disable auto configuration of No FEC modules\n");
+			change_bit(ICE_FLAG_ALLOW_FEC_DIS_AUTO, pf->flags);
+			goto ethtool_exit;
+		}
+
+		if (test_bit(ICE_FLAG_ALLOW_FEC_DIS_AUTO, pf->flags))
+			netdev_info(vsi->netdev, "Enabled auto configuration of No FEC modules\n");
+		else
+			netdev_info(vsi->netdev, "Auto configuration of No FEC modules reset to NVM defaults\n");
+	}
 ethtool_exit:
 	clear_bit(ICE_FLAG_ETHTOOL_CTXT, pf->flags);
 	return ret;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e1cae253412c..6ffd09f061c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2187,8 +2187,12 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	/* FEC */
 	ice_cfg_phy_fec(pi, cfg, phy->curr_user_fec_req);
 
-	/* Can't provide what was requested; use PHY capabilities */
-	if (cfg->link_fec_opt !=
+	/* Can't provide what was requested; use PHY capabilities.
+	 * The user can force FEC disabled Auto mode via ethtool private
+	 * flag allow-no-fec-modules-in-auto, so allow ICE_FEC_DIS_AUTO.
+	 */
+	if (phy->curr_user_fec_req != ICE_FEC_DIS_AUTO &&
+	    cfg->link_fec_opt !=
 	    (cfg->link_fec_opt & pcaps->link_fec_options)) {
 		cfg->caps |= pcaps->caps & ICE_AQC_PHY_EN_AUTO_FEC;
 		cfg->link_fec_opt = pcaps->link_fec_options;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f2a518a1fd94..1584078ab83d 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -107,7 +107,8 @@ enum ice_fec_mode {
 	ICE_FEC_NONE = 0,
 	ICE_FEC_RS,
 	ICE_FEC_BASER,
-	ICE_FEC_AUTO
+	ICE_FEC_AUTO,
+	ICE_FEC_DIS_AUTO
 };
 
 struct ice_phy_cache_mode_data {
@@ -1147,4 +1148,9 @@ struct ice_aq_get_set_rss_lut_params {
 #define ICE_FW_API_REPORT_DFLT_CFG_MIN		7
 #define ICE_FW_API_REPORT_DFLT_CFG_PATCH	3
 
+/* AQ API version for FEC disable in Auto FEC mode */
+#define ICE_FW_API_FEC_DIS_AUTO_MAJ		1
+#define ICE_FW_API_FEC_DIS_AUTO_MIN		7
+#define ICE_FW_API_FEC_DIS_AUTO_PATCH		5
+
 #endif /* _ICE_TYPE_H_ */

base-commit: 74ba827d265743795b31669bc4917a260cf5d76a
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
