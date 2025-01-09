Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B80A0838B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 00:32:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED31A408A8;
	Thu,  9 Jan 2025 23:32:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVjDTv_F8BcP; Thu,  9 Jan 2025 23:32:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF7B7408AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736465520;
	bh=n7RB/ilX3k4fNS4IsYuz5X1PED/kLJxOuUtVaZ7ES2M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J/FveILjQ/BaCNHz4Neq12lCiq5AY4/f0xtEAWEIDltCythGruDWD75P+dGOkpnNP
	 mznbhIkZ+GxVI/2SURcqHbFJJFfeJJ0ZqT3LiGaB33erxVvPRnJlJR2yQQIJlvIDLh
	 kPtGziM7mi0Brq0HQZwqCICprASGfT7WNJJ+ZY6A6/+LiDD3YzOzdJPdBzA8IGez2s
	 w8wQNC4Iy7K71OwaQLPc/sTKqyG0GDascCN7oDPLqvxdBXI0h6RrD1vRqWT0ZBaGgL
	 c5p+x56HLJOGzrqapHbmTGg9iBM7CeFsooXtp9ih8kDK5ohqoysPzfQncBMAxaQC+8
	 85iTpocxuaGLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF7B7408AA;
	Thu,  9 Jan 2025 23:31:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 43375942
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30CFE408A8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOyX1LmBs24H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 23:31:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18DAF408A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18DAF408A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18DAF408A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:55 +0000 (UTC)
X-CSE-ConnectionGUID: xBMbkvLxQ6qBK9/TlXbLGA==
X-CSE-MsgGUID: 9oaHser/Qq66l5QTG44vtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="47245209"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="47245209"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:56 -0800
X-CSE-ConnectionGUID: 1DwrzqNoRaSv/JaCYWsXJA==
X-CSE-MsgGUID: a4z/elitRB2CAnQjvKXTyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="134399147"
Received: from kinlongk-mobl1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.128])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:50 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Thu,  9 Jan 2025 16:31:07 -0700
Message-ID: <20250109233107.17519-7-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109233107.17519-1-ahmed.zaki@intel.com>
References: <20250109233107.17519-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736465517; x=1768001517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dYpk1spwEtlOomeBT9dQvdbxt/f+PnNZTwRIWbezKxM=;
 b=N20FTqpqL9GIbMWkKH2SdGkG6pHMVW9lVZe9c1S3iuyh36YBgpmEPH8Y
 Gi1P1tmpDpNFoEDIzGxLS06QsXq2S9wC9W4CkPhbC0V1urtC8U8CN8GMI
 MCBli8Oo+JL1U7lHLcsibojF53T9EmlOqJiFeQCdxXTnjG6FZd8bowMm7
 MIkNTNToPVLcnL6Xwqf8NsbaovtxaSCYGUyZuHwDlDWoVL1FKUhGlDiXh
 aFII8Hld2myFqhezm3nbKjabuMlGG+QMCOV3GvKg/yZnNAADDIbFHxipq
 ieBDByNvhzUxZLLKU7t+WT4HZdq350fa38bkQn2FMo28wcToNH1lsE38b
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N20FTqpq
Subject: [Intel-wired-lan] [PATCH net-next v4 6/6] idpf: use napi's irq
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

