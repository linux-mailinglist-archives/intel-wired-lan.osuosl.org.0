Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D036837C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:46:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5455781BB2;
	Tue, 31 Jan 2023 20:46:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5455781BB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197989;
	bh=T710p6YM3lMzX2+PpfzV6LTa7Isd8TdD16LPrWmJmOQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kyx1q+W3qrioMfs7u6dGrqoYKIZI1YpbKZldUF99v0ynZoYBCX70YGrs/Lm7KC/9H
	 j3HgOuQp25WTPezm2jXc1TEyL//Ss0JQedzqgV/1Po/dssJFNU3VUYXbosSgLGVn7B
	 KL6aF99e8vsnHExwilOeXzzRIvvpU6dz4jVZxkENElkGBB2k/0GKYzoIl9mk4ipklN
	 GNGB81gs5H+qJs5/xx4KoGL/YufUaITpHZZH7x3BPAkfD9ShVr0SPIX5WuB6vJ4xu2
	 KRZtG8EvmBNEdNNmc/0SW0u/7ssPbgaJVXQmyNjoytSDqNHvnJ9OgqtENa8hcRPULd
	 4AjvyMVq6eVNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YWZokY2PRiAS; Tue, 31 Jan 2023 20:46:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37EE081AF6;
	Tue, 31 Jan 2023 20:46:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37EE081AF6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85F0C1BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6CC0F60BA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CC0F60BA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id stofRYSVfHEn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:46:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7BC760B77
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7BC760B77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167484"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167484"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:46:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595460"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595460"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:32 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:45:02 +0100
Message-Id: <20230131204506.219292-10-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197982; x=1706733982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5w+tkZrunFf5CIZeqrwR9rY7LTQzRXF9JBYAoAzaEZU=;
 b=Y1VLp1bjT59bktXVI9mEMVwghMFbGmdy4AS97p8ejVxGP1ZiOzQ8uJXQ
 MU+VzLm9m1vLLG18/e6oRYClytPnKTKhHxnOY2fK/y3Vtuo484l8YvCiW
 7wIUkikc3fWaMjLm7Rp0cZ4+UJrQJaw7bnoXCbjl7CwAwb2h8ndbgjXBl
 YmcdNLvjH6l0yLaySLH3SDQML/4kYOTlqzQHTF/daOY4/zKrDnMhM9pip
 g4OePC0AKPBB4E5g0dtlfF6DvB74A3FYDsAjxTA7FdFenU/xfjqbkH50a
 Yye7SYTtIpTYrxUuunfRNER70GiccndGml/0uYiHWmA3OsQfx+FCVWYzb
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y1VLp1bj
Subject: [Intel-wired-lan] [PATCH bpf-next 09/13] ice: use xdp->frame_sz
 instead of recalculating truesize
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
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SKB path calculates truesize on three different functions, which could
be avoided as xdp_buff carries the already calculated truesize under
xdp_buff::frame_sz. If ice_add_rx_frag() is adjusted to take the
xdp_buff as an input just like functions responsible for creating
sk_buff initially, codebase could be simplified by removing these
redundant recalculations and rely on xdp_buff::frame_sz instead.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 33 +++++++----------------
 1 file changed, 9 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 3a8639608f0b..dd4d7f5ba6bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -840,6 +840,7 @@ ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
 /**
  * ice_add_rx_frag - Add contents of Rx buffer to sk_buff as a frag
  * @rx_ring: Rx descriptor ring to transact packets on
+ * @xdp: XDP buffer
  * @rx_buf: buffer containing page to add
  * @skb: sk_buff to place the data into
  * @size: packet length from rx_desc
@@ -849,19 +850,14 @@ ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
  * The function will then update the page offset.
  */
 static void
-ice_add_rx_frag(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf,
-		struct sk_buff *skb, unsigned int size)
+ice_add_rx_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
+		struct ice_rx_buf *rx_buf, struct sk_buff *skb,
+		unsigned int size)
 {
-#if (PAGE_SIZE >= 8192)
-	unsigned int truesize = SKB_DATA_ALIGN(size + rx_ring->rx_offset);
-#else
-	unsigned int truesize = ice_rx_pg_size(rx_ring) / 2;
-#endif
-
 	if (!size)
 		return;
 	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
-			rx_buf->page_offset, size, truesize);
+			rx_buf->page_offset, size, xdp->frame_sz);
 }
 
 /**
@@ -943,13 +939,6 @@ ice_build_skb(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf,
 	      struct xdp_buff *xdp)
 {
 	u8 metasize = xdp->data - xdp->data_meta;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = ice_rx_pg_size(rx_ring) / 2;
-#else
-	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
-				SKB_DATA_ALIGN(xdp->data_end -
-					       xdp->data_hard_start);
-#endif
 	struct sk_buff *skb;
 
 	/* Prefetch first cache line of first page. If xdp->data_meta
@@ -959,7 +948,7 @@ ice_build_skb(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf,
 	 */
 	net_prefetch(xdp->data_meta);
 	/* build an skb around the page buffer */
-	skb = napi_build_skb(xdp->data_hard_start, truesize);
+	skb = napi_build_skb(xdp->data_hard_start, xdp->frame_sz);
 	if (unlikely(!skb))
 		return NULL;
 
@@ -1017,13 +1006,9 @@ ice_construct_skb(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf,
 	/* if we exhaust the linear part then add what is left as a frag */
 	size -= headlen;
 	if (size) {
-#if (PAGE_SIZE >= 8192)
-		unsigned int truesize = SKB_DATA_ALIGN(size);
-#else
-		unsigned int truesize = ice_rx_pg_size(rx_ring) / 2;
-#endif
 		skb_add_rx_frag(skb, 0, rx_buf->page,
-				rx_buf->page_offset + headlen, size, truesize);
+				rx_buf->page_offset + headlen, size,
+				xdp->frame_sz);
 	} else {
 		/* buffer is unused, change the act that should be taken later
 		 * on; data was copied onto skb's linear part so there's no
@@ -1176,7 +1161,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		continue;
 construct_skb:
 		if (skb) {
-			ice_add_rx_frag(rx_ring, rx_buf, skb, size);
+			ice_add_rx_frag(rx_ring, xdp, rx_buf, skb, size);
 		} else if (likely(xdp->data)) {
 			if (ice_ring_uses_build_skb(rx_ring))
 				skb = ice_build_skb(rx_ring, rx_buf, xdp);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
