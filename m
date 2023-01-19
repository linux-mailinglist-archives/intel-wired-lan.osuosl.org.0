Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDC1672DEF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3F18610BF;
	Thu, 19 Jan 2023 01:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3F18610BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091036;
	bh=y5cayges07D2+4nGcwnXuRBe1W/l1yqWsn5NNJ6YB00=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nLXqKRgcGyNqgsDZCjY22Z63Wgv8Hl44G1H+Rfi8PhI2k6C3JlLLakYXsA9knXFFp
	 ud3Vai9DIxG6boVfkPO6aySqmZQmzBi0RqyxpeQhb/EyuHNGsxe7I2EBHGEwt1cnof
	 yeIOC4EEkQNPLWxCC+etAer9m4kjBWE+P0pZPbiFui13ifVlL7oJLJc6NFWAebD9yB
	 KNxFYuwM/yMyO1AloGLPKJ8KIZ+Fr/9/yS1yKh1HHbOj39zlc1RFTpjsxShQzBMegW
	 sBV8Qju5uCNG+uHQ6UgvwRSUiMdvRLtFtA8rOMMlPFM+0gNmpUxNUVk9/n6s4OCwrp
	 wJX4jaIVPOeYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LB-slfEZNHyc; Thu, 19 Jan 2023 01:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88DF360FEA;
	Thu, 19 Jan 2023 01:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88DF360FEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F47D1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDE78418A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE78418A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VHxzV3r4P3t4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6ADB4191E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6ADB4191E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840724"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840724"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881867"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881867"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:44 -0800
Message-Id: <20230119011653.311675-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091024; x=1705627024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hDD6no3mFh7GHiVidYQooP47ZRozI3RS0yxBysFyP5U=;
 b=ZN4jzlzKMzdJHfYdHXWFwW56Tr9IyirMeOdPIgDx8QE7xoPzmf2h+a+5
 ApecAb02RQ9Lieny88Icp9EaapE1Ijr1ZbI7DO4Kc0hurWSOP1DFCbpGy
 jlUjVscNmwBSCEFynYFSuyfbCvORSbkqlDzuijwWWbjixsQfB2z10lLJS
 wrGQR95i2JZwkMCtfKVm+ZNtMdp8V7muyFZGeDPbCoJDu667YuflL1+LC
 hmOkLYiCjAyOr27RynbuX3k5RVofOAOyAjG5ZBgI9Kn0hYjWAy3PUAJKw
 Zb4WFOYz3ZFP55yDRXc09NhBXGPRxm5I76/hllYfyVhNoERnH0VR9yuTV
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZN4jzlzK
Subject: [Intel-wired-lan] [PATCH net-next v2 04/13] ice: move vsi_type
 assignment from ice_vsi_alloc to ice_vsi_cfg
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

The ice_vsi_alloc and ice_vsi_cfg functions are used together to allocate
and configure a new VSI, called as part of the ice_vsi_setup function.

In the future with the addition of the subfunction code the ice driver
will want to be able to allocate a VSI while delaying the configuration to
a later point of the port activation.

Currently this requires that the port code know what type of VSI should
be allocated. This is required because ice_vsi_alloc assigns the VSI type.

Refactor the ice_vsi_alloc and ice_vsi_cfg functions so that VSI type
assignment isn't done until the configuration stage. This will allow the
devlink port addition logic to reserve a VSI as early as possible before
the type of the port is known. In this way, the port add can fail in the
event that all hardware VSI resources are exhausted.

Since the ice_vsi_cfg function already takes the ice_vsi_cfg_params
structure, this is relatively straight forward.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1:
* Re-order after new patch
* Changed to take into account ice_vsi_cfg_params

 drivers/net/ethernet/intel/ice/ice_lib.c | 51 ++++++++++++------------
 1 file changed, 26 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 1a2af5a9cffe..e2f0b28a89d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -639,23 +639,18 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
 /**
  * ice_vsi_alloc - Allocates the next available struct VSI in the PF
  * @pf: board private structure
- * @params: parameters to use when allocating the new VSI
  *
- * The VF pointer is used for ICE_VSI_VF and ICE_VSI_CTRL. For ICE_VSI_CTRL,
- * it may be NULL in the case there is no association with a VF. For
- * ICE_VSI_VF the VF pointer *must not* be NULL.
+ * Reserves a VSI index from the PF and allocates an empty VSI structure
+ * without a type. The VSI structure must later be initialized by calling
+ * ice_vsi_cfg().
  *
  * returns a pointer to a VSI on success, NULL on failure.
  */
-static struct ice_vsi *
-ice_vsi_alloc(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
+static struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi = NULL;
 
-	if (WARN_ON(params->type == ICE_VSI_VF && !params->vf))
-		return NULL;
-
 	/* Need to protect the allocation of the VSIs at the PF level */
 	mutex_lock(&pf->sw_mutex);
 
@@ -672,11 +667,7 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 	if (!vsi)
 		goto unlock_pf;
 
-	vsi->type = params->type;
 	vsi->back = pf;
-	vsi->port_info = params->pi;
-	/* For VSIs which don't have a connected VF, this will be NULL */
-	vsi->vf = params->vf;
 	set_bit(ICE_VSI_DOWN, vsi->state);
 
 	/* fill slot and make note of the index */
@@ -687,16 +678,6 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 	pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
 					 pf->next_vsi);
 
-	if (vsi->type == ICE_VSI_CTRL) {
-		if (vsi->vf) {
-			WARN_ON(vsi->vf->ctrl_vsi_idx != ICE_NO_VSI);
-			vsi->vf->ctrl_vsi_idx = vsi->idx;
-		} else {
-			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
-			pf->ctrl_vsi_idx = vsi->idx;
-		}
-	}
-
 unlock_pf:
 	mutex_unlock(&pf->sw_mutex);
 	return vsi;
@@ -2856,14 +2837,24 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 }
 
 /**
- * ice_vsi_cfg - configure VSI and tc on it
+ * ice_vsi_cfg - configure a previously allocated VSI
  * @vsi: pointer to VSI
  * @params: parameters used to configure this VSI
  */
 int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 {
+	struct ice_pf *pf = vsi->back;
 	int ret;
 
+	if (WARN_ON(params->type == ICE_VSI_VF && !params->vf))
+		return -EINVAL;
+
+	vsi->type = params->type;
+	vsi->port_info = params->pi;
+
+	/* For VSIs which don't have a connected VF, this will be NULL */
+	vsi->vf = params->vf;
+
 	ret = ice_vsi_cfg_def(vsi, params);
 	if (ret)
 		return ret;
@@ -2872,6 +2863,16 @@ int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 	if (ret)
 		ice_vsi_decfg(vsi);
 
+	if (vsi->type == ICE_VSI_CTRL) {
+		if (vsi->vf) {
+			WARN_ON(vsi->vf->ctrl_vsi_idx != ICE_NO_VSI);
+			vsi->vf->ctrl_vsi_idx = vsi->idx;
+		} else {
+			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
+			pf->ctrl_vsi_idx = vsi->idx;
+		}
+	}
+
 	return ret;
 }
 
@@ -2956,7 +2957,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 	    WARN_ON(!params->pi))
 		return NULL;
 
-	vsi = ice_vsi_alloc(pf, params);
+	vsi = ice_vsi_alloc(pf);
 	if (!vsi) {
 		dev_err(dev, "could not allocate VSI\n");
 		return NULL;
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
