Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DC2D1BDD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:40:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3070887C5A;
	Wed,  9 Oct 2019 22:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yR8-4db2fsGN; Wed,  9 Oct 2019 22:40:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F4FD869EC;
	Wed,  9 Oct 2019 22:40:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14F5F1BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D97C883B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kWtapFg-5z7H for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE0FD88390
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:40:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="197052255"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 09 Oct 2019 15:40:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:43 -0700
Message-Id: <20191009140953.14087-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
References: <20191009140953.14087-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S31 05/15] ice: handle DCBx non-contiguous
 TC request
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

If DCBx request non-contiguous TCs, then the driver will configure default
traffic class (TC0). This is done to prevent Tx hang since the driver
currently does not support non-contiguous TC.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 161 +++++++++++++------
 1 file changed, 112 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index a308f9d2f74b..ba1573d29885 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -3,6 +3,8 @@
 
 #include "ice_dcb_lib.h"
 
+static void ice_pf_dcb_recfg(struct ice_pf *pf);
+
 /**
  * ice_vsi_cfg_netdev_tc - Setup the netdev TC configuration
  * @vsi: the VSI being configured
@@ -137,52 +139,6 @@ void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi)
 	}
 }
 
-/**
- * ice_pf_dcb_recfg - Reconfigure all VEBs and VSIs
- * @pf: pointer to the PF struct
- *
- * Assumed caller has already disabled all VSIs before
- * calling this function. Reconfiguring DCB based on
- * local_dcbx_cfg.
- */
-static void ice_pf_dcb_recfg(struct ice_pf *pf)
-{
-	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->local_dcbx_cfg;
-	struct iidc_event *event;
-	u8 tc_map = 0;
-	int v, ret;
-
-	/* Update each VSI */
-	ice_for_each_vsi(pf, v) {
-		if (!pf->vsi[v])
-			continue;
-
-		if (pf->vsi[v]->type == ICE_VSI_PF)
-			tc_map = ice_dcb_get_ena_tc(dcbcfg);
-		else
-			tc_map = ICE_DFLT_TRAFFIC_CLASS;
-
-		ret = ice_vsi_cfg_tc(pf->vsi[v], tc_map);
-		if (ret) {
-			dev_err(&pf->pdev->dev,
-				"Failed to config TC for VSI index: %d\n",
-				pf->vsi[v]->idx);
-			continue;
-		}
-
-		ice_vsi_map_rings_to_vectors(pf->vsi[v]);
-	}
-	event = kzalloc(sizeof(*event), GFP_KERNEL);
-	if (!event)
-		return;
-
-	set_bit(IIDC_EVENT_TC_CHANGE, event->type);
-	event->reporter = NULL;
-	ice_setup_dcb_qos_info(pf, &event->info.port_qos);
-	ice_for_each_peer(pf, event, ice_peer_check_for_reg);
-	kfree(event);
-}
-
 /**
  * ice_peer_prep_tc_change - Pre-notify RDMA Peer in blocking call of TC change
  * @peer_dev_int: ptr to peer device internal struct
@@ -471,9 +427,10 @@ static int ice_dcb_init_cfg(struct ice_pf *pf, bool locked)
 /**
  * ice_dcb_sw_default_config - Apply a default DCB config
  * @pf: PF to apply config to
+ * @ets_willing: configure ets willing
  * @locked: was this function called with RTNL held
  */
-static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool locked)
+static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
 {
 	struct ice_aqc_port_ets_elem buf = { 0 };
 	struct ice_dcbx_cfg *dcbcfg;
@@ -488,7 +445,7 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool locked)
 	memset(dcbcfg, 0, sizeof(*dcbcfg));
 	memset(&pi->local_dcbx_cfg, 0, sizeof(*dcbcfg));
 
-	dcbcfg->etscfg.willing = 1;
+	dcbcfg->etscfg.willing = ets_willing ? 1 : 0;
 	dcbcfg->etscfg.maxtcs = hw->func_caps.common_cap.maxtc;
 	dcbcfg->etscfg.tcbwtable[0] = 100;
 	dcbcfg->etscfg.tsatable[0] = ICE_IEEE_TSA_ETS;
@@ -513,6 +470,112 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool locked)
 	return ice_query_port_ets(pi, &buf, sizeof(buf), NULL);
 }
 
+/**
+ * ice_dcb_tc_contig - Check that TCs are contiguous
+ * @prio_table: pointer to priority table
+ *
+ * Check if TCs begin with TC0 and are contiguous
+ */
+static bool ice_dcb_tc_contig(u8 *prio_table)
+{
+	u8 max_tc = 0;
+	int i;
+
+	for (i = 0; i < CEE_DCBX_MAX_PRIO; i++) {
+		u8 cur_tc = prio_table[i];
+
+		if (cur_tc > max_tc)
+			return false;
+		else if (cur_tc == max_tc)
+			max_tc++;
+	}
+
+	return true;
+}
+
+/**
+ * ice_dcb_noncontig_cfg - Configure DCB for non-contiguous TCs
+ * @pf: pointer to the PF struct
+ *
+ * If non-contiguous TCs, then configure SW DCB with TC0 and ETS non-willing
+ */
+static int ice_dcb_noncontig_cfg(struct ice_pf *pf)
+{
+	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->local_dcbx_cfg;
+	int ret;
+
+	/* Configure SW DCB default with ETS non-willing */
+	ret = ice_dcb_sw_dflt_cfg(pf, false, true);
+	if (ret) {
+		dev_err(&pf->pdev->dev,
+			"Failed to set local DCB config %d\n", ret);
+		return ret;
+	}
+
+	/* Reconfigure with ETS willing so that FW will send LLDP MIB event */
+	dcbcfg->etscfg.willing = 1;
+	ret = ice_set_dcb_cfg(pf->hw.port_info);
+	if (ret)
+		dev_err(&pf->pdev->dev, "Failed to set DCB to unwilling\n");
+
+	return ret;
+}
+
+/**
+ * ice_pf_dcb_recfg - Reconfigure all VEBs and VSIs
+ * @pf: pointer to the PF struct
+ *
+ * Assumed caller has already disabled all VSIs before
+ * calling this function. Reconfiguring DCB based on
+ * local_dcbx_cfg.
+ */
+static void ice_pf_dcb_recfg(struct ice_pf *pf)
+{
+	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->local_dcbx_cfg;
+	struct iidc_event *event;
+	u8 tc_map = 0;
+	int v, ret;
+
+	/* Update each VSI */
+	ice_for_each_vsi(pf, v) {
+		if (!pf->vsi[v])
+			continue;
+
+		if (pf->vsi[v]->type == ICE_VSI_PF) {
+			tc_map = ice_dcb_get_ena_tc(dcbcfg);
+
+			/* If DCBX request non-contiguous TC, then configure
+			 * default TC
+			 */
+			if (!ice_dcb_tc_contig(dcbcfg->etscfg.prio_table)) {
+				tc_map = ICE_DFLT_TRAFFIC_CLASS;
+				ice_dcb_noncontig_cfg(pf);
+			}
+		} else {
+			tc_map = ICE_DFLT_TRAFFIC_CLASS;
+		}
+
+		ret = ice_vsi_cfg_tc(pf->vsi[v], tc_map);
+		if (ret) {
+			dev_err(&pf->pdev->dev,
+				"Failed to config TC for VSI index: %d\n",
+				pf->vsi[v]->idx);
+			continue;
+		}
+
+		ice_vsi_map_rings_to_vectors(pf->vsi[v]);
+	}
+	event = kzalloc(sizeof(*event), GFP_KERNEL);
+	if (!event)
+		return;
+
+	set_bit(IIDC_EVENT_TC_CHANGE, event->type);
+	event->reporter = NULL;
+	ice_setup_dcb_qos_info(pf, &event->info.port_qos);
+	ice_for_each_peer(pf, event, ice_peer_check_for_reg);
+	kfree(event);
+}
+
 /**
  * ice_init_pf_dcb - initialize DCB for a PF
  * @pf: PF to initialize DCB for
@@ -541,7 +604,7 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 		dev_info(&pf->pdev->dev,
 			 "FW LLDP is disabled, DCBx/LLDP in SW mode.\n");
 		clear_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
-		err = ice_dcb_sw_dflt_cfg(pf, locked);
+		err = ice_dcb_sw_dflt_cfg(pf, true, locked);
 		if (err) {
 			dev_err(&pf->pdev->dev,
 				"Failed to set local DCB config %d\n", err);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
