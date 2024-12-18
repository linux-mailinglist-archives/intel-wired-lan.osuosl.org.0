Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 830AA9F6BAD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 17:59:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 216C161484;
	Wed, 18 Dec 2024 16:59:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Krex-xJPnUzr; Wed, 18 Dec 2024 16:59:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA6FB6149B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734541162;
	bh=BDuU/v0rQNhPgHXnNintVGXnDLeH/+m+aiVG27eSSI0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AW+IHacnO2Jp95VtyoeH3AClbDDm9F4fEFdWT6oCjEKi8nvRinv+2I7UkHDgE85eM
	 oKE00SciL41PjANbwjT0NlDw5EKxv7eddwgl2IjIkoVu4K8/ljF+poqDx5xbqWx/E2
	 MgCKC6iVlseJq6tVtADRhYxcZAyleHkH4ifJqSXjbkWAIDjlVG9YH6gqkMikyLg1Sr
	 wuAEhfGxUqGfIrPQjEUwIGWDyWJRKEdwCnn3dr4vV3gOMHEF1SkYgFlI0fHDfpaI6M
	 sVrIW7cvYR7yE1/F6Z0YDTF1da4cMGUhOCixAZBMFvc6b1tj6x8beGHyIBQ11fkTKQ
	 bK1Rwi6Nmq6nQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA6FB6149B;
	Wed, 18 Dec 2024 16:59:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 261E7CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15106811C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o-qy0ZMg_ceR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 16:59:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C29DD84D7A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C29DD84D7A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C29DD84D7A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:18 +0000 (UTC)
X-CSE-ConnectionGUID: 70+566glSXq5fXGqGqgOJw==
X-CSE-MsgGUID: UCZhm9PvSeiTBXrlGJVQ3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46415508"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="46415508"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:17 -0800
X-CSE-ConnectionGUID: 7AmGc/ESTnSYjFqyDm6Ltw==
X-CSE-MsgGUID: 89jf8hhdTV68B1m8NfKe7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102531675"
Received: from ldmartin-desk2.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.224])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:12 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Wed, 18 Dec 2024 09:58:37 -0700
Message-ID: <20241218165843.744647-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241218165843.744647-1-ahmed.zaki@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734541159; x=1766077159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KhIPNPJHmImcf0ZEs3qYAp8F5l15ZiL20/BE1f3GjZU=;
 b=CZsj+3KZgtAajfQXrs+vw0QM7fParTQy7UNjvDAWDvgePp6tFzPMeXWN
 L1RGgYc5JYtaoozziKc/64oqtbqGdIyAicNPd/l4yNWiXw+TXn6GRPDNf
 A7sQVUTEGbCO2Xv6NQyxoxeOxZsF32+48iiZwEGuumLejMTAhu0Z4mw5W
 nY9wu11RTNfcq8lyjiRBaTO9yQx3TruRkDK4AxoZ9N9GOc5iKoZAyLUQZ
 AV775uX1l0J+eHHbBXaMThphGqvq874nPSnmsY4a13c0ePMmWQkD/VqG3
 xrudiNrYi7kyaeUH+smWlfPmyCNw7LCigFzfKX0+2uPHYflBAsGJYuJuM
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CZsj+3KZ
Subject: [Intel-wired-lan] [PATCH net-next v2 2/8] net: allow ARFS rmap
 management in core
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a new napi->irq flag; NAPIF_IRQ_ARFS_RMAP. A driver can use the flag
when binding an irq to a napi:

 netif_napi_set_irq(napi, irq, NAPIF_IRQ_ARFS_RMAP)

and the core will update the ARFS rmap with the assigned irq affinity.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/amazon/ena/ena_netdev.c  | 19 ++++---------
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     | 25 ++++++-----------
 drivers/net/ethernet/intel/ice/ice_arfs.c     | 10 +------
 drivers/net/ethernet/intel/ice/ice_lib.c      |  5 ++++
 drivers/net/ethernet/qlogic/qede/qede_main.c  | 28 +++++++++----------
 drivers/net/ethernet/sfc/falcon/efx.c         |  9 ++++++
 drivers/net/ethernet/sfc/falcon/nic.c         | 10 -------
 drivers/net/ethernet/sfc/siena/efx_channels.c |  9 ++++++
 drivers/net/ethernet/sfc/siena/nic.c          | 10 -------
 include/linux/netdevice.h                     | 12 ++++++++
 net/core/dev.c                                | 14 ++++++++++
 11 files changed, 77 insertions(+), 74 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
index 4898c8be78ad..752b1c61b610 100644
--- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
+++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
@@ -165,23 +165,9 @@ int ena_xmit_common(struct ena_adapter *adapter,
 static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter)
 {
 #ifdef CONFIG_RFS_ACCEL
-	u32 i;
-	int rc;
-
 	adapter->netdev->rx_cpu_rmap = alloc_irq_cpu_rmap(adapter->num_io_queues);
 	if (!adapter->netdev->rx_cpu_rmap)
 		return -ENOMEM;
-	for (i = 0; i < adapter->num_io_queues; i++) {
-		int irq_idx = ENA_IO_IRQ_IDX(i);
-
-		rc = irq_cpu_rmap_add(adapter->netdev->rx_cpu_rmap,
-				      pci_irq_vector(adapter->pdev, irq_idx));
-		if (rc) {
-			free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
-			adapter->netdev->rx_cpu_rmap = NULL;
-			return rc;
-		}
-	}
 #endif /* CONFIG_RFS_ACCEL */
 	return 0;
 }
@@ -1712,7 +1698,12 @@ static int ena_request_io_irq(struct ena_adapter *adapter)
 	for (i = 0; i < io_queue_count; i++) {
 		irq_idx = ENA_IO_IRQ_IDX(i);
 		irq = &adapter->irq_tbl[irq_idx];
+#ifdef CONFIG_RFS_ACCEL
+		netif_napi_set_irq(&adapter->ena_napi[i].napi, irq->vector,
+				   NAPIF_IRQ_ARFS_RMAP);
+#else
 		netif_napi_set_irq(&adapter->ena_napi[i].napi, irq->vector, 0);
+#endif
 	}
 
 	return rc;
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 4763c6300bd3..ac729a25ba52 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -11192,11 +11192,8 @@ static void bnxt_free_irq(struct bnxt *bp)
 
 static int bnxt_request_irq(struct bnxt *bp)
 {
-	int i, j, rc = 0;
+	int i, rc = 0;
 	unsigned long flags = 0;
-#ifdef CONFIG_RFS_ACCEL
-	struct cpu_rmap *rmap;
-#endif
 
 	rc = bnxt_setup_int_mode(bp);
 	if (rc) {
@@ -11204,28 +11201,22 @@ static int bnxt_request_irq(struct bnxt *bp)
 			   rc);
 		return rc;
 	}
-#ifdef CONFIG_RFS_ACCEL
-	rmap = bp->dev->rx_cpu_rmap;
-#endif
-	for (i = 0, j = 0; i < bp->cp_nr_rings; i++) {
+
+	for (i = 0; i < bp->cp_nr_rings; i++) {
 		int map_idx = bnxt_cp_num_to_irq_num(bp, i);
 		struct bnxt_irq *irq = &bp->irq_tbl[map_idx];
 
-#ifdef CONFIG_RFS_ACCEL
-		if (rmap && bp->bnapi[i]->rx_ring) {
-			rc = irq_cpu_rmap_add(rmap, irq->vector);
-			if (rc)
-				netdev_warn(bp->dev, "failed adding irq rmap for ring %d\n",
-					    j);
-			j++;
-		}
-#endif
 		rc = request_irq(irq->vector, irq->handler, flags, irq->name,
 				 bp->bnapi[i]);
 		if (rc)
 			break;
 
+#ifdef CONFIG_RFS_ACCEL
+		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector,
+				   NAPIF_IRQ_ARFS_RMAP);
+#else
 		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector, 0);
+#endif
 		irq->requested = 1;
 
 		if (zalloc_cpumask_var(&irq->cpu_mask, GFP_KERNEL)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 7cee365cc7d1..54d51d218cae 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -590,14 +590,13 @@ void ice_free_cpu_rx_rmap(struct ice_vsi *vsi)
 }
 
 /**
- * ice_set_cpu_rx_rmap - setup CPU reverse map for each queue
+ * ice_set_cpu_rx_rmap - allocate CPU reverse map for a VSI
  * @vsi: the VSI to be forwarded to
  */
 int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 {
 	struct net_device *netdev;
 	struct ice_pf *pf;
-	int i;
 
 	if (!vsi || vsi->type != ICE_VSI_PF)
 		return 0;
@@ -614,13 +613,6 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 	if (unlikely(!netdev->rx_cpu_rmap))
 		return -EINVAL;
 
-	ice_for_each_q_vector(vsi, i)
-		if (irq_cpu_rmap_add(netdev->rx_cpu_rmap,
-				     vsi->q_vectors[i]->irq.virq)) {
-			ice_free_cpu_rx_rmap(vsi);
-			return -EINVAL;
-		}
-
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index ff91e70f596f..7c0b2d8e86ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2735,7 +2735,12 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, v_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
 
+#ifdef CONFIG_RFS_ACCEL
+		netif_napi_set_irq(&q_vector->napi, q_vector->irq.virq,
+				   NAPIF_IRQ_ARFS_RMAP);
+#else
 		netif_napi_set_irq(&q_vector->napi, q_vector->irq.virq, 0);
+#endif
 	}
 }
 
diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
index 99df00c30b8c..27c987435242 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -1944,12 +1944,24 @@ static void qede_napi_disable_remove(struct qede_dev *edev)
 
 static void qede_napi_add_enable(struct qede_dev *edev)
 {
+	struct qede_fastpath *fp = &edev->fp_array[i];
 	int i;
 
 	/* Add NAPI objects */
 	for_each_queue(i) {
-		netif_napi_add(edev->ndev, &edev->fp_array[i].napi, qede_poll);
-		napi_enable(&edev->fp_array[i].napi);
+		fp = &edev->fp_array[i];
+		netif_napi_add(edev->ndev, &fp->napi, qede_poll);
+		napi_enable(&fp->napi);
+		if (edev->ndev->rx_cpu_rmap && (fp->type & QEDE_FASTPATH_RX))
+#ifdef CONFIG_RFS_ACCEL
+			netif_napi_set_irq(&edev->fp_array[i].napi,
+					   edev->int_info.msix[i].vector,
+					   NAPIF_IRQ_ARFS_RMAP);
+#else
+			netif_napi_set_irq(&edev->fp_array[i].napi,
+					   edev->int_info.msix[i].vector,
+					   0);
+#endif
 	}
 }
 
@@ -1983,18 +1995,6 @@ static int qede_req_msix_irqs(struct qede_dev *edev)
 	}
 
 	for (i = 0; i < QEDE_QUEUE_CNT(edev); i++) {
-#ifdef CONFIG_RFS_ACCEL
-		struct qede_fastpath *fp = &edev->fp_array[i];
-
-		if (edev->ndev->rx_cpu_rmap && (fp->type & QEDE_FASTPATH_RX)) {
-			rc = irq_cpu_rmap_add(edev->ndev->rx_cpu_rmap,
-					      edev->int_info.msix[i].vector);
-			if (rc) {
-				DP_ERR(edev, "Failed to add CPU rmap\n");
-				qede_free_arfs(edev);
-			}
-		}
-#endif
 		rc = request_irq(edev->int_info.msix[i].vector,
 				 qede_msix_fp_int, 0, edev->fp_array[i].name,
 				 &edev->fp_array[i]);
diff --git a/drivers/net/ethernet/sfc/falcon/efx.c b/drivers/net/ethernet/sfc/falcon/efx.c
index b07f7e4e2877..8c2f850d4639 100644
--- a/drivers/net/ethernet/sfc/falcon/efx.c
+++ b/drivers/net/ethernet/sfc/falcon/efx.c
@@ -2004,6 +2004,15 @@ static void ef4_init_napi_channel(struct ef4_channel *channel)
 
 	channel->napi_dev = efx->net_dev;
 	netif_napi_add(channel->napi_dev, &channel->napi_str, ef4_poll);
+
+	if (efx->interrupt_mode == EF4_INT_MODE_MSIX &&
+	    channel->channel < efx->n_rx_channels)
+#ifdef CONFIG_RFS_ACCEL
+		netif_napi_set_irq(&channel->napi_str, channel->irq,
+				   NAPIF_IRQ_ARFS_RMAP);
+#else
+		netif_napi_set_irq(&channel->napi_str, channel->irq, 0);
+#endif
 }
 
 static void ef4_init_napi(struct ef4_nic *efx)
diff --git a/drivers/net/ethernet/sfc/falcon/nic.c b/drivers/net/ethernet/sfc/falcon/nic.c
index a6304686bc90..fa31d83e64e4 100644
--- a/drivers/net/ethernet/sfc/falcon/nic.c
+++ b/drivers/net/ethernet/sfc/falcon/nic.c
@@ -115,16 +115,6 @@ int ef4_nic_init_interrupt(struct ef4_nic *efx)
 			goto fail2;
 		}
 		++n_irqs;
-
-#ifdef CONFIG_RFS_ACCEL
-		if (efx->interrupt_mode == EF4_INT_MODE_MSIX &&
-		    channel->channel < efx->n_rx_channels) {
-			rc = irq_cpu_rmap_add(efx->net_dev->rx_cpu_rmap,
-					      channel->irq);
-			if (rc)
-				goto fail2;
-		}
-#endif
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/sfc/siena/efx_channels.c b/drivers/net/ethernet/sfc/siena/efx_channels.c
index d120b3c83ac0..6fed4f7b311f 100644
--- a/drivers/net/ethernet/sfc/siena/efx_channels.c
+++ b/drivers/net/ethernet/sfc/siena/efx_channels.c
@@ -1321,6 +1321,15 @@ static void efx_init_napi_channel(struct efx_channel *channel)
 
 	channel->napi_dev = efx->net_dev;
 	netif_napi_add(channel->napi_dev, &channel->napi_str, efx_poll);
+
+	if (efx->interrupt_mode == EFX_INT_MODE_MSIX &&
+	    channel->channel < efx->n_rx_channels)
+#ifdef CONFIG_RFS_ACCEL
+		netif_napi_set_irq(&channel->napi_str, channel->irq,
+				   NAPIF_IRQ_ARFS_RMAP);
+#else
+		netif_napi_set_irq(&channel->napi_str, channel->irq, 0);
+#endif
 }
 
 void efx_siena_init_napi(struct efx_nic *efx)
diff --git a/drivers/net/ethernet/sfc/siena/nic.c b/drivers/net/ethernet/sfc/siena/nic.c
index 32fce70085e3..28ef6222395e 100644
--- a/drivers/net/ethernet/sfc/siena/nic.c
+++ b/drivers/net/ethernet/sfc/siena/nic.c
@@ -117,16 +117,6 @@ int efx_siena_init_interrupt(struct efx_nic *efx)
 			goto fail2;
 		}
 		++n_irqs;
-
-#ifdef CONFIG_RFS_ACCEL
-		if (efx->interrupt_mode == EFX_INT_MODE_MSIX &&
-		    channel->channel < efx->n_rx_channels) {
-			rc = irq_cpu_rmap_add(efx->net_dev->rx_cpu_rmap,
-					      channel->irq);
-			if (rc)
-				goto fail2;
-		}
-#endif
 	}
 
 	efx->irqs_hooked = true;
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index ca91b6662bde..0df419052434 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -354,6 +354,18 @@ struct napi_config {
 	unsigned int napi_id;
 };
 
+enum {
+#ifdef CONFIG_RFS_ACCEL
+	NAPI_IRQ_ARFS_RMAP,		/* Core handles RMAP updates */
+#endif
+};
+
+enum {
+#ifdef CONFIG_RFS_ACCEL
+	NAPIF_IRQ_ARFS_RMAP		= BIT(NAPI_IRQ_ARFS_RMAP),
+#endif
+};
+
 /*
  * Structure for NAPI scheduling similar to tasklet but with weighting
  */
diff --git a/net/core/dev.c b/net/core/dev.c
index 88a7d4b6e71b..7c3abff48aea 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6707,8 +6707,22 @@ EXPORT_SYMBOL(netif_queue_set_napi);
 
 void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long flags)
 {
+	int  rc;
+
 	napi->irq = irq;
 	napi->irq_flags = flags;
+
+#ifdef CONFIG_RFS_ACCEL
+	if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
+		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
+		if (rc) {
+			netdev_warn(napi->dev, "Unable to update ARFS map (%d).\n",
+				    rc);
+			free_irq_cpu_rmap(napi->dev->rx_cpu_rmap);
+			napi->dev->rx_cpu_rmap = NULL;
+		}
+	}
+#endif
 }
 EXPORT_SYMBOL(netif_napi_set_irq);
 
-- 
2.43.0

