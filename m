Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F0D9EA3A2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 01:26:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E273D6079A;
	Tue, 10 Dec 2024 00:26:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UX7W8IeyEAyU; Tue, 10 Dec 2024 00:26:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FBF9607A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733790414;
	bh=5zE7r8CFUcygUVomKQjosXsaDifd3a5h3oh2MUjl5cM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N3gtLvuLLbF7wblGG076wVUuLonN7mgr+KrJxiSMaAqTZsgF4yadNnZMTEB7MFPD9
	 CN9BQndib6yQ1BQBAXWkkVQZoCX3qlvYACKdHq6ie6hpJX3pB7oKxTagBO2li2foZZ
	 C3VhrK25q4SCAk8KLA1XI/iBu5yGz58Qy+ywtSixFX47EuQJkCp6qguGNSKSvK0npL
	 nzABHVb3MhXH4TYRzcLvKvRyFRaRLF7V2gpuAmrUCUHXFbI1VkoTtABRcBvAqvczaf
	 hTCDXLDJtkv2RpjwoTt5DzXiZ8CawlPYyKwjzpMyCGR/EiZhY2o//ML32U0+qk/0sP
	 DgBCYuxbDUOzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FBF9607A6;
	Tue, 10 Dec 2024 00:26:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E5FC7ED2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C679540136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlf915LIOZOR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 00:26:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA26C400FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA26C400FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA26C400FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:51 +0000 (UTC)
X-CSE-ConnectionGUID: Q+81zHbmTtKujc4vT1kzCw==
X-CSE-MsgGUID: CeT+r5uKQHGWNpEHB1hLXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44791422"
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="44791422"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:51 -0800
X-CSE-ConnectionGUID: JHB7iXTCQaqjnahIYjBA4Q==
X-CSE-MsgGUID: GHocjKX0QGS5knfVNq/sng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="126132117"
Received: from cmdeoliv-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:47 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon,  9 Dec 2024 17:26:22 -0700
Message-ID: <20241210002626.366878-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241210002626.366878-1-ahmed.zaki@intel.com>
References: <20241210002626.366878-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733790412; x=1765326412;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yqJgWOglJ0MBm8Mx+T+NGWfGIRW65rXSvd5SkBr5/0M=;
 b=WwikU7OZlDq6qj41osavrpKXeMC0RXA+gc6kS8F52g+hNcnTX2M0XMQ8
 kphvhmUG7AGrgAGavSXN/djX6Jv2iQktv2OLQu29TanLE0OVSU+5ZATDL
 RgzLJImsZm4Nbsygv43WDLpyTdV2goPiNFQKH3uf/7ZtHpON1afXQMINX
 msBhfMfXV6Gy2fXLuUcWDWHHXOqE2wRx78451bKeJBnFYHcxG7iWWwOMq
 cxYTHzpYtK0LMURkmDGPH8H7Uf71Q5xxc4KARYLdWIv73KKw0Obf4wTaW
 +IRlmeHkbRibfu5Jt+uj8wP4mMNJip7PqznbU2dpUBXsuEXg9YRaamft9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WwikU7OZ
Subject: [Intel-wired-lan] [PATCH v1 net-next 2/6] net: napi: add CPU
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

A common task for most drivers is to remember the user's CPU affinity to
its IRQs. On each netdev reset, the driver must then re-assign the
user's setting to the IRQs.

Add CPU affinity mask to napi->config. To delegate the CPU affinity
management to the core, drivers must:
 1 - add a persistent napi config:     netif_napi_add_config()
 2 - bind an IRQ to the napi instance: netif_napi_set_irq()

the core will then make sure to use re-assign affinity to the napi's
IRQ.

The default mask set to all IRQs is all online CPUs.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 include/linux/netdevice.h |  6 ++++++
 net/core/dev.c            | 31 ++++++++++++++++++++++++++++++-
 2 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index b598de335d26..9bf91c3aca8d 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -350,9 +350,14 @@ struct napi_config {
 	u64 gro_flush_timeout;
 	u64 irq_suspend_timeout;
 	u32 defer_hard_irqs;
+	cpumask_t affinity_mask;
 	unsigned int napi_id;
 };
 
+enum {
+	NAPIF_F_IRQ_AFFINITY		= BIT(0)
+};
+
 /*
  * Structure for NAPI scheduling similar to tasklet but with weighting
  */
@@ -394,6 +399,7 @@ struct napi_struct {
 	unsigned long		irq_flags;
 	int			index;
 	struct napi_config	*config;
+	struct irq_affinity_notify affinity_notify;
 };
 
 enum {
diff --git a/net/core/dev.c b/net/core/dev.c
index 6ef9eb401fb2..778ba27d2b83 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6699,11 +6699,35 @@ void netif_queue_set_napi(struct net_device *dev, unsigned int queue_index,
 }
 EXPORT_SYMBOL(netif_queue_set_napi);
 
+static void
+netif_napi_affinity_notify(struct irq_affinity_notify *notify,
+			   const cpumask_t *mask)
+{
+	struct napi_struct *napi =
+		container_of(notify, struct napi_struct, affinity_notify);
+
+	if (napi->config)
+		cpumask_copy(&napi->config->affinity_mask, mask);
+}
+
+static void
+netif_napi_affinity_release(struct kref __always_unused *ref)
+{
+}
+
 static void napi_restore_config(struct napi_struct *n)
 {
 	n->defer_hard_irqs = n->config->defer_hard_irqs;
 	n->gro_flush_timeout = n->config->gro_flush_timeout;
 	n->irq_suspend_timeout = n->config->irq_suspend_timeout;
+
+	if (n->irq > 0 && n->irq_flags & NAPIF_F_IRQ_AFFINITY) {
+		n->affinity_notify.notify = netif_napi_affinity_notify;
+		n->affinity_notify.release = netif_napi_affinity_release;
+		irq_set_affinity_notifier(n->irq, &n->affinity_notify);
+		irq_set_affinity(n->irq, &n->config->affinity_mask);
+	}
+
 	/* a NAPI ID might be stored in the config, if so use it. if not, use
 	 * napi_hash_add to generate one for us. It will be saved to the config
 	 * in napi_disable.
@@ -6720,6 +6744,8 @@ static void napi_save_config(struct napi_struct *n)
 	n->config->gro_flush_timeout = n->gro_flush_timeout;
 	n->config->irq_suspend_timeout = n->irq_suspend_timeout;
 	n->config->napi_id = n->napi_id;
+	if (n->irq > 0 && n->irq_flags & NAPIF_F_IRQ_AFFINITY)
+		irq_set_affinity_notifier(n->irq, NULL);
 	napi_hash_del(n);
 }
 
@@ -11184,7 +11210,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 {
 	struct net_device *dev;
 	size_t napi_config_sz;
-	unsigned int maxqs;
+	unsigned int maxqs, i;
 
 	BUG_ON(strlen(name) >= sizeof(dev->name));
 
@@ -11280,6 +11306,9 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 	dev->napi_config = kvzalloc(napi_config_sz, GFP_KERNEL_ACCOUNT);
 	if (!dev->napi_config)
 		goto free_all;
+	for (i = 0; i < maxqs; i++)
+		cpumask_copy(&dev->napi_config[i].affinity_mask,
+			     cpu_online_mask);
 
 	strscpy(dev->name, name);
 	dev->name_assign_type = name_assign_type;
-- 
2.47.0

