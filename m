Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B18486DAF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2019 01:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2916E87697;
	Thu,  8 Aug 2019 23:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P+cKQUGLiRvt; Thu,  8 Aug 2019 23:08:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5954C8761F;
	Thu,  8 Aug 2019 23:08:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C9071BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 67E938833E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ilhMIsKU3Gtb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 23:08:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6B42882FD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 16:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="169141826"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 16:08:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2019 07:39:24 -0700
Message-Id: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S27 01/15] ice: Limit Max TCs on devices
 with more than 4 ports
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

From: Usha Ketineni <usha.k.ketineni@intel.com>

This patch limits the max TCs set by the driver to the value provided by
the firmware as per the capabilities of the device. Otherwise, hardcoding
to 8 TC max would fail the device configurations with more than 4 ports.

Signed-off-by: Usha Ketineni <usha.k.ketineni@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c     | 12 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c    | 10 ++++++++--
 drivers/net/ethernet/intel/ice/ice_type.h       |  3 +++
 4 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 8ebc695171b6..4da0cde9695b 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -91,6 +91,7 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_SRIOV				0x0012
 #define ICE_AQC_CAPS_VF					0x0013
 #define ICE_AQC_CAPS_VSI				0x0017
+#define ICE_AQC_CAPS_DCB				0x0018
 #define ICE_AQC_CAPS_RSS				0x0040
 #define ICE_AQC_CAPS_RXQS				0x0041
 #define ICE_AQC_CAPS_TXQS				0x0042
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 0471698d9499..0d191716f97d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1578,6 +1578,18 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
 					  prefix, func_p->guar_num_vsi);
 			}
 			break;
+		case ICE_AQC_CAPS_DCB:
+			caps->dcb = (number == 1);
+			caps->active_tc_bitmap = logical_id;
+			caps->maxtc = phys_id;
+			ice_debug(hw, ICE_DBG_INIT,
+				  "%s: DCB = %d\n", prefix, caps->dcb);
+			ice_debug(hw, ICE_DBG_INIT,
+				  "%s: active TC bitmap = %d\n", prefix,
+				  caps->active_tc_bitmap);
+			ice_debug(hw, ICE_DBG_INIT,
+				  "%s: TC max = %d\n", prefix, caps->maxtc);
+			break;
 		case ICE_AQC_CAPS_RSS:
 			caps->rss_table_size = number;
 			caps->rss_table_entry_width = logical_id;
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 34c9d1e01529..e65b87f26828 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -418,7 +418,7 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool locked)
 	memset(&pi->local_dcbx_cfg, 0, sizeof(*dcbcfg));
 
 	dcbcfg->etscfg.willing = 1;
-	dcbcfg->etscfg.maxtcs = 8;
+	dcbcfg->etscfg.maxtcs = hw->func_caps.common_cap.maxtc;
 	dcbcfg->etscfg.tcbwtable[0] = 100;
 	dcbcfg->etscfg.tsatable[0] = ICE_IEEE_TSA_ETS;
 
@@ -427,7 +427,7 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool locked)
 	dcbcfg->etsrec.willing = 0;
 
 	dcbcfg->pfc.willing = 1;
-	dcbcfg->pfc.pfccap = IEEE_8021QAZ_MAX_TCS;
+	dcbcfg->pfc.pfccap = hw->func_caps.common_cap.maxtc;
 
 	dcbcfg->numapps = 1;
 	dcbcfg->app[0].selector = ICE_APP_SEL_ETHTYPE;
@@ -459,6 +459,9 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 	err = ice_init_dcb(hw);
 	if (err) {
 		/* FW LLDP is disabled, activate SW DCBX/LLDP mode */
+		dev_info(&pf->pdev->dev,
+			 "DCB is enabled in the hardware, max number of TCs supported on this port are %d\n",
+			 pf->hw.func_caps.common_cap.maxtc);
 		dev_info(&pf->pdev->dev,
 			 "FW LLDP is disabled, DCBx/LLDP in SW mode.\n");
 		port_info->is_sw_lldp = true;
@@ -489,6 +492,9 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 	if (err)
 		goto dcb_init_err;
 
+	dev_info(&pf->pdev->dev,
+		 "DCB is enabled in the hardware, max number of TCs supported on this port are %d\n",
+		 pf->hw.func_caps.common_cap.maxtc);
 	dev_info(&pf->pdev->dev, "DCBX offload supported\n");
 	return err;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 40b028e73234..4501d50a7dcc 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -139,6 +139,9 @@ struct ice_phy_info {
 /* Common HW capabilities for SW use */
 struct ice_hw_common_caps {
 	u32 valid_functions;
+	/* DCB capabilities */
+	u32 active_tc_bitmap;
+	u32 maxtc;
 
 	/* Tx/Rx queues */
 	u16 num_rxq;		/* Number/Total Rx queues */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
