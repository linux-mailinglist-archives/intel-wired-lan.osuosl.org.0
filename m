Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 662F344A794
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Nov 2021 08:26:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BD8E60608;
	Tue,  9 Nov 2021 07:26:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TuaeSNV4pWHx; Tue,  9 Nov 2021 07:26:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88E57605F6;
	Tue,  9 Nov 2021 07:26:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 112801BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 07:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CE4A80E98
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 07:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ycYnvxcdH28C for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Nov 2021 07:26:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 645E880E65
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Nov 2021 07:26:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="232640344"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="232640344"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 23:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="451779627"
Received: from amlin-019-051.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.51])
 by orsmga006.jf.intel.com with ESMTP; 08 Nov 2021 23:26:31 -0800
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Nov 2021 08:27:44 +0100
Message-Id: <20211109072744.56924-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor VF queue
 requesting
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

Simplify changing number of queues for VF's by moving logic to
another function, i40e_vf_set_num_queues.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 72 +++++++++++--------
 1 file changed, 42 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 5a488ce545..fa881d9b0f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2669,6 +2669,47 @@ static int i40e_check_enough_queue(struct i40e_vf *vf, u16 needed)
 	return -ENOMEM;
 }
 
+static int i40e_set_vf_num_queues(struct i40e_vf *vf, int num_queues)
+{
+	int cur_pairs = vf->num_queue_pairs;
+	struct i40e_pf *pf = vf->pf;
+	int max_size;
+
+	if (num_queues > I40E_MAX_VF_QUEUES) {
+		dev_err(&pf->pdev->dev, "Unable to configure %d VF queues, the maximum is %d\n",
+			num_queues,
+			I40E_MAX_VF_QUEUES);
+		return -EINVAL;
+	} else if (num_queues - cur_pairs > pf->queues_left) {
+		dev_warn(&pf->pdev->dev, "Unable to configure %d VF queues, only %d available\n",
+			 num_queues - cur_pairs,
+			 pf->queues_left);
+		return -EINVAL;
+	} else if (i40e_check_enough_queue(vf, num_queues) < 0) {
+		dev_warn(&pf->pdev->dev, "VF requested %d more queues, but there is not enough for it.\n",
+			 num_queues - cur_pairs);
+		return -EINVAL;
+	}
+
+	max_size = i40e_max_lump_qp(pf);
+	if (max_size < 0) {
+		dev_err(&pf->pdev->dev, "Unable to configure %d VF queues, pile=<null>\n",
+			num_queues);
+		return -EINVAL;
+	}
+
+	if (num_queues > max_size) {
+		dev_err(&pf->pdev->dev, "Unable to configure %d VF queues, only %d available\n",
+			num_queues, max_size);
+		return -EINVAL;
+	}
+
+	/* successful request */
+	vf->num_req_queues = num_queues;
+	i40e_vc_reset_vf(vf, true);
+	return 0;
+}
+
 /**
  * i40e_vc_request_queues_msg
  * @vf: pointer to the VF info
@@ -2684,40 +2725,11 @@ static int i40e_vc_request_queues_msg(struct i40e_vf *vf, u8 *msg)
 	struct virtchnl_vf_res_request *vfres =
 		(struct virtchnl_vf_res_request *)msg;
 	u16 req_pairs = vfres->num_queue_pairs;
-	u8 cur_pairs = vf->num_queue_pairs;
-	struct i40e_pf *pf = vf->pf;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE))
 		return -EINVAL;
 
-	if (req_pairs > I40E_MAX_VF_QUEUES) {
-		dev_err(&pf->pdev->dev,
-			"VF %d tried to request more than %d queues.\n",
-			vf->vf_id,
-			I40E_MAX_VF_QUEUES);
-		vfres->num_queue_pairs = I40E_MAX_VF_QUEUES;
-	} else if (req_pairs - cur_pairs > pf->queues_left) {
-		dev_warn(&pf->pdev->dev,
-			 "VF %d requested %d more queues, but only %d left.\n",
-			 vf->vf_id,
-			 req_pairs - cur_pairs,
-			 pf->queues_left);
-		vfres->num_queue_pairs = pf->queues_left + cur_pairs;
-	} else if (i40e_check_enough_queue(vf, req_pairs) < 0) {
-		dev_warn(&pf->pdev->dev,
-			 "VF %d requested %d more queues, but there is not enough for it.\n",
-			 vf->vf_id,
-			 req_pairs - cur_pairs);
-		vfres->num_queue_pairs = cur_pairs;
-	} else {
-		/* successful request */
-		vf->num_req_queues = req_pairs;
-		i40e_vc_reset_vf(vf, true);
-		return 0;
-	}
-
-	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_REQUEST_QUEUES, 0,
-				      (u8 *)vfres, sizeof(*vfres));
+	return i40e_set_vf_num_queues(vf, req_pairs);
 }
 
 /**
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
