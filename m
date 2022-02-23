Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD454C0619
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E950040620;
	Wed, 23 Feb 2022 00:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ijp9BwIoGidB; Wed, 23 Feb 2022 00:28:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9954A4026A;
	Wed, 23 Feb 2022 00:28:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 806751BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56463402BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbGuXxGfUblu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8FEDC40911
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576045; x=1677112045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Da++VTlMpKlZ9OCymNlCK3QJqfU+fnhR+6lxHjIEuo=;
 b=Z1UIogbEj8ot2AbLZ7DOpyJ/4JyW5u/oyE+EzO83O2Eg5RJA91t9yAIR
 I6O33Rz1bTY8YR1z2lFtwkXUE80Ozq4g6PnSppHCfnQe4366J7cOf1H0U
 k4b6ISKA9sjGnekT8S2UKTm3gHPF/asvzvW+u9CL1hh1r9/It/jqoES42
 VWCPU9HfBZkctY6cSmsIoGjsd3LoxI2KgN9qqDIKoRsWOuY5i9m0i7EVV
 9FOw21xuOxGt9dneWijEcBqTfQVhECIEb+0AoRTUkLwDmNGVz10Otociy
 pSCO5bQ7Dy/055DxkTOyY6W1GLDyPSW2A1A/N8rtspT69kMjuJx7sYXUt A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239235845"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="239235845"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728073"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:12 -0800
Message-Id: <20220223002712.2771809-26-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 25/25] ice: remove PF pointer
 from ice_check_vf_init
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

The ice_check_vf_init function takes both a PF and a VF pointer. Every
caller looks up the PF pointer from the VF structure. Some callers only
use of the PF pointer is call this function. Move the lookup inside
ice_check_vf_init and drop the unnecessary argument.

Cleanup the callers to drop the now unnecessary local variables. In
particular, replace the local PF pointer with a HW structure pointer in
ice_vc_get_vf_res_msg which simplifies a few accesses to the HW
structure in that function.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c      | 16 +++++++---------
 .../net/ethernet/intel/ice/ice_vf_lib_private.h  |  2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c    | 12 ++++++------
 3 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c584f5123ba7..6578059d9479 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -174,15 +174,12 @@ static void ice_wait_on_vf_reset(struct ice_vf *vf)
  */
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
 {
-	struct ice_pf *pf;
-
 	ice_wait_on_vf_reset(vf);
 
 	if (ice_is_vf_disabled(vf))
 		return -EINVAL;
 
-	pf = vf->pf;
-	if (ice_check_vf_init(pf, vf))
+	if (ice_check_vf_init(vf))
 		return -EBUSY;
 
 	return 0;
@@ -620,11 +617,12 @@ void ice_dis_vf_qs(struct ice_vf *vf)
 
 /**
  * ice_check_vf_init - helper to check if VF init complete
- * @pf: pointer to the PF structure
  * @vf: the pointer to the VF to check
  */
-int ice_check_vf_init(struct ice_pf *pf, struct ice_vf *vf)
+int ice_check_vf_init(struct ice_vf *vf)
 {
+	struct ice_pf *pf = vf->pf;
+
 	if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
 		dev_err(ice_pf_to_dev(pf), "VF ID: %u in reset. Try again.\n",
 			vf->vf_id);
@@ -752,9 +750,9 @@ bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
  */
 bool ice_is_vf_link_up(struct ice_vf *vf)
 {
-	struct ice_pf *pf = vf->pf;
+	struct ice_port_info *pi = ice_vf_get_port_info(vf);
 
-	if (ice_check_vf_init(pf, vf))
+	if (ice_check_vf_init(vf))
 		return false;
 
 	if (ice_vf_has_no_qs_ena(vf))
@@ -762,7 +760,7 @@ bool ice_is_vf_link_up(struct ice_vf *vf)
 	else if (vf->link_forced)
 		return vf->link_up;
 	else
-		return pf->hw.port_info->phy.link_info.link_info &
+		return pi->phy.link_info.link_info &
 			ICE_AQ_LINK_UP;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index e9374693496e..15887e772c76 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -24,7 +24,7 @@
 #endif
 
 void ice_dis_vf_qs(struct ice_vf *vf);
-int ice_check_vf_init(struct ice_pf *pf, struct ice_vf *vf);
+int ice_check_vf_init(struct ice_vf *vf);
 struct ice_port_info *ice_vf_get_port_info(struct ice_vf *vf);
 int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable);
 bool ice_is_vf_trusted(struct ice_vf *vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index d820ec622640..3f1a63815bac 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -370,12 +370,12 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_vf_resource *vfres = NULL;
-	struct ice_pf *pf = vf->pf;
+	struct ice_hw *hw = &vf->pf->hw;
 	struct ice_vsi *vsi;
 	int len = 0;
 	int ret;
 
-	if (ice_check_vf_init(pf, vf)) {
+	if (ice_check_vf_init(vf)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto err;
 	}
@@ -412,9 +412,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 		 * inner/single VLAN respectively and don't allow VF to
 		 * negotiate VIRTCHNL_VF_OFFLOAD in any other cases
 		 */
-		if (ice_is_dvm_ena(&pf->hw) && ice_vf_is_port_vlan_ena(vf)) {
+		if (ice_is_dvm_ena(hw) && ice_vf_is_port_vlan_ena(vf)) {
 			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
-		} else if (!ice_is_dvm_ena(&pf->hw) &&
+		} else if (!ice_is_dvm_ena(hw) &&
 			   !ice_vf_is_port_vlan_ena(vf)) {
 			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
 			/* configure backward compatible support for VFs that
@@ -422,7 +422,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 			 * configured in SVM, and no port VLAN is configured
 			 */
 			ice_vf_vsi_cfg_svm_legacy_vlan_mode(vsi);
-		} else if (ice_is_dvm_ena(&pf->hw)) {
+		} else if (ice_is_dvm_ena(hw)) {
 			/* configure software offloaded VLAN support when DVM
 			 * is enabled, but no port VLAN is enabled
 			 */
@@ -472,7 +472,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
-	vfres->max_vectors = pf->vfs.num_msix_per;
+	vfres->max_vectors = vf->pf->vfs.num_msix_per;
 	vfres->rss_key_size = ICE_VSIQF_HKEY_ARRAY_SIZE;
 	vfres->rss_lut_size = ICE_VSIQF_HLUT_ARRAY_SIZE;
 	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
