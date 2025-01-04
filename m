Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC90A0115A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 01:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E82E40911;
	Sat,  4 Jan 2025 00:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XxAgc9TBxPJb; Sat,  4 Jan 2025 00:43:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CE11408B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735951432;
	bh=mJx3Yhr7dSSh81lPUHwsukbHE3BLnG/hbCKH7/bTRsg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sjxkKKaTubw3b0dT+54r+nkwRFPaEQt7KK0AomdXMyzpcxyNyZTpGtM5cfJ/03o1I
	 KjMnQRF4W8t2EnSNsIUGgRWDS8wEuieb+8Poc8Xy+kL+WDPEHfi9/8CiptSBWO+EPF
	 EeUPSboFxSvhf9tKV9G8BKlZWmYZucPzrvKFi00w8YaF547XVxs7ScpBrMO/D+iLKU
	 8lMFNidzewzMaeKE2Z/IxVFQe7uuwz4QqXd8ZxJUuwUmhBe9z/uQQaS5KBNvnP0tww
	 /51yC7Mr8+8TExqD9XBdmQB+3xAbLqYrU7SfohmOLaUdZLbKgkmt4R0BMOL17/77w+
	 JvPKGgRjp3ygA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CE11408B2;
	Sat,  4 Jan 2025 00:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5CCA5AF0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B5A680C0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g32KUVdkY48L for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 00:43:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9430F80BFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9430F80BFD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9430F80BFD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:49 +0000 (UTC)
X-CSE-ConnectionGUID: Dju2Is8/ThGR1FrNYj4P/w==
X-CSE-MsgGUID: vspERsX+Q6+uSzspkxAlKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36075990"
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="36075990"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:49 -0800
X-CSE-ConnectionGUID: DzgqcQRESCOtxv0W5nd8fg==
X-CSE-MsgGUID: 8Sda/QHYS3ibiCdJJunuQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="106879737"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.48])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:45 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  3 Jan 2025 17:43:12 -0700
Message-ID: <20250104004314.208259-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250104004314.208259-1-ahmed.zaki@intel.com>
References: <20250104004314.208259-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735951430; x=1767487430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xHiCt/y+3f0LvtPqy8jiQRBJ2SQzi16seHZcNlI/olI=;
 b=WIyHNf541HVUbT/A0kXxoQEeZWuZCI/Gujgh8TSnoy0SlNnpMLd15G2n
 SlVF1+4SKnAl4eAwHDWm7DhmClrUkeNMC0+6/k4STpc2Q6njTPovHo8qc
 G+wNfU/kVbYMM4oHzbLQ3G07edKqXScIBsiE6ePcqdM3+EtqNj/VDSkWm
 CAe4RWyeicigzssg3XpVsK9lco9QQwvaNsif+Ue+yFXlMjwAj4vKxXB+A
 8KgOMFtj6Zx10Rdhxaj1taxbQ1r6IHVJ1I8LROKfQ4Pma0CRzoMahKIOU
 jaZXXT0JbkK46TAGsrI+7pwb/j+Mu+u8BaOatEAV7n5STL8VGbVPpL2RG
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WIyHNf54
Subject: [Intel-wired-lan] [PATCH net-next v3 4/6] bnxt: use napi's irq
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
 drivers/net/ethernet/broadcom/bnxt/bnxt.c | 26 ++++-------------------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h |  2 --
 2 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index cc3ca3440b0a..fcf230fde1ec 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -11193,14 +11193,8 @@ static void bnxt_free_irq(struct bnxt *bp)
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
@@ -11229,21 +11223,6 @@ static int bnxt_request_irq(struct bnxt *bp)
 
 		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector);
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
@@ -13292,6 +13271,7 @@ static int bnxt_set_features(struct net_device *dev, netdev_features_t features)
 				bp->flags = old_flags;
 		}
 	}
+
 	return rc;
 }
 
@@ -16172,6 +16152,8 @@ static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 	dev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
 			    NETDEV_XDP_ACT_RX_SG;
 
+	netif_enable_irq_affinity(dev);
+
 #ifdef CONFIG_BNXT_SRIOV
 	init_waitqueue_head(&bp->sriov_cfg_wait);
 #endif
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.h b/drivers/net/ethernet/broadcom/bnxt/bnxt.h
index 094c9e95b463..7be2f90d0c05 100644
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

