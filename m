Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CB5672DF1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE1C9610BF;
	Thu, 19 Jan 2023 01:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE1C9610BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091045;
	bh=WzRGCkwlnkPoO3fkhSNBBAr46UjncSGKR7aZt7ENTPo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y6hjqHrq5esMWGcQMlVDzi6BHr6PAqQK1bRPp5r1nh/Cw2VyY08N6tD4bgROBKGEE
	 Fba5hSSNj2DftuJKoVcEhsOkrO7ijOboscXlySxumH3mtMj+3Ngn0MUZwUjzkZTwYx
	 XSIVMCQ4+W0lbFVnSxZ7GTrjhmeSTehXXRUBtIs3Hqhpy9oRosZ0wwScvCeK2NtRju
	 M0ngBh4pe8AxjJ3dGSpIYshuddDPqXcQwqqFGs/SfmZIyQItKRJFWnPVLm+aHLjrQg
	 T9cfUPP4iDqiNHdzmWXryhJkUX7yOnjSiYcTR1YceOl4OEkXePH8YR2YJdeZ+imZfG
	 Xg+sLh1jtRrug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tn-YfJH6hhIr; Thu, 19 Jan 2023 01:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 441C56107E;
	Thu, 19 Jan 2023 01:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 441C56107E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30FC41BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44FB74191B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44FB74191B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a0th5RVL8tgO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B356741920
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B356741920
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840723"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840723"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881864"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881864"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:43 -0800
Message-Id: <20230119011653.311675-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091024; x=1705627024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nGnH1MSGdxTb7sgV/t14ZxuBoQCudFc5HAxJKFWstgA=;
 b=jMe11kWEEEIazNAlni+rkXEc3vAYIRzMncJAspT4aMPDNt3hh04nhtjI
 A6sVBj5+/oK7INCNdKWpmxAjG4Vv7ShSAUtw1PKTN3icORYo+dDBZE+7Z
 /M/XH0JHSCKlWD7Rjv8xRQKJC9fxzUuRi451FVMWwX64OyrQw6+ZWbwwC
 HJ7ZLZ+yDION226SgQ5Kysw0wApY4NOrYYTTf4//iyXjCSmZ7mhyeejuu
 uzCEZ39/h6k10LyB0FRxsWeR5loE6CNWepbAFE1no0U3SMEvyDhoA98B7
 n2U+5XN/c43orK9Agh/GuYYqtLYZed1xGqDT9X8d/5TyLWALC7G7t69TH
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jMe11kWE
Subject: [Intel-wired-lan] [PATCH net-next v2 03/13] ice: refactor VSI setup
 to use parameter structure
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_vsi_setup function, ice_vsi_alloc, and ice_vsi_cfg functions have
grown a large number of parameters. These parameters are used to initialize
a new VSI, as well as re-configure an existing VSI

Any time we want to add a new parameter to this function chain, even if it
will usually be unset, we have to change many call sites due to changing
the function signature.

A future change is going to refactor ice_vsi_alloc and ice_vsi_cfg to move
the VSI configuration and initialization all into ice_vsi_cfg.

Before this, refactor the VSI setup flow to use a new ice_vsi_cfg_params
structure. This will contain the configuration (mainly pointers) used to
initialize a VSI.

Pass this from ice_vsi_setup into the related functions such as
ice_vsi_alloc, ice_vsi_cfg, and ice_vsi_cfg_def.

Introduce a helper, ice_vsi_to_params to convert an existing VSI to the
parameters used to initialize it. This will aid in the flows where we
rebuild an existing VSI.

Since we also pass the ICE_VSI_FLAG_INIT to more functions which do not
need (or cannot yet have) the VSI parameters, lets make this clear by
renaming the function parameter to vsi_flags and using a u32 instead of a
signed integer. The name vsi_flags also makes it clear that we may extend
the flags in the future.

This change will make it easier to refactor the setup flow in the future,
and will reduce the complexity required to add a new parameter for
configuration in the future.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1:
* New patch to introduce ice_vsi_cfg_params structure

 drivers/net/ethernet/intel/ice/ice_eswitch.c |  8 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 92 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_lib.h     | 52 +++++++++--
 drivers/net/ethernet/intel/ice/ice_main.c    | 40 +++++++--
 drivers/net/ethernet/intel/ice/ice_sriov.c   |  9 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  9 +-
 6 files changed, 147 insertions(+), 63 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index f9f15acae90a..b86d173a20af 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -425,7 +425,13 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 static struct ice_vsi *
 ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL, NULL, NULL);
+	struct ice_vsi_cfg_params params = {};
+
+	params.type = ICE_VSI_SWITCHDEV_CTRL;
+	params.pi = pi;
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	return ice_vsi_setup(pf, &params);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 46af8b2707b6..1a2af5a9cffe 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -639,10 +639,7 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
 /**
  * ice_vsi_alloc - Allocates the next available struct VSI in the PF
  * @pf: board private structure
- * @pi: pointer to the port_info instance
- * @vsi_type: type of VSI
- * @ch: ptr to channel
- * @vf: VF for ICE_VSI_VF and ICE_VSI_CTRL
+ * @params: parameters to use when allocating the new VSI
  *
  * The VF pointer is used for ICE_VSI_VF and ICE_VSI_CTRL. For ICE_VSI_CTRL,
  * it may be NULL in the case there is no association with a VF. For
@@ -651,14 +648,12 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
  * returns a pointer to a VSI on success, NULL on failure.
  */
 static struct ice_vsi *
-ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type vsi_type, struct ice_channel *ch,
-	      struct ice_vf *vf)
+ice_vsi_alloc(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi = NULL;
 
-	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
+	if (WARN_ON(params->type == ICE_VSI_VF && !params->vf))
 		return NULL;
 
 	/* Need to protect the allocation of the VSIs at the PF level */
@@ -677,11 +672,11 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
 	if (!vsi)
 		goto unlock_pf;
 
-	vsi->type = vsi_type;
+	vsi->type = params->type;
 	vsi->back = pf;
-	vsi->port_info = pi;
+	vsi->port_info = params->pi;
 	/* For VSIs which don't have a connected VF, this will be NULL */
-	vsi->vf = vf;
+	vsi->vf = params->vf;
 	set_bit(ICE_VSI_DOWN, vsi->state);
 
 	/* fill slot and make note of the index */
@@ -693,8 +688,9 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
 					 pf->next_vsi);
 
 	if (vsi->type == ICE_VSI_CTRL) {
-		if (vf) {
-			vf->ctrl_vsi_idx = vsi->idx;
+		if (vsi->vf) {
+			WARN_ON(vsi->vf->ctrl_vsi_idx != ICE_NO_VSI);
+			vsi->vf->ctrl_vsi_idx = vsi->idx;
 		} else {
 			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
 			pf->ctrl_vsi_idx = vsi->idx;
@@ -1265,12 +1261,15 @@ ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 /**
  * ice_vsi_init - Create and initialize a VSI
  * @vsi: the VSI being configured
- * @init_vsi: flag, tell if VSI need to be initialized
+ * @vsi_flags: VSI configuration flags
+ *
+ * Set ICE_FLAG_VSI_INIT to initialize a new VSI context, clear it to
+ * reconfigure an existing context.
  *
  * This initializes a VSI context depending on the VSI type to be added and
  * passes it down to the add_vsi aq command to create a new VSI.
  */
-static int ice_vsi_init(struct ice_vsi *vsi, int init_vsi)
+static int ice_vsi_init(struct ice_vsi *vsi, u32 vsi_flags)
 {
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
@@ -1332,7 +1331,7 @@ static int ice_vsi_init(struct ice_vsi *vsi, int init_vsi)
 		/* if updating VSI context, make sure to set valid_section:
 		 * to indicate which section of VSI context being updated
 		 */
-		if (!(init_vsi & ICE_VSI_FLAG_INIT))
+		if (!(vsi_flags & ICE_VSI_FLAG_INIT))
 			ctxt->info.valid_sections |=
 				cpu_to_le16(ICE_AQ_VSI_PROP_Q_OPT_VALID);
 	}
@@ -1345,7 +1344,7 @@ static int ice_vsi_init(struct ice_vsi *vsi, int init_vsi)
 		if (ret)
 			goto out;
 
-		if (!(init_vsi & ICE_VSI_FLAG_INIT))
+		if (!(vsi_flags & ICE_VSI_FLAG_INIT))
 			/* means VSI being updated */
 			/* must to indicate which section of VSI context are
 			 * being modified
@@ -1361,7 +1360,7 @@ static int ice_vsi_init(struct ice_vsi *vsi, int init_vsi)
 			cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
 	}
 
-	if (init_vsi & ICE_VSI_FLAG_INIT) {
+	if (vsi_flags & ICE_VSI_FLAG_INIT) {
 		ret = ice_add_vsi(hw, vsi->idx, ctxt, NULL);
 		if (ret) {
 			dev_err(dev, "Add VSI failed, err %d\n", ret);
@@ -2700,11 +2699,10 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
 /**
  * ice_vsi_cfg_def - configure default VSI based on the type
  * @vsi: pointer to VSI
- * @ch: ptr to channel
- * @init_vsi: is this an initialization or a reconfigure of the VSI
+ * @params: the parameters to configure this VSI with
  */
 static int
-ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
+ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
 	struct ice_pf *pf = vsi->back;
@@ -2712,7 +2710,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
 
 	vsi->vsw = pf->first_sw;
 
-	ret = ice_vsi_alloc_def(vsi, ch);
+	ret = ice_vsi_alloc_def(vsi, params->ch);
 	if (ret)
 		return ret;
 
@@ -2735,7 +2733,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
 	ice_vsi_set_tc_cfg(vsi);
 
 	/* create the VSI */
-	ret = ice_vsi_init(vsi, init_vsi);
+	ret = ice_vsi_init(vsi, params->flags);
 	if (ret)
 		goto unroll_get_qs;
 
@@ -2860,17 +2858,13 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
 /**
  * ice_vsi_cfg - configure VSI and tc on it
  * @vsi: pointer to VSI
- * @vf: pointer to VF to which this VSI connects. This field is used primarily
- *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
- * @ch: ptr to channel
- * @init_vsi: is this an initialization or a reconfigure of the VSI
+ * @params: parameters used to configure this VSI
  */
-int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
-		int init_vsi)
+int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 {
 	int ret;
 
-	ret = ice_vsi_cfg_def(vsi, ch, init_vsi);
+	ret = ice_vsi_cfg_def(vsi, params);
 	if (ret)
 		return ret;
 
@@ -2941,11 +2935,7 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 /**
  * ice_vsi_setup - Set up a VSI by a given type
  * @pf: board private structure
- * @pi: pointer to the port_info instance
- * @vsi_type: VSI type
- * @vf: pointer to VF to which this VSI connects. This field is used primarily
- *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
- * @ch: ptr to channel
+ * @params: parameters to use when creating the VSI
  *
  * This allocates the sw VSI structure and its queue resources.
  *
@@ -2953,21 +2943,26 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
  * success, NULL on failure.
  */
 struct ice_vsi *
-ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type vsi_type, struct ice_vf *vf,
-	      struct ice_channel *ch)
+ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi;
 	int ret;
 
-	vsi = ice_vsi_alloc(pf, pi, vsi_type, ch, vf);
+	/* ice_vsi_setup can only initialize a new VSI, and we must have
+	 * a port_info structure for it.
+	 */
+	if (WARN_ON(!(params->flags & ICE_VSI_FLAG_INIT)) ||
+	    WARN_ON(!params->pi))
+		return NULL;
+
+	vsi = ice_vsi_alloc(pf, params);
 	if (!vsi) {
 		dev_err(dev, "could not allocate VSI\n");
 		return NULL;
 	}
 
-	ret = ice_vsi_cfg(vsi, vf, ch, ICE_VSI_FLAG_INIT);
+	ret = ice_vsi_cfg(vsi, params);
 	if (ret)
 		goto err_vsi_cfg;
 
@@ -2992,7 +2987,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	return vsi;
 
 err_vsi_cfg:
-	if (vsi_type == ICE_VSI_VF)
+	if (params->type == ICE_VSI_VF)
 		ice_enable_lag(pf->lag);
 	ice_vsi_free(vsi);
 
@@ -3470,12 +3465,16 @@ ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi, int prev_txq, int prev_rxq)
 /**
  * ice_vsi_rebuild - Rebuild VSI after reset
  * @vsi: VSI to be rebuild
- * @init_vsi: flag, tell if VSI need to be initialized
+ * @vsi_flags: flags used for VSI rebuild flow
+ *
+ * Set vsi_flags to ICE_VSI_FLAG_INIT to initialize a new VSI, or
+ * ICE_VSI_FLAG_NO_INIT to rebuild an existing VSI in hardware.
  *
  * Returns 0 on success and negative value on failure
  */
-int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
+int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 {
+	struct ice_vsi_cfg_params params = {};
 	struct ice_coalesce_stored *coalesce;
 	int ret, prev_txq, prev_rxq;
 	int prev_num_q_vectors = 0;
@@ -3484,6 +3483,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
 	if (!vsi)
 		return -EINVAL;
 
+	params = ice_vsi_to_params(vsi);
+	params.flags = vsi_flags;
+
 	pf = vsi->back;
 	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
 		return -EINVAL;
@@ -3499,13 +3501,13 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi)
 	prev_rxq = vsi->num_rxq;
 
 	ice_vsi_decfg(vsi);
-	ret = ice_vsi_cfg_def(vsi, vsi->ch, init_vsi);
+	ret = ice_vsi_cfg_def(vsi, &params);
 	if (ret)
 		goto err_vsi_cfg;
 
 	ret = ice_vsi_cfg_tc_lan(pf, vsi);
 	if (ret) {
-		if (init_vsi & ICE_VSI_FLAG_INIT) {
+		if (vsi_flags & ICE_VSI_FLAG_INIT) {
 			ret = -EIO;
 			goto err_vsi_cfg_tc_lan;
 		} else {
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index b76f05e1f8a3..75221478f2dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -7,6 +7,47 @@
 #include "ice.h"
 #include "ice_vlan.h"
 
+/* Flags used for VSI configuration and rebuild */
+#define ICE_VSI_FLAG_INIT	BIT(0)
+#define ICE_VSI_FLAG_NO_INIT	0
+
+/**
+ * struct ice_vsi_cfg_params - VSI configuration parameters
+ * @pi: pointer to the port_info instance for the VSI
+ * @ch: pointer to the channel structure for the VSI, may be NULL
+ * @vf: pointer to the VF associated with this VSI, may be NULL
+ * @type: the type of VSI to configure
+ * @flags: VSI flags used for rebuild and configuration
+ *
+ * Parameter structure used when configuring a new VSI.
+ */
+struct ice_vsi_cfg_params {
+	struct ice_port_info *pi;
+	struct ice_channel *ch;
+	struct ice_vf *vf;
+	enum ice_vsi_type type;
+	u32 flags;
+};
+
+/**
+ * ice_vsi_to_params - Get parameters for an existing VSI
+ * @vsi: the VSI to get parameters for
+ *
+ * Fill a parameter structure for reconfiguring a VSI with its current
+ * parameters, such as during a rebuild operation.
+ */
+static inline struct ice_vsi_cfg_params ice_vsi_to_params(struct ice_vsi *vsi)
+{
+	struct ice_vsi_cfg_params params = {};
+
+	params.pi = vsi->port_info;
+	params.ch = vsi->ch;
+	params.vf = vsi->vf;
+	params.type = vsi->type;
+
+	return params;
+}
+
 const char *ice_vsi_type_str(enum ice_vsi_type vsi_type);
 
 bool ice_pf_state_is_nominal(struct ice_pf *pf);
@@ -50,9 +91,7 @@ int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi);
 void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc);
 
 struct ice_vsi *
-ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type vsi_type, struct ice_vf *vf,
-	      struct ice_channel *ch);
+ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params);
 
 void ice_napi_del(struct ice_vsi *vsi);
 
@@ -70,11 +109,8 @@ int ice_free_res(struct ice_res_tracker *res, u16 index, u16 id);
 int
 ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id);
 
-#define ICE_VSI_FLAG_INIT	BIT(0)
-#define ICE_VSI_FLAG_NO_INIT	0
-int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi);
-int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf,
-		struct ice_channel *ch, int init_vsi);
+int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
+int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params);
 
 bool ice_is_reset_in_progress(unsigned long *state);
 int ice_wait_for_reset(struct ice_pf *pf, unsigned long timeout);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8fd9c87f30e2..4165fde0106d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3444,14 +3444,27 @@ void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size)
 static struct ice_vsi *
 ice_pf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_PF, NULL, NULL);
+	struct ice_vsi_cfg_params params = {};
+
+	params.type = ICE_VSI_PF;
+	params.pi = pi;
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	return ice_vsi_setup(pf, &params);
 }
 
 static struct ice_vsi *
 ice_chnl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		   struct ice_channel *ch)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_CHNL, NULL, ch);
+	struct ice_vsi_cfg_params params = {};
+
+	params.type = ICE_VSI_CHNL;
+	params.pi = pi;
+	params.ch = ch;
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	return ice_vsi_setup(pf, &params);
 }
 
 /**
@@ -3465,7 +3478,13 @@ ice_chnl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 static struct ice_vsi *
 ice_ctrl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_CTRL, NULL, NULL);
+	struct ice_vsi_cfg_params params = {};
+
+	params.type = ICE_VSI_CTRL;
+	params.pi = pi;
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	return ice_vsi_setup(pf, &params);
 }
 
 /**
@@ -3479,7 +3498,13 @@ ice_ctrl_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 struct ice_vsi *
 ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 {
-	return ice_vsi_setup(pf, pi, ICE_VSI_LB, NULL, NULL);
+	struct ice_vsi_cfg_params params = {};
+
+	params.type = ICE_VSI_LB;
+	params.pi = pi;
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	return ice_vsi_setup(pf, &params);
 }
 
 /**
@@ -4998,6 +5023,7 @@ static void ice_deinit(struct ice_pf *pf)
  */
 int ice_load(struct ice_pf *pf)
 {
+	struct ice_vsi_cfg_params params = {};
 	struct ice_vsi *vsi;
 	int err;
 
@@ -5010,7 +5036,11 @@ int ice_load(struct ice_pf *pf)
 		return err;
 
 	vsi = ice_get_main_vsi(pf);
-	err = ice_vsi_cfg(vsi, NULL, NULL, ICE_VSI_FLAG_INIT);
+
+	params = ice_vsi_to_params(vsi);
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	err = ice_vsi_cfg(vsi, &params);
 	if (err)
 		goto err_vsi_cfg;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 3ba1408c56a9..a101768b1cc5 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -248,11 +248,16 @@ void ice_free_vfs(struct ice_pf *pf)
  */
 static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf *vf)
 {
-	struct ice_port_info *pi = ice_vf_get_port_info(vf);
+	struct ice_vsi_cfg_params params = {};
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
-	vsi = ice_vsi_setup(pf, pi, ICE_VSI_VF, vf, NULL);
+	params.type = ICE_VSI_VF;
+	params.pi = ice_vf_get_port_info(vf);
+	params.vf = vf;
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	vsi = ice_vsi_setup(pf, &params);
 
 	if (!vsi) {
 		dev_err(ice_pf_to_dev(pf), "Failed to create VF VSI\n");
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c3b406df269f..1b7e919b9275 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1115,11 +1115,16 @@ void ice_vf_ctrl_vsi_release(struct ice_vf *vf)
  */
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
 {
-	struct ice_port_info *pi = ice_vf_get_port_info(vf);
+	struct ice_vsi_cfg_params params = {};
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
-	vsi = ice_vsi_setup(pf, pi, ICE_VSI_CTRL, vf, NULL);
+	params.type = ICE_VSI_CTRL;
+	params.pi = ice_vf_get_port_info(vf);
+	params.vf = vf;
+	params.flags = ICE_VSI_FLAG_INIT;
+
+	vsi = ice_vsi_setup(pf, &params);
 	if (!vsi) {
 		dev_err(ice_pf_to_dev(pf), "Failed to create VF control VSI\n");
 		ice_vf_ctrl_invalidate_vsi(vf);
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
