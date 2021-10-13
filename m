Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B761B42C5D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 18:07:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E220406FD;
	Wed, 13 Oct 2021 16:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTaNO5M9ao42; Wed, 13 Oct 2021 16:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 294F8407F9;
	Wed, 13 Oct 2021 16:07:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0E051BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 16:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF27382479
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 16:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uq1Ew0aKrI3Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 16:06:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D235681B48
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 16:06:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227749616"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="227749616"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 09:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="717395611"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 13 Oct 2021 09:05:00 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 13 Oct 2021 09:02:19 -0700
Message-Id: <20211013160219.322051-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] ice: Add support to print error on PHY
 FW load failure
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

Some devices have support for loading the PHY FW and in some cases this
can fail. When this fails, the FW will set the corresponding bit in the
link info structure. Also, the FW will send a link event if the correct
link event mask bit is set. Add support for printing an error message
when the PHY FW load fails during any link configuration flow and the
link event flow.

Since ice_check_module_power() is already doing something very similar
add a new function ice_check_link_cfg_err() so any failures reported in
the link info's link_cfg_err member can be printed in this one function.

Also, add the new ICE_FLAG_PHY_FW_LOAD_FAILED bit to the PF's flags so
we don't constantly print this error message during link polling if the
value never changed.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
v2: Use correct bit for checking link_cfg_err

 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 49 +++++++++++++++++--
 3 files changed, 47 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 6c0bf0f41a4c..5b71b52f9a3d 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -478,6 +478,7 @@ enum ice_pf_flags {
 	ICE_FLAG_NO_MEDIA,
 	ICE_FLAG_FW_LLDP_AGENT,
 	ICE_FLAG_MOD_POWER_UNSUPPORTED,
+	ICE_FLAG_PHY_FW_LOAD_FAILED,
 	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds RTNL lock */
 	ICE_FLAG_LEGACY_RX,
 	ICE_FLAG_VF_TRUE_PROMISC_ENA,
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index d79578f01d18..563d9335a720 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1187,6 +1187,7 @@ struct ice_aqc_get_link_status_data {
 #define ICE_AQ_LINK_TOPO_UNSUPP_MEDIA	BIT(7)
 	u8 link_cfg_err;
 #define ICE_AQ_LINK_MODULE_POWER_UNSUPPORTED	BIT(5)
+#define ICE_AQ_LINK_EXTERNAL_PHY_LOAD_FAILURE	BIT(6)
 #define ICE_AQ_LINK_INVAL_MAX_POWER_LIMIT	BIT(7)
 	u8 link_info;
 #define ICE_AQ_LINK_UP			BIT(0)	/* Link Status */
@@ -1270,6 +1271,7 @@ struct ice_aqc_set_event_mask {
 #define ICE_AQ_LINK_EVENT_AN_COMPLETED		BIT(7)
 #define ICE_AQ_LINK_EVENT_MODULE_QUAL_FAIL	BIT(8)
 #define ICE_AQ_LINK_EVENT_PORT_TX_SUSPENDED	BIT(9)
+#define ICE_AQ_LINK_EVENT_PHY_FW_LOAD_FAIL      BIT(12)
 	u8	reserved1[6];
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c70c954db8f6..3013f74591f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -944,6 +944,29 @@ static void ice_set_dflt_mib(struct ice_pf *pf)
 	kfree(lldpmib);
 }
 
+/**
+ * ice_check_phy_fw_load - check if PHY FW load failed
+ * @pf: pointer to PF struct
+ * @link_cfg_err: bitmap from the link info structure
+ *
+ * check if external PHY FW load failed and print an error message if it did
+ */
+static void ice_check_phy_fw_load(struct ice_pf *pf, u8 link_cfg_err)
+{
+	if (!(link_cfg_err & ICE_AQ_LINK_EXTERNAL_PHY_LOAD_FAILURE)) {
+		clear_bit(ICE_FLAG_PHY_FW_LOAD_FAILED, pf->flags);
+		return;
+	}
+
+	if (test_bit(ICE_FLAG_PHY_FW_LOAD_FAILED, pf->flags))
+		return;
+
+	if (link_cfg_err & ICE_AQ_LINK_EXTERNAL_PHY_LOAD_FAILURE) {
+		dev_err(ice_pf_to_dev(pf), "Device failed to load the FW for the external PHY. Please download and install the latest NVM for your device and try again\n");
+		set_bit(ICE_FLAG_PHY_FW_LOAD_FAILED, pf->flags);
+	}
+}
+
 /**
  * ice_check_module_power
  * @pf: pointer to PF struct
@@ -976,6 +999,20 @@ static void ice_check_module_power(struct ice_pf *pf, u8 link_cfg_err)
 	}
 }
 
+/**
+ * ice_check_link_cfg_err - check if link configuration failed
+ * @pf: pointer to the PF struct
+ * @link_cfg_err: bitmap from the link info structure
+ *
+ * print if any link configuration failure happens due to the value in the
+ * link_cfg_err parameter in the link info structure
+ */
+static void ice_check_link_cfg_err(struct ice_pf *pf, u8 link_cfg_err)
+{
+	ice_check_module_power(pf, link_cfg_err);
+	ice_check_phy_fw_load(pf, link_cfg_err);
+}
+
 /**
  * ice_link_event - process the link event
  * @pf: PF that the link event is associated with
@@ -1011,7 +1048,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 			pi->lport, status,
 			ice_aq_str(pi->hw->adminq.sq_last_status));
 
-	ice_check_module_power(pf, pi->phy.link_info.link_cfg_err);
+	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
 
 	/* Check if the link state is up after updating link info, and treat
 	 * this event as an UP event since the link is actually UP now.
@@ -1089,7 +1126,8 @@ static int ice_init_link_events(struct ice_port_info *pi)
 	u16 mask;
 
 	mask = ~((u16)(ICE_AQ_LINK_EVENT_UPDOWN | ICE_AQ_LINK_EVENT_MEDIA_NA |
-		       ICE_AQ_LINK_EVENT_MODULE_QUAL_FAIL));
+		       ICE_AQ_LINK_EVENT_MODULE_QUAL_FAIL |
+		       ICE_AQ_LINK_EVENT_PHY_FW_LOAD_FAIL));
 
 	if (ice_aq_set_event_mask(pi->hw, pi->lport, mask, NULL)) {
 		dev_dbg(ice_hw_to_dev(pi->hw), "Failed to set link event mask for port %d\n",
@@ -2151,7 +2189,7 @@ static void ice_check_media_subtask(struct ice_pf *pf)
 	if (err)
 		return;
 
-	ice_check_module_power(pf, pi->phy.link_info.link_cfg_err);
+	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
 
 	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
 		if (!test_bit(ICE_PHY_INIT_COMPLETE, pf->state))
@@ -4567,7 +4605,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	ice_init_link_dflt_override(pf->hw.port_info);
 
-	ice_check_module_power(pf, pf->hw.port_info->phy.link_info.link_cfg_err);
+	ice_check_link_cfg_err(pf,
+			       pf->hw.port_info->phy.link_info.link_cfg_err);
 
 	/* if media available, initialize PHY settings */
 	if (pf->hw.port_info->phy.link_info.link_info &
@@ -8286,7 +8325,7 @@ int ice_open_internal(struct net_device *netdev)
 		return err;
 	}
 
-	ice_check_module_power(pf, pi->phy.link_info.link_cfg_err);
+	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
 
 	/* Set PHY if there is media, otherwise, turn off PHY */
 	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
