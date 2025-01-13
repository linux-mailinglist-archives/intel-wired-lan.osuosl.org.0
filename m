Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C90A0BE7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2025 18:11:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38EC9839D8;
	Mon, 13 Jan 2025 17:11:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H-3O6VeyZA-u; Mon, 13 Jan 2025 17:11:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E91783947
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736788291;
	bh=Kw0cd6izs7XeviU0a+/hFFuHFMuDimvFk/Ebc9PqnAc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zh4NvNRM6c+shiBJNjbkZlvmU5CT+NzdBLi/2Ge+DDCjbG+9hruczpfTL86VGe9et
	 DETt5cwoeYRnlKH1nuncHzJUaeR7r3uPUOPnm1oeLoFAKcyGUxLeTvwwfJasUU/10Z
	 Wx5fBgRy+CIfJBWg4YPXfiuSqQtfXK8baA8tpDUbLcGToTwjzcZAyuTvMjkF4q0dYM
	 CfEMcfgWSkW2VHYpoe/eM8FM0Cl5rPY7oasjyn+nRt4t4HWf2jU88ugzxmzhYy77tA
	 2xhDvQsiRIVVKLRvZQltWtaBYEVenyy7DcKjcpdSoH//gls9ngKgvscoqwnWc+0UCh
	 KweVp77S3gV6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E91783947;
	Mon, 13 Jan 2025 17:11:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E7390940
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C84D760729
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D9xy6ZSlPukh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2025 17:11:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1ED37605AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ED37605AA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1ED37605AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 17:11:28 +0000 (UTC)
X-CSE-ConnectionGUID: 4f2HY3P4RdWAyMEIebWGEA==
X-CSE-MsgGUID: 9WSjqm0FRNqBN3rKlueqUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36748898"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36748898"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:28 -0800
X-CSE-ConnectionGUID: ocZFwm8WQASPcDzPKcLYkQ==
X-CSE-MsgGUID: xMy+9T7aRCqu6uvq0vEjvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104499728"
Received: from jdoman-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.26])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 09:11:20 -0800
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
Date: Mon, 13 Jan 2025 10:10:40 -0700
Message-ID: <20250113171042.158123-5-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250113171042.158123-1-ahmed.zaki@intel.com>
References: <20250113171042.158123-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736788289; x=1768324289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mvOOocLbzDTCGa2s6y/5no/OkUrgQwfF+aAaCDsse70=;
 b=i+XAFmCer1HDQU9i03vbxLhxFjYBszrI3znbkQ50Gp25hfAxmmtKO43j
 dNm7FvQH7LCyrI+lbDieu6WN/E7+gTzusLVqQ9//SCn1q9+sycN+q2LTd
 GUggf9evqEdXHBnudei+h6R23GDrREUYsE6l/NNdaAVuypZsSNTJSY6Es
 +oLNMnFV8yiEzwgUgVkdVG2ADDvdzwXwKB7rUZEw8iPU4Wt63PRDjb0c4
 LszTD9vxxMSBtlRU6N54Jgd/f+D8AG/7t18etIA3eLoVVWz2DX9XRmUE9
 whkjA3FcqbCyJKJn3A481Rw9HMy0IwY1NChmJy0AzEhDynWftZRzhKSPr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i+XAFmCe
Subject: [Intel-wired-lan] [PATCH net-next v5 4/6] bnxt: use napi's irq
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
 drivers/net/ethernet/broadcom/bnxt/bnxt.c | 25 +++--------------------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h |  2 --
 2 files changed, 3 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 1f50bc715038..7b8b42adc76d 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -11221,14 +11221,8 @@ static void bnxt_free_irq(struct bnxt *bp)
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
@@ -11257,21 +11251,6 @@ static int bnxt_request_irq(struct bnxt *bp)
 
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
@@ -16200,6 +16179,8 @@ static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
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

