Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011A54C0612
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 785A240621;
	Wed, 23 Feb 2022 00:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQF5rPTyhsi3; Wed, 23 Feb 2022 00:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD1CF40608;
	Wed, 23 Feb 2022 00:28:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02CD91BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B1B760B6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EBXT3_FUypeO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8685F60F13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576041; x=1677112041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fg5mpsh+eVy0bzNReseAUAkWtL4QDz9sNIugtj639zg=;
 b=lqmWLljUhL74Zx6amLnEIv7w9JCd0uzFmyka6LXDG6agDYU3fv8SOxy3
 ajStAAUfCTsNzlHCvAovuEojCdVpZO3FQeaWKDnj5Tu5afCrSXJRS9rpo
 xKwevsDVb1pUasAChsXzr/pedOwXFSggK84Ea2oMLH60rBtng1h1XUF2w
 jwbSBxY3EsNVs8SkVzvgRrKSzIx5W/ZoT/Jo2HxTluI8OfJIFfuFH0kGK
 1BC2QreZG/n2bUpKfr8fa96VzNUHeC4JVLn3Yo6OeYf3WoxbZkfyXsUCa
 Suu6lTFZovtyBhKcY5clNyqhkX03OVMECbnpJIazV3nP4NY39Wr52xfQt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468980"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468980"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728031"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:59 -0800
Message-Id: <20220223002712.2771809-13-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 12/25] ice: introduce
 ice_vf_lib.c, ice_vf_lib.h, and ice_vf_lib_private.h
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

Introduce the ice_vf_lib.c file along with the ice_vf_lib.h and
ice_vf_lib_private.h header files.

These files will house the generic VF structures and access functions.
Move struct ice_vf and its dependent definitions into this new header
file.

The ice_vf_lib.c is compiled conditionally on CONFIG_PCI_IOV. Some of
its functionality is required by all driver files. However, some of its
functionality will only be required by other files also conditionally
compiled based on CONFIG_PCI_IOV.

Declaring these functions used only in CONFIG_PCI_IOV files in
ice_vf_lib.h is verbose. This is because we must provide a fallback
implementation for each function in this header since it is included in
files which may not be compiled with CONFIG_PCI_IOV.

Instead, introduce a new ice_vf_lib_private.h header which verifies that
CONFIG_PCI_IOV is enabled. This header is intended to be directly
included in .c files which are CONFIG_PCI_IOV only. Add a #error
indication that will complain if the file ever gets included by another
C file on a kernel with CONFIG_PCI_IOV disabled. Add a comment
indicating the nature of the file and why it is useful.

This makes it so that we can easily define functions exposed from
ice_vf_lib.c into other virtualization files without needing to add
fallback implementations for every single function.

This begins the path to separate out generic code which will be reused
by other virtualization implementations from ice_sriov.h and ice_sriov.c

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   3 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 509 +----------------
 drivers/net/ethernet/intel/ice/ice_sriov.h    | 203 +------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 519 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   | 259 +++++++++
 .../ethernet/intel/ice/ice_vf_lib_private.h   |  39 ++
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   1 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.h    |   1 +
 8 files changed, 823 insertions(+), 711 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib_private.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 816e81832b7f..c21a0aa897a5 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -34,11 +34,12 @@ ice-y := ice_main.o	\
 	 ice_repr.o	\
 	 ice_tc_lib.o
 ice-$(CONFIG_PCI_IOV) +=	\
+	ice_sriov.o		\
 	ice_virtchnl_allowlist.o \
 	ice_virtchnl_fdir.o	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
-	ice_sriov.o
+	ice_vf_lib.o
 ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
 ice-$(CONFIG_TTY) += ice_gnss.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 432841ab4352..2f74fcf51c2c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -2,6 +2,7 @@
 /* Copyright (c) 2018, Intel Corporation. */
 
 #include "ice.h"
+#include "ice_vf_lib_private.h"
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_fltr.h"
@@ -165,134 +166,6 @@ ice_vc_hash_field_match_type ice_vc_hash_field_list[] = {
 		BIT_ULL(ICE_FLOW_FIELD_IDX_PFCP_SEID)},
 };
 
-/**
- * ice_get_vf_vsi - get VF's VSI based on the stored index
- * @vf: VF used to get VSI
- */
-struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
-{
-	return vf->pf->vsi[vf->lan_vsi_idx];
-}
-
-/**
- * ice_get_vf_by_id - Get pointer to VF by ID
- * @pf: the PF private structure
- * @vf_id: the VF ID to locate
- *
- * Locate and return a pointer to the VF structure associated with a given ID.
- * Returns NULL if the ID does not have a valid VF structure associated with
- * it.
- *
- * This function takes a reference to the VF, which must be released by
- * calling ice_put_vf() once the caller is finished accessing the VF structure
- * returned.
- */
-struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
-{
-	struct ice_vf *vf;
-
-	rcu_read_lock();
-	hash_for_each_possible_rcu(pf->vfs.table, vf, entry, vf_id) {
-		if (vf->vf_id == vf_id) {
-			struct ice_vf *found;
-
-			if (kref_get_unless_zero(&vf->refcnt))
-				found = vf;
-			else
-				found = NULL;
-
-			rcu_read_unlock();
-			return found;
-		}
-	}
-	rcu_read_unlock();
-
-	return NULL;
-}
-
-/**
- * ice_release_vf - Release VF associated with a refcount
- * @ref: the kref decremented to zero
- *
- * Callback function for kref_put to release a VF once its reference count has
- * hit zero.
- */
-static void ice_release_vf(struct kref *ref)
-{
-	struct ice_vf *vf = container_of(ref, struct ice_vf, refcnt);
-
-	mutex_destroy(&vf->cfg_lock);
-
-	kfree_rcu(vf, rcu);
-}
-
-/**
- * ice_put_vf - Release a reference to a VF
- * @vf: the VF structure to decrease reference count on
- *
- * This must be called after ice_get_vf_by_id() once the reference to the VF
- * structure is no longer used. Otherwise, the VF structure will never be
- * freed.
- */
-void ice_put_vf(struct ice_vf *vf)
-{
-	kref_put(&vf->refcnt, ice_release_vf);
-}
-
-/**
- * ice_has_vfs - Return true if the PF has any associated VFs
- * @pf: the PF private structure
- *
- * Return whether or not the PF has any allocated VFs.
- *
- * Note that this function only guarantees that there are no VFs at the point
- * of calling it. It does not guarantee that no more VFs will be added.
- */
-bool ice_has_vfs(struct ice_pf *pf)
-{
-	/* A simple check that the hash table is not empty does not require
-	 * the mutex or rcu_read_lock.
-	 */
-	return !hash_empty(pf->vfs.table);
-}
-
-/**
- * ice_get_num_vfs - Get number of allocated VFs
- * @pf: the PF private structure
- *
- * Return the total number of allocated VFs. NOTE: VF IDs are not guaranteed
- * to be contiguous. Do not assume that a VF ID is guaranteed to be less than
- * the output of this function.
- */
-u16 ice_get_num_vfs(struct ice_pf *pf)
-{
-	struct ice_vf *vf;
-	unsigned int bkt;
-	u16 num_vfs = 0;
-
-	rcu_read_lock();
-	ice_for_each_vf_rcu(pf, bkt, vf)
-		num_vfs++;
-	rcu_read_unlock();
-
-	return num_vfs;
-}
-
-/**
- * ice_check_vf_init - helper to check if VF init complete
- * @pf: pointer to the PF structure
- * @vf: the pointer to the VF to check
- */
-static int ice_check_vf_init(struct ice_pf *pf, struct ice_vf *vf)
-{
-	if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
-		dev_err(ice_pf_to_dev(pf), "VF ID: %u in reset. Try again.\n",
-			vf->vf_id);
-		return -EBUSY;
-	}
-	return 0;
-}
-
 /**
  * ice_free_vf_entries - Free all VF entries from the hash table
  * @pf: pointer to the PF structure
@@ -376,39 +249,6 @@ ice_set_pfe_link(struct ice_vf *vf, struct virtchnl_pf_event *pfe,
 	}
 }
 
-/**
- * ice_vf_has_no_qs_ena - check if the VF has any Rx or Tx queues enabled
- * @vf: the VF to check
- *
- * Returns true if the VF has no Rx and no Tx queues enabled and returns false
- * otherwise
- */
-static bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
-{
-	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
-		!bitmap_weight(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
-}
-
-/**
- * ice_is_vf_link_up - check if the VF's link is up
- * @vf: VF to check if link is up
- */
-static bool ice_is_vf_link_up(struct ice_vf *vf)
-{
-	struct ice_pf *pf = vf->pf;
-
-	if (ice_check_vf_init(pf, vf))
-		return false;
-
-	if (ice_vf_has_no_qs_ena(vf))
-		return false;
-	else if (vf->link_forced)
-		return vf->link_up;
-	else
-		return pf->hw.port_info->phy.link_info.link_info &
-			ICE_AQ_LINK_UP;
-}
-
 /**
  * ice_vc_notify_vf_link_state - Inform a VF of link status
  * @vf: pointer to the VF structure
@@ -434,16 +274,6 @@ void ice_vc_notify_vf_link_state(struct ice_vf *vf)
 			      sizeof(pfe), NULL);
 }
 
-/**
- * ice_vf_invalidate_vsi - invalidate vsi_idx/vsi_num to remove VSI access
- * @vf: VF to remove access to VSI for
- */
-static void ice_vf_invalidate_vsi(struct ice_vf *vf)
-{
-	vf->lan_vsi_idx = ICE_NO_VSI;
-	vf->lan_vsi_num = ICE_NO_VSI;
-}
-
 /**
  * ice_vf_vsi_release - invalidate the VF's VSI after freeing it
  * @vf: invalidate this VF's VSI after freeing it
@@ -454,25 +284,6 @@ static void ice_vf_vsi_release(struct ice_vf *vf)
 	ice_vf_invalidate_vsi(vf);
 }
 
-/**
- * ice_vf_ctrl_invalidate_vsi - invalidate ctrl_vsi_idx to remove VSI access
- * @vf: VF that control VSI is being invalidated on
- */
-static void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf)
-{
-	vf->ctrl_vsi_idx = ICE_NO_VSI;
-}
-
-/**
- * ice_vf_ctrl_vsi_release - invalidate the VF's control VSI after freeing it
- * @vf: VF that control VSI is being released on
- */
-static void ice_vf_ctrl_vsi_release(struct ice_vf *vf)
-{
-	ice_vsi_release(vf->pf->vsi[vf->ctrl_vsi_idx]);
-	ice_vf_ctrl_invalidate_vsi(vf);
-}
-
 /**
  * ice_free_vf_res - Free a VF's resources
  * @vf: pointer to the VF info
@@ -583,31 +394,6 @@ static int ice_sriov_free_msix_res(struct ice_pf *pf)
 	return 0;
 }
 
-/**
- * ice_set_vf_state_qs_dis - Set VF queues state to disabled
- * @vf: pointer to the VF structure
- */
-void ice_set_vf_state_qs_dis(struct ice_vf *vf)
-{
-	/* Clear Rx/Tx enabled queues flag */
-	bitmap_zero(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
-	bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
-	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
-}
-
-/**
- * ice_dis_vf_qs - Disable the VF queues
- * @vf: pointer to the VF structure
- */
-static void ice_dis_vf_qs(struct ice_vf *vf)
-{
-	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
-
-	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
-	ice_vsi_stop_all_rx_rings(vsi);
-	ice_set_vf_state_qs_dis(vf);
-}
-
 /**
  * ice_free_vfs - Free all VFs
  * @pf: pointer to the PF structure
@@ -748,15 +534,6 @@ static void ice_trigger_vf_reset(struct ice_vf *vf, bool is_vflr, bool is_pfr)
 	}
 }
 
-/**
- * ice_vf_get_port_info - Get the VF's port info structure
- * @vf: VF used to get the port info structure for
- */
-static struct ice_port_info *ice_vf_get_port_info(struct ice_vf *vf)
-{
-	return vf->pf->hw.port_info;
-}
-
 /**
  * ice_vf_vsi_setup - Set up a VF VSI
  * @vf: VF to setup VSI for
@@ -784,28 +561,6 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 	return vsi;
 }
 
-/**
- * ice_vf_ctrl_vsi_setup - Set up a VF control VSI
- * @vf: VF to setup control VSI for
- *
- * Returns pointer to the successfully allocated VSI struct on success,
- * otherwise returns NULL on failure.
- */
-struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
-{
-	struct ice_port_info *pi = ice_vf_get_port_info(vf);
-	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-
-	vsi = ice_vsi_setup(pf, pi, ICE_VSI_CTRL, vf, NULL);
-	if (!vsi) {
-		dev_err(ice_pf_to_dev(pf), "Failed to create VF control VSI\n");
-		ice_vf_ctrl_invalidate_vsi(vf);
-	}
-
-	return vsi;
-}
-
 /**
  * ice_calc_vf_first_vector_idx - Calculate MSIX vector index in the PF space
  * @pf: pointer to PF structure
@@ -857,26 +612,6 @@ static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf)
 	return 0;
 }
 
-static u16 ice_vf_get_port_vlan_id(struct ice_vf *vf)
-{
-	return vf->port_vlan_info.vid;
-}
-
-static u8 ice_vf_get_port_vlan_prio(struct ice_vf *vf)
-{
-	return vf->port_vlan_info.prio;
-}
-
-bool ice_vf_is_port_vlan_ena(struct ice_vf *vf)
-{
-	return (ice_vf_get_port_vlan_id(vf) || ice_vf_get_port_vlan_prio(vf));
-}
-
-static u16 ice_vf_get_port_vlan_tpid(struct ice_vf *vf)
-{
-	return vf->port_vlan_info.tpid;
-}
-
 /**
  * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port VLAN
  * @vf: VF to add MAC filters for
@@ -919,88 +654,6 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
 	return 0;
 }
 
-static int ice_cfg_mac_antispoof(struct ice_vsi *vsi, bool enable)
-{
-	struct ice_vsi_ctx *ctx;
-	int err;
-
-	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
-	if (!ctx)
-		return -ENOMEM;
-
-	ctx->info.sec_flags = vsi->info.sec_flags;
-	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
-
-	if (enable)
-		ctx->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
-	else
-		ctx->info.sec_flags &= ~ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
-
-	err = ice_update_vsi(&vsi->back->hw, vsi->idx, ctx, NULL);
-	if (err)
-		dev_err(ice_pf_to_dev(vsi->back), "Failed to configure Tx MAC anti-spoof %s for VSI %d, error %d\n",
-			enable ? "ON" : "OFF", vsi->vsi_num, err);
-	else
-		vsi->info.sec_flags = ctx->info.sec_flags;
-
-	kfree(ctx);
-
-	return err;
-}
-
-/**
- * ice_vsi_ena_spoofchk - enable Tx spoof checking for this VSI
- * @vsi: VSI to enable Tx spoof checking for
- */
-static int ice_vsi_ena_spoofchk(struct ice_vsi *vsi)
-{
-	struct ice_vsi_vlan_ops *vlan_ops;
-	int err;
-
-	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
-
-	err = vlan_ops->ena_tx_filtering(vsi);
-	if (err)
-		return err;
-
-	return ice_cfg_mac_antispoof(vsi, true);
-}
-
-/**
- * ice_vsi_dis_spoofchk - disable Tx spoof checking for this VSI
- * @vsi: VSI to disable Tx spoof checking for
- */
-static int ice_vsi_dis_spoofchk(struct ice_vsi *vsi)
-{
-	struct ice_vsi_vlan_ops *vlan_ops;
-	int err;
-
-	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
-
-	err = vlan_ops->dis_tx_filtering(vsi);
-	if (err)
-		return err;
-
-	return ice_cfg_mac_antispoof(vsi, false);
-}
-
-/**
- * ice_vsi_apply_spoofchk - Apply Tx spoof checking setting to a VSI
- * @vsi: VSI associated to the VF
- * @enable: whether to enable or disable the spoof checking
- */
-static int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable)
-{
-	int err;
-
-	if (enable)
-		err = ice_vsi_ena_spoofchk(vsi);
-	else
-		err = ice_vsi_dis_spoofchk(vsi);
-
-	return err;
-}
-
 /**
  * ice_vf_rebuild_host_mac_cfg - add broadcast and the VF's perm_addr/LAA
  * @vf: VF to add MAC filters for
@@ -1357,52 +1010,6 @@ static void ice_clear_vf_reset_trigger(struct ice_vf *vf)
 	ice_flush(hw);
 }
 
-static int
-ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
-{
-	struct ice_hw *hw = &vsi->back->hw;
-	int status;
-
-	if (ice_vf_is_port_vlan_ena(vf))
-		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m,
-						  ice_vf_get_port_vlan_id(vf));
-	else if (ice_vsi_has_non_zero_vlans(vsi))
-		status = ice_fltr_set_vlan_vsi_promisc(hw, vsi, promisc_m);
-	else
-		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m, 0);
-
-	if (status && status != -EEXIST) {
-		dev_err(ice_pf_to_dev(vsi->back), "enable Tx/Rx filter promiscuous mode on VF-%u failed, error: %d\n",
-			vf->vf_id, status);
-		return status;
-	}
-
-	return 0;
-}
-
-static int
-ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
-{
-	struct ice_hw *hw = &vsi->back->hw;
-	int status;
-
-	if (ice_vf_is_port_vlan_ena(vf))
-		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m,
-						    ice_vf_get_port_vlan_id(vf));
-	else if (ice_vsi_has_non_zero_vlans(vsi))
-		status = ice_fltr_clear_vlan_vsi_promisc(hw, vsi, promisc_m);
-	else
-		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m, 0);
-
-	if (status && status != -ENOENT) {
-		dev_err(ice_pf_to_dev(vsi->back), "disable Tx/Rx filter promiscuous mode on VF-%u failed, error: %d\n",
-			vf->vf_id, status);
-		return status;
-	}
-
-	return 0;
-}
-
 static void ice_vf_clear_counters(struct ice_vf *vf)
 {
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
@@ -1532,23 +1139,6 @@ static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 	return 0;
 }
 
-/**
- * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
- * @vf: VF to set in initialized state
- *
- * After this function the VF will be ready to receive/handle the
- * VIRTCHNL_OP_GET_VF_RESOURCES message
- */
-static void ice_vf_set_initialized(struct ice_vf *vf)
-{
-	ice_set_vf_state_qs_dis(vf);
-	clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
-	clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
-	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
-	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
-	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
-}
-
 /**
  * ice_vf_post_vsi_rebuild - tasks to do after the VF's VSI have been rebuilt
  * @vf: VF to perform tasks on
@@ -1675,25 +1265,6 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	return true;
 }
 
-/**
- * ice_is_vf_disabled
- * @vf: pointer to the VF info
- *
- * Returns true if the PF or VF is disabled, false otherwise.
- */
-bool ice_is_vf_disabled(struct ice_vf *vf)
-{
-	struct ice_pf *pf = vf->pf;
-
-	/* If the PF has been disabled, there is no need resetting VF until
-	 * PF is active again. Similarly, if the VF has been disabled, this
-	 * means something else is resetting the VF, so we shouldn't continue.
-	 * Otherwise, set disable VF state bit for actual reset, and continue.
-	 */
-	return (test_bit(ICE_VF_DIS, pf->state) ||
-		test_bit(ICE_VF_STATE_DIS, vf->vf_states));
-}
-
 /**
  * ice_reset_vf - Reset a particular VF
  * @vf: pointer to the VF structure
@@ -3046,48 +2617,6 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
-/**
- * ice_wait_on_vf_reset - poll to make sure a given VF is ready after reset
- * @vf: The VF being resseting
- *
- * The max poll time is about ~800ms, which is about the maximum time it takes
- * for a VF to be reset and/or a VF driver to be removed.
- */
-static void ice_wait_on_vf_reset(struct ice_vf *vf)
-{
-	int i;
-
-	for (i = 0; i < ICE_MAX_VF_RESET_TRIES; i++) {
-		if (test_bit(ICE_VF_STATE_INIT, vf->vf_states))
-			break;
-		msleep(ICE_MAX_VF_RESET_SLEEP_MS);
-	}
-}
-
-/**
- * ice_check_vf_ready_for_cfg - check if VF is ready to be configured/queried
- * @vf: VF to check if it's ready to be configured/queried
- *
- * The purpose of this function is to make sure the VF is not in reset, not
- * disabled, and initialized so it can be configured and/or queried by a host
- * administrator.
- */
-int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
-{
-	struct ice_pf *pf;
-
-	ice_wait_on_vf_reset(vf);
-
-	if (ice_is_vf_disabled(vf))
-		return -EINVAL;
-
-	pf = vf->pf;
-	if (ice_check_vf_init(pf, vf))
-		return -EBUSY;
-
-	return 0;
-}
-
 /**
  * ice_set_vf_spoofchk
  * @netdev: network interface device structure
@@ -3148,42 +2677,6 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	return ret;
 }
 
-/**
- * ice_is_vf_trusted
- * @vf: pointer to the VF info
- */
-static bool ice_is_vf_trusted(struct ice_vf *vf)
-{
-	return test_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
-}
-
-/**
- * ice_is_any_vf_in_promisc - check if any VF(s) are in promiscuous mode
- * @pf: PF structure for accessing VF(s)
- *
- * Return false if no VF(s) are in unicast and/or multicast promiscuous mode,
- * else return true
- */
-bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
-{
-	bool is_vf_promisc = false;
-	struct ice_vf *vf;
-	unsigned int bkt;
-
-	rcu_read_lock();
-	ice_for_each_vf_rcu(pf, bkt, vf) {
-		/* found a VF that has promiscuous mode configured */
-		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
-		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
-			is_vf_promisc = true;
-			break;
-		}
-	}
-	rcu_read_unlock();
-
-	return is_vf_promisc;
-}
-
 /**
  * ice_vc_cfg_promiscuous_mode_msg
  * @vf: pointer to the VF info
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 28a544c09894..d3456eeccf58 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -4,7 +4,7 @@
 #ifndef _ICE_SRIOV_H_
 #define _ICE_SRIOV_H_
 #include "ice_virtchnl_fdir.h"
-#include "ice_vsi_vlan_ops.h"
+#include "ice_vf_lib.h"
 
 /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
 #define ICE_MAX_VLAN_PER_VF		8
@@ -22,10 +22,8 @@
 #define ICE_PCI_CIAD_WAIT_DELAY_US	1
 
 /* VF resource constraints */
-#define ICE_MAX_SRIOV_VFS		256
 #define ICE_MIN_QS_PER_VF		1
 #define ICE_NONQ_VECS_VF		1
-#define ICE_MAX_RSS_QS_PER_VF		16
 #define ICE_NUM_VF_MSIX_MED		17
 #define ICE_NUM_VF_MSIX_SMALL		5
 #define ICE_NUM_VF_MSIX_MULTIQ_MIN	3
@@ -33,79 +31,6 @@
 #define ICE_MAX_VF_RESET_TRIES		40
 #define ICE_MAX_VF_RESET_SLEEP_MS	20
 
-/* VF Hash Table access functions
- *
- * These functions provide abstraction for interacting with the VF hash table.
- * In general, direct access to the hash table should be avoided outside of
- * these functions where possible.
- *
- * The VF entries in the hash table are protected by reference counting to
- * track lifetime of accesses from the table. The ice_get_vf_by_id() function
- * obtains a reference to the VF structure which must be dropped by using
- * ice_put_vf().
- */
-
-/**
- * ice_for_each_vf - Iterate over each VF entry
- * @pf: pointer to the PF private structure
- * @bkt: bucket index used for iteration
- * @vf: pointer to the VF entry currently being processed in the loop.
- *
- * The bkt variable is an unsigned integer iterator used to traverse the VF
- * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
- * Use vf->vf_id to get the id number if needed.
- *
- * The caller is expected to be under the table_lock mutex for the entire
- * loop. Use this iterator if your loop is long or if it might sleep.
- */
-#define ice_for_each_vf(pf, bkt, vf) \
-	hash_for_each((pf)->vfs.table, (bkt), (vf), entry)
-
-/**
- * ice_for_each_vf_rcu - Iterate over each VF entry protected by RCU
- * @pf: pointer to the PF private structure
- * @bkt: bucket index used for iteration
- * @vf: pointer to the VF entry currently being processed in the loop.
- *
- * The bkt variable is an unsigned integer iterator used to traverse the VF
- * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
- * Use vf->vf_id to get the id number if needed.
- *
- * The caller is expected to be under rcu_read_lock() for the entire loop.
- * Only use this iterator if your loop is short and you can guarantee it does
- * not sleep.
- */
-#define ice_for_each_vf_rcu(pf, bkt, vf) \
-	hash_for_each_rcu((pf)->vfs.table, (bkt), (vf), entry)
-
-/* Specific VF states */
-enum ice_vf_states {
-	ICE_VF_STATE_INIT = 0,		/* PF is initializing VF */
-	ICE_VF_STATE_ACTIVE,		/* VF resources are allocated for use */
-	ICE_VF_STATE_QS_ENA,		/* VF queue(s) enabled */
-	ICE_VF_STATE_DIS,
-	ICE_VF_STATE_MC_PROMISC,
-	ICE_VF_STATE_UC_PROMISC,
-	ICE_VF_STATES_NBITS
-};
-
-/* VF capabilities */
-enum ice_virtchnl_cap {
-	ICE_VIRTCHNL_VF_CAP_PRIVILEGE = 0,
-};
-
-struct ice_time_mac {
-	unsigned long time_modified;
-	u8 addr[ETH_ALEN];
-};
-
-/* VF MDD events print structure */
-struct ice_mdd_vf_events {
-	u16 count;			/* total count of Rx|Tx events */
-	/* count number of the last printed event */
-	u16 last_printed;
-};
-
 struct ice_vf;
 
 struct ice_virtchnl_ops {
@@ -139,80 +64,7 @@ struct ice_virtchnl_ops {
 	int (*dis_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
 };
 
-/* Virtchnl/SR-IOV config info */
-struct ice_vfs {
-	DECLARE_HASHTABLE(table, 8);	/* table of VF entries */
-	struct mutex table_lock;	/* Lock for protecting the hash table */
-	u16 num_supported;		/* max supported VFs on this PF */
-	u16 num_qps_per;		/* number of queue pairs per VF */
-	u16 num_msix_per;		/* number of MSi-X vectors per VF */
-	unsigned long last_printed_mdd_jiffies;	/* MDD message rate limit */
-	DECLARE_BITMAP(malvfs, ICE_MAX_SRIOV_VFS); /* malicious VF indicator */
-};
-
-/* VF information structure */
-struct ice_vf {
-	struct hlist_node entry;
-	struct rcu_head rcu;
-	struct kref refcnt;
-	struct ice_pf *pf;
-
-	/* Used during virtchnl message handling and NDO ops against the VF
-	 * that will trigger a VFR
-	 */
-	struct mutex cfg_lock;
-
-	u16 vf_id;			/* VF ID in the PF space */
-	u16 lan_vsi_idx;		/* index into PF struct */
-	u16 ctrl_vsi_idx;
-	struct ice_vf_fdir fdir;
-	/* first vector index of this VF in the PF space */
-	int first_vector_idx;
-	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
-	struct virtchnl_version_info vf_ver;
-	u32 driver_caps;		/* reported by VF driver */
-	struct virtchnl_ether_addr dev_lan_addr;
-	struct virtchnl_ether_addr hw_lan_addr;
-	struct ice_time_mac legacy_last_added_umac;
-	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
-	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
-	struct ice_vlan port_vlan_info;	/* Port VLAN ID, QoS, and TPID */
-	struct virtchnl_vlan_caps vlan_v2_caps;
-	u8 pf_set_mac:1;		/* VF MAC address set by VMM admin */
-	u8 trusted:1;
-	u8 spoofchk:1;
-	u8 link_forced:1;
-	u8 link_up:1;			/* only valid if VF link is forced */
-	/* VSI indices - actual VSI pointers are maintained in the PF structure
-	 * When assigned, these will be non-zero, because VSI 0 is always
-	 * the main LAN VSI for the PF.
-	 */
-	u16 lan_vsi_num;		/* ID as used by firmware */
-	unsigned int min_tx_rate;	/* Minimum Tx bandwidth limit in Mbps */
-	unsigned int max_tx_rate;	/* Maximum Tx bandwidth limit in Mbps */
-	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime states */
-
-	unsigned long vf_caps;		/* VF's adv. capabilities */
-	u8 num_req_qs;			/* num of queue pairs requested by VF */
-	u16 num_mac;
-	u16 num_vf_qs;			/* num of queue configured per VF */
-	struct ice_mdd_vf_events mdd_rx_events;
-	struct ice_mdd_vf_events mdd_tx_events;
-	DECLARE_BITMAP(opcodes_allowlist, VIRTCHNL_OP_MAX);
-
-	struct ice_repr *repr;
-	const struct ice_virtchnl_ops *virtchnl_ops;
-
-	/* devlink port data */
-	struct devlink_port devlink_port;
-};
-
 #ifdef CONFIG_PCI_IOV
-struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id);
-void ice_put_vf(struct ice_vf *vf);
-bool ice_has_vfs(struct ice_pf *pf);
-u16 ice_get_num_vfs(struct ice_pf *pf);
-struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
 void ice_process_vflr_event(struct ice_pf *pf);
 int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
 int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
@@ -245,51 +97,24 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted);
 
 int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state);
 
-int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
-
-bool ice_is_vf_disabled(struct ice_vf *vf);
-
 int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena);
 
 int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector);
 
-void ice_set_vf_state_qs_dis(struct ice_vf *vf);
 int
 ice_get_vf_stats(struct net_device *netdev, int vf_id,
 		 struct ifla_vf_stats *vf_stats);
-bool ice_is_any_vf_in_promisc(struct ice_pf *pf);
 void
 ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_print_vfs_mdd_events(struct ice_pf *pf);
 void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
 bool
 ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto);
-struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
 int
 ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
-bool ice_vf_is_port_vlan_ena(struct ice_vf *vf);
 #else /* CONFIG_PCI_IOV */
-static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
-{
-	return NULL;
-}
-
-static inline void ice_put_vf(struct ice_vf *vf)
-{
-}
-
-static inline bool ice_has_vfs(struct ice_pf *pf)
-{
-	return false;
-}
-
-static inline u16 ice_get_num_vfs(struct ice_pf *pf)
-{
-	return 0;
-}
-
 static inline void ice_process_vflr_event(struct ice_pf *pf) { }
 static inline void ice_free_vfs(struct ice_pf *pf) { }
 static inline
@@ -299,28 +124,12 @@ static inline void ice_vc_notify_reset(struct ice_pf *pf) { }
 static inline void ice_vc_notify_vf_link_state(struct ice_vf *vf) { }
 static inline void ice_virtchnl_set_repr_ops(struct ice_vf *vf) { }
 static inline void ice_virtchnl_set_dflt_ops(struct ice_vf *vf) { }
-static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf) { }
 static inline
 void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
 static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
 static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
 static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
 
-static inline int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
-{
-	return -EOPNOTSUPP;
-}
-
-static inline bool ice_is_vf_disabled(struct ice_vf *vf)
-{
-	return true;
-}
-
-static inline struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
-{
-	return NULL;
-}
-
 static inline bool
 ice_is_malicious_vf(struct ice_pf __always_unused *pf,
 		    struct ice_rq_event_info __always_unused *event,
@@ -416,15 +225,5 @@ ice_get_vf_stats(struct net_device __always_unused *netdev,
 {
 	return -EOPNOTSUPP;
 }
-
-static inline bool ice_is_any_vf_in_promisc(struct ice_pf __always_unused *pf)
-{
-	return false;
-}
-
-static inline bool ice_vf_is_port_vlan_ena(struct ice_vf __always_unused *vf)
-{
-	return false;
-}
 #endif /* CONFIG_PCI_IOV */
 #endif /* _ICE_SRIOV_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
new file mode 100644
index 000000000000..7ac06aa8b25a
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -0,0 +1,519 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2022, Intel Corporation. */
+
+#include "ice_vf_lib_private.h"
+#include "ice.h"
+#include "ice_lib.h"
+#include "ice_fltr.h"
+#include "ice_virtchnl_allowlist.h"
+
+/* Public functions which may be accessed by all driver files */
+
+/**
+ * ice_get_vf_by_id - Get pointer to VF by ID
+ * @pf: the PF private structure
+ * @vf_id: the VF ID to locate
+ *
+ * Locate and return a pointer to the VF structure associated with a given ID.
+ * Returns NULL if the ID does not have a valid VF structure associated with
+ * it.
+ *
+ * This function takes a reference to the VF, which must be released by
+ * calling ice_put_vf() once the caller is finished accessing the VF structure
+ * returned.
+ */
+struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
+{
+	struct ice_vf *vf;
+
+	rcu_read_lock();
+	hash_for_each_possible_rcu(pf->vfs.table, vf, entry, vf_id) {
+		if (vf->vf_id == vf_id) {
+			struct ice_vf *found;
+
+			if (kref_get_unless_zero(&vf->refcnt))
+				found = vf;
+			else
+				found = NULL;
+
+			rcu_read_unlock();
+			return found;
+		}
+	}
+	rcu_read_unlock();
+
+	return NULL;
+}
+
+/**
+ * ice_release_vf - Release VF associated with a refcount
+ * @ref: the kref decremented to zero
+ *
+ * Callback function for kref_put to release a VF once its reference count has
+ * hit zero.
+ */
+static void ice_release_vf(struct kref *ref)
+{
+	struct ice_vf *vf = container_of(ref, struct ice_vf, refcnt);
+
+	mutex_destroy(&vf->cfg_lock);
+
+	kfree_rcu(vf, rcu);
+}
+
+/**
+ * ice_put_vf - Release a reference to a VF
+ * @vf: the VF structure to decrease reference count on
+ *
+ * Decrease the reference count for a VF, and free the entry if it is no
+ * longer in use.
+ *
+ * This must be called after ice_get_vf_by_id() once the reference to the VF
+ * structure is no longer used. Otherwise, the VF structure will never be
+ * freed.
+ */
+void ice_put_vf(struct ice_vf *vf)
+{
+	kref_put(&vf->refcnt, ice_release_vf);
+}
+
+/**
+ * ice_has_vfs - Return true if the PF has any associated VFs
+ * @pf: the PF private structure
+ *
+ * Return whether or not the PF has any allocated VFs.
+ *
+ * Note that this function only guarantees that there are no VFs at the point
+ * of calling it. It does not guarantee that no more VFs will be added.
+ */
+bool ice_has_vfs(struct ice_pf *pf)
+{
+	/* A simple check that the hash table is not empty does not require
+	 * the mutex or rcu_read_lock.
+	 */
+	return !hash_empty(pf->vfs.table);
+}
+
+/**
+ * ice_get_num_vfs - Get number of allocated VFs
+ * @pf: the PF private structure
+ *
+ * Return the total number of allocated VFs. NOTE: VF IDs are not guaranteed
+ * to be contiguous. Do not assume that a VF ID is guaranteed to be less than
+ * the output of this function.
+ */
+u16 ice_get_num_vfs(struct ice_pf *pf)
+{
+	struct ice_vf *vf;
+	unsigned int bkt;
+	u16 num_vfs = 0;
+
+	rcu_read_lock();
+	ice_for_each_vf_rcu(pf, bkt, vf)
+		num_vfs++;
+	rcu_read_unlock();
+
+	return num_vfs;
+}
+
+/**
+ * ice_get_vf_vsi - get VF's VSI based on the stored index
+ * @vf: VF used to get VSI
+ */
+struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
+{
+	if (vf->lan_vsi_idx == ICE_NO_VSI)
+		return NULL;
+
+	return vf->pf->vsi[vf->lan_vsi_idx];
+}
+
+/**
+ * ice_is_vf_disabled
+ * @vf: pointer to the VF info
+ *
+ * If the PF has been disabled, there is no need resetting VF until PF is
+ * active again. Similarly, if the VF has been disabled, this means something
+ * else is resetting the VF, so we shouldn't continue.
+ *
+ * Returns true if the caller should consider the VF as disabled whether
+ * because that single VF is explicitly disabled or because the PF is
+ * currently disabled.
+ */
+bool ice_is_vf_disabled(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+
+	return (test_bit(ICE_VF_DIS, pf->state) ||
+		test_bit(ICE_VF_STATE_DIS, vf->vf_states));
+}
+
+/**
+ * ice_wait_on_vf_reset - poll to make sure a given VF is ready after reset
+ * @vf: The VF being resseting
+ *
+ * The max poll time is about ~800ms, which is about the maximum time it takes
+ * for a VF to be reset and/or a VF driver to be removed.
+ */
+static void ice_wait_on_vf_reset(struct ice_vf *vf)
+{
+	int i;
+
+	for (i = 0; i < ICE_MAX_VF_RESET_TRIES; i++) {
+		if (test_bit(ICE_VF_STATE_INIT, vf->vf_states))
+			break;
+		msleep(ICE_MAX_VF_RESET_SLEEP_MS);
+	}
+}
+
+/**
+ * ice_check_vf_ready_for_cfg - check if VF is ready to be configured/queried
+ * @vf: VF to check if it's ready to be configured/queried
+ *
+ * The purpose of this function is to make sure the VF is not in reset, not
+ * disabled, and initialized so it can be configured and/or queried by a host
+ * administrator.
+ */
+int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
+{
+	struct ice_pf *pf;
+
+	ice_wait_on_vf_reset(vf);
+
+	if (ice_is_vf_disabled(vf))
+		return -EINVAL;
+
+	pf = vf->pf;
+	if (ice_check_vf_init(pf, vf))
+		return -EBUSY;
+
+	return 0;
+}
+
+/**
+ * ice_is_any_vf_in_promisc - check if any VF(s) are in promiscuous mode
+ * @pf: PF structure for accessing VF(s)
+ *
+ * Return false if no VF(s) are in unicast and/or multicast promiscuous mode,
+ * else return true
+ */
+bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
+{
+	bool is_vf_promisc = false;
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	rcu_read_lock();
+	ice_for_each_vf_rcu(pf, bkt, vf) {
+		/* found a VF that has promiscuous mode configured */
+		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
+		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
+			is_vf_promisc = true;
+			break;
+		}
+	}
+	rcu_read_unlock();
+
+	return is_vf_promisc;
+}
+
+/**
+ * ice_vf_set_vsi_promisc - Enable promiscuous mode for a VF VSI
+ * @vf: the VF to configure
+ * @vsi: the VF's VSI
+ * @promisc_m: the promiscuous mode to enable
+ */
+int
+ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	int status;
+
+	if (ice_vf_is_port_vlan_ena(vf))
+		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m,
+						  ice_vf_get_port_vlan_id(vf));
+	else if (ice_vsi_has_non_zero_vlans(vsi))
+		status = ice_fltr_set_vlan_vsi_promisc(hw, vsi, promisc_m);
+	else
+		status = ice_fltr_set_vsi_promisc(hw, vsi->idx, promisc_m, 0);
+
+	if (status && status != -EEXIST) {
+		dev_err(ice_pf_to_dev(vsi->back), "enable Tx/Rx filter promiscuous mode on VF-%u failed, error: %d\n",
+			vf->vf_id, status);
+		return status;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_vf_clear_vsi_promisc - Disable promiscuous mode for a VF VSI
+ * @vf: the VF to configure
+ * @vsi: the VF's VSI
+ * @promisc_m: the promiscuous mode to disable
+ */
+int
+ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
+{
+	struct ice_hw *hw = &vsi->back->hw;
+	int status;
+
+	if (ice_vf_is_port_vlan_ena(vf))
+		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m,
+						    ice_vf_get_port_vlan_id(vf));
+	else if (ice_vsi_has_non_zero_vlans(vsi))
+		status = ice_fltr_clear_vlan_vsi_promisc(hw, vsi, promisc_m);
+	else
+		status = ice_fltr_clear_vsi_promisc(hw, vsi->idx, promisc_m, 0);
+
+	if (status && status != -ENOENT) {
+		dev_err(ice_pf_to_dev(vsi->back), "disable Tx/Rx filter promiscuous mode on VF-%u failed, error: %d\n",
+			vf->vf_id, status);
+		return status;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_set_vf_state_qs_dis - Set VF queues state to disabled
+ * @vf: pointer to the VF structure
+ */
+void ice_set_vf_state_qs_dis(struct ice_vf *vf)
+{
+	/* Clear Rx/Tx enabled queues flag */
+	bitmap_zero(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
+	bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
+	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
+}
+
+/* Private functions only accessed from other virtualization files */
+
+/**
+ * ice_dis_vf_qs - Disable the VF queues
+ * @vf: pointer to the VF structure
+ */
+void ice_dis_vf_qs(struct ice_vf *vf)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+
+	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
+	ice_vsi_stop_all_rx_rings(vsi);
+	ice_set_vf_state_qs_dis(vf);
+}
+
+/**
+ * ice_check_vf_init - helper to check if VF init complete
+ * @pf: pointer to the PF structure
+ * @vf: the pointer to the VF to check
+ */
+int ice_check_vf_init(struct ice_pf *pf, struct ice_vf *vf)
+{
+	if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
+		dev_err(ice_pf_to_dev(pf), "VF ID: %u in reset. Try again.\n",
+			vf->vf_id);
+		return -EBUSY;
+	}
+	return 0;
+}
+
+/**
+ * ice_vf_get_port_info - Get the VF's port info structure
+ * @vf: VF used to get the port info structure for
+ */
+struct ice_port_info *ice_vf_get_port_info(struct ice_vf *vf)
+{
+	return vf->pf->hw.port_info;
+}
+
+static int ice_cfg_mac_antispoof(struct ice_vsi *vsi, bool enable)
+{
+	struct ice_vsi_ctx *ctx;
+	int err;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->info.sec_flags = vsi->info.sec_flags;
+	ctx->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
+
+	if (enable)
+		ctx->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
+	else
+		ctx->info.sec_flags &= ~ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
+
+	err = ice_update_vsi(&vsi->back->hw, vsi->idx, ctx, NULL);
+	if (err)
+		dev_err(ice_pf_to_dev(vsi->back), "Failed to configure Tx MAC anti-spoof %s for VSI %d, error %d\n",
+			enable ? "ON" : "OFF", vsi->vsi_num, err);
+	else
+		vsi->info.sec_flags = ctx->info.sec_flags;
+
+	kfree(ctx);
+
+	return err;
+}
+
+/**
+ * ice_vsi_ena_spoofchk - enable Tx spoof checking for this VSI
+ * @vsi: VSI to enable Tx spoof checking for
+ */
+static int ice_vsi_ena_spoofchk(struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops;
+	int err;
+
+	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+
+	err = vlan_ops->ena_tx_filtering(vsi);
+	if (err)
+		return err;
+
+	return ice_cfg_mac_antispoof(vsi, true);
+}
+
+/**
+ * ice_vsi_dis_spoofchk - disable Tx spoof checking for this VSI
+ * @vsi: VSI to disable Tx spoof checking for
+ */
+static int ice_vsi_dis_spoofchk(struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops;
+	int err;
+
+	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+
+	err = vlan_ops->dis_tx_filtering(vsi);
+	if (err)
+		return err;
+
+	return ice_cfg_mac_antispoof(vsi, false);
+}
+
+/**
+ * ice_vsi_apply_spoofchk - Apply Tx spoof checking setting to a VSI
+ * @vsi: VSI associated to the VF
+ * @enable: whether to enable or disable the spoof checking
+ */
+int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable)
+{
+	int err;
+
+	if (enable)
+		err = ice_vsi_ena_spoofchk(vsi);
+	else
+		err = ice_vsi_dis_spoofchk(vsi);
+
+	return err;
+}
+
+/**
+ * ice_is_vf_trusted
+ * @vf: pointer to the VF info
+ */
+bool ice_is_vf_trusted(struct ice_vf *vf)
+{
+	return test_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+}
+
+/**
+ * ice_vf_has_no_qs_ena - check if the VF has any Rx or Tx queues enabled
+ * @vf: the VF to check
+ *
+ * Returns true if the VF has no Rx and no Tx queues enabled and returns false
+ * otherwise
+ */
+bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
+{
+	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
+		!bitmap_weight(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
+}
+
+/**
+ * ice_is_vf_link_up - check if the VF's link is up
+ * @vf: VF to check if link is up
+ */
+bool ice_is_vf_link_up(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+
+	if (ice_check_vf_init(pf, vf))
+		return false;
+
+	if (ice_vf_has_no_qs_ena(vf))
+		return false;
+	else if (vf->link_forced)
+		return vf->link_up;
+	else
+		return pf->hw.port_info->phy.link_info.link_info &
+			ICE_AQ_LINK_UP;
+}
+
+/**
+ * ice_vf_ctrl_invalidate_vsi - invalidate ctrl_vsi_idx to remove VSI access
+ * @vf: VF that control VSI is being invalidated on
+ */
+void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf)
+{
+	vf->ctrl_vsi_idx = ICE_NO_VSI;
+}
+
+/**
+ * ice_vf_ctrl_vsi_release - invalidate the VF's control VSI after freeing it
+ * @vf: VF that control VSI is being released on
+ */
+void ice_vf_ctrl_vsi_release(struct ice_vf *vf)
+{
+	ice_vsi_release(vf->pf->vsi[vf->ctrl_vsi_idx]);
+	ice_vf_ctrl_invalidate_vsi(vf);
+}
+
+/**
+ * ice_vf_ctrl_vsi_setup - Set up a VF control VSI
+ * @vf: VF to setup control VSI for
+ *
+ * Returns pointer to the successfully allocated VSI struct on success,
+ * otherwise returns NULL on failure.
+ */
+struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
+{
+	struct ice_port_info *pi = ice_vf_get_port_info(vf);
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
+
+	vsi = ice_vsi_setup(pf, pi, ICE_VSI_CTRL, vf, NULL);
+	if (!vsi) {
+		dev_err(ice_pf_to_dev(pf), "Failed to create VF control VSI\n");
+		ice_vf_ctrl_invalidate_vsi(vf);
+	}
+
+	return vsi;
+}
+
+/**
+ * ice_vf_invalidate_vsi - invalidate vsi_idx/vsi_num to remove VSI access
+ * @vf: VF to remove access to VSI for
+ */
+void ice_vf_invalidate_vsi(struct ice_vf *vf)
+{
+	vf->lan_vsi_idx = ICE_NO_VSI;
+	vf->lan_vsi_num = ICE_NO_VSI;
+}
+
+/**
+ * ice_vf_set_initialized - VF is ready for VIRTCHNL communication
+ * @vf: VF to set in initialized state
+ *
+ * After this function the VF will be ready to receive/handle the
+ * VIRTCHNL_OP_GET_VF_RESOURCES message
+ */
+void ice_vf_set_initialized(struct ice_vf *vf)
+{
+	ice_set_vf_state_qs_dis(vf);
+	clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
+	clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
+	clear_bit(ICE_VF_STATE_DIS, vf->vf_states);
+	set_bit(ICE_VF_STATE_INIT, vf->vf_states);
+	memset(&vf->vlan_v2_caps, 0, sizeof(vf->vlan_v2_caps));
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
new file mode 100644
index 000000000000..3f39d2232438
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -0,0 +1,259 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2021, Intel Corporation. */
+
+#ifndef _ICE_VF_LIB_H_
+#define _ICE_VF_LIB_H_
+
+#include <linux/types.h>
+#include <linux/hashtable.h>
+#include <linux/bitmap.h>
+#include <linux/mutex.h>
+#include <linux/pci.h>
+#include <net/devlink.h>
+#include <linux/avf/virtchnl.h>
+#include "ice_type.h"
+#include "ice_virtchnl_fdir.h"
+#include "ice_vsi_vlan_ops.h"
+
+#define ICE_MAX_SRIOV_VFS		256
+
+/* VF resource constraints */
+#define ICE_MAX_RSS_QS_PER_VF	16
+
+struct ice_pf;
+struct ice_vf;
+struct ice_virtchnl_ops;
+
+/* VF capabilities */
+enum ice_virtchnl_cap {
+	ICE_VIRTCHNL_VF_CAP_PRIVILEGE = 0,
+};
+
+/* Specific VF states */
+enum ice_vf_states {
+	ICE_VF_STATE_INIT = 0,		/* PF is initializing VF */
+	ICE_VF_STATE_ACTIVE,		/* VF resources are allocated for use */
+	ICE_VF_STATE_QS_ENA,		/* VF queue(s) enabled */
+	ICE_VF_STATE_DIS,
+	ICE_VF_STATE_MC_PROMISC,
+	ICE_VF_STATE_UC_PROMISC,
+	ICE_VF_STATES_NBITS
+};
+
+struct ice_time_mac {
+	unsigned long time_modified;
+	u8 addr[ETH_ALEN];
+};
+
+/* VF MDD events print structure */
+struct ice_mdd_vf_events {
+	u16 count;			/* total count of Rx|Tx events */
+	/* count number of the last printed event */
+	u16 last_printed;
+};
+
+/* Virtchnl/SR-IOV config info */
+struct ice_vfs {
+	DECLARE_HASHTABLE(table, 8);	/* table of VF entries */
+	struct mutex table_lock;	/* Lock for protecting the hash table */
+	u16 num_supported;		/* max supported VFs on this PF */
+	u16 num_qps_per;		/* number of queue pairs per VF */
+	u16 num_msix_per;		/* number of MSi-X vectors per VF */
+	unsigned long last_printed_mdd_jiffies;	/* MDD message rate limit */
+	DECLARE_BITMAP(malvfs, ICE_MAX_SRIOV_VFS); /* malicious VF indicator */
+};
+
+/* VF information structure */
+struct ice_vf {
+	struct hlist_node entry;
+	struct rcu_head rcu;
+	struct kref refcnt;
+	struct ice_pf *pf;
+
+	/* Used during virtchnl message handling and NDO ops against the VF
+	 * that will trigger a VFR
+	 */
+	struct mutex cfg_lock;
+
+	u16 vf_id;			/* VF ID in the PF space */
+	u16 lan_vsi_idx;		/* index into PF struct */
+	u16 ctrl_vsi_idx;
+	struct ice_vf_fdir fdir;
+	/* first vector index of this VF in the PF space */
+	int first_vector_idx;
+	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
+	struct virtchnl_version_info vf_ver;
+	u32 driver_caps;		/* reported by VF driver */
+	struct virtchnl_ether_addr dev_lan_addr;
+	struct virtchnl_ether_addr hw_lan_addr;
+	struct ice_time_mac legacy_last_added_umac;
+	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
+	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
+	struct ice_vlan port_vlan_info;	/* Port VLAN ID, QoS, and TPID */
+	struct virtchnl_vlan_caps vlan_v2_caps;
+	u8 pf_set_mac:1;		/* VF MAC address set by VMM admin */
+	u8 trusted:1;
+	u8 spoofchk:1;
+	u8 link_forced:1;
+	u8 link_up:1;			/* only valid if VF link is forced */
+	/* VSI indices - actual VSI pointers are maintained in the PF structure
+	 * When assigned, these will be non-zero, because VSI 0 is always
+	 * the main LAN VSI for the PF.
+	 */
+	u16 lan_vsi_num;		/* ID as used by firmware */
+	unsigned int min_tx_rate;	/* Minimum Tx bandwidth limit in Mbps */
+	unsigned int max_tx_rate;	/* Maximum Tx bandwidth limit in Mbps */
+	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime states */
+
+	unsigned long vf_caps;		/* VF's adv. capabilities */
+	u8 num_req_qs;			/* num of queue pairs requested by VF */
+	u16 num_mac;
+	u16 num_vf_qs;			/* num of queue configured per VF */
+	struct ice_mdd_vf_events mdd_rx_events;
+	struct ice_mdd_vf_events mdd_tx_events;
+	DECLARE_BITMAP(opcodes_allowlist, VIRTCHNL_OP_MAX);
+
+	struct ice_repr *repr;
+	const struct ice_virtchnl_ops *virtchnl_ops;
+
+	/* devlink port data */
+	struct devlink_port devlink_port;
+};
+
+static inline u16 ice_vf_get_port_vlan_id(struct ice_vf *vf)
+{
+	return vf->port_vlan_info.vid;
+}
+
+static inline u8 ice_vf_get_port_vlan_prio(struct ice_vf *vf)
+{
+	return vf->port_vlan_info.prio;
+}
+
+static inline bool ice_vf_is_port_vlan_ena(struct ice_vf *vf)
+{
+	return (ice_vf_get_port_vlan_id(vf) || ice_vf_get_port_vlan_prio(vf));
+}
+
+static inline u16 ice_vf_get_port_vlan_tpid(struct ice_vf *vf)
+{
+	return vf->port_vlan_info.tpid;
+}
+
+/* VF Hash Table access functions
+ *
+ * These functions provide abstraction for interacting with the VF hash table.
+ * In general, direct access to the hash table should be avoided outside of
+ * these functions where possible.
+ *
+ * The VF entries in the hash table are protected by reference counting to
+ * track lifetime of accesses from the table. The ice_get_vf_by_id() function
+ * obtains a reference to the VF structure which must be dropped by using
+ * ice_put_vf().
+ */
+
+/**
+ * ice_for_each_vf - Iterate over each VF entry
+ * @pf: pointer to the PF private structure
+ * @bkt: bucket index used for iteration
+ * @vf: pointer to the VF entry currently being processed in the loop.
+ *
+ * The bkt variable is an unsigned integer iterator used to traverse the VF
+ * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
+ * Use vf->vf_id to get the id number if needed.
+ *
+ * The caller is expected to be under the table_lock mutex for the entire
+ * loop. Use this iterator if your loop is long or if it might sleep.
+ */
+#define ice_for_each_vf(pf, bkt, vf) \
+	hash_for_each((pf)->vfs.table, (bkt), (vf), entry)
+
+/**
+ * ice_for_each_vf_rcu - Iterate over each VF entry protected by RCU
+ * @pf: pointer to the PF private structure
+ * @bkt: bucket index used for iteration
+ * @vf: pointer to the VF entry currently being processed in the loop.
+ *
+ * The bkt variable is an unsigned integer iterator used to traverse the VF
+ * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
+ * Use vf->vf_id to get the id number if needed.
+ *
+ * The caller is expected to be under rcu_read_lock() for the entire loop.
+ * Only use this iterator if your loop is short and you can guarantee it does
+ * not sleep.
+ */
+#define ice_for_each_vf_rcu(pf, bkt, vf) \
+	hash_for_each_rcu((pf)->vfs.table, (bkt), (vf), entry)
+
+#ifdef CONFIG_PCI_IOV
+struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id);
+void ice_put_vf(struct ice_vf *vf);
+bool ice_has_vfs(struct ice_pf *pf);
+u16 ice_get_num_vfs(struct ice_pf *pf);
+struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
+bool ice_is_vf_disabled(struct ice_vf *vf);
+int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
+void ice_set_vf_state_qs_dis(struct ice_vf *vf);
+bool ice_is_any_vf_in_promisc(struct ice_pf *pf);
+int
+ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
+int
+ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
+#else /* CONFIG_PCI_IOV */
+static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
+{
+	return NULL;
+}
+
+static inline void ice_put_vf(struct ice_vf *vf)
+{
+}
+
+static inline bool ice_has_vfs(struct ice_pf *pf)
+{
+	return false;
+}
+
+static inline u16 ice_get_num_vfs(struct ice_pf *pf)
+{
+	return 0;
+}
+
+static inline struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf)
+{
+	return NULL;
+}
+
+static inline bool ice_is_vf_disabled(struct ice_vf *vf)
+{
+	return true;
+}
+
+static inline int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf)
+{
+}
+
+static inline bool ice_is_any_vf_in_promisc(struct ice_pf *pf)
+{
+	return false;
+}
+
+static inline int
+ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int
+ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
+{
+	return -EOPNOTSUPP;
+}
+#endif /* !CONFIG_PCI_IOV */
+
+#endif /* _ICE_VF_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
new file mode 100644
index 000000000000..93daf74c928c
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2021, Intel Corporation. */
+
+#ifndef _ICE_VF_LIB_PRIVATE_H_
+#define _ICE_VF_LIB_PRIVATE_H_
+
+#include "ice_vf_lib.h"
+
+/* This header file is for exposing functions in ice_vf_lib.c to other files
+ * which are also conditionally compiled depending on CONFIG_PCI_IOV.
+ * Functions which may be used by other files should be exposed as part of
+ * ice_vf_lib.h
+ *
+ * Functions in this file are exposed only when CONFIG_PCI_IOV is enabled, and
+ * thus this header must not be included by .c files which may be compiled
+ * with CONFIG_PCI_IOV disabled.
+ *
+ * To avoid this, only include this header file directly within .c files that
+ * are conditionally enabled in the "ice-$(CONFIG_PCI_IOV)" block.
+ */
+
+#ifndef CONFIG_PCI_IOV
+#warning "Only include ice_vf_lib_private.h in CONFIG_PCI_IOV virtualization files"
+#endif
+
+void ice_dis_vf_qs(struct ice_vf *vf);
+int ice_check_vf_init(struct ice_pf *pf, struct ice_vf *vf);
+struct ice_port_info *ice_vf_get_port_info(struct ice_vf *vf);
+int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable);
+bool ice_is_vf_trusted(struct ice_vf *vf);
+bool ice_vf_has_no_qs_ena(struct ice_vf *vf);
+bool ice_is_vf_link_up(struct ice_vf *vf);
+void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf);
+void ice_vf_ctrl_vsi_release(struct ice_vf *vf);
+struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
+void ice_vf_invalidate_vsi(struct ice_vf *vf);
+void ice_vf_set_initialized(struct ice_vf *vf);
+
+#endif /* _ICE_VF_LIB_PRIVATE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 07989f1d08ef..8e38ee2faf58 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -5,6 +5,7 @@
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_flow.h"
+#include "ice_vf_lib_private.h"
 
 #define to_fltr_conf_from_desc(p) \
 	container_of(p, struct virtchnl_fdir_fltr_conf, input)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
index f4e629f4c09b..c5bcc8d7481c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
@@ -6,6 +6,7 @@
 
 struct ice_vf;
 struct ice_pf;
+struct ice_vsi;
 
 enum ice_fdir_ctx_stat {
 	ICE_FDIR_CTX_READY,
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
