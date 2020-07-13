Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E3321E1BE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 118748A116;
	Mon, 13 Jul 2020 20:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L4W7LMm1tkmF; Mon, 13 Jul 2020 20:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D21148A0F6;
	Mon, 13 Jul 2020 20:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 897C71BF973
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86876888F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zkr5x0V7Vxk8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 063E188995
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
IronPort-SDR: fVaXinhGCngx1vPsvbRWVLdemLwM4zyvZAL7iI2+tho+t1MLauehMovs0VZ9W6b81KtrPPslhX
 ytyLgQ1cCDNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545918"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545918"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:09 -0700
IronPort-SDR: fHUlgKehIPkZQ5rZCU++63tiV4Wgt7WwVgYTc35E1ljXDuBTE4rv0KcXp+BX9jVy25KFMeAutR
 jxglbj0akdpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526692"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:14 -0700
Message-Id: <20200713205318.32425-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 11/15] ice: Allow all VLANs in safe
 mode
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

From: Brett Creeley <brett.creeley@intel.com>

Currently the PF VSI's context parameters are left in a bad state when
going into safe mode. This is causing VLAN traffic to not pass. Fix this
by configuring the PF VSI to allow all VLAN tagged traffic.

Also, remove redundant comment explaining the safe mode flow in
ice_probe().

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 59 ++++++++++++++++++++++-
 1 file changed, 57 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a7b6502f1b4e..e6d758aa9a2f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3438,6 +3438,60 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx)
 	return err;
 }
 
+/**
+ * ice_set_safe_mode_vlan_cfg - configure PF VSI to allow all VLANs in safe mode
+ * @pf: PF to configure
+ *
+ * No VLAN offloads/filtering are advertised in safe mode so make sure the PF
+ * VSI can still Tx/Rx VLAN tagged packets.
+ */
+static void ice_set_safe_mode_vlan_cfg(struct ice_pf *pf)
+{
+	struct ice_vsi *vsi = ice_get_main_vsi(pf);
+	struct ice_vsi_ctx *ctxt;
+	enum ice_status status;
+	struct ice_hw *hw;
+
+	if (!vsi)
+		return;
+
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
+	if (!ctxt)
+		return;
+
+	hw = &pf->hw;
+	ctxt->info = vsi->info;
+
+	ctxt->info.valid_sections =
+		cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID |
+			    ICE_AQ_VSI_PROP_SECURITY_VALID |
+			    ICE_AQ_VSI_PROP_SW_VALID);
+
+	/* disable VLAN anti-spoof */
+	ctxt->info.sec_flags &= ~(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
+				  ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
+
+	/* disable VLAN pruning and keep all other settings */
+	ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
+
+	/* allow all VLANs on Tx and don't strip on Rx */
+	ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_MODE_ALL |
+		ICE_AQ_VSI_VLAN_EMOD_NOTHING;
+
+	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
+	if (status) {
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to update VSI for safe mode VLANs, err %s aq_err %s\n",
+			ice_stat_str(status),
+			ice_aq_str(hw->adminq.sq_last_status));
+	} else {
+		vsi->info.sec_flags = ctxt->info.sec_flags;
+		vsi->info.sw_flags2 = ctxt->info.sw_flags2;
+		vsi->info.vlan_flags = ctxt->info.vlan_flags;
+	}
+
+	kfree(ctxt);
+}
+
 /**
  * ice_log_pkg_init - log result of DDP package load
  * @hw: pointer to hardware info
@@ -3996,9 +4050,10 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	/* Disable WoL at init, wait for user to enable */
 	device_set_wakeup_enable(dev, false);
 
-	/* If no DDP driven features have to be setup, we are done with probe */
-	if (ice_is_safe_mode(pf))
+	if (ice_is_safe_mode(pf)) {
+		ice_set_safe_mode_vlan_cfg(pf);
 		goto probe_done;
+	}
 
 	/* initialize DDP driven features */
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
