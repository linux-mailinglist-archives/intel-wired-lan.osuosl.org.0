Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BC1F1D9F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2019 19:36:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35C1E89F69;
	Wed,  6 Nov 2019 18:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ByC5Z3Y9Q-83; Wed,  6 Nov 2019 18:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9373089F70;
	Wed,  6 Nov 2019 18:36:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D9DCA1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D185B8A86E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8D66ESkSgGVH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2019 18:36:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8B5198A6E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 10:36:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="205918149"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga006.jf.intel.com with ESMTP; 06 Nov 2019 10:36:27 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Nov 2019 02:05:27 -0800
Message-Id: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S32 v3 01/15] ice: Use ice_ena_vsi and
 ice_dis_vsi in DCB configuration flow
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

DCB configuration flow needs to disable and enable only the PF (main)
VSI, so use ice_ena_vsi and ice_dis_vsi. To avoid the use of ifdef to
control the staticness of these functions, move them to ice_lib.c.

Also replace the allocate and copy of old_cfg to kmemdup() in
ice_pf_dcb_cfg().

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v3:
- Use kmemdup instead of kzalloc + memcpy
v2:
- Add null check after allocation of old_cfg
---
 drivers/net/ethernet/intel/ice/ice.h         |  4 -
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 31 ++++++--
 drivers/net/ethernet/intel/ice/ice_lib.c     | 56 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h     |  4 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 79 --------------------
 5 files changed, 84 insertions(+), 90 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7d10b8dc2815..53a4870dd271 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -505,10 +505,6 @@ int ice_set_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
 int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
 void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
-#ifdef CONFIG_DCB
-int ice_pf_ena_all_vsi(struct ice_pf *pf, bool locked);
-void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked);
-#endif /* CONFIG_DCB */
 int ice_open(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 13da89e22123..baea28c712ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -150,6 +150,7 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 {
 	struct ice_dcbx_cfg *old_cfg, *curr_cfg;
 	struct ice_aqc_port_ets_elem buf = { 0 };
+	struct ice_vsi *pf_vsi;
 	int ret = 0;
 
 	curr_cfg = &pf->hw.port_info->local_dcbx_cfg;
@@ -169,15 +170,23 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	}
 
 	/* Store old config in case FW config fails */
-	old_cfg = devm_kzalloc(&pf->pdev->dev, sizeof(*old_cfg), GFP_KERNEL);
-	memcpy(old_cfg, curr_cfg, sizeof(*old_cfg));
+	old_cfg = kmemdup(curr_cfg, sizeof(*old_cfg), GFP_KERNEL);
+	if (!old_cfg)
+		return -ENOMEM;
+
+	pf_vsi = ice_get_main_vsi(pf);
+	if (!pf_vsi) {
+		dev_dbg(&pf->pdev->dev, "PF VSI doesn't exist\n");
+		ret = -EINVAL;
+		goto free_cfg;
+	}
 
 	/* avoid race conditions by holding the lock while disabling and
 	 * re-enabling the VSI
 	 */
 	if (!locked)
 		rtnl_lock();
-	ice_pf_dis_all_vsi(pf, true);
+	ice_dis_vsi(pf_vsi, true);
 
 	memcpy(curr_cfg, new_cfg, sizeof(*curr_cfg));
 	memcpy(&curr_cfg->etsrec, &curr_cfg->etscfg, sizeof(curr_cfg->etsrec));
@@ -204,10 +213,11 @@ int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
 	ice_pf_dcb_recfg(pf);
 
 out:
-	ice_pf_ena_all_vsi(pf, true);
+	ice_ena_vsi(pf_vsi, true);
 	if (!locked)
 		rtnl_unlock();
-	devm_kfree(&pf->pdev->dev, old_cfg);
+free_cfg:
+	kfree(old_cfg);
 	return ret;
 }
 
@@ -690,6 +700,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	struct ice_dcbx_cfg tmp_dcbx_cfg;
 	bool need_reconfig = false;
 	struct ice_port_info *pi;
+	struct ice_vsi *pf_vsi;
 	u8 type;
 	int ret;
 
@@ -761,8 +772,14 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
 	}
 
+	pf_vsi = ice_get_main_vsi(pf);
+	if (!pf_vsi) {
+		dev_dbg(&pf->pdev->dev, "PF VSI doesn't exist\n");
+		return;
+	}
+
 	rtnl_lock();
-	ice_pf_dis_all_vsi(pf, true);
+	ice_dis_vsi(pf_vsi, true);
 
 	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
@@ -774,6 +791,6 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	/* changes in configuration update VSI */
 	ice_pf_dcb_recfg(pf);
 
-	ice_pf_ena_all_vsi(pf, true);
+	ice_ena_vsi(pf_vsi, true);
 	rtnl_unlock();
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 161a2d24ffbd..8dd7f3848c59 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2040,6 +2040,62 @@ void ice_vsi_close(struct ice_vsi *vsi)
 	ice_vsi_free_rx_rings(vsi);
 }
 
+/**
+ * ice_ena_vsi - resume a VSI
+ * @vsi: the VSI being resume
+ * @locked: is the rtnl_lock already held
+ */
+int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
+{
+	int err = 0;
+
+	if (!test_bit(__ICE_NEEDS_RESTART, vsi->state))
+		return 0;
+
+	clear_bit(__ICE_NEEDS_RESTART, vsi->state);
+
+	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
+		if (netif_running(vsi->netdev)) {
+			if (!locked)
+				rtnl_lock();
+
+			err = ice_open(vsi->netdev);
+
+			if (!locked)
+				rtnl_unlock();
+		}
+	}
+
+	return err;
+}
+
+/**
+ * ice_dis_vsi - pause a VSI
+ * @vsi: the VSI being paused
+ * @locked: is the rtnl_lock already held
+ */
+void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
+{
+	if (test_bit(__ICE_DOWN, vsi->state))
+		return;
+
+	set_bit(__ICE_NEEDS_RESTART, vsi->state);
+
+	if (vsi->type == ICE_VSI_PF && vsi->netdev) {
+		if (netif_running(vsi->netdev)) {
+			if (!locked)
+				rtnl_lock();
+
+			ice_stop(vsi->netdev);
+
+			if (!locked)
+				rtnl_unlock();
+		} else {
+			ice_vsi_close(vsi);
+		}
+	}
+}
+
 /**
  * ice_free_res - free a block of resources
  * @res: pointer to the resource
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index d8cc03197878..1ec2ad98ac46 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -62,6 +62,10 @@ int ice_vsi_release(struct ice_vsi *vsi);
 
 void ice_vsi_close(struct ice_vsi *vsi);
 
+int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
+
+void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
+
 int ice_free_res(struct ice_res_tracker *res, u16 index, u16 id);
 
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 985abd8f5589..dd05505ccbe1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -436,43 +436,12 @@ static void ice_sync_fltr_subtask(struct ice_pf *pf)
 		}
 }
 
-/**
- * ice_dis_vsi - pause a VSI
- * @vsi: the VSI being paused
- * @locked: is the rtnl_lock already held
- */
-static void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
-{
-	if (test_bit(__ICE_DOWN, vsi->state))
-		return;
-
-	set_bit(__ICE_NEEDS_RESTART, vsi->state);
-
-	if (vsi->type == ICE_VSI_PF && vsi->netdev) {
-		if (netif_running(vsi->netdev)) {
-			if (!locked)
-				rtnl_lock();
-
-			ice_stop(vsi->netdev);
-
-			if (!locked)
-				rtnl_unlock();
-		} else {
-			ice_vsi_close(vsi);
-		}
-	}
-}
-
 /**
  * ice_pf_dis_all_vsi - Pause all VSIs on a PF
  * @pf: the PF
  * @locked: is the rtnl_lock already held
  */
-#ifdef CONFIG_DCB
-void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked)
-#else
 static void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked)
-#endif /* CONFIG_DCB */
 {
 	int v;
 
@@ -4588,54 +4557,6 @@ static void ice_vsi_release_all(struct ice_pf *pf)
 	}
 }
 
-/**
- * ice_ena_vsi - resume a VSI
- * @vsi: the VSI being resume
- * @locked: is the rtnl_lock already held
- */
-static int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
-{
-	int err = 0;
-
-	if (!test_bit(__ICE_NEEDS_RESTART, vsi->state))
-		return 0;
-
-	clear_bit(__ICE_NEEDS_RESTART, vsi->state);
-
-	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
-		if (netif_running(vsi->netdev)) {
-			if (!locked)
-				rtnl_lock();
-
-			err = ice_open(vsi->netdev);
-
-			if (!locked)
-				rtnl_unlock();
-		}
-	}
-
-	return err;
-}
-
-/**
- * ice_pf_ena_all_vsi - Resume all VSIs on a PF
- * @pf: the PF
- * @locked: is the rtnl_lock already held
- */
-#ifdef CONFIG_DCB
-int ice_pf_ena_all_vsi(struct ice_pf *pf, bool locked)
-{
-	int v;
-
-	ice_for_each_vsi(pf, v)
-		if (pf->vsi[v])
-			if (ice_ena_vsi(pf->vsi[v], locked))
-				return -EIO;
-
-	return 0;
-}
-#endif /* CONFIG_DCB */
-
 /**
  * ice_vsi_rebuild_by_type - Rebuild VSI of a given type
  * @pf: pointer to the PF instance
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
