Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B516349C7E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45E8960782;
	Thu, 25 Mar 2021 22:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n2En0hC6IKZ1; Thu, 25 Mar 2021 22:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46AEE60781;
	Thu, 25 Mar 2021 22:45:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 072B01BF909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 656A540002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h8vmAPfTclzH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA32540214
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
IronPort-SDR: +5JMihvjQjYqtZn18+8vIKTJmvf39WiL3sM8epMuvP5MRr0YcDSUmV58mePRSNwejwnwfXan9w
 yoQLmoHrdBPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031245"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031245"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:02 -0700
IronPort-SDR: fQF9nHxZw2wOdlQEb+M0AVA9ZvmkCqBaYvFH0sy//Pt7f7AtkQ7aiX4xiySzqcKM8pEH89kQYq
 Opyz6Z/fA9Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251374"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:15 -0700
Message-Id: <20210325223517.17722-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 12/14] ice: Use local variable instead
 of pointer derefs
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

Replace multiple instances of vsi->back and pi->phy with equivalent
local variables

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 32 ++++++++++-------------
 1 file changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d54e88cb9600..d84a0e05a0c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1876,27 +1876,24 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 static int ice_configure_phy(struct ice_vsi *vsi)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
+	struct ice_port_info *pi = vsi->port_info;
 	struct ice_aqc_get_phy_caps_data *pcaps;
 	struct ice_aqc_set_phy_cfg_data *cfg;
-	struct ice_port_info *pi;
+	struct ice_phy_info *phy = &pi->phy;
+	struct ice_pf *pf = vsi->back;
 	enum ice_status status;
 	int err = 0;
 
-	pi = vsi->port_info;
-	if (!pi)
-		return -EINVAL;
-
 	/* Ensure we have media as we cannot configure a medialess port */
-	if (!(pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
+	if (!(phy->link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
 		return -EPERM;
 
 	ice_print_topo_conflict(vsi);
 
-	if (vsi->port_info->phy.link_info.topo_media_conflict ==
-	    ICE_AQ_LINK_TOPO_UNSUPP_MEDIA)
+	if (phy->link_info.topo_media_conflict == ICE_AQ_LINK_TOPO_UNSUPP_MEDIA)
 		return -EPERM;
 
-	if (test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, vsi->back->flags))
+	if (test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, pf->flags))
 		return ice_force_phys_link_state(vsi, true);
 
 	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
@@ -1917,7 +1914,7 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	 * there's nothing to do
 	 */
 	if (pcaps->caps & ICE_AQC_PHY_EN_LINK &&
-	    ice_phy_caps_equals_cfg(pcaps, &pi->phy.curr_user_phy_cfg))
+	    ice_phy_caps_equals_cfg(pcaps, &phy->curr_user_phy_cfg))
 		goto done;
 
 	/* Use PHY topology as baseline for configuration */
@@ -1946,15 +1943,14 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	/* Speed - If default override pending, use curr_user_phy_cfg set in
 	 * ice_init_phy_user_cfg_ldo.
 	 */
-	if (test_and_clear_bit(ICE_LINK_DEFAULT_OVERRIDE_PENDING,
-			       vsi->back->state)) {
-		cfg->phy_type_low = pi->phy.curr_user_phy_cfg.phy_type_low;
-		cfg->phy_type_high = pi->phy.curr_user_phy_cfg.phy_type_high;
+	if (test_and_clear_bit(ICE_LINK_DEFAULT_OVERRIDE_PENDING, pf->state)) {
+		cfg->phy_type_low = phy->curr_user_phy_cfg.phy_type_low;
+		cfg->phy_type_high = phy->curr_user_phy_cfg.phy_type_high;
 	} else {
 		u64 phy_low = 0, phy_high = 0;
 
 		ice_update_phy_type(&phy_low, &phy_high,
-				    pi->phy.curr_user_speed_req);
+				    phy->curr_user_speed_req);
 		cfg->phy_type_low = pcaps->phy_type_low & cpu_to_le64(phy_low);
 		cfg->phy_type_high = pcaps->phy_type_high &
 				     cpu_to_le64(phy_high);
@@ -1967,7 +1963,7 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	}
 
 	/* FEC */
-	ice_cfg_phy_fec(pi, cfg, pi->phy.curr_user_fec_req);
+	ice_cfg_phy_fec(pi, cfg, phy->curr_user_fec_req);
 
 	/* Can't provide what was requested; use PHY capabilities */
 	if (cfg->link_fec_opt !=
@@ -1979,12 +1975,12 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	/* Flow Control - always supported; no need to check against
 	 * capabilities
 	 */
-	ice_cfg_phy_fc(pi, cfg, pi->phy.curr_user_fc_req);
+	ice_cfg_phy_fc(pi, cfg, phy->curr_user_fc_req);
 
 	/* Enable link and link update */
 	cfg->caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT | ICE_AQ_PHY_ENA_LINK;
 
-	status = ice_aq_set_phy_cfg(&vsi->back->hw, pi, cfg, NULL);
+	status = ice_aq_set_phy_cfg(&pf->hw, pi, cfg, NULL);
 	if (status) {
 		dev_err(dev, "Failed to set phy config, VSI %d error %s\n",
 			vsi->vsi_num, ice_stat_str(status));
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
