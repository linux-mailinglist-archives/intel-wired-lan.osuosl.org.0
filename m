Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C7A9F6BB4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 17:59:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05AEB614C3;
	Wed, 18 Dec 2024 16:59:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iqghu7l5oQUq; Wed, 18 Dec 2024 16:59:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53CE46146B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734541180;
	bh=+HIqGa9M+5ReICEMswr7HiHia78xk0sFWhXLaceXH20=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0HO/+z6/H9RFLJRKw65LSeTjRTXST5qZkiCWhpw58Swpxk4IR9ujsFbMRFs+6T1vt
	 qJeYtjceRSoJTBzIf4OHPnsfADVvtsHxVo3YJxBuvvJo71bxojRwP441wcK47aE4N0
	 VKtA+aF8Es0jhcijAEjNsXSAm4bdidLoPgbZYpv6P/KheeAq2GWeDB+duGxBBOpvgK
	 g7wCv/vZuSQOiSqm2fhQqKKDLZc8trJqdfnXtYijCUD+hg7G26SDxyZZvcAlTmFOJr
	 F4AGhah69fXaBWWIQvxOq7rGYT6pW5EXT6L42wJ8ntdbPrkT8wc+eAKnYgqLTpkGAc
	 HgZ+cLYhJr90g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53CE46146B;
	Wed, 18 Dec 2024 16:59:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75AE3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56F8D84ED2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vi65EQWSCERT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 16:59:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 643A0811C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 643A0811C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 643A0811C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:59:37 +0000 (UTC)
X-CSE-ConnectionGUID: d7Zhr/5MQsyWudF8S9EcDQ==
X-CSE-MsgGUID: bZ35s/eQSMavRa7US3Q+1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46415566"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="46415566"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:36 -0800
X-CSE-ConnectionGUID: H/H9pH7ISy+MLgxWC2fb/w==
X-CSE-MsgGUID: U20IfUwOREyydZvvL3motA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102531926"
Received: from ldmartin-desk2.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.224])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:59:30 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Wed, 18 Dec 2024 09:58:40 -0700
Message-ID: <20241218165843.744647-6-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241218165843.744647-1-ahmed.zaki@intel.com>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734541177; x=1766077177;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jh7QfFwjdq9d8AVFhmh0dt5lIAFNoZreqPrfeWLQM0A=;
 b=C3BLxgXUF86Mghi5vN8sCDah8eokBX1/nflDb0Ft9cQgjYRRYDYRgo5A
 hiBNoDpBNoaKbhHEOrTR4Tl89M17ws44Z3QYkfmkoQVMH7sItO4ODoOhQ
 TJ2gdd/fhMifoGOE16sl2RX20NgwQKxVTLWv78GNap8SAizWnZ9EkWHsO
 rgB38yQyLrBV+5vM0lp4JxE63vQsHV02vJwAU1NDV72hulNst9t47WgsW
 74T4FMV6s1xzHcZmWPUPSUQJu8anruRxWbaqpOCk1LE2DaQC1zwdZx6TA
 AY+d0JXeJ/3iHeX7cm9as8efcMKMiQnsLaeVsZ2RH4JHD4ehq0EMliqRP
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C3BLxgXU
Subject: [Intel-wired-lan] [PATCH net-next v2 5/8] bnxt: use napi's irq
 affinity
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

Delete the driver CPU affinity info and use the core's napi config
instead.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt.c | 28 ++++-------------------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h |  2 --
 2 files changed, 4 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index ac729a25ba52..f68f07686105 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -11177,14 +11177,8 @@ static void bnxt_free_irq(struct bnxt *bp)
 		int map_idx = bnxt_cp_num_to_irq_num(bp, i);
 
 		irq = &bp->irq_tbl[map_idx];
-		if (irq->requested) {
-			if (irq->have_cpumask) {
-				irq_update_affinity_hint(irq->vector, NULL);
-				free_cpumask_var(irq->cpu_mask);
-				irq->have_cpumask = 0;
-			}
+		if (irq->requested)
 			free_irq(irq->vector, bp->bnapi[i]);
-		}
 
 		irq->requested = 0;
 	}
@@ -11213,26 +11207,12 @@ static int bnxt_request_irq(struct bnxt *bp)
 
 #ifdef CONFIG_RFS_ACCEL
 		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector,
-				   NAPIF_IRQ_ARFS_RMAP);
+				   NAPIF_IRQ_AFFINITY | NAPIF_IRQ_ARFS_RMAP);
 #else
-		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector, 0);
+		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector,
+				   NAPIF_IRQ_AFFINITY);
 #endif
 		irq->requested = 1;
-
-		if (zalloc_cpumask_var(&irq->cpu_mask, GFP_KERNEL)) {
-			int numa_node = dev_to_node(&bp->pdev->dev);
-
-			irq->have_cpumask = 1;
-			cpumask_set_cpu(cpumask_local_spread(i, numa_node),
-					irq->cpu_mask);
-			rc = irq_update_affinity_hint(irq->vector, irq->cpu_mask);
-			if (rc) {
-				netdev_warn(bp->dev,
-					    "Update affinity hint failed, IRQ = %d\n",
-					    irq->vector);
-				break;
-			}
-		}
 	}
 	return rc;
 }
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.h b/drivers/net/ethernet/broadcom/bnxt/bnxt.h
index 7df7a2233307..8a97c1fb2083 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.h
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.h
@@ -1228,9 +1228,7 @@ struct bnxt_irq {
 	irq_handler_t	handler;
 	unsigned int	vector;
 	u8		requested:1;
-	u8		have_cpumask:1;
 	char		name[IFNAMSIZ + BNXT_IRQ_NAME_EXTRA];
-	cpumask_var_t	cpu_mask;
 };
 
 #define HWRM_RING_ALLOC_TX	0x1
-- 
2.43.0

