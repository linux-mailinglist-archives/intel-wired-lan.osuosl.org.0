Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8BBA0BE75
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2025 18:11:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61778838F2;
	Mon, 13 Jan 2025 17:11:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FKHkgupWHh-j; Mon, 13 Jan 2025 17:11:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1535983963
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736788269;
	bh=rWfkvBNLIPwFj/faCRvCC4jO0l6edSfhCv9yJZK4sxE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2qo8Io9HPnVYWkWL6ji2/vV7c8AESkGusyrVjDmRwvIyrgUg9c2lMtrvY4rSN63eJ
	 6GaqzOGTBGIkEsNLpqRriUUF+/mdpzKATE6KcME7GOqnmXkAsIXna4rE4Eux5+ru7R
	 mqXaD82m20BN+mgROoUV79FtW7lKg4hdcT8ZX1+dB8JcZDXhattRHhAhbA5qVZA5/M
	 iX15DhGw8tKK8uRq2TFIVN1WjWFhB2zZoyKmtPxAYHfKVxv3th9C7Z4rterhkbHNBY
	 hcw+cMqZNAz74uYZ9RR5BZwabGYQdlEaEEf3IVlu3aSaAIEt/Ls+358Xqyrfkipcf9
	 kM3fZ7g5XHEqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1535983963;
	Mon, 13 Jan 2025 17:11:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B915940
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C27660836
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I6kGO975862P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2025 17:11:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E11C6605AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E11C6605AA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E11C6605AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:05 +0000 (UTC)
X-CSE-ConnectionGUID: nmVeXydxSJGeHti/jipLjg==
X-CSE-MsgGUID: hsz7YG9cSj6r335JyiRUyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36748830"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36748830"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:06 -0800
X-CSE-ConnectionGUID: QaiieASxSAutyK2TeeYUWQ==
X-CSE-MsgGUID: oH+sbBnOSCO3bEku6Q0wHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104499579"
Received: from jdoman-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.26])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:10:58 -0800
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
Date: Mon, 13 Jan 2025 10:10:37 -0700
Message-ID: <20250113171042.158123-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250113171042.158123-1-ahmed.zaki@intel.com>
References: <20250113171042.158123-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736788266; x=1768324266;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rcZ0ck4l5Pprgcov1oyR56k4YeclF0lL8ujHvzj+9io=;
 b=ZBJsIfjkk19McjXw05UP5HGTrB7BQdhFPBa56mmrtBYKudNLKSqnqTrq
 vFejPv+WgXOc01Qt0vajZE9K5lo0zY8qdBBg6tBQqF/CcLS15nkazvFsE
 QDWKQkndy1KWtlr+mbKm9LbZ21Koll3BSZKqLwWgO2W0Sp/j6dd1tSZje
 o8sSLMmLJ69PFVxB76XKE1HhItC1n2+vOV1tKC1j45fU6juMDqnMzT/fu
 6oJHmgCg2nBwMJ95c07TGGA4cNWYGN7kzKLIzqQGb9BYME3bG2jAoymzI
 6P1T38dc9cDvI3B8SeEv3Uoqah2s3Hd/AB82xS82KZiFags4vOv6DGD+M
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZBJsIfjk
Subject: [Intel-wired-lan] [PATCH net-next v5 1/6] net: move ARFS rmap
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
 include/linux/netdevice.h                    | 15 +++++--
 net/core/dev.c                               | 44 ++++++++++++++++++++
 5 files changed, 63 insertions(+), 78 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
index c1295dfad0d0..a3fceaa83cd5 100644
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
+	return netif_enable_cpu_rmap(adapter->netdev, adapter->num_io_queues);
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
index 884d42db5554..1f50bc715038 100644
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
@@ -10861,7 +10860,7 @@ static int bnxt_set_real_num_queues(struct bnxt *bp)
 
 #ifdef CONFIG_RFS_ACCEL
 	if (bp->flags & BNXT_FLAG_RFS)
-		dev->rx_cpu_rmap = alloc_irq_cpu_rmap(bp->rx_nr_rings);
+		return netif_enable_cpu_rmap(dev, bp->rx_nr_rings);
 #endif
 
 	return rc;
@@ -11215,10 +11214,6 @@ static void bnxt_free_irq(struct bnxt *bp)
 	struct bnxt_irq *irq;
 	int i;
 
-#ifdef CONFIG_RFS_ACCEL
-	free_irq_cpu_rmap(bp->dev->rx_cpu_rmap);
-	bp->dev->rx_cpu_rmap = NULL;
-#endif
 	if (!bp->irq_tbl || !bp->bnapi)
 		return;
 
@@ -11241,11 +11236,8 @@ static void bnxt_free_irq(struct bnxt *bp)
 
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
@@ -11253,22 +11245,11 @@ static int bnxt_request_irq(struct bnxt *bp)
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
index aeb4a6cff171..7e95e9ee36dd 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1991,6 +1991,9 @@ enum netdev_reg_state {
  *
  *	@threaded:	napi threaded mode is enabled
  *
+ *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
+ *	                   Set by calling netif_enable_cpu_rmap().
+ *
  *	@see_all_hwtstamp_requests: device wants to see calls to
  *			ndo_hwtstamp_set() for all timestamp requests
  *			regardless of source, even if those aren't
@@ -2398,6 +2401,9 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+#ifdef CONFIG_RFS_ACCEL
+	bool			rx_cpu_rmap_auto;
+#endif
 
 	/* priv_flags_slow, ungrouped to save space */
 	unsigned long		see_all_hwtstamp_requests:1;
@@ -2671,10 +2677,7 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 			  enum netdev_queue_type type,
 			  struct napi_struct *napi);
 
-static inline void netif_napi_set_irq(struct napi_struct *napi, int irq)
-{
-	napi->irq = irq;
-}
+void netif_napi_set_irq(struct napi_struct *napi, int irq);
 
 /* Default NAPI poll() weight
  * Device drivers are strongly advised to not use bigger value
@@ -2765,6 +2768,10 @@ static inline void netif_napi_del(struct napi_struct *napi)
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
index 1a90ed8cc6cc..3ee7a514dca8 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6745,6 +6745,46 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
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
@@ -11421,6 +11461,10 @@ void free_netdev(struct net_device *dev)
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

