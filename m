Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF539349C7C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92C8D40F7B;
	Thu, 25 Mar 2021 22:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1nE7gZ1chdH0; Thu, 25 Mar 2021 22:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC5D440F78;
	Thu, 25 Mar 2021 22:45:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 913A11BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C29F84B55
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id abpIYdpMPhrI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 292AB84B54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:03 +0000 (UTC)
IronPort-SDR: dqPvLfSZ0II1mM5z9Iv6J1mKODOu/Pg21HSuHv3qKOJYfus2PcltB3z9RraWndc/kxX4fFWQew
 mka9HQT0LqKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031242"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031242"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: dXxbfO7kDZgSthZP9fvq2Y6XEzz4ScKSg5dcea2j7ZCqGVQSw1TpcmQAgnCysJJpfKAQbQAUUP
 V5YxuA6nlMVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251371"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:12 -0700
Message-Id: <20210325223517.17722-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 09/14] ice: Use default configuration
 mode for PHY configuration
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Recent firmware supports a new "get PHY capabilities" mode
ICE_AQC_REPORT_DFLT_CFG which makes it unnecessary for the driver
to track and apply NVM based default link overrides.

If FW AQ API version supports it, use Report Default Configuration.
Add check function for Report Default Configuration support and update
accordingly.

Also change adv_phy_type_[lo|hi] to advert_phy_type[lo|hi] for
clarity.

Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 12 ++--
 drivers/net/ethernet/intel/ice/ice_common.c   | 33 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 59 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_main.c     | 35 +++++++----
 drivers/net/ethernet/intel/ice/ice_type.h     |  5 ++
 6 files changed, 103 insertions(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index f65e509f582c..9151ddb5234f 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -877,16 +877,18 @@ struct ice_aqc_get_phy_caps {
 	__le16 param0;
 	/* 18.0 - Report qualified modules */
 #define ICE_AQC_GET_PHY_RQM		BIT(0)
-	/* 18.1 - 18.2 : Report mode
-	 * 00b - Report NVM capabilities
-	 * 01b - Report topology capabilities
-	 * 10b - Report SW configured
+	/* 18.1 - 18.3 : Report mode
+	 * 000b - Report NVM capabilities
+	 * 001b - Report topology capabilities
+	 * 010b - Report SW configured
+	 * 100b - Report default capabilities
 	 */
 #define ICE_AQC_REPORT_MODE_S			1
-#define ICE_AQC_REPORT_MODE_M			(3 << ICE_AQC_REPORT_MODE_S)
+#define ICE_AQC_REPORT_MODE_M			(7 << ICE_AQC_REPORT_MODE_S)
 #define ICE_AQC_REPORT_TOPO_CAP_NO_MEDIA	0
 #define ICE_AQC_REPORT_TOPO_CAP_MEDIA		BIT(1)
 #define ICE_AQC_REPORT_ACTIVE_CFG		BIT(2)
+#define ICE_AQC_REPORT_DFLT_CFG		BIT(3)
 	__le32 reserved1;
 	__le32 addr_high;
 	__le32 addr_low;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 1d744d2456d4..8bbd28ddd56c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -158,6 +158,10 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		return ICE_ERR_PARAM;
 	hw = pi->hw;
 
+	if (report_mode == ICE_AQC_REPORT_DFLT_CFG &&
+	    !ice_fw_supports_report_dflt_cfg(hw))
+		return ICE_ERR_PARAM;
+
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_phy_caps);
 
 	if (qual_mods)
@@ -3034,16 +3038,21 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 {
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	enum ice_status status;
+	struct ice_hw *hw;
 
 	if (!pi || !cfg)
 		return ICE_ERR_BAD_PTR;
 
+	hw = pi->hw;
+
 	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
 		return ICE_ERR_NO_MEMORY;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
-				     NULL);
+	status = ice_aq_get_phy_caps(pi, false,
+				     (ice_fw_supports_report_dflt_cfg(hw) ?
+				      ICE_AQC_REPORT_DFLT_CFG :
+				      ICE_AQC_REPORT_TOPO_CAP_MEDIA), pcaps, NULL);
 	if (status)
 		goto out;
 
@@ -4492,3 +4501,23 @@ ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add)
 
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
+
+/**
+ * ice_fw_supports_report_dflt_cfg
+ * @hw: pointer to the hardware structure
+ *
+ * Checks if the firmware supports report default configuration
+ */
+bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
+{
+	if (hw->api_maj_ver == ICE_FW_API_REPORT_DFLT_CFG_MAJ) {
+		if (hw->api_min_ver > ICE_FW_API_REPORT_DFLT_CFG_MIN)
+			return true;
+		if (hw->api_min_ver == ICE_FW_API_REPORT_DFLT_CFG_MIN &&
+		    hw->api_patch >= ICE_FW_API_REPORT_DFLT_CFG_PATCH)
+			return true;
+	} else if (hw->api_maj_ver > ICE_FW_API_REPORT_DFLT_CFG_MAJ) {
+		return true;
+	}
+	return false;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index d14406b11c92..7a9d2dfb21a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -179,4 +179,5 @@ ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw);
 enum ice_status
 ice_lldp_fltr_add_remove(struct ice_hw *hw, u16 vsi_num, bool add);
+bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 273647188f69..d5b20764d24a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1445,8 +1445,8 @@ void ice_mask_min_supported_speeds(u64 phy_types_high, u64 *phy_types_low)
 	do {								     \
 		if (req_speeds & (aq_link_speed) ||			     \
 		    (!req_speeds &&					     \
-		     (adv_phy_type_lo & phy_type_mask_lo ||		     \
-		      adv_phy_type_hi & phy_type_mask_hi)))		     \
+		     (advert_phy_type_lo & phy_type_mask_lo ||		     \
+		      advert_phy_type_hi & phy_type_mask_hi)))		     \
 			ethtool_link_ksettings_add_link_mode(ks, advertising,\
 							ethtool_link_mode);  \
 	} while (0)
@@ -1463,10 +1463,10 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
+	u64 advert_phy_type_lo = 0;
+	u64 advert_phy_type_hi = 0;
 	u64 phy_type_mask_lo = 0;
 	u64 phy_type_mask_hi = 0;
-	u64 adv_phy_type_lo = 0;
-	u64 adv_phy_type_hi = 0;
 	u64 phy_types_high = 0;
 	u64 phy_types_low = 0;
 	u16 req_speeds;
@@ -1484,28 +1484,35 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 	 * requested by user.
 	 */
 	if (test_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags)) {
-		struct ice_link_default_override_tlv *ldo;
-
-		ldo = &pf->link_dflt_override;
 		phy_types_low = le64_to_cpu(pf->nvm_phy_type_lo);
 		phy_types_high = le64_to_cpu(pf->nvm_phy_type_hi);
 
 		ice_mask_min_supported_speeds(phy_types_high, &phy_types_low);
-
-		/* If override enabled and PHY mask set, then
-		 * Advertising link mode is the intersection of the PHY
-		 * types without media and the override PHY mask.
+		/* determine advertised modes based on link override only
+		 * if it's supported and if the FW doesn't abstract the
+		 * driver from having to account for link overrides
 		 */
-		if (ldo->options & ICE_LINK_OVERRIDE_EN &&
-		    (ldo->phy_type_low || ldo->phy_type_high)) {
-			adv_phy_type_lo =
-				le64_to_cpu(pf->nvm_phy_type_lo) &
-				ldo->phy_type_low;
-			adv_phy_type_hi =
-				le64_to_cpu(pf->nvm_phy_type_hi) &
-				ldo->phy_type_high;
+		if (ice_fw_supports_link_override(&pf->hw) &&
+		    !ice_fw_supports_report_dflt_cfg(&pf->hw)) {
+			struct ice_link_default_override_tlv *ldo;
+
+			ldo = &pf->link_dflt_override;
+			/* If override enabled and PHY mask set, then
+			 * Advertising link mode is the intersection of the PHY
+			 * types without media and the override PHY mask.
+			 */
+			if (ldo->options & ICE_LINK_OVERRIDE_EN &&
+			    (ldo->phy_type_low || ldo->phy_type_high)) {
+				advert_phy_type_lo =
+					le64_to_cpu(pf->nvm_phy_type_lo) &
+					ldo->phy_type_low;
+				advert_phy_type_hi =
+					le64_to_cpu(pf->nvm_phy_type_hi) &
+					ldo->phy_type_high;
+			}
 		}
 	} else {
+		/* strict mode */
 		phy_types_low = vsi->port_info->phy.phy_type_low;
 		phy_types_high = vsi->port_info->phy.phy_type_high;
 	}
@@ -1513,9 +1520,9 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
 	/* If Advertising link mode PHY type is not using override PHY type,
 	 * then use PHY type with media.
 	 */
-	if (!adv_phy_type_lo && !adv_phy_type_hi) {
-		adv_phy_type_lo = vsi->port_info->phy.phy_type_low;
-		adv_phy_type_hi = vsi->port_info->phy.phy_type_high;
+	if (!advert_phy_type_lo && !advert_phy_type_hi) {
+		advert_phy_type_lo = vsi->port_info->phy.phy_type_low;
+		advert_phy_type_hi = vsi->port_info->phy.phy_type_high;
 	}
 
 	ethtool_link_ksettings_zero_link_mode(ks, supported);
@@ -2227,8 +2234,12 @@ ice_set_link_ksettings(struct net_device *netdev,
 		return -ENOMEM;
 
 	/* Get the PHY capabilities based on media */
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
-				     phy_caps, NULL);
+	if (ice_fw_supports_report_dflt_cfg(pi->hw))
+		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
+					     phy_caps, NULL);
+	else
+		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
+					     phy_caps, NULL);
 	if (status) {
 		err = -EIO;
 		goto done;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index fc95b634fee9..1e31940a4717 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1751,7 +1751,7 @@ static void ice_init_link_dflt_override(struct ice_port_info *pi)
  * ice_init_phy_cfg_dflt_override - Initialize PHY cfg default override settings
  * @pi: port info structure
  *
- * If default override is enabled, initialized the user PHY cfg speed and FEC
+ * If default override is enabled, initialize the user PHY cfg speed and FEC
  * settings using the default override mask from the NVM.
  *
  * The PHY should only be configured with the default override settings the
@@ -1760,6 +1760,9 @@ static void ice_init_link_dflt_override(struct ice_port_info *pi)
  * and the PHY has not been configured with the default override settings. The
  * state is set here, and cleared in ice_configure_phy the first time the PHY is
  * configured.
+ *
+ * This function should be called only if the FW doesn't support default
+ * configuration mode, as reported by ice_fw_supports_report_dflt_cfg.
  */
 static void ice_init_phy_cfg_dflt_override(struct ice_port_info *pi)
 {
@@ -1821,8 +1824,12 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 	if (!pcaps)
 		return -ENOMEM;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
-				     NULL);
+	if (ice_fw_supports_report_dflt_cfg(pi->hw))
+		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
+					     pcaps, NULL);
+	else
+		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
+					     pcaps, NULL);
 	if (status) {
 		dev_err(ice_pf_to_dev(pf), "Get PHY capability failed.\n");
 		err = -EIO;
@@ -1837,17 +1844,19 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 	      ICE_AQC_MOD_ENFORCE_STRICT_MODE)) {
 		set_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags);
 
-		/* if link default override is enabled, initialize user PHY
-		 * configuration with link default override values
+		/* if the FW supports default PHY configuration mode, then the driver
+		 * does not have to apply link override settings. If not,
+		 * initialize user PHY configuration with link override values
 		 */
-		if (pf->link_dflt_override.options & ICE_LINK_OVERRIDE_EN) {
+		if (!ice_fw_supports_report_dflt_cfg(pi->hw) &&
+		    (pf->link_dflt_override.options & ICE_LINK_OVERRIDE_EN)) {
 			ice_init_phy_cfg_dflt_override(pi);
 			goto out;
 		}
 	}
 
-	/* if link default override is not enabled, initialize PHY using
-	 * topology with media
+	/* if link default override is not enabled, set user flow control and
+	 * FEC settings based on what get_phy_caps returned
 	 */
 	phy->curr_user_fec_req = ice_caps_to_fec_mode(pcaps->caps,
 						      pcaps->link_fec_options);
@@ -1918,10 +1927,14 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 
 	/* Use PHY topology as baseline for configuration */
 	memset(pcaps, 0, sizeof(*pcaps));
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
-				     NULL);
+	if (ice_fw_supports_report_dflt_cfg(pi->hw))
+		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_DFLT_CFG,
+					     pcaps, NULL);
+	else
+		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
+					     pcaps, NULL);
 	if (status) {
-		dev_err(dev, "Failed to get PHY topology, VSI %d error %s\n",
+		dev_err(dev, "Failed to get PHY caps, VSI %d error %s\n",
 			vsi->vsi_num, ice_stat_str(status));
 		err = -EIO;
 		goto done;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index b99c815f2bd0..b0bd8effa941 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1024,4 +1024,9 @@ struct ice_aq_get_set_rss_lut_params {
 #define ICE_FW_API_LLDP_FLTR_MIN	7
 #define ICE_FW_API_LLDP_FLTR_PATCH	1
 
+/* AQ API version for report default configuration */
+#define ICE_FW_API_REPORT_DFLT_CFG_MAJ		1
+#define ICE_FW_API_REPORT_DFLT_CFG_MIN		7
+#define ICE_FW_API_REPORT_DFLT_CFG_PATCH	3
+
 #endif /* _ICE_TYPE_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
