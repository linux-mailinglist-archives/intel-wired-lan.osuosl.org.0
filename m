Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6172C4B7C6C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Feb 2022 02:32:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15FCD4057A;
	Wed, 16 Feb 2022 01:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yYJn9yGntGDT; Wed, 16 Feb 2022 01:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 661204052D;
	Wed, 16 Feb 2022 01:32:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA6021BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF61141612
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id waw5eKEHLozg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57BB04160F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Feb 2022 01:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644975098; x=1676511098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NdJX9Uzb9DUG8pYueriyHmTPdTcPyc/lDTTfpTNZf60=;
 b=bN41tKgLzSQ7NwtbW3suQ5PqYGaSf2r+37FTf4o4iZkg6U/90tNfGJVP
 LxC1sRPHvVt/UPXafQsGRK6N/2NdFJ5HfJUJ69Sn5Xlh4LVoT/OYhZwwu
 aESWXvetDxTBSKM7FqIT81wXaQSz/Ek6Ch4IG1nX4ABXlSpDYJSjj27UA
 EpSyILYBSmgWxmV1wbhVF4O5BBkdD2Hc351VIHoFAcjDu/W7FKU4fGcCM
 +hA6+elxpNMwqdPYljqpAWF/WJzqvz6duOy6TAzrLZpmeXkQXTybDXKx0
 agJeeQnxpXgZaMQKNUxM/0r3+Nx/dQxbGC0uuEggy1QfstTqf0jlKJ24B w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="237903432"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="237903432"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="588077366"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 17:31:35 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Feb 2022 17:31:24 -0800
Message-Id: <20220216013127.3263153-9-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220216013127.3263153-1-jacob.e.keller@intel.com>
References: <20220216013127.3263153-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 08/11] ice: convert
 ice_for_each_vf to include VF entry iterator
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

The ice_for_each_vf macro is intended to be used to loop over all VFs.
The current implementation relies on an iterator that is the index into
the VF array in the PF structure. This forces all users to perform a
look up themselves.

This abstraction forces a lot of duplicate work on callers and leaks the
interface implementation to the caller. Replace this with an
implementation that includes the VF pointer the primary iterator. This
version simplifies callers which just want to iterate over every VF, as
they no longer need to perform their own lookup.

The "i" iterator value is replaced with a new unsigned int "bkt"
parameter, as this will match the necessary interface for replacing
the VF array with a hash table. For now, the bkt is the VF ID, but in
the future it will simply be the hash bucket index. Document that it
should not be treated as a VF ID.

This change aims to simplify switching from the array to a hash table. I
considered alternative implementations such as an xarray but decided
that the hash table was the simplest and most suitable implementation. I
also looked at methods to hide the bkt iterator entirely, but I couldn't
come up with a feasible solution that worked for hash table iterators.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  63 ++++----
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  21 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  44 +++---
 drivers/net/ethernet/intel/ice/ice_repr.c     |  15 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   6 +-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 141 +++++++++---------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  16 +-
 8 files changed, 162 insertions(+), 151 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index e47331e363ea..aa16ea15c5ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -210,11 +210,11 @@ static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 static void
 ice_eswitch_release_reprs(struct ice_pf *pf, struct ice_vsi *ctrl_vsi)
 {
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
-	ice_for_each_vf(pf, i) {
-		struct ice_vsi *vsi = pf->vf[i].repr->src_vsi;
-		struct ice_vf *vf = &pf->vf[i];
+	ice_for_each_vf(pf, bkt, vf) {
+		struct ice_vsi *vsi = vf->repr->src_vsi;
 
 		/* Skip VFs that aren't configured */
 		if (!vf->repr->dst)
@@ -238,11 +238,11 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 {
 	struct ice_vsi *ctrl_vsi = pf->switchdev.control_vsi;
 	int max_vsi_num = 0;
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
-	ice_for_each_vf(pf, i) {
-		struct ice_vsi *vsi = pf->vf[i].repr->src_vsi;
-		struct ice_vf *vf = &pf->vf[i];
+	ice_for_each_vf(pf, bkt, vf) {
+		struct ice_vsi *vsi = vf->repr->src_vsi;
 
 		ice_remove_vsi_fltr(&pf->hw, vsi->idx);
 		vf->repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
@@ -282,8 +282,8 @@ static int ice_eswitch_setup_reprs(struct ice_pf *pf)
 		netif_keep_dst(vf->repr->netdev);
 	}
 
-	ice_for_each_vf(pf, i) {
-		struct ice_repr *repr = pf->vf[i].repr;
+	ice_for_each_vf(pf, bkt, vf) {
+		struct ice_repr *repr = vf->repr;
 		struct ice_vsi *vsi = repr->src_vsi;
 		struct metadata_dst *dst;
 
@@ -417,10 +417,11 @@ ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
  */
 static void ice_eswitch_napi_del(struct ice_pf *pf)
 {
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
-	ice_for_each_vf(pf, i)
-		netif_napi_del(&pf->vf[i].repr->q_vector->napi);
+	ice_for_each_vf(pf, bkt, vf)
+		netif_napi_del(&vf->repr->q_vector->napi);
 }
 
 /**
@@ -429,10 +430,11 @@ static void ice_eswitch_napi_del(struct ice_pf *pf)
  */
 static void ice_eswitch_napi_enable(struct ice_pf *pf)
 {
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
-	ice_for_each_vf(pf, i)
-		napi_enable(&pf->vf[i].repr->q_vector->napi);
+	ice_for_each_vf(pf, bkt, vf)
+		napi_enable(&vf->repr->q_vector->napi);
 }
 
 /**
@@ -441,10 +443,11 @@ static void ice_eswitch_napi_enable(struct ice_pf *pf)
  */
 static void ice_eswitch_napi_disable(struct ice_pf *pf)
 {
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
-	ice_for_each_vf(pf, i)
-		napi_disable(&pf->vf[i].repr->q_vector->napi);
+	ice_for_each_vf(pf, bkt, vf)
+		napi_disable(&vf->repr->q_vector->napi);
 }
 
 /**
@@ -613,16 +616,15 @@ int ice_eswitch_configure(struct ice_pf *pf)
  */
 static void ice_eswitch_start_all_tx_queues(struct ice_pf *pf)
 {
-	struct ice_repr *repr;
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
 	if (test_bit(ICE_DOWN, pf->state))
 		return;
 
-	ice_for_each_vf(pf, i) {
-		repr = pf->vf[i].repr;
-		if (repr)
-			ice_repr_start_tx_queues(repr);
+	ice_for_each_vf(pf, bkt, vf) {
+		if (vf->repr)
+			ice_repr_start_tx_queues(vf->repr);
 	}
 }
 
@@ -632,16 +634,15 @@ static void ice_eswitch_start_all_tx_queues(struct ice_pf *pf)
  */
 void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf)
 {
-	struct ice_repr *repr;
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
 	if (test_bit(ICE_DOWN, pf->state))
 		return;
 
-	ice_for_each_vf(pf, i) {
-		repr = pf->vf[i].repr;
-		if (repr)
-			ice_repr_stop_tx_queues(repr);
+	ice_for_each_vf(pf, bkt, vf) {
+		if (vf->repr)
+			ice_repr_stop_tx_queues(vf->repr);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a3492754d0d3..d2f50d41f62d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -316,11 +316,10 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
  */
 static bool ice_active_vfs(struct ice_pf *pf)
 {
-	unsigned int i;
-
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
+	struct ice_vf *vf;
+	unsigned int bkt;
 
+	ice_for_each_vf(pf, bkt, vf) {
 		if (test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
 			return true;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0f1adb592c56..e783ee26c9eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -433,13 +433,14 @@ static irqreturn_t ice_eswitch_msix_clean_rings(int __always_unused irq, void *d
 {
 	struct ice_q_vector *q_vector = (struct ice_q_vector *)data;
 	struct ice_pf *pf = q_vector->vsi->back;
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
 	if (!q_vector->tx.tx_ring && !q_vector->rx.rx_ring)
 		return IRQ_HANDLED;
 
-	ice_for_each_vf(pf, i)
-		napi_schedule(&pf->vf[i].repr->q_vector->napi);
+	ice_for_each_vf(pf, bkt, vf)
+		napi_schedule(&vf->repr->q_vector->napi);
 
 	return IRQ_HANDLED;
 }
@@ -1342,11 +1343,10 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id)
  */
 static int ice_get_vf_ctrl_res(struct ice_pf *pf, struct ice_vsi *vsi)
 {
-	int i;
-
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
+	struct ice_vf *vf;
+	unsigned int bkt;
 
+	ice_for_each_vf(pf, bkt, vf) {
 		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI)
 			return pf->vsi[vf->ctrl_vsi_idx]->base_vector;
 	}
@@ -2891,11 +2891,10 @@ void ice_napi_del(struct ice_vsi *vsi)
  */
 static void ice_free_vf_ctrl_res(struct ice_pf *pf,  struct ice_vsi *vsi)
 {
-	int i;
-
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
+	struct ice_vf *vf;
+	unsigned int bkt;
 
+	ice_for_each_vf(pf, bkt, vf) {
 		if (vf != vsi->vf && vf->ctrl_vsi_idx != ICE_NO_VSI) {
 			return;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1c40e679a6cc..4ba18422063d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -505,7 +505,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct ice_hw *hw = &pf->hw;
 	struct ice_vsi *vsi;
-	unsigned int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
 	dev_dbg(ice_pf_to_dev(pf), "reset_type=%d\n", reset_type);
 
@@ -520,8 +521,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 		ice_vc_notify_reset(pf);
 
 	/* Disable VFs until reset is completed */
-	ice_for_each_vf(pf, i)
-		ice_set_vf_state_qs_dis(&pf->vf[i]);
+	ice_for_each_vf(pf, bkt, vf)
+		ice_set_vf_state_qs_dis(vf);
 
 	if (ice_is_eswitch_mode_switchdev(pf)) {
 		if (reset_type != ICE_RESET_PFR)
@@ -1666,7 +1667,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	unsigned int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 	u32 reg;
 
 	if (!test_and_clear_bit(ICE_MDD_EVENT_PENDING, pf->state)) {
@@ -1754,47 +1756,45 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 	/* Check to see if one of the VFs caused an MDD event, and then
 	 * increment counters and set print pending
 	 */
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
-
-		reg = rd32(hw, VP_MDET_TX_PQM(i));
+	ice_for_each_vf(pf, bkt, vf) {
+		reg = rd32(hw, VP_MDET_TX_PQM(vf->vf_id));
 		if (reg & VP_MDET_TX_PQM_VALID_M) {
-			wr32(hw, VP_MDET_TX_PQM(i), 0xFFFF);
+			wr32(hw, VP_MDET_TX_PQM(vf->vf_id), 0xFFFF);
 			vf->mdd_tx_events.count++;
 			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_PQM detected on VF %d\n",
-					 i);
+					 vf->vf_id);
 		}
 
-		reg = rd32(hw, VP_MDET_TX_TCLAN(i));
+		reg = rd32(hw, VP_MDET_TX_TCLAN(vf->vf_id));
 		if (reg & VP_MDET_TX_TCLAN_VALID_M) {
-			wr32(hw, VP_MDET_TX_TCLAN(i), 0xFFFF);
+			wr32(hw, VP_MDET_TX_TCLAN(vf->vf_id), 0xFFFF);
 			vf->mdd_tx_events.count++;
 			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
-					 i);
+					 vf->vf_id);
 		}
 
-		reg = rd32(hw, VP_MDET_TX_TDPU(i));
+		reg = rd32(hw, VP_MDET_TX_TDPU(vf->vf_id));
 		if (reg & VP_MDET_TX_TDPU_VALID_M) {
-			wr32(hw, VP_MDET_TX_TDPU(i), 0xFFFF);
+			wr32(hw, VP_MDET_TX_TDPU(vf->vf_id), 0xFFFF);
 			vf->mdd_tx_events.count++;
 			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
-					 i);
+					 vf->vf_id);
 		}
 
-		reg = rd32(hw, VP_MDET_RX(i));
+		reg = rd32(hw, VP_MDET_RX(vf->vf_id));
 		if (reg & VP_MDET_RX_VALID_M) {
-			wr32(hw, VP_MDET_RX(i), 0xFFFF);
+			wr32(hw, VP_MDET_RX(vf->vf_id), 0xFFFF);
 			vf->mdd_rx_events.count++;
 			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
 			if (netif_msg_rx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event RX detected on VF %d\n",
-					 i);
+					 vf->vf_id);
 
 			/* Since the queue is disabled on VF Rx MDD events, the
 			 * PF can be configured to reset the VF through ethtool
@@ -1805,9 +1805,9 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 				 * reset, so print the event prior to reset.
 				 */
 				ice_print_vf_rx_mdd_event(vf);
-				mutex_lock(&pf->vf[i].cfg_lock);
-				ice_reset_vf(&pf->vf[i], false);
-				mutex_unlock(&pf->vf[i].cfg_lock);
+				mutex_lock(&vf->cfg_lock);
+				ice_reset_vf(vf, false);
+				mutex_unlock(&vf->cfg_lock);
 			}
 		}
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 0f9826e89381..ffd428719863 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -393,13 +393,11 @@ static void ice_repr_rem(struct ice_vf *vf)
  */
 void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
 {
-	int i;
-
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
+	struct ice_vf *vf;
+	unsigned int bkt;
 
+	ice_for_each_vf(pf, bkt, vf)
 		ice_repr_rem(vf);
-	}
 }
 
 /**
@@ -408,12 +406,11 @@ void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
  */
 int ice_repr_add_for_all_vfs(struct ice_pf *pf)
 {
+	struct ice_vf *vf;
+	unsigned int bkt;
 	int err;
-	int i;
-
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
 
+	ice_for_each_vf(pf, bkt, vf) {
 		err = ice_repr_add(vf);
 		if (err)
 			goto err;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 25b9c1dfc1ac..df7a3f251cd3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1572,15 +1572,15 @@ ice_vc_del_fdir_fltr_post(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
  */
 void ice_flush_fdir_ctx(struct ice_pf *pf)
 {
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
 	if (!test_and_clear_bit(ICE_FD_VF_FLUSH_CTX, pf->state))
 		return;
 
-	ice_for_each_vf(pf, i) {
+	ice_for_each_vf(pf, bkt, vf) {
 		struct device *dev = ice_pf_to_dev(pf);
 		enum virtchnl_fdir_prgm_status status;
-		struct ice_vf *vf = &pf->vf[i];
 		struct ice_vf_fdir_ctx *ctx;
 		unsigned long flags;
 		int ret;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 3e2357460f34..086499a55ba7 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -217,11 +217,10 @@ ice_vc_vf_broadcast(struct ice_pf *pf, enum virtchnl_ops v_opcode,
 		    enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
 {
 	struct ice_hw *hw = &pf->hw;
-	unsigned int i;
-
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
+	struct ice_vf *vf;
+	unsigned int bkt;
 
+	ice_for_each_vf(pf, bkt, vf) {
 		/* Not all vfs are enabled so skip the ones that are not */
 		if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states) &&
 		    !test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
@@ -500,7 +499,8 @@ void ice_free_vfs(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	unsigned int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
 	if (!pf->vf)
 		return;
@@ -519,9 +519,7 @@ void ice_free_vfs(struct ice_pf *pf)
 	else
 		dev_warn(dev, "VFs are assigned - not disabling SR-IOV\n");
 
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
-
+	ice_for_each_vf(pf, bkt, vf) {
 		mutex_lock(&vf->cfg_lock);
 
 		ice_dis_vf_qs(vf);
@@ -1462,24 +1460,26 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct ice_vf *vf;
-	int v, i;
+	unsigned int bkt;
 
 	/* If we don't have any VFs, then there is nothing to reset */
 	if (!pf->num_alloc_vfs)
 		return false;
 
 	/* clear all malicious info if the VFs are getting reset */
-	ice_for_each_vf(pf, i)
-		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs, ICE_MAX_VF_COUNT, i))
-			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n", i);
+	ice_for_each_vf(pf, bkt, vf)
+		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->malvfs,
+					ICE_MAX_VF_COUNT, vf->vf_id))
+			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
+				vf->vf_id);
 
 	/* If VFs have been disabled, there is no need to reset */
 	if (test_and_set_bit(ICE_VF_DIS, pf->state))
 		return false;
 
 	/* Begin reset on all VFs at once */
-	ice_for_each_vf(pf, v)
-		ice_trigger_vf_reset(&pf->vf[v], is_vflr, true);
+	ice_for_each_vf(pf, bkt, vf)
+		ice_trigger_vf_reset(vf, is_vflr, true);
 
 	/* HW requires some time to make sure it can flush the FIFO for a VF
 	 * when it resets it. Poll the VPGEN_VFRSTAT register for each VF in
@@ -1487,36 +1487,34 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	 * the VFs using a simple iterator that increments once that VF has
 	 * finished resetting.
 	 */
-	for (i = 0, v = 0; i < 10 && v < pf->num_alloc_vfs; i++) {
-		/* Check each VF in sequence */
-		while (v < pf->num_alloc_vfs) {
-			u32 reg;
+	ice_for_each_vf(pf, bkt, vf) {
+		bool done = false;
+		unsigned int i;
+		u32 reg;
 
-			vf = &pf->vf[v];
-			reg = rd32(hw, VPGEN_VFRSTAT(vf->vf_id));
-			if (!(reg & VPGEN_VFRSTAT_VFRD_M)) {
-				/* only delay if the check failed */
-				usleep_range(10, 20);
+		for (i = 0; i < 10; i++) {
+			reg = rd32(&pf->hw, VPGEN_VFRSTAT(vf->vf_id));
+			if (reg & VPGEN_VFRSTAT_VFRD_M) {
+				done = true;
 				break;
 			}
 
-			/* If the current VF has finished resetting, move on
-			 * to the next VF in sequence.
+			/* only delay if check failed */
+			usleep_range(10, 20);
+		}
+
+		if (!done) {
+			/* Display a warning if at least one VF didn't manage
+			 * to reset in time, but continue on with the
+			 * operation.
 			 */
-			v++;
+			dev_warn(dev, "VF %u reset check timeout\n", vf->vf_id);
+			break;
 		}
 	}
 
-	/* Display a warning if at least one VF didn't manage to reset in
-	 * time, but continue on with the operation.
-	 */
-	if (v < pf->num_alloc_vfs)
-		dev_warn(dev, "VF reset check timeout\n");
-
 	/* free VF resources to begin resetting the VSI state */
-	ice_for_each_vf(pf, v) {
-		vf = &pf->vf[v];
-
+	ice_for_each_vf(pf, bkt, vf) {
 		mutex_lock(&vf->cfg_lock);
 
 		vf->driver_caps = 0;
@@ -1692,10 +1690,11 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
  */
 void ice_vc_notify_link_state(struct ice_pf *pf)
 {
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
-	ice_for_each_vf(pf, i)
-		ice_vc_notify_vf_link_state(&pf->vf[i]);
+	ice_for_each_vf(pf, bkt, vf)
+		ice_vc_notify_vf_link_state(vf);
 }
 
 /**
@@ -1817,11 +1816,12 @@ static int ice_init_vf_vsi_res(struct ice_vf *vf)
 static int ice_start_vfs(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
-	int retval, i;
-
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
+	unsigned int bkt, it_cnt;
+	struct ice_vf *vf;
+	int retval;
 
+	it_cnt = 0;
+	ice_for_each_vf(pf, bkt, vf) {
 		ice_clear_vf_reset_trigger(vf);
 
 		retval = ice_init_vf_vsi_res(vf);
@@ -1834,17 +1834,20 @@ static int ice_start_vfs(struct ice_pf *pf)
 		set_bit(ICE_VF_STATE_INIT, vf->vf_states);
 		ice_ena_vf_mappings(vf);
 		wr32(hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
+		it_cnt++;
 	}
 
 	ice_flush(hw);
 	return 0;
 
 teardown:
-	for (i = i - 1; i >= 0; i--) {
-		struct ice_vf *vf = &pf->vf[i];
+	ice_for_each_vf(pf, bkt, vf) {
+		if (it_cnt == 0)
+			break;
 
 		ice_dis_vf_mappings(vf);
 		ice_vf_vsi_release(vf);
+		it_cnt--;
 	}
 
 	return retval;
@@ -1856,13 +1859,13 @@ static int ice_start_vfs(struct ice_pf *pf)
  */
 static void ice_set_dflt_settings_vfs(struct ice_pf *pf)
 {
-	int i;
-
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
+	struct ice_vf *vf;
+	unsigned int bkt;
+	u16 vf_id = 0;
 
+	ice_for_each_vf(pf, bkt, vf) {
 		vf->pf = pf;
-		vf->vf_id = i;
+		vf->vf_id = vf_id++;
 		vf->vf_sw_id = pf->first_sw;
 		/* assign default capabilities */
 		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vf->vf_caps);
@@ -2087,19 +2090,19 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 void ice_process_vflr_event(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
-	unsigned int vf_id;
+	struct ice_vf *vf;
+	unsigned int bkt;
 	u32 reg;
 
 	if (!test_and_clear_bit(ICE_VFLR_EVENT_PENDING, pf->state) ||
 	    !pf->num_alloc_vfs)
 		return;
 
-	ice_for_each_vf(pf, vf_id) {
-		struct ice_vf *vf = &pf->vf[vf_id];
+	ice_for_each_vf(pf, bkt, vf) {
 		u32 reg_idx, bit_idx;
 
-		reg_idx = (hw->func_caps.vf_base_id + vf_id) / 32;
-		bit_idx = (hw->func_caps.vf_base_id + vf_id) % 32;
+		reg_idx = (hw->func_caps.vf_base_id + vf->vf_id) / 32;
+		bit_idx = (hw->func_caps.vf_base_id + vf->vf_id) % 32;
 		/* read GLGEN_VFLRSTAT register to find out the flr VFs */
 		reg = rd32(hw, GLGEN_VFLRSTAT(reg_idx));
 		if (reg & BIT(bit_idx)) {
@@ -2131,10 +2134,10 @@ static void ice_vc_reset_vf(struct ice_vf *vf)
  */
 static struct ice_vf *ice_get_vf_from_pfq(struct ice_pf *pf, u16 pfq)
 {
-	unsigned int vf_id;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
-	ice_for_each_vf(pf, vf_id) {
-		struct ice_vf *vf = &pf->vf[vf_id];
+	ice_for_each_vf(pf, bkt, vf) {
 		struct ice_vsi *vsi;
 		u16 rxq_idx;
 
@@ -3009,11 +3012,10 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
  */
 bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
 {
-	int vf_idx;
-
-	ice_for_each_vf(pf, vf_idx) {
-		struct ice_vf *vf = &pf->vf[vf_idx];
+	struct ice_vf *vf;
+	unsigned int bkt;
 
+	ice_for_each_vf(pf, bkt, vf) {
 		/* found a VF that has promiscuous mode configured */
 		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
 		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
@@ -6110,10 +6112,12 @@ int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state)
  */
 static int ice_calc_all_vfs_min_tx_rate(struct ice_pf *pf)
 {
-	int rate = 0, i;
+	struct ice_vf *vf;
+	unsigned int bkt;
+	int rate = 0;
 
-	ice_for_each_vf(pf, i)
-		rate += pf->vf[i].min_tx_rate;
+	ice_for_each_vf(pf, bkt, vf)
+		rate += vf->min_tx_rate;
 
 	return rate;
 }
@@ -6294,7 +6298,8 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int i;
+	struct ice_vf *vf;
+	unsigned int bkt;
 
 	/* check that there are pending MDD events to print */
 	if (!test_and_clear_bit(ICE_MDD_VF_PRINT_PENDING, pf->state))
@@ -6306,9 +6311,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 
 	pf->last_printed_mdd_jiffies = jiffies;
 
-	ice_for_each_vf(pf, i) {
-		struct ice_vf *vf = &pf->vf[i];
-
+	ice_for_each_vf(pf, bkt, vf) {
 		/* only print Rx MDD event message if there are new events */
 		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
 			vf->mdd_rx_events.last_printed =
@@ -6322,7 +6325,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 							vf->mdd_tx_events.count;
 
 			dev_info(dev, "%d Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pM.\n",
-				 vf->mdd_tx_events.count, hw->pf_id, i,
+				 vf->mdd_tx_events.count, hw->pf_id, vf->vf_id,
 				 vf->dev_lan_addr.addr);
 		}
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 4f4961043638..9cccb5afb92d 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -39,8 +39,20 @@
 #define ICE_MAX_VF_RESET_TRIES		40
 #define ICE_MAX_VF_RESET_SLEEP_MS	20
 
-#define ice_for_each_vf(pf, i) \
-	for ((i) = 0; (i) < (pf)->num_alloc_vfs; (i)++)
+/**
+ * ice_for_each_vf - Iterate over each VF entry
+ * @pf: pointer to the PF private structure
+ * @bkt: bucket index used for iteration
+ * @entry: pointer to the VF entry currently being processed in the loop.
+ *
+ * The bkt variable is an unsigned integer iterator used to traverse the VF
+ * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
+ * Use vf->vf_id to get the id number if needed.
+ */
+#define ice_for_each_vf(pf, bkt, entry)					\
+	for ((bkt) = 0, (entry) = &(pf)->vf[0];				\
+	     (bkt) < (pf)->num_alloc_vfs;				\
+	     (bkt)++, (entry)++)
 
 /* Specific VF states */
 enum ice_vf_states {
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
