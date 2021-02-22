Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0217D3212BA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 10:09:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 973F46F53F;
	Mon, 22 Feb 2021 09:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uF99mKG1rzoG; Mon, 22 Feb 2021 09:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45C84605DD;
	Mon, 22 Feb 2021 09:09:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 77BEB1BF38E
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6511283880
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id faAv_GQf0WO9 for <intel-wired-lan@osuosl.org>;
 Mon, 22 Feb 2021 09:08:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BE2B8380E
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:08:56 +0000 (UTC)
IronPort-SDR: dBMm+pfgYi4oVajIm9f6s4O0MCVe+jlKhd4+AOcXWQtvpjZbRxIa4Su0rwVD+VB9RkYfmD8TeV
 7gQnk/PqhYkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="248439858"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="248439858"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:08:54 -0800
IronPort-SDR: ME0QWvtgV4J5tDc1yiFcqGdXah7J520oc0V4jH/U2vV1ClZq74nIU/0kPiCd5L0pPtTaYoNLJJ
 Pc8f7GZHAUNA==
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="441321677"
Received: from coffy.sc.intel.com ([10.3.79.166])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:08:48 -0800
From: Jithu Joseph <jithu.joseph@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 22 Feb 2021 01:09:34 -0800
Message-Id: <20210222090936.6768-8-jithu.joseph@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222090936.6768-1-jithu.joseph@intel.com>
References: <20210222090936.6768-1-jithu.joseph@intel.com>
Subject: [Intel-wired-lan] [PATCH v4 7/9] igc: Replace IGC_TX_FLAGS_XDP flag
 by an enum
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
Cc: Andre Guedes <andre.guedes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

Up to this point, tx buffers are associated with either a skb or a xdpf,
and the IGC_TX_FLAGS_XDP flag was enough to distinguish between these
two case. However, with upcoming patches that will add AF_XDP zero-copy
support, a third case will be introduced so this flag-based approach
won't fit well.

In preparation to land AF_XDP zero-copy support, replace the
IGC_TX_FLAGS_XDP flag by an enum which will be extended once zero-copy
support is introduced to the driver.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Signed-off-by: Vedang Patel <vedang.patel@intel.com>
Signed-off-by: Jithu Joseph <jithu.joseph@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  8 +++++--
 drivers/net/ethernet/intel/igc/igc_main.c | 27 ++++++++++++++++++-----
 2 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 2472a364874c..f0a8909c0d44 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -390,8 +390,6 @@ enum igc_tx_flags {
 	/* olinfo flags */
 	IGC_TX_FLAGS_IPV4	= 0x10,
 	IGC_TX_FLAGS_CSUM	= 0x20,
-
-	IGC_TX_FLAGS_XDP	= 0x100,
 };
 
 enum igc_boards {
@@ -408,12 +406,18 @@ enum igc_boards {
 #define TXD_USE_COUNT(S)	DIV_ROUND_UP((S), IGC_MAX_DATA_PER_TXD)
 #define DESC_NEEDED	(MAX_SKB_FRAGS + 4)
 
+enum igc_tx_buffer_type {
+	IGC_TX_BUFFER_TYPE_SKB,
+	IGC_TX_BUFFER_TYPE_XDP,
+};
+
 /* wrapper around a pointer to a socket buffer,
  * so a DMA handle can be stored along with the buffer
  */
 struct igc_tx_buffer {
 	union igc_adv_tx_desc *next_to_watch;
 	unsigned long time_stamp;
+	enum igc_tx_buffer_type type;
 	union {
 		struct sk_buff *skb;
 		struct xdp_frame *xdpf;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fbb6aeea95cd..f72c760ba4a2 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -191,10 +191,18 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 	while (i != tx_ring->next_to_use) {
 		union igc_adv_tx_desc *eop_desc, *tx_desc;
 
-		if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
+		switch (tx_buffer->type) {
+		case IGC_TX_BUFFER_TYPE_XDP:
 			xdp_return_frame(tx_buffer->xdpf);
-		else
+			break;
+		case IGC_TX_BUFFER_TYPE_SKB:
 			dev_kfree_skb_any(tx_buffer->skb);
+			break;
+		default:
+			netdev_warn_once(tx_ring->netdev,
+					 "Unknown tx buffer type\n");
+			break;
+		}
 
 		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 
@@ -1360,6 +1368,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 
 	/* record the location of the first descriptor for this packet */
 	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
+	first->type = IGC_TX_BUFFER_TYPE_SKB;
 	first->skb = skb;
 	first->bytecount = skb->len;
 	first->gso_segs = 1;
@@ -1943,8 +1952,8 @@ static int igc_xdp_init_tx_buffer(struct igc_tx_buffer *buffer,
 		return -ENOMEM;
 	}
 
+	buffer->type = IGC_TX_BUFFER_TYPE_XDP;
 	buffer->xdpf = xdpf;
-	buffer->tx_flags = IGC_TX_FLAGS_XDP;
 	buffer->protocol = 0;
 	buffer->bytecount = xdpf->len;
 	buffer->gso_segs = 1;
@@ -2308,10 +2317,18 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		total_bytes += tx_buffer->bytecount;
 		total_packets += tx_buffer->gso_segs;
 
-		if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
+		switch (tx_buffer->type) {
+		case IGC_TX_BUFFER_TYPE_XDP:
 			xdp_return_frame(tx_buffer->xdpf);
-		else
+			break;
+		case IGC_TX_BUFFER_TYPE_SKB:
 			napi_consume_skb(tx_buffer->skb, napi_budget);
+			break;
+		default:
+			netdev_warn_once(tx_ring->netdev,
+					 "Unknown tx buffer type\n");
+			break;
+		}
 
 		igc_unmap_tx_buffer(tx_ring->dev, tx_buffer);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
