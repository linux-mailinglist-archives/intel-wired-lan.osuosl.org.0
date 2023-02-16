Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7870A6999B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 17:17:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08BE361373;
	Thu, 16 Feb 2023 16:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08BE361373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676564248;
	bh=+615JVt/7OXEAr/wugX3PJ/qNchJe5xmRisX+HM+zQ0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M23lAxGD+E5YmyEP8DPOLnOliF0/VygQD80IKNaj6wsKEbTeA8mRQaVllFsBDdkha
	 huDUw6v/MGXzW38wTMpAOWaLWx5BFhUyBaN6Cm70CfwryP/7koWnEF4jEZmWeD9s0/
	 FftVGHPgG7s2VkLkP7uFZN5QEhhb0Ak2eaFQr2yR97XN/bV1icC7FI6YcmvRphtIEy
	 tvVkU8+bbeULprJ6X/b5DC43lRZZJisgjkRINwC6j/dnpJ+19+DSB06cTJcVsaEWFc
	 Bq15GnzBp9AZ+1F1PiAL50ujo7pJUwypr9ncrCs/GHuOktSisVGvGe16C03v7Rqb52
	 1OpV0qcoNV/sQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GC9ZZe8eY6Af; Thu, 16 Feb 2023 16:17:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2722612E4;
	Thu, 16 Feb 2023 16:17:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2722612E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C6271BF96B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F652611E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F652611E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mJH7tpaEjHez for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 14:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61D88611ED
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61D88611ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:15:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="359154751"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="359154751"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:15:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="738838135"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="738838135"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:15:24 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Feb 2023 19:30:38 +0530
Message-Id: <20230216140043.109345-4-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230216140043.109345-1-tirthendu.sarkar@intel.com>
References: <20230216140043.109345-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 16 Feb 2023 16:16:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676556929; x=1708092929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KYbvSbsGvxgxS+37xXm/1+1jUHyL2VP1hZahFMKQgIM=;
 b=NkImmJmY5AWHeCZB2VN0wzAKaTfInqLyxcr+dMk31dGte3kZQNtM0Tpa
 J7VX/EUpL0a392kNXLPL69UGasQNjI9KRs2tdDkVnH/+W80yCom1lX7EY
 xEi/F7u2WSKBhws+B5C4jBTBGlQcC//quVhtgTTamI0AOFofvlzbfwZHI
 Ms6dRB/y1TJV+7scIE6W0Vsl+p2Ru8um3/wDiG6ZfNOYnWOydk6ZpTYJd
 ljEBkIwSubJmZVq7olfatE8FWAUcnc5cRRsy8f99U5WZHyCyZRH8A3d3g
 PL29koO2WVp6n4BrMJt0swLewwim2zJiZmA90INgkWxTeZ7ymkAFA8tMD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NkImmJmY
Subject: [Intel-wired-lan] [PATCH intel-next v5 3/8] i40e: add pre-xdp
 page_count in rx_buffer
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Page count of rx_buffer needs to be stored prior to XDP call to prevent
page recycling in case that buffer would be freed within xdp redirect
path. Instead of storing it on the stack, now it is stored in the
rx_buffer struct. This will help in processing multi-buffers as the page
counts of all rx_buffers (of the same packet) don't need to be stored on
stack.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 23 +++++++--------------
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |  1 +
 2 files changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 924f972b91fa..a7fba294a8f4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1970,7 +1970,6 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
  * i40e_can_reuse_rx_page - Determine if page can be reused for another Rx
  * @rx_buffer: buffer containing the page
  * @rx_stats: rx stats structure for the rx ring
- * @rx_buffer_pgcnt: buffer page refcount pre xdp_do_redirect() call
  *
  * If page is reusable, we have a green light for calling i40e_reuse_rx_page,
  * which will assign the current buffer to the buffer that next_to_alloc is
@@ -1981,8 +1980,7 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
  * or busy if it could not be reused.
  */
 static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
-				   struct i40e_rx_queue_stats *rx_stats,
-				   int rx_buffer_pgcnt)
+				   struct i40e_rx_queue_stats *rx_stats)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
@@ -1995,7 +1993,7 @@ static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
 
 #if (PAGE_SIZE < 8192)
 	/* if we are only owner of page we can reuse it */
-	if (unlikely((rx_buffer_pgcnt - pagecnt_bias) > 1)) {
+	if (unlikely((rx_buffer->page_count - pagecnt_bias) > 1)) {
 		rx_stats->page_busy_count++;
 		return false;
 	}
@@ -2058,19 +2056,17 @@ static void i40e_add_rx_frag(struct i40e_ring *rx_ring,
  * i40e_get_rx_buffer - Fetch Rx buffer and synchronize data for use
  * @rx_ring: rx descriptor ring to transact packets on
  * @size: size of buffer to add to skb
- * @rx_buffer_pgcnt: buffer page refcount
  *
  * This function will pull an Rx buffer from the ring and synchronize it
  * for use by the CPU.
  */
 static struct i40e_rx_buffer *i40e_get_rx_buffer(struct i40e_ring *rx_ring,
-						 const unsigned int size,
-						 int *rx_buffer_pgcnt)
+						 const unsigned int size)
 {
 	struct i40e_rx_buffer *rx_buffer;
 
 	rx_buffer = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
-	*rx_buffer_pgcnt =
+	rx_buffer->page_count =
 #if (PAGE_SIZE < 8192)
 		page_count(rx_buffer->page);
 #else
@@ -2226,16 +2222,14 @@ static struct sk_buff *i40e_build_skb(struct i40e_ring *rx_ring,
  * i40e_put_rx_buffer - Clean up used buffer and either recycle or free
  * @rx_ring: rx descriptor ring to transact packets on
  * @rx_buffer: rx buffer to pull data from
- * @rx_buffer_pgcnt: rx buffer page refcount pre xdp_do_redirect() call
  *
  * This function will clean up the contents of the rx_buffer.  It will
  * either recycle the buffer or unmap it and free the associated resources.
  */
 static void i40e_put_rx_buffer(struct i40e_ring *rx_ring,
-			       struct i40e_rx_buffer *rx_buffer,
-			       int rx_buffer_pgcnt)
+			       struct i40e_rx_buffer *rx_buffer)
 {
-	if (i40e_can_reuse_rx_page(rx_buffer, &rx_ring->rx_stats, rx_buffer_pgcnt)) {
+	if (i40e_can_reuse_rx_page(rx_buffer, &rx_ring->rx_stats)) {
 		/* hand second half of page back to the ring */
 		i40e_reuse_rx_page(rx_ring, rx_buffer);
 	} else {
@@ -2457,7 +2451,6 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		struct i40e_rx_buffer *rx_buffer;
 		union i40e_rx_desc *rx_desc;
-		int rx_buffer_pgcnt;
 		unsigned int size;
 		u64 qword;
 
@@ -2500,7 +2493,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			break;
 
 		i40e_trace(clean_rx_irq, rx_ring, rx_desc, skb);
-		rx_buffer = i40e_get_rx_buffer(rx_ring, size, &rx_buffer_pgcnt);
+		rx_buffer = i40e_get_rx_buffer(rx_ring, size);
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
@@ -2541,7 +2534,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			break;
 		}
 
-		i40e_put_rx_buffer(rx_ring, rx_buffer, rx_buffer_pgcnt);
+		i40e_put_rx_buffer(rx_ring, rx_buffer);
 		cleaned_count++;
 
 		i40e_inc_ntc(rx_ring);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 1382efb43ffd..3e2935365104 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -278,6 +278,7 @@ struct i40e_rx_buffer {
 	struct page *page;
 	__u32 page_offset;
 	__u16 pagecnt_bias;
+	__u32 page_count;
 };
 
 struct i40e_queue_stats {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
