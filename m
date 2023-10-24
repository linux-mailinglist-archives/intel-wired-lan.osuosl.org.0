Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC05F7D4EF7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6129140216;
	Tue, 24 Oct 2023 11:35:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6129140216
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147344;
	bh=QxFZ3bvtXKg9DpXAa1apHrmO58XYNHxaoz2y7wIsMKQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BhMcuc7ZFHYUNMy/yx54VeV8MJUKqZmZ7AUFbrtEjzg3BytXKoUk2e+kN6FiXTyph
	 nDCTED61x80GuwO+OeWc4eeJwikwd/2eYsWIWERjtQlo3jmRqu5hIjLGHlWKIBVC3F
	 oyS/MZgZHiCMwez1fW8xzeMVruETrAOJtKXBPfdKaixdRdQ1aYmBq2+0wmVq8qiSBM
	 NWQ9YHJlib3ihK10hZQGTVU1Iv6kGrexiO9ofs3/uV0MsGi0v11mGnEXKxYVLvPHZn
	 Wm+J/4oPoDLJxroEvYGWMR/irDZ2iSX2DI8YeP+PpHE09BKs+BnrlorMfBtoAVUjSK
	 3Dw2oopVJxYOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUuhrd2Wy2oR; Tue, 24 Oct 2023 11:35:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AB8C417A4;
	Tue, 24 Oct 2023 11:35:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AB8C417A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 325B51BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09F3943122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09F3943122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WrBY8ZAGq0aC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:35:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E295A42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E295A42ECD
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660563"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660563"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:35:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146223"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:49 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:26 +0200
Message-ID: <20231024110929.19423-13-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147309; x=1729683309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OUcJvgJWXQWcfwHNkkMbqspEbu1ht2Z3DPxFpq8iD7c=;
 b=T1VAN4L/DMAHlBAfmbMQcsZ3Rf6CnV1vEwZGK8ZUeTg9ET5Efx2gRZH6
 bZER1bWgfIB5czuyZxMSo181zBzhcaXaoumZTbJa/UmwH9BGrEk4XnFKt
 rfa2z7MsJ0IsTIQWSaiYyNKQ2/ZWJQWkmmg/VOoG+8VIjVVZsmRelrlKu
 dR/kSMfzUx9/GZlceJgCvjCVYRoq3leD1Hff6iN/Rdo9v4uZDyKjZWrkC
 iEqeprOBuc+lMLI/SOjZ0/gbo7Z7zTOJZ0HX+Oj+EOhMfy2JJaFDyRtJr
 mc80kqJ1xHcDSZ2XRAml4CiIGb0/6gZ11axq8jqItqiRi+4m/lB4c2nDj
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T1VAN4L/
Subject: [Intel-wired-lan] [PATCH iwl-next v1 12/15] ice: realloc VSI stats
 arrays
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previously only case when queues amount is lower was covered. Implement
realloc for case when queues amount is higher than previous one. Use
krealloc() function and zero new allocated elements.

It has to be done before ice_vsi_def_cfg(), because stats element for
ring is set there.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 58 ++++++++++++++++--------
 1 file changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 85a8cb28a489..d826b5afa143 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3076,27 +3076,26 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 }
 
 /**
- * ice_vsi_realloc_stat_arrays - Frees unused stat structures
+ * ice_vsi_realloc_stat_arrays - Frees unused stat structures or alloc new ones
  * @vsi: VSI pointer
- * @prev_txq: Number of Tx rings before ring reallocation
- * @prev_rxq: Number of Rx rings before ring reallocation
  */
-static void
-ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
+static int
+ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
 {
+	u16 req_txq = vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
+	u16 req_rxq = vsi->req_rxq ? vsi->req_rxq : vsi->alloc_rxq;
+	struct ice_ring_stats **tx_ring_stats;
+	struct ice_ring_stats **rx_ring_stats;
 	struct ice_vsi_stats *vsi_stat;
 	struct ice_pf *pf = vsi->back;
+	u16 prev_txq = vsi->alloc_txq;
+	u16 prev_rxq = vsi->alloc_rxq;
 	int i;
 
-	if (!prev_txq || !prev_rxq)
-		return;
-	if (vsi->type == ICE_VSI_CHNL)
-		return;
-
 	vsi_stat = pf->vsi_stats[vsi->idx];
 
-	if (vsi->num_txq < prev_txq) {
-		for (i = vsi->num_txq; i < prev_txq; i++) {
+	if (req_txq < prev_txq) {
+		for (i = req_txq; i < prev_txq; i++) {
 			if (vsi_stat->tx_ring_stats[i]) {
 				kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
 				WRITE_ONCE(vsi_stat->tx_ring_stats[i], NULL);
@@ -3104,14 +3103,36 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
 		}
 	}
 
-	if (vsi->num_rxq < prev_rxq) {
-		for (i = vsi->num_rxq; i < prev_rxq; i++) {
+	tx_ring_stats = vsi_stat->rx_ring_stats;
+	vsi_stat->tx_ring_stats =
+		krealloc_array(vsi_stat->tx_ring_stats, req_txq,
+			       sizeof(*vsi_stat->tx_ring_stats),
+			       GFP_KERNEL | __GFP_ZERO);
+	if (!vsi_stat->tx_ring_stats) {
+		vsi_stat->tx_ring_stats = tx_ring_stats;
+		return -ENOMEM;
+	}
+
+	if (req_rxq < prev_rxq) {
+		for (i = req_rxq; i < prev_rxq; i++) {
 			if (vsi_stat->rx_ring_stats[i]) {
 				kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
 				WRITE_ONCE(vsi_stat->rx_ring_stats[i], NULL);
 			}
 		}
 	}
+
+	rx_ring_stats = vsi_stat->rx_ring_stats;
+	vsi_stat->rx_ring_stats =
+		krealloc_array(vsi_stat->rx_ring_stats, req_rxq,
+			       sizeof(*vsi_stat->rx_ring_stats),
+			       GFP_KERNEL | __GFP_ZERO);
+	if (!vsi_stat->rx_ring_stats) {
+		vsi_stat->rx_ring_stats = rx_ring_stats;
+		return -ENOMEM;
+	}
+
+	return 0;
 }
 
 /**
@@ -3128,9 +3149,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 {
 	struct ice_vsi_cfg_params params = {};
 	struct ice_coalesce_stored *coalesce;
-	int ret, prev_txq, prev_rxq;
 	int prev_num_q_vectors = 0;
 	struct ice_pf *pf;
+	int ret;
 
 	if (!vsi)
 		return -EINVAL;
@@ -3149,8 +3170,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 
 	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
 
-	prev_txq = vsi->num_txq;
-	prev_rxq = vsi->num_rxq;
+	ret = ice_vsi_realloc_stat_arrays(vsi);
+	if (ret)
+		goto err_vsi_cfg;
 
 	ice_vsi_decfg(vsi);
 	ret = ice_vsi_cfg_def(vsi, &params);
@@ -3168,8 +3190,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 		return ice_schedule_reset(pf, ICE_RESET_PFR);
 	}
 
-	ice_vsi_realloc_stat_arrays(vsi, prev_txq, prev_rxq);
-
 	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
 	kfree(coalesce);
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
