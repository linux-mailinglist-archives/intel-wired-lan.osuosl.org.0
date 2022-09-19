Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAA65BD3F0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Sep 2022 19:39:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9147812A4;
	Mon, 19 Sep 2022 17:39:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9147812A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663609178;
	bh=SNbgHw8hiTj16684ZStZj6WFBPvYwIEo4hTVaTo/rak=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zL2ZCQqgNdKBTksCCj/IE7mIdaKcDvwiTX5C1I6peC6KKOD3UpSx7XhSKdjJzap6y
	 yRNL5WZE/q6E7BWKCkJaqnwI/B3FUtPyrGDYkGk5Jh9FIJRcRkE6074BwC41wSmzMH
	 TRNJvoiTduvkGj3p+SYEkeug5bMcFPmsYbCeLr0X57ZudLFFvhEjoEWjOG0pv7U4AF
	 xNhWnLiuN+O2Z4M2g4m2S6ldnXfS22yon6jJniM0CB1U5bzcz1lqsuYzcmEm7EFcOl
	 jT/5g8b+uq+Y+PDzLBCluN7I7nxUJI8TarjIOc3fxlS/QrVCE+WgwwKFw5fpeU0i4A
	 /YHLKxvaZRpMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jUqlOXaft-WG; Mon, 19 Sep 2022 17:39:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2CF981256;
	Mon, 19 Sep 2022 17:39:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2CF981256
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42FF21BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 17:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29633400DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 17:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29633400DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a2Eq5rE9yKUj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Sep 2022 17:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E9F7400C8
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E9F7400C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 17:39:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="299459517"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="299459517"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 10:39:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="947319206"
Received: from avenkata-desk0.sc.intel.com ([172.25.112.42])
 by fmsmga005.fm.intel.com with ESMTP; 19 Sep 2022 10:39:26 -0700
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Sep 2022 10:40:11 -0700
Message-Id: <20220919174011.387975-2-anirudh.venkataramanan@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220919174011.387975-1-anirudh.venkataramanan@intel.com>
References: <20220919174011.387975-1-anirudh.venkataramanan@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663609167; x=1695145167;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QrCTzdTLq8RuWkZu88sa26fhxOWCo1U4TfrTTdWHaPM=;
 b=izIX6y+001hIUX7GhdtDbpMVGXWUdOq212JepfLyAIPwPYTZvaTu8nx/
 MIl5a0Pwv5tlcZh4VeFdSnsvqz1vrqvvqAKTZqmv00LXjDGW3Uz8e03Ww
 7xjftuEvQ+68M/SK0II0wx0rwFleiocFbry83qrDGqutNSAmGdMhT0Ypd
 nOMShsssLxgMRp5HZ/39XyheZb8GJPYBmcQSvJPtpN4f6d1POKL3Rw5u3
 YnB0We9Yv02XpRRQmy9Iv0ytRkCHh8tb2j3L1Yby6BSg14snhUJU7A037
 SdqIyb1zYs7/TXEcWC5cdTWtdtbuL4bXZkRL5sFoTGFW40yX1LYVVq2tH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=izIX6y+0
Subject: [Intel-wired-lan] [PATCH net-next 2/2] e1000e: Remove unnecessary
 use of kmap_atomic()
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
