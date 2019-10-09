Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28164D1BCE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:39:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE6A88835E;
	Wed,  9 Oct 2019 22:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sZudzpKGduT6; Wed,  9 Oct 2019 22:39:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A02C883A8;
	Wed,  9 Oct 2019 22:39:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3B231BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AE85588305
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UDiMoVOGBN2V for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:39:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1394D883A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:39:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 15:39:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="184218361"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 09 Oct 2019 15:39:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2019 07:09:24 -0700
Message-Id: <20191009140925.13997-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009140925.13997-1-anthony.l.nguyen@intel.com>
References: <20191009140925.13997-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S30 8/9] ice: add build_skb() support
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Driver is now prepared for building the skb around the existing Rx
buffer, so introduce the ice_build_skb responsible for it. Make use of
XDP's data_meta as well.

I've observed around 30% less CPU consumption with build_skb Rx path, in
comparison to legacy Rx. What stands behind such result is the avoidance
of flow_dissector (which we were diving into via eth_get_headlen) and no
memcpy calls.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 60 ++++++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 71c4464934af..8e3a69d3884d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -790,6 +790,60 @@ ice_get_rx_buf(struct ice_ring *rx_ring, struct sk_buff **skb,
 	return rx_buf;
 }
 
+/**
+ * ice_build_skb - Build skb around an existing buffer
+ * @rx_ring: Rx descriptor ring to transact packets on
+ * @rx_buf: Rx buffer to pull data from
+ * @xdp: xdp_buff pointing to the data
+ *
+ * This function builds an skb around an existing Rx buffer, taking care
+ * to set up the skb correctly and avoid any memcpy overhead.
+ */
+static struct sk_buff *
+ice_build_skb(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
+	      struct xdp_buff *xdp)
+{
+	unsigned int metasize = xdp->data - xdp->data_meta;
+#if (PAGE_SIZE < 8192)
+	unsigned int truesize = ice_rx_pg_size(rx_ring) / 2;
+#else
+	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
+				SKB_DATA_ALIGN(xdp->data_end -
+					       xdp->data_hard_start);
+#endif
+	struct sk_buff *skb;
+
+	/* Prefetch first cache line of first page. If xdp->data_meta
+	 * is unused, this points exactly as xdp->data, otherwise we
+	 * likely have a consumer accessing first few bytes of meta
+	 * data, and then actual data.
+	 */
+	prefetch(xdp->data_meta);
+#if L1_CACHE_BYTES < 128
+	prefetch((void *)(xdp->data + L1_CACHE_BYTES));
+#endif
+	/* build an skb around the page buffer */
+	skb = build_skb(xdp->data_hard_start, truesize);
+	if (unlikely(!skb))
+		return NULL;
+
+	/* must to record Rx queue, otherwise OS features such as
+	 * symmetric queue won't work
+	 */
+	skb_record_rx_queue(skb, rx_ring->q_index);
+
+	/* update pointers within the skb to store the data */
+	skb_reserve(skb, xdp->data - xdp->data_hard_start);
+	__skb_put(skb, xdp->data_end - xdp->data);
+	if (metasize)
+		skb_metadata_set(skb, metasize);
+
+	/* buffer is used by skb, update page_offset */
+	ice_rx_buf_adjust_pg_offset(rx_buf, truesize);
+
+	return skb;
+}
+
 /**
  * ice_construct_skb - Allocate skb and populate it
  * @rx_ring: Rx descriptor ring to transact packets on
@@ -996,12 +1050,14 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		if (!size) {
 			xdp.data = NULL;
 			xdp.data_end = NULL;
+			xdp.data_hard_start = NULL;
+			xdp.data_meta = NULL;
 			goto construct_skb;
 		}
 
 		xdp.data = page_address(rx_buf->page) + rx_buf->page_offset;
 		xdp.data_hard_start = xdp.data - ice_rx_offset(rx_ring);
-		xdp_set_data_meta_invalid(&xdp);
+		xdp.data_meta = xdp.data;
 		xdp.data_end = xdp.data + size;
 
 		rcu_read_lock();
@@ -1038,6 +1094,8 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 construct_skb:
 		if (skb)
 			ice_add_rx_frag(rx_ring, rx_buf, skb, size);
+		else if (ice_ring_uses_build_skb(rx_ring))
+			skb = ice_build_skb(rx_ring, rx_buf, &xdp);
 		else
 			skb = ice_construct_skb(rx_ring, rx_buf, &xdp);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
