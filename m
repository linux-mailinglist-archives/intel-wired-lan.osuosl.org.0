Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E26A01156
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 01:43:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4862408E6;
	Sat,  4 Jan 2025 00:43:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PniM1wXrlZ08; Sat,  4 Jan 2025 00:43:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A284A408DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735951423;
	bh=MDk9J2KDRomJFlhDKtY75bQw82wWNDoym928ShLzrBk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j6sDh924/9UXpFkZMuchv1xsxNiEWdC132bMi9ScuX8L7VjGIZD0qnk0f5rgNq0Wd
	 h6KQ20xE58INkfH64OYHcflAJ9Ffn0I/TWRBuEGwTl5dQKceY3UqVFJ5HeQtnIleCo
	 4s4FW9gEz2CVycppp/ykxkqLkMJipMvMNFygHtMk4OYY7F30j2I7PFkwW7836H/cC8
	 pVCcDNMQlgu7mdeAZLQSKxCrP/DuCT7CQbwTbfPnMC31J8Aq3nx+vYr9pias6Cgbi/
	 pOJaQBkbRpFwQEOJi4hv07WlcoqtoskUDJk7LGQKo/RF18g1q6ZSCCUamhiAO+/zXc
	 01axrtyqOKCuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A284A408DE;
	Sat,  4 Jan 2025 00:43:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 36C6BE0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 253CA80C0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w3UAEDjD_9ke for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 00:43:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F46580BFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F46580BFD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F46580BFD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:40 +0000 (UTC)
X-CSE-ConnectionGUID: 3O00giZISfmYvTsiqF7BSQ==
X-CSE-MsgGUID: 5s7OZoILSXid9UdLq72T3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36075963"
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="36075963"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:40 -0800
X-CSE-ConnectionGUID: I6JNsB9XSruJTlNgoWNa2A==
X-CSE-MsgGUID: Coq2gHVtQ8y7XDL5QTxCJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="106879723"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.48])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:35 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  3 Jan 2025 17:43:10 -0700
Message-ID: <20250104004314.208259-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250104004314.208259-1-ahmed.zaki@intel.com>
References: <20250104004314.208259-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735951420; x=1767487420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HI8G9zlM9ac55M1ArnLxga3AbzsEvWLz2RXGTpNbCg8=;
 b=Ubqc70z4Qb//A1PU/oURrF92fGecfPQqbc5jR1k8ZQLNXQJApZ/rfpIr
 YF7VidK7CdOuVG1C6+LNQ23fVKiAHH9CcjHELJBsnvapsaapXu4tMnLkF
 gzXhpDJVKi6A1B+Sf9WjPFrjtZUq3JNOK3eFO3A0DdEN4p1yJd5z4PGQC
 20DILWLhJlhUxiLwKPYM5SxdRKiiF8DGVfVZWiiuNXOl2pphQPMQwXRub
 3J22Rvy7Du5iDQREGh4/rcwFZWalWpZDFonuh170gOG1PMD9bBzp+8VOa
 pAuaNW+Lxg8Qd8jlt1+AN9sV43ofyk1ZIJ9N+znRGitT8GKgKKSSeavUN
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ubqc70z4
Subject: [Intel-wired-lan] [PATCH net-next v3 2/6] net: napi: add internal
 ARFS rmap management
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

For drivers using the netif_enable_cpu_rmap(), move the IRQ rmap notifier
inside the napi_struct.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 include/linux/cpu_rmap.h  |  1 +
 include/linux/netdevice.h |  4 +++
 lib/cpu_rmap.c            |  2 +-
 net/core/dev.c            | 67 +++++++++++++++++++++++++++++++++++++--
 4 files changed, 71 insertions(+), 3 deletions(-)

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
index 7adea7088e08..b0769f0a3795 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -392,6 +392,10 @@ struct napi_struct {
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
index 4ebe8865833e..92b7a9d4c9b6 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6708,7 +6708,20 @@ EXPORT_SYMBOL(netif_queue_set_napi);
 #ifdef CONFIG_RFS_ACCEL
 static void netif_disable_cpu_rmap(struct net_device *dev)
 {
-	free_irq_cpu_rmap(dev->rx_cpu_rmap);
+	struct cpu_rmap *rmap = dev->rx_cpu_rmap;
+	struct napi_struct *napi;
+	u16 index;
+
+	if (!rmap || !dev->rx_cpu_rmap_auto)
+		return;
+
+	for (index = 0; index < rmap->size; index++) {
+		napi = rmap->obj[index];
+		if (napi && napi->irq > 0)
+			irq_set_affinity_notifier(napi->irq, NULL);
+	}
+
+	cpu_rmap_put(rmap);
 	dev->rx_cpu_rmap = NULL;
 	dev->rx_cpu_rmap_auto = false;
 }
@@ -6723,6 +6736,56 @@ int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
 	return 0;
 }
 EXPORT_SYMBOL(netif_enable_cpu_rmap);
+
+static void
+netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
+			  const cpumask_t *mask)
+{
+	struct napi_struct *napi =
+		container_of(notify, struct napi_struct, notify);
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+	int err;
+
+	if (rmap && napi->dev->rx_cpu_rmap_auto) {
+		err = cpu_rmap_update(rmap, napi->napi_rmap_idx, mask);
+		if (err)
+			pr_warn("%s: RMAP update failed (%d)\n",
+				__func__, err);
+	}
+}
+
+static void
+netif_napi_affinity_release(struct kref __always_unused *ref)
+{
+}
+
+static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
+{
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+	int rc;
+
+	if (!napi || !rmap)
+		return -EINVAL;
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
+err_add:
+	cpu_rmap_put(rmap);
+	return rc;
+}
 #endif
 
 void netif_napi_set_irq(struct napi_struct *napi, int irq)
@@ -6734,7 +6797,7 @@ void netif_napi_set_irq(struct napi_struct *napi, int irq)
 
 #ifdef CONFIG_RFS_ACCEL
 	if (napi->dev->rx_cpu_rmap && napi->dev->rx_cpu_rmap_auto) {
-		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
+		rc = napi_irq_cpu_rmap_add(napi, irq);
 		if (rc) {
 			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
 				    rc);
-- 
2.43.0

