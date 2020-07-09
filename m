Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5C021A498
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CFBB899FD;
	Thu,  9 Jul 2020 16:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P2KRNiPRHRJc; Thu,  9 Jul 2020 16:20:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB77A88C9C;
	Thu,  9 Jul 2020 16:20:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41A651BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 37BEF88BF4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id niumxLKo87Pq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C3D5886AA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
IronPort-SDR: WANvx9qniTQtM6kgl2BUXqejt3pNkAZC+nh26dwqkQMuqVYS38gBmBxTPSSX8bvUtcF6mWM6Ke
 dxBaLGiOJxKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="232906036"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232906036"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:11 -0700
IronPort-SDR: 1jx81sdabNkJuo+XVsx54DP36rV+o8B7iva4lAsg5rThoWYzwGaC+u0ALvlhofRNbo3VdON8xM
 aAVxj4swQCyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352071"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:07 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:11 -0700
Message-Id: <20200709161614.61098-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 12/15] ice: Rename low_power_ctrl
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

From: Lev Faerman <lev.faerman@intel.com>

Rename the low_power_ctrl field to low_power_ctrl_an to be properly
descriptive of it being an autonegotiation field.

Signed-off-by: Lev Faerman <lev.faerman@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h    |  4 ++--
 drivers/net/ethernet/intel/ice/ice_common.c    | 18 +++++++++---------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 59f876300e96..70508543f7ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -961,7 +961,7 @@ struct ice_aqc_get_phy_caps_data {
 #define ICE_AQC_GET_PHY_EN_MOD_QUAL			BIT(5)
 #define ICE_AQC_PHY_EN_AUTO_FEC				BIT(7)
 #define ICE_AQC_PHY_CAPS_MASK				ICE_M(0xff, 0)
-	u8 low_power_ctrl;
+	u8 low_power_ctrl_an;
 #define ICE_AQC_PHY_EN_D3COLD_LOW_POWER_AUTONEG		BIT(0)
 #define ICE_AQC_PHY_AN_EN_CLAUSE28			BIT(1)
 #define ICE_AQC_PHY_AN_EN_CLAUSE73			BIT(2)
@@ -1036,7 +1036,7 @@ struct ice_aqc_set_phy_cfg_data {
 #define ICE_AQ_PHY_ENA_AUTO_LINK_UPDT	BIT(5)
 #define ICE_AQ_PHY_ENA_LESM		BIT(6)
 #define ICE_AQ_PHY_ENA_AUTO_FEC		BIT(7)
-	u8 low_power_ctrl;
+	u8 low_power_ctrl_an;
 	__le16 eee_cap; /* Value from ice_aqc_get_phy_caps */
 	__le16 eeer_value;
 	u8 link_fec_opt; /* Use defines from ice_aqc_get_phy_caps */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6a64d6e77357..620befdaf80d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -173,8 +173,8 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	ice_debug(hw, ICE_DBG_LINK, "	phy_type_high = 0x%llx\n",
 		  (unsigned long long)le64_to_cpu(pcaps->phy_type_high));
 	ice_debug(hw, ICE_DBG_LINK, "	caps = 0x%x\n", pcaps->caps);
-	ice_debug(hw, ICE_DBG_LINK, "	low_power_ctrl = 0x%x\n",
-		  pcaps->low_power_ctrl);
+	ice_debug(hw, ICE_DBG_LINK, "	low_power_ctrl_an = 0x%x\n",
+		  pcaps->low_power_ctrl_an);
 	ice_debug(hw, ICE_DBG_LINK, "	eee_cap = 0x%x\n", pcaps->eee_cap);
 	ice_debug(hw, ICE_DBG_LINK, "	eeer_value = 0x%x\n",
 		  pcaps->eeer_value);
@@ -2525,8 +2525,8 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 	ice_debug(hw, ICE_DBG_LINK, "	phy_type_high = 0x%llx\n",
 		  (unsigned long long)le64_to_cpu(cfg->phy_type_high));
 	ice_debug(hw, ICE_DBG_LINK, "	caps = 0x%x\n", cfg->caps);
-	ice_debug(hw, ICE_DBG_LINK, "	low_power_ctrl = 0x%x\n",
-		  cfg->low_power_ctrl);
+	ice_debug(hw, ICE_DBG_LINK, "	low_power_ctrl_an = 0x%x\n",
+		  cfg->low_power_ctrl_an);
 	ice_debug(hw, ICE_DBG_LINK, "	eee_cap = 0x%x\n", cfg->eee_cap);
 	ice_debug(hw, ICE_DBG_LINK, "	eeer_value = 0x%x\n", cfg->eeer_value);
 	ice_debug(hw, ICE_DBG_LINK, "	link_fec_opt = 0x%x\n",
@@ -2811,7 +2811,7 @@ ice_phy_caps_equals_cfg(struct ice_aqc_get_phy_caps_data *phy_caps,
 	if (phy_caps->phy_type_low != phy_cfg->phy_type_low ||
 	    phy_caps->phy_type_high != phy_cfg->phy_type_high ||
 	    ((phy_caps->caps & caps_mask) != (phy_cfg->caps & cfg_mask)) ||
-	    phy_caps->low_power_ctrl != phy_cfg->low_power_ctrl ||
+	    phy_caps->low_power_ctrl_an != phy_cfg->low_power_ctrl_an ||
 	    phy_caps->eee_cap != phy_cfg->eee_cap ||
 	    phy_caps->eeer_value != phy_cfg->eeer_value ||
 	    phy_caps->link_fec_options != phy_cfg->link_fec_opt)
@@ -2841,7 +2841,7 @@ ice_copy_phy_caps_to_cfg(struct ice_port_info *pi,
 	cfg->phy_type_low = caps->phy_type_low;
 	cfg->phy_type_high = caps->phy_type_high;
 	cfg->caps = caps->caps;
-	cfg->low_power_ctrl = caps->low_power_ctrl;
+	cfg->low_power_ctrl_an = caps->low_power_ctrl_an;
 	cfg->eee_cap = caps->eee_cap;
 	cfg->eeer_value = caps->eeer_value;
 	cfg->link_fec_opt = caps->link_fec_options;
@@ -4245,9 +4245,9 @@ ice_get_link_default_override(struct ice_link_default_override_tlv *ldo,
 bool ice_is_phy_caps_an_enabled(struct ice_aqc_get_phy_caps_data *caps)
 {
 	if (caps->caps & ICE_AQC_PHY_AN_MODE ||
-	    caps->low_power_ctrl & (ICE_AQC_PHY_AN_EN_CLAUSE28 |
-				    ICE_AQC_PHY_AN_EN_CLAUSE73 |
-				    ICE_AQC_PHY_AN_EN_CLAUSE37))
+	    caps->low_power_ctrl_an & (ICE_AQC_PHY_AN_EN_CLAUSE28 |
+				       ICE_AQC_PHY_AN_EN_CLAUSE73 |
+				       ICE_AQC_PHY_AN_EN_CLAUSE37))
 		return true;
 
 	return false;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
