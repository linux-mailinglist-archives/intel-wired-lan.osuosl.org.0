Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1B575562
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:24:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F3768818F;
	Thu, 25 Jul 2019 17:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id myWchz+rubgS; Thu, 25 Jul 2019 17:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4667A88157;
	Thu, 25 Jul 2019 17:24:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9023F1BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D9A622660
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HsTdR+TPa3EO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id DAA9822253
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="160973709"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2019 10:23:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 01:55:34 -0700
Message-Id: <20190725085541.55104-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v4 08/15] ice: allow empty rx
 descriptors
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

From: Mitch Williams <mitch.a.williams@intel.com>

In some circumstances, the hardware will hand us a receive descriptor
which has no data attached, but is otherwise valid. The receive code was
improperly ignoring these descriptors, which result in an infinite loop.

To fix this, change the receive code to process all descriptors,
regardless of the size of the associated data. Add checks to the
memory-handling functions to allow for zero size.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 9a54406922f0..75b0afe02015 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -607,6 +607,8 @@ ice_add_rx_frag(struct ice_rx_buf *rx_buf, struct sk_buff *skb,
 	unsigned int truesize = ICE_RXBUF_2048;
 #endif
 
+	if (!size)
+		return;
 	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
 			rx_buf->page_offset, size, truesize);
 
@@ -662,6 +664,8 @@ ice_get_rx_buf(struct ice_ring *rx_ring, struct sk_buff **skb,
 	prefetchw(rx_buf->page);
 	*skb = rx_buf->skb;
 
+	if (!size)
+		return rx_buf;
 	/* we are reusing so sync this buffer for CPU use */
 	dma_sync_single_range_for_cpu(rx_ring->dev, rx_buf->dma,
 				      rx_buf->page_offset, size,
@@ -745,8 +749,11 @@ ice_construct_skb(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
  */
 static void ice_put_rx_buf(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
 {
-		/* hand second half of page back to the ring */
+	if (!rx_buf)
+		return;
+
 	if (ice_can_reuse_rx_page(rx_buf)) {
+		/* hand second half of page back to the ring */
 		ice_reuse_rx_page(rx_ring, rx_buf);
 		rx_ring->rx_stats.page_reuse_count++;
 	} else {
@@ -1032,8 +1039,9 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		size = le16_to_cpu(rx_desc->wb.pkt_len) &
 			ICE_RX_FLX_DESC_PKT_LEN_M;
 
+		/* retrieve a buffer from the ring */
 		rx_buf = ice_get_rx_buf(rx_ring, &skb, size);
-		/* allocate (if needed) and populate skb */
+
 		if (skb)
 			ice_add_rx_frag(rx_buf, skb, size);
 		else
@@ -1042,7 +1050,8 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->rx_stats.alloc_buf_failed++;
-			rx_buf->pagecnt_bias++;
+			if (rx_buf)
+				rx_buf->pagecnt_bias++;
 			break;
 		}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
