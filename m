Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2CF66A60C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D08F241B5B;
	Fri, 13 Jan 2023 22:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D08F241B5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649486;
	bh=FFP90bBaiI3um15BO0m3udiHc7ZX7+R7FL6N9C6T6Ck=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nUG+N3QJISV2XOb2N9NUKBSU2joxpXICtz38BNirbYcgnEdv9I/rB7j6prA95VVg4
	 ykKre5uvoWKXiJEModDa9z6SY5wDtTO0KK1l4b8egTh0L2zsxqfsWq5JBbmiIeUsVV
	 Ehx+Jh3FpbNzI/DOh18GSGS4W3IMl7k3jSPk0GUwyhNtHiamkAqzOmZ989IUz/cCf2
	 SJ2/zGS0AurFTbBUeyF0KfaXtr8qwO82KGNREFoSKQ9mAADyy14LM4GKnh4nZvTuhT
	 DHHWtaXsC0cRLGTnkqsLrcT//bMdm7aroVi2OCLfeTogMUHNwzI0TCzBb+IqxdHjFj
	 9r6Dd5xeQmnWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hPHyOrBb_SE2; Fri, 13 Jan 2023 22:38:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20B2941B55;
	Fri, 13 Jan 2023 22:38:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20B2941B55
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF6871BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8A9682207
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8A9682207
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BvgVdEIpVVYu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 281C0821FF
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 281C0821FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354046"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354046"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859760"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859760"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:42 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:25 -0800
Message-Id: <20230113223735.2514364-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649464; x=1705185464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bfs7Y505cv9CIBH+B9wbsrbLyih6M9CJ+g5YLZkg1cw=;
 b=I4UjOI7S7pv9W5qryLwIv/L6uT2DPdmH9V/XIQQ/go0ke0yPXGZJBkf1
 VTtHv9ZcjNFWbZcg5YCJIO7n6sQZobrCSO/dEByBWybHRZxPVpOAwV51+
 Gmr3QPuhl9rtFo5NQyTdF59ZIN8q3p6d6ncGmb58fW29AeS1iq6SkyKEr
 oOdrfEnKgqq526U04bFT/sLRu6hvRUd+94oBTtLnEJd3ow0OYjocP5nxR
 QAxVS4L9mrNxqlFXlkBEG+eatQkD1ojiWW/OUwV/csvaiF9OlJ5V9IOWi
 ohhYXwQ6+/8+qIN8TiQj9NvSpQK3X13KJyM1E9DgBmufjC9ht7Rii/TE4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I4UjOI7S
Subject: [Intel-wired-lan] [PATCH net-next 03/13] ice: move vsi_type
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

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 65 ++++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  3 +-
 drivers/net/ethernet/intel/ice/ice_main.c |  3 +-
 3 files changed, 37 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0bf99f0e3faa..f89279ede9a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -640,28 +640,18 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
 /**
  * ice_vsi_alloc - Allocates the next available struct VSI in the PF
  * @pf: board private structure
- * @pi: pointer to the port_info instance
- * @vsi_type: type of VSI
- * @ch: ptr to channel
- * @vf: VF for ICE_VSI_VF and ICE_VSI_CTRL
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
-ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
-	      enum ice_vsi_type vsi_type, struct ice_channel *ch,
-	      struct ice_vf *vf)
+static struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_vsi *vsi = NULL;
 
-	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
-		return NULL;
-
 	/* Need to protect the allocation of the VSIs at the PF level */
 	mutex_lock(&pf->sw_mutex);
 
@@ -678,11 +668,7 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
 	if (!vsi)
 		goto unlock_pf;
 
-	vsi->type = vsi_type;
 	vsi->back = pf;
-	vsi->port_info = pi;
-	/* For VSIs which don't have a connected VF, this will be NULL */
-	vsi->vf = vf;
 	set_bit(ICE_VSI_DOWN, vsi->state);
 
 	/* fill slot and make note of the index */
@@ -693,15 +679,6 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
 	pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
 					 pf->next_vsi);
 
-	if (vsi->type == ICE_VSI_CTRL) {
-		if (vf) {
-			vf->ctrl_vsi_idx = vsi->idx;
-		} else {
-			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
-			pf->ctrl_vsi_idx = vsi->idx;
-		}
-	}
-
 unlock_pf:
 	mutex_unlock(&pf->sw_mutex);
 	return vsi;
@@ -2859,18 +2836,33 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
 }
 
 /**
- * ice_vsi_cfg - configure VSI and tc on it
+ * ice_vsi_cfg - configure a previously allocated VSI
  * @vsi: pointer to VSI
+ * @vsi_type: the type of VSI to configure as
+ * @pi: the port info for this VSI
  * @vf: pointer to VF to which this VSI connects. This field is used primarily
  *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
  * @ch: ptr to channel
  * @init_vsi: is this an initialization or a reconfigure of the VSI
+ *
+ * Configure a VSI allocated with ice_vsi_alloc.
  */
-int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
-		int init_vsi)
+int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
+		struct ice_port_info *pi, struct ice_vf *vf,
+		struct ice_channel *ch, int init_vsi)
 {
+	struct ice_pf *pf = vsi->back;
 	int ret;
 
+	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
+		return -EINVAL;
+
+	vsi->type = vsi_type;
+	vsi->port_info = pi;
+
+	/* For VSIs which don't have a connected VF, this will be NULL */
+	vsi->vf = vf;
+
 	ret = ice_vsi_cfg_def(vsi, ch, init_vsi);
 	if (ret)
 		return ret;
@@ -2879,6 +2871,15 @@ int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
 	if (ret)
 		ice_vsi_decfg(vsi);
 
+	if (vsi->type == ICE_VSI_CTRL) {
+		if (vf) {
+			vf->ctrl_vsi_idx = vsi->idx;
+		} else {
+			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
+			pf->ctrl_vsi_idx = vsi->idx;
+		}
+	}
+
 	return ret;
 }
 
@@ -2962,13 +2963,13 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	struct ice_vsi *vsi;
 	int ret;
 
-	vsi = ice_vsi_alloc(pf, pi, vsi_type, ch, vf);
+	vsi = ice_vsi_alloc(pf);
 	if (!vsi) {
 		dev_err(dev, "could not allocate VSI\n");
 		return NULL;
 	}
 
-	ret = ice_vsi_cfg(vsi, vf, ch, ICE_VSI_FLAG_INIT);
+	ret = ice_vsi_cfg(vsi, vsi_type, pi, vf, ch, ICE_VSI_FLAG_INIT);
 	if (ret)
 		goto err_vsi_cfg;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index b76f05e1f8a3..fb785d8cde9a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -73,7 +73,8 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id);
 #define ICE_VSI_FLAG_INIT	BIT(0)
 #define ICE_VSI_FLAG_NO_INIT	0
 int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi);
-int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf,
+int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
+		struct ice_port_info *pi, struct ice_vf *vf,
 		struct ice_channel *ch, int init_vsi);
 
 bool ice_is_reset_in_progress(unsigned long *state);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8fd9c87f30e2..29cd77dd3812 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5010,7 +5010,8 @@ int ice_load(struct ice_pf *pf)
 		return err;
 
 	vsi = ice_get_main_vsi(pf);
-	err = ice_vsi_cfg(vsi, NULL, NULL, ICE_VSI_FLAG_INIT);
+	err = ice_vsi_cfg(vsi, ICE_VSI_PF, pf->hw.port_info, NULL, NULL,
+			  ICE_VSI_FLAG_INIT);
 	if (err)
 		goto err_vsi_cfg;
 
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
