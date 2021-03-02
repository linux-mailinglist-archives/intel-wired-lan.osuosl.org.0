Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B291932A956
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:25:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E72C606E8;
	Tue,  2 Mar 2021 18:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F-X82oeWiC9O; Tue,  2 Mar 2021 18:25:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 454D9606B6;
	Tue,  2 Mar 2021 18:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EC051BF963
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A20583AA2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wa1UdhpgJI4u for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B741A83AA0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
IronPort-SDR: t/arP3efVh3NkbVLOhag+860pcHY6ogOciaw4wgAKsTL6AnPheIO/7u3f10azo/vY4jf4Z/4Xr
 sVrXu+YTGsig==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263192"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263192"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:18 -0800
IronPort-SDR: EnQJg9wu44A7VItgXyAS7E93BPDxLN85ecG+FX3V3JIeTP74TcQMlMdYdi2KxQRabVqr0mF1cs
 GpmhIJR3hnkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915058"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:18 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:40 -0800
Message-Id: <20210302181545.51822-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 08/13] ice: Refactor
 VIRTCHNL_OP_CONFIG_VSI_QUEUES handling
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

Currently, when a VF requests queue configuration via
VIRTCHNL_OP_CONFIG_VSI_QUEUES the PF driver expects that this message
will only be called once and we always assume the queues being
configured start from 0. This is incorrect and is causing issues when
a VF tries to send this message for multiple queue blocks. Fix this by
using the queue_id specified in the virtchnl message and allowing for
individual Rx and/or Tx queues to be configured.

Also, reduce the duplicated for loops for configuring the queues by
moving all the logic into a single for loop.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c      | 27 ++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h      |  4 ++
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 51 ++++++++++---------
 3 files changed, 59 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 01371b377fbc..ddcbd5bfd058 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1668,6 +1668,33 @@ ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio)
 	wr32(hw, QRXFLXP_CNTXT(pf_q), regval);
 }
 
+int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
+{
+	if (q_idx >= vsi->num_rxq)
+		return -EINVAL;
+
+	return ice_vsi_cfg_rxq(vsi->rx_rings[q_idx]);
+}
+
+int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_ring **tx_rings, u16 q_idx)
+{
+	struct ice_aqc_add_tx_qgrp *qg_buf;
+	int err;
+
+	if (q_idx >= vsi->alloc_txq || !tx_rings || !tx_rings[q_idx])
+		return -EINVAL;
+
+	qg_buf = kzalloc(struct_size(qg_buf, txqs, 1), GFP_KERNEL);
+	if (!qg_buf)
+		return -ENOMEM;
+
+	qg_buf->num_txqs = 1;
+
+	err = ice_vsi_cfg_txq(vsi, tx_rings[q_idx], qg_buf);
+	kfree(qg_buf);
+	return err;
+}
+
 /**
  * ice_vsi_cfg_rxqs - Configure the VSI for Rx
  * @vsi: the VSI being configured
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 3da17895a2b1..4b16394da354 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -12,6 +12,10 @@ bool ice_pf_state_is_nominal(struct ice_pf *pf);
 
 void ice_update_eth_stats(struct ice_vsi *vsi);
 
+int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx);
+
+int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_ring **tx_rings, u16 q_idx);
+
 int ice_vsi_cfg_rxqs(struct ice_vsi *vsi);
 
 int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 7ffad4c8a64e..420fcb58e0d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3053,10 +3053,9 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	struct virtchnl_vsi_queue_config_info *qci =
 	    (struct virtchnl_vsi_queue_config_info *)msg;
 	struct virtchnl_queue_pair_info *qpi;
-	u16 num_rxq = 0, num_txq = 0;
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
-	int i;
+	int i, q_idx;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -3094,18 +3093,31 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 			goto error_param;
 		}
+
+		q_idx = qpi->rxq.queue_id;
+
+		/* make sure selected "q_idx" is in valid range of queues
+		 * for selected "vsi"
+		 */
+		if (q_idx >= vsi->alloc_txq || q_idx >= vsi->alloc_rxq) {
+			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+			goto error_param;
+		}
+
 		/* copy Tx queue info from VF into VSI */
 		if (qpi->txq.ring_len > 0) {
-			num_txq++;
 			vsi->tx_rings[i]->dma = qpi->txq.dma_ring_addr;
 			vsi->tx_rings[i]->count = qpi->txq.ring_len;
+			if (ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx)) {
+				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+				goto error_param;
+			}
 		}
 
 		/* copy Rx queue info from VF into VSI */
 		if (qpi->rxq.ring_len > 0) {
 			u16 max_frame_size = ice_vc_get_max_frame_size(vf);
 
-			num_rxq++;
 			vsi->rx_rings[i]->dma = qpi->rxq.dma_ring_addr;
 			vsi->rx_rings[i]->count = qpi->rxq.ring_len;
 
@@ -3122,27 +3134,20 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
 			}
-		}
 
-		vsi->max_frame = qpi->rxq.max_pkt_size;
-		/* add space for the port VLAN since the VF driver is not
-		 * expected to account for it in the MTU calculation
-		 */
-		if (vf->port_vlan_info)
-			vsi->max_frame += VLAN_HLEN;
-	}
-
-	/* VF can request to configure less than allocated queues or default
-	 * allocated queues. So update the VSI with new number
-	 */
-	vsi->num_txq = num_txq;
-	vsi->num_rxq = num_rxq;
-	/* All queues of VF VSI are in TC 0 */
-	vsi->tc_cfg.tc_info[0].qcount_tx = num_txq;
-	vsi->tc_cfg.tc_info[0].qcount_rx = num_rxq;
+			vsi->max_frame = qpi->rxq.max_pkt_size;
+			/* add space for the port VLAN since the VF driver is not
+			 * expected to account for it in the MTU calculation
+			 */
+			if (vf->port_vlan_info)
+				vsi->max_frame += VLAN_HLEN;
 
-	if (ice_vsi_cfg_lan_txqs(vsi) || ice_vsi_cfg_rxqs(vsi))
-		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
+			if (ice_vsi_cfg_single_rxq(vsi, q_idx)) {
+				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+				goto error_param;
+			}
+		}
+	}
 
 error_param:
 	/* send the response to the VF */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
