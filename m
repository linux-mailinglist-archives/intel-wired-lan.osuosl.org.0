Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BE6698041
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 17:13:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BED034012B;
	Wed, 15 Feb 2023 16:13:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BED034012B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676477588;
	bh=QiBPxaQOxNkStYuj6OaJ7q9uOl9PG6CA7Q6NS3SSv7k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MDj2HI3up8dSxSX3sDRD6eT01U4CGZQkUPNZvZyBu+uML0gU5xngtYtqpMAqGNs6u
	 B/pbfpKBk8Xvbuqv7Wo5LQ12XAqEer1fU5r7otXz1RWuofv9zV3ISamDFKJOsVKsA9
	 hv/C2IUZME0A/MJAkK7oecVx7q6ij6UEZrRaBW2xCG6gdqyUVOzxS0L3ZON/zb4vCk
	 OaTP+zNTbuSHdIbz+kmAJpHC7AraKz994VMEERz8ow3pt6EUKa+1wDkCiad1UfmoeT
	 PIOXOs2GtCavDZYDrr0Azr/knFspg5cJNrtUsQDNxoQCeOqWxdchT1UhuwN9dJYXdB
	 zWXvSW7s/D43g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AkTrVRVJRDIF; Wed, 15 Feb 2023 16:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DE6F4012F;
	Wed, 15 Feb 2023 16:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DE6F4012F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32DCD1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A93BC4167C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A93BC4167C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M0yAZKSb3Ewb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 12:57:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96F20415EF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96F20415EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="393822019"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="393822019"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:57:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="998478618"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="998478618"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:57:51 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Feb 2023 18:13:01 +0530
Message-Id: <20230215124305.76075-5-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
References: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 15 Feb 2023 16:12:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676465872; x=1708001872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P7FjsWu3MVGBk9JhbCvWu8kJATCkxSj6ISwNnsFzxxU=;
 b=PgaNvlgFqrsOE/x8mLuLDbUiEoI+fEqcL8n41h0LlpGmJEbKLnnEfReL
 /kkiEmDfxNcgh1k2o1nZz9e27jGVYXhJap08MR8aVTLdkeP02qd2yfeW/
 MLwLlvzHV2zYjByKyLAWyZB7Q6AwPqPcgrmesCibYAHq1ZYmCFJmgu3q3
 35WDzY2j2xisRImLyEdPYBYwWpyBMgZpQpdUgLjYjlTt6ph76TdM8k4zs
 1djwgadO8ec5oLBll9DPtJNXFvAxNuXoSQFYA7MV+JDOoZ7PoDzBxyv4+
 7lx2RuOXo++uQs4yB2K+69fbETLOEhSLc2XDxoYTz/rTu+yUKVmoQCYuK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PgaNvlgF
Subject: [Intel-wired-lan] [PATCH intel-next v4 4/8] i40e: Change size to
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
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
