Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFRKKENU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7168E3BCA7F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26C3640F22;
	Wed,  8 Apr 2026 13:12:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6HJ5eN8xGjQq; Wed,  8 Apr 2026 13:12:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45D2F40F27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653953;
	bh=g795r66mupsBYpuxsAo/BX4+Ayy0KA03TRoJzlsLIrU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8wXrhQfciWq7yaqvqXFGQ++liXAT23hZIdpVgezDTc+zNiEhb7rytka2JSnNiUfB7
	 40ujlWy4RYlPAKt9jyCC9VuzQAIunhLnkOftq6nTKtjP/lHiLHk/TkORayKGcHBRDX
	 MeOiQ2W+uf/xNJc0ALGt4/O+Ie6VNswpe06qp9SFadGR9CzbY1a7k0vf6hcHMsOslN
	 qtm6/3G+KCv2k/UPAdrGP5jco5Z/LtumEaHrrDXPmMuTBC7GG8rlz5WDcKJl0IM3GL
	 ItJtXcgoArLZNxKWLfDO7PUtqHtffjyXGa8auJu0LdQkEn16bdviZsrKHxEX3Jt+El
	 B/jwbpsUOBllQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45D2F40F27;
	Wed,  8 Apr 2026 13:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 94DF21F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 870C240EC4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GUM3FEJyOwOB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:12:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6378840F28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6378840F28
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6378840F28
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:29 +0000 (UTC)
X-CSE-ConnectionGUID: ji7YlMfSQSa5uZn28ncOpw==
X-CSE-MsgGUID: KlfhkOS8QeCeGpICdFMG4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087294"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087294"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:12:29 -0700
X-CSE-ConnectionGUID: h48jsidKQoqks8MOKZ6mcA==
X-CSE-MsgGUID: cREK8HQZRy+6gxdS8cwHug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228715113"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:12:28 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 15:12:15 +0200
Message-ID: <20260408131216.2662245-8-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653949; x=1807189949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K/cZlAHeWG54SXemvsMzndeB7VbEIshlUtv2sGqdCik=;
 b=PckbANkjqJPtSeDiwco2VR+XOzb92jfA6K6oPxGaDrvNsVci0vtGAPFF
 em2YniKUHt+kHOLqb7dfEhuqGEgK3rkcxAeFhqEuIpwUYscud0yLI3077
 brCor2+32T2KDQlZjdDm315byy8QTNyMDBWky18UWKEsnEdF/cP12MvqQ
 B/SZ4f7YSQwdQblnRC1Y4hFxpc4XHbNniEDdNDDjU6EDvCOqBsTmv+3WJ
 s/ShQPQD+ZGMdkyl1IqzwiRzRNGwhPSY4Y1DQ/g/BUOEdY54dG4QHTERs
 oO5Oh52F/vKtdBWJ4PLP6bAQ/FGpE4+nZmdNmDSWaWu6lGfJYI7P0Zvs/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PckbANkj
Subject: [Intel-wired-lan] [PATCH iwl-next v2 7/8] ixgbe: use GFP_KERNEL in
 ixgbe_fcoe_ddp_setup()
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7168E3BCA7F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ixgbe_fcoe_ddp_setup() is always called from process context (FCoE
offload setup paths) and never from an atomic context.  Using GFP_ATOMIC
is therefore unnecessarily restrictive and wastes memory allocator
headroom reserved for genuine atomic callers.

The previous attempt to change this to GFP_KERNEL placed the allocation
inside the get_cpu()/put_cpu() section, which disables preemption.
GFP_KERNEL can sleep under direct reclaim regardless of whether the
caller is in process context, which triggers a BUG() with preemption
disabled.

Restructure the function to split the get_cpu()/put_cpu() usage into
two narrow critical sections:

1. A short initial section that reads the per-CPU pool pointer and
   validates it, then immediately calls put_cpu() before any allocation.
   The pool pointer is saved in a local variable for use after the pin
   is dropped.

2. A second section after the allocation that re-pins the CPU solely to
   update per-CPU counters (noddp, noddp_ext_buff) inside the SG loop.

The DMA mapping and pool allocation sit between these two sections with
preemption enabled, making GFP_KERNEL safe.  The pool pointer saved
from section 1 remains valid because per-CPU DMA pools are only
destroyed during interface teardown under RTNL, not during normal
operation.

Suggested-by: Sebastian Basierski <sebastianx.basierski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2:
 - Move dma_pool_alloc() outside the get_cpu()/put_cpu() section;
   split into two narrow preempt-off regions so GFP_KERNEL is safe.

 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 51 +++++++++++---------
 1 file changed, 35 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index 011fda9..064ad17 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -139,6 +139,7 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
 	struct ixgbe_fcoe *fcoe;
 	struct ixgbe_fcoe_ddp *ddp;
 	struct ixgbe_fcoe_ddp_pool *ddp_pool;
+	struct dma_pool *pool;
 	struct scatterlist *sg;
 	unsigned int i, j, dmacount;
 	unsigned int len;
@@ -179,29 +180,43 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
 		return 0;
 	}
 
+	/* Pin to current CPU only to read the per-CPU pool pointer; drop
+	 * the pin before any allocations that may sleep under direct reclaim.
+	 */
 	ddp_pool = per_cpu_ptr(fcoe->ddp_pool, get_cpu());
 	if (!ddp_pool->pool) {
 		e_warn(drv, "xid=0x%x no ddp pool for fcoe\n", xid);
-		goto out_noddp;
+		put_cpu();
+		return 0;
 	}
+	pool = ddp_pool->pool;
+	put_cpu();
 
 	/* setup dma from scsi command sgl */
 	dmacount = dma_map_sg(&adapter->pdev->dev, sgl, sgc, DMA_FROM_DEVICE);
 	if (dmacount == 0) {
 		e_err(drv, "xid 0x%x DMA map error\n", xid);
-		goto out_noddp;
+		return 0;
 	}
 
-	/* alloc the udl from per cpu ddp pool */
-	ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_ATOMIC, &ddp->udp);
+	/* Allocate from per-CPU pool; GFP_KERNEL is safe: preemption is
+	 * re-enabled after the put_cpu() above.  Per-CPU DMA pools are only
+	 * destroyed under RTNL during interface teardown, so the saved pool
+	 * pointer remains valid.
+	 */
+	ddp->udl = dma_pool_alloc(pool, GFP_KERNEL, &ddp->udp);
 	if (!ddp->udl) {
 		e_err(drv, "failed allocated ddp context\n");
-		goto out_noddp_unmap;
+		dma_unmap_sg(&adapter->pdev->dev, sgl, sgc, DMA_FROM_DEVICE);
+		return 0;
 	}
-	ddp->pool = ddp_pool->pool;
+	ddp->pool = pool;
 	ddp->sgl = sgl;
 	ddp->sgc = sgc;
 
+	/* Re-pin CPU for per-CPU statistics updates inside the SG loop. */
+	ddp_pool = per_cpu_ptr(fcoe->ddp_pool, get_cpu());
+
 	j = 0;
 	for_each_sg(sgl, sg, dmacount, i) {
 		addr = sg_dma_address(sg);
@@ -210,7 +225,8 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
 			/* max number of buffers allowed in one DDP context */
 			if (j >= IXGBE_BUFFCNT_MAX) {
 				ddp_pool->noddp++;
-				goto out_noddp_free;
+				put_cpu();
+				goto out_noddp_free_unmap;
 			}
 
 			/* get the offset of length of current buffer */
@@ -220,16 +236,20 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
 			 * all but the 1st buffer (j == 0)
 			 * must be aligned on bufflen
 			 */
-			if ((j != 0) && (thisoff))
-				goto out_noddp_free;
+			if (j != 0 && thisoff) {
+				put_cpu();
+				goto out_noddp_free_unmap;
+			}
 			/*
 			 * all but the last buffer
 			 * ((i == (dmacount - 1)) && (thislen == len))
 			 * must end at bufflen
 			 */
-			if (((i != (dmacount - 1)) || (thislen != len))
-			    && ((thislen + thisoff) != bufflen))
-				goto out_noddp_free;
+			if ((i != (dmacount - 1) || thislen != len) &&
+			    (thislen + thisoff) != bufflen) {
+				put_cpu();
+				goto out_noddp_free_unmap;
+			}
 
 			ddp->udl[j] = (u64)(addr - thisoff);
 			/* only the first buffer may have none-zero offset */
@@ -250,14 +270,15 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
 	if (lastsize == bufflen) {
 		if (j >= IXGBE_BUFFCNT_MAX) {
 			ddp_pool->noddp_ext_buff++;
-			goto out_noddp_free;
+			put_cpu();
+			goto out_noddp_free_unmap;
 		}
 
 		ddp->udl[j] = (u64)(fcoe->extra_ddp_buffer_dma);
 		j++;
 		lastsize = 1;
 	}
 	put_cpu();
 
 	fcbuff = (IXGBE_FCBUFF_4KB << IXGBE_FCBUFF_BUFFSIZE_SHIFT);
 	fcbuff |= ((j & 0xff) << IXGBE_FCBUFF_BUFFCNT_SHIFT);
@@ -316,14 +337,10 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
 
 	return 1;
 
-out_noddp_free:
+out_noddp_free_unmap:
 	dma_pool_free(ddp->pool, ddp->udl, ddp->udp);
 	ixgbe_fcoe_clear_ddp(ddp);
-
-out_noddp_unmap:
 	dma_unmap_sg(&adapter->pdev->dev, sgl, sgc, DMA_FROM_DEVICE);
-out_noddp:
-	put_cpu();
 	return 0;
 }
 
-- 
2.52.0
