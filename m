Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5970FA27E04
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 23:06:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7557B40916;
	Tue,  4 Feb 2025 22:06:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7b0yrEiCuV-k; Tue,  4 Feb 2025 22:06:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C4334096A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738706812;
	bh=6NJey+sLHWvW2qk/rE5UaxxU23qfjErB30NC6VpRyWk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HxdrOpEgDlIzyXATwYiqF+L7wB+cz6mbIIooVIMrmFC8skK+TRLTADmcRx2W1ddOr
	 QDEj2IRfRttl9QcLpXm9qiaNyB9wnKBwOdhF1TgVaVpjTvaImMCnyvFjSKkutp+eAf
	 kSWdQt5naa3MASNjyIbAgarJNxIwCWMwVktES2w7gmWzfZLHYadqPen1yq7BUsfynn
	 jyJTC/OHo87RrU6Y9GNDWXfYhZ5hY9li8Mpo5BDUoeT6ZJubDv/gYcj+MIPuGOKTpI
	 Rg+nbCs18N7xpxZFkUVXoKHZJQHRw54dQN+4Vj8lSDivZ2JEJ704s1Og4uiZiM+aoe
	 kz0hbwAvIgdOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C4334096A;
	Tue,  4 Feb 2025 22:06:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C377B12A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE9DD605C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:06:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X91dljK5cnf9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 22:06:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 850FB60D79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 850FB60D79
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 850FB60D79
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 22:06:49 +0000 (UTC)
X-CSE-ConnectionGUID: dxeND6aiTIaaT01UEm2zZg==
X-CSE-MsgGUID: UF4jMb7vRGm9VB8VSMotbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43003406"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="43003406"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:06:49 -0800
X-CSE-ConnectionGUID: XzMW3Yg3RpyyvaWMwc8zyA==
X-CSE-MsgGUID: GHIadDHfSkGnhUH32MzyBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114771283"
Received: from dwoodwor-mobl2.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.39])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:06:43 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Tue,  4 Feb 2025 15:06:19 -0700
Message-ID: <20250204220622.156061-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204220622.156061-1-ahmed.zaki@intel.com>
References: <20250204220622.156061-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738706809; x=1770242809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UFc0Qulw80BJ5SkC5dz3Tv7Oy5UPkCqEDvmRkS6R71g=;
 b=n9jRpMm6UekW59RQmvzsPCtFRq3fvclhgWi4umALXSMmYRHSeu1Rzw4W
 /OOwTNTLO769aMIgyNH4vJQWbGSo48c25IdVGDjSX9TMjp/6os2FsC2ED
 FrkPlWv28bDp95D4JOIa9xS9DMmP4KzFh+LsEjg8mvKpWCjLq3aCEgdPY
 JNm7OvyZ06Gz7YG9j1G0e4fxIg3HBC+8ArYPN5sY2XcGJLt0PKW7oNKPm
 87ktvmNK85BznmmDtayL9QBvzvOiGWxvWVQW2qpf2/B5E49HgmhXrJH+K
 OlQYuH8GwnE//7F8ErkNOFUqluQOVwegTMfgxqxzR7PCneqoC0xIK4lZl
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n9jRpMm6
Subject: [Intel-wired-lan] [PATCH net-next v7 2/5] net: napi: add CPU
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
 include/linux/netdevice.h | 14 +++++++--
 net/core/dev.c            | 62 +++++++++++++++++++++++++++++++--------
 2 files changed, 61 insertions(+), 15 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 0d19fa98b65e..0436605ee607 100644
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
@@ -1992,6 +1991,11 @@ enum netdev_reg_state {
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
@@ -2402,6 +2406,7 @@ struct net_device {
 	struct lock_class_key	*qdisc_tx_busylock;
 	bool			proto_down;
 	bool			threaded;
+	bool			irq_affinity_auto;
 	bool			rx_cpu_rmap_auto;
 
 	/* priv_flags_slow, ungrouped to save space */
@@ -2662,6 +2667,11 @@ static inline void netdev_set_ml_priv(struct net_device *dev,
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
index 33e84477c9c2..4cde7ac31e74 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6866,28 +6866,39 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
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
@@ -6898,7 +6909,7 @@ static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
 	int rc;
 
-	napi->notify.notify = netif_irq_cpu_rmap_notify;
+	napi->notify.notify = netif_napi_irq_notify;
 	napi->notify.release = netif_napi_affinity_release;
 	cpu_rmap_get(rmap);
 	rc = cpu_rmap_add(rmap, napi);
@@ -6948,6 +6959,10 @@ static void netif_del_cpu_rmap(struct net_device *dev)
 }
 
 #else
+static void netif_napi_affinity_release(struct kref *ref)
+{
+}
+
 static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
 {
 	return 0;
@@ -6968,17 +6983,28 @@ void netif_napi_set_irq_locked(struct napi_struct *napi, int irq)
 {
 	int rc;
 
-	/* Remove existing rmap entries */
-	if (napi->dev->rx_cpu_rmap_auto &&
+	/* Remove existing resources */
+	if ((napi->dev->rx_cpu_rmap_auto || napi->dev->irq_affinity_auto) &&
 	    napi->irq != irq && napi->irq > 0)
 		irq_set_affinity_notifier(napi->irq, NULL);
 
 	napi->irq = irq;
-	if (irq > 0) {
+	if (irq < 0)
+		return;
+
+	if (napi->dev->rx_cpu_rmap_auto) {
 		rc = napi_irq_cpu_rmap_add(napi, irq);
 		if (rc)
 			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
 				    rc);
+	} else if (napi->config && napi->dev->irq_affinity_auto) {
+		napi->notify.notify = netif_napi_irq_notify;
+		napi->notify.release = netif_napi_affinity_release;
+
+		rc = irq_set_affinity_notifier(irq, &napi->notify);
+		if (rc)
+			netdev_warn(napi->dev, "Unable to set IRQ notifier (%d)\n",
+				    rc);
 	}
 }
 EXPORT_SYMBOL(netif_napi_set_irq_locked);
@@ -6988,6 +7014,10 @@ static void napi_restore_config(struct napi_struct *n)
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
@@ -7112,7 +7142,8 @@ void napi_disable_locked(struct napi_struct *n)
 	else
 		napi_hash_del(n);
 
-	if (n->irq > 0 && n->dev->rx_cpu_rmap_auto)
+	if (n->irq > 0 &&
+	    (n->dev->irq_affinity_auto || n->dev->rx_cpu_rmap_auto))
 		irq_set_affinity_notifier(n->irq, NULL);
 
 	clear_bit(NAPI_STATE_DISABLE, &n->state);
@@ -11550,9 +11581,9 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 		void (*setup)(struct net_device *),
 		unsigned int txqs, unsigned int rxqs)
 {
+	unsigned int maxqs, i, numa;
 	struct net_device *dev;
 	size_t napi_config_sz;
-	unsigned int maxqs;
 
 	BUG_ON(strlen(name) >= sizeof(dev->name));
 
@@ -11654,6 +11685,11 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
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

