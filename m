Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D1758E47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 01:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D21C87FEA;
	Thu, 27 Jun 2019 23:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FAz1iBzxwPMA; Thu, 27 Jun 2019 23:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC43787FB5;
	Thu, 27 Jun 2019 23:08:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5301BF9B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E3FA87FB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JCgzyobjnhA7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2019 23:08:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED7B887FEA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 16:08:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="156396178"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 27 Jun 2019 16:08:25 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2019 07:40:56 -0700
Message-Id: <20190627144101.24280-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
References: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 10/15] ice: update GLINT_DYN_CTL and
 GLINT_VECT2FUNC register access
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

Register access for GLINT_DYN_CTL and GLINT_VECT2FUNC should be within
the PF space and not the absolute device space.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 24 +++++++++++--------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  3 ++-
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 553c4c4f6dd0..b1972c39c232 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -474,19 +474,20 @@ ice_vf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi, u16 vf_id)
 }
 
 /**
- * ice_calc_vf_first_vector_idx - Calculate absolute MSIX vector index in HW
+ * ice_calc_vf_first_vector_idx - Calculate MSIX vector index in the PF space
  * @pf: pointer to PF structure
  * @vf: pointer to VF that the first MSIX vector index is being calculated for
  *
- * This returns the first MSIX vector index in HW that is used by this VF and
- * this will always be the OICR index in the AVF driver so any functionality
+ * This returns the first MSIX vector index in PF space that is used by this VF.
+ * This index is used when accessing PF relative registers such as
+ * GLINT_VECT2FUNC and GLINT_DYN_CTL.
+ * This will always be the OICR index in the AVF driver so any functionality
  * using vf->first_vector_idx for queue configuration will have to increment by
  * 1 to avoid meddling with the OICR index.
  */
 static int ice_calc_vf_first_vector_idx(struct ice_pf *pf, struct ice_vf *vf)
 {
-	return pf->hw.func_caps.common_cap.msix_vector_first_id +
-		pf->sriov_base_vector + vf->vf_id * pf->num_vf_msix;
+	return pf->sriov_base_vector + vf->vf_id * pf->num_vf_msix;
 }
 
 /**
@@ -597,27 +598,30 @@ static int ice_alloc_vf_res(struct ice_vf *vf)
  */
 static void ice_ena_vf_mappings(struct ice_vf *vf)
 {
+	int abs_vf_id, abs_first, abs_last;
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 	int first, last, v;
 	struct ice_hw *hw;
-	int abs_vf_id;
 	u32 reg;
 
 	hw = &pf->hw;
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	first = vf->first_vector_idx;
 	last = (first + pf->num_vf_msix) - 1;
+	abs_first = first + pf->hw.func_caps.common_cap.msix_vector_first_id;
+	abs_last = (abs_first + pf->num_vf_msix) - 1;
 	abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
 	/* VF Vector allocation */
-	reg = (((first << VPINT_ALLOC_FIRST_S) & VPINT_ALLOC_FIRST_M) |
-	       ((last << VPINT_ALLOC_LAST_S) & VPINT_ALLOC_LAST_M) |
+	reg = (((abs_first << VPINT_ALLOC_FIRST_S) & VPINT_ALLOC_FIRST_M) |
+	       ((abs_last << VPINT_ALLOC_LAST_S) & VPINT_ALLOC_LAST_M) |
 	       VPINT_ALLOC_VALID_M);
 	wr32(hw, VPINT_ALLOC(vf->vf_id), reg);
 
-	reg = (((first << VPINT_ALLOC_PCI_FIRST_S) & VPINT_ALLOC_PCI_FIRST_M) |
-	       ((last << VPINT_ALLOC_PCI_LAST_S) & VPINT_ALLOC_PCI_LAST_M) |
+	reg = (((abs_first << VPINT_ALLOC_PCI_FIRST_S)
+		 & VPINT_ALLOC_PCI_FIRST_M) |
+	       ((abs_last << VPINT_ALLOC_PCI_LAST_S) & VPINT_ALLOC_PCI_LAST_M) |
 	       VPINT_ALLOC_PCI_VALID_M);
 	wr32(hw, VPINT_ALLOC_PCI(vf->vf_id), reg);
 	/* map the interrupts to its functions */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index ada69120ff38..424bc0538956 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -45,7 +45,8 @@ struct ice_vf {
 
 	s16 vf_id;			/* VF ID in the PF space */
 	u16 lan_vsi_idx;		/* index into PF struct */
-	int first_vector_idx;		/* first vector index of this VF */
+	/* first vector index of this VF in the PF space */
+	int first_vector_idx;
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
 	struct virtchnl_version_info vf_ver;
 	u32 driver_caps;		/* reported by VF driver */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
