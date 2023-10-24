Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EACC7D4EF9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8B614ED4B;
	Tue, 24 Oct 2023 11:35:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8B614ED4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147350;
	bh=3LsX9oOooCWGRHipECUmqVpyU+Qf9vxqVp3Gc+0b5k8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GHfO/j2HJS7qtG0mPTxqFG8fTefEgX3G55TVPeOrhcVmbyyAjuQL1HEqXBVRpedpR
	 TUey9wVWbokNowXb0MWqTd/vRjLJmjTu5A9of8uCnZAeaWE5narUC7KtPc+f2wAoQf
	 sy5yQ/ihZWusfbi3jLGLAw24KxdIbj2b24izNLFxG+MpIhwUXrhYaZIrplBEGQLwIg
	 CscuTEF3EuEDyKnImKGXO8Sjyt0E3nR4R+lHLA670Ih6qJjD1NwvEBnww8x1176jYq
	 SZI81mpezIer1wslwhvHLLtjeEN53ymyoBDK1cc2VJIliS0O1onqNGubPZrSWoBJby
	 fY7qtjR2LGfVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UsKO2KAlr02s; Tue, 24 Oct 2023 11:35:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6117D41768;
	Tue, 24 Oct 2023 11:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6117D41768
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 973E51BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E4BF43122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E4BF43122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FU9_RNGvEBR6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:35:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A167D42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A167D42ECD
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660569"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660569"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146255"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:51 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:27 +0200
Message-ID: <20231024110929.19423-14-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147312; x=1729683312;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eCxmgDFuGCrotH7garTUMJPe+dvYbOM9E+IHGurnswA=;
 b=RMuTH8ODnQX17MGv5+X42xN1BhvQpwh9vk9LY1aSUoYGWxHnglncjPpI
 s0oapY5VO64vMQ0I1WYAXeaajkK9RaF60+a6F23VXwxdw7kdd3tW9ez2c
 ci7Xj/XiNKRY1KNgrInZkEMMUXPHlB0frDGVmhaA/FOPNh28ggfuP+gxO
 XwRmZVldCiMJIGH5SNg2f+PNrZDDV5/PvQMD7tSq7Wf+P+tGPuRD+k/iU
 K2WjrW4YZxFZYpBfgfKijX1kF0cAMr1fa4Qfu81a5TQus1VEXtc531an/
 jiVrGOt++DnlSVTXvaS0kLUSDfqE23Fi2LKZFVhUmwSkiLtBe5oYTXpg3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RMuTH8OD
Subject: [Intel-wired-lan] [PATCH iwl-next v1 13/15] ice: add VF
 representors one by one
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

Implement adding representors one by one. Always set switchdev
environment when first representor is being added and clear environment
when last one is being removed.

Basic switchdev configuration remains the same. Code related to creating
and configuring representor was changed.

Instead of setting whole representors in one function handle only one
representor in setup function. The same with removing representors.

Stop representors when new one is being added or removed. Stop means,
disabling napi, stopping traffic and removing slow path rule. It is
needed because ::q_id will change after remapping, so each representor
will need new rule.

When representor are stopped rebuild control plane VSI with one more or
one less queue. One more if new representor is being added, one less if
representor is being removed.

Bridge port is removed during unregister_netdev() call on PR, so there
is no need to call it from driver side.

After that do remap new queues to correct vector. At the end start all
representors (napi enable, start queues, add slow path rule).

Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 351 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_eswitch.h |  13 +-
 drivers/net/ethernet/intel/ice/ice_repr.c    |  85 +----
 drivers/net/ethernet/intel/ice/ice_repr.h    |   4 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c   |  17 +-
 5 files changed, 228 insertions(+), 242 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index db70a62429e3..de5744aa5c2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -10,6 +10,24 @@
 #include "ice_devlink.h"
 #include "ice_tc_lib.h"
 
+/**
+ * ice_eswitch_del_sp_rules - delete adv rules added on PRs
+ * @pf: pointer to the PF struct
+ *
+ * Delete all advanced rules that were used to forward packets with the
+ * device's VSI index to the corresponding eswitch ctrl VSI queue.
+ */
+static void ice_eswitch_del_sp_rules(struct ice_pf *pf)
+{
+	struct ice_repr *repr;
+	unsigned long id;
+
+	xa_for_each(&pf->eswitch.reprs, id, repr) {
+		if (repr->sp_rule.rid)
+			ice_rem_adv_rule_by_id(&pf->hw, &repr->sp_rule);
+	}
+}
+
 /**
  * ice_eswitch_add_sp_rule - add adv rule with device's VSI index
  * @pf: pointer to PF struct
@@ -18,8 +36,7 @@
  * This function adds advanced rule that forwards packets with
  * device's VSI index to the corresponding eswitch ctrl VSI queue.
  */
-static int
-ice_eswitch_add_sp_rule(struct ice_pf *pf, struct ice_repr *repr)
+static int ice_eswitch_add_sp_rule(struct ice_pf *pf, struct ice_repr *repr)
 {
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
 	struct ice_adv_rule_info rule_info = { 0 };
@@ -54,17 +71,22 @@ ice_eswitch_add_sp_rule(struct ice_pf *pf, struct ice_repr *repr)
 	return err;
 }
 
-/**
- * ice_eswitch_del_sp_rule - delete adv rule with device's VSI index
- * @pf: pointer to the PF struct
- * @repr: pointer to the repr struct
- *
- * Delete the advanced rule that was used to forward packets with the device's
- * VSI index to the corresponding eswitch ctrl VSI queue.
- */
-static void ice_eswitch_del_sp_rule(struct ice_pf *pf, struct ice_repr *repr)
+static int
+ice_eswitch_add_sp_rules(struct ice_pf *pf)
 {
-	ice_rem_adv_rule_by_id(&pf->hw, &repr->sp_rule);
+	struct ice_repr *repr;
+	unsigned long id;
+	int err;
+
+	xa_for_each(&pf->eswitch.reprs, id, repr) {
+		err = ice_eswitch_add_sp_rule(pf, repr);
+		if (err) {
+			ice_eswitch_del_sp_rules(pf);
+			return err;
+		}
+	}
+
+	return 0;
 }
 
 /**
@@ -131,7 +153,7 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 
 /**
  * ice_eswitch_remap_rings_to_vectors - reconfigure rings of eswitch ctrl VSI
- * @pf: pointer to PF struct
+ * @eswitch: pointer to eswitch struct
  *
  * In eswitch number of allocated Tx/Rx rings is equal.
  *
@@ -140,9 +162,9 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
  * will have dedicated 1 Tx/Rx ring pair, so number of rings pair is equal to
  * number of VFs.
  */
-static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
+static void ice_eswitch_remap_rings_to_vectors(struct ice_eswitch *eswitch)
 {
-	struct ice_vsi *vsi = pf->eswitch.control_vsi;
+	struct ice_vsi *vsi = eswitch->control_vsi;
 	unsigned long repr_id = 0;
 	int q_id;
 
@@ -152,7 +174,7 @@ static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 		struct ice_rx_ring *rx_ring;
 		struct ice_repr *repr;
 
-		repr = xa_find(&pf->eswitch.reprs, &repr_id, U32_MAX,
+		repr = xa_find(&eswitch->reprs, &repr_id, U32_MAX,
 			       XA_PRESENT);
 		if (WARN_ON(!repr))
 			break;
@@ -185,100 +207,70 @@ static void ice_eswitch_remap_rings_to_vectors(struct ice_pf *pf)
 }
 
 /**
- * ice_eswitch_release_reprs - clear PR VSIs configuration
+ * ice_eswitch_release_repr - clear PR VSI configuration
  * @pf: poiner to PF struct
+ * @repr: pointer to PR
  */
 static void
-ice_eswitch_release_reprs(struct ice_pf *pf)
+ice_eswitch_release_repr(struct ice_pf *pf, struct ice_repr *repr)
 {
-	struct ice_repr *repr;
-	unsigned long id;
+	struct ice_vsi *vsi = repr->src_vsi;
 
-	xa_for_each(&pf->eswitch.reprs, id, repr) {
-		struct ice_vsi *vsi = repr->src_vsi;
-
-		/* Skip representors that aren't configured */
-		if (!repr->dst)
-			continue;
+	/* Skip representors that aren't configured */
+	if (!repr->dst)
+		return;
 
-		ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
-		metadata_dst_free(repr->dst);
-		repr->dst = NULL;
-		ice_eswitch_del_sp_rule(pf, repr);
-		ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
-					       ICE_FWD_TO_VSI);
+	ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
+	metadata_dst_free(repr->dst);
+	repr->dst = NULL;
+	ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
+				       ICE_FWD_TO_VSI);
 
-		netif_napi_del(&repr->q_vector->napi);
-	}
+	netif_napi_del(&repr->q_vector->napi);
 }
 
 /**
- * ice_eswitch_setup_reprs - configure port reprs to run in switchdev mode
+ * ice_eswitch_setup_repr - configure PR to run in switchdev mode
  * @pf: pointer to PF struct
+ * @repr: pointer to PR struct
  */
-static int ice_eswitch_setup_reprs(struct ice_pf *pf)
+static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
 {
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
-	struct ice_repr *repr;
-	unsigned long id;
-
-	xa_for_each(&pf->eswitch.reprs, id, repr) {
-		struct ice_vsi *vsi = repr->src_vsi;
-
-		ice_remove_vsi_fltr(&pf->hw, vsi->idx);
-		repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
-					       GFP_KERNEL);
-		if (!repr->dst) {
-			ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
-						       ICE_FWD_TO_VSI);
-			goto err;
-		}
+	struct ice_vsi *vsi = repr->src_vsi;
+	struct metadata_dst *dst;
 
-		if (ice_eswitch_add_sp_rule(pf, repr)) {
-			ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
-						       ICE_FWD_TO_VSI);
-			goto err;
-		}
+	ice_remove_vsi_fltr(&pf->hw, vsi->idx);
+	repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX,
+				       GFP_KERNEL);
+	if (!repr->dst)
+		goto err_add_mac_fltr;
 
-		if (ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof)) {
-			ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
-						       ICE_FWD_TO_VSI);
-			ice_eswitch_del_sp_rule(pf, repr);
-			metadata_dst_free(repr->dst);
-			repr->dst = NULL;
-			goto err;
-		}
+	if (ice_vsi_update_security(vsi, ice_vsi_ctx_clear_antispoof))
+		goto err_dst_free;
 
-		if (ice_vsi_add_vlan_zero(vsi)) {
-			ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
-						       ICE_FWD_TO_VSI);
-			ice_eswitch_del_sp_rule(pf, repr);
-			metadata_dst_free(repr->dst);
-			repr->dst = NULL;
-			ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
-			goto err;
-		}
+	if (ice_vsi_add_vlan_zero(vsi))
+		goto err_update_security;
 
-		netif_napi_add(repr->netdev, &repr->q_vector->napi,
-			       ice_napi_poll);
+	netif_napi_add(repr->netdev, &repr->q_vector->napi,
+		       ice_napi_poll);
 
-		netif_keep_dst(repr->netdev);
-	}
+	netif_keep_dst(repr->netdev);
 
-	xa_for_each(&pf->eswitch.reprs, id, repr) {
-		struct ice_vsi *vsi = repr->src_vsi;
-		struct metadata_dst *dst;
-
-		dst = repr->dst;
-		dst->u.port_info.port_id = vsi->vsi_num;
-		dst->u.port_info.lower_dev = repr->netdev;
-		ice_repr_set_traffic_vsi(repr, ctrl_vsi);
-	}
+	dst = repr->dst;
+	dst->u.port_info.port_id = vsi->vsi_num;
+	dst->u.port_info.lower_dev = repr->netdev;
+	ice_repr_set_traffic_vsi(repr, ctrl_vsi);
 
 	return 0;
 
-err:
-	ice_eswitch_release_reprs(pf);
+err_update_security:
+	ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
+err_dst_free:
+	metadata_dst_free(repr->dst);
+	repr->dst = NULL;
+err_add_mac_fltr:
+	ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac, ICE_FWD_TO_VSI);
 
 	return -ENODEV;
 }
@@ -481,31 +473,14 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 	if (ice_eswitch_setup_env(pf))
 		goto err_vsi;
 
-	if (ice_repr_add_for_all_vfs(pf))
-		goto err_repr_add;
-
-	if (ice_eswitch_setup_reprs(pf))
-		goto err_setup_reprs;
-
-	ice_eswitch_remap_rings_to_vectors(pf);
-
-	if (ice_vsi_open(ctrl_vsi))
-		goto err_vsi_open;
-
 	if (ice_eswitch_br_offloads_init(pf))
 		goto err_br_offloads;
 
-	ice_eswitch_napi_enable(&pf->eswitch.reprs);
+	pf->eswitch.is_running = true;
 
 	return 0;
 
 err_br_offloads:
-	ice_vsi_close(ctrl_vsi);
-err_vsi_open:
-	ice_eswitch_release_reprs(pf);
-err_setup_reprs:
-	ice_repr_rem_from_all_vfs(pf);
-err_repr_add:
 	ice_eswitch_release_env(pf);
 err_vsi:
 	ice_vsi_release(ctrl_vsi);
@@ -519,22 +494,12 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 {
 	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
-	struct devlink *devlink = priv_to_devlink(pf);
 
-	ice_eswitch_napi_disable(&pf->eswitch.reprs);
 	ice_eswitch_br_offloads_deinit(pf);
 	ice_eswitch_release_env(pf);
-	ice_eswitch_release_reprs(pf);
 	ice_vsi_release(ctrl_vsi);
-	ice_repr_rem_from_all_vfs(pf);
-
-	/* since all port representors are destroyed, there is
-	 * no point in keeping the nodes
-	 */
-	ice_devlink_rate_clear_tx_topology(ice_get_main_vsi(pf));
-	devl_lock(devlink);
-	devl_rate_nodes_destroy(devlink);
-	devl_unlock(devlink);
+
+	pf->eswitch.is_running = false;
 }
 
 /**
@@ -613,39 +578,6 @@ bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf)
 	return pf->eswitch_mode == DEVLINK_ESWITCH_MODE_SWITCHDEV;
 }
 
-/**
- * ice_eswitch_release - cleanup eswitch
- * @pf: pointer to PF structure
- */
-void ice_eswitch_release(struct ice_pf *pf)
-{
-	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_LEGACY)
-		return;
-
-	ice_eswitch_disable_switchdev(pf);
-	pf->eswitch.is_running = false;
-}
-
-/**
- * ice_eswitch_configure - configure eswitch
- * @pf: pointer to PF structure
- */
-int ice_eswitch_configure(struct ice_pf *pf)
-{
-	int status;
-
-	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_LEGACY ||
-	    pf->eswitch.is_running)
-		return 0;
-
-	status = ice_eswitch_enable_switchdev(pf);
-	if (status)
-		return status;
-
-	pf->eswitch.is_running = true;
-	return 0;
-}
-
 /**
  * ice_eswitch_start_all_tx_queues - start Tx queues of all port representors
  * @pf: pointer to PF structure
@@ -678,6 +610,20 @@ void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf)
 		ice_repr_stop_tx_queues(repr);
 }
 
+static void ice_eswitch_stop_reprs(struct ice_pf *pf)
+{
+	ice_eswitch_del_sp_rules(pf);
+	ice_eswitch_stop_all_tx_queues(pf);
+	ice_eswitch_napi_disable(&pf->eswitch.reprs);
+}
+
+static void ice_eswitch_start_reprs(struct ice_pf *pf)
+{
+	ice_eswitch_napi_enable(&pf->eswitch.reprs);
+	ice_eswitch_start_all_tx_queues(pf);
+	ice_eswitch_add_sp_rules(pf);
+}
+
 /**
  * ice_eswitch_rebuild - rebuild eswitch
  * @pf: pointer to PF structure
@@ -694,11 +640,7 @@ int ice_eswitch_rebuild(struct ice_pf *pf)
 	if (status)
 		return status;
 
-	status = ice_eswitch_setup_reprs(pf);
-	if (status)
-		return status;
-
-	ice_eswitch_remap_rings_to_vectors(pf);
+	ice_eswitch_remap_rings_to_vectors(&pf->eswitch);
 
 	ice_replay_tc_fltrs(pf);
 
@@ -711,3 +653,102 @@ int ice_eswitch_rebuild(struct ice_pf *pf)
 
 	return 0;
 }
+
+static void
+ice_eswitch_cp_change_queues(struct ice_eswitch *eswitch, int change)
+{
+	struct ice_vsi *cp = eswitch->control_vsi;
+
+	ice_vsi_close(cp);
+
+	cp->req_txq = cp->alloc_txq + change;
+	cp->req_rxq = cp->alloc_rxq + change;
+	ice_vsi_rebuild(cp, ICE_VSI_FLAG_NO_INIT);
+	ice_eswitch_remap_rings_to_vectors(eswitch);
+
+	ice_vsi_open(cp);
+}
+
+int
+ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
+{
+	struct ice_repr *repr;
+	int change = 1;
+	int err;
+
+	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_LEGACY)
+		return 0;
+
+	if (xa_empty(&pf->eswitch.reprs)) {
+		err = ice_eswitch_enable_switchdev(pf);
+		if (err)
+			return err;
+		/* Control plane VSI is created with 1 queue as default */
+		change = 0;
+	}
+
+	ice_eswitch_stop_reprs(pf);
+
+	repr = ice_repr_add_vf(vf);
+	if (IS_ERR(repr))
+		goto err_create_repr;
+
+	err = ice_eswitch_setup_repr(pf, repr);
+	if (err)
+		goto err_setup_repr;
+
+	err = xa_alloc(&pf->eswitch.reprs, &repr->id, repr,
+		       XA_LIMIT(1, INT_MAX), GFP_KERNEL);
+	if (err)
+		goto err_xa_alloc;
+
+	vf->repr_id = repr->id;
+
+	ice_eswitch_cp_change_queues(&pf->eswitch, change);
+	ice_eswitch_start_reprs(pf);
+
+	return 0;
+
+err_xa_alloc:
+	ice_eswitch_release_repr(pf, repr);
+err_setup_repr:
+	ice_repr_rem_vf(repr);
+err_create_repr:
+	if (xa_empty(&pf->eswitch.reprs))
+		ice_eswitch_disable_switchdev(pf);
+	ice_eswitch_start_reprs(pf);
+
+	return err;
+}
+
+void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
+{
+	struct ice_repr *repr = xa_load(&pf->eswitch.reprs, vf->repr_id);
+	struct devlink *devlink = priv_to_devlink(pf);
+
+	if (!repr)
+		return;
+
+	ice_eswitch_stop_reprs(pf);
+	xa_erase(&pf->eswitch.reprs, repr->id);
+
+	if (xa_empty(&pf->eswitch.reprs))
+		ice_eswitch_disable_switchdev(pf);
+	else
+		ice_eswitch_cp_change_queues(&pf->eswitch, -1);
+
+	ice_eswitch_release_repr(pf, repr);
+	ice_repr_rem_vf(repr);
+
+	if (xa_empty(&pf->eswitch.reprs)) {
+		/* since all port representors are destroyed, there is
+		 * no point in keeping the nodes
+		 */
+		ice_devlink_rate_clear_tx_topology(ice_get_main_vsi(pf));
+		devl_lock(devlink);
+		devl_rate_nodes_destroy(devlink);
+		devl_unlock(devlink);
+	} else {
+		ice_eswitch_start_reprs(pf);
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index ff110bd9fc4c..59d51c0d14e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -7,8 +7,9 @@
 #include <net/devlink.h>
 
 #ifdef CONFIG_ICE_SWITCHDEV
-void ice_eswitch_release(struct ice_pf *pf);
-int ice_eswitch_configure(struct ice_pf *pf);
+void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf);
+int
+ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf);
 int ice_eswitch_rebuild(struct ice_pf *pf);
 
 int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode);
@@ -26,7 +27,13 @@ void ice_eswitch_set_target_vsi(struct sk_buff *skb,
 netdev_tx_t
 ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 #else /* CONFIG_ICE_SWITCHDEV */
-static inline void ice_eswitch_release(struct ice_pf *pf) { }
+static inline void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf) { }
+
+static inline int
+ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
+{
+	return -EOPNOTSUPP;
+}
 
 static inline void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf) { }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index fa36cc932c5f..5f30fb131f74 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -287,44 +287,26 @@ static void ice_repr_remove_node(struct devlink_port *devlink_port)
 
 /**
  * ice_repr_rem - remove representor from VF
- * @reprs: xarray storing representors
  * @repr: pointer to representor structure
  */
-static void ice_repr_rem(struct xarray *reprs, struct ice_repr *repr)
+static void ice_repr_rem(struct ice_repr *repr)
 {
-	xa_erase(reprs, repr->id);
 	kfree(repr->q_vector);
 	free_netdev(repr->netdev);
 	kfree(repr);
 }
 
-static void ice_repr_rem_vf(struct ice_vf *vf)
-{
-	struct ice_repr *repr = xa_load(&vf->pf->eswitch.reprs, vf->repr_id);
-
-	if (!repr)
-		return;
-
-	ice_repr_remove_node(&repr->vf->devlink_port);
-	unregister_netdev(repr->netdev);
-	ice_repr_rem(&vf->pf->eswitch.reprs, repr);
-	ice_devlink_destroy_vf_port(vf);
-	ice_virtchnl_set_dflt_ops(vf);
-}
-
 /**
- * ice_repr_rem_from_all_vfs - remove port representor for all VFs
- * @pf: pointer to PF structure
+ * ice_repr_rem_vf - remove representor from VF
+ * @repr: pointer to representor structure
  */
-void ice_repr_rem_from_all_vfs(struct ice_pf *pf)
+void ice_repr_rem_vf(struct ice_repr *repr)
 {
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
-
-	ice_for_each_vf(pf, bkt, vf)
-		ice_repr_rem_vf(vf);
+	ice_repr_remove_node(&repr->vf->devlink_port);
+	unregister_netdev(repr->netdev);
+	ice_devlink_destroy_vf_port(repr->vf);
+	ice_virtchnl_set_dflt_ops(repr->vf);
+	ice_repr_rem(repr);
 }
 
 static void ice_repr_set_tx_topology(struct ice_pf *pf)
@@ -374,19 +356,12 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 		goto err_alloc_q_vector;
 	}
 	repr->q_vector = q_vector;
-
-	err = xa_alloc(&pf->eswitch.reprs, &repr->id, repr,
-		       XA_LIMIT(1, INT_MAX), GFP_KERNEL);
-	if (err)
-		goto err_xa_alloc;
 	repr->q_id = repr->id;
 
 	ether_addr_copy(repr->parent_mac, parent_mac);
 
 	return repr;
 
-err_xa_alloc:
-	kfree(repr->q_vector);
 err_alloc_q_vector:
 	free_netdev(repr->netdev);
 err_alloc:
@@ -394,7 +369,7 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 	return ERR_PTR(err);
 }
 
-static struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
+struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
 {
 	struct ice_repr *repr;
 	struct ice_vsi *vsi;
@@ -414,7 +389,6 @@ static struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
 		goto err_repr_add;
 	}
 
-	vf->repr_id = repr->id;
 	repr->vf = vf;
 
 	repr->netdev->min_mtu = ETH_MIN_MTU;
@@ -432,49 +406,12 @@ static struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
 	return repr;
 
 err_netdev:
-	ice_repr_rem(&vf->pf->eswitch.reprs, repr);
+	ice_repr_rem(repr);
 err_repr_add:
 	ice_devlink_destroy_vf_port(vf);
 	return ERR_PTR(err);
 }
 
-/**
- * ice_repr_add_for_all_vfs - add port representor for all VFs
- * @pf: pointer to PF structure
- */
-int ice_repr_add_for_all_vfs(struct ice_pf *pf)
-{
-	struct devlink *devlink;
-	struct ice_repr *repr;
-	struct ice_vf *vf;
-	unsigned int bkt;
-	int err;
-
-	lockdep_assert_held(&pf->vfs.table_lock);
-
-	ice_for_each_vf(pf, bkt, vf) {
-		repr = ice_repr_add_vf(vf);
-		if (IS_ERR(repr)) {
-			err = PTR_ERR(repr);
-			goto err;
-		}
-	}
-
-	/* only export if ADQ and DCB disabled */
-	if (ice_is_adq_active(pf) || ice_is_dcb_active(pf))
-		return 0;
-
-	devlink = priv_to_devlink(pf);
-	ice_devlink_rate_init_tx_topology(devlink, ice_get_main_vsi(pf));
-
-	return 0;
-
-err:
-	ice_repr_rem_from_all_vfs(pf);
-
-	return err;
-}
-
 struct ice_repr *ice_repr_get_by_vsi(struct ice_vsi *vsi)
 {
 	if (!vsi->vf)
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index a3cd256d82b7..f9aede315716 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -22,8 +22,8 @@ struct ice_repr {
 #endif
 };
 
-int ice_repr_add_for_all_vfs(struct ice_pf *pf);
-void ice_repr_rem_from_all_vfs(struct ice_pf *pf);
+struct ice_repr *ice_repr_add_vf(struct ice_vf *vf);
+void ice_repr_rem_vf(struct ice_repr *repr);
 
 void ice_repr_start_tx_queues(struct ice_repr *repr);
 void ice_repr_stop_tx_queues(struct ice_repr *repr);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 2a5e6616cc0a..51f5f420d632 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -174,11 +174,10 @@ void ice_free_vfs(struct ice_pf *pf)
 
 	mutex_lock(&vfs->table_lock);
 
-	ice_eswitch_release(pf);
-
 	ice_for_each_vf(pf, bkt, vf) {
 		mutex_lock(&vf->cfg_lock);
 
+		ice_eswitch_detach(pf, vf);
 		ice_dis_vf_qs(vf);
 
 		if (test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
@@ -614,6 +613,14 @@ static int ice_start_vfs(struct ice_pf *pf)
 			goto teardown;
 		}
 
+		retval = ice_eswitch_attach(pf, vf);
+		if (retval) {
+			dev_err(ice_pf_to_dev(pf), "Failed to attach VF %d to eswitch, error %d",
+				vf->vf_id, retval);
+			ice_vf_vsi_release(vf);
+			goto teardown;
+		}
+
 		set_bit(ICE_VF_STATE_INIT, vf->vf_states);
 		ice_ena_vf_mappings(vf);
 		wr32(hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
@@ -932,12 +939,6 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 
 	clear_bit(ICE_VF_DIS, pf->state);
 
-	ret = ice_eswitch_configure(pf);
-	if (ret) {
-		dev_err(dev, "Failed to configure eswitch, err %d\n", ret);
-		goto err_unroll_sriov;
-	}
-
 	/* rearm global interrupts */
 	if (test_and_clear_bit(ICE_OICR_INTR_DIS, pf->state))
 		ice_irq_dynamic_ena(hw, NULL, NULL);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
