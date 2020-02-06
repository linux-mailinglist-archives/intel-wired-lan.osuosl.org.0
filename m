Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC3A154A96
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2020 18:53:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A14987C30;
	Thu,  6 Feb 2020 17:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZ+biKlf7lhg; Thu,  6 Feb 2020 17:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF8D087BFE;
	Thu,  6 Feb 2020 17:53:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0145B1BF326
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F236D860F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NktXD-zH5_HE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F06786102
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 09:53:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="255160933"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 06 Feb 2020 09:53:07 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2020 01:20:03 -0800
Message-Id: <20200206092013.23388-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
References: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v3 05/15] ice: Remove
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
 drivers/net/ethernet/intel/ice/ice_common.c     | 16 ----------------
 drivers/net/ethernet/intel/ice/ice_common.h     |  2 --
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  1 -
 drivers/net/ethernet/intel/ice/ice_lib.c        |  1 -
 4 files changed, 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e0f9108e42f3..151bec82bc0c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -24,20 +24,6 @@ static enum ice_status ice_set_mac_type(struct ice_hw *hw)
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
@@ -763,8 +749,6 @@ enum ice_status ice_init_hw(struct ice_hw *hw)
 	if (status)
 		goto err_unroll_sched;
 
-	ice_dev_onetime_setup(hw);
-
 	/* Get MAC information */
 	/* A single port can report up to two (LAN and WoL) addresses */
 	mac_buf = devm_kcalloc(ice_hw_to_dev(hw), 2,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index dfec1105fd06..21b31cd33c41 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -54,8 +54,6 @@ enum ice_status ice_get_caps(struct ice_hw *hw);
 
 void ice_set_safe_mode_caps(struct ice_hw *hw);
 
-void ice_dev_onetime_setup(struct ice_hw *hw);
-
 enum ice_status
 ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		  u32 rxq_index);
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index b2502c7fd6ed..30f50b06173e 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -332,7 +332,6 @@
 #define GLV_TEPC(_VSI)				(0x00312000 + ((_VSI) * 4))
 #define GLV_UPRCL(_i)				(0x003B2000 + ((_i) * 8))
 #define GLV_UPTCL(_i)				(0x0030A000 + ((_i) * 8))
-#define PF_VT_PFALLOC_HIF			0x0009DD80
 #define VSIQF_HKEY_MAX_INDEX			12
 #define VSIQF_HLUT_MAX_INDEX			15
 #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 75159b658098..90efa0e718b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2736,7 +2736,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	ice_vsi_put_qs(vsi);
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_arrays(vsi);
-	ice_dev_onetime_setup(&pf->hw);
 	if (vsi->type == ICE_VSI_VF)
 		ice_vsi_set_num_qs(vsi, vf->vf_id);
 	else
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
