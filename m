Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1A59EA3A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 01:27:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70A3C607A4;
	Tue, 10 Dec 2024 00:27:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gQJLI0HVxP_w; Tue, 10 Dec 2024 00:27:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25D6B607A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733790423;
	bh=yv5WcwLcV0s3NtPU5kW2wH6gKAe15JiF2z/jbAusTBA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MMRP6y8mcjBiBMMdER6rFv+8cz8DuMdoYjDSqT/Zg7xqhM9Y40AkElec7dtxn/Rpi
	 bERHZeme0qVUz1apLfH+HIdTBhxi/PeCItut7Hz3C2zyHf67ONV05dSBmGmvNgWc5w
	 TGxowBdU53wJRiaxNfA1I0WF7eTowXkhaeO4X1nHQZNRoN6TqOfP2HWEnuO/meAyIE
	 ygWN1Nr8yMoiILU6Hv3rNSE3Sq5wuoD5j3aMd8zD6PhdfL9W7YWEzNIG3sWfIhQm5T
	 n4YTOYTXPH3Aaba4I9urgxlG2T7KBsMXMs1J46+4/s1euE07cvZ/XzTTXl0odP2hf2
	 qfnrbd4L2N/kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25D6B607A6;
	Tue, 10 Dec 2024 00:27:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FE06E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E56D440136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:27:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nxuixFl6cjrP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 00:27:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A6AD84037C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6AD84037C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6AD84037C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:27:00 +0000 (UTC)
X-CSE-ConnectionGUID: 9euy6WloSUW7f6gR63lR9g==
X-CSE-MsgGUID: uL8LqBq1TYKXJNF/SxnD7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44791446"
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="44791446"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:27:00 -0800
X-CSE-ConnectionGUID: kojgp+2rSUWs7mJKsYBOBw==
X-CSE-MsgGUID: AlKB5ofOR7e+clqYccpc6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="126132171"
Received: from cmdeoliv-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:56 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon,  9 Dec 2024 17:26:24 -0700
Message-ID: <20241210002626.366878-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241210002626.366878-1-ahmed.zaki@intel.com>
References: <20241210002626.366878-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733790421; x=1765326421;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cZluMBHMxfXuXws5+XKLXiDc24EWdrw95EH/IJu4kUI=;
 b=bYKl9sWan+zfy6k8hq5rUxN9y/U8tpLdecy5zo4Xof0bKdA9Deg51JM5
 nXd1cYrd77bp1NYhfbfvFsnoufxEoQObLi7rxGtCQ3DMiCchzV+meU+V3
 ikzer1hsmWU0C65B1vGnd/VGQKgqxudp93snK2kgn1EmoKxDW/n7yoODE
 c7wueomBOsYd9wrg+24GME88rNibsQW49z5VY0g7FcuVHGpIMQqKyRG66
 zfoOEwYalzJAx01DZn6Bnk95SjUUsk5sMoswbuilPQqx+ZgE130Pjed7/
 Tfjp6754yhIs2hyTd4NpLGCg+cDJGWhHio8sHQNSgdUE4AeCCZA9MbFbu
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bYKl9sWa
Subject: [Intel-wired-lan] [PATCH v1 net-next 4/6] mlx4: use napi's irq
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
index b8531283e3ac..8c5ad5e7348a 100644
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
+		netif_napi_set_irq(&cq->napi, irq, NAPIF_F_IRQ_AFFINITY);
 		napi_enable(&cq->napi);
 		netif_queue_set_napi(cq->dev, cq_idx, NETDEV_QUEUE_TYPE_TX, &cq->napi);
 		break;
@@ -158,7 +160,7 @@ int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
 		cq->mcq.comp = mlx4_en_rx_irq;
 		netif_napi_add_config(cq->dev, &cq->napi, mlx4_en_poll_rx_cq,
 				      cq_idx);
-		netif_napi_set_irq(&cq->napi, irq, 0);
+		netif_napi_set_irq(&cq->napi, irq, NAPIF_F_IRQ_AFFINITY);
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
index 9572a45f6143..0f7a1302def2 100644
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
2.47.0

