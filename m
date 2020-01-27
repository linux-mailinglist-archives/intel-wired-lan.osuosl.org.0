Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E317E14A8FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2020 18:32:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96B9885142;
	Mon, 27 Jan 2020 17:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q7Aebm2wJFNc; Mon, 27 Jan 2020 17:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3385685187;
	Mon, 27 Jan 2020 17:32:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F7631BF283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6947284B23
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rWf6-VEVdkaV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 17:32:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 43E1B85087
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 17:32:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 09:32:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="427350637"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jan 2020 09:32:09 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Jan 2020 00:59:13 -0800
Message-Id: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 01/15] ice: Validate config for SW DCB
 map
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
file. And don't apply DCB for bad bandwidth inputs or non-contiguous TCs.
Without this patch, any config having bad inputs will cause the loss of
link making PF unusable even after driver reload. Recoverable only via
system reboot.

Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 55 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c  |  7 +++
 3 files changed, 63 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 0f4ca813a7ab..bd361212921c 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -169,6 +169,56 @@ ice_peer_prep_tc_change(struct ice_peer_dev_int *peer_dev_int,
 	return 0;
 }
 
+/**
+ * ice_dcb_bwchk - check if ETS bandwidth input parameters are correct
+ * @dcbcfg: pointer to DCB config structure
+ */
+int ice_dcb_bwchk(struct ice_dcbx_cfg *dcbcfg)
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
+	/* no bandwidth checks required if there's only one TC and assign
+	 * all bandwidth to it i.e. to TC0 and return
+	 */
+	if (num_tc == 1) {
+		etscfg->tcbwtable[0] = ICE_TC_MAX_BW;
+		return 0;
+	}
+	/* There are few rules with which TC bandwidth can be applied for any TC
+	 * with a UP mapped to it.
+	 *	1. All TCs have zero BW - Valid
+	 *	   ex:  tcbw=0,0,0
+	 *	2. First few non-zero and rest zero BW - Valid
+	 *	   ex:  tcbw=100,0,0
+	 *	3. Zero BW in between 2 non-zero BW TCs - Invalid
+	 *	   ex:  tcbw=25,0,75
+	 */
+	for (i = 0; i < num_tc; i++) {
+		/* don't allow zero BW for TCs other than TC0 */
+		if (i && !etscfg->tcbwtable[i])
+			goto err;
+
+		if (etscfg->tsatable[i] == ICE_IEEE_TSA_ETS)
+			total_bw += etscfg->tcbwtable[i];
+	}
+
+	 /* total bandwidth should be equal to 100 */
+	if (total_bw != ICE_TC_MAX_BW)
+		goto err;
+
+	return 0;
+
+err:
+	return -EINVAL;
+}
+
 /**
  * ice_pf_dcb_cfg - Apply new DCB configuration
  * @pf: pointer to the PF struct
@@ -206,6 +256,11 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	/* Notify capable peers about impending change to TCs */
 	ice_for_each_peer(pf, NULL, ice_peer_prep_tc_change);
 
+	if (ice_dcb_bwchk(new_cfg)) {
+		dev_err(dev, "Invalid config, not applying DCB\n");
+		return -EINVAL;
+	}
+
 	/* Store old config in case FW config fails */
 	old_cfg = kmemdup(curr_cfg, sizeof(*old_cfg), GFP_KERNEL);
 	if (!old_cfg)
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index bb53edf462ba..2b900da27f57 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -20,6 +20,7 @@ u8 ice_dcb_get_num_tc(struct ice_dcbx_cfg *dcbcfg);
 u8 ice_dcb_get_tc(struct ice_vsi *vsi, int queue_index);
 int
 ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked);
+int ice_dcb_bwchk(struct ice_dcbx_cfg *dcbcfg);
 void ice_pf_dcb_recfg(struct ice_pf *pf);
 void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi);
 int ice_init_pf_dcb(struct ice_pf *pf, bool locked);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index b61aba428adb..a45e8abef8f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -95,6 +95,12 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 		new_cfg->etsrec.prio_table[i] = ets->reco_prio_tc[i];
 	}
 
+	if (ice_dcb_bwchk(new_cfg)) {
+		netdev_err(netdev, "Invalid config, not applying DCB\n");
+		err = -EINVAL;
+		goto ets_out;
+	}
+
 	/* max_tc is a 1-8 value count of number of TC's, not a 0-7 value
 	 * for the TC's index number.  Add one to value if not zero, and
 	 * for zero set it to the FW's default value
@@ -119,6 +125,7 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
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
