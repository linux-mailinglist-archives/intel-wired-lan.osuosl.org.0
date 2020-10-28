Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 969F129D210
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 21:20:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC4A5204F2;
	Wed, 28 Oct 2020 20:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W5MKUUKvxqh2; Wed, 28 Oct 2020 20:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6957B20BF9;
	Wed, 28 Oct 2020 20:19:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD5421BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CA10182B51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p95wGcD6tL-Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 20:19:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3BA38872B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 20:19:56 +0000 (UTC)
IronPort-SDR: +egiSczJr81BylCVjQXzkFAhj8QxwWktGI2m273APNxgw+qi/Flad/2kuBICK5bkpS1R7c5vyZ
 Ht5OdWZF0iaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="164833072"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="164833072"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:54 -0700
IronPort-SDR: Dh0Q7kilDaGm8cezAisT8/wK4jfYKWqq+emMU4Ypgtnrcz0aYPeEpwRhOizWKXTZpB3TJdZJrK
 ZB+eoWgxI9oA==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536374749"
Received: from zcolon-mobl.amr.corp.intel.com ([10.209.108.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:19:54 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Oct 2020 13:19:36 -0700
Message-Id: <20201028201943.93147-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028201943.93147-1-andre.guedes@intel.com>
References: <20201028201943.93147-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 03/10] igc: Introduce
 igc_rx_buffer_flip() helper
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

The igc driver implements the same page recycling scheme from other
Intel drivers which reuses the page by flipping the buffer. The code
to handle buffer flips is duplicated in many locations so this patch
introduces the igc_rx_buffer_flip() helper and uses it where applicable.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 42 +++++++++++------------
 1 file changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5ce9253cca19..31dc58a82cf3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1513,6 +1513,16 @@ static struct igc_rx_buffer *igc_get_rx_buffer(struct igc_ring *rx_ring,
 	return rx_buffer;
 }
 
+static void igc_rx_buffer_flip(struct igc_rx_buffer *buffer,
+			       unsigned int truesize)
+{
+#if (PAGE_SIZE < 8192)
+	buffer->page_offset ^= truesize;
+#else
+	buffer->page_offset += truesize;
+#endif
+}
+
 /**
  * igc_add_rx_frag - Add contents of Rx buffer to sk_buff
  * @rx_ring: rx descriptor ring to transact packets on
@@ -1527,20 +1537,18 @@ static void igc_add_rx_frag(struct igc_ring *rx_ring,
 			    struct sk_buff *skb,
 			    unsigned int size)
 {
+	unsigned int truesize;
 #if (PAGE_SIZE < 8192)
-	unsigned int truesize = igc_rx_pg_size(rx_ring) / 2;
-
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
-			rx_buffer->page_offset, size, truesize);
-	rx_buffer->page_offset ^= truesize;
+	truesize = igc_rx_pg_size(rx_ring) / 2;
 #else
-	unsigned int truesize = ring_uses_build_skb(rx_ring) ?
-				SKB_DATA_ALIGN(IGC_SKB_PAD + size) :
-				SKB_DATA_ALIGN(size);
+	truesize = ring_uses_build_skb(rx_ring) ?
+		   SKB_DATA_ALIGN(IGC_SKB_PAD + size) :
+		   SKB_DATA_ALIGN(size);
+#endif
 	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
 			rx_buffer->page_offset, size, truesize);
-	rx_buffer->page_offset += truesize;
-#endif
+
+	igc_rx_buffer_flip(rx_buffer, truesize);
 }
 
 static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
@@ -1569,13 +1577,7 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
 	skb_reserve(skb, IGC_SKB_PAD);
 	__skb_put(skb, size);
 
-	/* update buffer offset */
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
-
+	igc_rx_buffer_flip(rx_buffer, truesize);
 	return skb;
 }
 
@@ -1621,11 +1623,7 @@ static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
 		skb_add_rx_frag(skb, 0, rx_buffer->page,
 				(va + headlen) - page_address(rx_buffer->page),
 				size, truesize);
-#if (PAGE_SIZE < 8192)
-		rx_buffer->page_offset ^= truesize;
-#else
-		rx_buffer->page_offset += truesize;
-#endif
+		igc_rx_buffer_flip(rx_buffer, truesize);
 	} else {
 		rx_buffer->pagecnt_bias++;
 	}
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
