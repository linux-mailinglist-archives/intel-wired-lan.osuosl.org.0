Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CED8D81D16B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:59:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DA7042D05;
	Sat, 23 Dec 2023 02:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DA7042D05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300363;
	bh=7uigsL27bP6yO3JMtQi4sUvZVy79nW7z6y3mdA9mkzk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KnL0+R2cMe3lJQjNFh6dghauOKSRyPP3JrtnPShz2ij/gm9XrCp1FVf7HS6tLQU3I
	 INVK7ad7dtC5+ikWHp7AaK9VhV+eMcgUqMYIYxlS6hkQ3k8k+yY3YUKovSKy5I3tEE
	 nXEISsVSXP/R8P9O4U8NfeNqVQnFMzA+s1H97SYuIdqjsYHfq6FiCpHJt847KCxyGZ
	 0XZidk5NPt5QJyiY5pnfqoDqAlSnFu3KohYvWng+dS7FdHFczgRsssPWrKFjNnKegn
	 xUGc88Ddv4Cozg8WpCOsQPf38NFdiD8rbwpUX/HFTQKRrMH4eWB3UfEw5rNYfiw74W
	 Ru9ETcfQM1LOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Idz-xQCZULhW; Sat, 23 Dec 2023 02:59:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89600428A0;
	Sat, 23 Dec 2023 02:59:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89600428A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72C0F1BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B83360A9B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B83360A9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8PPAAZsN2M0H for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:58:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0275060A8A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0275060A8A
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610885"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610885"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:58:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537502"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:55 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:34 +0100
Message-ID: <20231223025554.2316836-15-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300338; x=1734836338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dHGtKdZRC40H8UJnTnHa+n6CAVSh4xm7lcaExv1dtTs=;
 b=BSpo9cbjHB1mJOUOqVaz+8OUyT1kjkJ1DsH8GP+V2pBPrkbXEOk/Zzxh
 CQaOe9JPNTov5F3bBJsKAC+RbaDHaz6QWRUbflDntileqFK8jtGObYz/y
 rHtBxiBX8x2Z2lHuNu4rpsSIGPayKOUdcN0OB02PVLvzl8hJwdhchqyHx
 UwPlQb55QzJiXiMSYJruZi/rY/NB+tuVcUhzJrM3jD3ZoRDQwefKLQSCt
 D+412fD/7q9aQUIn8h7xnlSqj0q4atdiq3exl8KdW0QJ37OLOUZpDG8ua
 6IL4V6OSeGP63QWm7svtbLNJyJZpwTMG32lk57uuOCiwvxjP22p59I6lR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BSpo9cbj
Subject: [Intel-wired-lan] [PATCH RFC net-next 14/34] xdp: get rid of
 xdp_frame::mem.id
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Initially, xdp_frame::mem.id was used to search for the corresponding
&page_pool to return the page correctly.
However, after that struct page now contains a direct pointer to its PP,
further keeping of this field makes no sense. xdp_return_frame_bulk()
still uses it to do a lookup, but this is rather a leftover.
Remove xdp_frame::mem and replace it with ::mem_type, as only memory
type still matters and we need to know it to be able to free the frame
correctly.
But the main reason for this change was to allow mixing pages from
different &page_pools within one &xdp_buff/&xdp_frame. Why not?
Adjust xdp_return_frame_bulk() and page_pool_put_page_bulk(), so that
they won't be tied to a particular pool. Let the latter splice the
bulk when it encounters a page whichs PP is different and flush it
recursively.
As a cute side effect, sizeof(struct xdp_frame) on x86_64 is reduced
from 40 to 32 bytes, giving a bit more free headroom in front of the
frame.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 .../net/ethernet/freescale/dpaa/dpaa_eth.c    |  2 +-
 drivers/net/veth.c                            |  4 +-
 include/net/page_pool/types.h                 |  6 +--
 include/net/xdp.h                             | 17 +++----
 kernel/bpf/cpumap.c                           |  2 +-
 net/bpf/test_run.c                            |  2 +-
 net/core/filter.c                             |  2 +-
 net/core/page_pool.c                          | 31 ++++++++++--
 net/core/xdp.c                                | 49 ++++++-------------
 9 files changed, 58 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
index dcbc598b11c6..4f1fb8181131 100644
--- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
+++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
@@ -2263,7 +2263,7 @@ static int dpaa_a050385_wa_xdpf(struct dpaa_priv *priv,
 	new_xdpf->len = xdpf->len;
 	new_xdpf->headroom = priv->tx_headroom;
 	new_xdpf->frame_sz = DPAA_BP_RAW_SIZE;
-	new_xdpf->mem.type = MEM_TYPE_PAGE_ORDER0;
+	new_xdpf->mem_type = MEM_TYPE_PAGE_ORDER0;
 
 	/* Release the initial buffer */
 	xdp_return_frame_rx_napi(xdpf);
diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 578e36ea1589..8223c5c68704 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -633,7 +633,7 @@ static struct xdp_frame *veth_xdp_rcv_one(struct veth_rq *rq,
 			break;
 		case XDP_TX:
 			orig_frame = *frame;
-			xdp->rxq->mem = frame->mem;
+			xdp->rxq->mem.type = frame->mem_type;
 			if (unlikely(veth_xdp_tx(rq, xdp, bq) < 0)) {
 				trace_xdp_exception(rq->dev, xdp_prog, act);
 				frame = &orig_frame;
@@ -645,7 +645,7 @@ static struct xdp_frame *veth_xdp_rcv_one(struct veth_rq *rq,
 			goto xdp_xmit;
 		case XDP_REDIRECT:
 			orig_frame = *frame;
-			xdp->rxq->mem = frame->mem;
+			xdp->rxq->mem.type = frame->mem_type;
 			if (xdp_do_redirect(rq->dev, xdp, xdp_prog)) {
 				frame = &orig_frame;
 				stats->rx_drops++;
diff --git a/include/net/page_pool/types.h b/include/net/page_pool/types.h
index 24733bef19bc..adc6630ace9c 100644
--- a/include/net/page_pool/types.h
+++ b/include/net/page_pool/types.h
@@ -222,8 +222,7 @@ void page_pool_unlink_napi(struct page_pool *pool);
 void page_pool_destroy(struct page_pool *pool);
 void page_pool_use_xdp_mem(struct page_pool *pool, void (*disconnect)(void *),
 			   struct xdp_mem_info *mem);
-void page_pool_put_page_bulk(struct page_pool *pool, void **data,
-			     int count);
+void page_pool_put_page_bulk(void **data, int count);
 #else
 static inline void page_pool_unlink_napi(struct page_pool *pool)
 {
@@ -239,8 +238,7 @@ static inline void page_pool_use_xdp_mem(struct page_pool *pool,
 {
 }
 
-static inline void page_pool_put_page_bulk(struct page_pool *pool, void **data,
-					   int count)
+static inline void page_pool_put_page_bulk(void **data, int count)
 {
 }
 #endif
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 4fcf0ac48345..66854b755b58 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -197,11 +197,8 @@ struct xdp_frame {
 	void *data;
 	u16 len;
 	u16 headroom;
-	u32 metasize; /* uses lower 8-bits */
-	/* Lifetime of xdp_rxq_info is limited to NAPI/enqueue time,
-	 * while mem info is valid on remote CPU.
-	 */
-	struct xdp_mem_info mem;
+	u16 metasize;
+	enum xdp_mem_type mem_type:16;
 	struct net_device *dev_rx; /* used by cpumap */
 	u32 frame_sz;
 	u32 flags; /* supported values defined in xdp_buff_flags */
@@ -221,14 +218,12 @@ xdp_frame_is_frag_pfmemalloc(const struct xdp_frame *frame)
 #define XDP_BULK_QUEUE_SIZE	16
 struct xdp_frame_bulk {
 	int count;
-	void *xa;
 	void *q[XDP_BULK_QUEUE_SIZE];
 };
 
 static __always_inline void xdp_frame_bulk_init(struct xdp_frame_bulk *bq)
 {
-	/* bq->count will be zero'ed when bq->xa gets updated */
-	bq->xa = NULL;
+	bq->count = 0;
 }
 
 static inline struct skb_shared_info *
@@ -344,13 +339,13 @@ struct xdp_frame *xdp_convert_buff_to_frame(struct xdp_buff *xdp)
 	if (unlikely(xdp_update_frame_from_buff(xdp, xdp_frame) < 0))
 		return NULL;
 
-	/* rxq only valid until napi_schedule ends, convert to xdp_mem_info */
-	xdp_frame->mem = xdp->rxq->mem;
+	/* rxq only valid until napi_schedule ends, convert to xdp_mem_type */
+	xdp_frame->mem_type = xdp->rxq->mem.type;
 
 	return xdp_frame;
 }
 
-void __xdp_return(void *data, struct xdp_mem_info *mem, bool napi_direct,
+void __xdp_return(void *data, enum xdp_mem_type mem_type, bool napi_direct,
 		  struct xdp_buff *xdp);
 void xdp_return_frame(struct xdp_frame *xdpf);
 void xdp_return_frame_rx_napi(struct xdp_frame *xdpf);
diff --git a/kernel/bpf/cpumap.c b/kernel/bpf/cpumap.c
index 8a0bb80fe48a..3d557d458284 100644
--- a/kernel/bpf/cpumap.c
+++ b/kernel/bpf/cpumap.c
@@ -191,7 +191,7 @@ static int cpu_map_bpf_prog_run_xdp(struct bpf_cpu_map_entry *rcpu,
 		int err;
 
 		rxq.dev = xdpf->dev_rx;
-		rxq.mem = xdpf->mem;
+		rxq.mem.type = xdpf->mem_type;
 		/* TODO: report queue_index to xdp_rxq_info */
 
 		xdp_convert_frame_to_buff(xdpf, &xdp);
diff --git a/net/bpf/test_run.c b/net/bpf/test_run.c
index b612b28ebeac..a35940a41589 100644
--- a/net/bpf/test_run.c
+++ b/net/bpf/test_run.c
@@ -151,7 +151,7 @@ static void xdp_test_run_init_page(struct page *page, void *arg)
 	new_ctx->data = new_ctx->data_meta + meta_len;
 
 	xdp_update_frame_from_buff(new_ctx, frm);
-	frm->mem = new_ctx->rxq->mem;
+	frm->mem_type = new_ctx->rxq->mem.type;
 
 	memcpy(&head->orig_ctx, new_ctx, sizeof(head->orig_ctx));
 }
diff --git a/net/core/filter.c b/net/core/filter.c
index 4ace1edc4de1..e79e74edbae4 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -4114,7 +4114,7 @@ static int bpf_xdp_frags_shrink_tail(struct xdp_buff *xdp, int offset)
 		if (skb_frag_size(frag) == shrink) {
 			struct page *page = skb_frag_page(frag);
 
-			__xdp_return(page_address(page), &xdp->rxq->mem,
+			__xdp_return(page_address(page), xdp->rxq->mem.type,
 				     false, NULL);
 			n_frags_free++;
 		} else {
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index bdebc9028da3..742289cd86cd 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -698,9 +698,18 @@ void page_pool_put_unrefed_page(struct page_pool *pool, struct page *page,
 }
 EXPORT_SYMBOL(page_pool_put_unrefed_page);
 
+static void page_pool_bulk_splice(struct xdp_frame_bulk *bulk, void *data)
+{
+	if (unlikely(bulk->count == ARRAY_SIZE(bulk->q))) {
+		page_pool_put_page_bulk(bulk->q, bulk->count);
+		bulk->count = 0;
+	}
+
+	bulk->q[bulk->count++] = data;
+}
+
 /**
  * page_pool_put_page_bulk() - release references on multiple pages
- * @pool:	pool from which pages were allocated
  * @data:	array holding page pointers
  * @count:	number of pages in @data
  *
@@ -713,12 +722,15 @@ EXPORT_SYMBOL(page_pool_put_unrefed_page);
  * Please note the caller must not use data area after running
  * page_pool_put_page_bulk(), as this function overwrites it.
  */
-void page_pool_put_page_bulk(struct page_pool *pool, void **data,
-			     int count)
+void page_pool_put_page_bulk(void **data, int count)
 {
+	struct page_pool *pool = NULL;
+	struct xdp_frame_bulk sub;
 	int i, bulk_len = 0;
 	bool in_softirq;
 
+	xdp_frame_bulk_init(&sub);
+
 	for (i = 0; i < count; i++) {
 		struct page *page = virt_to_head_page(data[i]);
 
@@ -726,12 +738,25 @@ void page_pool_put_page_bulk(struct page_pool *pool, void **data,
 		if (!page_pool_is_last_ref(page))
 			continue;
 
+		if (unlikely(!pool)) {
+			pool = page->pp;
+		} else if (page->pp != pool) {
+			/* If the page belongs to a different page_pool,
+			 * splice the array and handle it recursively.
+			 */
+			page_pool_bulk_splice(&sub, data[i]);
+			continue;
+		}
+
 		page = __page_pool_put_page(pool, page, -1, false);
 		/* Approved for bulk recycling in ptr_ring cache */
 		if (page)
 			data[bulk_len++] = page;
 	}
 
+	if (sub.count)
+		page_pool_put_page_bulk(sub.q, sub.count);
+
 	if (unlikely(!bulk_len))
 		return;
 
diff --git a/net/core/xdp.c b/net/core/xdp.c
index ed73b97472b4..8ef1d735a7eb 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -386,12 +386,12 @@ EXPORT_SYMBOL_GPL(xdp_rxq_info_attach_page_pool);
  * is used for those calls sites.  Thus, allowing for faster recycling
  * of xdp_frames/pages in those cases.
  */
-void __xdp_return(void *data, struct xdp_mem_info *mem, bool napi_direct,
+void __xdp_return(void *data, enum xdp_mem_type mem_type, bool napi_direct,
 		  struct xdp_buff *xdp)
 {
 	struct page *page;
 
-	switch (mem->type) {
+	switch (mem_type) {
 	case MEM_TYPE_PAGE_POOL:
 		page = virt_to_head_page(data);
 		if (napi_direct && xdp_return_frame_no_direct())
@@ -414,7 +414,7 @@ void __xdp_return(void *data, struct xdp_mem_info *mem, bool napi_direct,
 		break;
 	default:
 		/* Not possible, checked in xdp_rxq_info_reg_mem_model() */
-		WARN(1, "Incorrect XDP memory type (%d) usage", mem->type);
+		WARN(1, "Incorrect XDP memory type (%d) usage", mem_type);
 		break;
 	}
 }
@@ -431,10 +431,10 @@ void xdp_return_frame(struct xdp_frame *xdpf)
 	for (i = 0; i < sinfo->nr_frags; i++) {
 		struct page *page = skb_frag_page(&sinfo->frags[i]);
 
-		__xdp_return(page_address(page), &xdpf->mem, false, NULL);
+		__xdp_return(page_address(page), xdpf->mem_type, false, NULL);
 	}
 out:
-	__xdp_return(xdpf->data, &xdpf->mem, false, NULL);
+	__xdp_return(xdpf->data, xdpf->mem_type, false, NULL);
 }
 EXPORT_SYMBOL_GPL(xdp_return_frame);
 
@@ -450,10 +450,10 @@ void xdp_return_frame_rx_napi(struct xdp_frame *xdpf)
 	for (i = 0; i < sinfo->nr_frags; i++) {
 		struct page *page = skb_frag_page(&sinfo->frags[i]);
 
-		__xdp_return(page_address(page), &xdpf->mem, true, NULL);
+		__xdp_return(page_address(page), xdpf->mem_type, true, NULL);
 	}
 out:
-	__xdp_return(xdpf->data, &xdpf->mem, true, NULL);
+	__xdp_return(xdpf->data, xdpf->mem_type, true, NULL);
 }
 EXPORT_SYMBOL_GPL(xdp_return_frame_rx_napi);
 
@@ -469,12 +469,10 @@ EXPORT_SYMBOL_GPL(xdp_return_frame_rx_napi);
  */
 void xdp_flush_frame_bulk(struct xdp_frame_bulk *bq)
 {
-	struct xdp_mem_allocator *xa = bq->xa;
-
-	if (unlikely(!xa || !bq->count))
+	if (unlikely(!bq->count))
 		return;
 
-	page_pool_put_page_bulk(xa->page_pool, bq->q, bq->count);
+	page_pool_put_page_bulk(bq->q, bq->count);
 	/* bq->xa is not cleared to save lookup, if mem.id same in next bulk */
 	bq->count = 0;
 }
@@ -484,29 +482,14 @@ EXPORT_SYMBOL_GPL(xdp_flush_frame_bulk);
 void xdp_return_frame_bulk(struct xdp_frame *xdpf,
 			   struct xdp_frame_bulk *bq)
 {
-	struct xdp_mem_info *mem = &xdpf->mem;
-	struct xdp_mem_allocator *xa;
-
-	if (mem->type != MEM_TYPE_PAGE_POOL) {
+	if (xdpf->mem_type != MEM_TYPE_PAGE_POOL) {
 		xdp_return_frame(xdpf);
 		return;
 	}
 
-	xa = bq->xa;
-	if (unlikely(!xa)) {
-		xa = rhashtable_lookup(mem_id_ht, &mem->id, mem_id_rht_params);
-		bq->count = 0;
-		bq->xa = xa;
-	}
-
 	if (bq->count == XDP_BULK_QUEUE_SIZE)
 		xdp_flush_frame_bulk(bq);
 
-	if (unlikely(mem->id != xa->mem.id)) {
-		xdp_flush_frame_bulk(bq);
-		bq->xa = rhashtable_lookup(mem_id_ht, &mem->id, mem_id_rht_params);
-	}
-
 	if (unlikely(xdp_frame_has_frags(xdpf))) {
 		struct skb_shared_info *sinfo;
 		int i;
@@ -536,10 +519,11 @@ void xdp_return_buff(struct xdp_buff *xdp)
 	for (i = 0; i < sinfo->nr_frags; i++) {
 		struct page *page = skb_frag_page(&sinfo->frags[i]);
 
-		__xdp_return(page_address(page), &xdp->rxq->mem, true, xdp);
+		__xdp_return(page_address(page), xdp->rxq->mem.type, true,
+			     xdp);
 	}
 out:
-	__xdp_return(xdp->data, &xdp->rxq->mem, true, xdp);
+	__xdp_return(xdp->data, xdp->rxq->mem.type, true, xdp);
 }
 EXPORT_SYMBOL_GPL(xdp_return_buff);
 
@@ -585,7 +569,7 @@ struct xdp_frame *xdp_convert_zc_to_xdp_frame(struct xdp_buff *xdp)
 	xdpf->headroom = 0;
 	xdpf->metasize = metasize;
 	xdpf->frame_sz = PAGE_SIZE;
-	xdpf->mem.type = MEM_TYPE_PAGE_ORDER0;
+	xdpf->mem_type = MEM_TYPE_PAGE_ORDER0;
 
 	xsk_buff_free(xdp);
 	return xdpf;
@@ -669,7 +653,7 @@ struct sk_buff *__xdp_build_skb_from_frame(struct xdp_frame *xdpf,
 {
 	struct xdp_rxq_info rxq = {
 		.dev		= dev,
-		.mem		= xdpf->mem,
+		.mem.type	= xdpf->mem_type,
 	};
 	struct xdp_buff xdp;
 
@@ -731,8 +715,7 @@ struct xdp_frame *xdpf_clone(struct xdp_frame *xdpf)
 	nxdpf = addr;
 	nxdpf->data = addr + headroom;
 	nxdpf->frame_sz = PAGE_SIZE;
-	nxdpf->mem.type = MEM_TYPE_PAGE_ORDER0;
-	nxdpf->mem.id = 0;
+	nxdpf->mem_type = MEM_TYPE_PAGE_ORDER0;
 
 	return nxdpf;
 }
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
