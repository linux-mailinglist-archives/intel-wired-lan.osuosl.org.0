Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0472A5D05
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 04:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A5C1A2264A;
	Wed,  4 Nov 2020 03:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aE3eR45pPcrb; Wed,  4 Nov 2020 03:12:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7489E22636;
	Wed,  4 Nov 2020 03:12:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3BC9C1BF990
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D76C48619E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XYvXGm0Iqsyg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4411585F67
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 03:12:26 +0000 (UTC)
IronPort-SDR: WCkRzM/UzwohAuYoC/OdvZ2cAdVABVzkWeQzJ4hAG/ZzgrQjoCw4gqz8v+Ycfi8Kc7NGTi752Y
 78FM1+13kQxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="187017147"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="187017147"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
IronPort-SDR: lpYEwdwnrgglDdAWLLjHsv/h4pLH644aK8iQRxuNAGxtVyd5pil/Y0nf89DPWJxIdsNTXfYkK0
 TxtZzn89QuMg==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="471042941"
Received: from abkumar-dell.amr.corp.intel.com ([10.212.180.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 19:12:25 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Nov 2020 19:12:04 -0800
Message-Id: <20201104031210.27772-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201104031210.27772-1-andre.guedes@intel.com>
References: <20201104031210.27772-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 3/9] igc: Introduce
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
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
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
