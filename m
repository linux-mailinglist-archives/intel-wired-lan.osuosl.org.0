Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A0EA01158
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 01:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9D89408EA;
	Sat,  4 Jan 2025 00:43:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YLHR9RQR1Mtk; Sat,  4 Jan 2025 00:43:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC56B408E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735951428;
	bh=jDDsG0UdPugKR18VP01dgunGCqfCjAxRuOAzgM2zf0Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yXKTkAHbKraupNThuWOVZ0C0oFJVGyNMGbUcmF7tpH8V73jQolnylamObMxg8l4ji
	 1iJX7a22B6JbjTsxoNKprUljz9174c7yZuhnIdO89p/OK8ZzhnXqcmjGGRjnCT8fyP
	 Hr862Dug/z1l+vVwvyIROL1BfSo2GvewK4lu5aCqb8DzRVbQPujbIGl5/2hErbXFJF
	 bgKw2PE1BITWVrJ5qXjZ0qR+tRupV6gBkj+ndJKQOYrrd4P3pgW7oxesupv8iHw14y
	 Et8LvVxCHtZ44vA/nlAJ/1gZkyyYpQ0v9MRUsXuk+wSoDn06ZmcM1HG7IMIqhDPD0X
	 AACdagxiM8+5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC56B408E1;
	Sat,  4 Jan 2025 00:43:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E0CF4AF0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CEEC880C0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5REGu2IIsdLG for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 00:43:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0D4B80BFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0D4B80BFD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0D4B80BFD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:44 +0000 (UTC)
X-CSE-ConnectionGUID: pmlheHLXQoub3p/fIefZLA==
X-CSE-MsgGUID: rYp6hSzfR9uxx5MnOQ3rew==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36075975"
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="36075975"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:45 -0800
X-CSE-ConnectionGUID: MJJrnwg7Qw66uai3TxtGyA==
X-CSE-MsgGUID: s46I0+DKQbOttXqpuTZMQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="106879728"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.48])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:40 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  3 Jan 2025 17:43:11 -0700
Message-ID: <20250104004314.208259-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250104004314.208259-1-ahmed.zaki@intel.com>
References: <20250104004314.208259-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735951425; x=1767487425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/FN1qWtmI3LzLuF0G5JPbiYRKNZYDTNyeAQsh08UPvk=;
 b=TEPstCbxpmPRCi8frga6sLxctHJrkQKkrGkFtR+UR3ru5FxatuEmB3t5
 MXDzEuI+gkKqK46xH0h2Jh2mOKxLaL5lZ7dNnk1KxHNYas5WXIF5h3Fx1
 lZu4XefKjeaFDyck+4i3LXBs3KWKjBeNEKNZDOgkKjPYE7KgUZXAdeTDJ
 XZmYa8bL1pO9a6+6GVvPT5OE15gDywV9iAC4hbMNwVgucNgEUI2jKeHM7
 nhVJN4v5saJlYrDFLNNwo8+hrWLCMpDb0Kmf2sPQqsm+VPm4BJtbAKbit
 YMSpWF4CVY6Sh1lIf4xO/c+g6CW7uBUQqlqC8o6tFSKfDBDw4jS1kJltV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TEPstCbx
Subject: [Intel-wired-lan] [PATCH net-next v3 3/6] net: napi: add CPU
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
index b0769f0a3795..37d3f954ccf6 100644
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
index 92b7a9d4c9b6..86274d974ef4 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6736,22 +6736,30 @@ int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
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
@@ -6759,6 +6767,7 @@ netif_napi_affinity_release(struct kref __always_unused *ref)
 {
 }
 
+#ifdef CONFIG_RFS_ACCEL
 static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 {
 	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
@@ -6766,7 +6775,7 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 
 	if (!napi || !rmap)
 		return -EINVAL;
-	napi->notify.notify = netif_irq_cpu_rmap_notify;
+	napi->notify.notify = netif_napi_irq_notify;
 	napi->notify.release = netif_napi_affinity_release;
 	cpu_rmap_get(rmap);
 	rc = cpu_rmap_add(rmap, napi);
@@ -6790,9 +6799,8 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 
 void netif_napi_set_irq(struct napi_struct *napi, int irq)
 {
-#ifdef CONFIG_RFS_ACCEL
 	int rc;
-#endif
+
 	napi->irq = irq;
 
 #ifdef CONFIG_RFS_ACCEL
@@ -6803,8 +6811,18 @@ void netif_napi_set_irq(struct napi_struct *napi, int irq)
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
 
@@ -6813,6 +6831,10 @@ static void napi_restore_config(struct napi_struct *n)
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
 	n->gro_flush_timeout = n->config->gro_flush_timeout;
 	n->irq_suspend_timeout = n->config->irq_suspend_timeout;
+
+	if (n->irq > 0 && n->config && n->dev->irq_affinity_auto)
+		irq_set_affinity(n->irq, &n->config->affinity_mask);
+
 	/* a NAPI ID might be stored in the config, if so use it. if not, use
 	 * napi_hash_add to generate one for us. It will be saved to the config
 	 * in napi_disable.
@@ -6829,6 +6851,10 @@ static void napi_save_config(struct napi_struct *n)
 	n->config->gro_flush_timeout = n->gro_flush_timeout;
 	n->config->irq_suspend_timeout = n->irq_suspend_timeout;
 	n->config->napi_id = n->napi_id;
+
+	if (n->irq > 0 && n->config && n->dev->irq_affinity_auto)
+		irq_set_affinity_notifier(n->irq, NULL);
+
 	napi_hash_del(n);
 }
 
@@ -11293,7 +11319,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 {
 	struct net_device *dev;
 	size_t napi_config_sz;
-	unsigned int maxqs;
+	unsigned int maxqs, i, numa;
 
 	BUG_ON(strlen(name) >= sizeof(dev->name));
 
@@ -11389,6 +11415,10 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
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

