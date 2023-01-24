Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D3F679FFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 18:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 785C14186B;
	Tue, 24 Jan 2023 17:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 785C14186B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674580764;
	bh=W4/haeiBVUVQ/QDOgFNlcKIaB8NtQ07/BgYgcR2fBZ0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SSIsNm9yRbFnJr9CEkWCQHC5+T/t50O1ik35SP2u5T5wKBVSMLBqZsvR50USskWo9
	 2Lk96Hm5f5UMleJxbZl6SIBZjufgGCyBGErJD7P4CFt2uREVlix8t4fXz3CugCiAPo
	 p+j3HwwJNN5sZBzW9csqA4o14sCGKSSqx8ipSqeKZmagbV/EC7dbhFsY50YxUm4ThZ
	 sthmuagG1WkptUhQu5yZL6pnNTJqBDyoaA14n7FJ2EwIkQsEBDVpkp6Zsz8rpfy9qm
	 G921Qgd9TypQ5b4s1+FLuzdcSTStPKG5cLzBlUsKWNukJpP7Je1iDrZDVMnV21+bpA
	 p3xfpK412zcXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yV_RvGzbslD6; Tue, 24 Jan 2023 17:19:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E55AE41844;
	Tue, 24 Jan 2023 17:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E55AE41844
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC58E1BF473
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 17:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 844C8820EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 17:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 844C8820EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uvIa5fYtNsP4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 17:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99A6881E52
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99A6881E52
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 17:19:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="390853001"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="390853001"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 09:19:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="664167815"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="664167815"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 09:19:11 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Jan 2023 09:19:43 -0800
Message-Id: <20230124171943.1625923-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674580756; x=1706116756;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e1hiVOg5swSC6bI/vBDOWzCT188usV4PkS1QhB4vSec=;
 b=HMo7/h3W419z3bL7OqU+5uH0oQFyCyHF3LWNTBvg5LrGdUUa0q+8/AUh
 45LBBKTEXOQtExv+eicJq5W0iQ1r5VOr41i0QbQ9xYA7b+8uFvn3FHwQr
 imVinMgcx80x647pIit8H6qhy97Uj7b0ftq2h6mES6S4plD3I7Q9krAty
 ajCbViMcF5Jk3k9GDSprVdnmfCF6pvmk3oHCcA+7psQmnHvzFSAyc3j1S
 ysib7e3QKE+s1SaQxpcFNYKYj2/PqNREOW9FHUbTVleZ1hEQeVU5Vl3W4
 HpVcdhUMw0OSqpivBd2q9VpVR4JrZhjN5cS/KTOxSMQUa19PUb2g8VTeY
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HMo7/h3W
Subject: [Intel-wired-lan] [PATCH net v4] ice: Prevent set_channel from
 changing queues while RDMA active
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

The PF controls the set of queues that the RDMA auxiliary_driver requests
resources from.  The set_channel command will alter that pool and trigger a
reconfiguration of the VSI, which breaks RDMA functionality.

Prevent set_channel from executing when RDMA driver bound to auxiliary
device.

Adding a locked variable to pass down the call chain to avoid double
locking the device_lock.

Fixes: 348048e724a0 ("ice: Implement iidc operations")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
Changes since v3:
Protected driver with device_lock.
sent variable down the call chain to avoid double lock

Changes since v2:
Added check for NULL pointer

Changes since v1:
Fixed typos and pointer reference
---
 drivers/net/ethernet/intel/ice/ice.h         |  2 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 23 +++++++++-------
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  4 +--
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 28 +++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_main.c    |  5 ++--
 5 files changed, 43 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2f0b604abc5e..713069f809ec 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -880,7 +880,7 @@ void ice_set_ethtool_repr_ops(struct net_device *netdev);
 void ice_set_ethtool_safe_mode_ops(struct net_device *netdev);
 u16 ice_get_avail_txq_count(struct ice_pf *pf);
 u16 ice_get_avail_rxq_count(struct ice_pf *pf);
-int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx);
+int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked);
 void ice_update_vsi_stats(struct ice_vsi *vsi);
 void ice_update_pf_stats(struct ice_pf *pf);
 void
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 4f24d441c35e..0a55c552189a 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -441,7 +441,7 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 		goto out;
 	}
 
-	ice_pf_dcb_recfg(pf);
+	ice_pf_dcb_recfg(pf, false);
 
 out:
 	/* enable previously downed VSIs */
@@ -731,12 +731,13 @@ static int ice_dcb_noncontig_cfg(struct ice_pf *pf)
 /**
  * ice_pf_dcb_recfg - Reconfigure all VEBs and VSIs
  * @pf: pointer to the PF struct
+ * @locked: is adev device lock held
  *
  * Assumed caller has already disabled all VSIs before
  * calling this function. Reconfiguring DCB based on
  * local_dcbx_cfg.
  */
-void ice_pf_dcb_recfg(struct ice_pf *pf)
+void ice_pf_dcb_recfg(struct ice_pf *pf, bool locked)
 {
 	struct ice_dcbx_cfg *dcbcfg = &pf->hw.port_info->qos_cfg.local_dcbx_cfg;
 	struct iidc_event *event;
@@ -783,14 +784,16 @@ void ice_pf_dcb_recfg(struct ice_pf *pf)
 		if (vsi->type == ICE_VSI_PF)
 			ice_dcbnl_set_all(vsi);
 	}
-	/* Notify the AUX drivers that TC change is finished */
-	event = kzalloc(sizeof(*event), GFP_KERNEL);
-	if (!event)
-		return;
+	if (!locked) {
+		/* Notify the AUX drivers that TC change is finished */
+		event = kzalloc(sizeof(*event), GFP_KERNEL);
+		if (!event)
+			return;
 
-	set_bit(IIDC_EVENT_AFTER_TC_CHANGE, event->type);
-	ice_send_event_to_aux(pf, event);
-	kfree(event);
+		set_bit(IIDC_EVENT_AFTER_TC_CHANGE, event->type);
+		ice_send_event_to_aux(pf, event);
+		kfree(event);
+	}
 }
 
 /**
@@ -1044,7 +1047,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	}
 
 	/* changes in configuration update VSI */
-	ice_pf_dcb_recfg(pf);
+	ice_pf_dcb_recfg(pf, false);
 
 	/* enable previously downed VSIs */
 	ice_dcb_ena_dis_vsi(pf, true, true);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index 4c421c842a13..800879a88c5e 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -23,7 +23,7 @@ u8 ice_dcb_get_tc(struct ice_vsi *vsi, int queue_index);
 int
 ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked);
 int ice_dcb_bwchk(struct ice_pf *pf, struct ice_dcbx_cfg *dcbcfg);
-void ice_pf_dcb_recfg(struct ice_pf *pf);
+void ice_pf_dcb_recfg(struct ice_pf *pf, bool locked);
 void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi);
 int ice_init_pf_dcb(struct ice_pf *pf, bool locked);
 void ice_update_dcb_stats(struct ice_pf *pf);
@@ -128,7 +128,7 @@ static inline u8 ice_get_pfc_mode(struct ice_pf *pf)
 	return 0;
 }
 
-static inline void ice_pf_dcb_recfg(struct ice_pf *pf) { }
+static inline void ice_pf_dcb_recfg(struct ice_pf *pf, bool locked) { }
 static inline void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi) { }
 static inline void ice_update_dcb_stats(struct ice_pf *pf) { }
 static inline void
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 4191994d8f3a..9206ef33c755 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3641,7 +3641,9 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 	int new_rx = 0, new_tx = 0;
+	bool locked = false;
 	u32 curr_combined;
+	int ret = 0;
 
 	/* do not support changing channels in Safe Mode */
 	if (ice_is_safe_mode(pf)) {
@@ -3705,15 +3707,33 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 		return -EINVAL;
 	}
 
-	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
+	if (pf->adev) {
+		mutex_lock(&pf->adev_mutex);
+		device_lock(&pf->adev->dev);
+		locked = true;
+		if (pf->adev->dev.driver) {
+			netdev_err(dev, "Cannot change channels when RDMA is active\n");
+			ret = -EINVAL;
+			goto adev_unlock;
+		}
+	}
+
+	ice_vsi_recfg_qs(vsi, new_rx, new_tx, locked);
 
-	if (!netif_is_rxfh_configured(dev))
-		return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
+	if (!netif_is_rxfh_configured(dev)) {
+		ret = ice_vsi_set_dflt_rss_lut(vsi, new_rx);
+		goto adev_unlock;
+	}
 
 	/* Update rss_size due to change in Rx queues */
 	vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
 
-	return 0;
+adev_unlock:
+	if (locked) {
+		device_unlock(&pf->adev->dev);
+		mutex_unlock(&pf->adev_mutex);
+	}
+	return ret;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a9a7f8b52140..4f1e7f0fa008 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4195,12 +4195,13 @@ bool ice_is_wol_supported(struct ice_hw *hw)
  * @vsi: VSI being changed
  * @new_rx: new number of Rx queues
  * @new_tx: new number of Tx queues
+ * @locked: is adev device_lock held
  *
  * Only change the number of queues if new_tx, or new_rx is non-0.
  *
  * Returns 0 on success.
  */
-int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx)
+int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx, bool locked)
 {
 	struct ice_pf *pf = vsi->back;
 	int err = 0, timeout = 50;
@@ -4229,7 +4230,7 @@ int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx)
 
 	ice_vsi_close(vsi);
 	ice_vsi_rebuild(vsi, false);
-	ice_pf_dcb_recfg(pf);
+	ice_pf_dcb_recfg(pf, locked);
 	ice_vsi_open(vsi);
 done:
 	clear_bit(ICE_CFG_BUSY, pf->state);
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
