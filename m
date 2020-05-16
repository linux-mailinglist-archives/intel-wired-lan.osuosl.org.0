Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EA31D5D6E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01C0C87AD2;
	Sat, 16 May 2020 00:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VrXFD55U+Srx; Sat, 16 May 2020 00:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E704E85F96;
	Sat, 16 May 2020 00:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 790371BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 75DCF87F7D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lX2NWhZiOzde for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 912DB881C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:56 +0000 (UTC)
IronPort-SDR: yxSXpp8d/RJrdRbHWuhXB5ogOhZYh3MVi1pGhn6zwKSTjjsxQslq4CYlRmuOU2FHS6XG+n+sJ5
 fjdBD2uh5pwQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: motId3FZA6GbnaAJV+y+LuajmqQ0p/Vb4tb4k/k9CgWN7bIbarwjc+E/wTI/30OmGXcYfhYQC9
 zPMan3gbCQyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360537"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:07 -0700
Message-Id: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 01/15] ice: Refactor
 ice_ena_vf_mappings to split MSIX and queue mappings
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

Currently ice_ena_vf_mappings() does all of the VF's MSIX and queue
mapping in one function. This makes it hard to digest. Fix this by
creating a new function for enabling MSIX mappings and one for enabling
queue mappings.

Also, rename some variables in the functions for clarity.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 91 ++++++++++++-------
 1 file changed, 59 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index b27206423537..8547eaaa7e40 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -651,55 +651,70 @@ static int ice_alloc_vf_res(struct ice_vf *vf)
 }
 
 /**
- * ice_ena_vf_mappings
- * @vf: pointer to the VF structure
+ * ice_ena_vf_msix_mappings - enable VF MSIX mappings in hardware
+ * @vf: VF to enable MSIX mappings for
  *
- * Enable VF vectors and queues allocation by writing the details into
- * respective registers.
+ * Some of the registers need to be indexed/configured using hardware global
+ * device values and other registers need 0-based values, which represent PF
+ * based values.
  */
-static void ice_ena_vf_mappings(struct ice_vf *vf)
+static void ice_ena_vf_msix_mappings(struct ice_vf *vf)
 {
-	int abs_vf_id, abs_first, abs_last;
+	int device_based_first_msix, device_based_last_msix;
+	int pf_based_first_msix, pf_based_last_msix, v;
 	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-	struct device *dev;
-	int first, last, v;
+	int device_based_vf_id;
 	struct ice_hw *hw;
 	u32 reg;
 
-	dev = ice_pf_to_dev(pf);
 	hw = &pf->hw;
-	vsi = pf->vsi[vf->lan_vsi_idx];
-	first = vf->first_vector_idx;
-	last = (first + pf->num_msix_per_vf) - 1;
-	abs_first = first + pf->hw.func_caps.common_cap.msix_vector_first_id;
-	abs_last = (abs_first + pf->num_msix_per_vf) - 1;
-	abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
-
-	/* VF Vector allocation */
-	reg = (((abs_first << VPINT_ALLOC_FIRST_S) & VPINT_ALLOC_FIRST_M) |
-	       ((abs_last << VPINT_ALLOC_LAST_S) & VPINT_ALLOC_LAST_M) |
-	       VPINT_ALLOC_VALID_M);
+	pf_based_first_msix = vf->first_vector_idx;
+	pf_based_last_msix = (pf_based_first_msix + pf->num_msix_per_vf) - 1;
+
+	device_based_first_msix = pf_based_first_msix +
+		pf->hw.func_caps.common_cap.msix_vector_first_id;
+	device_based_last_msix =
+		(device_based_first_msix + pf->num_msix_per_vf) - 1;
+	device_based_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
+
+	reg = (((device_based_first_msix << VPINT_ALLOC_FIRST_S) &
+		VPINT_ALLOC_FIRST_M) |
+	       ((device_based_last_msix << VPINT_ALLOC_LAST_S) &
+		VPINT_ALLOC_LAST_M) | VPINT_ALLOC_VALID_M);
 	wr32(hw, VPINT_ALLOC(vf->vf_id), reg);
 
-	reg = (((abs_first << VPINT_ALLOC_PCI_FIRST_S)
+	reg = (((device_based_first_msix << VPINT_ALLOC_PCI_FIRST_S)
 		 & VPINT_ALLOC_PCI_FIRST_M) |
-	       ((abs_last << VPINT_ALLOC_PCI_LAST_S) & VPINT_ALLOC_PCI_LAST_M) |
-	       VPINT_ALLOC_PCI_VALID_M);
+	       ((device_based_last_msix << VPINT_ALLOC_PCI_LAST_S) &
+		VPINT_ALLOC_PCI_LAST_M) | VPINT_ALLOC_PCI_VALID_M);
 	wr32(hw, VPINT_ALLOC_PCI(vf->vf_id), reg);
+
 	/* map the interrupts to its functions */
-	for (v = first; v <= last; v++) {
-		reg = (((abs_vf_id << GLINT_VECT2FUNC_VF_NUM_S) &
+	for (v = pf_based_first_msix; v <= pf_based_last_msix; v++) {
+		reg = (((device_based_vf_id << GLINT_VECT2FUNC_VF_NUM_S) &
 			GLINT_VECT2FUNC_VF_NUM_M) |
 		       ((hw->pf_id << GLINT_VECT2FUNC_PF_NUM_S) &
 			GLINT_VECT2FUNC_PF_NUM_M));
 		wr32(hw, GLINT_VECT2FUNC(v), reg);
 	}
 
-	/* Map mailbox interrupt. We put an explicit 0 here to remind us that
-	 * VF admin queue interrupts will go to VF MSI-X vector 0.
-	 */
-	wr32(hw, VPINT_MBX_CTL(abs_vf_id), VPINT_MBX_CTL_CAUSE_ENA_M | 0);
+	/* Map mailbox interrupt to VF MSI-X vector 0 */
+	wr32(hw, VPINT_MBX_CTL(device_based_vf_id), VPINT_MBX_CTL_CAUSE_ENA_M);
+}
+
+/**
+ * ice_ena_vf_q_mappings - enable Rx/Tx queue mappings for a VF
+ * @vf: VF to enable the mappings for
+ * @max_txq: max Tx queues allowed on the VF's VSI
+ * @max_rxq: max Rx queues allowed on the VF's VSI
+ */
+static void ice_ena_vf_q_mappings(struct ice_vf *vf, u16 max_txq, u16 max_rxq)
+{
+	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_hw *hw = &vf->pf->hw;
+	u32 reg;
+
 	/* set regardless of mapping mode */
 	wr32(hw, VPLAN_TXQ_MAPENA(vf->vf_id), VPLAN_TXQ_MAPENA_TX_ENA_M);
 
@@ -711,7 +726,7 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)
 		 */
 		reg = (((vsi->txq_map[0] << VPLAN_TX_QBASE_VFFIRSTQ_S) &
 			VPLAN_TX_QBASE_VFFIRSTQ_M) |
-		       (((vsi->alloc_txq - 1) << VPLAN_TX_QBASE_VFNUMQ_S) &
+		       (((max_txq - 1) << VPLAN_TX_QBASE_VFNUMQ_S) &
 			VPLAN_TX_QBASE_VFNUMQ_M));
 		wr32(hw, VPLAN_TX_QBASE(vf->vf_id), reg);
 	} else {
@@ -729,7 +744,7 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)
 		 */
 		reg = (((vsi->rxq_map[0] << VPLAN_RX_QBASE_VFFIRSTQ_S) &
 			VPLAN_RX_QBASE_VFFIRSTQ_M) |
-		       (((vsi->alloc_txq - 1) << VPLAN_RX_QBASE_VFNUMQ_S) &
+		       (((max_rxq - 1) << VPLAN_RX_QBASE_VFNUMQ_S) &
 			VPLAN_RX_QBASE_VFNUMQ_M));
 		wr32(hw, VPLAN_RX_QBASE(vf->vf_id), reg);
 	} else {
@@ -737,6 +752,18 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)
 	}
 }
 
+/**
+ * ice_ena_vf_mappings - enable VF MSIX and queue mapping
+ * @vf: pointer to the VF structure
+ */
+static void ice_ena_vf_mappings(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
+
+	ice_ena_vf_msix_mappings(vf);
+	ice_ena_vf_q_mappings(vf, vsi->alloc_txq, vsi->alloc_rxq);
+}
+
 /**
  * ice_determine_res
  * @pf: pointer to the PF structure
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
