Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CB09EA3A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 01:27:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79EF8607B6;
	Tue, 10 Dec 2024 00:27:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8uSxIBDJNxB6; Tue, 10 Dec 2024 00:27:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B775A6068D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733790433;
	bh=SI8OuoNdXsedqqPVTmexmpnihSOPSPadfJPkU0UnH/U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=th1zBv1Tjy3R6wj14icFFPbqC1SA9lmR1m6auHnr2urz9q3nCf9Zw7/WBlKiAV2xa
	 ThqrfrXCseC97BYb3bvKuO2Y1vIvWmd/QA1pQ19t5cXLHiJSq4OyFP0+ku98a8EvLa
	 cgjAg6BQC98tswAlaGSGQ5Us+XAbCZkhsiIR5My+9HGumXYiJ3+O1LG0EAzYESp3r4
	 JnQD5OZ9YBUTOp4XRRazCDrD12d5qiG8cDB7Z/EVc8qBoqiulliLNW37L8oeU80Ghq
	 ZBmexsFvZ5M81UFU754Hhwan1bH1gNwfMiEKy5GrS0sLrV7HR8buOklAuPIrdBoTzJ
	 wlKcMfXoT8tdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B775A6068D;
	Tue, 10 Dec 2024 00:27:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EC46E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86435400FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xjT0TxIjkPYo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 00:27:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B1DC4037C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B1DC4037C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B1DC4037C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:27:09 +0000 (UTC)
X-CSE-ConnectionGUID: J7BYvvs4T5ufkWbo/BZ6Vg==
X-CSE-MsgGUID: VkWazR+uTWCScG4yLRzZyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44791495"
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="44791495"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:27:09 -0800
X-CSE-ConnectionGUID: hHMJ/R6ETC2/oXMGtREBEQ==
X-CSE-MsgGUID: XkBishJsQymgiLJEWxu6zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="126132217"
Received: from cmdeoliv-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:27:05 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon,  9 Dec 2024 17:26:26 -0700
Message-ID: <20241210002626.366878-7-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241210002626.366878-1-ahmed.zaki@intel.com>
References: <20241210002626.366878-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733790429; x=1765326429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zBJXid1Z33046nptfuWbci8YTlmNZLKhXC63xUgVO64=;
 b=ER+RKHmW6XW5Uic4HTztEol8qL/uTMcVUoKDE4x9rNKocdOGKZMU1U3v
 pjORLPjhbxcqGYfpcVar5vf4IE3Jrp1yk/pTtrgYuy2hBDp7etw/mVMUT
 LgO9Uf30NDvlM7kAL99tFJd98G9l4dj0e+9w/LxrdOU2bjCrcFkGhppo4
 v2v7X1itFB5kGFzoRZGdabTOSgiURRHTpsW42BgBG+XXmDHYJZdfdGJAj
 0kQq7Csy+GI3Hpcphp5csL3NNTIxHqCDkwiQMm2tp2AC6fq209R4NQa0L
 mYOMdTTZOcff7ulQdpjVPSn6QXg1l+fLsf+m1ZH/OOtn60nuz2wbrCzhI
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ER+RKHmW
Subject: [Intel-wired-lan] [PATCH v1 net-next 6/6] idpf: use napi's irq
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
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 19 +++++--------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++----
 2 files changed, 7 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index da2a5becf62f..6f119e0d4136 100644
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
@@ -4183,12 +4177,12 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
 
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
+		netif_napi_set_irq(&q_vector->napi,
+				   irq_num, NAPIF_F_IRQ_AFFINITY);
 	}
 }
 
@@ -4232,9 +4226,6 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
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

