Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5DC3757ED
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16E5760DF2;
	Thu,  6 May 2021 15:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PLhN5QjIJeRu; Thu,  6 May 2021 15:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C83E6600D4;
	Thu,  6 May 2021 15:51:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23FE21C1187
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5991600D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SeeufqjZJ6Hq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 897C160811
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:39 +0000 (UTC)
IronPort-SDR: GL8+EJGC4nvIrLoqERH4a7CyS+OdkPOScF38WtCWEHq+bVaDhTe23xOXiT/K+5tr2Ng6jUaRpC
 FIoo4xvIFtXQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389325"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389325"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:36 -0700
IronPort-SDR: mPX0eI1CAs0EXSqwBSxhhpkphYQrEuRmOER1SLaDqa8JnP3PgMWESKN7JmU6dgLJ85GAwaiVRB
 vYSV9kPG46Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369483"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:35 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:40:01 -0700
Message-Id: <20210506154008.12880-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 06/13] ice: Detect and report
 unsupported module power levels
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

Determine whether an unsupported power configuration is preventing link
establishment by storing and checking the link_cfg_err_byte. Print error
messages when module power levels are unsupported. Also add a new flag
bit to prevent spamming said error messages.

Co-developed-by: Jeb Cramer <jeb.j.cramer@intel.com>
Signed-off-by: Jeb Cramer <jeb.j.cramer@intel.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++-
 drivers/net/ethernet/intel/ice/ice_common.c   |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 40 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
 5 files changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f78466fa7150..a36e42a4348b 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -382,6 +382,7 @@ enum ice_pf_flags {
 	ICE_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
 	ICE_FLAG_NO_MEDIA,
 	ICE_FLAG_FW_LLDP_AGENT,
+	ICE_FLAG_MOD_POWER_UNSUPPORTED,
 	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds RTNL lock */
 	ICE_FLAG_LEGACY_RX,
 	ICE_FLAG_VF_TRUE_PROMISC_ENA,
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 5cdfe406af84..e760f48ed07b 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1122,7 +1122,9 @@ struct ice_aqc_get_link_status_data {
 #define ICE_AQ_LINK_TOPO_UNDRUTIL_PRT	BIT(5)
 #define ICE_AQ_LINK_TOPO_UNDRUTIL_MEDIA	BIT(6)
 #define ICE_AQ_LINK_TOPO_UNSUPP_MEDIA	BIT(7)
-	u8 reserved1;
+	u8 link_cfg_err;
+#define ICE_AQ_LINK_MODULE_POWER_UNSUPPORTED	BIT(5)
+#define ICE_AQ_LINK_INVAL_MAX_POWER_LIMIT	BIT(7)
 	u8 link_info;
 #define ICE_AQ_LINK_UP			BIT(0)	/* Link Status */
 #define ICE_AQ_LINK_FAULT		BIT(1)
@@ -1165,7 +1167,7 @@ struct ice_aqc_get_link_status_data {
 #define ICE_AQ_CFG_PACING_TYPE_FIXED	ICE_AQ_CFG_PACING_TYPE_M
 	/* External Device Power Ability */
 	u8 power_desc;
-#define ICE_AQ_PWR_CLASS_M		0x3
+#define ICE_AQ_PWR_CLASS_M		0x3F
 #define ICE_AQ_LINK_PWR_BASET_LOW_HIGH	0
 #define ICE_AQ_LINK_PWR_BASET_HIGH	1
 #define ICE_AQ_LINK_PWR_QSFP_CLASS_1	0
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e93b1e40f627..a327371e78b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -424,6 +424,7 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	li->phy_type_high = le64_to_cpu(link_data.phy_type_high);
 	*hw_media_type = ice_get_media_type(pi);
 	li->link_info = link_data.link_info;
+	li->link_cfg_err = link_data.link_cfg_err;
 	li->an_info = link_data.an_info;
 	li->ext_info = link_data.ext_info;
 	li->max_frame_size = le16_to_cpu(link_data.max_frame_size);
@@ -454,6 +455,7 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 		  (unsigned long long)li->phy_type_high);
 	ice_debug(hw, ICE_DBG_LINK, "	media_type = 0x%x\n", *hw_media_type);
 	ice_debug(hw, ICE_DBG_LINK, "	link_info = 0x%x\n", li->link_info);
+	ice_debug(hw, ICE_DBG_LINK, "	link_cfg_err = 0x%x\n", li->link_cfg_err);
 	ice_debug(hw, ICE_DBG_LINK, "	an_info = 0x%x\n", li->an_info);
 	ice_debug(hw, ICE_DBG_LINK, "	ext_info = 0x%x\n", li->ext_info);
 	ice_debug(hw, ICE_DBG_LINK, "	fec_info = 0x%x\n", li->fec_info);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a7c359335cb0..0bf3b9bd9ef8 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -875,6 +875,38 @@ static void ice_set_dflt_mib(struct ice_pf *pf)
 	kfree(lldpmib);
 }
 
+/**
+ * ice_check_module_power
+ * @pf: pointer to PF struct
+ * @link_cfg_err: bitmap from the link info structure
+ *
+ * check module power level returned by a previous call to aq_get_link_info
+ * and print error messages if module power level is not supported
+ */
+static void ice_check_module_power(struct ice_pf *pf, u8 link_cfg_err)
+{
+	/* if module power level is supported, clear the flag */
+	if (!(link_cfg_err & (ICE_AQ_LINK_INVAL_MAX_POWER_LIMIT |
+			      ICE_AQ_LINK_MODULE_POWER_UNSUPPORTED))) {
+		clear_bit(ICE_FLAG_MOD_POWER_UNSUPPORTED, pf->flags);
+		return;
+	}
+
+	/* if ICE_FLAG_MOD_POWER_UNSUPPORTED was previously set and the
+	 * above block didn't clear this bit, there's nothing to do
+	 */
+	if (test_bit(ICE_FLAG_MOD_POWER_UNSUPPORTED, pf->flags))
+		return;
+
+	if (link_cfg_err & ICE_AQ_LINK_INVAL_MAX_POWER_LIMIT) {
+		dev_err(ice_pf_to_dev(pf), "The installed module is incompatible with the device's NVM image. Cannot start link\n");
+		set_bit(ICE_FLAG_MOD_POWER_UNSUPPORTED, pf->flags);
+	} else if (link_cfg_err & ICE_AQ_LINK_MODULE_POWER_UNSUPPORTED) {
+		dev_err(ice_pf_to_dev(pf), "The module's power requirements exceed the device's power supply. Cannot start link\n");
+		set_bit(ICE_FLAG_MOD_POWER_UNSUPPORTED, pf->flags);
+	}
+}
+
 /**
  * ice_link_event - process the link event
  * @pf: PF that the link event is associated with
@@ -910,6 +942,8 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 			pi->lport, ice_stat_str(status),
 			ice_aq_str(pi->hw->adminq.sq_last_status));
 
+	ice_check_module_power(pf, pi->phy.link_info.link_cfg_err);
+
 	/* Check if the link state is up after updating link info, and treat
 	 * this event as an UP event since the link is actually UP now.
 	 */
@@ -2024,6 +2058,8 @@ static void ice_check_media_subtask(struct ice_pf *pf)
 	if (err)
 		return;
 
+	ice_check_module_power(pf, pi->phy.link_info.link_cfg_err);
+
 	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
 		if (!test_bit(ICE_PHY_INIT_COMPLETE, pf->state))
 			ice_init_phy_user_cfg(pi);
@@ -4225,6 +4261,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	ice_init_link_dflt_override(pf->hw.port_info);
 
+	ice_check_module_power(pf, pf->hw.port_info->phy.link_info.link_cfg_err);
+
 	/* if media available, initialize PHY settings */
 	if (pf->hw.port_info->phy.link_info.link_info &
 	    ICE_AQ_MEDIA_AVAILABLE) {
@@ -6847,6 +6885,8 @@ int ice_open_internal(struct net_device *netdev)
 		return -EIO;
 	}
 
+	ice_check_module_power(pf, pi->phy.link_info.link_cfg_err);
+
 	/* Set PHY if there is media, otherwise, turn off PHY */
 	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
 		clear_bit(ICE_FLAG_NO_MEDIA, pf->flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index a925273c2cca..f322c8415a2c 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -146,6 +146,7 @@ struct ice_link_status {
 	u16 max_frame_size;
 	u16 link_speed;
 	u16 req_speeds;
+	u8 link_cfg_err;
 	u8 lse_ena;	/* Link Status Event notification */
 	u8 link_info;
 	u8 an_info;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
