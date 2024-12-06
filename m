Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 888149E61EE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2024 01:12:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4503D60BE4;
	Fri,  6 Dec 2024 00:12:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z5vECnDjFAvV; Fri,  6 Dec 2024 00:12:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5CA160C17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733443946;
	bh=/h7pJow6Gg6btoudWjju39GhY6Fs8Fyv9u/hpRgbLvI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AmZjJVOqIoL1h9IpamcjZR9JAo/b6NBEsVKXMn6doeZ619Vx6WqHaXa618V41sk6r
	 YjnnkK3hovOSJFF0w4CV6dWEybH/yN6Mb6eNgZAE2XT0pMQlZwhRQ3g01dQKOtPjhX
	 XIijrGMN0zyKCpuOM4gbZkDDuBW+AamNTb1a1224dywjeWkLBB8cq8HXZ943u2pwZW
	 CBc9xi3P0AgmQlzFfH1Uu0BtFVuPVjtiCGrGHkPtaKF74Q5aMk5y2GGSNYfppIlDjF
	 RkmvgO8InDmidx6zQ2NF281VqDHlk3OZ01DW0ouF2xtBRLzzEZl12Reb3a60WcTsjH
	 uzLIglHhHYImw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5CA160C17;
	Fri,  6 Dec 2024 00:12:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 794F7AE8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 00:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56FE54032C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 00:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qP_R3-1PKidx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2024 00:12:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F955401AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F955401AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F955401AD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 00:12:22 +0000 (UTC)
X-CSE-ConnectionGUID: C5eNWh+YQV29k3h5LVHWcQ==
X-CSE-MsgGUID: Sm2TMGk3QgiEYrFBXfRy2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="45162758"
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="45162758"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 16:12:22 -0800
X-CSE-ConnectionGUID: /2nalrKPQ0Spz9mYDjF9/g==
X-CSE-MsgGUID: 63pIbFhbQLqtuIwvi6+GBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="98694936"
Received: from ibganev-mobl.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.131])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 16:12:20 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: Ahmed Zaki <ahmed.zaki@intel.com>,
	intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Dec 2024 17:12:09 -0700
Message-ID: <20241206001209.213168-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241206001209.213168-1-ahmed.zaki@intel.com>
References: <20241206001209.213168-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733443943; x=1764979943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7ER5lWILzNrhbb1zBqrLw42qLhuTtYo0d5eiZ2qDScs=;
 b=c1zmnv7NYJhMsDHHtPOLy9sX5H3a214QUif0lOX2DmBhlYsbCbtLV5zX
 YK1hWxo6dHenQ4SPIBEh1xpS8JVMtZnqJA2TweK9PZjFjdZ2lZ/sWfEZA
 l9N2QbO48csrUCyzFlhKn9yGNzhP8F0F0N2sUgctojAxSAA9DUmlSMuX4
 To98U6PsvW69W0gQ8Z10Zy2PvFQGpVzq8AyOIi/soO96Fwu1I24leQRTO
 MGDG3VFeIjjSrH/2LJtjrM7lwkpYTQ3zrzdZgCTQGaNS6BqURMlp1Ibqi
 sJ/mg50R5b8maO85xPREFUNoPdQLP+Pliyg/aBfQ3AxPtq4rP3/Sx/FpC
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c1zmnv7N
Subject: [Intel-wired-lan] [PATCH RFC net-next 2/2] idpf: use napi's irq
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

Cc: intel-wired-lan@lists.osuosl.org
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 18 ++++--------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++----
 2 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index da2a5becf62f..ffa75a98cdc6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3553,8 +3553,6 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 		q_vector->tx = NULL;
 		kfree(q_vector->rx);
 		q_vector->rx = NULL;
-
-		free_cpumask_var(q_vector->affinity_mask);
 	}
 
 	kfree(vport->q_vectors);
@@ -3581,8 +3579,6 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 		vidx = vport->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
 
-		/* clear the affinity_mask in the IRQ descriptor */
-		irq_set_affinity_hint(irq_num, NULL);
 		kfree(free_irq(irq_num, q_vector));
 	}
 }
@@ -3761,8 +3757,6 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 				   "Request_irq failed, error: %d\n", err);
 			goto free_q_irqs;
 		}
-		/* assign the mask for this irq */
-		irq_set_affinity_hint(irq_num, q_vector->affinity_mask);
 	}
 
 	return 0;
@@ -4183,12 +4177,11 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
 
 	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
+		int irq_num = vport->adapter->msix_entries[v_idx].vector;
 
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
 
@@ -4232,9 +4225,6 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 		q_vector->rx_intr_mode = IDPF_ITR_DYNAMIC;
 		q_vector->rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
 
-		if (!zalloc_cpumask_var(&q_vector->affinity_mask, GFP_KERNEL))
-			goto error;
-
 		q_vector->tx = kcalloc(txqs_per_vector, sizeof(*q_vector->tx),
 				       GFP_KERNEL);
 		if (!q_vector->tx)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 9c1fe84108ed..5efb3402b378 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -397,7 +397,6 @@ struct idpf_intr_reg {
  * @rx_intr_mode: Dynamic ITR or not
  * @rx_itr_idx: RX ITR index
  * @v_idx: Vector index
- * @affinity_mask: CPU affinity mask
  */
 struct idpf_q_vector {
 	__cacheline_group_begin_aligned(read_mostly);
@@ -434,13 +433,12 @@ struct idpf_q_vector {
 	__cacheline_group_begin_aligned(cold);
 	u16 v_idx;
 
-	cpumask_var_t affinity_mask;
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_q_vector, 112,
 			    24 + sizeof(struct napi_struct) +
 			    2 * sizeof(struct dim),
-			    8 + sizeof(cpumask_var_t));
+			    8);
 
 struct idpf_rx_queue_stats {
 	u64_stats_t packets;
@@ -934,7 +932,7 @@ static inline int idpf_q_vector_to_mem(const struct idpf_q_vector *q_vector)
 	if (!q_vector)
 		return NUMA_NO_NODE;
 
-	cpu = cpumask_first(q_vector->affinity_mask);
+	cpu = cpumask_first(&q_vector->napi.config->affinity_mask);
 
 	return cpu < nr_cpu_ids ? cpu_to_mem(cpu) : NUMA_NO_NODE;
 }
-- 
2.47.0

