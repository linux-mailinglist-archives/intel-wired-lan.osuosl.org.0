Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FBE9F6BAC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 17:59:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DF07614DB;
	Wed, 18 Dec 2024 16:59:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g43AASQlMS5h; Wed, 18 Dec 2024 16:59:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1F886149B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734541154;
	bh=VC5p9hhLli8fNE2/cy3WnfvtWX5HZWsm6Ix7MNWAfms=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6xPhss4/vxNmr3gOExQR7xfABzs/uUsvdrR0CVKbWHmkfmP6upIO3OyJtBPiQltrQ
	 9E04o0jG6VZlaGE6ITS1/GBS5lPK7MSlJF9yT8yR3jnqDoQvMGjl4znsP3bF93pEVS
	 dNzSWQB4j1ym7nIbKaXQDjC4W/+P5RCDD/WuYDCV+hVRtnCyYo9KohuzdFicTe6U6A
	 d+U5YiIgUnIjS0cxrTamhiAvIdx4lRfqmKAOei5a1zWl9Pi67FPEdK+Xs9SzyMELy+
	 OdB6MuNLW66/JK1PEJ6DBYQr3MiXWQyIbrX+e4L1GsOWNXm+ci5QMcujCWfe+WOknA
	 Uz2kHMW7YUcVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1F886149B;
	Wed, 18 Dec 2024 16:59:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 996ACC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87E1D6146B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M5aSdppzvkm3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 16:59:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 92D316140D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92D316140D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92D316140D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:12 +0000 (UTC)
X-CSE-ConnectionGUID: 8qkjGD2uTYGxB2xfh+bmXA==
X-CSE-MsgGUID: tkoXaVXGT0SnphVdk2ycbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46415490"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="46415490"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:12 -0800
X-CSE-ConnectionGUID: sdJdS6ojQMaByIasp0GI5A==
X-CSE-MsgGUID: 3imJic9fTxWYh4kJl4ju+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102531608"
Received: from ldmartin-desk2.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.224])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:06 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Wed, 18 Dec 2024 09:58:36 -0700
Message-ID: <20241218165843.744647-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241218165843.744647-1-ahmed.zaki@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734541152; x=1766077152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ywmYtI0lcrXxPUxnpZCoN+vSygyrLvEeQCaTxsopkqE=;
 b=NoaM53pGCJ/d7u2fMNxoDE5sNFELud8NUEHOzZZ6qPDqTPYiVcjSPjCC
 +f2AAn4xaN2oF2ReVkH1Bje6DRdFw5T05HqHArf06bDOw9UpfPqVZdUaY
 K8/pdEk9NcqNaGkn+GTPagCZWPtO5V1RSuoWNPAG4d7U+uMh3kfdJPnQF
 SDw72KFbvj36QYQVMggIPWrdqfoPH3jVlUJUud/iqrEYXoGIN8LgswTBM
 YL1K3LvvQbIetx0X0RCIFBSQ9pJCeLSFHdS8JLyDrSgu6bOoQZOblcgpy
 Ynkdce5u5iaZfNqEStb0/wYmgC4ofNVetbruOWHqKWharyqsAk36GGCJf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NoaM53pG
Subject: [Intel-wired-lan] [PATCH net-next v2 1/8] net: napi: add irq_flags
 to napi struct
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

Add irq_flags to the napi struct. This will allow the drivers to choose
how the core handles the IRQ assigned to the napi via
netif_napi_set_irq().

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/amazon/ena/ena_netdev.c      | 2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c         | 2 +-
 drivers/net/ethernet/broadcom/tg3.c               | 2 +-
 drivers/net/ethernet/google/gve/gve_utils.c       | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_main.c     | 2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c        | 2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c          | 2 +-
 drivers/net/ethernet/mellanox/mlx4/en_cq.c        | 4 ++--
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c | 2 +-
 drivers/net/ethernet/meta/fbnic/fbnic_txrx.c      | 3 ++-
 include/linux/netdevice.h                         | 6 ++----
 net/core/dev.c                                    | 9 ++++++++-
 12 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
index c1295dfad0d0..4898c8be78ad 100644
--- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
+++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
@@ -1712,7 +1712,7 @@ static int ena_request_io_irq(struct ena_adapter *adapter)
 	for (i = 0; i < io_queue_count; i++) {
 		irq_idx = ENA_IO_IRQ_IDX(i);
 		irq = &adapter->irq_tbl[irq_idx];
-		netif_napi_set_irq(&adapter->ena_napi[i].napi, irq->vector);
+		netif_napi_set_irq(&adapter->ena_napi[i].napi, irq->vector, 0);
 	}
 
 	return rc;
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index b86f980fa7ea..4763c6300bd3 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -11225,7 +11225,7 @@ static int bnxt_request_irq(struct bnxt *bp)
 		if (rc)
 			break;
 
-		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector);
+		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector, 0);
 		irq->requested = 1;
 
 		if (zalloc_cpumask_var(&irq->cpu_mask, GFP_KERNEL)) {
diff --git a/drivers/net/ethernet/broadcom/tg3.c b/drivers/net/ethernet/broadcom/tg3.c
index 9cc8db10a8d6..0d6383804270 100644
--- a/drivers/net/ethernet/broadcom/tg3.c
+++ b/drivers/net/ethernet/broadcom/tg3.c
@@ -7447,7 +7447,7 @@ static void tg3_napi_init(struct tg3 *tp)
 	for (i = 0; i < tp->irq_cnt; i++) {
 		netif_napi_add(tp->dev, &tp->napi[i].napi,
 			       i ? tg3_poll_msix : tg3_poll);
-		netif_napi_set_irq(&tp->napi[i].napi, tp->napi[i].irq_vec);
+		netif_napi_set_irq(&tp->napi[i].napi, tp->napi[i].irq_vec, 0);
 	}
 }
 
diff --git a/drivers/net/ethernet/google/gve/gve_utils.c b/drivers/net/ethernet/google/gve/gve_utils.c
index 30fef100257e..2657e583f5c6 100644
--- a/drivers/net/ethernet/google/gve/gve_utils.c
+++ b/drivers/net/ethernet/google/gve/gve_utils.c
@@ -111,7 +111,7 @@ void gve_add_napi(struct gve_priv *priv, int ntfy_idx,
 	struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];
 
 	netif_napi_add(priv->dev, &block->napi, gve_poll);
-	netif_napi_set_irq(&block->napi, block->irq);
+	netif_napi_set_irq(&block->napi, block->irq, 0);
 }
 
 void gve_remove_napi(struct gve_priv *priv, int ntfy_idx)
diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 3f089c3d47b2..a83af159837a 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -1394,7 +1394,7 @@ int e1000_open(struct net_device *netdev)
 	/* From here on the code is the same as e1000_up() */
 	clear_bit(__E1000_DOWN, &adapter->flags);
 
-	netif_napi_set_irq(&adapter->napi, adapter->pdev->irq);
+	netif_napi_set_irq(&adapter->napi, adapter->pdev->irq, 0);
 	napi_enable(&adapter->napi);
 	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_RX, &adapter->napi);
 	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_TX, &adapter->napi);
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 286155efcedf..8fc5603ed962 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -4676,7 +4676,7 @@ int e1000e_open(struct net_device *netdev)
 	else
 		irq = adapter->pdev->irq;
 
-	netif_napi_set_irq(&adapter->napi, irq);
+	netif_napi_set_irq(&adapter->napi, irq, 0);
 	napi_enable(&adapter->napi);
 	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_RX, &adapter->napi);
 	netif_queue_set_napi(netdev, 0, NETDEV_QUEUE_TYPE_TX, &adapter->napi);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a7d45a8ce7ac..ff91e70f596f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2735,7 +2735,7 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, v_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
 
-		netif_napi_set_irq(&q_vector->napi, q_vector->irq.virq);
+		netif_napi_set_irq(&q_vector->napi, q_vector->irq.virq, 0);
 	}
 }
 
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_cq.c b/drivers/net/ethernet/mellanox/mlx4/en_cq.c
index 0e92956e84cf..b8531283e3ac 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_cq.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_cq.c
@@ -150,7 +150,7 @@ int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
 	case TX:
 		cq->mcq.comp = mlx4_en_tx_irq;
 		netif_napi_add_tx(cq->dev, &cq->napi, mlx4_en_poll_tx_cq);
-		netif_napi_set_irq(&cq->napi, irq);
+		netif_napi_set_irq(&cq->napi, irq, 0);
 		napi_enable(&cq->napi);
 		netif_queue_set_napi(cq->dev, cq_idx, NETDEV_QUEUE_TYPE_TX, &cq->napi);
 		break;
@@ -158,7 +158,7 @@ int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
 		cq->mcq.comp = mlx4_en_rx_irq;
 		netif_napi_add_config(cq->dev, &cq->napi, mlx4_en_poll_rx_cq,
 				      cq_idx);
-		netif_napi_set_irq(&cq->napi, irq);
+		netif_napi_set_irq(&cq->napi, irq, 0);
 		napi_enable(&cq->napi);
 		netif_queue_set_napi(cq->dev, cq_idx, NETDEV_QUEUE_TYPE_RX, &cq->napi);
 		break;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index dd16d73000c3..58b8313f4c5a 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -2733,7 +2733,7 @@ static int mlx5e_open_channel(struct mlx5e_priv *priv, int ix,
 	c->lag_port = mlx5e_enumerate_lag_port(mdev, ix);
 
 	netif_napi_add_config(netdev, &c->napi, mlx5e_napi_poll, ix);
-	netif_napi_set_irq(&c->napi, irq);
+	netif_napi_set_irq(&c->napi, irq, 0);
 
 	err = mlx5e_open_queues(c, params, cparam);
 	if (unlikely(err))
diff --git a/drivers/net/ethernet/meta/fbnic/fbnic_txrx.c b/drivers/net/ethernet/meta/fbnic/fbnic_txrx.c
index b5050fabe8fe..6ca91ce85d48 100644
--- a/drivers/net/ethernet/meta/fbnic/fbnic_txrx.c
+++ b/drivers/net/ethernet/meta/fbnic/fbnic_txrx.c
@@ -1227,7 +1227,8 @@ static int fbnic_alloc_napi_vector(struct fbnic_dev *fbd, struct fbnic_net *fbn,
 
 	/* Record IRQ to NAPI struct */
 	netif_napi_set_irq(&nv->napi,
-			   pci_irq_vector(to_pci_dev(fbd->dev), nv->v_idx));
+			   pci_irq_vector(to_pci_dev(fbd->dev), nv->v_idx),
+			   0);
 
 	/* Tie nv back to PCIe dev */
 	nv->dev = fbd->dev;
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 2593019ad5b1..ca91b6662bde 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -392,6 +392,7 @@ struct napi_struct {
 	struct list_head	dev_list;
 	struct hlist_node	napi_hash_node;
 	int			irq;
+	unsigned long		irq_flags;
 	int			index;
 	struct napi_config	*config;
 };
@@ -2671,10 +2672,7 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 			  enum netdev_queue_type type,
 			  struct napi_struct *napi);
 
-static inline void netif_napi_set_irq(struct napi_struct *napi, int irq)
-{
-	napi->irq = irq;
-}
+void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long flags);
 
 /* Default NAPI poll() weight
  * Device drivers are strongly advised to not use bigger value
diff --git a/net/core/dev.c b/net/core/dev.c
index c7f3dea3e0eb..88a7d4b6e71b 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6705,6 +6705,13 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 }
 EXPORT_SYMBOL(netif_queue_set_napi);
 
+void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long flags)
+{
+	napi->irq = irq;
+	napi->irq_flags = flags;
+}
+EXPORT_SYMBOL(netif_napi_set_irq);
+
 static void napi_restore_config(struct napi_struct *n)
 {
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
@@ -6770,7 +6777,7 @@ void netif_napi_add_weight(struct net_device *dev, struct napi_struct *napi,
 	 */
 	if (dev->threaded && napi_kthread_create(napi))
 		dev->threaded = false;
-	netif_napi_set_irq(napi, -1);
+	netif_napi_set_irq(napi, -1, 0);
 }
 EXPORT_SYMBOL(netif_napi_add_weight);
 
-- 
2.43.0

