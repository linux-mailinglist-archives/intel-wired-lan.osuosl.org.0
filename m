Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2CB756D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 064F98746E;
	Thu, 25 Jul 2019 18:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KZHOHDD-GShw; Thu, 25 Jul 2019 18:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C45C8745D;
	Thu, 25 Jul 2019 18:22:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D1201BF988
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95B3F86559
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6R6Y2NaH5osA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8125F86599
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:22:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="193897614"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 11:22:17 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 02:53:56 -0700
Message-Id: <20190725095401.24590-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S25 07/12] ice: shorten local and add
 debug prints
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Add some verbose debugging for dyndbg to help us when
we are having issues with link and/or PHY.

While there, shorten some strings used by locals that
were causing long line wrapping.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 63 ++++++++++++++-------
 1 file changed, 44 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 4b43e6de847b..302ad981129c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -263,21 +263,23 @@ enum ice_status
 ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 		     struct ice_link_status *link, struct ice_sq_cd *cd)
 {
-	struct ice_link_status *hw_link_info_old, *hw_link_info;
 	struct ice_aqc_get_link_status_data link_data = { 0 };
 	struct ice_aqc_get_link_status *resp;
+	struct ice_link_status *li_old, *li;
 	enum ice_media_type *hw_media_type;
 	struct ice_fc_info *hw_fc_info;
 	bool tx_pause, rx_pause;
 	struct ice_aq_desc desc;
 	enum ice_status status;
+	struct ice_hw *hw;
 	u16 cmd_flags;
 
 	if (!pi)
 		return ICE_ERR_PARAM;
-	hw_link_info_old = &pi->phy.link_info_old;
+	hw = pi->hw;
+	li_old = &pi->phy.link_info_old;
 	hw_media_type = &pi->phy.media_type;
-	hw_link_info = &pi->phy.link_info;
+	li = &pi->phy.link_info;
 	hw_fc_info = &pi->fc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_status);
@@ -286,27 +288,27 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	resp->cmd_flags = cpu_to_le16(cmd_flags);
 	resp->lport_num = pi->lport;
 
-	status = ice_aq_send_cmd(pi->hw, &desc, &link_data, sizeof(link_data),
-				 cd);
+	status = ice_aq_send_cmd(hw, &desc, &link_data, sizeof(link_data), cd);
 
 	if (status)
 		return status;
 
 	/* save off old link status information */
-	*hw_link_info_old = *hw_link_info;
+	*li_old = *li;
 
 	/* update current link status information */
-	hw_link_info->link_speed = le16_to_cpu(link_data.link_speed);
-	hw_link_info->phy_type_low = le64_to_cpu(link_data.phy_type_low);
-	hw_link_info->phy_type_high = le64_to_cpu(link_data.phy_type_high);
+	li->link_speed = le16_to_cpu(link_data.link_speed);
+	li->phy_type_low = le64_to_cpu(link_data.phy_type_low);
+	li->phy_type_high = le64_to_cpu(link_data.phy_type_high);
 	*hw_media_type = ice_get_media_type(pi);
-	hw_link_info->link_info = link_data.link_info;
-	hw_link_info->an_info = link_data.an_info;
-	hw_link_info->ext_info = link_data.ext_info;
-	hw_link_info->max_frame_size = le16_to_cpu(link_data.max_frame_size);
-	hw_link_info->fec_info = link_data.cfg & ICE_AQ_FEC_MASK;
-	hw_link_info->topo_media_conflict = link_data.topo_media_conflict;
-	hw_link_info->pacing = link_data.cfg & ICE_AQ_CFG_PACING_M;
+	li->link_info = link_data.link_info;
+	li->an_info = link_data.an_info;
+	li->ext_info = link_data.ext_info;
+	li->max_frame_size = le16_to_cpu(link_data.max_frame_size);
+	li->fec_info = link_data.cfg & ICE_AQ_FEC_MASK;
+	li->topo_media_conflict = link_data.topo_media_conflict;
+	li->pacing = link_data.cfg & (ICE_AQ_CFG_PACING_M |
+				      ICE_AQ_CFG_PACING_TYPE_M);
 
 	/* update fc info */
 	tx_pause = !!(link_data.an_info & ICE_AQ_LINK_PAUSE_TX);
@@ -320,12 +322,24 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	else
 		hw_fc_info->current_mode = ICE_FC_NONE;
 
-	hw_link_info->lse_ena =
-		!!(resp->cmd_flags & cpu_to_le16(ICE_AQ_LSE_IS_ENABLED));
+	li->lse_ena = !!(resp->cmd_flags & cpu_to_le16(ICE_AQ_LSE_IS_ENABLED));
+
+	ice_debug(hw, ICE_DBG_LINK, "link_speed = 0x%x\n", li->link_speed);
+	ice_debug(hw, ICE_DBG_LINK, "phy_type_low = 0x%llx\n",
+		  (unsigned long long)li->phy_type_low);
+	ice_debug(hw, ICE_DBG_LINK, "phy_type_high = 0x%llx\n",
+		  (unsigned long long)li->phy_type_high);
+	ice_debug(hw, ICE_DBG_LINK, "media_type = 0x%x\n", *hw_media_type);
+	ice_debug(hw, ICE_DBG_LINK, "link_info = 0x%x\n", li->link_info);
+	ice_debug(hw, ICE_DBG_LINK, "an_info = 0x%x\n", li->an_info);
+	ice_debug(hw, ICE_DBG_LINK, "ext_info = 0x%x\n", li->ext_info);
+	ice_debug(hw, ICE_DBG_LINK, "lse_ena = 0x%x\n", li->lse_ena);
+	ice_debug(hw, ICE_DBG_LINK, "max_frame = 0x%x\n", li->max_frame_size);
+	ice_debug(hw, ICE_DBG_LINK, "pacing = 0x%x\n", li->pacing);
 
 	/* save link status information */
 	if (link)
-		*link = *hw_link_info;
+		*link = *li;
 
 	/* flag cleared so calling functions don't call AQ again */
 	pi->phy.get_link_info = false;
@@ -2000,6 +2014,17 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, u8 lport,
 	desc.params.set_phy.lport_num = lport;
 	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 
+	ice_debug(hw, ICE_DBG_LINK, "phy_type_low = 0x%llx\n",
+		  (unsigned long long)le64_to_cpu(cfg->phy_type_low));
+	ice_debug(hw, ICE_DBG_LINK, "phy_type_high = 0x%llx\n",
+		  (unsigned long long)le64_to_cpu(cfg->phy_type_high));
+	ice_debug(hw, ICE_DBG_LINK, "caps = 0x%x\n", cfg->caps);
+	ice_debug(hw, ICE_DBG_LINK, "low_power_ctrl = 0x%x\n",
+		  cfg->low_power_ctrl);
+	ice_debug(hw, ICE_DBG_LINK, "eee_cap = 0x%x\n", cfg->eee_cap);
+	ice_debug(hw, ICE_DBG_LINK, "eeer_value = 0x%x\n", cfg->eeer_value);
+	ice_debug(hw, ICE_DBG_LINK, "link_fec_opt = 0x%x\n", cfg->link_fec_opt);
+
 	return ice_aq_send_cmd(hw, &desc, cfg, sizeof(*cfg), cd);
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
