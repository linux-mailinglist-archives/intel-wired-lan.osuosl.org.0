Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 843D54B9344
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 22:38:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 101B6833C6;
	Wed, 16 Feb 2022 21:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SwLAR4PB2ejH; Wed, 16 Feb 2022 21:38:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 298798332A;
	Wed, 16 Feb 2022 21:38:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9ACF41BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0253840A0C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHty3RATNFRT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 21:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D73C401D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 21:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645047465; x=1676583465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+3HLHQQpjtmxVJyyOTf3k0oANX9IJWCeVaFiumZU+ow=;
 b=eXeBXEvi72cNrokiujy0TZsziaMNOuh8C/hTnaEFqMRjGvG7Nicknts4
 ktqrLkldMxzp+NlVROrzLLGrG9/t2gEB1yuTa888Y30E0Gs/orFtu/Sik
 QNXqLTtOPQ9+3A6sOrTDQaXnHJNu9EfGArYg6VAsefAtFYo9vCKcAWMnS
 jSpAOFhJ5ocqj9W9J4uyDn7JCfxN3RzfepDY5Go8krObDdpgMgCWvNlzZ
 jDtqoGzNidtYpRusCIQTEFi70VdNGroHyU5wsA1/mmpTtS8Rr0FLonljV
 w7ECsSKgj+jaP7Jm36QeBonsXpWEP+HTkDBnDN4XDK9t8qmSTadWNKbM5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248328457"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="248328457"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:37:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="774249129"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:37:44 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Feb 2022 13:37:29 -0800
Message-Id: <20220216213738.3826664-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220216213738.3826664-1-jacob.e.keller@intel.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 02/11] ice: store VF pointer
 instead of VF ID
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

The VSI structure contains a vf_id field used to associate a VSI with a
VF. This is used mainly for ICE_VSI_VF as well as partially for
ICE_VSI_CTRL associated with the VFs.

This API was designed with the idea that VFs are stored in a simple
array that was expected to be static throughout most of the driver's
life.

We plan on refactoring VF storage in a few key ways:

  1) converting from a simple static array to a hash table
  2) using krefs to track VF references obtained from the hash table
  3) use RCU to delay release of VF memory until after all references
     are dropped

This is motivated by the goal to ensure that the lifetime of VF
structures is accounted for, and prevent various use-after-free bugs.

With the existing vsi->vf_id, the reference tracking for VFs would
become somewhat convoluted, because each VSI maintains a vf_id field
which will then require performing a look up. This means all these flows
will require reference tracking and proper usage of rcu_read_lock, etc.

We know that the VF VSI will always be backed by a valid VF structure,
because the VSI is created during VF initialization and removed before
the VF is destroyed. Rely on this and store a reference to the VF in the
VSI structure instead of storing a VF ID. This will simplify the usage
and avoid the need to perform lookups on the hash table in the future.

For ICE_VSI_VF, it is expected that vsi->vf is always non-NULL after
ice_vsi_alloc succeeds. Because of this, use WARN_ON when checking if a
vsi->vf pointer is valid when dealing with VF VSIs. This will aid in
debugging code which violates this assumption and avoid more disastrous
panics.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   3 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |   4 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 178 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  19 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   5 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   6 +-
 10 files changed, 142 insertions(+), 95 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b562128e7024..9041b4428af0 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -109,7 +109,6 @@
 /* All VF control VSIs share the same IRQ, so assign a unique ID for them */
 #define ICE_RES_VF_CTRL_VEC_ID	(ICE_RES_RDMA_VEC_ID - 1)
 #define ICE_INVAL_Q_INDEX	0xffff
-#define ICE_INVAL_VFID		256
 
 #define ICE_MAX_RXQS_PER_TC		256	/* Used when setting VSI context per TC Rx queues */
 
@@ -348,7 +347,7 @@ struct ice_vsi {
 	u16 vsi_num;			/* HW (absolute) index of this VSI */
 	u16 idx;			/* software index in pf->vsi[] */
 
-	s16 vf_id;			/* VF ID for SR-IOV VSIs */
+	struct ice_vf *vf;		/* VF associated with this VSI */
 
 	u16 ethtype;			/* Ethernet protocol for pause frame */
 	u16 num_gfltr;
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 2360e6abdb1e..a3094470d31d 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -323,7 +323,7 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
 		break;
 	case ICE_VSI_VF:
 		/* Firmware expects vmvf_num to be absolute VF ID */
-		tlan_ctx->vmvf_num = hw->func_caps.vf_base_id + vsi->vf_id;
+		tlan_ctx->vmvf_num = hw->func_caps.vf_base_id + vsi->vf->vf_id;
 		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
 		break;
 	case ICE_VSI_SWITCHDEV_CTRL:
@@ -429,7 +429,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	 */
 	if (ice_is_dvm_ena(hw))
 		if (vsi->type == ICE_VSI_VF &&
-		    ice_vf_is_port_vlan_ena(&vsi->back->vf[vsi->vf_id]))
+		    ice_vf_is_port_vlan_ena(vsi->vf))
 			rlan_ctx.l2tsel = 1;
 		else
 			rlan_ctx.l2tsel = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 22babf59d40b..e47331e363ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -315,7 +315,7 @@ void ice_eswitch_update_repr(struct ice_vsi *vsi)
 	if (!ice_is_switchdev_running(pf))
 		return;
 
-	vf = &pf->vf[vsi->vf_id];
+	vf = vsi->vf;
 	repr = vf->repr;
 	repr->src_vsi = vsi;
 	repr->dst->u.port_info.port_id = vsi->vsi_num;
@@ -323,7 +323,8 @@ void ice_eswitch_update_repr(struct ice_vsi *vsi)
 	ret = ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof);
 	if (ret) {
 		ice_fltr_add_mac_and_broadcast(vsi, vf->hw_lan_addr.addr, ICE_FWD_TO_VSI);
-		dev_err(ice_pf_to_dev(pf), "Failed to update VF %d port representor", vsi->vf_id);
+		dev_err(ice_pf_to_dev(pf), "Failed to update VF %d port representor",
+			vsi->vf->vf_id);
 	}
 }
 
@@ -407,7 +408,7 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 static struct ice_vsi *
 ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL, ICE_INVAL_VFID, NULL);
+	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL, NULL, NULL);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index de78d62b8ee3..fb348072d5a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -166,21 +166,19 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 /**
  * ice_vsi_set_num_qs - Set number of queues, descriptors and vectors for a VSI
  * @vsi: the VSI being configured
- * @vf_id: ID of the VF being configured
+ * @vf: the VF associated with this VSI, if any
  *
  * Return 0 on success and a negative value on error
  */
-static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
+static void ice_vsi_set_num_qs(struct ice_vsi *vsi, struct ice_vf *vf)
 {
+	enum ice_vsi_type vsi_type = vsi->type;
 	struct ice_pf *pf = vsi->back;
-	struct ice_vf *vf = NULL;
 
-	if (vsi->type == ICE_VSI_VF)
-		vsi->vf_id = vf_id;
-	else
-		vsi->vf_id = ICE_INVAL_VFID;
+	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
+		return;
 
-	switch (vsi->type) {
+	switch (vsi_type) {
 	case ICE_VSI_PF:
 		if (vsi->req_txq) {
 			vsi->alloc_txq = vsi->req_txq;
@@ -222,7 +220,6 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 		vsi->num_q_vectors = 1;
 		break;
 	case ICE_VSI_VF:
-		vf = &pf->vf[vsi->vf_id];
 		if (vf->num_req_qs)
 			vf->num_vf_qs = vf->num_req_qs;
 		vsi->alloc_txq = vf->num_vf_qs;
@@ -248,7 +245,7 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
 		vsi->alloc_rxq = 1;
 		break;
 	default:
-		dev_warn(ice_pf_to_dev(pf), "Unknown VSI type %d\n", vsi->type);
+		dev_warn(ice_pf_to_dev(pf), "Unknown VSI type %d\n", vsi_type);
 		break;
 	}
 
@@ -299,7 +296,7 @@ void ice_vsi_delete(struct ice_vsi *vsi)
 		return;
 
 	if (vsi->type == ICE_VSI_VF)
-		ctxt->vf_num = vsi->vf_id;
+		ctxt->vf_num = vsi->vf->vf_id;
 	ctxt->vsi_num = vsi->vsi_num;
 
 	memcpy(&ctxt->info, &vsi->info, sizeof(ctxt->info));
@@ -384,8 +381,7 @@ int ice_vsi_clear(struct ice_vsi *vsi)
 	pf->vsi[vsi->idx] = NULL;
 	if (vsi->idx < pf->next_vsi && vsi->type != ICE_VSI_CTRL)
 		pf->next_vsi = vsi->idx;
-	if (vsi->idx < pf->next_vsi && vsi->type == ICE_VSI_CTRL &&
-	    vsi->vf_id != ICE_INVAL_VFID)
+	if (vsi->idx < pf->next_vsi && vsi->type == ICE_VSI_CTRL && vsi->vf)
 		pf->next_vsi = vsi->idx;
 
 	ice_vsi_free_arrays(vsi);
@@ -453,17 +449,24 @@ static irqreturn_t ice_eswitch_msix_clean_rings(int __always_unused irq, void *d
  * @pf: board private structure
  * @vsi_type: type of VSI
  * @ch: ptr to channel
- * @vf_id: ID of the VF being configured
+ * @vf: VF for ICE_VSI_VF and ICE_VSI_CTRL
+ *
+ * The VF pointer is used for ICE_VSI_VF and ICE_VSI_CTRL. For ICE_VSI_CTRL,
+ * it may be NULL in the case there is no association with a VF. For
+ * ICE_VSI_VF the VF pointer *must not* be NULL.
  *
  * returns a pointer to a VSI on success, NULL on failure.
  */
 static struct ice_vsi *
 ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
-	      struct ice_channel *ch, u16 vf_id)
+	      struct ice_channel *ch, struct ice_vf *vf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi = NULL;
 
+	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
+		return NULL;
+
 	/* Need to protect the allocation of the VSIs at the PF level */
 	mutex_lock(&pf->sw_mutex);
 
@@ -485,9 +488,9 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
 	set_bit(ICE_VSI_DOWN, vsi->state);
 
 	if (vsi_type == ICE_VSI_VF)
-		ice_vsi_set_num_qs(vsi, vf_id);
+		ice_vsi_set_num_qs(vsi, vf);
 	else if (vsi_type != ICE_VSI_CHNL)
-		ice_vsi_set_num_qs(vsi, ICE_INVAL_VFID);
+		ice_vsi_set_num_qs(vsi, NULL);
 
 	switch (vsi->type) {
 	case ICE_VSI_SWITCHDEV_CTRL:
@@ -510,10 +513,16 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
 
 		/* Setup ctrl VSI MSIX irq handler */
 		vsi->irq_handler = ice_msix_clean_ctrl_vsi;
+
+		/* For the PF control VSI this is NULL, for the VF control VSI
+		 * this will be the first VF to allocate it.
+		 */
+		vsi->vf = vf;
 		break;
 	case ICE_VSI_VF:
 		if (ice_vsi_alloc_arrays(vsi))
 			goto err_rings;
+		vsi->vf = vf;
 		break;
 	case ICE_VSI_CHNL:
 		if (!ch)
@@ -531,7 +540,7 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
 		goto unlock_pf;
 	}
 
-	if (vsi->type == ICE_VSI_CTRL && vf_id == ICE_INVAL_VFID) {
+	if (vsi->type == ICE_VSI_CTRL && !vf) {
 		/* Use the last VSI slot as the index for PF control VSI */
 		vsi->idx = pf->num_alloc_vsi - 1;
 		pf->ctrl_vsi_idx = vsi->idx;
@@ -546,8 +555,8 @@ ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type vsi_type,
 						 pf->next_vsi);
 	}
 
-	if (vsi->type == ICE_VSI_CTRL && vf_id != ICE_INVAL_VFID)
-		pf->vf[vf_id].ctrl_vsi_idx = vsi->idx;
+	if (vsi->type == ICE_VSI_CTRL && vf)
+		vf->ctrl_vsi_idx = vsi->idx;
 	goto unlock_pf;
 
 err_rings:
@@ -1130,7 +1139,7 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 	case ICE_VSI_VF:
 		ctxt->flags = ICE_AQ_VSI_TYPE_VF;
 		/* VF number here is the absolute VF number (0-255) */
-		ctxt->vf_num = vsi->vf_id + hw->func_caps.vf_base_id;
+		ctxt->vf_num = vsi->vf->vf_id + hw->func_caps.vf_base_id;
 		break;
 	default:
 		ret = -ENODEV;
@@ -1321,6 +1330,31 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id)
 	return ice_search_res(res, needed, id);
 }
 
+/**
+ * ice_get_vf_ctrl_res - Get VF control VSI resource
+ * @pf: pointer to the PF structure
+ * @vsi: the VSI to allocate a resource for
+ *
+ * Look up whether another VF has already allocated the control VSI resource.
+ * If so, re-use this resource so that we share it among all VFs.
+ *
+ * Otherwise, allocate the resource and return it.
+ */
+static int ice_get_vf_ctrl_res(struct ice_pf *pf, struct ice_vsi *vsi)
+{
+	int i;
+
+	ice_for_each_vf(pf, i) {
+		struct ice_vf *vf = &pf->vf[i];
+
+		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI)
+			return pf->vsi[vf->ctrl_vsi_idx]->base_vector;
+	}
+
+	return ice_get_res(pf, pf->irq_tracker, vsi->num_q_vectors,
+			   ICE_RES_VF_CTRL_VEC_ID);
+}
+
 /**
  * ice_vsi_setup_vector_base - Set up the base vector for the given VSI
  * @vsi: ptr to the VSI
@@ -1353,20 +1387,8 @@ static int ice_vsi_setup_vector_base(struct ice_vsi *vsi)
 
 	num_q_vectors = vsi->num_q_vectors;
 	/* reserve slots from OS requested IRQs */
-	if (vsi->type == ICE_VSI_CTRL && vsi->vf_id != ICE_INVAL_VFID) {
-		int i;
-
-		ice_for_each_vf(pf, i) {
-			struct ice_vf *vf = &pf->vf[i];
-
-			if (i != vsi->vf_id && vf->ctrl_vsi_idx != ICE_NO_VSI) {
-				base = pf->vsi[vf->ctrl_vsi_idx]->base_vector;
-				break;
-			}
-		}
-		if (i == pf->num_alloc_vfs)
-			base = ice_get_res(pf, pf->irq_tracker, num_q_vectors,
-					   ICE_RES_VF_CTRL_VEC_ID);
+	if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
+		base = ice_get_vf_ctrl_res(pf, vsi);
 	} else {
 		base = ice_get_res(pf, pf->irq_tracker, num_q_vectors,
 				   vsi->idx);
@@ -2218,7 +2240,7 @@ ice_vsi_set_q_vectors_reg_idx(struct ice_vsi *vsi)
 		}
 
 		if (vsi->type == ICE_VSI_VF) {
-			struct ice_vf *vf = &vsi->back->vf[vsi->vf_id];
+			struct ice_vf *vf = vsi->vf;
 
 			q_vector->reg_idx = ice_calc_vf_reg_idx(vf, q_vector);
 		} else {
@@ -2403,9 +2425,8 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
  * @pf: board private structure
  * @pi: pointer to the port_info instance
  * @vsi_type: VSI type
- * @vf_id: defines VF ID to which this VSI connects. This field is meant to be
- *         used only for ICE_VSI_VF VSI type. For other VSI types, should
- *         fill-in ICE_INVAL_VFID as input.
+ * @vf: pointer to VF to which this VSI connects. This field is used primarily
+ *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
  * @ch: ptr to channel
  *
  * This allocates the sw VSI structure and its queue resources.
@@ -2415,7 +2436,8 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
  */
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type vsi_type, u16 vf_id, struct ice_channel *ch)
+	      enum ice_vsi_type vsi_type, struct ice_vf *vf,
+	      struct ice_channel *ch)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct device *dev = ice_pf_to_dev(pf);
@@ -2423,11 +2445,11 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	int ret, i;
 
 	if (vsi_type == ICE_VSI_CHNL)
-		vsi = ice_vsi_alloc(pf, vsi_type, ch, ICE_INVAL_VFID);
+		vsi = ice_vsi_alloc(pf, vsi_type, ch, NULL);
 	else if (vsi_type == ICE_VSI_VF || vsi_type == ICE_VSI_CTRL)
-		vsi = ice_vsi_alloc(pf, vsi_type, NULL, vf_id);
+		vsi = ice_vsi_alloc(pf, vsi_type, NULL, vf);
 	else
-		vsi = ice_vsi_alloc(pf, vsi_type, NULL, ICE_INVAL_VFID);
+		vsi = ice_vsi_alloc(pf, vsi_type, NULL, NULL);
 
 	if (!vsi) {
 		dev_err(dev, "could not allocate VSI\n");
@@ -2439,9 +2461,6 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	if (vsi->type == ICE_VSI_PF)
 		vsi->ethtype = ETH_P_PAUSE;
 
-	if (vsi->type == ICE_VSI_VF || vsi->type == ICE_VSI_CTRL)
-		vsi->vf_id = vf_id;
-
 	ice_alloc_fd_res(vsi);
 
 	if (vsi_type != ICE_VSI_CHNL) {
@@ -2861,6 +2880,34 @@ void ice_napi_del(struct ice_vsi *vsi)
 		netif_napi_del(&vsi->q_vectors[v_idx]->napi);
 }
 
+/**
+ * ice_free_vf_ctrl_res - Free the VF control VSI resource
+ * @pf: pointer to PF structure
+ * @vsi: the VSI to free resources for
+ *
+ * Check if the VF control VSI resource is still in use. If no VF is using it
+ * any more, release the VSI resource. Otherwise, leave it to be cleaned up
+ * once no other VF uses it.
+ */
+static void ice_free_vf_ctrl_res(struct ice_pf *pf,  struct ice_vsi *vsi)
+{
+	int i;
+
+	ice_for_each_vf(pf, i) {
+		struct ice_vf *vf = &pf->vf[i];
+
+		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI)
+			return;
+	}
+
+	/* No other VFs left that have control VSI. It is now safe to reclaim
+	 * SW interrupts back to the common pool.
+	 */
+	ice_free_res(pf->irq_tracker, vsi->base_vector,
+		     ICE_RES_VF_CTRL_VEC_ID);
+	pf->num_avail_sw_msix += vsi->num_q_vectors;
+}
+
 /**
  * ice_vsi_release - Delete a VSI and free its resources
  * @vsi: the VSI being removed
@@ -2904,23 +2951,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	 * many interrupts each VF needs. SR-IOV MSIX resources are also
 	 * cleared in the same manner.
 	 */
-	if (vsi->type == ICE_VSI_CTRL && vsi->vf_id != ICE_INVAL_VFID) {
-		int i;
-
-		ice_for_each_vf(pf, i) {
-			struct ice_vf *vf = &pf->vf[i];
-
-			if (i != vsi->vf_id && vf->ctrl_vsi_idx != ICE_NO_VSI)
-				break;
-		}
-		if (i == pf->num_alloc_vfs) {
-			/* No other VFs left that have control VSI, reclaim SW
-			 * interrupts back to the common pool
-			 */
-			ice_free_res(pf->irq_tracker, vsi->base_vector,
-				     ICE_RES_VF_CTRL_VEC_ID);
-			pf->num_avail_sw_msix += vsi->num_q_vectors;
-		}
+	if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
+		ice_free_vf_ctrl_res(pf, vsi);
 	} else if (vsi->type != ICE_VSI_VF) {
 		/* reclaim SW interrupts back to the common pool */
 		ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
@@ -3104,7 +3136,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
 	struct ice_coalesce_stored *coalesce;
 	int prev_num_q_vectors = 0;
-	struct ice_vf *vf = NULL;
 	enum ice_vsi_type vtype;
 	struct ice_pf *pf;
 	int ret, i;
@@ -3114,8 +3145,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	pf = vsi->back;
 	vtype = vsi->type;
-	if (vtype == ICE_VSI_VF)
-		vf = &pf->vf[vsi->vf_id];
+	if (WARN_ON(vtype == ICE_VSI_VF) && !vsi->vf)
+		return -EINVAL;
 
 	ice_vsi_init_vlan_ops(vsi);
 
@@ -3154,9 +3185,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_arrays(vsi);
 	if (vtype == ICE_VSI_VF)
-		ice_vsi_set_num_qs(vsi, vf->vf_id);
+		ice_vsi_set_num_qs(vsi, vsi->vf);
 	else
-		ice_vsi_set_num_qs(vsi, ICE_INVAL_VFID);
+		ice_vsi_set_num_qs(vsi, NULL);
 
 	ret = ice_vsi_alloc_arrays(vsi);
 	if (ret < 0)
@@ -4013,9 +4044,14 @@ static u16 ice_vsi_num_zero_vlans(struct ice_vsi *vsi)
 #define ICE_DVM_NUM_ZERO_VLAN_FLTRS	2
 #define ICE_SVM_NUM_ZERO_VLAN_FLTRS	1
 	/* no VLAN 0 filter is created when a port VLAN is active */
-	if (vsi->type == ICE_VSI_VF &&
-	    ice_vf_is_port_vlan_ena(&vsi->back->vf[vsi->vf_id]))
-		return 0;
+	if (vsi->type == ICE_VSI_VF) {
+		if (WARN_ON(!vsi->vf))
+			return 0;
+
+		if (ice_vf_is_port_vlan_ena(vsi->vf))
+			return 0;
+	}
+
 	if (ice_is_dvm_ena(&vsi->back->hw))
 		return ICE_DVM_NUM_ZERO_VLAN_FLTRS;
 	else
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 491f13f98797..0095329949d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -52,7 +52,8 @@ void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
 
 struct ice_vsi *
 ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type vsi_type, u16 vf_id, struct ice_channel *ch);
+	      enum ice_vsi_type vsi_type, struct ice_vf *vf,
+	      struct ice_channel *ch);
 
 void ice_napi_del(struct ice_vsi *vsi);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index fdd143040fb9..1c40e679a6cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2439,7 +2439,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 			/* skip this unused q_vector */
 			continue;
 		}
-		if (vsi->type == ICE_VSI_CTRL && vsi->vf_id != ICE_INVAL_VFID)
+		if (vsi->type == ICE_VSI_CTRL && vsi->vf)
 			err = devm_request_irq(dev, irq_num, vsi->irq_handler,
 					       IRQF_SHARED, q_vector->name,
 					       q_vector);
@@ -3386,14 +3386,14 @@ void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size)
 static struct ice_vsi *
 ice_pf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_PF, ICE_INVAL_VFID, NULL);
+	return ice_vsi_setup(pf, pi, ICE_VSI_PF, NULL, NULL);
 }
 
 static struct ice_vsi *
 ice_chnl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		   struct ice_channel *ch)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_CHNL, ICE_INVAL_VFID, ch);
+	return ice_vsi_setup(pf, pi, ICE_VSI_CHNL, NULL, ch);
 }
 
 /**
@@ -3407,7 +3407,7 @@ ice_chnl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 static struct ice_vsi *
 ice_ctrl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_CTRL, ICE_INVAL_VFID, NULL);
+	return ice_vsi_setup(pf, pi, ICE_VSI_CTRL, NULL, NULL);
 }
 
 /**
@@ -3421,7 +3421,7 @@ ice_ctrl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 struct ice_vsi *
 ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_LB, ICE_INVAL_VFID, NULL);
+	return ice_vsi_setup(pf, pi, ICE_VSI_LB, NULL, NULL);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index a2283ad694de..f9bf008471c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1160,7 +1160,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			struct ice_vsi *ctrl_vsi = rx_ring->vsi;
 
 			if (rx_desc->wb.rxdid == FDIR_DESC_RXDID &&
-			    ctrl_vsi->vf_id != ICE_INVAL_VFID)
+			    ctrl_vsi->vf)
 				ice_vc_fdir_irq_handler(ctrl_vsi, rx_desc);
 			ice_put_rx_buf(rx_ring, NULL, 0);
 			cleaned_count++;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
index 39f2d36cabba..b16f946185f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
@@ -34,9 +34,10 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 {
 	struct ice_vsi_vlan_ops *vlan_ops;
 	struct ice_pf *pf = vsi->back;
-	struct ice_vf *vf;
+	struct ice_vf *vf = vsi->vf;
 
-	vf = &pf->vf[vsi->vf_id];
+	if (WARN_ON(!vf))
+		return;
 
 	if (ice_is_dvm_ena(&pf->hw)) {
 		vlan_ops = &vsi->outer_vlan_ops;
@@ -126,9 +127,14 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
  */
 void ice_vf_vsi_cfg_dvm_legacy_vlan_mode(struct ice_vsi *vsi)
 {
-	struct ice_vf *vf = &vsi->back->vf[vsi->vf_id];
-	struct device *dev = ice_pf_to_dev(vf->pf);
 	struct ice_vsi_vlan_ops *vlan_ops;
+	struct ice_vf *vf = vsi->vf;
+	struct device *dev;
+
+	if (WARN_ON(!vf))
+		return;
+
+	dev = ice_pf_to_dev(vf->pf);
 
 	if (!ice_is_dvm_ena(&vsi->back->hw) || ice_vf_is_port_vlan_ena(vf))
 		return;
@@ -192,7 +198,10 @@ void ice_vf_vsi_cfg_dvm_legacy_vlan_mode(struct ice_vsi *vsi)
  */
 void ice_vf_vsi_cfg_svm_legacy_vlan_mode(struct ice_vsi *vsi)
 {
-	struct ice_vf *vf = &vsi->back->vf[vsi->vf_id];
+	struct ice_vf *vf = vsi->vf;
+
+	if (WARN_ON(!vf))
+		return;
 
 	if (ice_is_dvm_ena(&vsi->back->hw) || ice_vf_is_port_vlan_ena(vf))
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index d64df81d4893..25b9c1dfc1ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1288,15 +1288,16 @@ ice_vc_fdir_irq_handler(struct ice_vsi *ctrl_vsi,
 			union ice_32b_rx_flex_desc *rx_desc)
 {
 	struct ice_pf *pf = ctrl_vsi->back;
+	struct ice_vf *vf = ctrl_vsi->vf;
 	struct ice_vf_fdir_ctx *ctx_done;
 	struct ice_vf_fdir_ctx *ctx_irq;
 	struct ice_vf_fdir *fdir;
 	unsigned long flags;
 	struct device *dev;
-	struct ice_vf *vf;
 	int ret;
 
-	vf = &pf->vf[ctrl_vsi->vf_id];
+	if (WARN_ON(!vf))
+		return;
 
 	fdir = &vf->fdir;
 	ctx_done = &fdir->ctx_done;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index a6da81a4de8a..d86d47b8fee2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -667,7 +667,7 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
-	vsi = ice_vsi_setup(pf, pi, ICE_VSI_VF, vf->vf_id, NULL);
+	vsi = ice_vsi_setup(pf, pi, ICE_VSI_VF, vf, NULL);
 
 	if (!vsi) {
 		dev_err(ice_pf_to_dev(pf), "Failed to create VF VSI\n");
@@ -694,7 +694,7 @@ struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
-	vsi = ice_vsi_setup(pf, pi, ICE_VSI_CTRL, vf->vf_id, NULL);
+	vsi = ice_vsi_setup(pf, pi, ICE_VSI_CTRL, vf, NULL);
 	if (!vsi) {
 		dev_err(ice_pf_to_dev(pf), "Failed to create VF control VSI\n");
 		ice_vf_ctrl_invalidate_vsi(vf);
@@ -2524,7 +2524,7 @@ bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 
 	vsi = ice_find_vsi_from_id(pf, vsi_id);
 
-	return (vsi && (vsi->vf_id == vf->vf_id));
+	return (vsi && (vsi->vf == vf));
 }
 
 /**
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
