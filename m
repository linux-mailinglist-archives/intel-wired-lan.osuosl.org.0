Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E27A430AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 00:22:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA2CB40B39;
	Mon, 24 Feb 2025 23:22:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QvIdGde0G6PT; Mon, 24 Feb 2025 23:22:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F38DD40B43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740439370;
	bh=4Q2oujLTKtLN/4gebJzD0pnEuZ3mAhz1gTqP4Xaoxn0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zbNHUYdmqROG6wANYWi4wYzH7BGlzkQAi7XYsGseRnRL9Jja7eJrCUPIUfJ8WkWSk
	 REeEIigC+j6DeW30WSqqOjCg2fRJdvjKc+NSOFg2+mAQZjT3XWCotTvsvIUXTU6Z8y
	 yAT0ag6LTwNF9Fl4aHVR9aUH2onNHw6DV/CyAEsFAFfe+fKc7aq0jdh1ZtEnBZ8Ufr
	 GZ10LMNIRnJaDT/Ox9Cn19jukCahnYr0u2xFAFWX2y4LCxAGbeNSXO7+kbuDaBeVd2
	 SGmuFsaP2UA116tc0ba4NmHdTOqI+vbyY+J6zo53G+5Z4l/SiQi+wn0UXWgMrwcXdc
	 c/W7IeLT84otA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F38DD40B43;
	Mon, 24 Feb 2025 23:22:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 88B241531
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78CC340984
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PmY_Oy47-Kqc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 23:22:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6C6C0409DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C6C0409DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C6C0409DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:46 +0000 (UTC)
X-CSE-ConnectionGUID: HZNQ24+nSsmYq3zHfmPqag==
X-CSE-MsgGUID: wq0cZHBtTDGa3JoKVrW++w==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40406619"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40406619"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:22:46 -0800
X-CSE-ConnectionGUID: 8V3z5tDOTZuWp+7JwoHoZw==
X-CSE-MsgGUID: XwBzmx8ARqmZAoOTBEycnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="115997766"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.244.43])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:22:40 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 24 Feb 2025 16:22:22 -0700
Message-ID: <20250224232228.990783-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250224232228.990783-1-ahmed.zaki@intel.com>
References: <20250224232228.990783-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740439367; x=1771975367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hW5wv2GOLyYdvuKpkKh0bU5hgNwkWWIFnPl2fgqiD0U=;
 b=f28pyVoKcNK5gzEwQuvv4GeY/B9Q2nQvxYoi3jy9G5J1k9jV31sm5F2M
 TQ1U4bOe8Fu0ko+6fOUMsmRqlJnddhvPESJ9wb0HNGsXBUxxr2Vl6peQY
 VI6X/bKLTuGoUcjVQ4CO3CIvXxMhcM0KaDgUtl7vcrxB9WbbXvS8TVDMn
 aiIUXtasaIKv7P6yWNgCufHc7h9xV39gqauvJAZRqbc2cf1gFOSnK+STg
 DO88DTaLhwaSdq2xPtGkNeTGyBa8sL95+K0T82/Gj7OAm3YXN+AUTWZ8x
 MX5oFD1kl6lBN52YsGf7umlloptjA0thGtwjR/mO12gaI+ZQV+Ojx8FfT
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f28pyVoK
Subject: [Intel-wired-lan] [PATCH net-next v9 1/6] net: move aRFS rmap
 management and CPU affinity to core
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

A common task for most drivers is to remember the user-set CPU affinity
to its IRQs. On each netdev reset, the driver should re-assign the user's
settings to the IRQs. Unify this task across all drivers by moving the CPU
affinity to napi->config.

However, to move the CPU affinity to core, we also need to move aRFS
rmap management since aRFS uses its own IRQ notifiers.

For the aRFS, add a new netdev flag "rx_cpu_rmap_auto". Drivers supporting
aRFS should set the flag via netif_enable_cpu_rmap() and core will allocate
and manage the aRFS rmaps. Freeing the rmap is also done by core when the
netdev is freed. For better IRQ affinity management, move the IRQ rmap
notifier inside the napi_struct and add new notify.notify and
notify.release functions: netif_irq_cpu_rmap_notify() and
netif_napi_affinity_release().

Now we have the aRFS rmap management in core, add CPU affinity mask to
napi_config. To delegate the CPU affinity management to the core, drivers
must:
 1 - set the new netdev flag "irq_affinity_auto":
                                       netif_enable_irq_affinity(netdev)
 2 - create the napi with persistent config:
                                       netif_napi_add_config()
 3 - bind an IRQ to the napi instance: netif_napi_set_irq()

the core will then make sure to use re-assign affinity to the napi's
IRQ.

The default IRQ mask is set to one cpu starting from the closest NUMA.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 Documentation/networking/scaling.rst |   6 +-
 include/linux/cpu_rmap.h             |   1 +
 include/linux/netdevice.h            |  24 +++-
 lib/cpu_rmap.c                       |   2 +-
 net/core/dev.c                       | 169 +++++++++++++++++++++++++++
 5 files changed, 195 insertions(+), 7 deletions(-)

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
index 9a387d456592..2094d3edda73 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -352,6 +352,7 @@ struct napi_config {
 	u64 gro_flush_timeout;
 	u64 irq_suspend_timeout;
 	u32 defer_hard_irqs;
+	cpumask_t affinity_mask;
 	unsigned int napi_id;
 };
 
@@ -394,6 +395,8 @@ struct napi_struct {
 	struct list_head	dev_list;
 	struct hlist_node	napi_hash_node;
 	int			irq;
+	struct irq_affinity_notify notify;
+	int			napi_rmap_idx;
 	int			index;
 	struct napi_config	*config;
 };
@@ -409,6 +412,7 @@ enum {
 	NAPI_STATE_PREFER_BUSY_POLL,	/* prefer busy-polling over softirq processing*/
 	NAPI_STATE_THREADED,		/* The poll is performed inside its own thread*/
 	NAPI_STATE_SCHED_THREADED,	/* Napi is currently scheduled in threaded mode */
+	NAPI_STATE_HAS_NOTIFIER,	/* Napi has an IRQ notifier */
 };
 
 enum {
@@ -422,6 +426,7 @@ enum {
 	NAPIF_STATE_PREFER_BUSY_POLL	= BIT(NAPI_STATE_PREFER_BUSY_POLL),
 	NAPIF_STATE_THREADED		= BIT(NAPI_STATE_THREADED),
 	NAPIF_STATE_SCHED_THREADED	= BIT(NAPI_STATE_SCHED_THREADED),
+	NAPIF_STATE_HAS_NOTIFIER	= BIT(NAPI_STATE_HAS_NOTIFIER),
 };
 
 enum gro_result {
@@ -1989,6 +1994,15 @@ enum netdev_reg_state {
  *
  *	@threaded:	napi threaded mode is enabled
  *
+ *	@irq_affinity_auto: driver wants the core to store and re-assign the IRQ
+ *			    affinity. Set by netif_enable_irq_affinity(), then
+ *			    the driver must create a persistent napi by
+ *			    netif_napi_add_config() and finally bind the napi to
+ *			    IRQ (via netif_napi_set_irq()).
+ *
+ *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
+ *	                   Set by calling netif_enable_cpu_rmap().
+ *
  *	@see_all_hwtstamp_requests: device wants to see calls to
  *			ndo_hwtstamp_set() for all timestamp requests
  *			regardless of source, even if those aren't
@@ -2396,6 +2410,8 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+	bool			irq_affinity_auto;
+	bool			rx_cpu_rmap_auto;
 
 	/* priv_flags_slow, ungrouped to save space */
 	unsigned long		see_all_hwtstamp_requests:1;
@@ -2724,10 +2740,7 @@ static inline void netdev_assert_locked_or_invisible(struct net_device *dev)
 		netdev_assert_locked(dev);
 }
 
-static inline void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
-{
-	napi->irq = irq;
-}
+void netif_napi_set_irq_locked(struct napi_struct *napi, int irq);
 
 static inline void netif_napi_set_irq(struct napi_struct *napi, int irq)
 {
@@ -2865,6 +2878,9 @@ static inline void netif_napi_del(struct napi_struct *napi)
 	synchronize_net();
 }
 
+int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs);
+void netif_set_affinity_auto(struct net_device *dev);
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
index 3f525278a871..b0ab0169f507 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6943,11 +6943,175 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 }
 EXPORT_SYMBOL(netif_queue_set_napi);
 
+static void
+netif_napi_irq_notify(struct irq_affinity_notify *notify,
+		      const cpumask_t *mask)
+{
+	struct napi_struct *napi =
+		container_of(notify, struct napi_struct, notify);
+#ifdef CONFIG_RFS_ACCEL
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+	int err;
+#endif
+
+	if (napi->config && napi->dev->irq_affinity_auto)
+		cpumask_copy(&napi->config->affinity_mask, mask);
+
+#ifdef CONFIG_RFS_ACCEL
+	if (napi->dev->rx_cpu_rmap_auto) {
+		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
+		if (err)
+			netdev_warn(napi->dev, "RMAP update failed (%d)\n",
+				    err);
+	}
+#endif
+}
+
+#ifdef CONFIG_RFS_ACCEL
+static void netif_napi_affinity_release(struct kref *ref)
+{
+	struct napi_struct *napi =
+		container_of(ref, struct napi_struct, notify.kref);
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+
+	netdev_assert_locked(napi->dev);
+	WARN_ON(test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER,
+				   &napi->state));
+
+	if (!napi->dev->rx_cpu_rmap_auto)
+		return;
+	rmap->obj[napi->napi_rmap_idx] = NULL;
+	napi->napi_rmap_idx = -1;
+	cpu_rmap_put(rmap);
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
+static void netif_napi_affinity_release(struct kref *ref)
+{
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
+void netif_set_affinity_auto(struct net_device *dev)
+{
+	unsigned int i, maxqs, numa;
+
+	maxqs = max(dev->num_tx_queues, dev->num_rx_queues);
+	numa = dev_to_node(&dev->dev);
+
+	for (i = 0; i < maxqs; i++)
+		cpumask_set_cpu(cpumask_local_spread(i, numa),
+				&dev->napi_config[i].affinity_mask);
+
+	dev->irq_affinity_auto = true;
+}
+EXPORT_SYMBOL(netif_set_affinity_auto);
+
+void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
+{
+	int rc;
+
+	netdev_assert_locked_or_invisible(napi->dev);
+
+	if (napi->irq == irq)
+		return;
+
+	/* Remove existing resources */
+	if (test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state))
+		irq_set_affinity_notifier(napi->irq, NULL);
+
+	napi->irq = irq;
+	if (irq < 0 ||
+	    (!napi->dev->rx_cpu_rmap_auto && !napi->dev->irq_affinity_auto))
+		return;
+
+	/* Abort for buggy drivers */
+	if (napi->dev->irq_affinity_auto && WARN_ON_ONCE(!napi->config))
+		return;
+
+#ifdef CONFIG_RFS_ACCEL
+	if (napi->dev->rx_cpu_rmap_auto) {
+		rc = cpu_rmap_add(napi->dev->rx_cpu_rmap, napi);
+		if (rc < 0)
+			return;
+
+		cpu_rmap_get(napi->dev->rx_cpu_rmap);
+		napi->napi_rmap_idx = rc;
+	}
+#endif
+
+	/* Use core IRQ notifier */
+	napi->notify.notify = netif_napi_irq_notify;
+	napi->notify.release = netif_napi_affinity_release;
+	rc = irq_set_affinity_notifier(irq, &napi->notify);
+	if (rc) {
+		netdev_warn(napi->dev, "Unable to set IRQ notifier (%d)\n",
+			    rc);
+		goto put_rmap;
+	}
+
+	set_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state);
+	return;
+
+put_rmap:
+#ifdef CONFIG_RFS_ACCEL
+	if (napi->dev->rx_cpu_rmap_auto) {
+		cpu_rmap_put(napi->dev->rx_cpu_rmap);
+		napi->dev->rx_cpu_rmap->obj[napi->napi_rmap_idx] = NULL;
+		napi->napi_rmap_idx = -1;
+	}
+#endif
+	napi->notify.notify = NULL;
+	napi->notify.release = NULL;
+}
+EXPORT_SYMBOL(netif_napi_set_irq_locked);
+
 static void napi_restore_config(struct napi_struct *n)
 {
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
 	n->gro_flush_timeout = n->config->gro_flush_timeout;
 	n->irq_suspend_timeout = n->config->irq_suspend_timeout;
+
+	if (n->dev->irq_affinity_auto &&
+	    test_bit(NAPI_STATE_HAS_NOTIFIER, &n->state))
+		irq_set_affinity(n->irq, &n->config->affinity_mask);
+
 	/* a NAPI ID might be stored in the config, if so use it. if not, use
 	 * napi_hash_add to generate one for us.
 	 */
@@ -7168,6 +7332,9 @@ void __netif_napi_del_locked(struct napi_struct *napi)
 	/* Make sure NAPI is disabled (or was never enabled). */
 	WARN_ON(!test_bit(NAPI_STATE_SCHED, &napi->state));
 
+	if (test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state))
+		irq_set_affinity_notifier(napi->irq, NULL);
+
 	if (napi->config) {
 		napi->index = -1;
 		napi->config = NULL;
@@ -11720,6 +11887,8 @@ void free_netdev(struct net_device *dev)
 
 	netdev_napi_exit(dev);
 
+	netif_del_cpu_rmap(dev);
+
 	ref_tracker_dir_exit(&dev->refcnt_tracker);
 #ifdef CONFIG_PCPU_DEV_REFCNT
 	free_percpu(dev->pcpu_refcnt);
-- 
2.43.0

