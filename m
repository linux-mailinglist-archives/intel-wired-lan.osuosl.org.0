Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A31F367C7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Apr 2021 10:28:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3453360690;
	Thu, 22 Apr 2021 08:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hzakk_abTnTT; Thu, 22 Apr 2021 08:27:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1421E60651;
	Thu, 22 Apr 2021 08:27:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8E821BF345
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 08:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B83DA40145
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 08:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X-a4pdLTsXQi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 08:27:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0642940112
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 08:27:52 +0000 (UTC)
IronPort-SDR: xsU3b0o+DU5rXpfxXNndhoIEYF3VbpXRLi8UfBprpPxRxcX8L/F6WUIr4DogjQtFgdTjbNeBFA
 ddLanUG+nRdA==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="195405590"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="195405590"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 01:27:51 -0700
IronPort-SDR: WhQ1ryfDwvphLryNvfQccuas5dcGEJ9s3K8rBxB+hzfnQW9T6VKeYgbBR9mtnVfKc5AtrH03BA
 Rgm/311B4dXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="524572202"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2021 01:27:48 -0700
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Apr 2021 10:28:49 +0200
Message-Id: <20210422082849.42079-2-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210422082849.42079-1-eryk.roch.rybak@intel.com>
References: <20210422082849.42079-1-eryk.roch.rybak@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2 net v3] i40e: Fix ping is lost after
 configuring ADq on VF
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Properly reconfigure VF VSIs after VF request ADq.
Created new function to update queue mapping and queue pairs per TC
with AQ update VSI. This sets proper RSS size on NIC.
VFs num_queue_pairs should not be changed during setup of queue maps.
Previously, VF main VSI in ADq had configured too many queues and had
wrong RSS size, which lead to packets not being consumed and drops in
connectivity.

Fixes: bc6d33c8d93f ("i40e: Fix the number of queues available to be mapped for use")
Co-developed-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 62 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 17 +++--
 3 files changed, 72 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 111654351400..549e021d08fb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1247,6 +1247,7 @@ void i40e_ptp_restore_hw_time(struct i40e_pf *pf);
 void i40e_ptp_init(struct i40e_pf *pf);
 void i40e_ptp_stop(struct i40e_pf *pf);
 int i40e_ptp_alloc_pins(struct i40e_pf *pf);
+int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset);
 int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
 i40e_status i40e_get_partition_bw_setting(struct i40e_pf *pf);
 i40e_status i40e_set_partition_bw_setting(struct i40e_pf *pf);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a717941db037..f492efdce885 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1808,6 +1808,8 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 
 	sections = I40E_AQ_VSI_PROP_QUEUE_MAP_VALID;
 	offset = 0;
+	/* zero out queue mapping, it will get updated on the end of the function */
+	memset(ctxt->info.queue_mapping, 0, sizeof(ctxt->info.queue_mapping));
 
 	if (vsi->type == I40E_VSI_MAIN) {
 		/* This code helps add more queue to the VSI if we have
@@ -1824,10 +1826,12 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 	}
 
 	/* Number of queues per enabled TC */
-	if (vsi->type == I40E_VSI_MAIN)
+	if (vsi->type == I40E_VSI_MAIN ||
+	    (vsi->type == I40E_VSI_SRIOV && vsi->num_queue_pairs != 0))
 		num_tc_qps = vsi->num_queue_pairs;
 	else
 		num_tc_qps = vsi->alloc_queue_pairs;
+
 	if (enabled_tc && (vsi->back->flags & I40E_FLAG_DCB_ENABLED)) {
 		/* Find numtc from enabled TC bitmap */
 		for (i = 0, numtc = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
@@ -1905,10 +1909,12 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 		}
 		ctxt->info.tc_mapping[i] = cpu_to_le16(qmap);
 	}
-	/* Do not change previously set num_queue_pairs for PFs */
+	/* Do not change previously set num_queue_pairs for PFs and VFs*/
 	if ((vsi->type == I40E_VSI_MAIN && numtc != 1) ||
-	    vsi->type != I40E_VSI_MAIN)
+	    (vsi->type == I40E_VSI_SRIOV && vsi->num_queue_pairs == 0) ||
+	    (vsi->type != I40E_VSI_MAIN && vsi->type != I40E_VSI_SRIOV))
 		vsi->num_queue_pairs = offset;
+
 	/* Scheduler section valid can only be set for ADD VSI */
 	if (is_add) {
 		sections |= I40E_AQ_VSI_PROP_SCHED_VALID;
@@ -5434,6 +5440,56 @@ static void i40e_vsi_update_queue_map(struct i40e_vsi *vsi,
 	       sizeof(vsi->info.tc_mapping));
 }
 
+/**
+ * i40e_update_adq_vsi_queues - update queue mapping for ADq VSI
+ * @vsi: the VSI being reconfigured
+ * @vsi_offset: offset from main VF VSI
+ */
+int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset)
+{
+	struct i40e_pf *pf = vsi->back;
+	struct i40e_hw *hw = &pf->hw;
+	struct i40e_vsi_context ctxt = {};
+	int ret = 0;
+
+	if (!vsi)
+		return I40E_ERR_PARAM;
+
+	ctxt.seid = vsi->seid;
+	ctxt.pf_num = vsi->back->hw.pf_id;
+	ctxt.vf_num = vsi->vf_id + hw->func_caps.vf_base_id + vsi_offset;
+	ctxt.uplink_seid = vsi->uplink_seid;
+	ctxt.connection_type = I40E_AQ_VSI_CONN_TYPE_NORMAL;
+	ctxt.flags = I40E_AQ_VSI_TYPE_VF;
+	ctxt.info = vsi->info;
+
+	i40e_vsi_setup_queue_map(vsi, &ctxt, vsi->tc_config.enabled_tc,
+				 false);
+	if (vsi->reconfig_rss) {
+		vsi->rss_size = min_t(int, vsi->back->alloc_rss_size,
+				      vsi->num_queue_pairs);
+		ret = i40e_vsi_config_rss(vsi);
+		if (ret) {
+			dev_info(&vsi->back->pdev->dev, "Failed to reconfig rss for num_queues\n");
+			return ret;
+		}
+		vsi->reconfig_rss = false;
+	}
+
+	ret = i40e_aq_update_vsi_params(hw, &ctxt, NULL);
+	if (ret) {
+		dev_info(&pf->pdev->dev, "Update vsi config failed, err %s aq_err %s\n",
+			 i40e_stat_str(hw, ret),
+			 i40e_aq_str(hw, hw->aq.asq_last_status));
+		return ret;
+	}
+	/* update the local VSI info with updated queue map */
+	i40e_vsi_update_queue_map(vsi, &ctxt);
+	vsi->info.valid_sections = 0;
+
+	return ret;
+}
+
 /**
  * i40e_vsi_config_tc - Configure VSI Tx Scheduler for given TC map
  * @vsi: VSI to be configured
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index f6121a0c4a5e..cbff71e7dbdc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2238,11 +2238,12 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 	struct virtchnl_vsi_queue_config_info *qci =
 	    (struct virtchnl_vsi_queue_config_info *)msg;
 	struct virtchnl_queue_pair_info *qpi;
-	struct i40e_pf *pf = vf->pf;
 	u16 vsi_id, vsi_queue_id = 0;
-	u16 num_qps_all = 0;
+	struct i40e_pf *pf = vf->pf;
 	i40e_status aq_ret = 0;
 	int i, j = 0, idx = 0;
+	struct i40e_vsi *vsi;
+	u16 num_qps_all = 0;
 
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
 		aq_ret = I40E_ERR_PARAM;
@@ -2331,9 +2332,15 @@ static int i40e_vc_config_queues_msg(struct i40e_vf *vf, u8 *msg)
 		pf->vsi[vf->lan_vsi_idx]->num_queue_pairs =
 			qci->num_queue_pairs;
 	} else {
-		for (i = 0; i < vf->num_tc; i++)
-			pf->vsi[vf->ch[i].vsi_idx]->num_queue_pairs =
-			       vf->ch[i].num_qps;
+		for (i = 0; i < vf->num_tc; i++) {
+			vsi = pf->vsi[vf->ch[i].vsi_idx];
+			vsi->num_queue_pairs = vf->ch[i].num_qps;
+
+			if (i40e_update_adq_vsi_queues(vsi, i)) {
+				aq_ret = I40E_ERR_CONFIG;
+				goto error_param;
+			}
+		}
 	}
 
 error_param:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
