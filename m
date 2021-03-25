Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6556349C83
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:46:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6179240F84;
	Thu, 25 Mar 2021 22:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Weah_XBdsVl; Thu, 25 Mar 2021 22:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E34E740F7B;
	Thu, 25 Mar 2021 22:45:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D2A11BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FDD284B57
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 979FEjBeX43J for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 939E484B53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
IronPort-SDR: YwbJBJIXzNpVzoqxbJfHwq19GkOSuCWjRMeehH0HfSk0d4hcnlU5yHma8wGo3dZofmg0YltFUn
 4VBtqXLOKKjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031233"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031233"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:01 -0700
IronPort-SDR: xHCzsg4zcfJGE3YM2TvSLYsvhikiW9v4o8fKg+ed+/ULII+aadAO7MflcZEKgJ/hLjXWXdbOTD
 fUPUeXL6a6kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251364"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:06 -0700
Message-Id: <20210325223517.17722-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 03/14] ice: Align macro names to the
 specification
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

For get PHY abilities AQ, the specification defines "report modes"
as "with media", "without media" and "active configuration". For
clarity, rename macros to align with the specification.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_common.c     | 13 +++++++------
 drivers/net/ethernet/intel/ice/ice_ethtool.c    | 12 ++++++------
 drivers/net/ethernet/intel/ice/ice_main.c       | 12 ++++++------
 4 files changed, 24 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 0a5f4c230076..f65e509f582c 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -882,11 +882,11 @@ struct ice_aqc_get_phy_caps {
 	 * 01b - Report topology capabilities
 	 * 10b - Report SW configured
 	 */
-#define ICE_AQC_REPORT_MODE_S		1
-#define ICE_AQC_REPORT_MODE_M		(3 << ICE_AQC_REPORT_MODE_S)
-#define ICE_AQC_REPORT_NVM_CAP		0
-#define ICE_AQC_REPORT_TOPO_CAP		BIT(1)
-#define ICE_AQC_REPORT_SW_CFG		BIT(2)
+#define ICE_AQC_REPORT_MODE_S			1
+#define ICE_AQC_REPORT_MODE_M			(3 << ICE_AQC_REPORT_MODE_S)
+#define ICE_AQC_REPORT_TOPO_CAP_NO_MEDIA	0
+#define ICE_AQC_REPORT_TOPO_CAP_MEDIA		BIT(1)
+#define ICE_AQC_REPORT_ACTIVE_CFG		BIT(2)
 	__le32 reserved1;
 	__le32 addr_high;
 	__le32 addr_low;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f1573d653321..1d744d2456d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -191,7 +191,7 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	ice_debug(hw, ICE_DBG_LINK, "   module_type[2] = 0x%x\n",
 		  pcaps->module_type[2]);
 
-	if (!status && report_mode == ICE_AQC_REPORT_TOPO_CAP) {
+	if (!status && report_mode == ICE_AQC_REPORT_TOPO_CAP_MEDIA) {
 		pi->phy.phy_type_low = le64_to_cpu(pcaps->phy_type_low);
 		pi->phy.phy_type_high = le64_to_cpu(pcaps->phy_type_high);
 		memcpy(pi->phy.link_info.module_type, &pcaps->module_type,
@@ -922,7 +922,8 @@ enum ice_status ice_init_hw(struct ice_hw *hw)
 
 	/* Initialize port_info struct with PHY capabilities */
 	status = ice_aq_get_phy_caps(hw->port_info, false,
-				     ICE_AQC_REPORT_TOPO_CAP, pcaps, NULL);
+				     ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
+				     NULL);
 	devm_kfree(ice_hw_to_dev(hw), pcaps);
 	if (status)
 		dev_warn(ice_hw_to_dev(hw), "Get PHY capabilities failed status = %d, continuing anyway\n",
@@ -2734,7 +2735,7 @@ enum ice_status ice_update_link_info(struct ice_port_info *pi)
 		if (!pcaps)
 			return ICE_ERR_NO_MEMORY;
 
-		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP,
+		status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 					     pcaps, NULL);
 
 		devm_kfree(ice_hw_to_dev(hw), pcaps);
@@ -2894,8 +2895,8 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
 		return ICE_ERR_NO_MEMORY;
 
 	/* Get the current PHY config */
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
-				     NULL);
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG,
+				     pcaps, NULL);
 	if (status) {
 		*aq_failures = ICE_SET_FC_AQ_FAIL_GET;
 		goto out;
@@ -3041,7 +3042,7 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 	if (!pcaps)
 		return ICE_ERR_NO_MEMORY;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP, pcaps,
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
 				     NULL);
 	if (status)
 		goto out;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d3459bdf5134..49baf73a3c2c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1060,7 +1060,7 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 	if (!caps)
 		return -ENOMEM;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP,
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 				     caps, NULL);
 	if (status) {
 		err = -EAGAIN;
@@ -2000,7 +2000,7 @@ ice_get_link_ksettings(struct net_device *netdev,
 		return -ENOMEM;
 
 	status = ice_aq_get_phy_caps(vsi->port_info, false,
-				     ICE_AQC_REPORT_SW_CFG, caps, NULL);
+				     ICE_AQC_REPORT_ACTIVE_CFG, caps, NULL);
 	if (status) {
 		err = -EIO;
 		goto done;
@@ -2037,7 +2037,7 @@ ice_get_link_ksettings(struct net_device *netdev,
 		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);
 
 	status = ice_aq_get_phy_caps(vsi->port_info, false,
-				     ICE_AQC_REPORT_TOPO_CAP, caps, NULL);
+				     ICE_AQC_REPORT_TOPO_CAP_MEDIA, caps, NULL);
 	if (status) {
 		err = -EIO;
 		goto done;
@@ -2243,7 +2243,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 		return -ENOMEM;
 
 	/* Get the PHY capabilities based on media */
-	status = ice_aq_get_phy_caps(p, false, ICE_AQC_REPORT_TOPO_CAP,
+	status = ice_aq_get_phy_caps(p, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA,
 				     abilities, NULL);
 	if (status) {
 		err = -EAGAIN;
@@ -2972,7 +2972,7 @@ ice_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		return;
 
 	/* Get current PHY config */
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
 				     NULL);
 	if (status)
 		goto out;
@@ -3039,7 +3039,7 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		return -ENOMEM;
 
 	/* Get current PHY config */
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
 				     NULL);
 	if (status) {
 		kfree(pcaps);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ecadc517e9eb..4c4ce4379eb4 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -734,7 +734,7 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 	}
 
 	status = ice_aq_get_phy_caps(vsi->port_info, false,
-				     ICE_AQC_REPORT_SW_CFG, caps, NULL);
+				     ICE_AQC_REPORT_ACTIVE_CFG, caps, NULL);
 	if (status)
 		netdev_info(vsi->netdev, "Get phy capability failed.\n");
 
@@ -1650,7 +1650,7 @@ static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
 	if (!pcaps)
 		return -ENOMEM;
 
-	retcode = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
+	retcode = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
 				      NULL);
 	if (retcode) {
 		dev_err(dev, "Failed to get phy capabilities, VSI %d error %d\n",
@@ -1710,7 +1710,7 @@ static int ice_init_nvm_phy_type(struct ice_port_info *pi)
 	if (!pcaps)
 		return -ENOMEM;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_NVM_CAP, pcaps,
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_NO_MEDIA, pcaps,
 				     NULL);
 
 	if (status) {
@@ -1826,7 +1826,7 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 	if (!pcaps)
 		return -ENOMEM;
 
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP, pcaps,
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
 				     NULL);
 	if (status) {
 		dev_err(ice_pf_to_dev(pf), "Get PHY capability failed.\n");
@@ -1905,7 +1905,7 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 		return -ENOMEM;
 
 	/* Get current PHY config */
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_SW_CFG, pcaps,
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
 				     NULL);
 	if (status) {
 		dev_err(dev, "Failed to get PHY configuration, VSI %d error %s\n",
@@ -1923,7 +1923,7 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 
 	/* Use PHY topology as baseline for configuration */
 	memset(pcaps, 0, sizeof(*pcaps));
-	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP, pcaps,
+	status = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_TOPO_CAP_MEDIA, pcaps,
 				     NULL);
 	if (status) {
 		dev_err(dev, "Failed to get PHY topology, VSI %d error %s\n",
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
