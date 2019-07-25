Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AB5756CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83542881A8;
	Thu, 25 Jul 2019 18:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZLmrG2PGO+L; Thu, 25 Jul 2019 18:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B4AC88193;
	Thu, 25 Jul 2019 18:22:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A472E1BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A18A2873DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WRM2tkJtz8Vj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA0DA8818F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:22:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="193897624"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 11:22:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 02:54:00 -0700
Message-Id: <20190725095401.24590-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S25 11/12] ice: Remove
 ice_dev_onetime_setup()
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

ice_dev_onetime_setup contains driver workarounds needed for
firmware limitations. These issues have now been resolved in newer
NVMs so remove the function.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 16 ----------------
 drivers/net/ethernet/intel/ice/ice_common.h |  2 --
 drivers/net/ethernet/intel/ice/ice_lib.c    |  1 -
 3 files changed, 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 302ad981129c..847ddd9a7449 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -42,20 +42,6 @@ static enum ice_status ice_set_mac_type(struct ice_hw *hw)
 	return 0;
 }
 
-/**
- * ice_dev_onetime_setup - Temporary HW/FW workarounds
- * @hw: pointer to the HW structure
- *
- * This function provides temporary workarounds for certain issues
- * that are expected to be fixed in the HW/FW.
- */
-void ice_dev_onetime_setup(struct ice_hw *hw)
-{
-#define MBX_PF_VT_PFALLOC	0x00231E80
-	/* set VFs per PF */
-	wr32(hw, MBX_PF_VT_PFALLOC, rd32(hw, PF_VT_PFALLOC_HIF));
-}
-
 /**
  * ice_clear_pf_cfg - Clear PF configuration
  * @hw: pointer to the hardware structure
@@ -837,8 +823,6 @@ enum ice_status ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_sched;
 
-	ice_dev_onetime_setup(hw);
-
 	/* Get MAC information */
 	/* A single port can report up to two (LAN and WoL) addresses */
 	mac_buf = devm_kcalloc(ice_hw_to_dev(hw), 2,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index e376d1eadba4..89b5125ad64c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -41,8 +41,6 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 void ice_clear_pxe_mode(struct ice_hw *hw);
 enum ice_status ice_get_caps(struct ice_hw *hw);
 
-void ice_dev_onetime_setup(struct ice_hw *hw);
-
 enum ice_status
 ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		  u32 rxq_index);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index df28597f2e52..751f9f1f6367 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2978,7 +2978,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_arrays(vsi);
-	ice_dev_onetime_setup(&pf->hw);
 	if (vsi->req_txq || vsi->req_rxq)
 		ice_vsi_put_qs(vsi);
 	if (vsi->type == ICE_VSI_VF)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
