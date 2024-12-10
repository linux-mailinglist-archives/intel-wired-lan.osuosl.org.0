Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 968BD9EA3A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 01:27:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D3484053A;
	Tue, 10 Dec 2024 00:27:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wZQLoAmAgzBv; Tue, 10 Dec 2024 00:26:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FE75400EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733790419;
	bh=D69fAzHUv9yhh4Ct9Tx0KKLo4dS+eobSTIeQR/HjBWQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9CHA1bihSj54I1MFbMbaIT3jAQPqbDWvhWFPxjeUrYE5aLCAtKw8mQbYRCAwpOulH
	 brdG5VTOOGlUcxL8veIGaaex7vd2chmrLZqu/euRwMAyqe5Fi6KZOvnL7TToOuC9sJ
	 hLNyIZoU1SgaFHLm1uXykNv9Xtv8DUJPifLIuArIndOUiKy2PF1fzR6whssFLStCfJ
	 9UtF6LGbYus5Nuw/mTfji5poNq2vvqD97upO5NJgyCLgn+YnQT2S4XWJxm00oZlQJm
	 A/n49xqTQzJ/YYs0Y/p7osMSGoR227RSrmchHKZAadHPOhQB11Eb0l0XdwP7AIQVZR
	 xMCTa9BvXFdaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FE75400EE;
	Tue, 10 Dec 2024 00:26:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8102BE11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F3544037C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LR4R4KWO3u0L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 00:26:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94F7A400FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94F7A400FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94F7A400FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 00:26:56 +0000 (UTC)
X-CSE-ConnectionGUID: +fHn1Zt8R/aC35w0Yz7Nvg==
X-CSE-MsgGUID: K6woXMi6QCmnoQYJbxAUug==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44791434"
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="44791434"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:56 -0800
X-CSE-ConnectionGUID: 9M+uhNRhRN+sK3d8gQ8U5g==
X-CSE-MsgGUID: wwGezakFRx2/pClzqDBHKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,220,1728975600"; d="scan'208";a="126132144"
Received: from cmdeoliv-mobl4.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 16:26:52 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon,  9 Dec 2024 17:26:23 -0700
Message-ID: <20241210002626.366878-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241210002626.366878-1-ahmed.zaki@intel.com>
References: <20241210002626.366878-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733790417; x=1765326417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ga2n2dHXfggkY8T5PHFGb+Q3jtFgyf3OB37QvZz+zJ0=;
 b=nf8CKfIQXq5qqgTsrZCP4q54E8wl9IsQ90HGYkpVNbuvbrcV/n2Of4d3
 /buAz/huOzgqWzy919/Z+B0P+ZFDJFqqOVKX2Z7SyjkSh28eIOURu2riS
 0F/hgemDXKSA+Zx9h1ojqyQVeKMpKs6s7B6cf4MufD4kNJCymwfYHyQsA
 CnbXYLYCbA8zOHUMctBH+eHnVWBULSQKyYxtq6ONJgGIvOb/6aenAYDCm
 v5ionWV1exyvIvSf6Sq2pPbKjWxsVyJPDV4QESrsKxI3/Ln+/cUKWT+d4
 Jj4l3vVXGQQL3wvp970Yzev27VLg/J2uMESqTzwlWaeVcwkJVOO3dUG70
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nf8CKfIQ
Subject: [Intel-wired-lan] [PATCH v1 net-next 3/6] bnxt: use napi's irq
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
 drivers/net/ethernet/broadcom/bnxt/bnxt.c | 26 +++--------------------
 drivers/net/ethernet/broadcom/bnxt/bnxt.h |  2 --
 2 files changed, 3 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 45b27460d462..d1c9a70514e0 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -11126,14 +11126,8 @@ static void bnxt_free_irq(struct bnxt *bp)
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
@@ -11174,23 +11168,9 @@ static int bnxt_request_irq(struct bnxt *bp)
 		if (rc)
 			break;
 
-		netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector, 0);
+		netif_napi_set_irq(&bp->bnapi[i]->napi,
+				   irq->vector, NAPIF_F_IRQ_AFFINITY);
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
index 231e38933984..9942d6f0127b 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.h
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.h
@@ -1225,9 +1225,7 @@ struct bnxt_irq {
 	irq_handler_t	handler;
 	unsigned int	vector;
 	u8		requested:1;
-	u8		have_cpumask:1;
 	char		name[IFNAMSIZ + BNXT_IRQ_NAME_EXTRA];
-	cpumask_var_t	cpu_mask;
 };
 
 #define HWRM_RING_ALLOC_TX	0x1
-- 
2.47.0

