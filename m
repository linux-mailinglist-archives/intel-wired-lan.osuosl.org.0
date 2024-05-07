Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 943C18BE12A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 13:40:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 493C5406EE;
	Tue,  7 May 2024 11:40:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_agCqL3XBAM; Tue,  7 May 2024 11:40:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E88984065A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715082041;
	bh=pusthctWogBUtpBGAVfseXK9O2qlldqChZqGeyuSf7Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VsWfHGPd/nMeT1bNYNjkyBuILS5li5uVr8NDKzwGyp10nKBtgaPIBJmCcaxx5y3Hq
	 NyNYPg2AuN3aYKRHJuEVMK9J/on0jzihpdSHFbV+W3/087+5ksDuIe4ncoI3LcYk+q
	 aQ2kRcFDAtuCDv0L2t9436Ba5wlFOCG2O+Xjf1n2KucUTsC5JdZ5FNG9iumEZLqUZf
	 CYaFMhLsX3Mu5HFdtQl+Z7lYA+7pw0ZKDbEZNJ7mgucOfQsbOX9ZE5J/92rK21kcgq
	 5fpP0XesuqQu1R/SrPmOTr2yLYD1KuFOTwNBq3vXGXLzvVpdP3HgoTPeCQDrYYq9BY
	 KSSH1XXgu+qEw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E88984065A;
	Tue,  7 May 2024 11:40:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 01A9C1BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF4BE40223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0NjpIShfs-ZE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 11:40:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BC9340154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BC9340154
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BC9340154
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:36 +0000 (UTC)
X-CSE-ConnectionGUID: x3vHj/MMSAeNPdDiiYmjQQ==
X-CSE-MsgGUID: vZNm5Xr6S+WzCE4yjwa3Gg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="22029230"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="22029230"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 04:40:37 -0700
X-CSE-ConnectionGUID: oKPLtcyaR4K86HTrvb6hdw==
X-CSE-MsgGUID: 1UGKtIGrRVSGp+W9AaBmMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="28576704"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 07 May 2024 04:40:33 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 May 2024 13:45:09 +0200
Message-ID: <20240507114516.9765-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715082037; x=1746618037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l7W5eFQF9t2T9BSrPimHeU00OtSeC7QwPLpWgvvnSgM=;
 b=n5surj3/lAzTLk/BwHJxmkG7rV2G1EzsWspwO9ZilncTC37+sQaYITG7
 hGTxtd1z4wrW215rH1Ta5hxmX6TffKD0MwnYWK0/ioqoZnzrC1FCGsZBE
 fI0XxTKOm/i6hfIQmXwWarIbYtmprHmezcaEm9TAf4osNTZ+NKM3hamud
 geAdVqRcvewP2NvPlAA5u61wwt00yXVMDBqseaQgZm+pu/qkwYptpeFdL
 9pRa0e0mSzAQoNo+a2C34Gmg2y3FMK8odvWW7E8I+y1vvvxTv5jPCI9E0
 Lf5pfJXvjV6K++n/7RmrZ8smtlInL3D8amcbj1QMMStvKYJsvh2XeHIpS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n5surj3/
Subject: [Intel-wired-lan] [iwl-next v1 08/14] ice: create port representor
 for SF
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Store subfunction and VF pointer in port representor structure as an
union. Add port representor type to distinguish between each of them.

Keep the same flow of port representor creation, but instead of general
attach function create helpers for VF and subfunction attach function.

Type of port representor can be also known based on VSI type, but it
is more clean to have it directly saved in port representor structure.

Create port representor when subfunction port is created.

Add devlink lock for whole VF port representor creation and destruction.
It is done to be symmetric with what happens in case of SF port
representor. SF port representor is always added or removed with devlink
lock taken. Doing the same with VF port representor simplify logic.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../ethernet/intel/ice/devlink/devlink_port.c |   6 +-
 .../ethernet/intel/ice/devlink/devlink_port.h |   1 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  85 +++++++++---
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +++-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 124 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_repr.h     |  21 ++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
 8 files changed, 187 insertions(+), 80 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index eb552c1b1216..3d887e7ee78c 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -495,7 +495,7 @@ static void ice_dealloc_dynamic_port(struct ice_dynamic_port *dyn_port)
 	struct ice_pf *pf = dyn_port->pf;
 
 	xa_erase(&pf->sf_nums, devlink_port->attrs.pci_sf.sf);
-	devl_port_unregister(devlink_port);
+	ice_eswitch_detach_sf(pf, dyn_port);
 	ice_vsi_free(dyn_port->vsi);
 	xa_erase(&pf->dyn_ports, dyn_port->vsi->idx);
 	kfree(dyn_port);
@@ -786,9 +786,9 @@ ice_alloc_dynamic_port(struct ice_pf *pf,
 		goto unroll_vsi_alloc;
 	}
 
-	err = ice_devlink_create_sf_port(dyn_port);
+	err = ice_eswitch_attach_sf(pf, dyn_port);
 	if (err) {
-		NL_SET_ERR_MSG_MOD(extack, "Port registration failed");
+		NL_SET_ERR_MSG_MOD(extack, "Failed to attach SF to eswitch");
 		goto unroll_xa_insert;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
index e4acd855d9f9..6e14b9e4d621 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
@@ -23,6 +23,7 @@ struct ice_dynamic_port {
 	struct devlink_port devlink_port;
 	struct ice_pf *pf;
 	struct ice_vsi *vsi;
+	unsigned long repr_id;
 	u32 sfnum;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 4f539b1c7781..4aca6620746b 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -452,11 +452,9 @@ static void ice_eswitch_start_reprs(struct ice_pf *pf)
 	ice_eswitch_start_all_tx_queues(pf);
 }
 
-int
-ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
+static int
+ice_eswitch_attach(struct ice_pf *pf, struct ice_repr *repr, unsigned long *id)
 {
-	struct devlink *devlink = priv_to_devlink(pf);
-	struct ice_repr *repr;
 	int err;
 
 	if (pf->eswitch_mode == DEVLINK_ESWITCH_MODE_LEGACY)
@@ -470,13 +468,9 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 
 	ice_eswitch_stop_reprs(pf);
 
-	devl_lock(devlink);
-	repr = ice_repr_add_vf(vf);
-	devl_unlock(devlink);
-	if (IS_ERR(repr)) {
-		err = PTR_ERR(repr);
+	err = repr->ops.add(repr);
+	if (err)
 		goto err_create_repr;
-	}
 
 	err = ice_eswitch_setup_repr(pf, repr);
 	if (err)
@@ -486,7 +480,7 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 	if (err)
 		goto err_xa_alloc;
 
-	vf->repr_id = repr->id;
+	*id = repr->id;
 
 	ice_eswitch_start_reprs(pf);
 
@@ -495,9 +489,7 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 err_xa_alloc:
 	ice_eswitch_release_repr(pf, repr);
 err_setup_repr:
-	devl_lock(devlink);
-	ice_repr_rem_vf(repr);
-	devl_unlock(devlink);
+	repr->ops.rem(repr);
 err_create_repr:
 	if (xa_empty(&pf->eswitch.reprs))
 		ice_eswitch_disable_switchdev(pf);
@@ -506,14 +498,41 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 	return err;
 }
 
-void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
+int ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf)
 {
-	struct ice_repr *repr = xa_load(&pf->eswitch.reprs, vf->repr_id);
+	struct ice_repr *repr = ice_repr_create_vf(vf);
 	struct devlink *devlink = priv_to_devlink(pf);
+	int err;
 
-	if (!repr)
-		return;
+	if (IS_ERR(repr))
+		return PTR_ERR(repr);
 
+	devl_lock(devlink);
+	err = ice_eswitch_attach(pf, repr, &vf->repr_id);
+	if (err)
+		ice_repr_destroy(repr);
+	devl_unlock(devlink);
+
+	return err;
+}
+
+int ice_eswitch_attach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf)
+{
+	struct ice_repr *repr = ice_repr_create_sf(sf);
+	int err;
+
+	if (IS_ERR(repr))
+		return PTR_ERR(repr);
+
+	err = ice_eswitch_attach(pf, repr, &sf->repr_id);
+	if (err)
+		ice_repr_destroy(repr);
+
+	return err;
+}
+
+static void ice_eswitch_detach(struct ice_pf *pf, struct ice_repr *repr)
+{
 	ice_eswitch_stop_reprs(pf);
 	xa_erase(&pf->eswitch.reprs, repr->id);
 
@@ -521,10 +540,12 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
 		ice_eswitch_disable_switchdev(pf);
 
 	ice_eswitch_release_repr(pf, repr);
-	devl_lock(devlink);
-	ice_repr_rem_vf(repr);
+	repr->ops.rem(repr);
+	ice_repr_destroy(repr);
 
 	if (xa_empty(&pf->eswitch.reprs)) {
+		struct devlink *devlink = priv_to_devlink(pf);
+
 		/* since all port representors are destroyed, there is
 		 * no point in keeping the nodes
 		 */
@@ -533,9 +554,31 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
 	} else {
 		ice_eswitch_start_reprs(pf);
 	}
+}
+
+void ice_eswitch_detach_vf(struct ice_pf *pf, struct ice_vf *vf)
+{
+	struct ice_repr *repr = xa_load(&pf->eswitch.reprs, vf->repr_id);
+	struct devlink *devlink = priv_to_devlink(pf);
+
+	if (!repr)
+		return;
+
+	devl_lock(devlink);
+	ice_eswitch_detach(pf, repr);
 	devl_unlock(devlink);
 }
 
+void ice_eswitch_detach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf)
+{
+	struct ice_repr *repr = xa_load(&pf->eswitch.reprs, sf->repr_id);
+
+	if (!repr)
+		return;
+
+	ice_eswitch_detach(pf, repr);
+}
+
 /**
  * ice_eswitch_rebuild - rebuild eswitch
  * @pf: pointer to PF structure
@@ -549,7 +592,7 @@ void ice_eswitch_rebuild(struct ice_pf *pf)
 		return;
 
 	xa_for_each(&pf->eswitch.reprs, id, repr)
-		ice_eswitch_detach(pf, repr->vf);
+		ice_eswitch_detach(pf, repr);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 09194d514f9b..20f301093b36 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -5,11 +5,13 @@
 #define _ICE_ESWITCH_H_
 
 #include <net/devlink.h>
+#include "devlink/devlink_port.h"
 
 #ifdef CONFIG_ICE_SWITCHDEV
-void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf);
-int
-ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf);
+void ice_eswitch_detach_vf(struct ice_pf *pf, struct ice_vf *vf);
+void ice_eswitch_detach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf);
+int ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf);
+int ice_eswitch_attach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf);
 void ice_eswitch_rebuild(struct ice_pf *pf);
 
 int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode);
@@ -32,10 +34,20 @@ struct net_device *ice_eswitch_get_target(struct ice_rx_ring *rx_ring,
 int ice_eswitch_cfg_vsi(struct ice_vsi *vsi, const u8 *mac);
 void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac);
 #else /* CONFIG_ICE_SWITCHDEV */
-static inline void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf) { }
+static inline void
+ice_eswitch_detach_vf(struct ice_pf *pf, struct ice_vf *vf) { }
+
+static inline void
+ice_eswitch_detach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf) { }
+
+static inline int
+ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf)
+{
+	return -EOPNOTSUPP;
+}
 
 static inline int
-ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
+ice_eswitch_attach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf)
 {
 	return -EOPNOTSUPP;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index bdda3401e343..03e6ca3eeedf 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -283,34 +283,29 @@ ice_repr_reg_netdev(struct net_device *netdev)
 	return register_netdev(netdev);
 }
 
-static void ice_repr_remove_node(struct devlink_port *devlink_port)
-{
-	devl_rate_leaf_destroy(devlink_port);
-}
-
 /**
- * ice_repr_rem - remove representor from VF
+ * ice_repr_destroy - remove representor from VF
  * @repr: pointer to representor structure
  */
-static void ice_repr_rem(struct ice_repr *repr)
+void ice_repr_destroy(struct ice_repr *repr)
 {
 	free_percpu(repr->stats);
 	free_netdev(repr->netdev);
 	kfree(repr);
 }
 
-/**
- * ice_repr_rem_vf - remove representor from VF
- * @repr: pointer to representor structure
- */
-void ice_repr_rem_vf(struct ice_repr *repr)
+static void ice_repr_rem_vf(struct ice_repr *repr)
 {
-	ice_repr_remove_node(&repr->vf->devlink_port);
 	ice_eswitch_decfg_vsi(repr->src_vsi, repr->parent_mac);
 	unregister_netdev(repr->netdev);
 	ice_devlink_destroy_vf_port(repr->vf);
 	ice_virtchnl_set_dflt_ops(repr->vf);
-	ice_repr_rem(repr);
+}
+
+static void ice_repr_rem_sf(struct ice_repr *repr)
+{
+	unregister_netdev(repr->netdev);
+	ice_devlink_destroy_sf_port(repr->sf);
 }
 
 static void ice_repr_set_tx_topology(struct ice_pf *pf)
@@ -327,13 +322,10 @@ static void ice_repr_set_tx_topology(struct ice_pf *pf)
 }
 
 /**
- * ice_repr_add - add representor for generic VSI
- * @pf: pointer to PF structure
+ * ice_repr_create - add representor for generic VSI
  * @src_vsi: pointer to VSI structure of device to represent
- * @parent_mac: device MAC address
  */
-static struct ice_repr *
-ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
+static struct ice_repr *ice_repr_create(struct ice_vsi *src_vsi)
 {
 	struct ice_netdev_priv *np;
 	struct ice_repr *repr;
@@ -360,7 +352,10 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 	np = netdev_priv(repr->netdev);
 	np->repr = repr;
 
-	ether_addr_copy(repr->parent_mac, parent_mac);
+	repr->netdev->min_mtu = ETH_MIN_MTU;
+	repr->netdev->max_mtu = ICE_MAX_MTU;
+
+	SET_NETDEV_DEV(repr->netdev, ice_pf_to_dev(src_vsi->back));
 
 	return repr;
 
@@ -371,32 +366,15 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 	return ERR_PTR(err);
 }
 
-struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
+static int ice_repr_add_vf(struct ice_repr *repr)
 {
-	struct ice_repr *repr;
-	struct ice_vsi *vsi;
+	struct ice_vf *vf = repr->vf;
 	int err;
 
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi)
-		return ERR_PTR(-ENOENT);
-
 	err = ice_devlink_create_vf_port(vf);
 	if (err)
-		return ERR_PTR(err);
+		return err;
 
-	repr = ice_repr_add(vf->pf, vsi, vf->hw_lan_addr);
-	if (IS_ERR(repr)) {
-		err = PTR_ERR(repr);
-		goto err_repr_add;
-	}
-
-	repr->vf = vf;
-
-	repr->netdev->min_mtu = ETH_MIN_MTU;
-	repr->netdev->max_mtu = ICE_MAX_MTU;
-
-	SET_NETDEV_DEV(repr->netdev, ice_pf_to_dev(vf->pf));
 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &vf->devlink_port);
 	err = ice_repr_reg_netdev(repr->netdev);
 	if (err)
@@ -409,15 +387,73 @@ struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
 	ice_virtchnl_set_repr_ops(vf);
 	ice_repr_set_tx_topology(vf->pf);
 
-	return repr;
+	return 0;
 
 err_cfg_vsi:
 	unregister_netdev(repr->netdev);
 err_netdev:
-	ice_repr_rem(repr);
-err_repr_add:
 	ice_devlink_destroy_vf_port(vf);
-	return ERR_PTR(err);
+	return err;
+}
+
+struct ice_repr *ice_repr_create_vf(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	struct ice_repr *repr;
+
+	if (!vsi)
+		return ERR_PTR(-EINVAL);
+
+	repr = ice_repr_create(vsi);
+	if (!repr)
+		return ERR_PTR(-ENOMEM);
+
+	repr->type = ICE_REPR_TYPE_VF;
+	repr->vf = vf;
+	repr->ops.add = ice_repr_add_vf;
+	repr->ops.rem = ice_repr_rem_vf;
+
+	ether_addr_copy(repr->parent_mac, vf->hw_lan_addr);
+
+	return repr;
+}
+
+static int ice_repr_add_sf(struct ice_repr *repr)
+{
+	struct ice_dynamic_port *sf = repr->sf;
+	int err;
+
+	err = ice_devlink_create_sf_port(sf);
+	if (err)
+		return err;
+
+	SET_NETDEV_DEVLINK_PORT(repr->netdev, &sf->devlink_port);
+	err = ice_repr_reg_netdev(repr->netdev);
+	if (err)
+		goto err_netdev;
+
+	return 0;
+
+err_netdev:
+	ice_devlink_destroy_sf_port(sf);
+	return err;
+}
+
+struct ice_repr *ice_repr_create_sf(struct ice_dynamic_port *sf)
+{
+	struct ice_repr *repr = ice_repr_create(sf->vsi);
+
+	if (!repr)
+		return ERR_PTR(-ENOMEM);
+
+	repr->type = ICE_REPR_TYPE_SF;
+	repr->sf = sf;
+	repr->ops.add = ice_repr_add_sf;
+	repr->ops.rem = ice_repr_rem_sf;
+
+	ether_addr_copy(repr->parent_mac, sf->hw_addr);
+
+	return repr;
 }
 
 struct ice_repr *ice_repr_get(struct ice_pf *pf, u32 id)
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index 07842620d7a2..dcba07899877 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -15,19 +15,34 @@ struct ice_repr_pcpu_stats {
 	u64 tx_drops;
 };
 
+enum ice_repr_type {
+	ICE_REPR_TYPE_VF,
+	ICE_REPR_TYPE_SF,
+};
+
 struct ice_repr {
 	struct ice_vsi *src_vsi;
-	struct ice_vf *vf;
 	struct net_device *netdev;
 	struct metadata_dst *dst;
 	struct ice_esw_br_port *br_port;
 	struct ice_repr_pcpu_stats __percpu *stats;
 	u32 id;
 	u8 parent_mac[ETH_ALEN];
+	enum ice_repr_type type;
+	union {
+		struct ice_vf *vf;
+		struct ice_dynamic_port *sf;
+	};
+	struct {
+		int (*add)(struct ice_repr *repr);
+		void (*rem)(struct ice_repr *repr);
+	} ops;
 };
 
-struct ice_repr *ice_repr_add_vf(struct ice_vf *vf);
-void ice_repr_rem_vf(struct ice_repr *repr);
+struct ice_repr *ice_repr_create_vf(struct ice_vf *vf);
+struct ice_repr *ice_repr_create_sf(struct ice_dynamic_port *sf);
+
+void ice_repr_destroy(struct ice_repr *repr);
 
 void ice_repr_start_tx_queues(struct ice_repr *repr);
 void ice_repr_stop_tx_queues(struct ice_repr *repr);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 067712f4923f..f0e4c955be34 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -175,7 +175,7 @@ void ice_free_vfs(struct ice_pf *pf)
 	ice_for_each_vf(pf, bkt, vf) {
 		mutex_lock(&vf->cfg_lock);
 
-		ice_eswitch_detach(pf, vf);
+		ice_eswitch_detach_vf(pf, vf);
 		ice_dis_vf_qs(vf);
 
 		if (test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
@@ -598,7 +598,7 @@ static int ice_start_vfs(struct ice_pf *pf)
 			goto teardown;
 		}
 
-		retval = ice_eswitch_attach(pf, vf);
+		retval = ice_eswitch_attach_vf(pf, vf);
 		if (retval) {
 			dev_err(ice_pf_to_dev(pf), "Failed to attach VF %d to eswitch, error %d",
 				vf->vf_id, retval);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 5635e9da2212..a69e91f88d81 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -766,7 +766,7 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 	ice_for_each_vf(pf, bkt, vf) {
 		mutex_lock(&vf->cfg_lock);
 
-		ice_eswitch_detach(pf, vf);
+		ice_eswitch_detach_vf(pf, vf);
 		vf->driver_caps = 0;
 		ice_vc_set_default_allowlist(vf);
 
@@ -782,7 +782,7 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 		ice_vf_rebuild_vsi(vf);
 		ice_vf_post_vsi_rebuild(vf);
 
-		ice_eswitch_attach(pf, vf);
+		ice_eswitch_attach_vf(pf, vf);
 
 		mutex_unlock(&vf->cfg_lock);
 	}
-- 
2.42.0

