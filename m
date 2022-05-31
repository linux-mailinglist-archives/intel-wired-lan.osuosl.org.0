Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B175391C3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 003C183227;
	Tue, 31 May 2022 13:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjFidxzT21rM; Tue, 31 May 2022 13:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD6E383268;
	Tue, 31 May 2022 13:22:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5214D1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 40A366058F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ga--i4YRuLv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 13:22:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 668A960E46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654003325; x=1685539325;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HPcIYtze1qZGglzTAMPqv0wjhqwfKZAVTZpx5R3EvIs=;
 b=jQwDHlCXbHD26jXBfWFt6MKdlJM5MeOcgDo/4+VgFC1qkdG+Ve2OQTER
 MLdIsUmxrzOBAZwulQQsDtKBv2GK+d1szjZgpsDTkteuhZy/x9wKaShwi
 OHF4kaqMeVSszUrIvFmikLFGAZp8+fBOkXoizJgui7Vb4WSFSq7iVnZ7x
 cxEW48ZSuWQAPu3MWJdZ9YWj+tLLu98wh5ahNnB+ssJi82xWousn3tppn
 j9PpT2W4i/EF/SFFJed3Pj6v1A063Q1iGRdLGVTL6oESuPkM7k4KTWFNk
 gfJuziuzQ+xxIdK70mQI6e8e1VOYxJl7P1KE9xKmSTpozwvnZE5EUUWVb w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="275255383"
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="275255383"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 06:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="581084622"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga007.fm.intel.com with ESMTP; 31 May 2022 06:22:03 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 May 2022 15:18:35 +0200
Message-Id: <20220531131835.3614-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1 1/2] ice: Add error handling for
 queue config fail
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Slawomir Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Disable VF's RX/TX queues, when VIRTCHNL_OP_CONFIG_VSI_QUEUES fail.
Not disabling them might lead to scenario, where PF driver leaves VF
queues enabled, when VF's VSI failed queue config.
In this scenario VF should not have RX/TX queues enabled. If PF failed
to setup VF's queues, VF will reset due to TX timeouts in VF driver.

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Suggested-by: Slawomir Laba <slawomirx.laba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++----------
 1 file changed, 26 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 1d9b84c..4547bc1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1569,35 +1569,27 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
  */
 static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 {
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct virtchnl_vsi_queue_config_info *qci =
 	    (struct virtchnl_vsi_queue_config_info *)msg;
 	struct virtchnl_queue_pair_info *qpi;
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
-	int i, q_idx;
+	int i = -1, q_idx;
 
-	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
 		goto error_param;
-	}
 
-	if (!ice_vc_isvalid_vsi_id(vf, qci->vsi_id)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	if (!ice_vc_isvalid_vsi_id(vf, qci->vsi_id))
 		goto error_param;
-	}
 
 	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+	if (!vsi)
 		goto error_param;
-	}
 
 	if (qci->num_queue_pairs > ICE_MAX_RSS_QS_PER_VF ||
 	    qci->num_queue_pairs > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
 		dev_err(ice_pf_to_dev(pf), "VF-%d requesting more than supported number of queues: %d\n",
 			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
 	}
 
@@ -1610,7 +1602,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		    !ice_vc_isvalid_ring_len(qpi->txq.ring_len) ||
 		    !ice_vc_isvalid_ring_len(qpi->rxq.ring_len) ||
 		    !ice_vc_isvalid_q_id(vf, qci->vsi_id, qpi->txq.queue_id)) {
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 			goto error_param;
 		}
 
@@ -1620,7 +1611,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		 * for selected "vsi"
 		 */
 		if (q_idx >= vsi->alloc_txq || q_idx >= vsi->alloc_rxq) {
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 			goto error_param;
 		}
 
@@ -1630,14 +1620,13 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			vsi->tx_rings[i]->count = qpi->txq.ring_len;
 
 			/* Disable any existing queue first */
-			if (ice_vf_vsi_dis_single_txq(vf, vsi, q_idx)) {
-				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			if (ice_vf_vsi_dis_single_txq(vf, vsi, q_idx))
 				goto error_param;
-			}
 
 			/* Configure a queue with the requested settings */
 			if (ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx)) {
-				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+				dev_warn(ice_pf_to_dev(pf), "VF-%d failed to configure TX queue %d\n",
+					 vf->vf_id, i);
 				goto error_param;
 			}
 		}
@@ -1651,17 +1640,13 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 
 			if (qpi->rxq.databuffer_size != 0 &&
 			    (qpi->rxq.databuffer_size > ((16 * 1024) - 128) ||
-			     qpi->rxq.databuffer_size < 1024)) {
-				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			     qpi->rxq.databuffer_size < 1024))
 				goto error_param;
-			}
 			vsi->rx_buf_len = qpi->rxq.databuffer_size;
 			vsi->rx_rings[i]->rx_buf_len = vsi->rx_buf_len;
 			if (qpi->rxq.max_pkt_size > max_frame_size ||
-			    qpi->rxq.max_pkt_size < 64) {
-				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			    qpi->rxq.max_pkt_size < 64)
 				goto error_param;
-			}
 
 			vsi->max_frame = qpi->rxq.max_pkt_size;
 			/* add space for the port VLAN since the VF driver is
@@ -1672,16 +1657,30 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				vsi->max_frame += VLAN_HLEN;
 
 			if (ice_vsi_cfg_single_rxq(vsi, q_idx)) {
-				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+				dev_warn(ice_pf_to_dev(pf), "VF-%d failed to configure RX queue %d\n",
+					 vf->vf_id, i);
 				goto error_param;
 			}
 		}
 	}
 
+	/* send the response to the VF */
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
+				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
 error_param:
+	/* disable whatever we can */
+	for (; i >= 0; i--) {
+		if (ice_vsi_ctrl_one_rx_ring(vsi, false, i, true))
+			dev_err(ice_pf_to_dev(pf), "VF-%d could not disable RX queue %d\n",
+				vf->vf_id, i);
+		if (ice_vf_vsi_dis_single_txq(vf, vsi, i))
+			dev_err(ice_pf_to_dev(pf), "VF-%d could not disable TX queue %d\n",
+				vf->vf_id, i);
+	}
+
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES, v_ret,
-				     NULL, 0);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
+				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
 }
 
 /**
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
