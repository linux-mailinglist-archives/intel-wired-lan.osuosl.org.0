Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BE036218B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Apr 2021 15:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5A534029A;
	Fri, 16 Apr 2021 13:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Pptj9soJewi; Fri, 16 Apr 2021 13:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B63A040394;
	Fri, 16 Apr 2021 13:57:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 113B21BF3AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 09:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF3D160DD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 09:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mvGpGA6mOlTP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Apr 2021 09:17:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1039260DD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 09:17:17 +0000 (UTC)
IronPort-SDR: grvpuN/VtBcfG3zdyvidnxDxd734q/UIs1qf7iJLurdRlrkwzlk+Hbq9X3OBT/erct3cjEFO21
 WpF+zQBf1Ciw==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="182509504"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="182509504"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 02:17:16 -0700
IronPort-SDR: NGYu/dO1ShOcDfM0paOqaT5R3pGwHrB23JEpCeR2yKyTiypH0Y61s09FtbL+OM78MyzVqpBaKf
 kVG6c23fh3YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="419061019"
Received: from amlin-19-169.igk.intel.com ([10.102.19.169])
 by fmsmga008.fm.intel.com with ESMTP; 16 Apr 2021 02:17:14 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Apr 2021 11:22:52 +0200
Message-Id: <20210416092251.272749-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 16 Apr 2021 13:57:25 +0000
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix of warning message
 during remove iavf driver and fix of call stack during rmmod i40e driver
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
Cc: Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Restored part of reset functionality used when reset is called
from the VF to reset itself. Without this fix warning message
is displayed when vf is removing via sysfs.

Removes the reason of the vf crashing during reset by ensuring
that the reset message request to pf is performed.
Refactoring code to use one function instead of two.
Without this patch, during stress tests, there was a possibility of
non-execution of reset request correctly which is the cause of vf
reinitialization errors and consequently in rmmod driver suspended
the system.

Fixes: eeeddbb80640("i40e: drop i40e_pf *pf from i40e_vc_disable_vf()")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 53 ++++++++-----------
 1 file changed, 22 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index f6121a0c4..ee2c5aba4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -183,17 +183,20 @@ void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
 /***********************misc routines*****************************/
 
 /**
- * i40e_vc_disable_vf
+ * i40e_vc_reset_vf
  * @vf: pointer to the VF info
  *
- * Disable the VF through a SW reset.
+ * @notify_vf: notify vf about reset or not
+ *
+ * Reset VF handler.
  **/
-static inline void i40e_vc_disable_vf(struct i40e_vf *vf)
+static inline void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
 {
 	struct i40e_pf *pf = vf->pf;
 	int i;
 
-	i40e_vc_notify_vf_reset(vf);
+	if (notify_vf)
+		i40e_vc_notify_vf_reset(vf);
 
 	/* We want to ensure that an actual reset occurs initiated after this
 	 * function was called. However, we do not want to wait forever, so
@@ -211,9 +214,14 @@ static inline void i40e_vc_disable_vf(struct i40e_vf *vf)
 		usleep_range(10000, 20000);
 	}
 
-	dev_warn(&vf->pf->pdev->dev,
-		 "Failed to initiate reset for VF %d after 200 milliseconds\n",
-		 vf->vf_id);
+	if (notify_vf)
+		dev_warn(&vf->pf->pdev->dev,
+			 "Failed to initiate reset for VF %d after 200 milliseconds\n",
+			 vf->vf_id);
+	else
+		dev_dbg(&vf->pf->pdev->dev,
+			"Failed to initiate reset for VF %d after 200 milliseconds\n",
+			vf->vf_id);
 }
 
 /**
@@ -2126,20 +2134,6 @@ err:
 	return ret;
 }
 
-/**
- * i40e_vc_reset_vf_msg
- * @vf: pointer to the VF info
- *
- * called from the VF to reset itself,
- * unlike other virtchnl messages, PF driver
- * doesn't send the response back to the VF
- **/
-static void i40e_vc_reset_vf_msg(struct i40e_vf *vf)
-{
-	if (test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states))
-		i40e_reset_vf(vf, false);
-}
-
 /**
  * i40e_vc_config_promiscuous_mode_msg
  * @vf: pointer to the VF info
@@ -2628,8 +2622,7 @@ static int i40e_vc_request_queues_msg(struct i40e_vf *vf, u8 *msg)
 	} else {
 		/* successful request */
 		vf->num_req_queues = req_pairs;
-		i40e_vc_notify_vf_reset(vf);
-		i40e_reset_vf(vf, false);
+		i40e_vc_reset_vf(vf, true);
 		return 0;
 	}
 
@@ -3832,8 +3825,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 	vf->num_req_queues = 0;
 
 	/* reset the VF in order to allocate resources */
-	i40e_vc_notify_vf_reset(vf);
-	i40e_reset_vf(vf, false);
+	i40e_vc_reset_vf(vf, true);
 
 	return I40E_SUCCESS;
 
@@ -3873,8 +3865,7 @@ static int i40e_vc_del_qch_msg(struct i40e_vf *vf, u8 *msg)
 	}
 
 	/* reset the VF in order to allocate resources */
-	i40e_vc_notify_vf_reset(vf);
-	i40e_reset_vf(vf, false);
+	i40e_vc_reset_vf(vf, true);
 
 	return I40E_SUCCESS;
 
@@ -3936,7 +3927,7 @@ int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
 		i40e_vc_notify_vf_link_state(vf);
 		break;
 	case VIRTCHNL_OP_RESET_VF:
-		i40e_vc_reset_vf_msg(vf);
+		i40e_vc_reset_vf(vf, false);
 		ret = 0;
 		break;
 	case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
@@ -4190,7 +4181,7 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	/* Force the VF interface down so it has to bring up with new MAC
 	 * address
 	 */
-	i40e_vc_disable_vf(vf);
+	i40e_vc_reset_vf(vf, true);
 	dev_info(&pf->pdev->dev, "Bring down and up the VF interface to make this change effective.\n");
 
 error_param:
@@ -4254,7 +4245,7 @@ int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
 		/* duplicate request, so just return success */
 		goto error_pvid;
 
-	i40e_vc_disable_vf(vf);
+	i40e_vc_reset_vf(vf, true);
 	/* During reset the VF got a new VSI, so refresh a pointer. */
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	/* Locked once because multiple functions below iterate list */
@@ -4632,7 +4623,7 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
 		goto out;
 
 	vf->trusted = setting;
-	i40e_vc_disable_vf(vf);
+	i40e_vc_reset_vf(vf, true);
 	dev_info(&pf->pdev->dev, "VF %u is now %strusted\n",
 		 vf_id, setting ? "" : "un");
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
