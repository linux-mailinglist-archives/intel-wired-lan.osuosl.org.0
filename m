Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F3CA08381
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 00:31:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDB49834C6;
	Thu,  9 Jan 2025 23:31:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HgI_xtO1lxg1; Thu,  9 Jan 2025 23:31:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4CC2833DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736465492;
	bh=CHbkGhLV5rIe5mM1vgxQ4dBC2kh681lRN/g/WMnTgN4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8lWwx0//SG4VSOaI5BBy6a8kkVAXg2oA8Z2/9dspkdtYZjspYQZpXRU92rWcW+sFx
	 Esp8eANflu659i8wFyv2sULrRy3mSwd3KMzS005vzkCFBSiIE8mAEh/LTlPeDsPWqC
	 kqFOPgGcR88r6SCkAMkP/fXmBvfiBUNVwr01A3ayhJ+Pw7YB/SEoqX57rg2Hma/VgI
	 wg8ZPyo6OGtv7X1+VujnMNbqJT7uy3dqUHG0kxObfPNI0JdHV/5NbmcPjcuvSM3yQ3
	 r9qMdRGU5lO13TJoYSy37Prt/zOEpSYjj+uMRo/jMKQ6HRBqNXHV0dpNxuO5m/z5i6
	 atsbJQGFDaoqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4CC2833DB;
	Thu,  9 Jan 2025 23:31:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A7B5C942
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9361E40FA2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5nzxgzsQm6Bv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 23:31:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 113DC40F93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 113DC40F93
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 113DC40F93
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:28 +0000 (UTC)
X-CSE-ConnectionGUID: yWB7EoMLRFOZgbfmyQtylA==
X-CSE-MsgGUID: W7PkEfFlRXmwdk3lZlHjUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="47245116"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="47245116"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:29 -0800
X-CSE-ConnectionGUID: N/d5o82TTh+0CHiP1KMmNA==
X-CSE-MsgGUID: 3Vz8E4HKTvarnTfYKhAz8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="134398965"
Received: from kinlongk-mobl1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.128])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:22 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Thu,  9 Jan 2025 16:31:02 -0700
Message-ID: <20250109233107.17519-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109233107.17519-1-ahmed.zaki@intel.com>
References: <20250109233107.17519-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736465490; x=1768001490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HUIY42m5q+KCXfrwiEnxCTkCP8wFzbx1YreFvGltKx4=;
 b=dvSL6gzcoDNI/QIQgKISPqcS9iH7Wl4YjHIL6DCsKuoJTvFmXVgextyF
 iLvh98l9xr9KQWrWeFj+dw0ckDwQXpMaLewzAAxGBOJ8Rb4MEbLmyPNrU
 21i9/jjqpSLVBWV7Pf7s1D7BOa/4DLQSsywLd/b75ebXB6/hQhRhytiDJ
 N3DRrXt4RB5CsKtAYxiTweuXNP6T8xLAgcDKU6moptbg6fwLeDQ0H/SjI
 klS9Q8kyJiwUe24V1E63/ZM5HlPXNRChLtWgteoJrAN7YLDrLk7zyjk3n
 z1DtsaX//K2X4jIg+YXUK19mdZV39yTMC7IEtz6GJcQDBdJM/JJjHfw01
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dvSL6gzc
Subject: [Intel-wired-lan] [PATCH net-next v4 1/6] net: move ARFS rmap
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
index 1812564b5204..acf20191e114 100644
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
index 26f0c2fbb8aa..8373e4cf56d8 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6730,6 +6730,46 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
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
@@ -11406,6 +11446,10 @@ void free_netdev(struct net_device *dev)
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

