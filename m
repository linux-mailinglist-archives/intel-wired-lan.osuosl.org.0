Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 979B864B925
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 17:01:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D9A040A8E;
	Tue, 13 Dec 2022 16:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D9A040A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670947297;
	bh=iMGHxEYTaDWQnYiKvpmAXGnv1fUYxBta+1FtPJvR0q8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WSgBLJzrJux5d8mg3vUfhDnn85OnIzSrWstRMpSO2svVuRYxZgd733/icSWYIGWlg
	 akq4740oIgZxj7+hBLuXzXXz//JIkIgsRarQ2L3xC1qDAOpizg1ZKqv75BZ2cbvkCa
	 xQlinaV5XahPWBTPtO5xexfxdm4vdrDrpRpFKcygof3qqCbuqpdCgTm1IhcN/qVXlL
	 LbqjHg+E1SvTQVZyStn0mMdnxvQ+zK2HhAn7oU8fOsPrVBgC42mD++gbd4dPFmsTnb
	 wXuUECe4OIhsc3XKlqzPDnTffqBU99Gax4enB/P4cNPy3wUythmwFfNLdblmgJ68eo
	 aofpkrTaz/OIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQ8uAGl4zuxU; Tue, 13 Dec 2022 16:01:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E38B402E8;
	Tue, 13 Dec 2022 16:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E38B402E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 872551BF29C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 609B6416C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 609B6416C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RTmYbQiOblfe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 11:04:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46FFD416C3
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46FFD416C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 11:04:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="305744365"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="305744365"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:04:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679263027"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="679263027"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:04:13 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: tirtha@gmail.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Dec 2022 16:20:19 +0530
Message-Id: <20221213105023.196409-2-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
References: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Dec 2022 16:01:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670929456; x=1702465456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uUEOMFmrXGvOXl+CQ4nSgU7S62TZZvxVBaprVwBFTiw=;
 b=b6dbriVEoyBj8AFSq8hWhUlD6NCqxBjm57jPU6ehQ2kFEp4457q1vtVe
 sjV45hIHTfF46qpR9N3I3FZWiTMPtaMFRimRaVRQj6gvdF1LBnEmGQ+W2
 r3qGB00ylNGC3kItm/9b+8eqT8DFHhjB7AU8qAwtVi9UuW0R72KvR9+VS
 kU4DtzN4bSzcjBL+Q3RP0H733kJ4Jxgnb6/S7SAut15maPgni7eFYqe7Q
 g5yuqjytcU79V1Kbkil67pcB5B7zdoUsjsWx4P/8+PnmVTyFt2MJbfKXn
 1rkOH74FhpYEoyNEAhL7OfZfkh/SGk4TJk82nwW2kxNrT54tnpdxQY4IB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b6dbriVE
Subject: [Intel-wired-lan] [PATCH intel-next 1/5] i40e: add pre-xdp
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
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
index 768290dc6f48..eec4a4a99b9c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -277,6 +277,7 @@ struct i40e_rx_buffer {
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
