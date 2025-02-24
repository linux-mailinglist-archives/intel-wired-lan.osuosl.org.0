Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76631A430AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 00:22:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3464340969;
	Mon, 24 Feb 2025 23:22:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZwOK8tbKdc0; Mon, 24 Feb 2025 23:22:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5867D40B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740439377;
	bh=B0N9iEiVk4CTUAngiWxwvEPwpEgI9SwGdKQeufsztsQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZLvBZ2v8dx/mr/M3We3TJ5HGT7ogpLFds33rikEG5tInNtUR/T7zpy35ORP/HopVk
	 /97PXblS7KPDVQ1cbiHo5ByUSyGM41EvPZxEH2+D17AxE+lPncaI8KtZrKmZ0oMuOs
	 vx2heIiHm/+RJOPRdyC/KiW3VLLrc/UcVjRNqCc2LeNxQe/dPUScl725DDs7loN1gP
	 UAuBt3TaX1dkuOqi90m/6CudLLG05I9n5WUZEXACEqjRibgbO/mk4VTGXSgsNvx1lg
	 l2eoAgLvoombGB1Ub2xtFyLeR0WT57qkpfBBMo46c6XQzXCp5iDgGGlwHwOIEUsTs+
	 +ppT8VzZSetVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5867D40B3A;
	Mon, 24 Feb 2025 23:22:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 80AA194E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59AFA80EAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OxugJ15-kaKe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 23:22:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7CB9E80F66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CB9E80F66
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CB9E80F66
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:53 +0000 (UTC)
X-CSE-ConnectionGUID: z4BSNACaRHWSvRw80Tq/EQ==
X-CSE-MsgGUID: ai+SUOCETeGcly0KRx2ZMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40406648"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40406648"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:22:53 -0800
X-CSE-ConnectionGUID: Q1o1dBEaTsGcFBKM0zzBjQ==
X-CSE-MsgGUID: oqbw88BhRnySdvNnFULF6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="115997787"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.244.43])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:22:46 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, Ahmed Zaki <ahmed.zaki@intel.com>,
 David Arinzon <darinzon@amazon.com>
Date: Mon, 24 Feb 2025 16:22:23 -0700
Message-ID: <20250224232228.990783-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250224232228.990783-1-ahmed.zaki@intel.com>
References: <20250224232228.990783-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740439374; x=1771975374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W3fPwahZBmhefKb6ZWdykoKfhNI+QJZyOsBRqs7FwmM=;
 b=Ib/1xm3c66IbWJzM4flPhCtUo+KcO+14CZuozQFns9Yagqhd4CxYsl7s
 79h9uJXShF9oTa1WPjiGzAf6iaDAXEfSCyk0goghh4F/o80zTxcI9kq9a
 Zls9Ws7geykIHuxpUy0txhD8jZTmkA7sX/mBmRysZ0s8s3f0jibVuZmfZ
 /9Xo2ZUcy2q/RijQFUq7lOQkOxZogopw/VuOrQ277ih0fRoFHuJP/Q/m4
 vUFhWdiBosChX9X4ZVurYxsr7LqcqtK2c7nzlUgcjuCKIFEaXMYciYrdJ
 ngesbzFBGNMusW/6d0Mh8SEOHnd8LXNSFn/tHLIwdsr1yJ8jAeplGE4TM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ib/1xm3c
Subject: [Intel-wired-lan] [PATCH net-next v9 2/6] net: ena: use napi's aRFS
 rmap notifers
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

Use the core's rmap notifiers and delete our own.

Acked-by: David Arinzon <darinzon@amazon.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/amazon/ena/ena_netdev.c | 43 +-------------------
 1 file changed, 1 insertion(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c b/drivers/net/ethernet/amazon/ena/ena_netdev.c
index c1295dfad0d0..6aab85a7c60a 100644
--- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
+++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
@@ -5,9 +5,6 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
-#ifdef CONFIG_RFS_ACCEL
-#include <linux/cpu_rmap.h>
-#endif /* CONFIG_RFS_ACCEL */
 #include <linux/ethtool.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
@@ -162,30 +159,6 @@ int ena_xmit_common(struct ena_adapter *adapter,
 	return 0;
 }
 
-static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter)
-{
-#ifdef CONFIG_RFS_ACCEL
-	u32 i;
-	int rc;
-
-	adapter->netdev->rx_cpu_rmap = alloc_irq_cpu_rmap(adapter->num_io_queues);
-	if (!adapter->netdev->rx_cpu_rmap)
-		return -ENOMEM;
-	for (i = 0; i < adapter->num_io_queues; i++) {
-		int irq_idx = ENA_IO_IRQ_IDX(i);
-
-		rc = irq_cpu_rmap_add(adapter->netdev->rx_cpu_rmap,
-				      pci_irq_vector(adapter->pdev, irq_idx));
-		if (rc) {
-			free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
-			adapter->netdev->rx_cpu_rmap = NULL;
-			return rc;
-		}
-	}
-#endif /* CONFIG_RFS_ACCEL */
-	return 0;
-}
-
 static void ena_init_io_rings_common(struct ena_adapter *adapter,
 				     struct ena_ring *ring, u16 qid)
 {
@@ -1596,7 +1569,7 @@ static int ena_enable_msix(struct ena_adapter *adapter)
 		adapter->num_io_queues = irq_cnt - ENA_ADMIN_MSIX_VEC;
 	}
 
-	if (ena_init_rx_cpu_rmap(adapter))
+	if (netif_enable_cpu_rmap(adapter->netdev, adapter->num_io_queues))
 		netif_warn(adapter, probe, adapter->netdev,
 			   "Failed to map IRQs to CPUs\n");
 
@@ -1742,13 +1715,6 @@ static void ena_free_io_irq(struct ena_adapter *adapter)
 	struct ena_irq *irq;
 	int i;
 
-#ifdef CONFIG_RFS_ACCEL
-	if (adapter->msix_vecs >= 1) {
-		free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
-		adapter->netdev->rx_cpu_rmap = NULL;
-	}
-#endif /* CONFIG_RFS_ACCEL */
-
 	for (i = ENA_IO_IRQ_FIRST_IDX; i < ENA_MAX_MSIX_VEC(io_queue_count); i++) {
 		irq = &adapter->irq_tbl[i];
 		irq_set_affinity_hint(irq->vector, NULL);
@@ -4131,13 +4097,6 @@ static void __ena_shutoff(struct pci_dev *pdev, bool shutdown)
 	ena_dev = adapter->ena_dev;
 	netdev = adapter->netdev;
 
-#ifdef CONFIG_RFS_ACCEL
-	if ((adapter->msix_vecs >= 1) && (netdev->rx_cpu_rmap)) {
-		free_irq_cpu_rmap(netdev->rx_cpu_rmap);
-		netdev->rx_cpu_rmap = NULL;
-	}
-
-#endif /* CONFIG_RFS_ACCEL */
 	/* Make sure timer and reset routine won't be called after
 	 * freeing device resources.
 	 */
-- 
2.43.0

