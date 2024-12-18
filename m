Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D869F6BB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 17:59:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C778406DF;
	Wed, 18 Dec 2024 16:59:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wc_5w-4lm2xS; Wed, 18 Dec 2024 16:59:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61146417A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734541173;
	bh=azY2AX0f08xmdP0G41yJwRf8r7o9Ut3Cogh4UbWzig8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=krJs/RzEy5XnM+o/xVYZd0ocMxFzzB2O50Xm/0+3rcWK1Q/kVe/DTQPVAfDnBdn94
	 q+hgcHyEsmUf8izQvOzV1C8yMc1553wC9frwKb6oMwfA9gYaFU2UusCLXQo0SeF1zl
	 mzwBNv/8lQNg6mrBe+N+G3No6o5YVX1zWpzCqEcfF2uTUlbGypQL5mOaPjRyPg9m1d
	 ISVYOmZ+USEMppFdXFb3KmqB8WFidutWMSW4MBAUyAfAAlYL7qosCw+ZvEMPtrLmr4
	 wUcY3b2wE8n4PM6iExSyiIrhQ7T+VjmrY4uZjXj/Z3AdhV6BbhJ4Y3dyZp+JJlcF9x
	 7rYWNzrSnja6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61146417A1;
	Wed, 18 Dec 2024 16:59:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A4BB6CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9308D6165E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iNWw0eJtCrqF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 16:59:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AFD9A615F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFD9A615F2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AFD9A615F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:30 +0000 (UTC)
X-CSE-ConnectionGUID: a98v9VKEQcmSTOPAHDpkkg==
X-CSE-MsgGUID: cB7693xVTL2gch6jD2clcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46415533"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="46415533"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:30 -0800
X-CSE-ConnectionGUID: q4UprfIvSbC1nKl2eM83VQ==
X-CSE-MsgGUID: XwakriFQT2+ez7o8sMUxdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102531837"
Received: from ldmartin-desk2.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.224])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:24 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Wed, 18 Dec 2024 09:58:39 -0700
Message-ID: <20241218165843.744647-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241218165843.744647-1-ahmed.zaki@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734541170; x=1766077170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uvohYjXV2F2dAriFn/q9+6q/VifOLx3veE1xtuRsoyw=;
 b=G0AvZZByK0R+PTa8Xh51fL3X8JMBt+nk/YurRGJQMnkfR3UGhXGr+pU5
 c2tFsJfCsJRK19IWkh1E/ZQApMAd7cEr9zvkGWHlf5F9EAkumgjg+sddm
 4kA2cPbpvANeTRp9vep5YOrGCiNkMVh4ohVnfVoePzQ3sLWdzj5eNKSDI
 jTIf5dXnmHAEJvFmewuN/NTTVTbvRnogBuywtI7cT+saiSwFRgNTEfrcY
 VJDRLIBEMi6H/sIe6PPT22BFNHl2Eya0UEWCheWTUwiaNZ3V1lwONLIJm
 e8T8YYaaIiyM0bgvu+wTe0faHhAdRnMzYmzpP8LbtmuT4/pE3v9s19hZX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G0AvZZBy
Subject: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
 affinity to napi->config
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
user's setting to the IRQs.

Add CPU affinity mask to napi->config. To delegate the CPU affinity
management to the core, drivers must:
 1 - add a persistent napi config:     netif_napi_add_config()
 2 - bind an IRQ to the napi instance: netif_napi_set_irq() with the new
     flag NAPIF_IRQ_AFFINITY

the core will then make sure to use re-assign affinity to the napi's
IRQ.

The default mask set to all IRQs is all online CPUs.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 include/linux/netdevice.h |  5 +++
 net/core/dev.c            | 66 +++++++++++++++++++++++++++++++++++++--
 2 files changed, 69 insertions(+), 2 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 0df419052434..4fa047fad8fb 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -351,6 +351,7 @@ struct napi_config {
 	u64 gro_flush_timeout;
 	u64 irq_suspend_timeout;
 	u32 defer_hard_irqs;
+	cpumask_t affinity_mask;
 	unsigned int napi_id;
 };
 
@@ -358,12 +359,16 @@ enum {
 #ifdef CONFIG_RFS_ACCEL
 	NAPI_IRQ_ARFS_RMAP,		/* Core handles RMAP updates */
 #endif
+	NAPI_IRQ_AFFINITY,		/* Core manages IRQ affinity */
+	NAPI_IRQ_NORMAP			/* Set by core (internal) */
 };
 
 enum {
 #ifdef CONFIG_RFS_ACCEL
 	NAPIF_IRQ_ARFS_RMAP		= BIT(NAPI_IRQ_ARFS_RMAP),
 #endif
+	NAPIF_IRQ_AFFINITY		= BIT(NAPI_IRQ_AFFINITY),
+	NAPIF_IRQ_NORMAP		= BIT(NAPI_IRQ_NORMAP),
 };
 
 /*
diff --git a/net/core/dev.c b/net/core/dev.c
index 7c3abff48aea..84745cea03a7 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6705,8 +6705,44 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 }
 EXPORT_SYMBOL(netif_queue_set_napi);
 
+static void
+netif_irq_cpu_rmap_notify(struct irq_affinity_notify *notify,
+			  const cpumask_t *mask)
+{
+	struct irq_glue *glue =
+		container_of(notify, struct irq_glue, notify);
+	struct napi_struct *napi = glue->data;
+	unsigned int flags;
+	int rc;
+
+	flags = napi->irq_flags;
+
+	if (napi->config && flags & NAPIF_IRQ_AFFINITY)
+		cpumask_copy(&napi->config->affinity_mask, mask);
+
+#ifdef CONFIG_RFS_ACCEL
+	if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
+		rc = cpu_rmap_update(glue->rmap, glue->index, mask);
+		if (rc)
+			pr_warn("%s: update failed: %d\n",
+				__func__, rc);
+	}
+#endif
+}
+
+static void
+netif_napi_affinity_release(struct kref __always_unused *ref)
+{
+	struct irq_glue *glue =
+		container_of(ref, struct irq_glue, notify.kref);
+
+	kfree(glue);
+}
+
 void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long flags)
 {
+	struct irq_glue *glue = NULL;
+	bool glue_created;
 	int  rc;
 
 	napi->irq = irq;
@@ -6714,15 +6750,29 @@ void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long flags)
 
 #ifdef CONFIG_RFS_ACCEL
 	if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
-		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
+		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq, napi,
+				      netif_irq_cpu_rmap_notify);
 		if (rc) {
 			netdev_warn(napi->dev, "Unable to update ARFS map (%d).\n",
 				    rc);
 			free_irq_cpu_rmap(napi->dev->rx_cpu_rmap);
 			napi->dev->rx_cpu_rmap = NULL;
+		} else {
+			glue_created = true;
 		}
 	}
 #endif
+
+	if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
+		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
+		if (!glue)
+			return;
+		glue->notify.notify = netif_irq_cpu_rmap_notify;
+		glue->notify.release = netif_napi_affinity_release;
+		glue->data = napi;
+		glue->rmap = NULL;
+		napi->irq_flags |= NAPIF_IRQ_NORMAP;
+	}
 }
 EXPORT_SYMBOL(netif_napi_set_irq);
 
@@ -6731,6 +6781,10 @@ static void napi_restore_config(struct napi_struct *n)
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
 	n->gro_flush_timeout = n->config->gro_flush_timeout;
 	n->irq_suspend_timeout = n->config->irq_suspend_timeout;
+
+	if (n->irq > 0 && n->irq_flags & NAPIF_IRQ_AFFINITY)
+		irq_set_affinity(n->irq, &n->config->affinity_mask);
+
 	/* a NAPI ID might be stored in the config, if so use it. if not, use
 	 * napi_hash_add to generate one for us. It will be saved to the config
 	 * in napi_disable.
@@ -6747,6 +6801,11 @@ static void napi_save_config(struct napi_struct *n)
 	n->config->gro_flush_timeout = n->gro_flush_timeout;
 	n->config->irq_suspend_timeout = n->irq_suspend_timeout;
 	n->config->napi_id = n->napi_id;
+
+	if (n->irq > 0 &&
+	    n->irq_flags & (NAPIF_IRQ_AFFINITY | NAPIF_IRQ_NORMAP))
+		irq_set_affinity_notifier(n->irq, NULL);
+
 	napi_hash_del(n);
 }
 
@@ -11211,7 +11270,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 {
 	struct net_device *dev;
 	size_t napi_config_sz;
-	unsigned int maxqs;
+	unsigned int maxqs, i;
 
 	BUG_ON(strlen(name) >= sizeof(dev->name));
 
@@ -11307,6 +11366,9 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 	dev->napi_config = kvzalloc(napi_config_sz, GFP_KERNEL_ACCOUNT);
 	if (!dev->napi_config)
 		goto free_all;
+	for (i = 0; i < maxqs; i++)
+		cpumask_copy(&dev->napi_config[i].affinity_mask,
+			     cpu_online_mask);
 
 	strscpy(dev->name, name);
 	dev->name_assign_type = name_assign_type;
-- 
2.43.0

