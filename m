Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE0B244D1E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 18:53:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40F6385F32;
	Fri, 14 Aug 2020 16:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eVyL1__JNyNV; Fri, 14 Aug 2020 16:53:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AB388697C;
	Fri, 14 Aug 2020 16:53:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA1461BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 16:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3E38886C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 16:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgePvdvndJIG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 16:53:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F9B187A5F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 16:53:19 +0000 (UTC)
IronPort-SDR: 9eRWdikR7dAcg4rnoIlOewvu8bEkL2iK3Qsk0gED0S4Gx2h8EexaTazTiuRXIGwXVDfi0ZJ55e
 cUaPKe4eMrUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9713"; a="153688675"
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; d="scan'208";a="153688675"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 09:53:18 -0700
IronPort-SDR: xktN0DjyAk4i9sR98fbQb829opi5adPep6cAcpEdlPfdnnZh+HFV5VY1M5SbjiI0thlkjaY9qK
 DyC98oDMpZ2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; d="scan'208";a="278455142"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga008.fm.intel.com with ESMTP; 14 Aug 2020 09:53:18 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Aug 2020 01:24:52 -0700
Message-Id: <20200814082457.7190-10-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200814082457.7190-1-alice.michael@intel.com>
References: <20200814082457.7190-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next,V7 09/14] iecm: Deinit vport
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Phani Burra <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement vport take down and release its queue
resources.

Signed-off-by: Alice Michael <alice.michael@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Donald Skidmore <donald.c.skidmore@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iecm/iecm_lib.c    |  28 ++-
 drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 218 ++++++++++++++++--
 .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  14 +-
 3 files changed, 244 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c b/drivers/net/ethernet/intel/iecm/iecm_lib.c
index 8c5e90f275c3..16f92dc4c77a 100644
--- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
+++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
@@ -395,7 +395,26 @@ struct iecm_adapter *iecm_netdev_to_adapter(struct net_device *netdev)
  */
 static void iecm_vport_stop(struct iecm_vport *vport)
 {
-	/* stub */
+	struct iecm_adapter *adapter = vport->adapter;
+
+	if (adapter->state <= __IECM_DOWN)
+		return;
+	adapter->dev_ops.vc_ops.irq_map_unmap(vport, false);
+	adapter->dev_ops.vc_ops.disable_queues(vport);
+	/* Normally we ask for queues in create_vport, but if we're changing
+	 * number of requested queues we do a delete then add instead of
+	 * deleting and reallocating the vport.
+	 */
+	if (test_and_clear_bit(__IECM_DEL_QUEUES,
+			       vport->adapter->flags))
+		iecm_send_delete_queues_msg(vport);
+	netif_carrier_off(vport->netdev);
+	netif_tx_disable(vport->netdev);
+	adapter->link_up = false;
+	iecm_vport_intr_deinit(vport);
+	if (adapter->dev_ops.vc_ops.disable_vport)
+		adapter->dev_ops.vc_ops.disable_vport(vport);
+	adapter->state = __IECM_DOWN;
 }
 
 /**
@@ -410,7 +429,11 @@ static void iecm_vport_stop(struct iecm_vport *vport)
  */
 static int iecm_stop(struct net_device *netdev)
 {
-	/* stub */
+	struct iecm_netdev_priv *np = netdev_priv(netdev);
+
+	iecm_vport_stop(np->vport);
+
+	return 0;
 }
 
 /**
@@ -506,6 +529,7 @@ iecm_vport_alloc(struct iecm_adapter *adapter, int vport_id)
 
 	/* fill vport slot in the adapter struct */
 	adapter->vports[adapter->next_vport] = vport;
+
 	if (iecm_cfg_netdev(vport))
 		goto cfg_netdev_fail;
 
diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
index 781942f934df..5a7e31790f97 100644
--- a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
+++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
@@ -43,7 +43,23 @@ void iecm_get_stats64(struct net_device *netdev,
  */
 void iecm_tx_buf_rel(struct iecm_queue *tx_q, struct iecm_tx_buf *tx_buf)
 {
-	/* stub */
+	if (tx_buf->skb) {
+		dev_kfree_skb_any(tx_buf->skb);
+		if (dma_unmap_len(tx_buf, len))
+			dma_unmap_single(tx_q->dev,
+					 dma_unmap_addr(tx_buf, dma),
+					 dma_unmap_len(tx_buf, len),
+					 DMA_TO_DEVICE);
+	} else if (dma_unmap_len(tx_buf, len)) {
+		dma_unmap_page(tx_q->dev,
+			       dma_unmap_addr(tx_buf, dma),
+			       dma_unmap_len(tx_buf, len),
+			       DMA_TO_DEVICE);
+	}
+
+	tx_buf->next_to_watch = NULL;
+	tx_buf->skb = NULL;
+	dma_unmap_len_set(tx_buf, len, 0);
 }
 
 /**
@@ -52,7 +68,26 @@ void iecm_tx_buf_rel(struct iecm_queue *tx_q, struct iecm_tx_buf *tx_buf)
  */
 static void iecm_tx_buf_rel_all(struct iecm_queue *txq)
 {
-	/* stub */
+	u16 i;
+
+	/* Buffers already cleared, nothing to do */
+	if (!txq->tx_buf)
+		return;
+
+	/* Free all the Tx buffer sk_buffs */
+	for (i = 0; i < txq->desc_count; i++)
+		iecm_tx_buf_rel(txq, &txq->tx_buf[i]);
+
+	kfree(txq->tx_buf);
+	txq->tx_buf = NULL;
+
+	if (txq->buf_stack.bufs) {
+		for (i = 0; i < txq->buf_stack.size; i++) {
+			iecm_tx_buf_rel(txq, txq->buf_stack.bufs[i]);
+			kfree(txq->buf_stack.bufs[i]);
+		}
+		kfree(txq->buf_stack.bufs);
+	}
 }
 
 /**
@@ -64,7 +99,17 @@ static void iecm_tx_buf_rel_all(struct iecm_queue *txq)
  */
 static void iecm_tx_desc_rel(struct iecm_queue *txq, bool bufq)
 {
-	/* stub */
+	if (bufq)
+		iecm_tx_buf_rel_all(txq);
+
+	if (txq->desc_ring) {
+		dmam_free_coherent(txq->dev, txq->size,
+				   txq->desc_ring, txq->dma);
+		txq->desc_ring = NULL;
+		txq->next_to_alloc = 0;
+		txq->next_to_use = 0;
+		txq->next_to_clean = 0;
+	}
 }
 
 /**
@@ -75,7 +120,24 @@ static void iecm_tx_desc_rel(struct iecm_queue *txq, bool bufq)
  */
 static void iecm_tx_desc_rel_all(struct iecm_vport *vport)
 {
-	/* stub */
+	struct iecm_queue *txq;
+	int i, j;
+
+	if (!vport->txq_grps)
+		return;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		for (j = 0; j < vport->txq_grps[i].num_txq; j++) {
+			if (vport->txq_grps[i].txqs) {
+				txq = &vport->txq_grps[i].txqs[j];
+				iecm_tx_desc_rel(txq, true);
+			}
+		}
+		if (iecm_is_queue_model_split(vport->txq_model)) {
+			txq = vport->txq_grps[i].complq;
+			iecm_tx_desc_rel(txq, false);
+		}
+	}
 }
 
 /**
@@ -218,7 +280,21 @@ static int iecm_tx_desc_alloc_all(struct iecm_vport *vport)
 static void iecm_rx_buf_rel(struct iecm_queue *rxq,
 			    struct iecm_rx_buf *rx_buf)
 {
-	/* stub */
+	struct device *dev = rxq->dev;
+
+	if (!rx_buf->page)
+		return;
+
+	if (rx_buf->skb) {
+		dev_kfree_skb_any(rx_buf->skb);
+		rx_buf->skb = NULL;
+	}
+
+	dma_unmap_page(dev, rx_buf->dma, PAGE_SIZE, DMA_FROM_DEVICE);
+	__free_pages(rx_buf->page, 0);
+
+	rx_buf->page = NULL;
+	rx_buf->page_offset = 0;
 }
 
 /**
@@ -227,7 +303,23 @@ static void iecm_rx_buf_rel(struct iecm_queue *rxq,
  */
 static void iecm_rx_buf_rel_all(struct iecm_queue *rxq)
 {
-	/* stub */
+	u16 i;
+
+	/* queue already cleared, nothing to do */
+	if (!rxq->rx_buf.buf)
+		return;
+
+	/* Free all the bufs allocated and given to HW on Rx queue */
+	for (i = 0; i < rxq->desc_count; i++) {
+		iecm_rx_buf_rel(rxq, &rxq->rx_buf.buf[i]);
+		if (rxq->rx_hsplit_en)
+			iecm_rx_buf_rel(rxq, &rxq->rx_buf.hdr_buf[i]);
+	}
+
+	kfree(rxq->rx_buf.buf);
+	rxq->rx_buf.buf = NULL;
+	kfree(rxq->rx_buf.hdr_buf);
+	rxq->rx_buf.hdr_buf = NULL;
 }
 
 /**
@@ -241,7 +333,25 @@ static void iecm_rx_buf_rel_all(struct iecm_queue *rxq)
 static void iecm_rx_desc_rel(struct iecm_queue *rxq, bool bufq,
 			     enum virtchnl_queue_model q_model)
 {
-	/* stub */
+	if (!rxq)
+		return;
+
+	if (!bufq && iecm_is_queue_model_split(q_model) && rxq->skb) {
+		dev_kfree_skb_any(rxq->skb);
+		rxq->skb = NULL;
+	}
+
+	if (bufq || !iecm_is_queue_model_split(q_model))
+		iecm_rx_buf_rel_all(rxq);
+
+	if (rxq->desc_ring) {
+		dmam_free_coherent(rxq->dev, rxq->size,
+				   rxq->desc_ring, rxq->dma);
+		rxq->desc_ring = NULL;
+		rxq->next_to_alloc = 0;
+		rxq->next_to_clean = 0;
+		rxq->next_to_use = 0;
+	}
 }
 
 /**
@@ -252,7 +362,49 @@ static void iecm_rx_desc_rel(struct iecm_queue *rxq, bool bufq,
  */
 static void iecm_rx_desc_rel_all(struct iecm_vport *vport)
 {
-	/* stub */
+	struct iecm_rxq_group *rx_qgrp;
+	struct iecm_queue *q;
+	int i, j, num_rxq;
+
+	if (!vport->rxq_grps)
+		return;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		rx_qgrp = &vport->rxq_grps[i];
+
+		if (iecm_is_queue_model_split(vport->rxq_model)) {
+			if (rx_qgrp->splitq.rxq_sets) {
+				num_rxq = rx_qgrp->splitq.num_rxq_sets;
+				for (j = 0; j < num_rxq; j++) {
+					q = &rx_qgrp->splitq.rxq_sets[j].rxq;
+					iecm_rx_desc_rel(q, false,
+							 vport->rxq_model);
+				}
+			}
+
+			if (!rx_qgrp->splitq.bufq_sets)
+				continue;
+			for (j = 0; j < IECM_BUFQS_PER_RXQ_SET; j++) {
+				struct iecm_bufq_set *bufq_set =
+					&rx_qgrp->splitq.bufq_sets[j];
+
+				q = &bufq_set->bufq;
+				iecm_rx_desc_rel(q, true, vport->rxq_model);
+				if (!bufq_set->refillqs)
+					continue;
+				kfree(bufq_set->refillqs);
+				bufq_set->refillqs = NULL;
+			}
+		} else {
+			if (rx_qgrp->singleq.rxqs) {
+				for (j = 0; j < rx_qgrp->singleq.num_rxq; j++) {
+					q = &rx_qgrp->singleq.rxqs[j];
+					iecm_rx_desc_rel(q, false,
+							 vport->rxq_model);
+				}
+			}
+		}
+	}
 }
 
 /**
@@ -585,7 +737,18 @@ static int iecm_rx_desc_alloc_all(struct iecm_vport *vport)
  */
 static void iecm_txq_group_rel(struct iecm_vport *vport)
 {
-	/* stub */
+	if (vport->txq_grps) {
+		int i;
+
+		for (i = 0; i < vport->num_txq_grp; i++) {
+			kfree(vport->txq_grps[i].txqs);
+			vport->txq_grps[i].txqs = NULL;
+			kfree(vport->txq_grps[i].complq);
+			vport->txq_grps[i].complq = NULL;
+		}
+		kfree(vport->txq_grps);
+		vport->txq_grps = NULL;
+	}
 }
 
 /**
@@ -594,7 +757,25 @@ static void iecm_txq_group_rel(struct iecm_vport *vport)
  */
 static void iecm_rxq_group_rel(struct iecm_vport *vport)
 {
-	/* stub */
+	if (vport->rxq_grps) {
+		int i;
+
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+
+			if (iecm_is_queue_model_split(vport->rxq_model)) {
+				kfree(rx_qgrp->splitq.rxq_sets);
+				rx_qgrp->splitq.rxq_sets = NULL;
+				kfree(rx_qgrp->splitq.bufq_sets);
+				rx_qgrp->splitq.bufq_sets = NULL;
+			} else {
+				kfree(rx_qgrp->singleq.rxqs);
+				vport->rxq_grps[i].singleq.rxqs = NULL;
+			}
+		}
+		kfree(vport->rxq_grps);
+		vport->rxq_grps = NULL;
+	}
 }
 
 /**
@@ -603,7 +784,8 @@ static void iecm_rxq_group_rel(struct iecm_vport *vport)
  */
 static void iecm_vport_queue_grp_rel_all(struct iecm_vport *vport)
 {
-	/* stub */
+	iecm_txq_group_rel(vport);
+	iecm_rxq_group_rel(vport);
 }
 
 /**
@@ -614,7 +796,12 @@ static void iecm_vport_queue_grp_rel_all(struct iecm_vport *vport)
  */
 void iecm_vport_queues_rel(struct iecm_vport *vport)
 {
-	/* stub */
+	iecm_tx_desc_rel_all(vport);
+	iecm_rx_desc_rel_all(vport);
+	iecm_vport_queue_grp_rel_all(vport);
+
+	kfree(vport->txqs);
+	vport->txqs = NULL;
 }
 
 /**
@@ -2570,5 +2757,10 @@ int iecm_init_rss(struct iecm_vport *vport)
  */
 void iecm_deinit_rss(struct iecm_vport *vport)
 {
-	/* stub */
+	struct iecm_adapter *adapter = vport->adapter;
+
+	kfree(adapter->rss_data.rss_key);
+	adapter->rss_data.rss_key = NULL;
+	kfree(adapter->rss_data.rss_lut);
+	adapter->rss_data.rss_lut = NULL;
 }
diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
index 36b284aa8be2..c6b5dcbe59c3 100644
--- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
+++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
@@ -687,7 +687,19 @@ int iecm_send_enable_vport_msg(struct iecm_vport *vport)
  */
 int iecm_send_disable_vport_msg(struct iecm_vport *vport)
 {
-	/* stub */
+	struct iecm_adapter *adapter = vport->adapter;
+	struct virtchnl_vport v_id;
+	int err;
+
+	v_id.vport_id = vport->vport_id;
+
+	err = iecm_send_mb_msg(adapter, VIRTCHNL_OP_DISABLE_VPORT,
+			       sizeof(v_id), (u8 *)&v_id);
+	if (err)
+		return err;
+
+	return iecm_wait_for_event(adapter, IECM_VC_DIS_VPORT,
+				   IECM_VC_DIS_VPORT_ERR);
 }
 
 /**
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
