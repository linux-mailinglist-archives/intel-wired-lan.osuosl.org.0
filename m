Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F8BA0BE79
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2025 18:11:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CDA283906;
	Mon, 13 Jan 2025 17:11:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gbKs2iOOBhoZ; Mon, 13 Jan 2025 17:11:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F88D83841
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736788285;
	bh=F5xOYSxWrxtnsRPD2kwGhpZf7oTQ4IABmV+5c/kZnVo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LGQeBpDMSSSoSSf8seBIgJUKpgh1rYU7mcBHV8j0yxwixWu0CwHlyZAkAGQxCuT+P
	 0aGRTE2JdzGKid0ILx6VPhktNqoDfbCOOnvX28Z9kJeOS6s8qjRT+uTsoSdiRPEzIK
	 PUbBcqT4qdziEbA5DGarYNFyuzHOvDfkLahSOIPX2UpNa2qZKXTR1AxmkYBbIyKmNC
	 eQvfirX/zSYqQuFrkNLagBzaWFA3Ui6ibBgkq+IkiIU89ECf75fGBHstbkL5omffXx
	 FwYuACI8G1N2oVJBN9zbBRC2nj47i0S7oqp7/udtHDMxrU2DEb1y0jvq62Ed6Rhpab
	 0+Wx47IaIqzMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F88D83841;
	Mon, 13 Jan 2025 17:11:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9027D942
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 717CF8132C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s-BZsszixTD7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2025 17:11:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5087181293
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5087181293
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5087181293
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:21 +0000 (UTC)
X-CSE-ConnectionGUID: LIf+UZt9RmWRp7YCbOST6A==
X-CSE-MsgGUID: e1b4oZDNQ3mIeeZf5cpBVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36748872"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36748872"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:21 -0800
X-CSE-ConnectionGUID: Bwk83wc5QlaMycjl3+ZVNA==
X-CSE-MsgGUID: NiOC45iiThWJLh1fdTzPYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104499673"
Received: from jdoman-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.26])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:12 -0800
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
Date: Mon, 13 Jan 2025 10:10:39 -0700
Message-ID: <20250113171042.158123-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250113171042.158123-1-ahmed.zaki@intel.com>
References: <20250113171042.158123-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736788282; x=1768324282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vpXeCCIdYHiRRZ6WOHK0xz78UserjzAMaLDYxFP/Q4M=;
 b=ft3cGO0N8FjcT4GVl/vWPwF/y0EYR5hYTn9hgyz5Pd76HDuGtsqvMXHK
 4Xk7ta1qVtFewpJwGVuUppdcoSjY/NtH9IIyi9PRuk3GDmEmJ+pGGjD8m
 6TLEX1lWAQVxkfqXjD6F415u4eM08fMubiv+DTfewy/OAk5crh2RqWF5y
 PUjh5MWsMt4uvHKPvN4uWsuhzpR4fYzf0dnOWD40qhAm3j2xyEoV7+dyO
 Vu/NkS/03v6TCdFJ7VujR43zGQTVkQ7dShE62KA4hqF1cOutoVuOvH81l
 75wKnMV85dJe9O/PGHGYZjkYHHrKvb5XFh7n7LJyrMNRYChm0oaoCxglo
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ft3cGO0N
Subject: [Intel-wired-lan] [PATCH net-next v5 3/6] net: napi: add CPU
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
 include/linux/netdevice.h | 14 +++++++++++-
 net/core/dev.c            | 46 +++++++++++++++++++++++++++++++++------
 2 files changed, 52 insertions(+), 8 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 6f8b416aa32b..8b31fff8affa 100644
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
@@ -1995,6 +1996,11 @@ enum netdev_reg_state {
  *
  *	@threaded:	napi threaded mode is enabled
  *
+ *	@irq_affinity_auto: driver wants the core to manage the IRQ affinity.
+ *			    Set by netif_napi_set_irq(), then driver must
+ *			    create persistent napi by netif_napi_add_config()
+ *			    and finally bind napi to IRQ (netif_napi_set_irq).
+ *
  *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
  *	                   Set by calling netif_enable_cpu_rmap().
  *
@@ -2405,6 +2411,7 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+	bool			irq_affinity_auto;
 #ifdef CONFIG_RFS_ACCEL
 	bool			rx_cpu_rmap_auto;
 #endif
@@ -2640,6 +2647,11 @@ static inline void netdev_set_ml_priv(struct net_device *dev,
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
index c965d947b33d..1fb850322868 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6776,27 +6776,36 @@ int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
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
 netif_napi_affinity_release(struct kref *ref)
 {
+#ifdef CONFIG_RFS_ACCEL
 	struct napi_struct *napi =
 		container_of(ref, struct napi_struct, notify.kref);
 	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
@@ -6806,8 +6815,10 @@ netif_napi_affinity_release(struct kref *ref)
 
 	rmap->obj[napi->napi_rmap_idx] = NULL;
 	cpu_rmap_put(rmap);
+#endif
 }
 
+#ifdef CONFIG_RFS_ACCEL
 static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 {
 	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
@@ -6816,7 +6827,7 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 	if (!rmap)
 		return -EINVAL;
 
-	napi->notify.notify = netif_irq_cpu_rmap_notify;
+	napi->notify.notify = netif_napi_irq_notify;
 	napi->notify.release = netif_napi_affinity_release;
 	cpu_rmap_get(rmap);
 	rc = cpu_rmap_add(rmap, napi);
@@ -6840,9 +6851,8 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 
 void netif_napi_set_irq(struct napi_struct *napi, int irq)
 {
-#ifdef CONFIG_RFS_ACCEL
 	int rc;
-#endif
+
 	napi->irq = irq;
 
 #ifdef CONFIG_RFS_ACCEL
@@ -6853,8 +6863,18 @@ void netif_napi_set_irq(struct napi_struct *napi, int irq)
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
 
@@ -6863,6 +6883,10 @@ static void napi_restore_config(struct napi_struct *n)
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
@@ -6879,6 +6903,10 @@ static void napi_save_config(struct napi_struct *n)
 	n->config->defer_hard_irqs = n->defer_hard_irqs;
 	n->config->gro_flush_timeout = n->gro_flush_timeout;
 	n->config->irq_suspend_timeout = n->irq_suspend_timeout;
+
+	if (n->irq > 0 && n->dev->irq_affinity_auto)
+		irq_set_affinity_notifier(n->irq, NULL);
+
 	napi_hash_del(n);
 }
 
@@ -11377,7 +11405,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 {
 	struct net_device *dev;
 	size_t napi_config_sz;
-	unsigned int maxqs;
+	unsigned int maxqs, i, numa;
 
 	BUG_ON(strlen(name) >= sizeof(dev->name));
 
@@ -11473,6 +11501,10 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
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

