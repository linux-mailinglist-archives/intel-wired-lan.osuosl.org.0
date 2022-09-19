Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC5E5BD487
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Sep 2022 20:09:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2859760669;
	Mon, 19 Sep 2022 18:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2859760669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663610960;
	bh=fVrrTzxChtKurPSwHiBqoifkOiS3/r81Nyid3sfNSa8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=03y1PXLCfUv7zX+xHyWOPfJVxDYUhBuHVs1aiMsKr5697qx2D4isGUu/oRrGF6LET
	 dyyeyErMPZyP0I2psgH+CQHEvA/Ev9tb7RUA5MupDIGGKA2s+aOK5L16Q5XQ/tTcPV
	 NyBnTq+CeZvSaJbbpIQXD+ZOiioLi4T7CP9T8QkiA5k/xYogzY6BD4vcw9G3wwb9lg
	 W8c5O2KwV38bqc3KPBtFI9IEOKHtzgB7kxEvzd1YSoD7KQsxWQ1R7y251HyaKq+ILi
	 wE+fUHRr6qdEkuPA943QTNnHLanJhBjN12ruYSaMRc0EyUpnLI6fYcNI9d+3lTdith
	 2JJXjMJibm47w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RIzTozp3ZeP; Mon, 19 Sep 2022 18:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5B8D60608;
	Mon, 19 Sep 2022 18:09:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5B8D60608
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6020A1BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 18:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48377817D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 18:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48377817D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8zwSIngz-QNR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Sep 2022 18:09:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CC6B817A9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CC6B817A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 18:09:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286522602"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="286522602"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 11:09:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="569750812"
Received: from avenkata-desk0.sc.intel.com ([172.25.112.42])
 by orsmga003.jf.intel.com with ESMTP; 19 Sep 2022 11:09:04 -0700
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Sep 2022 11:09:49 -0700
Message-Id: <20220919180949.388785-2-anirudh.venkataramanan@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220919180949.388785-1-anirudh.venkataramanan@intel.com>
References: <20220919180949.388785-1-anirudh.venkataramanan@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663610946; x=1695146946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HlM/dfjKM0VJgmVpDucEXcaCSfNs7qd9QKykkWJkzW0=;
 b=ETrmVtKrNkeILhbWodha3NlZRef1R2hpJJlFDeo+bpLR34+dLJGWPzyc
 F0vPsyJiShStFLoYYV2LOF5JYXSsvc5OlzhTRZlKbpGBQ0zceSppc/zMp
 KBCSIfuJyp07tR+ypXUF40BK/nDaxX1nup/nZ9gH6+YZnEDz0Tl16VL+u
 lQ6kLW0TCNEKM7HhQQ5SUtq5DG7Ots2At6QbvlNnW8glF3UsVzaJkKVXZ
 9YYmgqhHGw4lfhN1M6GPDjNwGmfZw2iFDc9mff/H29YaKw9A7B0w9UWVL
 nJSlMXH0luSn/JVtVNkPIho0uAsELmTdIIaODBQSQv8JJzhELq6E7QW+W
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ETrmVtKr
Subject: [Intel-wired-lan] [RESEND PATCH net-next 2/2] e1000e: Remove
 unnecessary use of kmap_atomic()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Fabio M . De Francesco" <fmdefrancesco@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

alloc_rx_buf() allocates ps_page->page and buffer_info->page using either
GFP_ATOMIC or GFP_KERNEL. Memory allocated with GFP_KERNEL/GFP_ATOMIC can't
come from highmem and so there's no need to kmap() them. Just use
page_address().

I don't have access to a 32-bit system so did some limited testing on qemu
(qemu-system-i386 -m 4096 -smp 4 -device e1000e) with a 32-bit Debian 11.04
image.

Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Fabio M. De Francesco <fmdefrancesco@gmail.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Suggested-by: Ira Weiny <ira.weiny@intel.com>
Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 321f2a9..05a59e5 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1393,21 +1393,14 @@ static bool e1000_clean_rx_irq_ps(struct e1000_ring *rx_ring, int *work_done,
 			 */
 			if (l1 && (l1 <= copybreak) &&
 			    ((length + l1) <= adapter->rx_ps_bsize0)) {
-				u8 *vaddr;
-
 				ps_page = &buffer_info->ps_pages[0];
 
-				/* there is no documentation about how to call
-				 * kmap_atomic, so we can't hold the mapping
-				 * very long
-				 */
 				dma_sync_single_for_cpu(&pdev->dev,
 							ps_page->dma,
 							PAGE_SIZE,
 							DMA_FROM_DEVICE);
-				vaddr = kmap_atomic(ps_page->page);
-				memcpy(skb_tail_pointer(skb), vaddr, l1);
-				kunmap_atomic(vaddr);
+				memcpy(skb_tail_pointer(skb),
+				       page_address(ps_page->page), l1);
 				dma_sync_single_for_device(&pdev->dev,
 							   ps_page->dma,
 							   PAGE_SIZE,
@@ -1607,11 +1600,9 @@ static bool e1000_clean_jumbo_rx_irq(struct e1000_ring *rx_ring, int *work_done,
 				 */
 				if (length <= copybreak &&
 				    skb_tailroom(skb) >= length) {
-					u8 *vaddr;
-					vaddr = kmap_atomic(buffer_info->page);
-					memcpy(skb_tail_pointer(skb), vaddr,
+					memcpy(skb_tail_pointer(skb),
+					       page_address(buffer_info->page),
 					       length);
-					kunmap_atomic(vaddr);
 					/* re-use the page, so don't erase
 					 * buffer_info->page
 					 */
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
