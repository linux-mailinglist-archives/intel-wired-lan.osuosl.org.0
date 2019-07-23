Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC9371E1A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:56:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F02778520A;
	Tue, 23 Jul 2019 17:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dxr1lEsai-i2; Tue, 23 Jul 2019 17:56:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA84E84848;
	Tue, 23 Jul 2019 17:56:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1EBE1BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBA1084D16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DwAf4sCCHj49 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 23C3781B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="180816352"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 23 Jul 2019 10:56:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:27:59 -0700
Message-Id: <20190723092759.3614-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
References: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S24 12/12] ice: Add input handlers for
 virtual channel handlers
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

From: "Amruth G.P" <amruth.gouda.parameshwarappa@intel.com>

Move the assignment to local variables after validation.

Remove unnecessary checks in ice_vc_process_vf_msg() as the respective
functions are now performing the checks.

Signed-off-by: Amruth G.P <amruth.gouda.parameshwarappa@intel.com>
Signed-off-by: Nitesh B Venkatesh <nitesh.b.venkatesh@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 64 +++++++++----------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 20def6d0f087..f86c26d0e426 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1735,18 +1735,18 @@ static int ice_vc_config_rss_key(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
-	if (!vsi) {
+	if (vrk->key_len != ICE_VSIQF_HKEY_ARRAY_SIZE) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
 
-	if (vrk->key_len != ICE_VSIQF_HKEY_ARRAY_SIZE) {
+	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
 
-	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
@@ -1782,18 +1782,18 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
-	if (!vsi) {
+	if (vrl->lut_entries != ICE_VSIQF_HLUT_ARRAY_SIZE) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
 
-	if (vrl->lut_entries != ICE_VSIQF_HLUT_ARRAY_SIZE) {
+	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
 
-	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
@@ -1831,6 +1831,12 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
+	if (vqs->rx_queues > ICE_MAX_BASE_QS_PER_VF ||
+	    vqs->tx_queues > ICE_MAX_BASE_QS_PER_VF) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -1933,6 +1939,12 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
+	if (vqs->rx_queues > ICE_MAX_BASE_QS_PER_VF ||
+	    vqs->tx_queues > ICE_MAX_BASE_QS_PER_VF) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -1985,12 +1997,6 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 	irqmap_info = (struct virtchnl_irq_map_info *)msg;
 	num_q_vectors_mapped = irqmap_info->num_vectors;
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
 	/* Check to make sure number of VF vectors mapped is not greater than
 	 * number of VF vectors originally allocated, and check that
 	 * there is actually at least a single VF queue vector mapped
@@ -2002,6 +2008,12 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
 	for (i = 0; i < num_q_vectors_mapped; i++) {
 		struct ice_q_vector *q_vector;
 
@@ -2093,10 +2105,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
-	vsi = pf->vsi[vf->lan_vsi_idx];
-	if (!vsi)
-		goto error_param;
-
 	if (qci->num_queue_pairs > ICE_MAX_BASE_QS_PER_VF) {
 		dev_err(&pf->pdev->dev,
 			"VF-%d requesting more than supported number of queues: %d\n",
@@ -2105,6 +2113,12 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		goto error_param;
 	}
 
+	vsi = pf->vsi[vf->lan_vsi_idx];
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto error_param;
+	}
+
 	for (i = 0; i < qci->num_queue_pairs; i++) {
 		qpi = &qci->qpair[i];
 		if (qpi->txq.vsi_id != qci->vsi_id ||
@@ -2756,20 +2770,6 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 			err = -EPERM;
 		else
 			err = -EINVAL;
-		goto error_handler;
-	}
-
-	/* Perform additional checks specific to RSS and Virtchnl */
-	if (v_opcode == VIRTCHNL_OP_CONFIG_RSS_KEY) {
-		struct virtchnl_rss_key *vrk = (struct virtchnl_rss_key *)msg;
-
-		if (vrk->key_len != ICE_VSIQF_HKEY_ARRAY_SIZE)
-			err = -EINVAL;
-	} else if (v_opcode == VIRTCHNL_OP_CONFIG_RSS_LUT) {
-		struct virtchnl_rss_lut *vrl = (struct virtchnl_rss_lut *)msg;
-
-		if (vrl->lut_entries != ICE_VSIQF_HLUT_ARRAY_SIZE)
-			err = -EINVAL;
 	}
 
 error_handler:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
