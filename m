Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D76A6A08382
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 00:31:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8ECC8408A3;
	Thu,  9 Jan 2025 23:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JdEutK-D4SHP; Thu,  9 Jan 2025 23:31:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE2584089D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736465497;
	bh=TJoKMZOsgXx0kAzBVYZR1fvIq/cbfeGcte4UJtI+FB4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mDt7jC23DctOLodrcl5w8KPM+u+L33pSSSx7ICmMUkJOGQEimeXzh4sKklBZgJ/pu
	 DhjP2CvG5yEh4mujR4rTc0G6f9iEqH/mkl/Mdsx8y8IDZ5tUNiMNUER/Qfk8qGncrP
	 1sxwwmuT9EurP9Wf4n/bmdqdg4+UtQy4XjozYQI/xCPI7PHS4Yv0idlgRnF9FOIAen
	 YPIGbbPyvCFc7dLS1Lx2cMQQ7/T9VXTI2jakVQLyLAXIehBOza9r2k0DYty5/mzuvQ
	 NWEwPoPBV90cjP7mHr7DFblnFukUUFizhhIMm2f1gg4HZAWzTdGJbd0qEEwcPXsFMX
	 ykmatPsiF8xEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE2584089D;
	Thu,  9 Jan 2025 23:31:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 44321942
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3080340FA2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tDLsTDP6b-iR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 23:31:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 08F0240F93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08F0240F93
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08F0240F93
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 23:31:33 +0000 (UTC)
X-CSE-ConnectionGUID: PSduZRdHQju0j+MjgJAiPQ==
X-CSE-MsgGUID: ofSAEbqRQD2+brO7ao6IbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="47245129"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="47245129"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:34 -0800
X-CSE-ConnectionGUID: NL+1q0YYTsip/tdcKSLKPQ==
X-CSE-MsgGUID: UUFBbTB2RJiba+XfUHk2AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="134399007"
Received: from kinlongk-mobl1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.128])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 15:31:28 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, kalesh-anakkur.purayil@broadcom.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Thu,  9 Jan 2025 16:31:03 -0700
Message-ID: <20250109233107.17519-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109233107.17519-1-ahmed.zaki@intel.com>
References: <20250109233107.17519-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736465495; x=1768001495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9STKZR++v1K6aFKrRxR2yATVX5LFBPD1PuzLbyW22Cc=;
 b=hMPZXfF6pxQFXH0L+PuW4DlYYG2jlkthdMR8iKFlYBB3P1ecdaX0ih/Q
 TyoamSXXs0Uam51w2GQAwdscEh4gRNec3hKnm4eAxljvMlC1fXy6Apynt
 gs/irZ5sYoBKkFYl+87TpQsMh4ICu6PvwsL1jVh5rzRnxYy2Gx9LARBII
 Lqi7nfroBVS+EFY/gDoJKVmUQzl056dJc92lGWmF+oVIdMZq1urGHdMw7
 S13AtuDrM7OgRXKvWbYLorjBqn+xWVNTIqAICwKybYRvo068lOlahOLzI
 LVspONrFSFToFXICbZ66OSUvHhEnldq1o71L9KFtJRCArVWh4jbg48VEE
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hMPZXfF6
Subject: [Intel-wired-lan] [PATCH net-next v4 2/6] net: napi: add internal
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
 net/core/dev.c            | 73 +++++++++++++++++++++++++++++++++++++--
 4 files changed, 77 insertions(+), 3 deletions(-)

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
index acf20191e114..c789218cca5d 100644
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
index 8373e4cf56d8..1d4378962857 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6733,7 +6733,20 @@ EXPORT_SYMBOL(netif_queue_set_napi);
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
@@ -6748,6 +6761,62 @@ int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
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
+netif_napi_affinity_release(struct kref *ref)
+{
+	struct napi_struct *napi =
+		container_of(ref, struct napi_struct, notify.kref);
+	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
+
+	rmap->obj[napi->napi_rmap_idx] = NULL;
+	cpu_rmap_put(rmap);
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
@@ -6759,7 +6828,7 @@ void netif_napi_set_irq(struct napi_struct *napi, int irq)
 
 #ifdef CONFIG_RFS_ACCEL
 	if (napi->dev->rx_cpu_rmap && napi->dev->rx_cpu_rmap_auto) {
-		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
+		rc = napi_irq_cpu_rmap_add(napi, irq);
 		if (rc) {
 			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
 				    rc);
-- 
2.43.0

