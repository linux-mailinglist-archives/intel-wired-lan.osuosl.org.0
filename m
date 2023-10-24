Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 060047D4EFA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:35:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 879C94ED2A;
	Tue, 24 Oct 2023 11:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 879C94ED2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698147354;
	bh=giq64Yz2WFtbiBWcCn1iXz/NmOyAQe48IMmsClDVXa4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g64MGyvXW5TC3QBk8YCnRjkJ/u1gpy4IZ71bma4xzPimms7nnZ8Hs2+gBNBgIU1G1
	 HxrzZX4p1kkuuYtXqAwb08pHcCwFi7ab9sZgMffibTfdJZRUR4jWOlJJIaWvyig+Pa
	 R0lq94grMfCv4PvU87uB1F5dRHbY4nLbLOlFKefAaHoMi0TS5+45/rmH4ass4sr52h
	 +kkAnzmBquAIwka2/lLLi9Kr5IrK1ncrFBxobV1pftR237zHNNZPLOMupq0FHSy5Gn
	 2HxRKvlJfJ3MNAzYJiWVynd4NqfXI653DLu7GTfyrfib+c30+LbkCdQ/pYRoJaOsi3
	 ODUN0TbHDOELw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVTThI_gicyE; Tue, 24 Oct 2023 11:35:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E527417A4;
	Tue, 24 Oct 2023 11:35:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E527417A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61C7A1BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 385E243122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 385E243122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xEUV3qhZQAEk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:35:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 086DA42ECD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 086DA42ECD
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5660575"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5660575"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:35:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146293"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orviesa001.jf.intel.com with ESMTP; 24 Oct 2023 04:33:54 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 13:09:28 +0200
Message-ID: <20231024110929.19423-15-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147314; x=1729683314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TMvyGmG61yrdJNFhvJa2O2xbJbO7TvBcJk5g0EOCods=;
 b=HEDlyugo6DZmG0Vaz8yFoUgLqPxGqGLNLcfSPykoSVywX9kMmDzD/05R
 iDESGKxdowS/nW+fkL9ejuh6w3k7H6me5YORfoxx7uTp2HfL4E5lBBr1L
 U+n9mJqYccoXMvTGTjFgJSKT/mhg78v8qrtFCq9l1Hlx7jGjBsaBaQzQF
 r8P80QaIMzQONMpiBjRziilx638c9SDsBrZiEMdzARoKTwz06LflBwEtK
 juda1GH9NT1xXfNaNOMtgBk+zWOqxB8zdklBbnW7E/UHGIvrn+s/8sDKG
 54hZTFsE4O/F8Gg0UxGDoo8tB9z1EeS0bsV+pav1dWvGyjW2Hvq6Y32lG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HEDlyugo
Subject: [Intel-wired-lan] [PATCH iwl-next v1 14/15] ice: adjust switchdev
 rebuild path
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

There is no need to use specific functions for rebuilding path. Let's
use current implementation by removing all representors and as the
result remove switchdev environment.

It will be added in devices rebuild path. For example during adding VFs,
port representors for them also will be created.

Rebuild control plane VSI before removing representors with INIT_VSI
flag set to reinit VSI in hardware after reset.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 66 +++++++-------------
 drivers/net/ethernet/intel/ice/ice_main.c    |  4 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  7 +--
 3 files changed, 28 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index de5744aa5c2a..9ff4fe4fb133 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -406,19 +406,6 @@ ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
 	return ice_vsi_setup(pf, &params);
 }
 
-/**
- * ice_eswitch_napi_del - remove NAPI handle for all port representors
- * @reprs: xarray of reprs
- */
-static void ice_eswitch_napi_del(struct xarray *reprs)
-{
-	struct ice_repr *repr;
-	unsigned long id;
-
-	xa_for_each(reprs, id, repr)
-		netif_napi_del(&repr->q_vector->napi);
-}
-
 /**
  * ice_eswitch_napi_enable - enable NAPI for all port representors
  * @reprs: xarray of reprs
@@ -624,36 +611,6 @@ static void ice_eswitch_start_reprs(struct ice_pf *pf)
 	ice_eswitch_add_sp_rules(pf);
 }
 
-/**
- * ice_eswitch_rebuild - rebuild eswitch
- * @pf: pointer to PF structure
- */
-int ice_eswitch_rebuild(struct ice_pf *pf)
-{
-	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
-	int status;
-
-	ice_eswitch_napi_disable(&pf->eswitch.reprs);
-	ice_eswitch_napi_del(&pf->eswitch.reprs);
-
-	status = ice_eswitch_setup_env(pf);
-	if (status)
-		return status;
-
-	ice_eswitch_remap_rings_to_vectors(&pf->eswitch);
-
-	ice_replay_tc_fltrs(pf);
-
-	status = ice_vsi_open(ctrl_vsi);
-	if (status)
-		return status;
-
-	ice_eswitch_napi_enable(&pf->eswitch.reprs);
-	ice_eswitch_start_all_tx_queues(pf);
-
-	return 0;
-}
-
 static void
 ice_eswitch_cp_change_queues(struct ice_eswitch *eswitch, int change)
 {
@@ -752,3 +709,26 @@ void ice_eswitch_detach(struct ice_pf *pf, struct ice_vf *vf)
 		ice_eswitch_start_reprs(pf);
 	}
 }
+
+/**
+ * ice_eswitch_rebuild - rebuild eswitch
+ * @pf: pointer to PF structure
+ */
+int ice_eswitch_rebuild(struct ice_pf *pf)
+{
+	struct ice_repr *repr;
+	unsigned long id;
+	int err;
+
+	if (!ice_is_switchdev_running(pf))
+		return 0;
+
+	err = ice_vsi_rebuild(pf->eswitch.control_vsi, ICE_VSI_FLAG_INIT);
+	if (err)
+		return err;
+
+	xa_for_each(&pf->eswitch.reprs, id, repr)
+		ice_eswitch_detach(pf, repr->vf);
+
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cb0ff015647f..58d2a6267918 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7412,9 +7412,9 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 			ice_ptp_cfg_timestamp(pf, true);
 	}
 
-	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_SWITCHDEV_CTRL);
+	err = ice_eswitch_rebuild(pf);
 	if (err) {
-		dev_err(dev, "Switchdev CTRL VSI rebuild failed: %d\n", err);
+		dev_err(dev, "Switchdev rebuild failed: %d\n", err);
 		goto err_vsi_rebuild;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 68f9de0a7a8f..d2a99a20c4ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -760,6 +760,7 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 	ice_for_each_vf(pf, bkt, vf) {
 		mutex_lock(&vf->cfg_lock);
 
+		ice_eswitch_detach(pf, vf);
 		vf->driver_caps = 0;
 		ice_vc_set_default_allowlist(vf);
 
@@ -775,13 +776,11 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 		ice_vf_rebuild_vsi(vf);
 		ice_vf_post_vsi_rebuild(vf);
 
+		ice_eswitch_attach(pf, vf);
+
 		mutex_unlock(&vf->cfg_lock);
 	}
 
-	if (ice_is_eswitch_mode_switchdev(pf))
-		if (ice_eswitch_rebuild(pf))
-			dev_warn(dev, "eswitch rebuild failed\n");
-
 	ice_flush(hw);
 	clear_bit(ICE_VF_DIS, pf->state);
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
