Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A64F71E10
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:54:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B5BA320133;
	Tue, 23 Jul 2019 17:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NIjfHp7suTx1; Tue, 23 Jul 2019 17:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52E302045F;
	Tue, 23 Jul 2019 17:54:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89C991BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 829C881B7D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvM2h+167E2S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:54:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E140F81B76
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:54:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="188886058"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga001.fm.intel.com with ESMTP; 23 Jul 2019 10:54:20 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:26:06 -0700
Message-Id: <20190723092606.3557-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v3 14/15] ice: Change type for queue
 counts
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
Cc: pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Kaminski <pawel.kaminski@intel.com>

These queue variables are being assigned values that are type u16.
Change the local variables to match these types. Since these
represent queue counts, they should never be negative.

Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v3: Change type back to u16
    Fix format specifiers and min_t type
    Redo commit message

v2: Change type from u16 to unsigned int
    Reword commit message

 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 25 ++++++++++---------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 829102ee6e0c..0254b945d576 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2338,11 +2338,11 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_vf_res_request *vfres =
 		(struct virtchnl_vf_res_request *)msg;
-	int req_queues = vfres->num_queue_pairs;
+	u16 req_queues = vfres->num_queue_pairs;
 	struct ice_pf *pf = vf->pf;
-	int max_allowed_vf_queues;
-	int tx_rx_queue_left;
-	int cur_queues;
+	u16 max_allowed_vf_queues;
+	u16 tx_rx_queue_left;
+	u16 cur_queues;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2350,29 +2350,30 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	cur_queues = vf->num_vf_qs;
-	tx_rx_queue_left = min_t(int, pf->q_left_tx, pf->q_left_rx);
+	tx_rx_queue_left = min_t(u16, pf->q_left_tx, pf->q_left_rx);
 	max_allowed_vf_queues = tx_rx_queue_left + cur_queues;
-	if (req_queues <= 0) {
+	if (!req_queues) {
 		dev_err(&pf->pdev->dev,
-			"VF %d tried to request %d queues. Ignoring.\n",
-			vf->vf_id, req_queues);
+			"VF %d tried to request 0 queues. Ignoring.\n",
+			vf->vf_id);
 	} else if (req_queues > ICE_MAX_BASE_QS_PER_VF) {
 		dev_err(&pf->pdev->dev,
 			"VF %d tried to request more than %d queues.\n",
 			vf->vf_id, ICE_MAX_BASE_QS_PER_VF);
 		vfres->num_queue_pairs = ICE_MAX_BASE_QS_PER_VF;
-	} else if (req_queues - cur_queues > tx_rx_queue_left) {
+	} else if (req_queues > cur_queues &&
+		   req_queues - cur_queues > tx_rx_queue_left) {
 		dev_warn(&pf->pdev->dev,
-			 "VF %d requested %d more queues, but only %d left.\n",
+			 "VF %d requested %u more queues, but only %u left.\n",
 			 vf->vf_id, req_queues - cur_queues, tx_rx_queue_left);
-		vfres->num_queue_pairs = min_t(int, max_allowed_vf_queues,
+		vfres->num_queue_pairs = min_t(u16, max_allowed_vf_queues,
 					       ICE_MAX_BASE_QS_PER_VF);
 	} else {
 		/* request is successful, then reset VF */
 		vf->num_req_qs = req_queues;
 		ice_vc_dis_vf(vf);
 		dev_info(&pf->pdev->dev,
-			 "VF %d granted request of %d queues.\n",
+			 "VF %d granted request of %u queues.\n",
 			 vf->vf_id, req_queues);
 		return 0;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
