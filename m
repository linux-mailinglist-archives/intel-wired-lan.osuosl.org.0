Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1235315CD4D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 22:31:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DDA287EE8;
	Thu, 13 Feb 2020 21:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eq8xbwcSQVdh; Thu, 13 Feb 2020 21:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9774987F44;
	Thu, 13 Feb 2020 21:31:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1BA71BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ACF1086E1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WXxKAJ44Zxb3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 21:31:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A344686D05
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:31:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="313859255"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 13 Feb 2020 13:31:20 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	pmenzel@molgen.mpg.de
Date: Thu, 13 Feb 2020 13:30:59 -0800
Message-Id: <20200213213059.33939-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 v2 01/15] ice: Validate config for SW
 DCB map
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

From: Avinash Dayanand <avinash.dayanand@intel.com>

Validate the inputs for SW DCB config received either via lldptool or pcap
file. And don't apply DCB for bad bandwidth inputs. Without this patch, any
config having bad inputs will cause the loss of link making PF unusable
even after driver reload. Recoverable only via system reboot.

Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v2:
- Allocate all bandwidth to TC0 if no TCs requested any bandwidth
- Remove zero bandwidth check on non-TC0
- Add message about reason for error and return from error immediately in
  ice_dcb_bwchk()
- Change a comment
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 40 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c  |  6 +++
 3 files changed, 47 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 017b71d8e894..175b08219f7a 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -169,6 +169,43 @@ ice_peer_prep_tc_change(struct ice_peer_dev_int *peer_dev_int,
 	return 0;
 }
 
+/**
+ * ice_dcb_bwchk - check if ETS bandwidth input parameters are correct
+ * @pf: pointer to the PF struct
+ * @dcbcfg: pointer to DCB config structure
+ */
+int ice_dcb_bwchk(struct ice_pf *pf, struct ice_dcbx_cfg *dcbcfg)
+{
+	struct ice_dcb_ets_cfg *etscfg = &dcbcfg->etscfg;
+	u8 num_tc, total_bw = 0;
+	int i;
+
+	/* returns number of contigous TCs and 1 TC for non-contigous TCs,
+	 * since at least 1 TC has to be configured
+	 */
+	num_tc = ice_dcb_get_num_tc(dcbcfg);
+
+	/* no bandwidth checks required if there's only one TC, so assign
+	 * all bandwidth to TC0 and return
+	 */
+	if (num_tc == 1) {
+		etscfg->tcbwtable[0] = ICE_TC_MAX_BW;
+		return 0;
+	}
+
+	for (i = 0; i < num_tc; i++)
+		total_bw += etscfg->tcbwtable[i];
+
+	if (!total_bw) {
+		etscfg->tcbwtable[0] = ICE_TC_MAX_BW;
+	} else if (total_bw != ICE_TC_MAX_BW) {
+		dev_err(ice_pf_to_dev(pf), "Invalid config, total bandwidth must equal 100\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /**
  * ice_pf_dcb_cfg - Apply new DCB configuration
  * @pf: pointer to the PF struct
@@ -206,6 +243,9 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	/* Notify capable peers about impending change to TCs */
 	ice_for_each_peer(pf, NULL, ice_peer_prep_tc_change);
 
+	if (ice_dcb_bwchk(pf, new_cfg))
+		return -EINVAL;
+
 	/* Store old config in case FW config fails */
 	old_cfg = kmemdup(curr_cfg, sizeof(*old_cfg), GFP_KERNEL);
 	if (!old_cfg)
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index bb53edf462ba..11457b6ba145 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -20,6 +20,7 @@ u8 ice_dcb_get_num_tc(struct ice_dcbx_cfg *dcbcfg);
 u8 ice_dcb_get_tc(struct ice_vsi *vsi, int queue_index);
 int
 ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked);
+int ice_dcb_bwchk(struct ice_pf *pf, struct ice_dcbx_cfg *dcbcfg);
 void ice_pf_dcb_recfg(struct ice_pf *pf);
 void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi);
 int ice_init_pf_dcb(struct ice_pf *pf, bool locked);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index b61aba428adb..c572aa5c28e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -95,6 +95,11 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 		new_cfg->etsrec.prio_table[i] = ets->reco_prio_tc[i];
 	}
 
+	if (ice_dcb_bwchk(pf, new_cfg)) {
+		err = -EINVAL;
+		goto ets_out;
+	}
+
 	/* max_tc is a 1-8 value count of number of TC's, not a 0-7 value
 	 * for the TC's index number.  Add one to value if not zero, and
 	 * for zero set it to the FW's default value
@@ -119,6 +124,7 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 	if (err == ICE_DCB_NO_HW_CHG)
 		err = ICE_DCB_HW_CHG_RST;
 
+ets_out:
 	mutex_unlock(&pf->tc_mutex);
 	return err;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
