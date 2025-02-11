Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEC1A3173F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 22:07:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CB9B40651;
	Tue, 11 Feb 2025 21:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AfKtvI9Y_sPY; Tue, 11 Feb 2025 21:07:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55E3E40650
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739308063;
	bh=8mYUXvkS99gWaquQAYc4BrU7WDaw3Je4SfcsOMbAvZc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pfWUw3+UJ0+IjUEW130m0rStDHR3npv4e7GfN8OeVtEXFINwzgCSWQatlvWgGoXf/
	 QbvRWPEIIJJXOu5v+bdoadpqNve+rYkV6WtRspabL13QyjwQlyXE3Df4H5gLX0v5cs
	 wpPi9kArK21P+RtK7W0XRG4csKr1f4JJ8yDrmNhygnQSa799B92C1VzLzJ/mhn+8gK
	 BG/AZHXNJbIiAM5OloNYbyikziyKAYax2zwi0eQPEWhrzMOZuDhIBFX8J+WGKyX2Iu
	 Kn9UMC47Zi48gpCGcpP+TUha6ir8pk4s4ES9G971oN3j2CPL900R1Maeb3z/12y7uD
	 9/5aG0+kVyocA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55E3E40650;
	Tue, 11 Feb 2025 21:07:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FAD16C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1FC2381282
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z5C8GUACZFH1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 21:07:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 37DF881313
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37DF881313
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37DF881313
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 21:07:40 +0000 (UTC)
X-CSE-ConnectionGUID: VJKiCFRdRN+vy4f/vAsv+g==
X-CSE-MsgGUID: ly2dwXKrTYmOmuLCm9/unA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="51339644"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="51339644"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 13:07:39 -0800
X-CSE-ConnectionGUID: T/x9P0a8T8O8bo+JylhGgQ==
X-CSE-MsgGUID: ivrzjW5iQxSNkttzxwebsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116713255"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.7])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 13:07:32 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 pavan.chebbi@broadcom.com, Ahmed Zaki <ahmed.zaki@intel.com>
Date: Tue, 11 Feb 2025 14:06:54 -0700
Message-ID: <20250211210657.428439-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250211210657.428439-1-ahmed.zaki@intel.com>
References: <20250211210657.428439-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739308060; x=1770844060;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ac1qI9suMsxgMKpOIOohF2WwjoZjTotUL0VsoIomy3g=;
 b=KwvTS+6T7/T/xPDUTQe7ziisQKumHdfNXYnx3WJs1awtE8uqaNsB8nmh
 IZtvS4ZkSWcwZo0FJeX9Kcf/nWmAJCQTTqAao89KhFFUB+vTSYkVgh8l3
 CBQtoG8GpNJnhHuC4NIzgRassdvR1LDBcmpJRYblrJvtF7AM8gni6WmFk
 GJlgH2hXqNO85UsNywkPh3+lsj2s1cF1Vf6JpTxHigzY2UdHPo7vvsLBU
 10B2qbG8Pye/dtj81RgWN5eGLL8tnGAcNKCG6+fYMlz63VqT1B/2kjpwR
 BM0zwYQdyPibFrOUgK9UCDUu3eYGOJz4MC89qIplxwcaCS5wtZ5MMaSzC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KwvTS+6T
Subject: [Intel-wired-lan] [PATCH net-next v8 3/6] net: napi: add CPU
 affinity to napi_config
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
to its IRQs. On each netdev reset, the driver should re-assign the
user's settings to the IRQs.

Add CPU affinity mask to napi_config. To delegate the CPU affinity
management to the core, drivers must:
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
 include/linux/netdevice.h | 15 ++++++--
 net/core/dev.c            | 73 +++++++++++++++++++++++++++++++--------
 2 files changed, 72 insertions(+), 16 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 9344d9b632d4..63fb392558b3 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -352,6 +352,7 @@ struct napi_config {
 	u64 gro_flush_timeout;
 	u64 irq_suspend_timeout;
 	u32 defer_hard_irqs;
+	cpumask_t affinity_mask;
 	unsigned int napi_id;
 };
 
@@ -394,10 +395,8 @@ struct napi_struct {
 	struct list_head	dev_list;
 	struct hlist_node	napi_hash_node;
 	int			irq;
-#ifdef CONFIG_RFS_ACCEL
 	struct irq_affinity_notify notify;
 	int			napi_rmap_idx;
-#endif
 	int			index;
 	struct napi_config	*config;
 };
@@ -1995,6 +1994,12 @@ enum netdev_reg_state {
  *
  *	@threaded:	napi threaded mode is enabled
  *
+ *	@irq_affinity_auto: driver wants the core to store and re-assign the IRQ
+ *			    affinity. Set by netif_enable_irq_affinity(), then
+ *			    the driver must create a persistent napi by
+ *			    netif_napi_add_config() and finally bind the napi to
+ *			    IRQ (via netif_napi_set_irq()).
+ *
  *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
  *	                   Set by calling netif_enable_cpu_rmap().
  *
@@ -2405,6 +2410,7 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+	bool			irq_affinity_auto;
 	bool			rx_cpu_rmap_auto;
 
 	/* priv_flags_slow, ungrouped to save space */
@@ -2665,6 +2671,11 @@ static inline void netdev_set_ml_priv(struct net_device *dev,
 	dev->ml_priv_type = type;
 }
 
+static inline void netif_set_affinity_auto(struct net_device *dev)
+{
+	dev->irq_affinity_auto = true;
+}
+
 /*
  * Net namespace inlines
  */
diff --git a/net/core/dev.c b/net/core/dev.c
index 209296cef3cd..d2c942bbd5e6 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6871,28 +6871,39 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 }
 EXPORT_SYMBOL(netif_queue_set_napi);
 
-#ifdef CONFIG_RFS_ACCEL
 static void
-netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
-			  const cpumask_t *mask)
+netif_napi_irq_notify(struct irq_affinity_notify *notify,
+		      const cpumask_t *mask)
 {
 	struct napi_struct *napi =
 		container_of(notify, struct napi_struct, notify);
+#ifdef CONFIG_RFS_ACCEL
 	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
 	int err;
+#endif
 
-	err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
-	if (err)
-		netdev_warn(napi->dev, "RMAP update failed (%d)\n",
-			    err);
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
 }
 
+#ifdef CONFIG_RFS_ACCEL
 static void netif_napi_affinity_release(struct kref *ref)
 {
 	struct napi_struct *napi =
 		container_of(ref, struct napi_struct, notify.kref);
 	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
 
+	if (!napi->dev->rx_cpu_rmap_auto)
+		return;
 	rmap->obj[napi->napi_rmap_idx] = NULL;
 	napi->napi_rmap_idx = -1;
 	cpu_rmap_put(rmap);
@@ -6903,7 +6914,7 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
 	int rc;
 
-	napi->notify.notify = netif_irq_cpu_rmap_notify;
+	napi->notify.notify = netif_napi_irq_notify;
 	napi->notify.release = netif_napi_affinity_release;
 	cpu_rmap_get(rmap);
 	rc = cpu_rmap_add(rmap, napi);
@@ -6915,7 +6926,6 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 	if (rc)
 		goto err_set;
 
-	set_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state);
 	return 0;
 
 err_set:
@@ -6954,6 +6964,10 @@ static void netif_del_cpu_rmap(struct net_device *dev)
 }
 
 #else
+static void netif_napi_affinity_release(struct kref *ref)
+{
+}
+
 static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 {
 	return 0;
@@ -6977,7 +6991,7 @@ void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
 	if (napi->irq == irq)
 		return;
 
-	/* Remove existing rmap entries */
+	/* Remove existing resources */
 	if (test_and_clear_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state))
 		irq_set_affinity_notifier(napi->irq, NULL);
 
@@ -6985,9 +6999,30 @@ void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
 	if (irq < 0)
 		return;
 
-	rc = napi_irq_cpu_rmap_add(napi, irq);
-	if (rc)
-		netdev_warn(napi->dev, "Unable to update aRFS map (%d)\n", rc);
+	if (napi->dev->rx_cpu_rmap_auto) {
+		rc = napi_irq_cpu_rmap_add(napi, irq);
+		if (rc) {
+			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
+				    rc);
+			return;
+		}
+		set_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state);
+
+	} else if (napi->dev->irq_affinity_auto) {
+		if (WARN_ON_ONCE(!napi->config))
+			return;
+
+		napi->notify.notify = netif_napi_irq_notify;
+		napi->notify.release = netif_napi_affinity_release;
+
+		rc = irq_set_affinity_notifier(irq, &napi->notify);
+		if (rc) {
+			netdev_warn(napi->dev, "Unable to set IRQ notifier (%d)\n",
+				    rc);
+			return;
+		}
+		set_bit(NAPI_STATE_HAS_NOTIFIER, &napi->state);
+	}
 }
 EXPORT_SYMBOL(netif_napi_set_irq_locked);
 
@@ -6996,6 +7031,11 @@ static void napi_restore_config(struct napi_struct *n)
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
@@ -11575,9 +11615,9 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 		void (*setup)(struct net_device *),
 		unsigned int txqs, unsigned int rxqs)
 {
+	unsigned int maxqs, i, numa;
 	struct net_device *dev;
 	size_t napi_config_sz;
-	unsigned int maxqs;
 
 	BUG_ON(strlen(name) >= sizeof(dev->name));
 
@@ -11679,6 +11719,11 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 	if (!dev->napi_config)
 		goto free_all;
 
+	numa = dev_to_node(&dev->dev);
+	for (i = 0; i < maxqs; i++)
+		cpumask_set_cpu(cpumask_local_spread(i, numa),
+				&dev->napi_config[i].affinity_mask);
+
 	strscpy(dev->name, name);
 	dev->name_assign_type = name_assign_type;
 	dev->group = INIT_NETDEV_GROUP;
-- 
2.43.0

