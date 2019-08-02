Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 270617FEF8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2019 18:54:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3D7E87BE5;
	Fri,  2 Aug 2019 16:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w+xMUudb2YP8; Fri,  2 Aug 2019 16:54:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D290F87E64;
	Fri,  2 Aug 2019 16:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 703871BF296
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 65FDE86B8C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3RFHRrUNKiCG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2019 16:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 018F586B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:53:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 09:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,338,1559545200"; d="scan'208";a="175640938"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 02 Aug 2019 09:53:58 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Aug 2019 01:25:19 -0700
Message-Id: <20190802082533.23083-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S26 01/15] ice: add support for
 enabling/disabling single queues
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Refactor the queue handling functions that are going through queue
arrays in a way that the logic done for a single queue is pulled out and
it will be called for each ring when traversing ring array. This implies
that when disabling Tx rings we won't fill up q_ids, q_teids and
q_handles arrays.  Drop also 'offset' parameter; the value from vsi's
txq_map is stored in ring->reg_idx and that drops the need for mentioned
parameter. Introduce the ice_vsi_cfg_txq, ice_vsi_stop_tx_ring and
ice_vsi_ctrl_rx_ring that are the functions with pulled out logic.

There's several Tx queue meta data (q_id, q_handle, q_teid and other)
that need to be set up during Tx queue disablement, so let's as well add
a helper structure that wraps it up and a function that will be filling
it up.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 340 +++++++++++++----------
 drivers/net/ethernet/intel/ice/ice_lib.h |  18 +-
 2 files changed, 213 insertions(+), 145 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 751f9f1f6367..913467e5c1c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -191,41 +191,55 @@ static int ice_pf_rxq_wait(struct ice_pf *pf, int pf_q, bool ena)
 }
 
 /**
- * ice_vsi_ctrl_rx_rings - Start or stop a VSI's Rx rings
+ * ice_vsi_ctrl_rx_ring - Start or stop a VSI's Rx ring
  * @vsi: the VSI being configured
  * @ena: start or stop the Rx rings
+ * @rxq_idx: Rx queue index
  */
-static int ice_vsi_ctrl_rx_rings(struct ice_vsi *vsi, bool ena)
+static int ice_vsi_ctrl_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx)
 {
+	int pf_q = vsi->rxq_map[rxq_idx];
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	int i, ret = 0;
+	int ret = 0;
+	u32 rx_reg;
 
-	for (i = 0; i < vsi->num_rxq; i++) {
-		int pf_q = vsi->rxq_map[i];
-		u32 rx_reg;
+	rx_reg = rd32(hw, QRX_CTRL(pf_q));
 
-		rx_reg = rd32(hw, QRX_CTRL(pf_q));
+	/* Skip if the queue is already in the requested state */
+	if (ena == !!(rx_reg & QRX_CTRL_QENA_STAT_M))
+		return 0;
 
-		/* Skip if the queue is already in the requested state */
-		if (ena == !!(rx_reg & QRX_CTRL_QENA_STAT_M))
-			continue;
+	/* turn on/off the queue */
+	if (ena)
+		rx_reg |= QRX_CTRL_QENA_REQ_M;
+	else
+		rx_reg &= ~QRX_CTRL_QENA_REQ_M;
+	wr32(hw, QRX_CTRL(pf_q), rx_reg);
 
-		/* turn on/off the queue */
-		if (ena)
-			rx_reg |= QRX_CTRL_QENA_REQ_M;
-		else
-			rx_reg &= ~QRX_CTRL_QENA_REQ_M;
-		wr32(hw, QRX_CTRL(pf_q), rx_reg);
+	/* wait for the change to finish */
+	ret = ice_pf_rxq_wait(pf, pf_q, ena);
+	if (ret)
+		dev_err(&pf->pdev->dev,
+			"VSI idx %d Rx ring %d %sable timeout\n",
+			vsi->idx, pf_q, (ena ? "en" : "dis"));
 
-		/* wait for the change to finish */
-		ret = ice_pf_rxq_wait(pf, pf_q, ena);
-		if (ret) {
-			dev_err(&pf->pdev->dev,
-				"VSI idx %d Rx ring %d %sable timeout\n",
-				vsi->idx, pf_q, (ena ? "en" : "dis"));
+	return ret;
+}
+
+/**
+ * ice_vsi_ctrl_rx_rings - Start or stop a VSI's Rx rings
+ * @vsi: the VSI being configured
+ * @ena: start or stop the Rx rings
+ */
+static int ice_vsi_ctrl_rx_rings(struct ice_vsi *vsi, bool ena)
+{
+	int i, ret = 0;
+
+	for (i = 0; i < vsi->num_rxq; i++) {
+		ret = ice_vsi_ctrl_rx_ring(vsi, ena, i);
+		if (ret)
 			break;
-		}
 	}
 
 	return ret;
@@ -1668,6 +1682,62 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
 	return 0;
 }
 
+/**
+ * ice_vsi_cfg_txq - Configure single Tx queue
+ * @vsi: the VSI that queue belongs to
+ * @ring: Tx ring to be configured
+ * @tc_q_idx: queue index within given TC
+ * @qg_buf: queue group buffer
+ * @tc: TC that Tx ring belongs to
+ */
+static int
+ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring, u16 tc_q_idx,
+		struct ice_aqc_add_tx_qgrp *qg_buf, u8 tc)
+{
+	struct ice_tlan_ctx tlan_ctx = { 0 };
+	struct ice_aqc_add_txqs_perq *txq;
+	struct ice_pf *pf = vsi->back;
+	u8 buf_len = sizeof(*qg_buf);
+	enum ice_status status;
+	u16 pf_q;
+
+	pf_q = ring->reg_idx;
+	ice_setup_tx_ctx(ring, &tlan_ctx, pf_q);
+	/* copy context contents into the qg_buf */
+	qg_buf->txqs[0].txq_id = cpu_to_le16(pf_q);
+	ice_set_ctx((u8 *)&tlan_ctx, qg_buf->txqs[0].txq_ctx,
+		    ice_tlan_ctx_info);
+
+	/* init queue specific tail reg. It is referred as
+	 * transmit comm scheduler queue doorbell.
+	 */
+	ring->tail = pf->hw.hw_addr + QTX_COMM_DBELL(pf_q);
+
+	/* Add unique software queue handle of the Tx queue per
+	 * TC into the VSI Tx ring
+	 */
+	ring->q_handle = tc_q_idx;
+
+	status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc, ring->q_handle,
+				 1, qg_buf, buf_len, NULL);
+	if (status) {
+		dev_err(&pf->pdev->dev,
+			"Failed to set LAN Tx queue context, error: %d\n",
+			status);
+		return -ENODEV;
+	}
+
+	/* Add Tx Queue TEID into the VSI Tx ring from the
+	 * response. This will complete configuring and
+	 * enabling the queue.
+	 */
+	txq = &qg_buf->txqs[0];
+	if (pf_q == le16_to_cpu(txq->txq_id))
+		ring->txq_teid = le32_to_cpu(txq->q_teid);
+
+	return 0;
+}
+
 /**
  * ice_vsi_cfg_txqs - Configure the VSI for Tx
  * @vsi: the VSI being configured
@@ -1681,20 +1751,16 @@ static int
 ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings, int offset)
 {
 	struct ice_aqc_add_tx_qgrp *qg_buf;
-	struct ice_aqc_add_txqs_perq *txq;
 	struct ice_pf *pf = vsi->back;
-	u8 num_q_grps, q_idx = 0;
-	enum ice_status status;
-	u16 buf_len, i, pf_q;
-	int err = 0, tc;
+	u16 q_idx = 0, i;
+	int err = 0;
+	u8 tc;
 
-	buf_len = sizeof(*qg_buf);
-	qg_buf = devm_kzalloc(&pf->pdev->dev, buf_len, GFP_KERNEL);
+	qg_buf = devm_kzalloc(&pf->pdev->dev, sizeof(*qg_buf), GFP_KERNEL);
 	if (!qg_buf)
 		return -ENOMEM;
 
 	qg_buf->num_txqs = 1;
-	num_q_grps = 1;
 
 	/* set up and configure the Tx queues for each enabled TC */
 	ice_for_each_traffic_class(tc) {
@@ -1702,39 +1768,10 @@ ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings, int offset)
 			break;
 
 		for (i = 0; i < vsi->tc_cfg.tc_info[tc].qcount_tx; i++) {
-			struct ice_tlan_ctx tlan_ctx = { 0 };
-
-			pf_q = vsi->txq_map[q_idx + offset];
-			ice_setup_tx_ctx(rings[q_idx], &tlan_ctx, pf_q);
-			/* copy context contents into the qg_buf */
-			qg_buf->txqs[0].txq_id = cpu_to_le16(pf_q);
-			ice_set_ctx((u8 *)&tlan_ctx, qg_buf->txqs[0].txq_ctx,
-				    ice_tlan_ctx_info);
-
-			/* init queue specific tail reg. It is referred as
-			 * transmit comm scheduler queue doorbell.
-			 */
-			rings[q_idx]->tail =
-				pf->hw.hw_addr + QTX_COMM_DBELL(pf_q);
-			status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc,
-						 i, num_q_grps, qg_buf,
-						 buf_len, NULL);
-			if (status) {
-				dev_err(&pf->pdev->dev,
-					"Failed to set LAN Tx queue context, error: %d\n",
-					status);
-				err = -ENODEV;
+			err = ice_vsi_cfg_txq(vsi, rings[q_idx], i + offset,
+					      qg_buf, tc);
+			if (err)
 				goto err_cfg_txqs;
-			}
-
-			/* Add Tx Queue TEID into the VSI Tx ring from the
-			 * response. This will complete configuring and
-			 * enabling the queue.
-			 */
-			txq = &qg_buf->txqs[0];
-			if (pf_q == le16_to_cpu(txq->txq_id))
-				rings[q_idx]->txq_teid =
-					le32_to_cpu(txq->q_teid);
 
 			q_idx++;
 		}
@@ -2081,45 +2118,106 @@ void ice_trigger_sw_intr(struct ice_hw *hw, struct ice_q_vector *q_vector)
 }
 
 /**
- * ice_vsi_stop_tx_rings - Disable Tx rings
+ * ice_vsi_stop_tx_ring - Disable single Tx ring
  * @vsi: the VSI being configured
  * @rst_src: reset source
  * @rel_vmvf_num: Relative ID of VF/VM
- * @rings: Tx ring array to be stopped
- * @offset: offset within vsi->txq_map
+ * @ring: Tx ring to be stopped
+ * @txq_meta: Meta data of Tx ring to be stopped
  */
 static int
-ice_vsi_stop_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
-		      u16 rel_vmvf_num, struct ice_ring **rings, int offset)
+ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
+		     u16 rel_vmvf_num, struct ice_ring *ring,
+		     struct ice_txq_meta *txq_meta)
 {
 	struct ice_pf *pf = vsi->back;
+	struct ice_q_vector *q_vector;
 	struct ice_hw *hw = &pf->hw;
-	int tc, q_idx = 0, err = 0;
-	u16 *q_ids, *q_handles, i;
 	enum ice_status status;
-	u32 *q_teids, val;
+	u32 val;
 
-	if (vsi->num_txq > ICE_LAN_TXQ_MAX_QDIS)
-		return -EINVAL;
+	/* clear cause_ena bit for disabled queues */
+	val = rd32(hw, QINT_TQCTL(ring->reg_idx));
+	val &= ~QINT_TQCTL_CAUSE_ENA_M;
+	wr32(hw, QINT_TQCTL(ring->reg_idx), val);
 
-	q_teids = devm_kcalloc(&pf->pdev->dev, vsi->num_txq, sizeof(*q_teids),
-			       GFP_KERNEL);
-	if (!q_teids)
-		return -ENOMEM;
+	/* software is expected to wait for 100 ns */
+	ndelay(100);
 
-	q_ids = devm_kcalloc(&pf->pdev->dev, vsi->num_txq, sizeof(*q_ids),
-			     GFP_KERNEL);
-	if (!q_ids) {
-		err = -ENOMEM;
-		goto err_alloc_q_ids;
+	/* trigger a software interrupt for the vector
+	 * associated to the queue to schedule NAPI handler
+	 */
+	q_vector = ring->q_vector;
+	if (q_vector)
+		ice_trigger_sw_intr(hw, q_vector);
+
+	status = ice_dis_vsi_txq(vsi->port_info, txq_meta->vsi_idx,
+				 txq_meta->tc, 1, &txq_meta->q_handle,
+				 &txq_meta->q_id, &txq_meta->q_teid, rst_src,
+				 rel_vmvf_num, NULL);
+
+	/* if the disable queue command was exercised during an
+	 * active reset flow, ICE_ERR_RESET_ONGOING is returned.
+	 * This is not an error as the reset operation disables
+	 * queues at the hardware level anyway.
+	 */
+	if (status == ICE_ERR_RESET_ONGOING) {
+		dev_dbg(&vsi->back->pdev->dev,
+			"Reset in progress. LAN Tx queues already disabled\n");
+	} else if (status == ICE_ERR_DOES_NOT_EXIST) {
+		dev_dbg(&vsi->back->pdev->dev,
+			"LAN Tx queues do not exist, nothing to disable\n");
+	} else if (status) {
+		dev_err(&vsi->back->pdev->dev,
+			"Failed to disable LAN Tx queues, error: %d\n", status);
+		return -ENODEV;
 	}
 
-	q_handles = devm_kcalloc(&pf->pdev->dev, vsi->num_txq,
-				 sizeof(*q_handles), GFP_KERNEL);
-	if (!q_handles) {
-		err = -ENOMEM;
-		goto err_alloc_q_handles;
-	}
+	return 0;
+}
+
+/**
+ * ice_fill_txq_meta - Prepare the Tx queue's meta data
+ * @vsi: VSI that ring belongs to
+ * @ring: ring that txq_meta will be based on
+ * @txq_meta: a helper struct that wraps Tx queue's information
+ *
+ * Set up a helper struct that will contain all the necessary fields that
+ * are needed for stopping Tx queue
+ */
+static void
+ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_ring *ring,
+		  struct ice_txq_meta *txq_meta)
+{
+	u8 tc = 0;
+
+#ifdef CONFIG_DCB
+	tc = ring->dcb_tc;
+#endif /* CONFIG_DCB */
+	txq_meta->q_id = ring->reg_idx;
+	txq_meta->q_teid = ring->txq_teid;
+	txq_meta->q_handle = ring->q_handle;
+	txq_meta->vsi_idx = vsi->idx;
+	txq_meta->tc = tc;
+}
+
+/**
+ * ice_vsi_stop_tx_rings - Disable Tx rings
+ * @vsi: the VSI being configured
+ * @rst_src: reset source
+ * @rel_vmvf_num: Relative ID of VF/VM
+ * @rings: Tx ring array to be stopped
+ */
+static int
+ice_vsi_stop_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
+		      u16 rel_vmvf_num, struct ice_ring **rings)
+{
+	u16 i, q_idx = 0;
+	int status;
+	u8 tc;
+
+	if (vsi->num_txq > ICE_LAN_TXQ_MAX_QDIS)
+		return -EINVAL;
 
 	/* set up the Tx queue list to be disabled for each enabled TC */
 	ice_for_each_traffic_class(tc) {
@@ -2127,67 +2225,24 @@ ice_vsi_stop_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 			break;
 
 		for (i = 0; i < vsi->tc_cfg.tc_info[tc].qcount_tx; i++) {
-			struct ice_q_vector *q_vector;
-
-			if (!rings || !rings[q_idx]) {
-				err = -EINVAL;
-				goto err_out;
-			}
+			struct ice_txq_meta txq_meta = { };
 
-			q_ids[i] = vsi->txq_map[q_idx + offset];
-			q_teids[i] = rings[q_idx]->txq_teid;
-			q_handles[i] = i;
+			if (!rings || !rings[q_idx])
+				return -EINVAL;
 
-			/* clear cause_ena bit for disabled queues */
-			val = rd32(hw, QINT_TQCTL(rings[i]->reg_idx));
-			val &= ~QINT_TQCTL_CAUSE_ENA_M;
-			wr32(hw, QINT_TQCTL(rings[i]->reg_idx), val);
+			ice_fill_txq_meta(vsi, rings[q_idx], &txq_meta);
+			status = ice_vsi_stop_tx_ring(vsi, rst_src,
+						      rel_vmvf_num,
+						      rings[q_idx], &txq_meta);
 
-			/* software is expected to wait for 100 ns */
-			ndelay(100);
-
-			/* trigger a software interrupt for the vector
-			 * associated to the queue to schedule NAPI handler
-			 */
-			q_vector = rings[i]->q_vector;
-			if (q_vector)
-				ice_trigger_sw_intr(hw, q_vector);
+			if (status)
+				return status;
 
 			q_idx++;
 		}
-		status = ice_dis_vsi_txq(vsi->port_info, vsi->idx, tc,
-					 vsi->num_txq, q_handles, q_ids,
-					 q_teids, rst_src, rel_vmvf_num, NULL);
-
-		/* if the disable queue command was exercised during an active
-		 * reset flow, ICE_ERR_RESET_ONGOING is returned. This is not
-		 * an error as the reset operation disables queues at the
-		 * hardware level anyway.
-		 */
-		if (status == ICE_ERR_RESET_ONGOING) {
-			dev_dbg(&pf->pdev->dev,
-				"Reset in progress. LAN Tx queues already disabled\n");
-		} else if (status == ICE_ERR_DOES_NOT_EXIST) {
-			dev_dbg(&pf->pdev->dev,
-				"LAN Tx queues does not exist, nothing to disabled\n");
-		} else if (status) {
-			dev_err(&pf->pdev->dev,
-				"Failed to disable LAN Tx queues, error: %d\n",
-				status);
-			err = -ENODEV;
-		}
 	}
 
-err_out:
-	devm_kfree(&pf->pdev->dev, q_handles);
-
-err_alloc_q_handles:
-	devm_kfree(&pf->pdev->dev, q_ids);
-
-err_alloc_q_ids:
-	devm_kfree(&pf->pdev->dev, q_teids);
-
-	return err;
+	return 0;
 }
 
 /**
@@ -2200,8 +2255,7 @@ int
 ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 			  u16 rel_vmvf_num)
 {
-	return ice_vsi_stop_tx_rings(vsi, rst_src, rel_vmvf_num, vsi->tx_rings,
-				     0);
+	return ice_vsi_stop_tx_rings(vsi, rst_src, rel_vmvf_num, vsi->tx_rings);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 0ed111edb7bb..c2d0040afb3a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -6,8 +6,22 @@
 
 #include "ice.h"
 
-int ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
-			const u8 *macaddr);
+struct ice_txq_meta {
+	/* Tx-scheduler element identifier */
+	u32 q_teid;
+	/* Entry in VSI's txq_map bitmap */
+	u16 q_id;
+	/* Relative index of Tx queue within TC */
+	u16 q_handle;
+	/* VSI index that Tx queue belongs to */
+	u16 vsi_idx;
+	/* TC number that Tx queue belongs to */
+	u8 tc;
+};
+
+int
+ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
+		    const u8 *macaddr);
 
 void ice_free_fltr_list(struct device *dev, struct list_head *h);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
