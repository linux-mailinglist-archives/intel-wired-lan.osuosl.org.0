Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6656B2FF79B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 22:53:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2599287214;
	Thu, 21 Jan 2021 21:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4kFLgmo3hl9Q; Thu, 21 Jan 2021 21:53:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77B7787216;
	Thu, 21 Jan 2021 21:53:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF2AF1BF385
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 21:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D4BC827384
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 21:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K1lvTNftyHmM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 21:53:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id BEA7A272F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 21:53:46 +0000 (UTC)
IronPort-SDR: Z/SJAEwZY36dNmq1BkCQyC9TlTeU7F5JcKidXYQvxSZhzh4MOIFhjDduYJGQjah9Bjx1Bl5qsD
 BJdqmTCH+z2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="198093216"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="198093216"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 13:53:44 -0800
IronPort-SDR: FykCpICOr9dmbW6AkgJ/oaIB0i7GkrLBBdqUCpJvb8+9XjVPywPywSKlCJa/hnRa1ePhZhaLn6
 0mRhdVLtivZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="354983411"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga006.jf.intel.com with ESMTP; 21 Jan 2021 13:53:43 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	lirongqing@baidu.com
Date: Thu, 21 Jan 2021 13:54:23 -0800
Message-Id: <20210121215423.3599429-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RESEND PATCH net-queue v2] igb: avoid premature
 Rx buffer reuse
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

From: Li RongQing <lirongqing@baidu.com>

Igb needs a similar fix as commit 75aab4e10ae6a ("i40e: avoid
premature Rx buffer reuse")

The page recycle code, incorrectly, relied on that a page fragment
could not be freed inside xdp_do_redirect(). This assumption leads to
that page fragments that are used by the stack/XDP redirect can be
reused and overwritten.

To avoid this, store the page count prior invoking xdp_do_redirect().

Longer explanation:

Intel NICs have a recycle mechanism. The main idea is that a page is
split into two parts. One part is owned by the driver, one part might
be owned by someone else, such as the stack.

t0: Page is allocated, and put on the Rx ring
              +---------------
used by NIC ->| upper buffer
(rx_buffer)   +---------------
              | lower buffer
              +---------------
  page count  == USHRT_MAX
  rx_buffer->pagecnt_bias == USHRT_MAX

t1: Buffer is received, and passed to the stack (e.g.)
              +---------------
              | upper buff (skb)
              +---------------
used by NIC ->| lower buffer
(rx_buffer)   +---------------
  page count  == USHRT_MAX
  rx_buffer->pagecnt_bias == USHRT_MAX - 1

t2: Buffer is received, and redirected
              +---------------
              | upper buff (skb)
              +---------------
used by NIC ->| lower buffer
(rx_buffer)   +---------------

Now, prior calling xdp_do_redirect():
  page count  == USHRT_MAX
  rx_buffer->pagecnt_bias == USHRT_MAX - 2

This means that buffer *cannot* be flipped/reused, because the skb is
still using it.

The problem arises when xdp_do_redirect() actually frees the
segment. Then we get:
  page count  == USHRT_MAX - 1
  rx_buffer->pagecnt_bias == USHRT_MAX - 2

From a recycle perspective, the buffer can be flipped and reused,
which means that the skb data area is passed to the Rx HW ring!

To work around this, the page count is stored prior calling
xdp_do_redirect().

Fixes: 9cbc948b5a20 ("igb: add XDP support")
Signed-off-by: Li RongQing <lirongqing@baidu.com>
Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 57818953e289..8ec17a754db7 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8238,7 +8238,8 @@ static inline bool igb_page_is_reserved(struct page *page)
 	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
 }
 
-static bool igb_can_reuse_rx_page(struct igb_rx_buffer *rx_buffer)
+static bool igb_can_reuse_rx_page(struct igb_rx_buffer *rx_buffer,
+				  int rx_buf_pgcnt)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
@@ -8249,7 +8250,7 @@ static bool igb_can_reuse_rx_page(struct igb_rx_buffer *rx_buffer)
 
 #if (PAGE_SIZE < 8192)
 	/* if we are only owner of page we can reuse it */
-	if (unlikely((page_ref_count(page) - pagecnt_bias) > 1))
+	if (unlikely((rx_buf_pgcnt - pagecnt_bias) > 1))
 		return false;
 #else
 #define IGB_LAST_OFFSET \
@@ -8638,11 +8639,17 @@ static unsigned int igb_rx_offset(struct igb_ring *rx_ring)
 }
 
 static struct igb_rx_buffer *igb_get_rx_buffer(struct igb_ring *rx_ring,
-					       const unsigned int size)
+					       const unsigned int size, int *rx_buf_pgcnt)
 {
 	struct igb_rx_buffer *rx_buffer;
 
 	rx_buffer = &rx_ring->rx_buffer_info[rx_ring->next_to_clean];
+	*rx_buf_pgcnt =
+#if (PAGE_SIZE < 8192)
+		page_count(rx_buffer->page);
+#else
+		0;
+#endif
 	prefetchw(rx_buffer->page);
 
 	/* we are reusing so sync this buffer for CPU use */
@@ -8658,9 +8665,9 @@ static struct igb_rx_buffer *igb_get_rx_buffer(struct igb_ring *rx_ring,
 }
 
 static void igb_put_rx_buffer(struct igb_ring *rx_ring,
-			      struct igb_rx_buffer *rx_buffer)
+			      struct igb_rx_buffer *rx_buffer, int rx_buf_pgcnt)
 {
-	if (igb_can_reuse_rx_page(rx_buffer)) {
+	if (igb_can_reuse_rx_page(rx_buffer, rx_buf_pgcnt)) {
 		/* hand second half of page back to the ring */
 		igb_reuse_rx_page(rx_ring, rx_buffer);
 	} else {
@@ -8687,6 +8694,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 	u16 cleaned_count = igb_desc_unused(rx_ring);
 	unsigned int xdp_xmit = 0;
 	struct xdp_buff xdp;
+	int rx_buf_pgcnt;
 
 	xdp.rxq = &rx_ring->xdp_rxq;
 
@@ -8717,7 +8725,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 		 */
 		dma_rmb();
 
-		rx_buffer = igb_get_rx_buffer(rx_ring, size);
+		rx_buffer = igb_get_rx_buffer(rx_ring, size, &rx_buf_pgcnt);
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
@@ -8760,7 +8768,7 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
 			break;
 		}
 
-		igb_put_rx_buffer(rx_ring, rx_buffer);
+		igb_put_rx_buffer(rx_ring, rx_buffer, rx_buf_pgcnt);
 		cleaned_count++;
 
 		/* fetch next buffer in frame if non-eop */
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
