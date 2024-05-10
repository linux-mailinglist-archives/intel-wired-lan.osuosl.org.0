Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCCD8C27AD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 751DC8457C;
	Fri, 10 May 2024 15:27:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQvc0TQjC1JG; Fri, 10 May 2024 15:27:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C7DE845EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354855;
	bh=sk8/WNPWp/+LZ43oYth0u+vYA/novl1Ae8BWYoniQgE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ONiBUpB+U81dJhyVWuoESFtqNUnuzouKVIHrq7feDaBscu+uayHjbOER4u2yoXAUb
	 /L24vlUztpLI8D4wpIypWe8GVEH7gFg3sfKNEwLPH/UzXOsnz9cRRN9Sk5gG1UtP6v
	 t4XSH/nmpx6ItoKEiCifD9X8+R2TnwnFukUjHE7RVhCf/9oIDHsJIkV0PHOdmHMDCY
	 upEBTG23ZqFLRiwSoj7nZ7fa5n6jutm7GAi9JSnbWfmCkEdIxEn1CJHtHxe6RH1lV6
	 CKfNHzYlEMAqvBRLY4Ze6cON9cwa1AF9lnuiL+YDrE6if5Yv+o69GRTXZup67Tay26
	 G8eU3HQeBECsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C7DE845EB;
	Fri, 10 May 2024 15:27:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D43F1BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 098D642048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wuyuNM8_5pBW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E504442451
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E504442451
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E504442451
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:31 +0000 (UTC)
X-CSE-ConnectionGUID: 5ECR004JRK2TmnehBJvViQ==
X-CSE-MsgGUID: Kh7ldRbqQ9K5uJPnAeYlpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152590"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152590"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:32 -0700
X-CSE-ConnectionGUID: 5OjfPU3uT+GseBQ3EZKkmQ==
X-CSE-MsgGUID: xHfSdIytQPeJCZShT2K+0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208262"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:29 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:12 +0200
Message-ID: <20240510152620.2227312-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354852; x=1746890852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IicC0xPQgpcazt740r57XpVtwR2n0DTaEXjZkC02oQc=;
 b=HJKCzs4H8NIp6wSnLqCndtPnpKe18qoxO0mSljFhIrpPP/kB6Qw/f/md
 LjI0F/85sedMa3Q7zhwnVUvZRQia0VpMAFEXMUpapKZOudHtmns97xt0d
 eEzgEhqd59hfeuOnsNOtFq3HbqhNagnhQSAVGhd7OAw0jpYqNWydM/q6K
 6OMqS9sCWL13v4GDi/lcDlBrsiEhCeNzPuxpTg1oIcya27/I37CQPmoOy
 mDQsL8Q6lgZh+IgL1XKTqFMBZaebYr2XYSbenvzTA4rfobAyIOMWgUv3a
 FCSzVbxmATIGgBM162MESPijzSHppe8JKB64jlEhhhyfuLYXWGulaIfRu
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HJKCzs4H
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 04/12] idpf: avoid bloating
 &idpf_q_vector with big %NR_CPUS
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With CONFIG_MAXSMP, sizeof(cpumask_t) is 1 Kb. The queue vector
structure has them embedded, which means 1 additional Kb of not
really hotpath data.
We have cpumask_var_t, which is either an embedded cpumask or a pointer
for allocating it dynamically when it's big. Use it instead of plain
cpumasks and put &idpf_q_vector on a good diet.
Also remove redundant pointer to the interrupt name from the structure.
request_irq() saves it and free_irq() returns it on deinit, so that you
can free the memory.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  7 +++----
 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 13 ++++++-------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 20 +++++++++++++-------
 3 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index fb645c6887b3..428b82b4de80 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -505,7 +505,6 @@ struct idpf_intr_reg {
 /**
  * struct idpf_q_vector
  * @vport: Vport back pointer
- * @affinity_mask: CPU affinity mask
  * @napi: napi handler
  * @v_idx: Vector index
  * @intr_reg: See struct idpf_intr_reg
@@ -526,11 +525,10 @@ struct idpf_intr_reg {
  * @num_bufq: Number of buffer queues
  * @bufq: Array of buffer queues to service
  * @total_events: Number of interrupts processed
- * @name: Queue vector name
+ * @affinity_mask: CPU affinity mask
  */
 struct idpf_q_vector {
 	struct idpf_vport *vport;
-	cpumask_t affinity_mask;
 	struct napi_struct napi;
 	u16 v_idx;
 	struct idpf_intr_reg intr_reg;
@@ -556,7 +554,8 @@ struct idpf_q_vector {
 	struct idpf_buf_queue **bufq;
 
 	u16 total_events;
-	char *name;
+
+	cpumask_var_t affinity_mask;
 };
 
 struct idpf_rx_queue_stats {
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 3e8b24430dd8..a8be09a89943 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -69,7 +69,7 @@ static void idpf_deinit_vector_stack(struct idpf_adapter *adapter)
 static void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter)
 {
 	clear_bit(IDPF_MB_INTR_MODE, adapter->flags);
-	free_irq(adapter->msix_entries[0].vector, adapter);
+	kfree(free_irq(adapter->msix_entries[0].vector, adapter));
 	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
 }
 
@@ -124,15 +124,14 @@ static void idpf_mb_irq_enable(struct idpf_adapter *adapter)
  */
 static int idpf_mb_intr_req_irq(struct idpf_adapter *adapter)
 {
-	struct idpf_q_vector *mb_vector = &adapter->mb_vector;
 	int irq_num, mb_vidx = 0, err;
+	char *name;
 
 	irq_num = adapter->msix_entries[mb_vidx].vector;
-	mb_vector->name = kasprintf(GFP_KERNEL, "%s-%s-%d",
-				    dev_driver_string(&adapter->pdev->dev),
-				    "Mailbox", mb_vidx);
-	err = request_irq(irq_num, adapter->irq_mb_handler, 0,
-			  mb_vector->name, adapter);
+	name = kasprintf(GFP_KERNEL, "%s-%s-%d",
+			 dev_driver_string(&adapter->pdev->dev),
+			 "Mailbox", mb_vidx);
+	err = request_irq(irq_num, adapter->irq_mb_handler, 0, name, adapter);
 	if (err) {
 		dev_err(&adapter->pdev->dev,
 			"IRQ request for mailbox failed, error: %d\n", err);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 211c403a4c98..500754795cc8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3613,6 +3613,8 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 		q_vector->tx = NULL;
 		kfree(q_vector->rx);
 		q_vector->rx = NULL;
+
+		free_cpumask_var(q_vector->affinity_mask);
 	}
 
 	/* Clean up the mapping of queues to vectors */
@@ -3661,7 +3663,7 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 
 		/* clear the affinity_mask in the IRQ descriptor */
 		irq_set_affinity_hint(irq_num, NULL);
-		free_irq(irq_num, q_vector);
+		kfree(free_irq(irq_num, q_vector));
 	}
 }
 
@@ -3812,6 +3814,7 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport, char *basename)
 
 	for (vector = 0; vector < vport->num_q_vectors; vector++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
+		char *name;
 
 		vidx = vport->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
@@ -3825,18 +3828,18 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport, char *basename)
 		else
 			continue;
 
-		q_vector->name = kasprintf(GFP_KERNEL, "%s-%s-%d",
-					   basename, vec_name, vidx);
+		name = kasprintf(GFP_KERNEL, "%s-%s-%d", basename, vec_name,
+				 vidx);
 
 		err = request_irq(irq_num, idpf_vport_intr_clean_queues, 0,
-				  q_vector->name, q_vector);
+				  name, q_vector);
 		if (err) {
 			netdev_err(vport->netdev,
 				   "Request_irq failed, error: %d\n", err);
 			goto free_q_irqs;
 		}
 		/* assign the mask for this irq */
-		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
+		irq_set_affinity_hint(irq_num, q_vector->affinity_mask);
 	}
 
 	return 0;
@@ -3845,7 +3848,7 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport, char *basename)
 	while (--vector >= 0) {
 		vidx = vport->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
-		free_irq(irq_num, &vport->q_vectors[vector]);
+		kfree(free_irq(irq_num, &vport->q_vectors[vector]));
 	}
 
 	return err;
@@ -4255,7 +4258,7 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
 
 		/* only set affinity_mask if the CPU is online */
 		if (cpu_online(v_idx))
-			cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
+			cpumask_set_cpu(v_idx, q_vector->affinity_mask);
 	}
 }
 
@@ -4299,6 +4302,9 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
 		q_vector->rx_intr_mode = IDPF_ITR_DYNAMIC;
 		q_vector->rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
 
+		if (!zalloc_cpumask_var(&q_vector->affinity_mask, GFP_KERNEL))
+			goto error;
+
 		q_vector->tx = kcalloc(txqs_per_vector, sizeof(*q_vector->tx),
 				       GFP_KERNEL);
 		if (!q_vector->tx)
-- 
2.45.0

