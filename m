Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC06A08384
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 00:31:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5498A83455;
	Thu,  9 Jan 2025 23:31:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u7y3d_cIASb0; Thu,  9 Jan 2025 23:31:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83525834BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736465503;
	bh=R8DECdVL81tU+GMtWzlmrwCnWZmBIlhQm5Nd2IvxZCE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cQtTAn5Ix7ztT16qGrcRq2wN8KYbQMsuvMOYYFix+l/A4u6w9gX1nspdn/4EAxUMC
	 Cw8KbacoRxbGmhrRCBsdi1vNKzqayOC9lpLfqccIgclue3qjnTEfrCNAnTOul6ZbdN
	 lv13xstyocza7cRNcuxG249SJdHPAHzQLilW8MWyotP5hn7B/agru+sv6FfuNzeseV
	 2rwPQeYgJQnHhSyWFjDWSLKfRW2hKcXLcMBTUFeVyoasI7NtdKY301G6cuUbaJcjCu
	 FcPSQojzfFLTrzGH2bvz225t2RMTRWTAswwW3MZHoZyiL3pRxXMYpQDTPwSDtlHeDV
	 g1pJe7uKwhznA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83525834BB;
	Thu,  9 Jan 2025 23:31:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 40BCD940
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D73A40F93
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4dg9k5VGoJZX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 23:31:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F190F40FA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F190F40FA2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F190F40FA2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:39 +0000 (UTC)
X-CSE-ConnectionGUID: I+pBSPV8SwuKJNgrIUEpmw==
X-CSE-MsgGUID: QC9Mofo0TA6HzWp0m8Yc9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="47245162"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="47245162"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:40 -0800
X-CSE-ConnectionGUID: S4+KUSGsQ4i808Gl9SmfJw==
X-CSE-MsgGUID: sYYqohP8R6G0MRz5dJPeqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="134399052"
Received: from kinlongk-mobl1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.128])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:34 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Thu,  9 Jan 2025 16:31:04 -0700
Message-ID: <20250109233107.17519-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109233107.17519-1-ahmed.zaki@intel.com>
References: <20250109233107.17519-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736465500; x=1768001500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lGWvyvRbAveSQqXajzK4A4PR3DPtMw+ZclWSl6vjKQQ=;
 b=QFJQDxOyNF+0+8t6kvCfQgcg5Gv+/YMVkf4jg/Befss2A+oEUQEm2Km4
 8IYVTXZ8pDHcw+QUjuyEkyIKLX5JQlz9JsB9AD6zkcYbsPf+78lgwH87t
 3qT6mK+xziILgdsQgcuXcIt6tNgjUPNFFvq/35CPJ62XDXsdqVrd85A/N
 yV+sgDQZUNNahCRKSTh+0gxRZk/H3Pn3UmhsiuOslY7mOI6BN2QnpmRCI
 w/AKGlW9/QHxAcbhIXtNX5FNaPjhFTtKWuZ3vm7+ZbkI62/YEbM+x4DgY
 pawBkdgK8dk2elUbkozCRXdYuWyKlKFEpQeW+ZxQ2b2P6KUq/ZCHIUF4c
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QFJQDxOy
Subject: [Intel-wired-lan] [PATCH net-next v4 3/6] net: napi: add CPU
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
 include/linux/netdevice.h |  9 +++++++-
 net/core/dev.c            | 44 ++++++++++++++++++++++++++++++++-------
 2 files changed, 45 insertions(+), 8 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index c789218cca5d..82da827b5ec6 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -351,6 +351,7 @@ struct napi_config {
 	u64 gro_flush_timeout;
 	u64 irq_suspend_timeout;
 	u32 defer_hard_irqs;
+	cpumask_t affinity_mask;
 	unsigned int napi_id;
 };
 
@@ -392,8 +393,8 @@ struct napi_struct {
 	struct list_head	dev_list;
 	struct hlist_node	napi_hash_node;
 	int			irq;
-#ifdef CONFIG_RFS_ACCEL
 	struct irq_affinity_notify notify;
+#ifdef CONFIG_RFS_ACCEL
 	int			napi_rmap_idx;
 #endif
 	int			index;
@@ -2402,6 +2403,7 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+	bool			irq_affinity_auto;
 #ifdef CONFIG_RFS_ACCEL
 	bool			rx_cpu_rmap_auto;
 #endif
@@ -2637,6 +2639,11 @@ static inline void netdev_set_ml_priv(struct net_device *dev,
 	dev->ml_priv_type = type;
 }
 
+static inline void netif_enable_irq_affinity(struct net_device *dev)
+{
+	dev->irq_affinity_auto = true;
+}
+
 /*
  * Net namespace inlines
  */
diff --git a/net/core/dev.c b/net/core/dev.c
index 1d4378962857..72b3caf0e79f 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6761,22 +6761,30 @@ int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
 	return 0;
 }
 EXPORT_SYMBOL(netif_enable_cpu_rmap);
+#endif
 
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
 
+	if (napi->config && napi->dev->irq_affinity_auto)
+		cpumask_copy(&napi->config->affinity_mask, mask);
+
+#ifdef CONFIG_RFS_ACCEL
 	if (rmap && napi->dev->rx_cpu_rmap_auto) {
 		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
 		if (err)
 			pr_warn("%s: RMAP update failed (%d)\n",
 				__func__, err);
 	}
+#endif
 }
 
 static void
@@ -6790,6 +6798,7 @@ netif_napi_affinity_release(struct kref *ref)
 	cpu_rmap_put(rmap);
 }
 
+#ifdef CONFIG_RFS_ACCEL
 static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 {
 	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
@@ -6797,7 +6806,7 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 
 	if (!napi || !rmap)
 		return -EINVAL;
-	napi->notify.notify = netif_irq_cpu_rmap_notify;
+	napi->notify.notify = netif_napi_irq_notify;
 	napi->notify.release = netif_napi_affinity_release;
 	cpu_rmap_get(rmap);
 	rc = cpu_rmap_add(rmap, napi);
@@ -6821,9 +6830,8 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 
 void netif_napi_set_irq(struct napi_struct *napi, int irq)
 {
-#ifdef CONFIG_RFS_ACCEL
 	int rc;
-#endif
+
 	napi->irq = irq;
 
 #ifdef CONFIG_RFS_ACCEL
@@ -6834,8 +6842,18 @@ void netif_napi_set_irq(struct napi_struct *napi, int irq)
 				    rc);
 			netif_disable_cpu_rmap(napi->dev);
 		}
-	}
+	} else if (irq > 0 && napi->config && napi->dev->irq_affinity_auto) {
+#else
+	if (irq > 0 && napi->config && napi->dev->irq_affinity_auto) {
 #endif
+		napi->notify.notify = netif_napi_irq_notify;
+		napi->notify.release = netif_napi_affinity_release;
+
+		rc = irq_set_affinity_notifier(irq, &napi->notify);
+		if (rc)
+			netdev_warn(napi->dev, "Unable to set IRQ notifier (%d)\n",
+				    rc);
+	}
 }
 EXPORT_SYMBOL(netif_napi_set_irq);
 
@@ -6844,6 +6862,10 @@ static void napi_restore_config(struct napi_struct *n)
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
 	n->gro_flush_timeout = n->config->gro_flush_timeout;
 	n->irq_suspend_timeout = n->config->irq_suspend_timeout;
+
+	if (n->irq > 0 && n->dev->irq_affinity_auto)
+		irq_set_affinity(n->irq, &n->config->affinity_mask);
+
 	/* a NAPI ID might be stored in the config, if so use it. if not, use
 	 * napi_hash_add to generate one for us.
 	 */
@@ -6860,6 +6882,10 @@ static void napi_save_config(struct napi_struct *n)
 	n->config->defer_hard_irqs = n->defer_hard_irqs;
 	n->config->gro_flush_timeout = n->gro_flush_timeout;
 	n->config->irq_suspend_timeout = n->irq_suspend_timeout;
+
+	if (n->irq > 0 && n->dev->irq_affinity_auto)
+		irq_set_affinity_notifier(n->irq, NULL);
+
 	napi_hash_del(n);
 }
 
@@ -11358,7 +11384,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 {
 	struct net_device *dev;
 	size_t napi_config_sz;
-	unsigned int maxqs;
+	unsigned int maxqs, i, numa;
 
 	BUG_ON(strlen(name) >= sizeof(dev->name));
 
@@ -11454,6 +11480,10 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 	dev->napi_config = kvzalloc(napi_config_sz, GFP_KERNEL_ACCOUNT);
 	if (!dev->napi_config)
 		goto free_all;
+	numa = dev_to_node(&dev->dev);
+	for (i = 0; i < maxqs; i++)
+		cpumask_set_cpu(cpumask_local_spread(i, numa),
+				&dev->napi_config[i].affinity_mask);
 
 	strscpy(dev->name, name);
 	dev->name_assign_type = name_assign_type;
-- 
2.43.0

