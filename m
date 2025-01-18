Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5866CA15A47
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jan 2025 01:34:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E940984793;
	Sat, 18 Jan 2025 00:34:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NkVFkJGRFzXi; Sat, 18 Jan 2025 00:34:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7117984738
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737160439;
	bh=/f6Ig6LEYUSz6OjvsXyhUx9MjnO2HTZooKKlQYZmjCA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IQVkeIxDe5RBragaJdfbNAa2B/ktbNUgGsisKf+CHADCM0NSifCKopStjDlMW11Hp
	 tRfNPn5eorhODDp3us7ZR/1ObRhdc2ZRpzQSUyRVcuHhvSKz9rEgxRrOHLOkSbTk8l
	 5oeHMuk3ojY15kH94PNXTAOYafhM3TnuNnqzdD1uBfXmp4+LElPS1g+zHbnDxQqm07
	 rrCAgSBf/ZhubuDwu88qwwoKaDqQCWvJiY1bWD+s7n9dhBRWwwQFeK3lRdECtnj1ee
	 U/aI6TvzK3UevVEs5311qRT9c6jaFcABXZ7TZPcXKpbISDg8mHD9hHFE4kZjUF7BxW
	 JzvR6y+xjZnbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7117984738;
	Sat, 18 Jan 2025 00:33:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 99165B89
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86B84403C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:33:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YQ7kmySRwXC0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jan 2025 00:33:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C5B264028F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5B264028F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C5B264028F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:33:54 +0000 (UTC)
X-CSE-ConnectionGUID: xF7lE6VEQMCjOX9fuFQiCg==
X-CSE-MsgGUID: Zbaq6AlmTuiwZdJo19g0/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37762732"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="37762732"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 16:33:54 -0800
X-CSE-ConnectionGUID: veusRdfpR4arqu8yAIMocg==
X-CSE-MsgGUID: Zccvds6tTXWCzH0yTw0AhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106410873"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.139])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 16:33:49 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, David Arinzon <darinzon@amazon.com>
Date: Fri, 17 Jan 2025 17:33:31 -0700
Message-ID: <20250118003335.155379-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118003335.155379-1-ahmed.zaki@intel.com>
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737160435; x=1768696435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uZe/xqczdJHK78TeaoCxk1ym8Xcwi9A1eE8Tn09mh9g=;
 b=aCZkW9tqWU2UoZLfv/oUCmVl1vEZ2t40cBbTU3LLSEB/exce8YQT4/ln
 CFzTmW0jknJUqfayOOd0jDiwE1ngDbIE8RPRfzcME+lyOcW3jDNaCQIw0
 xT7XWvxvyQY7CiJjSuAd8Vmuy5azQHR2mYlmB9qLyYoMKGEHlBbRMLHGO
 4t4PAtq6Jh8P8u2bfnIIseLYj0KpKCsyBHa/7Zks/EOJM634CBeOFjQvM
 h4oMFNAAy8PoiwrTYHynWbE8+Nfc11jUZGwismyKUNadd/kZ7VwySH68Z
 tvAuoDCHeesjglu/M+1SPvlX9gxB8Lw6GTiZKk5t4MGQMNSDoyiJdYZXI
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aCZkW9tq
Subject: [Intel-wired-lan] [PATCH net-next v6 1/5] net: move ARFS rmap
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

For better IRQ affinity management, move the IRQ rmap notifier inside the
napi_struct. Consequently, add new notify.notify and notify.release
functions: netif_irq_cpu_rmap_notify() and netif_napi_affinity_release().

Acked-by: David Arinzon <darinzon@amazon.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/amazon/ena/ena_netdev.c |  43 +-----
 drivers/net/ethernet/broadcom/bnxt/bnxt.c    |  29 +---
 drivers/net/ethernet/intel/ice/ice_arfs.c    |  17 +--
 include/linux/cpu_rmap.h                     |   1 +
 include/linux/netdevice.h                    |  15 +-
 lib/cpu_rmap.c                               |   2 +-
 net/core/dev.c                               | 140 +++++++++++++++++++
 7 files changed, 159 insertions(+), 88 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
index c1295dfad0d0..6aab85a7c60a 100644
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
@@ -162,30 +159,6 @@ int ena_xmit_common(struct ena_adapter *adapter,
 	return 0;
 }
 
-static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter)
-{
-#ifdef CONFIG_RFS_ACCEL
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
-	return 0;
-}
-
 static void ena_init_io_rings_common(struct ena_adapter *adapter,
 				     struct ena_ring *ring, u16 qid)
 {
@@ -1596,7 +1569,7 @@ static int ena_enable_msix(struct ena_adapter *adapter)
 		adapter->num_io_queues = irq_cnt - ENA_ADMIN_MSIX_VEC;
 	}
 
-	if (ena_init_rx_cpu_rmap(adapter))
+	if (netif_enable_cpu_rmap(adapter->netdev, adapter->num_io_queues))
 		netif_warn(adapter, probe, adapter->netdev,
 			   "Failed to map IRQs to CPUs\n");
 
@@ -1742,13 +1715,6 @@ static void ena_free_io_irq(struct ena_adapter *adapter)
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
@@ -4131,13 +4097,6 @@ static void __ena_shutoff(struct pci_dev *pdev, bool shutdown)
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
index 748c9b1ea701..13bcb055df88 100644
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
@@ -10879,10 +10878,8 @@ static int bnxt_set_real_num_queues(struct bnxt *bp)
 	if (rc)
 		return rc;
 
-#ifdef CONFIG_RFS_ACCEL
 	if (bp->flags & BNXT_FLAG_RFS)
-		dev->rx_cpu_rmap = alloc_irq_cpu_rmap(bp->rx_nr_rings);
-#endif
+		return netif_enable_cpu_rmap(dev, bp->rx_nr_rings);
 
 	return rc;
 }
@@ -11235,10 +11232,6 @@ static void bnxt_free_irq(struct bnxt *bp)
 	struct bnxt_irq *irq;
 	int i;
 
-#ifdef CONFIG_RFS_ACCEL
-	free_irq_cpu_rmap(bp->dev->rx_cpu_rmap);
-	bp->dev->rx_cpu_rmap = NULL;
-#endif
 	if (!bp->irq_tbl || !bp->bnapi)
 		return;
 
@@ -11261,11 +11254,8 @@ static void bnxt_free_irq(struct bnxt *bp)
 
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
@@ -11273,22 +11263,11 @@ static int bnxt_request_irq(struct bnxt *bp)
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
diff --git a/include/linux/cpu_rmap.h b/include/linux/cpu_rmap.h
index 20b5729903d7..2fd7ba75362a 100644
--- a/include/linux/cpu_rmap.h
+++ b/include/linux/cpu_rmap.h
@@ -32,6 +32,7 @@ struct cpu_rmap {
 #define CPU_RMAP_DIST_INF 0xffff
 
 extern struct cpu_rmap *alloc_cpu_rmap(unsigned int size, gfp_t flags);
+extern void cpu_rmap_get(struct cpu_rmap *rmap);
 extern int cpu_rmap_put(struct cpu_rmap *rmap);
 
 extern int cpu_rmap_add(struct cpu_rmap *rmap, void *obj);
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 8308d9c75918..98259f19c627 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -393,6 +393,10 @@ struct napi_struct {
 	struct list_head	dev_list;
 	struct hlist_node	napi_hash_node;
 	int			irq;
+#ifdef CONFIG_RFS_ACCEL
+	struct irq_affinity_notify notify;
+	int			napi_rmap_idx;
+#endif
 	int			index;
 	struct napi_config	*config;
 };
@@ -1987,6 +1991,9 @@ enum netdev_reg_state {
  *
  *	@threaded:	napi threaded mode is enabled
  *
+ *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
+ *	                   Set by calling netif_enable_cpu_rmap().
+ *
  *	@see_all_hwtstamp_requests: device wants to see calls to
  *			ndo_hwtstamp_set() for all timestamp requests
  *			regardless of source, even if those aren't
@@ -2394,6 +2401,7 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+	bool			rx_cpu_rmap_auto;
 
 	/* priv_flags_slow, ungrouped to save space */
 	unsigned long		see_all_hwtstamp_requests:1;
@@ -2708,10 +2716,7 @@ static inline void netdev_assert_locked_or_invisible(struct net_device *dev)
 		netdev_assert_locked(dev);
 }
 
-static inline void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
-{
-	napi->irq = irq;
-}
+void netif_napi_set_irq_locked(struct napi_struct *napi, int irq);
 
 static inline void netif_napi_set_irq(struct napi_struct *napi, int irq)
 {
@@ -2849,6 +2854,8 @@ static inline void netif_napi_del(struct napi_struct *napi)
 	synchronize_net();
 }
 
+int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs);
+
 struct packet_type {
 	__be16			type;	/* This is really htons(ether_type). */
 	bool			ignore_outgoing;
diff --git a/lib/cpu_rmap.c b/lib/cpu_rmap.c
index 4c348670da31..f03d9be3f06b 100644
--- a/lib/cpu_rmap.c
+++ b/lib/cpu_rmap.c
@@ -73,7 +73,7 @@ static void cpu_rmap_release(struct kref *ref)
  * cpu_rmap_get - internal helper to get new ref on a cpu_rmap
  * @rmap: reverse-map allocated with alloc_cpu_rmap()
  */
-static inline void cpu_rmap_get(struct cpu_rmap *rmap)
+void cpu_rmap_get(struct cpu_rmap *rmap)
 {
 	kref_get(&rmap->refcount);
 }
diff --git a/net/core/dev.c b/net/core/dev.c
index fe5f5855593d..dbb63005bc2b 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6862,6 +6862,141 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 }
 EXPORT_SYMBOL(netif_queue_set_napi);
 
+#ifdef CONFIG_RFS_ACCEL
+static void
+netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
+			  const cpumask_t *mask)
+{
+	struct napi_struct *napi =
+		container_of(notify, struct napi_struct, notify);
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+	int err;
+
+	if (napi->dev->rx_cpu_rmap_auto) {
+		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
+		if (err)
+			pr_warn("%s: RMAP update failed (%d)\n",
+				__func__, err);
+	}
+}
+
+static void netif_napi_affinity_release(struct kref *ref)
+{
+	struct napi_struct *napi =
+		container_of(ref, struct napi_struct, notify.kref);
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+
+	if (!napi->dev->rx_cpu_rmap_auto)
+		return;
+	rmap->obj[napi->napi_rmap_idx] = NULL;
+	napi->napi_rmap_idx = -1;
+	cpu_rmap_put(rmap);
+}
+
+static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
+{
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+	int rc;
+
+	if (!rmap)
+		return -EINVAL;
+
+	napi->notify.notify = netif_irq_cpu_rmap_notify;
+	napi->notify.release = netif_napi_affinity_release;
+	cpu_rmap_get(rmap);
+	rc = cpu_rmap_add(rmap, napi);
+	if (rc < 0)
+		goto err_add;
+
+	napi->napi_rmap_idx = rc;
+	rc = irq_set_affinity_notifier(irq, &napi->notify);
+	if (rc)
+		goto err_set;
+
+	return 0;
+
+err_set:
+	rmap->obj[napi->napi_rmap_idx] = NULL;
+	napi->napi_rmap_idx = -1;
+err_add:
+	cpu_rmap_put(rmap);
+	return rc;
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
+
+static void netif_disable_cpu_rmap(struct net_device *dev)
+{
+	struct cpu_rmap *rmap = dev->rx_cpu_rmap;
+	struct napi_struct *napi;
+	u16 index;
+
+	if (!dev->rx_cpu_rmap_auto)
+		return;
+
+	for (index = 0; index < rmap->size; index++) {
+		napi = rmap->obj[index];
+		if (napi && napi->irq > 0)
+			irq_set_affinity_notifier(napi->irq, NULL);
+	}
+
+	/* Free the rmap */
+	cpu_rmap_put(rmap);
+	dev->rx_cpu_rmap = NULL;
+	dev->rx_cpu_rmap_auto = false;
+}
+
+#else
+static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
+{
+	return 0;
+}
+
+int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
+{
+	return 0;
+}
+EXPORT_SYMBOL(netif_enable_cpu_rmap);
+
+static void netif_disable_cpu_rmap(struct net_device *dev)
+{
+}
+#endif
+
+void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
+{
+	int rc;
+
+	if (!napi->dev->rx_cpu_rmap_auto)
+		goto out;
+
+	/* Remove existing rmap entries */
+	if (napi->irq != irq && napi->irq > 0)
+		irq_set_affinity_notifier(napi->irq, NULL);
+
+	if (irq > 0) {
+		rc = napi_irq_cpu_rmap_add(napi, irq);
+		if (rc) {
+			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
+				    rc);
+			netif_disable_cpu_rmap(napi->dev);
+		}
+	}
+
+out:
+	napi->irq = irq;
+}
+EXPORT_SYMBOL(netif_napi_set_irq_locked);
+
 static void napi_restore_config(struct napi_struct *n)
 {
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
@@ -6991,6 +7126,9 @@ void napi_disable_locked(struct napi_struct *n)
 	else
 		napi_hash_del(n);
 
+	if (n->irq > 0 && n->dev->rx_cpu_rmap_auto)
+		irq_set_affinity_notifier(n->irq, NULL);
+
 	clear_bit(NAPI_STATE_DISABLE, &n->state);
 }
 EXPORT_SYMBOL(napi_disable_locked);
@@ -11607,6 +11745,8 @@ void free_netdev(struct net_device *dev)
 	list_for_each_entry_safe(p, n, &dev->napi_list, dev_list)
 		netif_napi_del(p);
 
+	netif_disable_cpu_rmap(dev);
+
 	kvfree(dev->napi_config);
 
 	ref_tracker_dir_exit(&dev->refcnt_tracker);
-- 
2.43.0

