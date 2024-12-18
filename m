Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7719F6BBA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 17:59:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A7A0419C1;
	Wed, 18 Dec 2024 16:59:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LvWIGXZjXkkf; Wed, 18 Dec 2024 16:59:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EE4440527
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734541197;
	bh=pCruMqu6RLiRm2jpmcBigqFtICmtveoz/TFh3jk85Gw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rypoCbQaDWBhRwwy6lNkAjgi/P27iQvoW34MaD0RHwNuOqS/wD3w5RYmWkVt1zXu9
	 1jxTtVrYehw5xd2huv6BWI3s984C3nvFFImX3/0o30t9Z+wNreRL1V3XyN2Ro7tHX/
	 V9OU3tP/N46y8rD5lMZ8mOPEBqUw1mFJbWyYl5ByokPz+EbGEQCqeB5r/PW0m1jT1d
	 3QbdTp6ZJcvSoZr/5kiCeC1cm1ubU1+JSpI0W7hbVJzLZLBiUucTrKQqPtde9j6d9A
	 p5Huj9wH0Z1DMhGTTR2OilydsLgEzs6EHWE+aHFbuBes0mKBTjcHQDIS+KBhapn93A
	 hV7WlqGE9HwpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EE4440527;
	Wed, 18 Dec 2024 16:59:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 72A71CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C53A6149B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HofZdh3j5Nef for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 16:59:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 515D36146B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 515D36146B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 515D36146B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:53 +0000 (UTC)
X-CSE-ConnectionGUID: 0C+QvPzjROCv2NzqJWG54g==
X-CSE-MsgGUID: wh8JzHg4RCmDoDRHE/0UDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46415681"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="46415681"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:52 -0800
X-CSE-ConnectionGUID: gw6bJWe8Rrqp7Tn3b+roSw==
X-CSE-MsgGUID: A/OwIEffTxi0uRWwu5sgbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102532129"
Received: from ldmartin-desk2.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.224])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:46 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Wed, 18 Dec 2024 09:58:43 -0700
Message-ID: <20241218165843.744647-9-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241218165843.744647-1-ahmed.zaki@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734541193; x=1766077193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o32FlmOLhDk2frzKQACZCmNSQ7xsXevYinxlSiFJGE0=;
 b=RrrZO4qLyzabBoaQsvW3G7RbEJSA+9ZWckqAlgd3k5yQkv4BRMF++Bli
 x/8ZRxzzsSw2ZGAn4aplVSnlEx+5KmWGMc9yQYPgDPVTjezCiOejXraBu
 vkIxZEZBoxLYZZJW26g0gX3yqYdIouP2i5OE21Ewa+j/BYtOve6YD0hSo
 gYnUgH0W9ufVb16Zn11PWcQXujHgPNY9pYOCp6mI7e5ZSAX5KLXsY2wrU
 yb3qJ4iS8otli/NH5lZ3phVPQPy5zGIiKfNKlYHdUiOAgvafakJugB3at
 n1nN40E+GYw1K3o5TanBJmCtzV+fkzSVd+pyZU1g9uencub3e4Y2r2eOS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RrrZO4qL
Subject: [Intel-wired-lan] [PATCH net-next v2 8/8] mlx4: use napi's irq
 affinity
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

Delete the driver CPU affinity info and use the core's napi config
instead.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/mellanox/mlx4/en_cq.c    |  8 ++--
 .../net/ethernet/mellanox/mlx4/en_netdev.c    | 33 +--------------
 drivers/net/ethernet/mellanox/mlx4/eq.c       | 22 ----------
 drivers/net/ethernet/mellanox/mlx4/main.c     | 42 ++-----------------
 drivers/net/ethernet/mellanox/mlx4/mlx4.h     |  1 -
 drivers/net/ethernet/mellanox/mlx4/mlx4_en.h  |  1 -
 6 files changed, 10 insertions(+), 97 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/en_cq.c b/drivers/net/ethernet/mellanox/mlx4/en_cq.c
index b8531283e3ac..46e28e0bfcd0 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_cq.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_cq.c
@@ -90,6 +90,7 @@ int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
 			int cq_idx)
 {
 	struct mlx4_en_dev *mdev = priv->mdev;
+	struct napi_config *napi_config;
 	int irq, err = 0;
 	int timestamp_en = 0;
 	bool assigned_eq = false;
@@ -100,11 +101,12 @@ int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
 	*cq->mcq.set_ci_db = 0;
 	*cq->mcq.arm_db    = 0;
 	memset(cq->buf, 0, cq->buf_size);
+	napi_config = cq->napi.config;
 
 	if (cq->type == RX) {
 		if (!mlx4_is_eq_vector_valid(mdev->dev, priv->port,
 					     cq->vector)) {
-			cq->vector = cpumask_first(priv->rx_ring[cq->ring]->affinity_mask);
+			cq->vector = cpumask_first(&napi_config->affinity_mask);
 
 			err = mlx4_assign_eq(mdev->dev, priv->port,
 					     &cq->vector);
@@ -150,7 +152,7 @@ int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
 	case TX:
 		cq->mcq.comp = mlx4_en_tx_irq;
 		netif_napi_add_tx(cq->dev, &cq->napi, mlx4_en_poll_tx_cq);
-		netif_napi_set_irq(&cq->napi, irq, 0);
+		netif_napi_set_irq(&cq->napi, irq, NAPIF_IRQ_AFFINITY);
 		napi_enable(&cq->napi);
 		netif_queue_set_napi(cq->dev, cq_idx, NETDEV_QUEUE_TYPE_TX, &cq->napi);
 		break;
@@ -158,7 +160,7 @@ int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
 		cq->mcq.comp = mlx4_en_rx_irq;
 		netif_napi_add_config(cq->dev, &cq->napi, mlx4_en_poll_rx_cq,
 				      cq_idx);
-		netif_napi_set_irq(&cq->napi, irq, 0);
+		netif_napi_set_irq(&cq->napi, irq, NAPIF_IRQ_AFFINITY);
 		napi_enable(&cq->napi);
 		netif_queue_set_napi(cq->dev, cq_idx, NETDEV_QUEUE_TYPE_RX, &cq->napi);
 		break;
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_netdev.c b/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
index 281b34af0bb4..e4c2532b5909 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_netdev.c
@@ -1596,24 +1596,6 @@ static void mlx4_en_linkstate_work(struct work_struct *work)
 	mutex_unlock(&mdev->state_lock);
 }
 
-static int mlx4_en_init_affinity_hint(struct mlx4_en_priv *priv, int ring_idx)
-{
-	struct mlx4_en_rx_ring *ring = priv->rx_ring[ring_idx];
-	int numa_node = priv->mdev->dev->numa_node;
-
-	if (!zalloc_cpumask_var(&ring->affinity_mask, GFP_KERNEL))
-		return -ENOMEM;
-
-	cpumask_set_cpu(cpumask_local_spread(ring_idx, numa_node),
-			ring->affinity_mask);
-	return 0;
-}
-
-static void mlx4_en_free_affinity_hint(struct mlx4_en_priv *priv, int ring_idx)
-{
-	free_cpumask_var(priv->rx_ring[ring_idx]->affinity_mask);
-}
-
 static void mlx4_en_init_recycle_ring(struct mlx4_en_priv *priv,
 				      int tx_ring_idx)
 {
@@ -1663,16 +1645,9 @@ int mlx4_en_start_port(struct net_device *dev)
 	for (i = 0; i < priv->rx_ring_num; i++) {
 		cq = priv->rx_cq[i];
 
-		err = mlx4_en_init_affinity_hint(priv, i);
-		if (err) {
-			en_err(priv, "Failed preparing IRQ affinity hint\n");
-			goto cq_err;
-		}
-
 		err = mlx4_en_activate_cq(priv, cq, i);
 		if (err) {
 			en_err(priv, "Failed activating Rx CQ\n");
-			mlx4_en_free_affinity_hint(priv, i);
 			goto cq_err;
 		}
 
@@ -1688,7 +1663,6 @@ int mlx4_en_start_port(struct net_device *dev)
 		if (err) {
 			en_err(priv, "Failed setting cq moderation parameters\n");
 			mlx4_en_deactivate_cq(priv, cq);
-			mlx4_en_free_affinity_hint(priv, i);
 			goto cq_err;
 		}
 		mlx4_en_arm_cq(priv, cq);
@@ -1874,10 +1848,9 @@ int mlx4_en_start_port(struct net_device *dev)
 mac_err:
 	mlx4_en_put_qp(priv);
 cq_err:
-	while (rx_index--) {
+	while (rx_index--)
 		mlx4_en_deactivate_cq(priv, priv->rx_cq[rx_index]);
-		mlx4_en_free_affinity_hint(priv, rx_index);
-	}
+
 	for (i = 0; i < priv->rx_ring_num; i++)
 		mlx4_en_deactivate_rx_ring(priv, priv->rx_ring[i]);
 
@@ -2011,8 +1984,6 @@ void mlx4_en_stop_port(struct net_device *dev, int detach)
 		napi_synchronize(&cq->napi);
 		mlx4_en_deactivate_rx_ring(priv, priv->rx_ring[i]);
 		mlx4_en_deactivate_cq(priv, cq);
-
-		mlx4_en_free_affinity_hint(priv, i);
 	}
 }
 
diff --git a/drivers/net/ethernet/mellanox/mlx4/eq.c b/drivers/net/ethernet/mellanox/mlx4/eq.c
index d768a6a828c4..b005eb697c64 100644
--- a/drivers/net/ethernet/mellanox/mlx4/eq.c
+++ b/drivers/net/ethernet/mellanox/mlx4/eq.c
@@ -233,23 +233,6 @@ static void mlx4_slave_event(struct mlx4_dev *dev, int slave,
 	slave_event(dev, slave, eqe);
 }
 
-#if defined(CONFIG_SMP)
-static void mlx4_set_eq_affinity_hint(struct mlx4_priv *priv, int vec)
-{
-	int hint_err;
-	struct mlx4_dev *dev = &priv->dev;
-	struct mlx4_eq *eq = &priv->eq_table.eq[vec];
-
-	if (!cpumask_available(eq->affinity_mask) ||
-	    cpumask_empty(eq->affinity_mask))
-		return;
-
-	hint_err = irq_update_affinity_hint(eq->irq, eq->affinity_mask);
-	if (hint_err)
-		mlx4_warn(dev, "irq_update_affinity_hint failed, err %d\n", hint_err);
-}
-#endif
-
 int mlx4_gen_pkey_eqe(struct mlx4_dev *dev, int slave, u8 port)
 {
 	struct mlx4_eqe eqe;
@@ -1123,8 +1106,6 @@ static void mlx4_free_irqs(struct mlx4_dev *dev)
 
 	for (i = 0; i < dev->caps.num_comp_vectors + 1; ++i)
 		if (eq_table->eq[i].have_irq) {
-			free_cpumask_var(eq_table->eq[i].affinity_mask);
-			irq_update_affinity_hint(eq_table->eq[i].irq, NULL);
 			free_irq(eq_table->eq[i].irq, eq_table->eq + i);
 			eq_table->eq[i].have_irq = 0;
 		}
@@ -1516,9 +1497,6 @@ int mlx4_assign_eq(struct mlx4_dev *dev, u8 port, int *vector)
 			clear_bit(*prequested_vector, priv->msix_ctl.pool_bm);
 			*prequested_vector = -1;
 		} else {
-#if defined(CONFIG_SMP)
-			mlx4_set_eq_affinity_hint(priv, *prequested_vector);
-#endif
 			eq_set_ci(&priv->eq_table.eq[*prequested_vector], 1);
 			priv->eq_table.eq[*prequested_vector].have_irq = 1;
 		}
diff --git a/drivers/net/ethernet/mellanox/mlx4/main.c b/drivers/net/ethernet/mellanox/mlx4/main.c
index febeadfdd5a5..5f88c297332f 100644
--- a/drivers/net/ethernet/mellanox/mlx4/main.c
+++ b/drivers/net/ethernet/mellanox/mlx4/main.c
@@ -2923,36 +2923,6 @@ static int mlx4_setup_hca(struct mlx4_dev *dev)
 	return err;
 }
 
-static int mlx4_init_affinity_hint(struct mlx4_dev *dev, int port, int eqn)
-{
-	int requested_cpu = 0;
-	struct mlx4_priv *priv = mlx4_priv(dev);
-	struct mlx4_eq *eq;
-	int off = 0;
-	int i;
-
-	if (eqn > dev->caps.num_comp_vectors)
-		return -EINVAL;
-
-	for (i = 1; i < port; i++)
-		off += mlx4_get_eqs_per_port(dev, i);
-
-	requested_cpu = eqn - off - !!(eqn > MLX4_EQ_ASYNC);
-
-	/* Meaning EQs are shared, and this call comes from the second port */
-	if (requested_cpu < 0)
-		return 0;
-
-	eq = &priv->eq_table.eq[eqn];
-
-	if (!zalloc_cpumask_var(&eq->affinity_mask, GFP_KERNEL))
-		return -ENOMEM;
-
-	cpumask_set_cpu(requested_cpu, eq->affinity_mask);
-
-	return 0;
-}
-
 static void mlx4_enable_msi_x(struct mlx4_dev *dev)
 {
 	struct mlx4_priv *priv = mlx4_priv(dev);
@@ -2997,19 +2967,13 @@ static void mlx4_enable_msi_x(struct mlx4_dev *dev)
 			priv->eq_table.eq[i].irq =
 				entries[i + 1 - !!(i > MLX4_EQ_ASYNC)].vector;
 
-			if (MLX4_IS_LEGACY_EQ_MODE(dev->caps)) {
+			if (MLX4_IS_LEGACY_EQ_MODE(dev->caps))
 				bitmap_fill(priv->eq_table.eq[i].actv_ports.ports,
 					    dev->caps.num_ports);
-				/* We don't set affinity hint when there
-				 * aren't enough EQs
-				 */
-			} else {
+			else
 				set_bit(port,
 					priv->eq_table.eq[i].actv_ports.ports);
-				if (mlx4_init_affinity_hint(dev, port + 1, i))
-					mlx4_warn(dev, "Couldn't init hint cpumask for EQ %d\n",
-						  i);
-			}
+
 			/* We divide the Eqs evenly between the two ports.
 			 * (dev->caps.num_comp_vectors / dev->caps.num_ports)
 			 * refers to the number of Eqs per port
diff --git a/drivers/net/ethernet/mellanox/mlx4/mlx4.h b/drivers/net/ethernet/mellanox/mlx4/mlx4.h
index d7d856d1758a..66b1ebfd5816 100644
--- a/drivers/net/ethernet/mellanox/mlx4/mlx4.h
+++ b/drivers/net/ethernet/mellanox/mlx4/mlx4.h
@@ -403,7 +403,6 @@ struct mlx4_eq {
 	struct mlx4_eq_tasklet	tasklet_ctx;
 	struct mlx4_active_ports actv_ports;
 	u32			ref_count;
-	cpumask_var_t		affinity_mask;
 };
 
 struct mlx4_slave_eqe {
diff --git a/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h b/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h
index 28b70dcc652e..41594dd00636 100644
--- a/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h
+++ b/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h
@@ -357,7 +357,6 @@ struct mlx4_en_rx_ring {
 	unsigned long dropped;
 	unsigned long alloc_fail;
 	int hwtstamp_rx_filter;
-	cpumask_var_t affinity_mask;
 	struct xdp_rxq_info xdp_rxq;
 };
 
-- 
2.43.0

