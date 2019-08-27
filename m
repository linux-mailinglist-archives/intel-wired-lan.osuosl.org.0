Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EDD9F565
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 23:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F61787692;
	Tue, 27 Aug 2019 21:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mkMpN2k0dyxJ; Tue, 27 Aug 2019 21:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D52C886138;
	Tue, 27 Aug 2019 21:43:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6FE61BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E43432151F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppwP43AfYa-p for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 21:43:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id CD79E204BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 14:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="174703666"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2019 14:42:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2019 06:13:51 -0700
Message-Id: <20190827131354.12703-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
References: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S28 6/9] ice: Allow for delayed LLDP MIB
 change registration
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

From: Dave Ertman <david.m.ertman@intel.com>

Add an additional boolean parameter to the ice_init_dcb
function.  This boolean controls if the LLDP MIB change
events are registered for.  Also, add a new function
defined ice_cfg_lldp_mib_change.  The additional function
is necessary to be able to register for LLDP MIB change
events after calling ice_init_dcb.  The net effect of these
two changes is to allow a delayed registration for MIB change
events so that the driver is not accepting events before it
is ready for them.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c     | 39 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dcb.h     | 11 ++----
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c    |  2 +
 5 files changed, 51 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index c5ee8d930611..dd7efff121bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -60,7 +60,7 @@ ice_aq_get_lldp_mib(struct ice_hw *hw, u8 bridge_type, u8 mib_type, void *buf,
  * Enable or Disable posting of an event on ARQ when LLDP MIB
  * associated with the interface changes (0x0A01)
  */
-enum ice_status
+static enum ice_status
 ice_aq_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_update,
 			   struct ice_sq_cd *cd)
 {
@@ -943,10 +943,11 @@ enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi)
 /**
  * ice_init_dcb
  * @hw: pointer to the HW struct
+ * @enable_mib_change: enable MIB change event
  *
  * Update DCB configuration from the Firmware
  */
-enum ice_status ice_init_dcb(struct ice_hw *hw)
+enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
 {
 	struct ice_port_info *pi = hw->port_info;
 	enum ice_status ret = 0;
@@ -972,9 +973,39 @@ enum ice_status ice_init_dcb(struct ice_hw *hw)
 	}
 
 	/* Configure the LLDP MIB change event */
-	ret = ice_aq_cfg_lldp_mib_change(hw, true, NULL);
+	if (enable_mib_change) {
+		ret = ice_aq_cfg_lldp_mib_change(hw, true, NULL);
+		if (!ret)
+			pi->is_sw_lldp = false;
+	}
+
+	return ret;
+}
+
+/**
+ * ice_cfg_lldp_mib_change
+ * @hw: pointer to the HW struct
+ * @ena_mib: enable/disable MIB change event
+ *
+ * Configure (disable/enable) MIB
+ */
+enum ice_status ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib)
+{
+	struct ice_port_info *pi = hw->port_info;
+	enum ice_status ret;
+
+	if (!hw->func_caps.common_cap.dcb)
+		return ICE_ERR_NOT_SUPPORTED;
+
+	/* Get DCBX status */
+	pi->dcbx_status = ice_get_dcbx_status(hw);
+
+	if (pi->dcbx_status == ICE_DCBX_STATUS_DIS)
+		return ICE_ERR_NOT_READY;
+
+	ret = ice_aq_cfg_lldp_mib_change(hw, ena_mib, NULL);
 	if (!ret)
-		pi->is_sw_lldp = false;
+		pi->is_sw_lldp = !ena_mib;
 
 	return ret;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.h b/drivers/net/ethernet/intel/ice/ice_dcb.h
index 522e1452abe2..ee138f9bdc7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.h
@@ -125,7 +125,7 @@ ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
 		   struct ice_dcbx_cfg *dcbcfg);
 enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi);
 enum ice_status ice_set_dcb_cfg(struct ice_port_info *pi);
-enum ice_status ice_init_dcb(struct ice_hw *hw);
+enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change);
 enum ice_status
 ice_query_port_ets(struct ice_port_info *pi,
 		   struct ice_aqc_port_ets_elem *buf, u16 buf_size,
@@ -139,9 +139,7 @@ ice_aq_start_lldp(struct ice_hw *hw, bool persist, struct ice_sq_cd *cd);
 enum ice_status
 ice_aq_start_stop_dcbx(struct ice_hw *hw, bool start_dcbx_agent,
 		       bool *dcbx_agent_status, struct ice_sq_cd *cd);
-enum ice_status
-ice_aq_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_update,
-			   struct ice_sq_cd *cd);
+enum ice_status ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib);
 #else /* CONFIG_DCB */
 static inline enum ice_status
 ice_aq_stop_lldp(struct ice_hw __always_unused *hw,
@@ -172,9 +170,8 @@ ice_aq_start_stop_dcbx(struct ice_hw __always_unused *hw,
 }
 
 static inline enum ice_status
-ice_aq_cfg_lldp_mib_change(struct ice_hw __always_unused *hw,
-			   bool __always_unused ena_update,
-			   struct ice_sq_cd __always_unused *cd)
+ice_cfg_lldp_mib_change(struct ice_hw __always_unused *hw,
+			bool __always_unused ena_mib)
 {
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 20f440a64650..97c22d4aae1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -318,7 +318,7 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 		goto dcb_error;
 	}
 
-	ice_init_dcb(&pf->hw);
+	ice_init_dcb(&pf->hw, true);
 	if (pf->hw.port_info->dcbx_status == ICE_DCBX_STATUS_DIS)
 		pf->hw.port_info->is_sw_lldp = true;
 	else
@@ -451,7 +451,7 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 
 	port_info = hw->port_info;
 
-	err = ice_init_dcb(hw);
+	err = ice_init_dcb(hw, false);
 	if (err && !port_info->is_sw_lldp) {
 		dev_err(&pf->pdev->dev, "Error initializing DCB %d\n", err);
 		goto dcb_init_err;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ae9921b7de7b..d5db1426d484 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1206,8 +1206,8 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			enum ice_status status;
 
 			/* Disable FW LLDP engine */
-			status = ice_aq_cfg_lldp_mib_change(&pf->hw, false,
-							    NULL);
+			status = ice_cfg_lldp_mib_change(&pf->hw, false);
+
 			/* If unregistering for LLDP events fails, this is
 			 * not an error state, as there shouldn't be any
 			 * events to respond to.
@@ -1273,6 +1273,12 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			 * The FW LLDP engine will now be consuming them.
 			 */
 			ice_cfg_sw_lldp(vsi, false, false);
+
+			/* Register for MIB change events */
+			status = ice_cfg_lldp_mib_change(&pf->hw, true);
+			if (status)
+				dev_dbg(&pf->pdev->dev,
+					"Fail to enable MIB change events\n");
 		}
 	}
 	clear_bit(ICE_FLAG_ETHTOOL_CTXT, pf->flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8bb3b81876a9..2d92d8591a8a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2536,6 +2536,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		if (ice_init_pf_dcb(pf, false)) {
 			clear_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
 			clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
+		} else {
+			ice_cfg_lldp_mib_change(&pf->hw, true);
 		}
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
