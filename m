Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F8469509C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 20:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55E0E81D18;
	Mon, 13 Feb 2023 19:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55E0E81D18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676316360;
	bh=QiBPxaQOxNkStYuj6OaJ7q9uOl9PG6CA7Q6NS3SSv7k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ewa7GnzFtNuZkxI2xmDexUtr2vA/EIs8jLhNfkYslO42QYt5T+X/HOgNvApbucZb7
	 FOD8P4juZE25OAiOre57iDOYxT4GtZ9mcOhKQcfndBt0yJhsydy5AagVL6rBnrdSqm
	 zTnQWkc/OWG0JCTxwGp4NhsgfudUrE0wJcvCEyRssFlII4wjilj/9Uzey7Xkagr6ob
	 HrlSLanTxMscft4+C7MmOZsMWNMRAe4dgQF5AQX2OXeA7SdmK6kJnMcQBwEvDodtdH
	 iQ6LCDuBVOwtGYxrhi1V3hmeMUd0I4Ur1p/QMj6VZBlNHYmWcjyet9NhJc/z+v07Og
	 5AZ+3yxZ/6vCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GHoX8X_Ad9qj; Mon, 13 Feb 2023 19:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A29481D3D;
	Mon, 13 Feb 2023 19:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A29481D3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEBF01BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 19:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33C4280DD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 19:03:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33C4280DD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5N_yezdAGQ3H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 19:03:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEEBE80DA6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEEBE80DA6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 19:03:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="332281408"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="332281408"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 11:03:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="670929001"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="670929001"
Received: from paamrpdk12-s2600bpb.aw.intel.com ([10.228.151.145])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 11:03:34 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Feb 2023 00:18:24 +0530
Message-Id: <20230213184828.39404-5-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230213184828.39404-1-tirthendu.sarkar@intel.com>
References: <20230213184828.39404-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Feb 2023 19:25:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676315017; x=1707851017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P7FjsWu3MVGBk9JhbCvWu8kJATCkxSj6ISwNnsFzxxU=;
 b=f6ejrQDfaPOh5qeFFYTXK2Y88ZaNfLDwK5zDuUAvyNf6DslPGaC52YLc
 2oUfEGt8cxa9WAq4ktL61r+r86YYnMJ67hGgai4mMKGEM8J9FszhKnTm1
 e1RdzYb1HiiyQr4u/GY4uQUmPMj99160dCJXA3jYH9j7bWBg4mSkEQIm8
 H57OqF7izoTLQFX2mJR0IE72GeVqW/jXaftYcyDinPrMJewKVVJvlvBK1
 N9q6a8SfFmZjAxtWo26g6C9860RvkHwrwxwnnmbqsBqtyGCRE3FWYQwa5
 2YxBvJJ1J4fXlbd0SUpDQisF1RYRHK7Xwx7fI3YJBM1HvqGUvU03z/rWA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f6ejrQDf
Subject: [Intel-wired-lan] [PATCH intel-next v2 4/8] i40e: Change size to
 truesize when using i40e_rx_buffer_flip()
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Truesize is now passed directly to i40e_rx_buffer_flip() instead of size
so that it does not need to recalculate truesize from size using
i40e_rx_frame_truesize() before adjusting page offset.

With these change the function can now be used during skb building and
adding frags. In later patches it will also be easier for adjusting
page offsets for multi-buffers.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 54 ++++++++-------------
 1 file changed, 19 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index a7fba294a8f4..019abd7273a2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2018,6 +2018,21 @@ static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
 	return true;
 }
 
+/**
+ * i40e_rx_buffer_flip - adjusted rx_buffer to point to an unused region
+ * @rx_buffer: Rx buffer to adjust
+ * @size: Size of adjustment
+ **/
+static void i40e_rx_buffer_flip(struct i40e_rx_buffer *rx_buffer,
+				unsigned int truesize)
+{
+#if (PAGE_SIZE < 8192)
+	rx_buffer->page_offset ^= truesize;
+#else
+	rx_buffer->page_offset += truesize;
+#endif
+}
+
 /**
  * i40e_add_rx_frag - Add contents of Rx buffer to sk_buff
  * @rx_ring: rx descriptor ring to transact packets on
@@ -2045,11 +2060,7 @@ static void i40e_add_rx_frag(struct i40e_ring *rx_ring,
 			rx_buffer->page_offset, size, truesize);
 
 	/* page is being used so we must update the page offset */
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
+	i40e_rx_buffer_flip(rx_buffer, truesize);
 }
 
 /**
@@ -2154,11 +2165,7 @@ static struct sk_buff *i40e_construct_skb(struct i40e_ring *rx_ring,
 				size, truesize);
 
 		/* buffer is used by skb, update page_offset */
-#if (PAGE_SIZE < 8192)
-		rx_buffer->page_offset ^= truesize;
-#else
-		rx_buffer->page_offset += truesize;
-#endif
+		i40e_rx_buffer_flip(rx_buffer, truesize);
 	} else {
 		/* buffer is unused, reset bias back to rx_buffer */
 		rx_buffer->pagecnt_bias++;
@@ -2209,11 +2216,7 @@ static struct sk_buff *i40e_build_skb(struct i40e_ring *rx_ring,
 		skb_metadata_set(skb, metasize);
 
 	/* buffer is used by skb, update page_offset */
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
+	i40e_rx_buffer_flip(rx_buffer, truesize);
 
 	return skb;
 }
@@ -2326,25 +2329,6 @@ static int i40e_run_xdp(struct i40e_ring *rx_ring, struct xdp_buff *xdp, struct
 	return result;
 }
 
-/**
- * i40e_rx_buffer_flip - adjusted rx_buffer to point to an unused region
- * @rx_ring: Rx ring
- * @rx_buffer: Rx buffer to adjust
- * @size: Size of adjustment
- **/
-static void i40e_rx_buffer_flip(struct i40e_ring *rx_ring,
-				struct i40e_rx_buffer *rx_buffer,
-				unsigned int size)
-{
-	unsigned int truesize = i40e_rx_frame_truesize(rx_ring, size);
-
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
-}
-
 /**
  * i40e_xdp_ring_update_tail - Updates the XDP Tx ring tail register
  * @xdp_ring: XDP Tx ring
@@ -2513,7 +2497,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		if (xdp_res) {
 			if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
 				xdp_xmit |= xdp_res;
-				i40e_rx_buffer_flip(rx_ring, rx_buffer, size);
+				i40e_rx_buffer_flip(rx_buffer, xdp.frame_sz);
 			} else {
 				rx_buffer->pagecnt_bias++;
 			}
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
