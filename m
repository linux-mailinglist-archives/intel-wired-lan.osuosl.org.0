Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB531A8A56A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:29:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 621FA61101;
	Tue, 15 Apr 2025 17:29:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KlaSiVGGsa2A; Tue, 15 Apr 2025 17:29:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 591B8608F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744738153;
	bh=3rDoLKx8+MES5a1WDeQXYLLi5OKX4a+o2oxSzgz/TuQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QcAA4MqEYDyeAnwElCP91o6AQSrJ1xJy4NlRTaUk07UZydPSHcnavzNjpEFu9A2ci
	 Wbpg6Ejk5shuL/srmnEWme6q2HfBBZSX0SzHqTZeD7a4EN+WQWgoNgQaJ93yRevXg2
	 hypo99bzAncAOrr+501tLK7bZf3J1HUVSYTWrpQ9GOB0fjRA22In5OPiC3+oAaklb2
	 9QOwRFzThWNSVv0/m8rGjSAVKzAagcsIzv9iJFRp8eNCCuwfrNcl5XBoOk8QN975pV
	 J6kHiP+lldlUClEEyqSuVP66NjrEp8r6rOIWDwX+YT9AU5C8d74JGU9k0WvBTFXGmz
	 iPtLY2+1fUi/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 591B8608F0;
	Tue, 15 Apr 2025 17:29:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F201F200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D7830838D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O7scsCTRX8HP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:29:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C7A783409
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C7A783409
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C7A783409
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:10 +0000 (UTC)
X-CSE-ConnectionGUID: hDohfR+CQaGd/DjSpi9XZw==
X-CSE-MsgGUID: MzrOKpDWRz6awMzjBeUkJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46275659"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46275659"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:29:10 -0700
X-CSE-ConnectionGUID: urrxdxPbSZ+fqXLmHmNueA==
X-CSE-MsgGUID: /b3KwhUhRfeJYvmmYObpiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130729643"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 15 Apr 2025 10:29:06 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 15 Apr 2025 19:28:13 +0200
Message-ID: <20250415172825.3731091-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744738151; x=1776274151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K13b147mWFnfwD7/TXLuT2ouBWKQI99KzFIV/K87xNw=;
 b=G8JDgF5bxI9sDDOgPYPCjOxhikHL3ZkU2VGOAjKUdCP1QhdPwipXlhmI
 M4B303s/VXnOCdQGGVOx7QyM3daBKZhb7vLx6IaKfkxXzjNMamrZiQOOa
 MUnrqTvFQp9EEyCWWy78DynMuyGxnJzgSOCL+hCMamnbtUF076nFnPYwQ
 xY8jXFbVSbo4i3H4oyxKk+YHuPTNYFmpDGHgeE9Mpjq/mAS17UpRGIpm9
 j9GLWCKd+Vnc29ek/GTi3+YahhYxQaDJPZrOtzRU0HRaD8mc6KF2sQgZP
 iVLBqa7NkR5Uaa27jdXAVH9FFFzXQibOmd/Xq/tpo/FK4K3YOE2FCZOHz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G8JDgF5b
Subject: [Intel-wired-lan] [PATCH iwl-next 04/16] libeth: xdp: add
 .ndo_xdp_xmit() helpers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add helpers for implementing .ndo_xdp_xmit().
Same as for XDP_TX, accumulate up to 16 DMA-mapped frames on the stack,
then flush. If DMA mapping is failed for some reason, don't try mapping
further frames, but still flush what was already prepared.
DMA address of a head frame is stored in its headroom, assuming it
has enough of it for an 8 (or 4) byte value.
In addition to @prep and @xmit driver callbacks in XDP_TX, xmit also
needs @finalize to kick the XDPSQ after filling.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/tx.h                 |   6 +
 include/net/libeth/xdp.h                | 290 +++++++++++++++++++++++-
 drivers/net/ethernet/intel/libeth/xdp.c |  37 ++-
 3 files changed, 328 insertions(+), 5 deletions(-)

diff --git a/include/net/libeth/tx.h b/include/net/libeth/tx.h
index 3e68d11914f7..e2b62a8b4c57 100644
--- a/include/net/libeth/tx.h
+++ b/include/net/libeth/tx.h
@@ -19,6 +19,8 @@
  * @LIBETH_SQE_SKB: &sk_buff, unmap and napi_consume_skb(), update stats
  * @__LIBETH_SQE_XDP_START: separator between skb and XDP types
  * @LIBETH_SQE_XDP_TX: &skb_shared_info, libeth_xdp_return_buff_bulk(), stats
+ * @LIBETH_SQE_XDP_XMIT: &xdp_frame, unmap and xdp_return_frame_bulk(), stats
+ * @LIBETH_SQE_XDP_XMIT_FRAG: &xdp_frame frag, only unmap DMA
  */
 enum libeth_sqe_type {
 	LIBETH_SQE_EMPTY		= 0U,
@@ -29,6 +31,8 @@ enum libeth_sqe_type {
 
 	__LIBETH_SQE_XDP_START,
 	LIBETH_SQE_XDP_TX		= __LIBETH_SQE_XDP_START,
+	LIBETH_SQE_XDP_XMIT,
+	LIBETH_SQE_XDP_XMIT_FRAG,
 };
 
 /**
@@ -38,6 +42,7 @@ enum libeth_sqe_type {
  * @raw: slab buffer to free via kfree()
  * @skb: &sk_buff to consume
  * @sinfo: skb shared info of an XDP_TX frame
+ * @xdpf: XDP frame from ::ndo_xdp_xmit()
  * @dma: DMA address to unmap
  * @len: length of the mapped region to unmap
  * @nr_frags: number of frags in the frame this buffer belongs to
@@ -53,6 +58,7 @@ struct libeth_sqe {
 		void				*raw;
 		struct sk_buff			*skb;
 		struct skb_shared_info		*sinfo;
+		struct xdp_frame		*xdpf;
 	};
 
 	DEFINE_DMA_UNMAP_ADDR(dma);
diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 946fc8081987..5438271662bd 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -11,6 +11,17 @@
 #include <net/libeth/tx.h>
 #include <net/xsk_buff_pool.h>
 
+/*
+ * Defined as bits to be able to use them as a mask on Rx.
+ * Also used as internal return values on Tx.
+ */
+enum {
+	LIBETH_XDP_PASS			= 0U,
+	LIBETH_XDP_DROP			= BIT(0),
+	LIBETH_XDP_ABORTED		= BIT(1),
+	LIBETH_XDP_TX			= BIT(2),
+};
+
 /*
  * &xdp_buff_xsk is the largest structure &libeth_xdp_buff gets casted to,
  * pick maximum pointer-compatible alignment.
@@ -56,12 +67,14 @@ static_assert(IS_ALIGNED(sizeof(struct xdp_buff_xsk),
  * @LIBETH_XDP_TX_BULK: one bulk size at which it will be flushed to the queue
  * @LIBETH_XDP_TX_BATCH: batch size for which the queue fill loop is unrolled
  * @LIBETH_XDP_TX_DROP: indicates the send function must drop frames not sent
+ * @LIBETH_XDP_TX_NDO: whether the send function is called from .ndo_xdp_xmit()
  */
 enum {
 	LIBETH_XDP_TX_BULK		= DEV_MAP_BULK_SIZE,
 	LIBETH_XDP_TX_BATCH		= 8,
 
 	LIBETH_XDP_TX_DROP		= BIT(0),
+	LIBETH_XDP_TX_NDO		= BIT(1),
 };
 
 /**
@@ -88,6 +101,11 @@ enum {
  * @len_fl: ``XDP_TX``, combined flags [31:16] and len [15:0] field for speed
  * @soff: ``XDP_TX``, offset from @data to the start of &skb_shared_info
  * @frag: one (non-head) frag for ``XDP_TX``
+ * @xdpf: &xdp_frame for the head frag for .ndo_xdp_xmit()
+ * @dma: DMA address of the non-head frag for .ndo_xdp_xmit()
+ * @len: frag length for .ndo_xdp_xmit()
+ * @flags: Tx flags for the above
+ * @opts: combined @len + @flags for the above for speed
  */
 struct libeth_xdp_tx_frame {
 	union {
@@ -100,6 +118,21 @@ struct libeth_xdp_tx_frame {
 
 		/* ``XDP_TX`` frag */
 		skb_frag_t			frag;
+
+		/* .ndo_xdp_xmit() */
+		struct {
+			union {
+				struct xdp_frame		*xdpf;
+				dma_addr_t			dma;
+			};
+			union {
+				struct {
+					u32				len;
+					u32				flags;
+				};
+				aligned_u64			opts;
+			};
+		};
 	};
 } __aligned_largest;
 static_assert(offsetof(struct libeth_xdp_tx_frame, frag.len) ==
@@ -107,7 +140,7 @@ static_assert(offsetof(struct libeth_xdp_tx_frame, frag.len) ==
 
 /**
  * struct libeth_xdp_tx_bulk - XDP Tx frame bulk for bulk sending
- * @prog: corresponding active XDP program
+ * @prog: corresponding active XDP program, %NULL for .ndo_xdp_xmit()
  * @dev: &net_device which the frames are transmitted on
  * @xdpsq: shortcut to the corresponding driver-specific XDPSQ structure
  * @count: current number of frames in @bulk
@@ -438,7 +471,7 @@ void libeth_xdp_tx_exception(struct libeth_xdp_tx_bulk *bq, u32 sent,
 /**
  * __libeth_xdp_tx_flush_bulk - internal helper to flush one XDP Tx bulk
  * @bq: bulk to flush
- * @flags: XDP TX flags
+ * @flags: XDP TX flags (.ndo_xdp_xmit() etc.)
  * @prep: driver-specific callback to prepare the queue for sending
  * @fill: libeth_xdp callback to fill &libeth_sqe and &libeth_xdp_tx_desc
  * @xmit: driver callback to fill a HW descriptor
@@ -488,6 +521,259 @@ __libeth_xdp_tx_flush_bulk(struct libeth_xdp_tx_bulk *bq, u32 flags,
 	__libeth_xdp_tx_flush_bulk(bq, flags, prep, libeth_xdp_tx_fill_buf,   \
 				   xmit)
 
+/* .ndo_xdp_xmit() implementation */
+
+/**
+ * libeth_xdp_xmit_frame_dma - internal helper to access DMA of an &xdp_frame
+ * @xf: pointer to the XDP frame
+ *
+ * There's no place in &libeth_xdp_tx_frame to store DMA address for an
+ * &xdp_frame head. The headroom is used then, the address is placed right
+ * after the frame struct, naturally aligned.
+ *
+ * Return: pointer to the DMA address to use.
+ */
+#define libeth_xdp_xmit_frame_dma(xf)					      \
+	_Generic((xf),							      \
+		 const struct xdp_frame *:				      \
+			(const dma_addr_t *)__libeth_xdp_xmit_frame_dma(xf),  \
+		 struct xdp_frame *:					      \
+			(dma_addr_t *)__libeth_xdp_xmit_frame_dma(xf)	      \
+	)
+
+static inline void *__libeth_xdp_xmit_frame_dma(const struct xdp_frame *xdpf)
+{
+	void *addr = (void *)(xdpf + 1);
+
+	if (!IS_ENABLED(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS) &&
+	    __alignof(*xdpf) < sizeof(dma_addr_t))
+		addr = PTR_ALIGN(addr, sizeof(dma_addr_t));
+
+	return addr;
+}
+
+/**
+ * libeth_xdp_xmit_queue_head - internal helper for queueing one XDP xmit head
+ * @bq: XDP Tx bulk to queue the head frag to
+ * @xdpf: XDP frame with the head to queue
+ * @dev: device to perform DMA mapping
+ *
+ * Return: ``LIBETH_XDP_DROP`` on DMA mapping error,
+ *	   ``LIBETH_XDP_PASS`` if it's the only frag in the frame,
+ *	   ``LIBETH_XDP_TX`` if it's an S/G frame.
+ */
+static inline u32 libeth_xdp_xmit_queue_head(struct libeth_xdp_tx_bulk *bq,
+					     struct xdp_frame *xdpf,
+					     struct device *dev)
+{
+	dma_addr_t dma;
+
+	dma = dma_map_single(dev, xdpf->data, xdpf->len, DMA_TO_DEVICE);
+	if (dma_mapping_error(dev, dma))
+		return LIBETH_XDP_DROP;
+
+	*libeth_xdp_xmit_frame_dma(xdpf) = dma;
+
+	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
+		.xdpf	= xdpf,
+		.len	= xdpf->len,
+		.flags	= LIBETH_XDP_TX_FIRST,
+	};
+
+	if (!xdp_frame_has_frags(xdpf))
+		return LIBETH_XDP_PASS;
+
+	bq->bulk[bq->count - 1].flags |= LIBETH_XDP_TX_MULTI;
+
+	return LIBETH_XDP_TX;
+}
+
+/**
+ * libeth_xdp_xmit_queue_frag - internal helper for queueing one XDP xmit frag
+ * @bq: XDP Tx bulk to queue the frag to
+ * @frag: frag to queue
+ * @dev: device to perform DMA mapping
+ *
+ * Return: true on success, false on DMA mapping error.
+ */
+static inline bool libeth_xdp_xmit_queue_frag(struct libeth_xdp_tx_bulk *bq,
+					      const skb_frag_t *frag,
+					      struct device *dev)
+{
+	dma_addr_t dma;
+
+	dma = skb_frag_dma_map(dev, frag);
+	if (dma_mapping_error(dev, dma))
+		return false;
+
+	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
+		.dma	= dma,
+		.len	= skb_frag_size(frag),
+	};
+
+	return true;
+}
+
+/**
+ * libeth_xdp_xmit_queue_bulk - internal helper for queueing one XDP xmit frame
+ * @bq: XDP Tx bulk to queue the frame to
+ * @xdpf: XDP frame to queue
+ * @flush_bulk: driver callback to flush the bulk to the HW queue
+ *
+ * Return: ``LIBETH_XDP_TX`` on success,
+ *	   ``LIBETH_XDP_DROP`` if the frame should be dropped by the stack,
+ *	   ``LIBETH_XDP_ABORTED`` if the frame will be dropped by libeth_xdp.
+ */
+static __always_inline u32
+libeth_xdp_xmit_queue_bulk(struct libeth_xdp_tx_bulk *bq,
+			   struct xdp_frame *xdpf,
+			   bool (*flush_bulk)(struct libeth_xdp_tx_bulk *bq,
+					      u32 flags))
+{
+	u32 head, nr_frags, i, ret = LIBETH_XDP_TX;
+	struct device *dev = bq->dev->dev.parent;
+	const struct skb_shared_info *sinfo;
+
+	if (unlikely(bq->count == LIBETH_XDP_TX_BULK) &&
+	    unlikely(!flush_bulk(bq, LIBETH_XDP_TX_NDO)))
+		return LIBETH_XDP_DROP;
+
+	head = libeth_xdp_xmit_queue_head(bq, xdpf, dev);
+	if (head == LIBETH_XDP_PASS)
+		goto out;
+	else if (head == LIBETH_XDP_DROP)
+		return LIBETH_XDP_DROP;
+
+	sinfo = xdp_get_shared_info_from_frame(xdpf);
+	nr_frags = sinfo->nr_frags;
+
+	for (i = 0; i < nr_frags; i++) {
+		if (unlikely(bq->count == LIBETH_XDP_TX_BULK) &&
+		    unlikely(!flush_bulk(bq, LIBETH_XDP_TX_NDO)))
+			break;
+
+		if (!libeth_xdp_xmit_queue_frag(bq, &sinfo->frags[i], dev))
+			break;
+	}
+
+	if (unlikely(i < nr_frags))
+		ret = LIBETH_XDP_ABORTED;
+
+out:
+	bq->bulk[bq->count - 1].flags |= LIBETH_XDP_TX_LAST;
+
+	return ret;
+}
+
+/**
+ * libeth_xdp_xmit_fill_buf - internal helper to fill one XDP xmit &libeth_sqe
+ * @frm: XDP Tx frame from the bulk
+ * @i: index on the HW queue
+ * @sq: XDPSQ abstraction for the queue
+ * @priv: private data
+ *
+ * Return: XDP Tx descriptor with the mapped DMA and other info to pass to
+ * the driver callback.
+ */
+static inline struct libeth_xdp_tx_desc
+libeth_xdp_xmit_fill_buf(struct libeth_xdp_tx_frame frm, u32 i,
+			 const struct libeth_xdpsq *sq, u64 priv)
+{
+	struct libeth_xdp_tx_desc desc;
+	struct libeth_sqe *sqe;
+	struct xdp_frame *xdpf;
+
+	if (frm.flags & LIBETH_XDP_TX_FIRST) {
+		xdpf = frm.xdpf;
+		desc.addr = *libeth_xdp_xmit_frame_dma(xdpf);
+	} else {
+		xdpf = NULL;
+		desc.addr = frm.dma;
+	}
+	desc.opts = frm.opts;
+
+	sqe = &sq->sqes[i];
+	dma_unmap_addr_set(sqe, dma, desc.addr);
+	dma_unmap_len_set(sqe, len, desc.len);
+
+	if (!xdpf) {
+		sqe->type = LIBETH_SQE_XDP_XMIT_FRAG;
+		return desc;
+	}
+
+	sqe->type = LIBETH_SQE_XDP_XMIT;
+	sqe->xdpf = xdpf;
+	libeth_xdp_tx_fill_stats(sqe, &desc,
+				 xdp_get_shared_info_from_frame(xdpf));
+
+	return desc;
+}
+
+/**
+ * libeth_xdp_xmit_flush_bulk - wrapper to define flush of one XDP xmit bulk
+ * @bq: bulk to flush
+ * @flags: Tx flags, see __libeth_xdp_tx_flush_bulk()
+ * @prep: driver callback to prepare the queue
+ * @xmit: driver callback to fill a HW descriptor
+ */
+#define libeth_xdp_xmit_flush_bulk(bq, flags, prep, xmit)		      \
+	__libeth_xdp_tx_flush_bulk(bq, (flags) | LIBETH_XDP_TX_NDO, prep,     \
+				   libeth_xdp_xmit_fill_buf, xmit)
+
+u32 libeth_xdp_xmit_return_bulk(const struct libeth_xdp_tx_frame *bq,
+				u32 count, const struct net_device *dev);
+
+/**
+ * __libeth_xdp_xmit_do_bulk - internal function to implement .ndo_xdp_xmit()
+ * @bq: XDP Tx bulk to queue frames to
+ * @frames: XDP frames passed by the stack
+ * @n: number of frames
+ * @flags: flags passed by the stack
+ * @flush_bulk: driver callback to flush an XDP xmit bulk
+ * @finalize: driver callback to finalize sending XDP Tx frames on the queue
+ *
+ * Perform common checks, map the frags and queue them to the bulk, then flush
+ * the bulk to the XDPSQ. If requested by the stack, finalize the queue.
+ *
+ * Return: number of frames send or -errno on error.
+ */
+static __always_inline int
+__libeth_xdp_xmit_do_bulk(struct libeth_xdp_tx_bulk *bq,
+			  struct xdp_frame **frames, u32 n, u32 flags,
+			  bool (*flush_bulk)(struct libeth_xdp_tx_bulk *bq,
+					     u32 flags),
+			  void (*finalize)(void *xdpsq, bool sent, bool flush))
+{
+	u32 nxmit = 0;
+
+	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
+		return -EINVAL;
+
+	for (u32 i = 0; likely(i < n); i++) {
+		u32 ret;
+
+		ret = libeth_xdp_xmit_queue_bulk(bq, frames[i], flush_bulk);
+		if (unlikely(ret != LIBETH_XDP_TX)) {
+			nxmit += ret == LIBETH_XDP_ABORTED;
+			break;
+		}
+
+		nxmit++;
+	}
+
+	if (bq->count) {
+		flush_bulk(bq, LIBETH_XDP_TX_NDO);
+		if (unlikely(bq->count))
+			nxmit -= libeth_xdp_xmit_return_bulk(bq->bulk,
+							     bq->count,
+							     bq->dev);
+	}
+
+	finalize(bq->xdpsq, nxmit, flags & XDP_XMIT_FLUSH);
+
+	return nxmit;
+}
+
 /* Rx polling path */
 
 static inline void libeth_xdp_return_va(const void *data, bool napi)
diff --git a/drivers/net/ethernet/intel/libeth/xdp.c b/drivers/net/ethernet/intel/libeth/xdp.c
index 7fdb35d36f6f..0908520d1d38 100644
--- a/drivers/net/ethernet/intel/libeth/xdp.c
+++ b/drivers/net/ethernet/intel/libeth/xdp.c
@@ -40,7 +40,7 @@ static void __cold libeth_trace_xdp_exception(const struct net_device *dev,
  * libeth_xdp_tx_exception - handle Tx exceptions of XDP frames
  * @bq: XDP Tx frame bulk
  * @sent: number of frames sent successfully (from this bulk)
- * @flags: internal libeth_xdp flags
+ * @flags: internal libeth_xdp flags (.ndo_xdp_xmit etc.)
  *
  * Cold helper used by __libeth_xdp_tx_flush_bulk(), do not call directly.
  * Reports XDP Tx exceptions, frees the frames that won't be sent or adjust
@@ -52,7 +52,8 @@ void __cold libeth_xdp_tx_exception(struct libeth_xdp_tx_bulk *bq, u32 sent,
 	const struct libeth_xdp_tx_frame *pos = &bq->bulk[sent];
 	u32 left = bq->count - sent;
 
-	libeth_trace_xdp_exception(bq->dev, bq->prog, XDP_TX);
+	if (!(flags & LIBETH_XDP_TX_NDO))
+		libeth_trace_xdp_exception(bq->dev, bq->prog, XDP_TX);
 
 	if (!(flags & LIBETH_XDP_TX_DROP)) {
 		memmove(bq->bulk, pos, left * sizeof(*bq->bulk));
@@ -61,12 +62,42 @@ void __cold libeth_xdp_tx_exception(struct libeth_xdp_tx_bulk *bq, u32 sent,
 		return;
 	}
 
-	libeth_xdp_tx_return_bulk(pos, left);
+	if (!(flags & LIBETH_XDP_TX_NDO))
+		libeth_xdp_tx_return_bulk(pos, left);
+	else
+		libeth_xdp_xmit_return_bulk(pos, left, bq->dev);
 
 	bq->count = 0;
 }
 EXPORT_SYMBOL_GPL(libeth_xdp_tx_exception);
 
+/* .ndo_xdp_xmit() implementation */
+
+u32 __cold libeth_xdp_xmit_return_bulk(const struct libeth_xdp_tx_frame *bq,
+				       u32 count, const struct net_device *dev)
+{
+	u32 n = 0;
+
+	for (u32 i = 0; i < count; i++) {
+		const struct libeth_xdp_tx_frame *frm = &bq[i];
+		dma_addr_t dma;
+
+		if (frm->flags & LIBETH_XDP_TX_FIRST)
+			dma = *libeth_xdp_xmit_frame_dma(frm->xdpf);
+		else
+			dma = dma_unmap_addr(frm, dma);
+
+		dma_unmap_page(dev->dev.parent, dma, dma_unmap_len(frm, len),
+			       DMA_TO_DEVICE);
+
+		/* Actual xdp_frames are freed by the core */
+		n += !!(frm->flags & LIBETH_XDP_TX_FIRST);
+	}
+
+	return n;
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_xmit_return_bulk);
+
 /* Rx polling path */
 
 /**
-- 
2.49.0

