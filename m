Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BA48D135F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 06:33:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A6D2405C5;
	Tue, 28 May 2024 04:33:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rVsDSnjdF5DI; Tue, 28 May 2024 04:33:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FC51405CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716870816;
	bh=m+yKNw/lHEDBqVmZxSjcPXgbW1q0ENPejVVkU5aBJ80=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=10K7ft/AzHSwHVFgUnLMFpohLOXU6Kn5iaZQpblVfQXeSL5si1ZmECDv6x5QvpltF
	 mIoNurbtgNokL0/scsZ7e+HCDc9240Dt34O4WnY1UkZ/fbeokf3UFmbEYuoJGZc48h
	 00jN00i/PhdoUwn7LwQSv9XsMnmUZ4IGIlkKP4ZbPCpg3a7FxbznNsZPutoKFrq5Tj
	 D+tUycr1Jk+vdBI6ioyc07Obbhs4Q1Xi+iUKslZRvLWoZ7g5biTlYfMTrcXmi63Pu8
	 +bXuB/Pc0x2DVW7tx+s6TKg8JS2QbSPSHpHAcRwEortzMcJhH+7xBv+2HNkCcVxibn
	 bIZpkIIw6XmLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FC51405CC;
	Tue, 28 May 2024 04:33:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C610B1D23B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB7004059F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rRdRhbTer_wf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 04:33:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 39CE040592
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39CE040592
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39CE040592
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:33 +0000 (UTC)
X-CSE-ConnectionGUID: lmKcjRGkQFGUOB1fVgXPNA==
X-CSE-MsgGUID: yDT0ZephShKsr6mVJzL8ww==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13020121"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13020121"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 21:33:33 -0700
X-CSE-ConnectionGUID: tXEU3feRTq6SyTV+OIvb7g==
X-CSE-MsgGUID: XtAjqFbiQpyToA/Z0jaJjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="66152423"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 27 May 2024 21:33:30 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 06:38:06 +0200
Message-ID: <20240528043813.1342483-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716870813; x=1748406813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3ypPBnnoQXKe25yVQwCqV6fxsy1yQwbaq+9vLRTXxOM=;
 b=Ly/0sxOdmbTCmSQGiuGRaavWG5l3JgT7alv18Up/LNHNOrv3zvsLi4Bp
 XtEFSOSYb5+U5Nt6zdS8NBV20dhuIsmTUP5cGC9nW8wxkhjlu7VqucJfA
 +lqpEp+FtnLOE02WXywgeheryyMY/xfcPrBa1AitsgMqOWGSox208MGWu
 O//6K8PuO9wUS76CHkFCe+t9Qx64naxEIZ82scAnozKnMJ9z2o6FgIrNu
 JXOJ0QORtHsidPMLd22LGVjkrok3TL5kpT+s+CD/1wX58Tc/OKLYmVGVK
 mt3EA3bJD1hnp+8B4cMqXen71aEbyIhyu3FDoWTiWyWg57SB/j5enGUA8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ly/0sxOd
Subject: [Intel-wired-lan] [iwl-next v3 08/15] ice: make representor code
 generic
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
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Keep the same flow of port representor creation, but instead of general
attach function create helpers for specific representor type.

Store function pointer for add and remove representor.

Type of port representor can be also known based on VSI type, but it
is more clean to have it directly saved in port representor structure.

Add devlink lock for whole port representor creation and destruction.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../ethernet/intel/ice/devlink/devlink_port.h |  2 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 74 +++++++++++-----
 drivers/net/ethernet/intel/ice/ice_eswitch.h  | 11 +--
 drivers/net/ethernet/intel/ice/ice_repr.c     | 88 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_repr.h     | 16 +++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  4 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  4 +-
 7 files changed, 122 insertions(+), 77 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
index 97b21b58c300..479d2b976745 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
@@ -14,6 +14,7 @@
  * @devlink_port: the associated devlink port structure
  * @pf: pointer to the PF private structure
  * @vsi: the VSI associated with this port
+ * @repr_id: the representor ID
  * @sfnum: the subfunction ID
  *
  * An instance of a dynamically added devlink port. Each port flavour
@@ -24,6 +25,7 @@ struct ice_dynamic_port {
 	struct devlink_port devlink_port;
 	struct ice_pf *pf;
 	struct ice_vsi *vsi;
+	unsigned long repr_id;
 	u32 sfnum;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 4f539b1c7781..a4e7ed9fbaf5 100644
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
@@ -506,14 +498,35 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 	return err;
 }
 
-void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
+/**
+ * ice_eswitch_attach_vf - attach VF to a eswitch
+ * @pf: pointer to PF structure
+ * @vf: pointer to VF structure to be attached
+ *
+ * During attaching port representor for VF is created.
+ *
+ * Return: zero on success or an error code on failure.
+ */
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
+static void ice_eswitch_detach(struct ice_pf *pf, struct ice_repr *repr)
+{
 	ice_eswitch_stop_reprs(pf);
 	xa_erase(&pf->eswitch.reprs, repr->id);
 
@@ -521,10 +534,12 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
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
@@ -533,6 +548,23 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
 	} else {
 		ice_eswitch_start_reprs(pf);
 	}
+}
+
+/**
+ * ice_eswitch_detach_vf - detach VF from a eswitch
+ * @pf: pointer to PF structure
+ * @vf: pointer to VF structure to be detached
+ */
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
 
@@ -549,7 +581,7 @@ void ice_eswitch_rebuild(struct ice_pf *pf)
 		return;
 
 	xa_for_each(&pf->eswitch.reprs, id, repr)
-		ice_eswitch_detach(pf, repr->vf);
+		ice_eswitch_detach(pf, repr);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 09194d514f9b..265b2af055b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -5,11 +5,11 @@
 #define _ICE_ESWITCH_H_
 
 #include <net/devlink.h>
+#include "devlink/devlink_port.h"
 
 #ifdef CONFIG_ICE_SWITCHDEV
-void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf);
-int
-ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf);
+void ice_eswitch_detach_vf(struct ice_pf *pf, struct ice_vf *vf);
+int ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf);
 void ice_eswitch_rebuild(struct ice_pf *pf);
 
 int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode);
@@ -32,10 +32,11 @@ struct net_device *ice_eswitch_get_target(struct ice_rx_ring *rx_ring,
 int ice_eswitch_cfg_vsi(struct ice_vsi *vsi, const u8 *mac);
 void ice_eswitch_decfg_vsi(struct ice_vsi *vsi, const u8 *mac);
 #else /* CONFIG_ICE_SWITCHDEV */
-static inline void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf) { }
+static inline void
+ice_eswitch_detach_vf(struct ice_pf *pf, struct ice_vf *vf) { }
 
 static inline int
-ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
+ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf)
 {
 	return -EOPNOTSUPP;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index bdda3401e343..5d71f623b1e0 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -283,34 +283,23 @@ ice_repr_reg_netdev(struct net_device *netdev)
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
 }
 
 static void ice_repr_set_tx_topology(struct ice_pf *pf)
@@ -327,13 +316,10 @@ static void ice_repr_set_tx_topology(struct ice_pf *pf)
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
@@ -360,7 +346,10 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
 	np = netdev_priv(repr->netdev);
 	np->repr = repr;
 
-	ether_addr_copy(repr->parent_mac, parent_mac);
+	repr->netdev->min_mtu = ETH_MIN_MTU;
+	repr->netdev->max_mtu = ICE_MAX_MTU;
+
+	SET_NETDEV_DEV(repr->netdev, ice_pf_to_dev(src_vsi->back));
 
 	return repr;
 
@@ -371,32 +360,15 @@ ice_repr_add(struct ice_pf *pf, struct ice_vsi *src_vsi, const u8 *parent_mac)
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
-
-	repr = ice_repr_add(vf->pf, vsi, vf->hw_lan_addr);
-	if (IS_ERR(repr)) {
-		err = PTR_ERR(repr);
-		goto err_repr_add;
-	}
-
-	repr->vf = vf;
+		return err;
 
-	repr->netdev->min_mtu = ETH_MIN_MTU;
-	repr->netdev->max_mtu = ICE_MAX_MTU;
-
-	SET_NETDEV_DEV(repr->netdev, ice_pf_to_dev(vf->pf));
 	SET_NETDEV_DEVLINK_PORT(repr->netdev, &vf->devlink_port);
 	err = ice_repr_reg_netdev(repr->netdev);
 	if (err)
@@ -409,15 +381,43 @@ struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
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
+/**
+ * ice_repr_create_vf - add representor for VF VSI
+ * @vf: VF to create port representor on
+ *
+ * Set correct representor type for VF and functions pointer.
+ *
+ * Return: created port representor on success, error otherwise
+ */
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
 }
 
 struct ice_repr *ice_repr_get(struct ice_pf *pf, u32 id)
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index 07842620d7a2..d3454b6f5d41 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -15,19 +15,29 @@ struct ice_repr_pcpu_stats {
 	u64 tx_drops;
 };
 
+enum ice_repr_type {
+	ICE_REPR_TYPE_VF,
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
+	struct ice_vf *vf;
+	struct {
+		int (*add)(struct ice_repr *repr);
+		void (*rem)(struct ice_repr *repr);
+	} ops;
 };
 
-struct ice_repr *ice_repr_add_vf(struct ice_vf *vf);
-void ice_repr_rem_vf(struct ice_repr *repr);
+struct ice_repr *ice_repr_create_vf(struct ice_vf *vf);
+
+void ice_repr_destroy(struct ice_repr *repr);
 
 void ice_repr_start_tx_queues(struct ice_repr *repr);
 void ice_repr_stop_tx_queues(struct ice_repr *repr);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index dd1583b0fd90..5e8049ed8c82 100644
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

