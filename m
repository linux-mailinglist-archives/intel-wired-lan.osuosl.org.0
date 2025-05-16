Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A11B9ABA5D9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 May 2025 00:19:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7EB041588;
	Fri, 16 May 2025 22:19:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lzcfnndkM-l9; Fri, 16 May 2025 22:19:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D4ED415C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747433969;
	bh=kgr8RiFbsPmcdNWCFgI3EFuvVgTwnEYIE/xPG4P9RuE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gV/dBhuFlKfmRiUj25veVoAF/m3+641i9OK+0wMCetGvrDeWcF66qSgEtyyTWw6hW
	 al4roHBDkNmImJpSYo3vZ4M0Lwf23nPW7TfZ+j9DmsjbZp2tw/mb0FIv+vCpcMx/fh
	 DxdQn4iVbDJjE8BYTqTsBU3Sf/pEZYRWPS8kjKRQoXLtqng+wPu8N2wP2pW1nZUll3
	 uyqC4ARnf36VkAONLwJK8xci7puvFsWRYcvfFilB5U54VuyyKhmOJpL21eT8+fgKtN
	 BX0JQxTN//RCFlpfPBxSREaX+9IXDXJYHLU8B+u2YJlJ6yWvy5GRd703eDbkk/HHvz
	 D/Chyj7eAaxNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D4ED415C7;
	Fri, 16 May 2025 22:19:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 320261137
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 22:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E9DC60B5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 22:19:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tWa76eV3gMXJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 22:19:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 510BD608DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 510BD608DB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 510BD608DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 22:19:25 +0000 (UTC)
X-CSE-ConnectionGUID: eKp79CkeRxCuVoD0X2ampQ==
X-CSE-MsgGUID: fpYqIoVrQPyfoiB4tDEA9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49573954"
X-IronPort-AV: E=Sophos;i="6.15,295,1739865600"; d="scan'208";a="49573954"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 15:19:25 -0700
X-CSE-ConnectionGUID: eNoAAW8IQ8WDwK110GyKPA==
X-CSE-MsgGUID: 081DfcKcSvOrDbG9DWyXQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,295,1739865600"; d="scan'208";a="139335290"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.245.236])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 15:19:22 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 16 May 2025 16:19:09 -0600
Message-ID: <20250516221909.187879-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747433966; x=1778969966;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UjsYggrPjf3ZVYJq6UGM0RiwYEa7YqodO2N4T1T7RDs=;
 b=Wpz7NBl+uzXmHbxG6vM5AWpXfOTUT1V7ehDz+wLgNpExFIv0/3CorfhQ
 N2QeH2kD9z9cV4fyBcVkceQvZcPg5Qz1aNk5Q8pwOU3unYaED802r8cSl
 ALTcOMrlZmKnmOJQyMwiv8yjiX0RiSeJuMOH4pUWce0u3GVtpUsRnS5ii
 Z5pJNiSz9BFjj21D957lnUgiHbca7rLnmm8A2BwmmYXqpzBi5i2uuUJB1
 Zf+H3EPkALkCZWarxBzjztnlfb8CCQBYDkYLWbHErIwDpGNu4A/jtw9WG
 GlycVMDkz3SxR1Au0NrCGWmzMIShl+xxSpNtnQFkUTspiFIB5pc1onJcF
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wpz7NBl+
Subject: [Intel-wired-lan] [PATCH iwl-next] iavf: convert to NAPI IRQ
 affinity API
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

Commit bd7c00605ee0 ("net: move aRFS rmap management and CPU affinity
to core") allows the drivers to delegate the IRQ affinity to the NAPI
instance. However, the driver needs to use a persistent NAPI config
and explicitly set/unset the NAPI<->IRQ association.

Convert to the new IRQ affinity API.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  2 -
 drivers/net/ethernet/intel/iavf/iavf_main.c | 58 ++++-----------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c |  3 +-
 3 files changed, 12 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index eb86cca38be2..a87e0c6d4017 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -114,8 +114,6 @@ struct iavf_q_vector {
 	u16 reg_idx;		/* register index of the interrupt */
 	char name[IFNAMSIZ + 15];
 	bool arm_wb_state;
-	cpumask_t affinity_mask;
-	struct irq_affinity_notify affinity_notify;
 };
 
 /* Helper macros to switch between ints/sec and what the register uses.
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index e4c28c1545a0..69054af4689a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -528,33 +528,6 @@ static void iavf_map_rings_to_vectors(struct iavf_adapter *adapter)
 	adapter->aq_required |= IAVF_FLAG_AQ_MAP_VECTORS;
 }
 
-/**
- * iavf_irq_affinity_notify - Callback for affinity changes
- * @notify: context as to what irq was changed
- * @mask: the new affinity mask
- *
- * This is a callback function used by the irq_set_affinity_notifier function
- * so that we may register to receive changes to the irq affinity masks.
- **/
-static void iavf_irq_affinity_notify(struct irq_affinity_notify *notify,
-				     const cpumask_t *mask)
-{
-	struct iavf_q_vector *q_vector =
-		container_of(notify, struct iavf_q_vector, affinity_notify);
-
-	cpumask_copy(&q_vector->affinity_mask, mask);
-}
-
-/**
- * iavf_irq_affinity_release - Callback for affinity notifier release
- * @ref: internal core kernel usage
- *
- * This is a callback function used by the irq_set_affinity_notifier function
- * to inform the current notification subscriber that they will no longer
- * receive notifications.
- **/
-static void iavf_irq_affinity_release(struct kref *ref) {}
-
 /**
  * iavf_request_traffic_irqs - Initialize MSI-X interrupts
  * @adapter: board private structure
@@ -569,7 +542,6 @@ iavf_request_traffic_irqs(struct iavf_adapter *adapter, char *basename)
 	unsigned int vector, q_vectors;
 	unsigned int rx_int_idx = 0, tx_int_idx = 0;
 	int irq_num, err;
-	int cpu;
 
 	iavf_irq_disable(adapter);
 	/* Decrement for Other and TCP Timer vectors */
@@ -604,17 +576,6 @@ iavf_request_traffic_irqs(struct iavf_adapter *adapter, char *basename)
 				 "Request_irq failed, error: %d\n", err);
 			goto free_queue_irqs;
 		}
-		/* register for affinity change notifications */
-		q_vector->affinity_notify.notify = iavf_irq_affinity_notify;
-		q_vector->affinity_notify.release =
-						   iavf_irq_affinity_release;
-		irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);
-		/* Spread the IRQ affinity hints across online CPUs. Note that
-		 * get_cpu_mask returns a mask with a permanent lifetime so
-		 * it's safe to use as a hint for irq_update_affinity_hint.
-		 */
-		cpu = cpumask_local_spread(q_vector->v_idx, -1);
-		irq_update_affinity_hint(irq_num, get_cpu_mask(cpu));
 	}
 
 	return 0;
@@ -623,8 +584,6 @@ iavf_request_traffic_irqs(struct iavf_adapter *adapter, char *basename)
 	while (vector) {
 		vector--;
 		irq_num = adapter->msix_entries[vector + NONQ_VECS].vector;
-		irq_set_affinity_notifier(irq_num, NULL);
-		irq_update_affinity_hint(irq_num, NULL);
 		free_irq(irq_num, &adapter->q_vectors[vector]);
 	}
 	return err;
@@ -666,6 +625,7 @@ static int iavf_request_misc_irq(struct iavf_adapter *adapter)
  **/
 static void iavf_free_traffic_irqs(struct iavf_adapter *adapter)
 {
+	struct iavf_q_vector *q_vector;
 	int vector, irq_num, q_vectors;
 
 	if (!adapter->msix_entries)
@@ -674,10 +634,10 @@ static void iavf_free_traffic_irqs(struct iavf_adapter *adapter)
 	q_vectors = adapter->num_msix_vectors - NONQ_VECS;
 
 	for (vector = 0; vector < q_vectors; vector++) {
+		q_vector = &adapter->q_vectors[vector];
+		netif_napi_set_irq_locked(&q_vector->napi, -1);
 		irq_num = adapter->msix_entries[vector + NONQ_VECS].vector;
-		irq_set_affinity_notifier(irq_num, NULL);
-		irq_update_affinity_hint(irq_num, NULL);
-		free_irq(irq_num, &adapter->q_vectors[vector]);
+		free_irq(irq_num, q_vector);
 	}
 }
 
@@ -1848,7 +1808,7 @@ static int iavf_init_rss(struct iavf_adapter *adapter)
  **/
 static int iavf_alloc_q_vectors(struct iavf_adapter *adapter)
 {
-	int q_idx = 0, num_q_vectors;
+	int q_idx = 0, num_q_vectors, irq_num;
 	struct iavf_q_vector *q_vector;
 
 	num_q_vectors = adapter->num_msix_vectors - NONQ_VECS;
@@ -1858,14 +1818,15 @@ static int iavf_alloc_q_vectors(struct iavf_adapter *adapter)
 		return -ENOMEM;
 
 	for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
+		irq_num = adapter->msix_entries[q_idx + NONQ_VECS].vector;
 		q_vector = &adapter->q_vectors[q_idx];
 		q_vector->adapter = adapter;
 		q_vector->vsi = &adapter->vsi;
 		q_vector->v_idx = q_idx;
 		q_vector->reg_idx = q_idx;
-		cpumask_copy(&q_vector->affinity_mask, cpu_possible_mask);
-		netif_napi_add_locked(adapter->netdev, &q_vector->napi,
-				      iavf_napi_poll);
+		netif_napi_add_config_locked(adapter->netdev, &q_vector->napi,
+					     iavf_napi_poll, q_idx);
+		netif_napi_set_irq_locked(&q_vector->napi, irq_num);
 	}
 
 	return 0;
@@ -5389,6 +5350,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_alloc_etherdev;
 	}
 
+	netif_set_affinity_auto(netdev);
 	SET_NETDEV_DEV(netdev, &pdev->dev);
 
 	pci_set_drvdata(pdev, netdev);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 35d353d38129..aaf70c625655 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1650,7 +1650,8 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
 		 * continue to poll, otherwise we must stop polling so the
 		 * interrupt can move to the correct cpu.
 		 */
-		if (!cpumask_test_cpu(cpu_id, &q_vector->affinity_mask)) {
+		if (!cpumask_test_cpu(cpu_id,
+				      &q_vector->napi.config->affinity_mask)) {
 			/* Tell napi that we are done polling */
 			napi_complete_done(napi, work_done);
 
-- 
2.43.0

