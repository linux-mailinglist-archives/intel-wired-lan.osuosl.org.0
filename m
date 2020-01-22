Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A73DF145F81
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:54:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5819E21577;
	Wed, 22 Jan 2020 23:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SK9gpoAD3HKP; Wed, 22 Jan 2020 23:54:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5AAA4207EF;
	Wed, 22 Jan 2020 23:54:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D2361BF281
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 59F238636A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bkqEUD2hjQ6g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3551C8303A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651618"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:22 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:32 -0800
Message-Id: <20200122152138.41585-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 09/15] ice: Fix and refactor Rx queue
 disable for VFs
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

From: Brett Creeley <brett.creeley@intel.com>

Currently when a VF driver sends the PF a request to disable Rx queues
we will disable them one at a time, even if the VF driver sent us a
batch of queues to disable. This is causing issues where the Rx queue
disable times out with LFC enabled. This can be improved by detecting
when the VF is trying to disable all of its queues.

Also remove the variable num_qs_ena from the ice_vf structure as it was
only used to see if there were no Rx and no Tx queues active. Instead
add a function that checks if both the vf->rxq_ena and vf->txq_ena
bitmaps are empty.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 36 ++++++++++++++-----
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  1 -
 2 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 6f67a45a9026..5513ee42de3c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -90,6 +90,19 @@ ice_set_pfe_link(struct ice_vf *vf, struct virtchnl_pf_event *pfe,
 	}
 }
 
+/**
+ * ice_vf_has_no_qs_ena - check if the VF has any Rx or Tx queues enabled
+ * @vf: the VF to check
+ *
+ * Returns true if the VF has no Rx and no Tx queues enabled and returns false
+ * otherwise
+ */
+static bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
+{
+	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_BASE_QS_PER_VF) &&
+		!bitmap_weight(vf->txq_ena, ICE_MAX_BASE_QS_PER_VF));
+}
+
 /**
  * ice_is_vf_link_up - check if the VF's link is up
  * @vf: VF to check if link is up
@@ -101,7 +114,7 @@ static bool ice_is_vf_link_up(struct ice_vf *vf)
 	if (ice_check_vf_init(pf, vf))
 		return false;
 
-	if (!vf->num_qs_ena)
+	if (ice_vf_has_no_qs_ena(vf))
 		return false;
 	else if (vf->link_forced)
 		return vf->link_up;
@@ -255,7 +268,6 @@ void ice_set_vf_state_qs_dis(struct ice_vf *vf)
 	/* Clear Rx/Tx enabled queues flag */
 	bitmap_zero(vf->txq_ena, ICE_MAX_BASE_QS_PER_VF);
 	bitmap_zero(vf->rxq_ena, ICE_MAX_BASE_QS_PER_VF);
-	vf->num_qs_ena = 0;
 	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
 }
 
@@ -2100,7 +2112,6 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 		}
 
 		set_bit(vf_q_id, vf->rxq_ena);
-		vf->num_qs_ena++;
 	}
 
 	vsi = pf->vsi[vf->lan_vsi_idx];
@@ -2116,7 +2127,6 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 			continue;
 
 		set_bit(vf_q_id, vf->txq_ena);
-		vf->num_qs_ena++;
 	}
 
 	/* Set flag to indicate that queues are enabled */
@@ -2203,13 +2213,22 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 
 			/* Clear enabled queues flag */
 			clear_bit(vf_q_id, vf->txq_ena);
-			vf->num_qs_ena--;
 		}
 	}
 
-	if (vqs->rx_queues) {
-		q_map = vqs->rx_queues;
+	q_map = vqs->rx_queues;
+	/* speed up Rx queue disable by batching them if possible */
+	if (q_map &&
+	    bitmap_equal(&q_map, vf->rxq_ena, ICE_MAX_BASE_QS_PER_VF)) {
+		if (ice_vsi_stop_all_rx_rings(vsi)) {
+			dev_err(ice_pf_to_dev(vsi->back), "Failed to stop all Rx rings on VSI %d\n",
+				vsi->vsi_num);
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto error_param;
+		}
 
+		bitmap_zero(vf->rxq_ena, ICE_MAX_BASE_QS_PER_VF);
+	} else if (q_map) {
 		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_BASE_QS_PER_VF) {
 			if (!ice_vc_isvalid_q_id(vf, vqs->vsi_id, vf_q_id)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2230,12 +2249,11 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 
 			/* Clear enabled queues flag */
 			clear_bit(vf_q_id, vf->rxq_ena);
-			vf->num_qs_ena--;
 		}
 	}
 
 	/* Clear enabled queues flag */
-	if (v_ret == VIRTCHNL_STATUS_SUCCESS && !vf->num_qs_ena)
+	if (v_ret == VIRTCHNL_STATUS_SUCCESS && ice_vf_has_no_qs_ena(vf))
 		clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
 
 error_param:
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index c65269c15dfc..474b2613f09c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -90,7 +90,6 @@ struct ice_vf {
 	u8 num_req_qs;			/* num of queue pairs requested by VF */
 	u16 num_mac;
 	u16 num_vf_qs;			/* num of queue configured per VF */
-	u16 num_qs_ena;			/* total num of Tx/Rx queue enabled */
 };
 
 #ifdef CONFIG_PCI_IOV
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
