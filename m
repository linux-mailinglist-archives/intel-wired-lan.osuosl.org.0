Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51456A15A48
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jan 2025 01:34:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAD4F4244F;
	Sat, 18 Jan 2025 00:34:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FGUFYeX8Lnar; Sat, 18 Jan 2025 00:34:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93BF542479
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737160443;
	bh=kgPAk1KlfMUMSB/XAZ4X1UgyIBVF18E8Lp5dCtLmQ1E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hMMLcGbXRfj2qDtzopfpIvSJv7d3UiUZQKDJnjZJX+/7dnf2GCEnJWCfB1crEysW8
	 UZ347LyFIw1x0l/VzNmKZLEBha6Vs1UXZGyL53bzDDKAAcGrTvF3ARWb7C4GvR8qdu
	 Ayvk9Z61vrvj6xwwP33sPmzEppQ/iLAc8zjew44EZny445kvognHg8UjLMvFtE4E2m
	 qdJ86GeuBqWvtVV42JSM357XFoF7KJ3A1rY6BYQS/BIbW9sF822T8ZRCBtuAZbVftR
	 iqmY1ZTBQ4ZLQOLfYW/t9K/kJ+KfPu8+fmiFZolwKJYczbEnI5snC5m1lFIrKOSmZ/
	 qiW7y7g9l6skw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93BF542479;
	Sat, 18 Jan 2025 00:34:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 583CB69
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 531F84028F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:34:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PLEvn1PEGzpG for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jan 2025 00:34:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 15ADB403C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15ADB403C2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15ADB403C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 00:34:00 +0000 (UTC)
X-CSE-ConnectionGUID: bbqenBkFRF+WLEj1tRQnsA==
X-CSE-MsgGUID: iQiKS5CvRD2k7dlgwj7Rbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37762747"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="37762747"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 16:34:00 -0800
X-CSE-ConnectionGUID: ei/Xv53hQPuIWh85C73N9Q==
X-CSE-MsgGUID: 9tQNCXL7R5eMZO8WtIo2bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106410923"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.139])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 16:33:55 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri, 17 Jan 2025 17:33:32 -0700
Message-ID: <20250118003335.155379-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118003335.155379-1-ahmed.zaki@intel.com>
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737160440; x=1768696440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BprTRnjleXaberJp1VyHs8CqWLOpLtLR1xFrMD/m+SU=;
 b=MkBT0kCjHJLTE28oDE9Bq6ur86vozui75dGc22aIcIbB/uwFegGPHlmq
 vxT7ng4ma3mJanrfJVmifScSGQxpItljWYfr89NydCcuIYQsmW8WgtfSq
 M58Zcoy+5xR5r6yHh9ElK4A9pXvT2zo6aj3djr3L4VJWHlbR2jNj/LF4M
 E8vFTV9b5CFErfVmG7J8ENKO7C8/GrXaTEZ4d0B5FR2O7E7c0rKTASgWq
 IbKCJNz/ygjw6zjRSn90V65ZzHUq6J3NjPQX9CAUF/HIb/hVTBQchP8Vd
 jME1nnyCcPWMDkLG9DVQpr9jsHw/NPFwbIuRhNzDlid4Kl+vjBDI+CzaB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MkBT0kCj
Subject: [Intel-wired-lan] [PATCH net-next v6 2/5] net: napi: add CPU
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
 include/linux/netdevice.h | 14 ++++++++++-
 net/core/dev.c            | 51 +++++++++++++++++++++++++++++----------
 2 files changed, 51 insertions(+), 14 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 98259f19c627..d576e5c91c43 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -351,6 +351,7 @@ struct napi_config {
 	u64 gro_flush_timeout;
 	u64 irq_suspend_timeout;
 	u32 defer_hard_irqs;
+	cpumask_t affinity_mask;
 	unsigned int napi_id;
 };
 
@@ -393,8 +394,8 @@ struct napi_struct {
 	struct list_head	dev_list;
 	struct hlist_node	napi_hash_node;
 	int			irq;
-#ifdef CONFIG_RFS_ACCEL
 	struct irq_affinity_notify notify;
+#ifdef CONFIG_RFS_ACCEL
 	int			napi_rmap_idx;
 #endif
 	int			index;
@@ -1991,6 +1992,11 @@ enum netdev_reg_state {
  *
  *	@threaded:	napi threaded mode is enabled
  *
+ *	@irq_affinity_auto: driver wants the core to manage the IRQ affinity.
+ *			    Set by netif_enable_irq_affinity(), then driver must
+ *			    create persistent napi by netif_napi_add_config()
+ *			    and finally bind napi to IRQ (netif_napi_set_irq).
+ *
  *	@rx_cpu_rmap_auto: driver wants the core to manage the ARFS rmap.
  *	                   Set by calling netif_enable_cpu_rmap().
  *
@@ -2401,6 +2407,7 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+	bool			irq_affinity_auto;
 	bool			rx_cpu_rmap_auto;
 
 	/* priv_flags_slow, ungrouped to save space */
@@ -2653,6 +2660,11 @@ static inline void netdev_set_ml_priv(struct net_device *dev,
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
index dbb63005bc2b..bc82c7f621b3 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6862,24 +6862,31 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
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
 
+	if (napi->config && napi->dev->irq_affinity_auto)
+		cpumask_copy(&napi->config->affinity_mask, mask);
+
+#ifdef CONFIG_RFS_ACCEL
 	if (napi->dev->rx_cpu_rmap_auto) {
 		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
 		if (err)
 			pr_warn("%s: RMAP update failed (%d)\n",
 				__func__, err);
 	}
+#endif
 }
 
+#ifdef CONFIG_RFS_ACCEL
 static void netif_napi_affinity_release(struct kref *ref)
 {
 	struct napi_struct *napi =
@@ -6901,7 +6908,7 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 	if (!rmap)
 		return -EINVAL;
 
-	napi->notify.notify = netif_irq_cpu_rmap_notify;
+	napi->notify.notify = netif_napi_irq_notify;
 	napi->notify.release = netif_napi_affinity_release;
 	cpu_rmap_get(rmap);
 	rc = cpu_rmap_add(rmap, napi);
@@ -6956,6 +6963,10 @@ static void netif_disable_cpu_rmap(struct net_device *dev)
 }
 
 #else
+static void netif_napi_affinity_release(struct kref *ref)
+{
+}
+
 static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 {
 	return 0;
@@ -6976,23 +6987,28 @@ void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
 {
 	int rc;
 
-	if (!napi->dev->rx_cpu_rmap_auto)
-		goto out;
-
-	/* Remove existing rmap entries */
-	if (napi->irq != irq && napi->irq > 0)
+	/* Remove existing resources */
+	if ((napi->dev->rx_cpu_rmap_auto || napi->dev->irq_affinity_auto) &&
+	    napi->irq > 0 && napi->irq != irq)
 		irq_set_affinity_notifier(napi->irq, NULL);
 
-	if (irq > 0) {
+	if (irq > 0 && napi->dev->rx_cpu_rmap_auto) {
 		rc = napi_irq_cpu_rmap_add(napi, irq);
 		if (rc) {
 			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
 				    rc);
 			netif_disable_cpu_rmap(napi->dev);
 		}
+	} else if (irq > 0 && napi->config && napi->dev->irq_affinity_auto) {
+		napi->notify.notify = netif_napi_irq_notify;
+		napi->notify.release = netif_napi_affinity_release;
+
+		rc = irq_set_affinity_notifier(irq, &napi->notify);
+		if (rc)
+			netdev_warn(napi->dev, "Unable to set IRQ notifier (%d)\n",
+				    rc);
 	}
 
-out:
 	napi->irq = irq;
 }
 EXPORT_SYMBOL(netif_napi_set_irq_locked);
@@ -7002,6 +7018,10 @@ static void napi_restore_config(struct napi_struct *n)
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
@@ -7126,7 +7146,8 @@ void napi_disable_locked(struct napi_struct *n)
 	else
 		napi_hash_del(n);
 
-	if (n->irq > 0 && n->dev->rx_cpu_rmap_auto)
+	if (n->irq > 0 &&
+	    (n->dev->irq_affinity_auto || n->dev->rx_cpu_rmap_auto))
 		irq_set_affinity_notifier(n->irq, NULL);
 
 	clear_bit(NAPI_STATE_DISABLE, &n->state);
@@ -11585,7 +11606,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 {
 	struct net_device *dev;
 	size_t napi_config_sz;
-	unsigned int maxqs;
+	unsigned int maxqs, i, numa;
 
 	BUG_ON(strlen(name) >= sizeof(dev->name));
 
@@ -11681,6 +11702,10 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
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

