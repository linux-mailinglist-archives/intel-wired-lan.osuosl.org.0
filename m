Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D68DE5A79E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jun 2019 01:31:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 957C822859;
	Fri, 28 Jun 2019 23:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJNhWwb1eVaz; Fri, 28 Jun 2019 23:31:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9640A228A7;
	Fri, 28 Jun 2019 23:31:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A04AF1BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 23:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9DAEE881DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 23:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4ZHjj0RReFC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 23:30:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C7D008821B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 23:30:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 16:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,429,1557212400"; d="scan'208";a="164803434"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga007.fm.intel.com with ESMTP; 28 Jun 2019 16:30:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 28 Jun 2019 08:03:22 -0700
Message-Id: <20190628150332.59155-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628150332.59155-1-anthony.l.nguyen@intel.com>
References: <20190628150332.59155-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v2 04/15] ice: Restructure VFs
 initialization flows
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

This patch restructures how VFs are configured, and resources allocated.
Instead of freeing resources that were never allocated, and resetting
empty VFs that have never been created - the new flow will just allocate
resources for number of requested VFs based on the availability.

During VFs initialization process, global interrupt is disabled, and
rearmed after getting MSIX vectors for VFs. This allows immediate mailbox
communications, instead of delaying it till later and VFs.
PF communications resulted to using polling instead of actual interrupt.
The issue manifested when creating higher number of VFs (128 VFs) per PF.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  1 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 70 +++++++++++++------
 2 files changed, 49 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 72b5d641e9b8..1a438245f4bf 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -225,6 +225,7 @@ enum ice_state {
 	__ICE_CFG_BUSY,
 	__ICE_SERVICE_SCHED,
 	__ICE_SERVICE_DIS,
+	__ICE_OICR_INTR_DIS,		/* Global OICR interrupt disabled */
 	__ICE_STATE_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index a3849ed283eb..553c4c4f6dd0 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -974,6 +974,48 @@ ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m,
 	return status;
 }
 
+/**
+ * ice_config_res_vfs - Finalize allocation of VFs resources in one go
+ * @pf: pointer to the PF structure
+ *
+ * This function is being called as last part of resetting all VFs, or when
+ * configuring VFs for the first time, where there is no resource to be freed
+ * Returns true if resources were properly allocated for all VFs, and false
+ * otherwise.
+ */
+static bool ice_config_res_vfs(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+	struct ice_vf *vf;
+	int v;
+
+	if (ice_check_avail_res(pf)) {
+		dev_err(&pf->pdev->dev,
+			"Cannot allocate VF resources, try with fewer number of VFs\n");
+		return false;
+	}
+
+	/* rearm global interrupts */
+	if (test_and_clear_bit(__ICE_OICR_INTR_DIS, pf->state))
+		ice_irq_dynamic_ena(hw, NULL, NULL);
+
+	/* Finish resetting each VF and allocate resources */
+	for (v = 0; v < pf->num_alloc_vfs; v++) {
+		vf = &pf->vf[v];
+
+		vf->num_vf_qs = pf->num_vf_qps;
+		dev_dbg(&pf->pdev->dev,
+			"VF-id %d has %d queues configured\n",
+			vf->vf_id, vf->num_vf_qs);
+		ice_cleanup_and_realloc_vf(vf);
+	}
+
+	ice_flush(hw);
+	clear_bit(__ICE_VF_DIS, pf->state);
+
+	return true;
+}
+
 /**
  * ice_reset_all_vfs - reset all allocated VFs in one go
  * @pf: pointer to the PF structure
@@ -1066,25 +1108,8 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 		dev_err(&pf->pdev->dev,
 			"Failed to free MSIX resources used by SR-IOV\n");
 
-	if (ice_check_avail_res(pf)) {
-		dev_err(&pf->pdev->dev,
-			"Cannot allocate VF resources, try with fewer number of VFs\n");
+	if (!ice_config_res_vfs(pf))
 		return false;
-	}
-
-	/* Finish the reset on each VF */
-	for (v = 0; v < pf->num_alloc_vfs; v++) {
-		vf = &pf->vf[v];
-
-		vf->num_vf_qs = pf->num_vf_qps;
-		dev_dbg(&pf->pdev->dev,
-			"VF-id %d has %d queues configured\n",
-			vf->vf_id, vf->num_vf_qs);
-		ice_cleanup_and_realloc_vf(vf);
-	}
-
-	ice_flush(hw);
-	clear_bit(__ICE_VF_DIS, pf->state);
 
 	return true;
 }
@@ -1249,7 +1274,7 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 	/* Disable global interrupt 0 so we don't try to handle the VFLR. */
 	wr32(hw, GLINT_DYN_CTL(pf->oicr_idx),
 	     ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
-
+	set_bit(__ICE_OICR_INTR_DIS, pf->state);
 	ice_flush(hw);
 
 	ret = pci_enable_sriov(pf->pdev, num_alloc_vfs);
@@ -1278,13 +1303,13 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 	}
 	pf->num_alloc_vfs = num_alloc_vfs;
 
-	/* VF resources get allocated during reset */
-	if (!ice_reset_all_vfs(pf, true)) {
+	/* VF resources get allocated with initialization */
+	if (!ice_config_res_vfs(pf)) {
 		ret = -EIO;
 		goto err_unroll_sriov;
 	}
 
-	goto err_unroll_intr;
+	return ret;
 
 err_unroll_sriov:
 	pf->vf = NULL;
@@ -1296,6 +1321,7 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 err_unroll_intr:
 	/* rearm interrupts here */
 	ice_irq_dynamic_ena(hw, NULL, NULL);
+	clear_bit(__ICE_OICR_INTR_DIS, pf->state);
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
