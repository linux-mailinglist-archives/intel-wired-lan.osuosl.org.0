Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7F2A0BE81
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2025 18:11:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4B4783926;
	Mon, 13 Jan 2025 17:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sJKsdRsks_dk; Mon, 13 Jan 2025 17:11:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB9B883841
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736788305;
	bh=n7RB/ilX3k4fNS4IsYuz5X1PED/kLJxOuUtVaZ7ES2M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ePeMOCZSn2T/93iG9NWymrtD1Ub8J9f55St7iFAPEUwj6VjE1CwePxDisvT/DkH8v
	 eildEbhmgWubTxoQAWUSMxJAL7asete+56O9t+BFJ8KdmPJ5J1S9JKVXmFB8qY04xp
	 KxoIQTh022F9iOLu8G+9z+6L7l0EZyA9mhrEoEst188SwI68ICh+Bbv6AU21H7CXXW
	 BNLIzA29h9dWe7cDnODEDLKQEm4gBVfWBazaou9+4owrjEsAtOv/2St8huJ0UiGWEZ
	 GKlJ16VUfP7dxa4YFqVri3h/PnLfZFhLKaPvdyL0RMXUAv/anTqwcdGZKNPYCT/c0K
	 NVdUtviVPmcsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB9B883841;
	Mon, 13 Jan 2025 17:11:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B266F940
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A106F605AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZsdvsIkUgK9r for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2025 17:11:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C794C607C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C794C607C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C794C607C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:42 +0000 (UTC)
X-CSE-ConnectionGUID: QODMMitmQf2gRM0akHNZrQ==
X-CSE-MsgGUID: 1cl4mFSjRnqX3GQYocIU0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36748962"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36748962"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:43 -0800
X-CSE-ConnectionGUID: j9wAMdoARHqr9Cm1dLyGLQ==
X-CSE-MsgGUID: KOK3/k+wRbqS4LkOcL1cPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104499817"
Received: from jdoman-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.26])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:35 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 pavan.chebbi@broadcom.com, yury.norov@gmail.com, darinzon@amazon.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 13 Jan 2025 10:10:42 -0700
Message-ID: <20250113171042.158123-7-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250113171042.158123-1-ahmed.zaki@intel.com>
References: <20250113171042.158123-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736788303; x=1768324303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dYpk1spwEtlOomeBT9dQvdbxt/f+PnNZTwRIWbezKxM=;
 b=foG0ymGaV+aK0IAXJt2NnzMHhVnqikC8HjJenapHUTjqksB1GZngVbyn
 rxpmgZ8kAP+TccXb+mSEfqrRKdEsPbuGdCkDokCmKYjW802sFrELy2EjK
 5Q33r4lsTn1zXHl6iyp+WNkTS9loiWbY1+glzrpdQhtImdGg9miFj4sZg
 +AaBu/7vj8s8KxxyALDCKJDA2hJgooxt2xSFmmHigoDJIl8oNgTA2mAeW
 CpY2nDOX8U+kVY7nnH2XV0ptMmLU5gCELSS+DxfuRamzkv1vxL90W8bXC
 bn3A3pqlPHfJcmI8SPJSOF5B92xSx9GAgQkVJMH4hojHh9szRPiWLlLwE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=foG0ymGa
Subject: [Intel-wired-lan] [PATCH net-next v5 6/6] idpf: use napi's irq
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
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |  1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 22 +++++++--------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++----
 3 files changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index b4fbb99bfad2..d54be068f53f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -814,6 +814,7 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 	netdev->hw_features |= dflt_features | offloads;
 	netdev->hw_enc_features |= dflt_features | offloads;
 	idpf_set_ethtool_ops(netdev);
+	netif_enable_irq_affinity(netdev);
 	SET_NETDEV_DEV(netdev, &adapter->pdev->dev);
 
 	/* carrier off on init to avoid Tx hangs */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 2fa9c36e33c9..f6b5b45a061c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3554,8 +3554,6 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 		q_vector->tx = NULL;
 		kfree(q_vector->rx);
 		q_vector->rx = NULL;
-
-		free_cpumask_var(q_vector->affinity_mask);
 	}
 
 	kfree(vport->q_vectors);
@@ -3582,8 +3580,6 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 		vidx = vport->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
 
-		/* clear the affinity_mask in the IRQ descriptor */
-		irq_set_affinity_hint(irq_num, NULL);
 		kfree(free_irq(irq_num, q_vector));
 	}
 }
@@ -3771,8 +3767,6 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 				   "Request_irq failed, error: %d\n", err);
 			goto free_q_irqs;
 		}
-		/* assign the mask for this irq */
-		irq_set_affinity_hint(irq_num, q_vector->affinity_mask);
 	}
 
 	return 0;
@@ -4184,7 +4178,8 @@ static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
 static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
 {
 	int (*napi_poll)(struct napi_struct *napi, int budget);
-	u16 v_idx;
+	u16 v_idx, qv_idx;
+	int irq_num;
 
 	if (idpf_is_queue_model_split(vport->txq_model))
 		napi_poll = idpf_vport_splitq_napi_poll;
@@ -4193,12 +4188,12 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
 
 	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
+		qv_idx = vport->q_vector_idxs[v_idx];
+		irq_num = vport->adapter->msix_entries[qv_idx].vector;
 
-		netif_napi_add(vport->netdev, &q_vector->napi, napi_poll);
-
-		/* only set affinity_mask if the CPU is online */
-		if (cpu_online(v_idx))
-			cpumask_set_cpu(v_idx, q_vector->affinity_mask);
+		netif_napi_add_config(vport->netdev, &q_vector->napi,
+				      napi_poll, v_idx);
+		netif_napi_set_irq(&q_vector->napi, irq_num);
 	}
 }
 
@@ -4242,9 +4237,6 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 		q_vector->rx_intr_mode = IDPF_ITR_DYNAMIC;
 		q_vector->rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
 
-		if (!zalloc_cpumask_var(&q_vector->affinity_mask, GFP_KERNEL))
-			goto error;
-
 		q_vector->tx = kcalloc(txqs_per_vector, sizeof(*q_vector->tx),
 				       GFP_KERNEL);
 		if (!q_vector->tx)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 0f71a6f5557b..13251f63c7c3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -401,7 +401,6 @@ struct idpf_intr_reg {
  * @rx_intr_mode: Dynamic ITR or not
  * @rx_itr_idx: RX ITR index
  * @v_idx: Vector index
- * @affinity_mask: CPU affinity mask
  */
 struct idpf_q_vector {
 	__cacheline_group_begin_aligned(read_mostly);
@@ -438,13 +437,12 @@ struct idpf_q_vector {
 	__cacheline_group_begin_aligned(cold);
 	u16 v_idx;
 
-	cpumask_var_t affinity_mask;
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_q_vector, 120,
 			    24 + sizeof(struct napi_struct) +
 			    2 * sizeof(struct dim),
-			    8 + sizeof(cpumask_var_t));
+			    8);
 
 struct idpf_rx_queue_stats {
 	u64_stats_t packets;
@@ -940,7 +938,7 @@ static inline int idpf_q_vector_to_mem(const struct idpf_q_vector *q_vector)
 	if (!q_vector)
 		return NUMA_NO_NODE;
 
-	cpu = cpumask_first(q_vector->affinity_mask);
+	cpu = cpumask_first(&q_vector->napi.config->affinity_mask);
 
 	return cpu < nr_cpu_ids ? cpu_to_mem(cpu) : NUMA_NO_NODE;
 }
-- 
2.43.0

