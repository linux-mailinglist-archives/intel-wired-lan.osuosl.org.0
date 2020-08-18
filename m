Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FAD247EFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Aug 2020 09:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 798548757C;
	Tue, 18 Aug 2020 07:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JffHk61Duvhk; Tue, 18 Aug 2020 07:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 871778754B;
	Tue, 18 Aug 2020 07:08:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF90C1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 07:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9FB385C28
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 07:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ueoML4MxGpRq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 07:08:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from tc-sys-mailedm02.tc.baidu.com (mx141-tc.baidu.com
 [61.135.168.141])
 by whitealder.osuosl.org (Postfix) with ESMTP id 56D1E84F5A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 07:08:01 +0000 (UTC)
Received: from localhost (cp01-cos-dev01.cp01.baidu.com [10.92.119.46])
 by tc-sys-mailedm02.tc.baidu.com (Postfix) with ESMTP id B9A2611C005B;
 Tue, 18 Aug 2020 15:07:57 +0800 (CST)
From: Li RongQing <lirongqing@baidu.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Aug 2020 15:07:57 +0800
Message-Id: <1597734477-27859-1-git-send-email-lirongqing@baidu.com>
X-Mailer: git-send-email 1.7.1
Subject: [Intel-wired-lan] [PATCH][v3] i40e: optimise prefetch page refcount
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

refcount of rx_buffer page will be added here originally, so prefetchw
is needed, but after commit 1793668c3b8c ("i40e/i40evf: Update code to
 better handle incrementing page count"), and refcount is not added
everytime, so change prefetchw as prefetch,

now it mainly services page_address(), but which accesses struct page
only when WANT_PAGE_VIRTUAL or HASHED_PAGE_VIRTUAL is defined otherwise
it returns address based on offset, so we prefetch it conditionally

Jakub suggested to define prefetch_page_address in a common header

Reported-by: kernel test robot <lkp@intel.com>
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Li RongQing <lirongqing@baidu.com>
---
diff with v2: fix a build warning -Wvisibility 
diff with v1: create a common function prefetch_page_address
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 2 +-
 include/linux/prefetch.h                    | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 62f5b2d35f63..5f9fe55bb66d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1953,7 +1953,7 @@ static struct i40e_rx_buffer *i40e_get_rx_buffer(struct i40e_ring *rx_ring,
 	struct i40e_rx_buffer *rx_buffer;
 
 	rx_buffer = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
-	prefetchw(rx_buffer->page);
+	prefetch_page_address(rx_buffer->page);
 
 	/* we are reusing so sync this buffer for CPU use */
 	dma_sync_single_range_for_cpu(rx_ring->dev,
diff --git a/include/linux/prefetch.h b/include/linux/prefetch.h
index 13eafebf3549..b83a3f944f28 100644
--- a/include/linux/prefetch.h
+++ b/include/linux/prefetch.h
@@ -15,6 +15,7 @@
 #include <asm/processor.h>
 #include <asm/cache.h>
 
+struct page;
 /*
 	prefetch(x) attempts to pre-emptively get the memory pointed to
 	by address "x" into the CPU L1 cache. 
@@ -62,4 +63,11 @@ static inline void prefetch_range(void *addr, size_t len)
 #endif
 }
 
+static inline void prefetch_page_address(struct page *page)
+{
+#if defined(WANT_PAGE_VIRTUAL) || defined(HASHED_PAGE_VIRTUAL)
+	prefetch(page);
+#endif
+}
+
 #endif
-- 
2.16.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
