Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BD521A49F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85CFE88C9C;
	Thu,  9 Jul 2020 16:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jreYXJtnTVId; Thu,  9 Jul 2020 16:20:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91E4C89A00;
	Thu,  9 Jul 2020 16:20:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25AC01BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D33E228F1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BTCdgHSVlQ2j for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 928502C91A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
IronPort-SDR: RDhfXcn0ayuBA1OrLICs0BVxFkWdcH8tRoOEx3DbTZ82mIAdxt614FXt3YMXP7apYuY/VPG3uV
 shWGVN+3QhEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="136252757"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136252757"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:10 -0700
IronPort-SDR: hnuhbfhz3PMfZsx552/QMLLwEsYTm9oaInbTqNVBMphp0BhOiVw0rZTeInJ2vx4Lvpnx6575E9
 VKhwM2sqJWQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352069"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:07 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:09 -0700
Message-Id: <20200709161614.61098-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 10/15] ice: add ice_aq_get_phy_caps()
 debug logs
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

From: Paul Greenwalt <paul.greenwalt@intel.com>

Add debug logs for ice_aq_get_phy_caps(), and format
ice_aq_set_phy_cfg() and ice_aq_get_link_info() debug logs to make them
more readable.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 68 +++++++++++++++------
 1 file changed, 50 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index d31f7fcc3dc4..f5b92a17c5d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -150,11 +150,13 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 	u16 pcaps_size = sizeof(*pcaps);
 	struct ice_aq_desc desc;
 	enum ice_status status;
+	struct ice_hw *hw;
 
 	cmd = &desc.params.get_phy;
 
 	if (!pcaps || (report_mode & ~ICE_AQC_REPORT_MODE_M) || !pi)
 		return ICE_ERR_PARAM;
+	hw = pi->hw;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_phy_caps);
 
@@ -162,7 +164,32 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 		cmd->param0 |= cpu_to_le16(ICE_AQC_GET_PHY_RQM);
 
 	cmd->param0 |= cpu_to_le16(report_mode);
-	status = ice_aq_send_cmd(pi->hw, &desc, pcaps, pcaps_size, cd);
+	status = ice_aq_send_cmd(hw, &desc, pcaps, pcaps_size, cd);
+
+	ice_debug(hw, ICE_DBG_LINK, "get phy caps - report_mode = 0x%x\n",
+		  report_mode);
+	ice_debug(hw, ICE_DBG_LINK, "	phy_type_low = 0x%llx\n",
+		  (unsigned long long)le64_to_cpu(pcaps->phy_type_low));
+	ice_debug(hw, ICE_DBG_LINK, "	phy_type_high = 0x%llx\n",
+		  (unsigned long long)le64_to_cpu(pcaps->phy_type_high));
+	ice_debug(hw, ICE_DBG_LINK, "	caps = 0x%x\n", pcaps->caps);
+	ice_debug(hw, ICE_DBG_LINK, "	low_power_ctrl = 0x%x\n",
+		  pcaps->low_power_ctrl);
+	ice_debug(hw, ICE_DBG_LINK, "	eee_cap = 0x%x\n", pcaps->eee_cap);
+	ice_debug(hw, ICE_DBG_LINK, "	eeer_value = 0x%x\n",
+		  pcaps->eeer_value);
+	ice_debug(hw, ICE_DBG_LINK, "	link_fec_options = 0x%x\n",
+		  pcaps->link_fec_options);
+	ice_debug(hw, ICE_DBG_LINK, "	module_compliance_enforcement = 0x%x\n",
+		  pcaps->module_compliance_enforcement);
+	ice_debug(hw, ICE_DBG_LINK, "   extended_compliance_code = 0x%x\n",
+		  pcaps->extended_compliance_code);
+	ice_debug(hw, ICE_DBG_LINK, "   module_type[0] = 0x%x\n",
+		  pcaps->module_type[0]);
+	ice_debug(hw, ICE_DBG_LINK, "   module_type[1] = 0x%x\n",
+		  pcaps->module_type[1]);
+	ice_debug(hw, ICE_DBG_LINK, "   module_type[2] = 0x%x\n",
+		  pcaps->module_type[2]);
 
 	if (!status && report_mode == ICE_AQC_REPORT_TOPO_CAP) {
 		pi->phy.phy_type_low = le64_to_cpu(pcaps->phy_type_low);
@@ -326,18 +353,21 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 
 	li->lse_ena = !!(resp->cmd_flags & cpu_to_le16(ICE_AQ_LSE_IS_ENABLED));
 
-	ice_debug(hw, ICE_DBG_LINK, "link_speed = 0x%x\n", li->link_speed);
-	ice_debug(hw, ICE_DBG_LINK, "phy_type_low = 0x%llx\n",
+	ice_debug(hw, ICE_DBG_LINK, "get link info\n");
+	ice_debug(hw, ICE_DBG_LINK, "	link_speed = 0x%x\n", li->link_speed);
+	ice_debug(hw, ICE_DBG_LINK, "	phy_type_low = 0x%llx\n",
 		  (unsigned long long)li->phy_type_low);
-	ice_debug(hw, ICE_DBG_LINK, "phy_type_high = 0x%llx\n",
+	ice_debug(hw, ICE_DBG_LINK, "	phy_type_high = 0x%llx\n",
 		  (unsigned long long)li->phy_type_high);
-	ice_debug(hw, ICE_DBG_LINK, "media_type = 0x%x\n", *hw_media_type);
-	ice_debug(hw, ICE_DBG_LINK, "link_info = 0x%x\n", li->link_info);
-	ice_debug(hw, ICE_DBG_LINK, "an_info = 0x%x\n", li->an_info);
-	ice_debug(hw, ICE_DBG_LINK, "ext_info = 0x%x\n", li->ext_info);
-	ice_debug(hw, ICE_DBG_LINK, "lse_ena = 0x%x\n", li->lse_ena);
-	ice_debug(hw, ICE_DBG_LINK, "max_frame = 0x%x\n", li->max_frame_size);
-	ice_debug(hw, ICE_DBG_LINK, "pacing = 0x%x\n", li->pacing);
+	ice_debug(hw, ICE_DBG_LINK, "	media_type = 0x%x\n", *hw_media_type);
+	ice_debug(hw, ICE_DBG_LINK, "	link_info = 0x%x\n", li->link_info);
+	ice_debug(hw, ICE_DBG_LINK, "	an_info = 0x%x\n", li->an_info);
+	ice_debug(hw, ICE_DBG_LINK, "	ext_info = 0x%x\n", li->ext_info);
+	ice_debug(hw, ICE_DBG_LINK, "	fec_info = 0x%x\n", li->fec_info);
+	ice_debug(hw, ICE_DBG_LINK, "	lse_ena = 0x%x\n", li->lse_ena);
+	ice_debug(hw, ICE_DBG_LINK, "	max_frame = 0x%x\n",
+		  li->max_frame_size);
+	ice_debug(hw, ICE_DBG_LINK, "	pacing = 0x%x\n", li->pacing);
 
 	/* save link status information */
 	if (link)
@@ -2489,16 +2519,18 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 	desc.params.set_phy.lport_num = pi->lport;
 	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 
-	ice_debug(hw, ICE_DBG_LINK, "phy_type_low = 0x%llx\n",
+	ice_debug(hw, ICE_DBG_LINK, "set phy cfg\n");
+	ice_debug(hw, ICE_DBG_LINK, "	phy_type_low = 0x%llx\n",
 		  (unsigned long long)le64_to_cpu(cfg->phy_type_low));
-	ice_debug(hw, ICE_DBG_LINK, "phy_type_high = 0x%llx\n",
+	ice_debug(hw, ICE_DBG_LINK, "	phy_type_high = 0x%llx\n",
 		  (unsigned long long)le64_to_cpu(cfg->phy_type_high));
-	ice_debug(hw, ICE_DBG_LINK, "caps = 0x%x\n", cfg->caps);
-	ice_debug(hw, ICE_DBG_LINK, "low_power_ctrl = 0x%x\n",
+	ice_debug(hw, ICE_DBG_LINK, "	caps = 0x%x\n", cfg->caps);
+	ice_debug(hw, ICE_DBG_LINK, "	low_power_ctrl = 0x%x\n",
 		  cfg->low_power_ctrl);
-	ice_debug(hw, ICE_DBG_LINK, "eee_cap = 0x%x\n", cfg->eee_cap);
-	ice_debug(hw, ICE_DBG_LINK, "eeer_value = 0x%x\n", cfg->eeer_value);
-	ice_debug(hw, ICE_DBG_LINK, "link_fec_opt = 0x%x\n", cfg->link_fec_opt);
+	ice_debug(hw, ICE_DBG_LINK, "	eee_cap = 0x%x\n", cfg->eee_cap);
+	ice_debug(hw, ICE_DBG_LINK, "	eeer_value = 0x%x\n", cfg->eeer_value);
+	ice_debug(hw, ICE_DBG_LINK, "	link_fec_opt = 0x%x\n",
+		  cfg->link_fec_opt);
 
 	status = ice_aq_send_cmd(hw, &desc, cfg, sizeof(*cfg), cd);
 	if (hw->adminq.sq_last_status == ICE_AQ_RC_EMODE)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
