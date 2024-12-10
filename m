Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B75459EA3A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 01:26:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA12540308;
	Tue, 10 Dec 2024 00:26:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BfQJ45_SOrBA; Tue, 10 Dec 2024 00:26:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C59A40314
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733790410;
	bh=PAjOfGO6oshdoPFJV5tE2h4rEQUU0bJQyRFPB9brwwE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JN4H31VnKQ7juDkD6sp4f9h8VakA9LDo+0r5LpRU4xIOsIoExpF4p3zIspzqfwRWx
	 zJbUa1LLfUZsUU2cRjZXzkfzbXm3VVvsH1Cp5nS9CmKuKpuRv3MwHtxsQQx6BDljHM
	 aoA+7bUSjUGQ6UzU+pPVEEWKw1CfffyV5FuLX9JZow9n/mfWm2g6LzEfvsyXiQ1b8B
	 JmlGJmDlvJjnMPGjBe6ZBKWvVUT2F/Buyp9NgI0YEtdit42BcDZhxR6wEylEdx0PPR
	 2SawQXpyZYTcDI7rk25j4FMO6WmhNJ5SPAqfj7V/dlYhrV3NZ/jubK55H0+Tqqhlvw
	 PKQqreOzxwzPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C59A40314;
	Tue, 10 Dec 2024 00:26:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E3557E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C3823400FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0I_hliIn81B6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 00:26:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 50C3F40136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50C3F40136
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50C3F40136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:47 +0000 (UTC)
X-CSE-ConnectionGUID: De60rr9xQCm8jdoYYJibZg==
X-CSE-MsgGUID: Nv296X9dQh2E/AXqgJMYuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44791402"
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="44791402"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:47 -0800
X-CSE-ConnectionGUID: MDcqgHCuSMCmIXVF7+bJ0A==
X-CSE-MsgGUID: 8Lkixkv/Q1ecNaYSdAmVQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="126132097"
Received: from cmdeoliv-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:43 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon,  9 Dec 2024 17:26:21 -0700
Message-ID: <20241210002626.366878-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241210002626.366878-1-ahmed.zaki@intel.com>
References: <20241210002626.366878-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733790407; x=1765326407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FwRgnatDLZeDXBVl8pD7MJZDCx18Kn0AISlAlC93/Hs=;
 b=QvAgcocYUEmwZZ4Zg1k0kEYezRysqJIGyeB8a3b2/8AJUVFHeyv5Vu5X
 m3CzzlsSUaiynw8XYD7Eq+WYzE8zZn7MRMwYf52AnhumvSjY5DYs6wuNu
 56xWJunNkd34UCWKYq13HJKOm3u3wnuOUVL0SDgmO1MOmfTjFhwe9fGHa
 Xyln47NuddIRrIKqKc2OG5ljoFWzcvlWX6VbckMIWL0SwojT7HbwGPzAB
 pVzfrnQXuoZn3VT2hCanLAMgeBBD97FY5OfRIRvuMgwsfabiYx/5nzJNa
 ytjK9K+q4MpMIRC0I1gv7RZX/k2e3T2T+W/0ffEkktYecWYAQClLnSOIX
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QvAgcocY
Subject: [Intel-wired-lan] [PATCH v1 net-next 1/6] net: napi: add irq_flags
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
 include/linux/netdevice.h                         | 5 ++++-
 net/core/dev.c                                    | 2 +-
 12 files changed, 17 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
index 63c8a2328142..5b5b22621dcc 100644
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
index 5f7bdafcf05d..45b27460d462 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -11174,7 +11174,7 @@ static int bnxt_request_irq(struct bnxt *bp)
 		if (rc)
 			break;
 
-		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector);
+		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector, 0);
 		irq->requested = 1;
 
 		if (zalloc_cpumask_var(&irq->cpu_mask, GFP_KERNEL)) {
diff --git a/drivers/net/ethernet/broadcom/tg3.c b/drivers/net/ethernet/broadcom/tg3.c
index 01dfec115942..3712af3f95f4 100644
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
index d0b80b520397..93e53d9bd8d0 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -2726,7 +2726,7 @@ static int mlx5e_open_channel(struct mlx5e_priv *priv, int ix,
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
index ecc686409161..b598de335d26 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -391,6 +391,7 @@ struct napi_struct {
 	struct list_head	dev_list;
 	struct hlist_node	napi_hash_node;
 	int			irq;
+	unsigned long		irq_flags;
 	int			index;
 	struct napi_config	*config;
 };
@@ -2667,9 +2668,11 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 			  enum netdev_queue_type type,
 			  struct napi_struct *napi);
 
-static inline void netif_napi_set_irq(struct napi_struct *napi, int irq)
+static inline void netif_napi_set_irq(struct napi_struct *napi,
+				      int irq, unsigned long flags)
 {
 	napi->irq = irq;
+	napi->irq_flags = flags;
 }
 
 /* Default NAPI poll() weight
diff --git a/net/core/dev.c b/net/core/dev.c
index 13d00fc10f55..6ef9eb401fb2 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6764,7 +6764,7 @@ void netif_napi_add_weight(struct net_device *dev, struct napi_struct *napi,
 	 */
 	if (dev->threaded && napi_kthread_create(napi))
 		dev->threaded = false;
-	netif_napi_set_irq(napi, -1);
+	netif_napi_set_irq(napi, -1, 0);
 }
 EXPORT_SYMBOL(netif_napi_add_weight);
 
-- 
2.47.0

