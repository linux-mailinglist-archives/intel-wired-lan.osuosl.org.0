Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBD2A01155
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 01:43:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46DD2408E0;
	Sat,  4 Jan 2025 00:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MxTFEtfVOTCt; Sat,  4 Jan 2025 00:43:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 192C5408C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735951418;
	bh=s1dkbD3uY+PEWe/m/wEMiEco4KA9047RD0jQ+ygylsc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KRKSRDzyr2XUtzEbe4saSDD4CgafDnCaLkhEnQQl2+4EWzr0pWe11ogsiWcGueQdm
	 oHuhbrfwsJDqGBJKw9bcISrWddqbDcuM3IwsldT+5o5LHNDON3L7gDvbQVqKiMnGNS
	 1m4XEdNNIERTxDcke49PY/M14haNnMVUuxtLhPb+eXdVBJwRxSfZ7FB4POL+UXec34
	 9JcjViRlmzdnPH3/e48eNqoKlLQbuvmBllPW1FWAV3Fk/7rwxhhsKInxZxtlz9kZji
	 yXiSwMTD42SKjvXdS8TicYtp+ch/79KXBJRc9FxoIV42Wtxemvk4QDrb78HkkWVGJO
	 ymwZr28F4elhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 192C5408C1;
	Sat,  4 Jan 2025 00:43:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 64285AF0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F90580C0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w09DEzj7lEH6 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 00:43:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 59BF08125F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59BF08125F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59BF08125F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:35 +0000 (UTC)
X-CSE-ConnectionGUID: qBzvHngdSmOoDD9TBJNflA==
X-CSE-MsgGUID: ASou1+OCQuy4/nlCkMwXDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36075946"
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="36075946"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:35 -0800
X-CSE-ConnectionGUID: 8W8a9cB0R/mEargBaBLWFg==
X-CSE-MsgGUID: K3YQwC8TRiOk7nkJ5TBJAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="106879717"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.48])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:30 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  3 Jan 2025 17:43:09 -0700
Message-ID: <20250104004314.208259-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250104004314.208259-1-ahmed.zaki@intel.com>
References: <20250104004314.208259-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735951415; x=1767487415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IJiOpdFDvBLVS0X6kKsQQXiGJVV5wRhV8NK+UnR8eM4=;
 b=ItmujQGPgvY3qSc8iIp0UiVjyfyaf8Vne3xWAS9kWwkuiptgLoRk0FsC
 FLPUUUGmaO4SGtI6yBoaO1fbQCCxJYo4BCXWr8a7HisAahvbIAICs8SzM
 GMhGJje4H5SGqLgQQCdAP8RYYOHAtlVKnUNrgdUMvskoRTvjrV1c875pH
 LsOy+/Y8GsuT3FazS79pgi9Y7/eLtJI4p2Me3b15XybGvN970FbIP0QpH
 KpA9OgkSaKyPcEr7TbbmWZ/t0Uy0XU3D5OkFSzWe3q2FoWVqAaM9pAiCp
 a4Cd+1ispTBKRnzu/FFvFIDq7SukMjsZs3+c6+BK+7nWmuxiLehFxsOl3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ItmujQGP
Subject: [Intel-wired-lan] [PATCH net-next v3 1/6] net: move ARFS rmap
 management to core
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

Add a new netdev flag "rx_cpu_rmap_auto". Drivers supporting ARFS should
set the flag via netif_enable_cpu_rmap() and core will allocate and manage
the ARFS rmap. Freeing the rmap is also done by core when the netdev is
freed.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/amazon/ena/ena_netdev.c | 38 ++---------------
 drivers/net/ethernet/broadcom/bnxt/bnxt.c    | 27 ++----------
 drivers/net/ethernet/intel/ice/ice_arfs.c    | 17 +-------
 include/linux/netdevice.h                    | 12 ++++--
 net/core/dev.c                               | 44 ++++++++++++++++++++
 5 files changed, 60 insertions(+), 78 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
index c1295dfad0d0..ef1e1b37a60a 100644
--- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
+++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
@@ -5,9 +5,6 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
-#ifdef CONFIG_RFS_ACCEL
-#include <linux/cpu_rmap.h>
-#endif /* CONFIG_RFS_ACCEL */
 #include <linux/ethtool.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
@@ -165,25 +162,10 @@ int ena_xmit_common(struct ena_adapter *adapter,
 static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter)
 {
 #ifdef CONFIG_RFS_ACCEL
-	u32 i;
-	int rc;
-
-	adapter->netdev->rx_cpu_rmap = alloc_irq_cpu_rmap(adapter->num_io_queues);
-	if (!adapter->netdev->rx_cpu_rmap)
-		return -ENOMEM;
-	for (i = 0; i < adapter->num_io_queues; i++) {
-		int irq_idx = ENA_IO_IRQ_IDX(i);
-
-		rc = irq_cpu_rmap_add(adapter->netdev->rx_cpu_rmap,
-				      pci_irq_vector(adapter->pdev, irq_idx));
-		if (rc) {
-			free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
-			adapter->netdev->rx_cpu_rmap = NULL;
-			return rc;
-		}
-	}
-#endif /* CONFIG_RFS_ACCEL */
+	return netif_enable_cpu_rmap(adapter->netdev);
+#else
 	return 0;
+#endif /* CONFIG_RFS_ACCEL */
 }
 
 static void ena_init_io_rings_common(struct ena_adapter *adapter,
@@ -1742,13 +1724,6 @@ static void ena_free_io_irq(struct ena_adapter *adapter)
 	struct ena_irq *irq;
 	int i;
 
-#ifdef CONFIG_RFS_ACCEL
-	if (adapter->msix_vecs >= 1) {
-		free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
-		adapter->netdev->rx_cpu_rmap = NULL;
-	}
-#endif /* CONFIG_RFS_ACCEL */
-
 	for (i = ENA_IO_IRQ_FIRST_IDX; i < ENA_MAX_MSIX_VEC(io_queue_count); i++) {
 		irq = &adapter->irq_tbl[i];
 		irq_set_affinity_hint(irq->vector, NULL);
@@ -4131,13 +4106,6 @@ static void __ena_shutoff(struct pci_dev *pdev, bool shutdown)
 	ena_dev = adapter->ena_dev;
 	netdev = adapter->netdev;
 
-#ifdef CONFIG_RFS_ACCEL
-	if ((adapter->msix_vecs >= 1) && (netdev->rx_cpu_rmap)) {
-		free_irq_cpu_rmap(netdev->rx_cpu_rmap);
-		netdev->rx_cpu_rmap = NULL;
-	}
-
-#endif /* CONFIG_RFS_ACCEL */
 	/* Make sure timer and reset routine won't be called after
 	 * freeing device resources.
 	 */
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 46edea75e062..cc3ca3440b0a 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -49,7 +49,6 @@
 #include <linux/cache.h>
 #include <linux/log2.h>
 #include <linux/bitmap.h>
-#include <linux/cpu_rmap.h>
 #include <linux/cpumask.h>
 #include <net/pkt_cls.h>
 #include <net/page_pool/helpers.h>
@@ -10833,7 +10832,7 @@ static int bnxt_set_real_num_queues(struct bnxt *bp)
 
 #ifdef CONFIG_RFS_ACCEL
 	if (bp->flags & BNXT_FLAG_RFS)
-		dev->rx_cpu_rmap = alloc_irq_cpu_rmap(bp->rx_nr_rings);
+		return netif_enable_cpu_rmap(dev, bp->rx_nr_rings);
 #endif
 
 	return rc;
@@ -11187,10 +11186,6 @@ static void bnxt_free_irq(struct bnxt *bp)
 	struct bnxt_irq *irq;
 	int i;
 
-#ifdef CONFIG_RFS_ACCEL
-	free_irq_cpu_rmap(bp->dev->rx_cpu_rmap);
-	bp->dev->rx_cpu_rmap = NULL;
-#endif
 	if (!bp->irq_tbl || !bp->bnapi)
 		return;
 
@@ -11213,11 +11208,8 @@ static void bnxt_free_irq(struct bnxt *bp)
 
 static int bnxt_request_irq(struct bnxt *bp)
 {
-	int i, j, rc = 0;
+	int i, rc = 0;
 	unsigned long flags = 0;
-#ifdef CONFIG_RFS_ACCEL
-	struct cpu_rmap *rmap;
-#endif
 
 	rc = bnxt_setup_int_mode(bp);
 	if (rc) {
@@ -11225,22 +11217,11 @@ static int bnxt_request_irq(struct bnxt *bp)
 			   rc);
 		return rc;
 	}
-#ifdef CONFIG_RFS_ACCEL
-	rmap = bp->dev->rx_cpu_rmap;
-#endif
-	for (i = 0, j = 0; i < bp->cp_nr_rings; i++) {
+
+	for (i = 0; i < bp->cp_nr_rings; i++) {
 		int map_idx = bnxt_cp_num_to_irq_num(bp, i);
 		struct bnxt_irq *irq = &bp->irq_tbl[map_idx];
 
-#ifdef CONFIG_RFS_ACCEL
-		if (rmap && bp->bnapi[i]->rx_ring) {
-			rc = irq_cpu_rmap_add(rmap, irq->vector);
-			if (rc)
-				netdev_warn(bp->dev, "failed adding irq rmap for ring %d\n",
-					    j);
-			j++;
-		}
-#endif
 		rc = request_irq(irq->vector, irq->handler, flags, irq->name,
 				 bp->bnapi[i]);
 		if (rc)
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 7cee365cc7d1..3b1b892e6958 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -584,9 +584,6 @@ void ice_free_cpu_rx_rmap(struct ice_vsi *vsi)
 	netdev = vsi->netdev;
 	if (!netdev || !netdev->rx_cpu_rmap)
 		return;
-
-	free_irq_cpu_rmap(netdev->rx_cpu_rmap);
-	netdev->rx_cpu_rmap = NULL;
 }
 
 /**
@@ -597,7 +594,6 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 {
 	struct net_device *netdev;
 	struct ice_pf *pf;
-	int i;
 
 	if (!vsi || vsi->type != ICE_VSI_PF)
 		return 0;
@@ -610,18 +606,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 	netdev_dbg(netdev, "Setup CPU RMAP: vsi type 0x%x, ifname %s, q_vectors %d\n",
 		   vsi->type, netdev->name, vsi->num_q_vectors);
 
-	netdev->rx_cpu_rmap = alloc_irq_cpu_rmap(vsi->num_q_vectors);
-	if (unlikely(!netdev->rx_cpu_rmap))
-		return -EINVAL;
-
-	ice_for_each_q_vector(vsi, i)
-		if (irq_cpu_rmap_add(netdev->rx_cpu_rmap,
-				     vsi->q_vectors[i]->irq.virq)) {
-			ice_free_cpu_rx_rmap(vsi);
-			return -EINVAL;
-		}
-
-	return 0;
+	return netif_enable_cpu_rmap(netdev, vsi->num_q_vectors);
 }
 
 /**
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 2593019ad5b1..7adea7088e08 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -2398,6 +2398,9 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+#ifdef CONFIG_RFS_ACCEL
+	bool			rx_cpu_rmap_auto;
+#endif
 
 	/* priv_flags_slow, ungrouped to save space */
 	unsigned long		see_all_hwtstamp_requests:1;
@@ -2671,10 +2674,7 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 			  enum netdev_queue_type type,
 			  struct napi_struct *napi);
 
-static inline void netif_napi_set_irq(struct napi_struct *napi, int irq)
-{
-	napi->irq = irq;
-}
+void netif_napi_set_irq(struct napi_struct *napi, int irq);
 
 /* Default NAPI poll() weight
  * Device drivers are strongly advised to not use bigger value
@@ -2765,6 +2765,10 @@ static inline void netif_napi_del(struct napi_struct *napi)
 	synchronize_net();
 }
 
+#ifdef CONFIG_RFS_ACCEL
+int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs);
+
+#endif
 struct packet_type {
 	__be16			type;	/* This is really htons(ether_type). */
 	bool			ignore_outgoing;
diff --git a/net/core/dev.c b/net/core/dev.c
index c7f3dea3e0eb..4ebe8865833e 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6705,6 +6705,46 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 }
 EXPORT_SYMBOL(netif_queue_set_napi);
 
+#ifdef CONFIG_RFS_ACCEL
+static void netif_disable_cpu_rmap(struct net_device *dev)
+{
+	free_irq_cpu_rmap(dev->rx_cpu_rmap);
+	dev->rx_cpu_rmap = NULL;
+	dev->rx_cpu_rmap_auto = false;
+}
+
+int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
+{
+	dev->rx_cpu_rmap = alloc_irq_cpu_rmap(num_irqs);
+	if (!dev->rx_cpu_rmap)
+		return -ENOMEM;
+
+	dev->rx_cpu_rmap_auto = true;
+	return 0;
+}
+EXPORT_SYMBOL(netif_enable_cpu_rmap);
+#endif
+
+void netif_napi_set_irq(struct napi_struct *napi, int irq)
+{
+#ifdef CONFIG_RFS_ACCEL
+	int rc;
+#endif
+	napi->irq = irq;
+
+#ifdef CONFIG_RFS_ACCEL
+	if (napi->dev->rx_cpu_rmap && napi->dev->rx_cpu_rmap_auto) {
+		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
+		if (rc) {
+			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
+				    rc);
+			netif_disable_cpu_rmap(napi->dev);
+		}
+	}
+#endif
+}
+EXPORT_SYMBOL(netif_napi_set_irq);
+
 static void napi_restore_config(struct napi_struct *n)
 {
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
@@ -11347,6 +11387,10 @@ void free_netdev(struct net_device *dev)
 	/* Flush device addresses */
 	dev_addr_flush(dev);
 
+#ifdef CONFIG_RFS_ACCEL
+	if (dev->rx_cpu_rmap && dev->rx_cpu_rmap_auto)
+		netif_disable_cpu_rmap(dev);
+#endif
 	list_for_each_entry_safe(p, n, &dev->napi_list, dev_list)
 		netif_napi_del(p);
 
-- 
2.43.0

