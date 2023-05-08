Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC4B6FB06E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 14:43:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37D6784210;
	Mon,  8 May 2023 12:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37D6784210
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683549836;
	bh=ZI29jPSdYXThbtr2sNN+dwSCDZk6cRXqD0sm5jf3d2I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3tNZ8Tc/qqpDkZWsTFNEl3V05WhceDQ5S1nmND2Sm8MEwYvjXgdobJ9rBLIcKZQCd
	 RYxghRs1Hgnrm7UnBgRr83R0mWkWHr3U+P6FBCY1qezWlHuedLL1NU/G8kEvDY+E8A
	 a1gfsclyNBk13BIkAeBvSulSI+mA1RDU46JWs4r9hMfCVzFnXFGDAMmIbeKP0d6GDW
	 p21VVorNhKAt0ztg4awdeC6acgCWiJMpfXImLOezfJ+IrTARXrBMEGdDR+GkDXbZ3k
	 DRqYqXAuQvfL4LFsH/XTlp/bH5r0PuSY0BFsS6Lc4Jol8PIzmGdEJZULBEIppZ+W0b
	 Qra/OM8CVLwAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5pDJqJlV8Fi3; Mon,  8 May 2023 12:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07359813CF;
	Mon,  8 May 2023 12:43:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07359813CF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5C4F1BF364
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AF9241D7F
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AF9241D7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h85nhOOXyU3S for <intel-wired-lan@osuosl.org>;
 Mon,  8 May 2023 12:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 720A8402A8
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 720A8402A8
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="349665116"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="349665116"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="676047954"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="676047954"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by orsmga006.jf.intel.com with ESMTP; 08 May 2023 05:43:35 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 May 2023 14:43:17 +0200
Message-Id: <20230508124321.2927867-5-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230508124321.2927867-1-piotr.raczynski@intel.com>
References: <20230508124321.2927867-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683549818; x=1715085818;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BYW5caIgZsAlLtAz8Ne9RMJJZcK7bPH4B33fbg5LZhI=;
 b=nq2AvhAc/9GjKdkXRMZD0uiLig5HToCj4py/QJeixIy2tihE7J+g2jl1
 84vTrGEgnEFH6+WEaSj/2xrQRqrINbdpoTC+CHc2yu32nbNUgXVkltpY+
 prs68Cbo+yvGfTYmkQnYU9/bfMMbIW8+AnpObL+NjPXx34poSZp3sbx2B
 Tfy2DcDn+hCFIOCR1aQqR2wEvrccvj4ULQ18ngRhkinyi17PEaICeCi71
 v9Bn4cpQ+Af/K22cOQEW4E9Av3YqwVsX5ZnS4dJKyi8Q8yOgp5lc4HDGS
 HpUnpJHzCuPz1X5KLmUJdC2c1Knu17X1NTriArxhxqZ1Va8QWO4inpGfV
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nq2AvhAc
Subject: [Intel-wired-lan] [PATCH net-next v4 4/8] ice: refactor VF control
 VSI interrupt handling
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, simon.horman@corigine.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

All VF contrl VSIs share the same interrupt vector. Currently, a helper
function dedicated for that directly sets ice_vsi::base_vector.

Use helper that returns pointer to first found VF control VSI instead.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c    | 76 ++++-----------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 32 +++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  7 ++
 3 files changed, 52 insertions(+), 63 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 1d9f3aa06b10..779fb72d0557 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1473,36 +1473,6 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id)
 	return ice_search_res(res, needed, id);
 }
 
-/**
- * ice_get_vf_ctrl_res - Get VF control VSI resource
- * @pf: pointer to the PF structure
- * @vsi: the VSI to allocate a resource for
- *
- * Look up whether another VF has already allocated the control VSI resource.
- * If so, re-use this resource so that we share it among all VFs.
- *
- * Otherwise, allocate the resource and return it.
- */
-static int ice_get_vf_ctrl_res(struct ice_pf *pf, struct ice_vsi *vsi)
-{
-	struct ice_vf *vf;
-	unsigned int bkt;
-	int base;
-
-	rcu_read_lock();
-	ice_for_each_vf_rcu(pf, bkt, vf) {
-		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI) {
-			base = pf->vsi[vf->ctrl_vsi_idx]->base_vector;
-			rcu_read_unlock();
-			return base;
-		}
-	}
-	rcu_read_unlock();
-
-	return ice_get_res(pf, pf->irq_tracker, vsi->num_q_vectors,
-			   ICE_RES_VF_CTRL_VEC_ID);
-}
-
 /**
  * ice_vsi_setup_vector_base - Set up the base vector for the given VSI
  * @vsi: ptr to the VSI
@@ -1536,7 +1506,14 @@ static int ice_vsi_setup_vector_base(struct ice_vsi *vsi)
 	num_q_vectors = vsi->num_q_vectors;
 	/* reserve slots from OS requested IRQs */
 	if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
-		base = ice_get_vf_ctrl_res(pf, vsi);
+		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
+
+		if (ctrl_vsi)
+			base = ctrl_vsi->base_vector;
+		else
+			base = ice_get_res(pf, pf->irq_tracker,
+					   vsi->num_q_vectors,
+					   ICE_RES_VF_CTRL_VEC_ID);
 	} else {
 		base = ice_get_res(pf, pf->irq_tracker, num_q_vectors,
 				   vsi->idx);
@@ -2611,37 +2588,6 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
 		vsi->agg_node->num_vsis);
 }
 
-/**
- * ice_free_vf_ctrl_res - Free the VF control VSI resource
- * @pf: pointer to PF structure
- * @vsi: the VSI to free resources for
- *
- * Check if the VF control VSI resource is still in use. If no VF is using it
- * any more, release the VSI resource. Otherwise, leave it to be cleaned up
- * once no other VF uses it.
- */
-static void ice_free_vf_ctrl_res(struct ice_pf *pf,  struct ice_vsi *vsi)
-{
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	rcu_read_lock();
-	ice_for_each_vf_rcu(pf, bkt, vf) {
-		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI) {
-			rcu_read_unlock();
-			return;
-		}
-	}
-	rcu_read_unlock();
-
-	/* No other VFs left that have control VSI. It is now safe to reclaim
-	 * SW interrupts back to the common pool.
-	 */
-	ice_free_res(pf->irq_tracker, vsi->base_vector,
-		     ICE_RES_VF_CTRL_VEC_ID);
-	pf->num_avail_sw_msix += vsi->num_q_vectors;
-}
-
 static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
@@ -2921,7 +2867,11 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 	 * cleared in the same manner.
 	 */
 	if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
-		ice_free_vf_ctrl_res(pf, vsi);
+		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
+
+		if (!ctrl_vsi)
+			ice_free_res(pf->irq_tracker, vsi->base_vector,
+				     ICE_RES_VF_CTRL_VEC_ID);
 	} else if (vsi->type != ICE_VSI_VF) {
 		/* reclaim SW interrupts back to the common pool */
 		ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 44fc3229c919..b26ce4425f45 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1326,3 +1326,35 @@ void ice_vf_set_initialized(struct ice_vf *vf)
 	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
 	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
 }
+
+/**
+ * ice_get_vf_ctrl_vsi - Get first VF control VSI pointer
+ * @pf: the PF private structure
+ * @vsi: pointer to the VSI
+ *
+ * Return first found VF control VSI other than the vsi
+ * passed by parameter. This function is used to determine
+ * whether new resources have to be allocated for control VSI
+ * or they can be shared with existing one.
+ *
+ * Return found VF control VSI pointer other itself. Return
+ * NULL Otherwise.
+ *
+ */
+struct ice_vsi *ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi)
+{
+	struct ice_vsi *ctrl_vsi = NULL;
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	rcu_read_lock();
+	ice_for_each_vf_rcu(pf, bkt, vf) {
+		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI) {
+			ctrl_vsi = pf->vsi[vf->ctrl_vsi_idx];
+			break;
+		}
+	}
+
+	rcu_read_unlock();
+	return ctrl_vsi;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index a38ef00a3679..67172fdd9bc2 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -227,6 +227,7 @@ int
 ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int ice_reset_vf(struct ice_vf *vf, u32 flags);
 void ice_reset_all_vfs(struct ice_pf *pf);
+struct ice_vsi *ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 {
@@ -291,6 +292,12 @@ static inline int ice_reset_vf(struct ice_vf *vf, u32 flags)
 static inline void ice_reset_all_vfs(struct ice_pf *pf)
 {
 }
+
+static inline struct ice_vsi *
+ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi)
+{
+	return NULL;
+}
 #endif /* !CONFIG_PCI_IOV */
 
 #endif /* _ICE_VF_LIB_H_ */
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
