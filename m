Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C9FA3173E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 22:07:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1666A40612;
	Tue, 11 Feb 2025 21:07:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pMqNPHBvxy9M; Tue, 11 Feb 2025 21:07:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B4784063E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739308059;
	bh=2PcIkSE57T5YU0dxHPQjE4vvUANBGAFW0rbcofM9qi4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fYfy5fHSkoBDZEi2LgP3KTcmk/GUgqFNp281dPMqwM2LqFn9lg2Lo/Z+jdijV3XU5
	 62tJhj1VFGOwsCH/VCx92THJ3gMEmNcshyGAtQWefImcsxr4Qg/OpgUPCVEgTy14U5
	 1VyY09rlpnCnOKtO8r6tlx8bF4blJmaa3JxwVBmZrEJtC75rC74GcbtcpDytlDuDBk
	 65gpOPF/XWFFgKFZPbTp/sl/UQieuyBkkrGPeGirf3yBhB4QdX/EUW6z2ncAcWQxZl
	 JAHa3oMe1aQEyvs5yKREfhg6AXSXva0ZJbn/b+ZFCQkyG+jGC/Bv8XCeQQColBG3U6
	 sk92PVe2N+fDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B4784063E;
	Tue, 11 Feb 2025 21:07:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CCCAE194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCC1081316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uQOjJHH1caLa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 21:07:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 657CA8129D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 657CA8129D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 657CA8129D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:33 +0000 (UTC)
X-CSE-ConnectionGUID: BnvTLg+DSIOePMjwJ6+gtw==
X-CSE-MsgGUID: eI0WYCMST3aSPDk3BVHydg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="51339625"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="51339625"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 13:07:32 -0800
X-CSE-ConnectionGUID: sNf46+bARNqV1Om3sOUyLw==
X-CSE-MsgGUID: R917fuimRcm1DEVESB5XPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116713247"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.7])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 13:07:25 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 pavan.chebbi@broadcom.com, Ahmed Zaki <ahmed.zaki@intel.com>,
 David Arinzon <darinzon@amazon.com>
Date: Tue, 11 Feb 2025 14:06:53 -0700
Message-ID: <20250211210657.428439-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250211210657.428439-1-ahmed.zaki@intel.com>
References: <20250211210657.428439-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739308053; x=1770844053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+WpCZtouLDTQ5vQDdTBzRq9BhSEk9J8Mp2GMx04qHls=;
 b=iW8tGiatJ7WB8JGe3iRjyEJCFgU3HJ8T9VsSYJ9YFeJGxlK3AwJdzZNk
 l7FRomr1n72T/BrdAlRpCuKSCqmLy7IUqRa+nNiFt5WhXYpsQtS9IMaaA
 W8u5MPiUmp1QCJQQNcOpxcLBG0mEda4OSdhVMacSs4R2jIFy4Fzg3sTsc
 9uZsmoUUucY7I70iasI64Idkr7Wg1JqRbTFsPvjzv00v+x01z1s5FOCiq
 6MNGxGqS4m7Pj77fUJEKyvvKXpd0Uoty79WqDG6RkN87JW7Wsd4ZlT6ix
 MTmn9W+79q9nziipIz+jy53ev7rp6hGsQcoWKfiLHwjwHsVGM4SOX5xFz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iW8tGiat
Subject: [Intel-wired-lan] [PATCH net-next v8 2/6] net: move ARFS rmap
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
 Documentation/networking/scaling.rst         |   6 +-
 drivers/net/ethernet/amazon/ena/ena_netdev.c |  43 +------
 drivers/net/ethernet/broadcom/bnxt/bnxt.c    |  29 +----
 drivers/net/ethernet/intel/ice/ice_arfs.c    |  33 +----
 drivers/net/ethernet/intel/ice/ice_arfs.h    |   2 -
 drivers/net/ethernet/intel/ice/ice_lib.c     |   1 -
 include/linux/cpu_rmap.h                     |   1 +
 include/linux/netdevice.h                    |  17 ++-
 lib/cpu_rmap.c                               |   2 +-
 net/core/dev.c                               | 125 +++++++++++++++++++
 10 files changed, 150 insertions(+), 109 deletions(-)

diff --git a/Documentation/networking/scaling.rst b/Documentation/networking/scaling.rst
index 4eb50bcb9d42..e5d4d3ecb980 100644
--- a/Documentation/networking/scaling.rst
+++ b/Documentation/networking/scaling.rst
@@ -427,8 +427,10 @@ rps_dev_flow_table. The stack consults a CPU to hardware queue map which
 is maintained by the NIC driver. This is an auto-generated reverse map of
 the IRQ affinity table shown by /proc/interrupts. Drivers can use
 functions in the cpu_rmap (“CPU affinity reverse map”) kernel library
-to populate the map. For each CPU, the corresponding queue in the map is
-set to be one whose processing CPU is closest in cache locality.
+to populate the map. Alternatively, drivers can delegate the cpu_rmap
+management to the Kernel by calling netif_enable_cpu_rmap(). For each CPU,
+the corresponding queue in the map is set to be one whose processing CPU is
+closest in cache locality.
 
 
 Accelerated RFS Configuration
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
index 7b8b5b39c7bb..b9b839cb942a 100644
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
@@ -10886,10 +10885,8 @@ static int bnxt_set_real_num_queues(struct bnxt *bp)
 	if (rc)
 		return rc;
 
-#ifdef CONFIG_RFS_ACCEL
 	if (bp->flags & BNXT_FLAG_RFS)
-		dev->rx_cpu_rmap = alloc_irq_cpu_rmap(bp->rx_nr_rings);
-#endif
+		return netif_enable_cpu_rmap(dev, bp->rx_nr_rings);
 
 	return rc;
 }
@@ -11242,10 +11239,6 @@ static void bnxt_free_irq(struct bnxt *bp)
 	struct bnxt_irq *irq;
 	int i;
 
-#ifdef CONFIG_RFS_ACCEL
-	free_irq_cpu_rmap(bp->dev->rx_cpu_rmap);
-	bp->dev->rx_cpu_rmap = NULL;
-#endif
 	if (!bp->irq_tbl || !bp->bnapi)
 		return;
 
@@ -11268,11 +11261,8 @@ static void bnxt_free_irq(struct bnxt *bp)
 
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
@@ -11280,22 +11270,11 @@ static int bnxt_request_irq(struct bnxt *bp)
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
index 7cee365cc7d1..171cdec741c2 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -570,25 +570,6 @@ void ice_clear_arfs(struct ice_vsi *vsi)
 	vsi->arfs_fltr_cntrs = NULL;
 }
 
-/**
- * ice_free_cpu_rx_rmap - free setup CPU reverse map
- * @vsi: the VSI to be forwarded to
- */
-void ice_free_cpu_rx_rmap(struct ice_vsi *vsi)
-{
-	struct net_device *netdev;
-
-	if (!vsi || vsi->type != ICE_VSI_PF)
-		return;
-
-	netdev = vsi->netdev;
-	if (!netdev || !netdev->rx_cpu_rmap)
-		return;
-
-	free_irq_cpu_rmap(netdev->rx_cpu_rmap);
-	netdev->rx_cpu_rmap = NULL;
-}
-
 /**
  * ice_set_cpu_rx_rmap - setup CPU reverse map for each queue
  * @vsi: the VSI to be forwarded to
@@ -597,7 +578,6 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 {
 	struct net_device *netdev;
 	struct ice_pf *pf;
-	int i;
 
 	if (!vsi || vsi->type != ICE_VSI_PF)
 		return 0;
@@ -610,18 +590,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
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
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.h b/drivers/net/ethernet/intel/ice/ice_arfs.h
index 9669ad9bf7b5..9706293128c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.h
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.h
@@ -45,7 +45,6 @@ int
 ice_rx_flow_steer(struct net_device *netdev, const struct sk_buff *skb,
 		  u16 rxq_idx, u32 flow_id);
 void ice_clear_arfs(struct ice_vsi *vsi);
-void ice_free_cpu_rx_rmap(struct ice_vsi *vsi);
 void ice_init_arfs(struct ice_vsi *vsi);
 void ice_sync_arfs_fltrs(struct ice_pf *pf);
 int ice_set_cpu_rx_rmap(struct ice_vsi *vsi);
@@ -56,7 +55,6 @@ ice_is_arfs_using_perfect_flow(struct ice_hw *hw,
 			       enum ice_fltr_ptype flow_type);
 #else
 static inline void ice_clear_arfs(struct ice_vsi *vsi) { }
-static inline void ice_free_cpu_rx_rmap(struct ice_vsi *vsi) { }
 static inline void ice_init_arfs(struct ice_vsi *vsi) { }
 static inline void ice_sync_arfs_fltrs(struct ice_pf *pf) { }
 static inline void ice_remove_arfs(struct ice_pf *pf) { }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b2467dc17681..916b072ab718 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2593,7 +2593,6 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
 		return;
 
 	vsi->irqs_ready = false;
-	ice_free_cpu_rx_rmap(vsi);
 
 	ice_for_each_q_vector(vsi, i) {
 		int irq_num;
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
index 5429581f2299..9344d9b632d4 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -394,6 +394,10 @@ struct napi_struct {
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
@@ -409,6 +413,7 @@ enum {
 	NAPI_STATE_PREFER_BUSY_POLL,	/* prefer busy-polling over softirq processing*/
 	NAPI_STATE_THREADED,		/* The poll is performed inside its own thread*/
 	NAPI_STATE_SCHED_THREADED,	/* Napi is currently scheduled in threaded mode */
+	NAPI_STATE_HAS_NOTIFIER,	/* Napi has an IRQ notifier */
 };
 
 enum {
@@ -422,6 +427,7 @@ enum {
 	NAPIF_STATE_PREFER_BUSY_POLL	= BIT(NAPI_STATE_PREFER_BUSY_POLL),
 	NAPIF_STATE_THREADED		= BIT(NAPI_STATE_THREADED),
 	NAPIF_STATE_SCHED_THREADED	= BIT(NAPI_STATE_SCHED_THREADED),
+	NAPIF_STATE_HAS_NOTIFIER	= BIT(NAPI_STATE_HAS_NOTIFIER),
 };
 
 enum gro_result {
@@ -1989,6 +1995,9 @@ enum netdev_reg_state {
  *
  *	@threaded:	napi threaded mode is enabled
  *
+ *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
+ *	                   Set by calling netif_enable_cpu_rmap().
+ *
  *	@see_all_hwtstamp_requests: device wants to see calls to
  *			ndo_hwtstamp_set() for all timestamp requests
  *			regardless of source, even if those aren't
@@ -2396,6 +2405,7 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+	bool			rx_cpu_rmap_auto;
 
 	/* priv_flags_slow, ungrouped to save space */
 	unsigned long		see_all_hwtstamp_requests:1;
@@ -2718,10 +2728,7 @@ static inline void netdev_assert_locked_or_invisible(struct net_device *dev)
 		netdev_assert_locked(dev);
 }
 
-static inline void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
-{
-	napi->irq = irq;
-}
+void netif_napi_set_irq_locked(struct napi_struct *napi, int irq);
 
 static inline void netif_napi_set_irq(struct napi_struct *napi, int irq)
 {
@@ -2859,6 +2866,8 @@ static inline void netif_napi_del(struct napi_struct *napi)
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
index d5ab9a4b318e..209296cef3cd 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6871,6 +6871,126 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
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
+	err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
+	if (err)
+		netdev_warn(napi->dev, "RMAP update failed (%d)\n",
+			    err);
+}
+
+static void netif_napi_affinity_release(struct kref *ref)
+{
+	struct napi_struct *napi =
+		container_of(ref, struct napi_struct, notify.kref);
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+
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
+	set_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state);
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
+	if (dev->rx_cpu_rmap_auto)
+		return 0;
+
+	dev->rx_cpu_rmap = alloc_irq_cpu_rmap(num_irqs);
+	if (!dev->rx_cpu_rmap)
+		return -ENOMEM;
+
+	dev->rx_cpu_rmap_auto = true;
+	return 0;
+}
+EXPORT_SYMBOL(netif_enable_cpu_rmap);
+
+static void netif_del_cpu_rmap(struct net_device *dev)
+{
+	struct cpu_rmap *rmap = dev->rx_cpu_rmap;
+
+	if (!dev->rx_cpu_rmap_auto)
+		return;
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
+static void netif_del_cpu_rmap(struct net_device *dev)
+{
+}
+#endif
+
+void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
+{
+	int rc;
+
+	if (napi->irq == irq)
+		return;
+
+	/* Remove existing rmap entries */
+	if (test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state))
+		irq_set_affinity_notifier(napi->irq, NULL);
+
+	napi->irq = irq;
+	if (irq < 0)
+		return;
+
+	rc = napi_irq_cpu_rmap_add(napi, irq);
+	if (rc)
+		netdev_warn(napi->dev, "Unable to update aRFS map (%d)\n", rc);
+}
+EXPORT_SYMBOL(netif_napi_set_irq_locked);
+
 static void napi_restore_config(struct napi_struct *n)
 {
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
@@ -7079,6 +7199,9 @@ void __netif_napi_del_locked(struct napi_struct *napi)
 	/* Make sure NAPI is disabled (or was never enabled). */
 	WARN_ON(!test_bit(NAPI_STATE_SCHED, &napi->state));
 
+	if (test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state))
+		irq_set_affinity_notifier(napi->irq, NULL);
+
 	if (napi->config) {
 		napi->index = -1;
 		napi->config = NULL;
@@ -11632,6 +11755,8 @@ void free_netdev(struct net_device *dev)
 
 	netdev_napi_exit(dev);
 
+	netif_del_cpu_rmap(dev);
+
 	ref_tracker_dir_exit(&dev->refcnt_tracker);
 #ifdef CONFIG_PCPU_DEV_REFCNT
 	free_percpu(dev->pcpu_refcnt);
-- 
2.43.0

