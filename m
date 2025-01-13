Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C92A0BE77
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2025 18:11:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7F8960838;
	Mon, 13 Jan 2025 17:11:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O1XkyVwTWc6V; Mon, 13 Jan 2025 17:11:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1935760829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736788277;
	bh=vMrNM+6rJ9eJnhjsPtudFAOnawb40YTERWYmnWPNrt8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bedGpxuLo4HcHXHZXZ75/qXvX/6K3Q2x5j8G87ueEgEcpYVIcQif8IXcFxuUxFQ1i
	 hb8i4UpYqmjRVt61N3ZuVMTWNIGZ4+C86mSmYmVTFa8nN21UXpG7T26bKFOgOuQ7RW
	 Jc6huf9nJDU3u3NOj1GSCXg+gywaV/LJJQlzKBNjq04M+dJgq5bNavRz5q5ex50i1D
	 Ssud12huLepPrmnRFVGl6moeOB3wCnHshF2Zo61Uul/Ip78h3xkl/fDYpRR45nu/2W
	 dnMo7UZfMhezqTa/nEw4zzOJh6dyxAqzIbRkQHdEehyrQlRhuao2bP+iyXkMAdhaLV
	 wN05M9TqfMX7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1935760829;
	Mon, 13 Jan 2025 17:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2583D942
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3004405B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XZ-Kv3OKQLDI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2025 17:11:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C4CC740530
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4CC740530
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4CC740530
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:13 +0000 (UTC)
X-CSE-ConnectionGUID: wvjAJVFeRcSrfxlZguZ3CQ==
X-CSE-MsgGUID: LPjXlo3qRuudzhSJbrviAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36748848"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36748848"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:13 -0800
X-CSE-ConnectionGUID: 3X7BnHDiSKO32oRDwpLDyA==
X-CSE-MsgGUID: nzR8h5hpSsmxeZvVlzAqTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104499648"
Received: from jdoman-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.26])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:05 -0800
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
Date: Mon, 13 Jan 2025 10:10:38 -0700
Message-ID: <20250113171042.158123-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250113171042.158123-1-ahmed.zaki@intel.com>
References: <20250113171042.158123-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736788274; x=1768324274;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M1kBFaCRQrGgECULS3Q+cacd5kwzkoj1IfpHJOo69p0=;
 b=HtfjFXCeb25+RjiMRxgDTN+IZg0ebd2pQAaZX6QMa0QhrmyDTTwGIGGZ
 p/tS4eCl4iHo/UqoI8OrsxF4sWbnOttV2ykGKMEtAmqzBII97HBVrIJTQ
 8I4hrRGlocsJx+NhK222gO9Vuk7ea82bJD7OgfUi1c6cdBSeHtzL+joVM
 D4cupRNAuG5U4RWRAy2i2OyUc+vnG7YuSP+HBx32zWht4Kxb4v2bK1Uu0
 TLa7xQNMSbRRGa9A1TB1DqUIE9ASdkGbc1P5lfGH2dNYSf7KE5QpEGJgJ
 FUc6apVhK4QUIpICMB9wahXSpRmbk1m8QAjFyDpJwDIIBe5nB1/vBDnW1
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HtfjFXCe
Subject: [Intel-wired-lan] [PATCH net-next v5 2/6] net: napi: add internal
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
 include/linux/netdevice.h |  4 ++
 lib/cpu_rmap.c            |  2 +-
 net/core/dev.c            | 77 ++++++++++++++++++++++++++++++++++++++-
 4 files changed, 81 insertions(+), 3 deletions(-)

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
index 7e95e9ee36dd..6f8b416aa32b 100644
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
index 3ee7a514dca8..c965d947b33d 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6748,7 +6748,20 @@ EXPORT_SYMBOL(netif_queue_set_napi);
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
@@ -6763,6 +6776,66 @@ int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
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
+	if (!rmap || !napi->dev->rx_cpu_rmap_auto)
+		return;
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
+	if (!rmap)
+		return -EINVAL;
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
@@ -6774,7 +6847,7 @@ void netif_napi_set_irq(struct napi_struct *napi, int irq)
 
 #ifdef CONFIG_RFS_ACCEL
 	if (napi->dev->rx_cpu_rmap && napi->dev->rx_cpu_rmap_auto) {
-		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
+		rc = napi_irq_cpu_rmap_add(napi, irq);
 		if (rc) {
 			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
 				    rc);
-- 
2.43.0

