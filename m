Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B32B74DD8E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 607C12207F;
	Thu, 20 Jun 2019 22:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85Qzb-5HhuYx; Thu, 20 Jun 2019 22:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D4B4522115;
	Thu, 20 Jun 2019 22:52:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E7B51BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3AEEA87E1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ikH1k4KjyNAA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 17:24:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 409DA87E19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 10:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="359020365"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jun 2019 10:24:45 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 09:09:53 +0000
Message-Id: <20190620090958.2135-7-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620090958.2135-1-kevin.laatz@intel.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 06/11] xsk: add support to allow unaligned
 chunk placement
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
Cc: bruce.richardson@intel.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, ciara.loftus@intel.com,
 Kevin Laatz <kevin.laatz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, addresses are chunk size aligned. This means, we are very
restricted in terms of where we can place chunk within the umem. For
example, if we have a chunk size of 2k, then our chunks can only be placed
at 0,2k,4k,6k,8k... and so on (ie. every 2k starting from 0).

This patch introduces the ability to use unaligned chunks. With these
changes, we are no longer bound to having to place chunks at a 2k (or
whatever your chunk size is) interval. Since we are no longer dealing with
aligned chunks, they can now cross page boundaries. Checks for page
contiguity have been added in order to keep track of which pages are
followed by a physically contiguous page.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 include/net/xdp_sock.h      |  2 ++
 include/uapi/linux/if_xdp.h |  4 +++
 net/xdp/xdp_umem.c          | 17 +++++++----
 net/xdp/xsk.c               | 60 ++++++++++++++++++++++++++++++++-----
 net/xdp/xsk_queue.h         | 60 ++++++++++++++++++++++++++++++++-----
 5 files changed, 121 insertions(+), 22 deletions(-)

diff --git a/include/net/xdp_sock.h b/include/net/xdp_sock.h
index ae0f368a62bb..c07977e271c4 100644
--- a/include/net/xdp_sock.h
+++ b/include/net/xdp_sock.h
@@ -19,6 +19,7 @@ struct xsk_queue;
 struct xdp_umem_page {
 	void *addr;
 	dma_addr_t dma;
+	bool next_pg_contig;
 };
 
 struct xdp_umem_fq_reuse {
@@ -48,6 +49,7 @@ struct xdp_umem {
 	bool zc;
 	spinlock_t xsk_list_lock;
 	struct list_head xsk_list;
+	u32 flags;
 };
 
 struct xdp_sock {
diff --git a/include/uapi/linux/if_xdp.h b/include/uapi/linux/if_xdp.h
index caed8b1614ff..8548f2110a77 100644
--- a/include/uapi/linux/if_xdp.h
+++ b/include/uapi/linux/if_xdp.h
@@ -17,6 +17,9 @@
 #define XDP_COPY	(1 << 1) /* Force copy-mode */
 #define XDP_ZEROCOPY	(1 << 2) /* Force zero-copy mode */
 
+/* Flags for xsk_umem_config flags */
+#define XDP_UMEM_UNALIGNED_CHUNKS (1 << 0)
+
 struct sockaddr_xdp {
 	__u16 sxdp_family;
 	__u16 sxdp_flags;
@@ -52,6 +55,7 @@ struct xdp_umem_reg {
 	__u64 len; /* Length of packet data area */
 	__u32 chunk_size;
 	__u32 headroom;
+	__u32 flags;
 };
 
 struct xdp_statistics {
diff --git a/net/xdp/xdp_umem.c b/net/xdp/xdp_umem.c
index 2b18223e7eb8..4d4782572855 100644
--- a/net/xdp/xdp_umem.c
+++ b/net/xdp/xdp_umem.c
@@ -301,12 +301,14 @@ static int xdp_umem_account_pages(struct xdp_umem *umem)
 
 static int xdp_umem_reg(struct xdp_umem *umem, struct xdp_umem_reg *mr)
 {
+	bool unaligned_chunks = mr->flags & XDP_UMEM_UNALIGNED_CHUNKS;
 	u32 chunk_size = mr->chunk_size, headroom = mr->headroom;
 	unsigned int chunks, chunks_per_page;
 	u64 addr = mr->addr, size = mr->len;
 	int size_chk, err, i;
 
-	if (chunk_size < XDP_UMEM_MIN_CHUNK_SIZE || chunk_size > PAGE_SIZE) {
+	if ((!unaligned_chunks && chunk_size < XDP_UMEM_MIN_CHUNK_SIZE) ||
+			chunk_size > PAGE_SIZE) {
 		/* Strictly speaking we could support this, if:
 		 * - huge pages, or*
 		 * - using an IOMMU, or
@@ -316,7 +318,7 @@ static int xdp_umem_reg(struct xdp_umem *umem, struct xdp_umem_reg *mr)
 		return -EINVAL;
 	}
 
-	if (!is_power_of_2(chunk_size))
+	if (!unaligned_chunks && !is_power_of_2(chunk_size))
 		return -EINVAL;
 
 	if (!PAGE_ALIGNED(addr)) {
@@ -333,9 +335,11 @@ static int xdp_umem_reg(struct xdp_umem *umem, struct xdp_umem_reg *mr)
 	if (chunks == 0)
 		return -EINVAL;
 
-	chunks_per_page = PAGE_SIZE / chunk_size;
-	if (chunks < chunks_per_page || chunks % chunks_per_page)
-		return -EINVAL;
+	if (!unaligned_chunks) {
+		chunks_per_page = PAGE_SIZE / chunk_size;
+		if (chunks < chunks_per_page || chunks % chunks_per_page)
+			return -EINVAL;
+	}
 
 	headroom = ALIGN(headroom, 64);
 
@@ -344,13 +348,14 @@ static int xdp_umem_reg(struct xdp_umem *umem, struct xdp_umem_reg *mr)
 		return -EINVAL;
 
 	umem->address = (unsigned long)addr;
-	umem->chunk_mask = ~((u64)chunk_size - 1);
+	umem->chunk_mask = unaligned_chunks ? U64_MAX : ~((u64)chunk_size - 1);
 	umem->size = size;
 	umem->headroom = headroom;
 	umem->chunk_size_nohr = chunk_size - headroom;
 	umem->npgs = size / PAGE_SIZE;
 	umem->pgs = NULL;
 	umem->user = NULL;
+	umem->flags = mr->flags;
 	INIT_LIST_HEAD(&umem->xsk_list);
 	spin_lock_init(&umem->xsk_list_lock);
 
diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
index a14e8864e4fa..dfae19942b70 100644
--- a/net/xdp/xsk.c
+++ b/net/xdp/xsk.c
@@ -39,7 +39,7 @@ bool xsk_is_setup_for_bpf_map(struct xdp_sock *xs)
 
 u64 *xsk_umem_peek_addr(struct xdp_umem *umem, u64 *addr)
 {
-	return xskq_peek_addr(umem->fq, addr);
+	return xskq_peek_addr(umem->fq, addr, umem);
 }
 EXPORT_SYMBOL(xsk_umem_peek_addr);
 
@@ -49,14 +49,36 @@ void xsk_umem_discard_addr(struct xdp_umem *umem)
 }
 EXPORT_SYMBOL(xsk_umem_discard_addr);
 
+/* If a buffer crosses a page boundary, we need to do 2 memcpy's, one for
+ * each page. This is only required in copy mode.
+ */
+static void __xsk_rcv_memcpy(struct xdp_umem *umem, u64 addr, void *from_buf,
+		u32 len, u32 metalen)
+{
+	void *to_buf = xdp_umem_get_data(umem, addr);
+
+	if (xskq_crosses_non_contig_pg(umem, addr)) {
+		void *next_pg_addr = umem->pages[(addr >> PAGE_SHIFT)+1].addr;
+		u64 page_start = addr & (PAGE_SIZE-1);
+		u64 first_len = PAGE_SIZE - (addr - page_start);
+
+		memcpy(to_buf, from_buf, first_len + metalen);
+		memcpy(next_pg_addr, from_buf + first_len, len - first_len);
+
+		return;
+	}
+
+	memcpy(to_buf, from_buf, len + metalen);
+}
+
 static int __xsk_rcv(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len)
 {
-	void *to_buf, *from_buf;
+	void *from_buf;
 	u32 metalen;
 	u64 addr;
 	int err;
 
-	if (!xskq_peek_addr(xs->umem->fq, &addr) ||
+	if (!xskq_peek_addr(xs->umem->fq, &addr, xs->umem) ||
 	    len > xs->umem->chunk_size_nohr - XDP_PACKET_HEADROOM) {
 		xs->rx_dropped++;
 		return -ENOSPC;
@@ -72,8 +94,8 @@ static int __xsk_rcv(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len)
 		metalen = xdp->data - xdp->data_meta;
 	}
 
-	to_buf = xdp_umem_get_data(xs->umem, addr);
-	memcpy(to_buf, from_buf, len + metalen);
+	__xsk_rcv_memcpy(xs->umem, addr, from_buf, len, metalen);
+
 	addr += metalen;
 	err = xskq_produce_batch_desc(xs->rx, addr, len);
 	if (!err) {
@@ -126,7 +148,7 @@ int xsk_generic_rcv(struct xdp_sock *xs, struct xdp_buff *xdp)
 	if (xs->dev != xdp->rxq->dev || xs->queue_id != xdp->rxq->queue_index)
 		return -EINVAL;
 
-	if (!xskq_peek_addr(xs->umem->fq, &addr) ||
+	if (!xskq_peek_addr(xs->umem->fq, &addr, xs->umem) ||
 	    len > xs->umem->chunk_size_nohr - XDP_PACKET_HEADROOM) {
 		xs->rx_dropped++;
 		return -ENOSPC;
@@ -173,7 +195,7 @@ bool xsk_umem_consume_tx(struct xdp_umem *umem, dma_addr_t *dma, u32 *len)
 
 	rcu_read_lock();
 	list_for_each_entry_rcu(xs, &umem->xsk_list, list) {
-		if (!xskq_peek_desc(xs->tx, &desc))
+		if (!xskq_peek_desc(xs->tx, &desc, umem))
 			continue;
 
 		if (xskq_produce_addr_lazy(umem->cq, desc.addr))
@@ -226,7 +248,7 @@ static int xsk_generic_xmit(struct sock *sk, struct msghdr *m,
 
 	mutex_lock(&xs->mutex);
 
-	while (xskq_peek_desc(xs->tx, &desc)) {
+	while (xskq_peek_desc(xs->tx, &desc, xs->umem)) {
 		char *buffer;
 		u64 addr;
 		u32 len;
@@ -393,6 +415,26 @@ static struct socket *xsk_lookup_xsk_from_fd(int fd)
 	return sock;
 }
 
+/* Check if umem pages are contiguous.
+ * If zero-copy mode, use the DMA address to do the page contiguity check
+ * For all other modes we use addr (kernel virtual address)
+ */
+static void xsk_check_page_contiguity(struct xdp_umem *umem, u32 flags)
+{
+	int i;
+
+	if (flags & XDP_ZEROCOPY) {
+		for (i = 0; i < umem->npgs-1; i++)
+			umem->pages[i].next_pg_contig =
+					(umem->pages[i].dma + PAGE_SIZE == umem->pages[i+1].dma);
+		return;
+	}
+
+	for (i = 0; i < umem->npgs-1; i++)
+		umem->pages[i].next_pg_contig =
+				(umem->pages[i].addr + PAGE_SIZE == umem->pages[i+1].addr);
+}
+
 static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 {
 	struct sockaddr_xdp *sxdp = (struct sockaddr_xdp *)addr;
@@ -480,6 +522,8 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 		err = xdp_umem_assign_dev(xs->umem, dev, qid, flags);
 		if (err)
 			goto out_unlock;
+
+		xsk_check_page_contiguity(xs->umem, flags);
 	}
 
 	xs->dev = dev;
diff --git a/net/xdp/xsk_queue.h b/net/xdp/xsk_queue.h
index 88b9ae24658d..c2676a1df938 100644
--- a/net/xdp/xsk_queue.h
+++ b/net/xdp/xsk_queue.h
@@ -119,6 +119,14 @@ static inline u32 xskq_nb_free(struct xsk_queue *q, u32 producer, u32 dcnt)
 
 /* UMEM queue */
 
+static inline bool xskq_crosses_non_contig_pg(struct xdp_umem *umem, u64 addr)
+{
+	bool cross_pg = (addr & (PAGE_SIZE-1)) + umem->chunk_size_nohr > PAGE_SIZE;
+	bool next_pg_contig = umem->pages[(addr >> PAGE_SHIFT)+1].next_pg_contig;
+
+	return cross_pg && !next_pg_contig;
+}
+
 static inline bool xskq_is_valid_addr(struct xsk_queue *q, u64 addr)
 {
 	if (addr >= q->size) {
@@ -129,23 +137,44 @@ static inline bool xskq_is_valid_addr(struct xsk_queue *q, u64 addr)
 	return true;
 }
 
-static inline u64 *xskq_validate_addr(struct xsk_queue *q, u64 *addr)
+static inline bool xskq_is_valid_addr_unaligned(struct xsk_queue *q, u64 addr,
+		struct xdp_umem *umem)
+{
+	if (addr >= q->size ||
+			xskq_crosses_non_contig_pg(umem, addr)) {
+		q->invalid_descs++;
+		return false;
+	}
+
+	return true;
+}
+
+static inline u64 *xskq_validate_addr(struct xsk_queue *q, u64 *addr,
+		struct xdp_umem *umem)
 {
 	while (q->cons_tail != q->cons_head) {
 		struct xdp_umem_ring *ring = (struct xdp_umem_ring *)q->ring;
 		unsigned int idx = q->cons_tail & q->ring_mask;
 
 		*addr = READ_ONCE(ring->desc[idx]) & q->chunk_mask;
+		if (umem->flags & XDP_UMEM_UNALIGNED_CHUNKS) {
+			if (xskq_is_valid_addr_unaligned(q, *addr, umem))
+				return addr;
+			goto out;
+		}
+
 		if (xskq_is_valid_addr(q, *addr))
 			return addr;
 
+out:
 		q->cons_tail++;
 	}
 
 	return NULL;
 }
 
-static inline u64 *xskq_peek_addr(struct xsk_queue *q, u64 *addr)
+static inline u64 *xskq_peek_addr(struct xsk_queue *q, u64 *addr,
+		struct xdp_umem *umem)
 {
 	if (q->cons_tail == q->cons_head) {
 		smp_mb(); /* D, matches A */
@@ -156,7 +185,7 @@ static inline u64 *xskq_peek_addr(struct xsk_queue *q, u64 *addr)
 		smp_rmb();
 	}
 
-	return xskq_validate_addr(q, addr);
+	return xskq_validate_addr(q, addr, umem);
 }
 
 static inline void xskq_discard_addr(struct xsk_queue *q)
@@ -215,8 +244,21 @@ static inline int xskq_reserve_addr(struct xsk_queue *q)
 
 /* Rx/Tx queue */
 
-static inline bool xskq_is_valid_desc(struct xsk_queue *q, struct xdp_desc *d)
+static inline bool xskq_is_valid_desc(struct xsk_queue *q, struct xdp_desc *d,
+						   struct xdp_umem *umem)
 {
+	if (umem->flags & XDP_UMEM_UNALIGNED_CHUNKS) {
+		if (!xskq_is_valid_addr_unaligned(q, d->addr, umem))
+			return false;
+
+		if ((d->len > umem->chunk_size_nohr) || d->options) {
+			q->invalid_descs++;
+			return false;
+		}
+
+		return true;
+	}
+
 	if (!xskq_is_valid_addr(q, d->addr))
 		return false;
 
@@ -230,14 +272,15 @@ static inline bool xskq_is_valid_desc(struct xsk_queue *q, struct xdp_desc *d)
 }
 
 static inline struct xdp_desc *xskq_validate_desc(struct xsk_queue *q,
-						  struct xdp_desc *desc)
+						  struct xdp_desc *desc,
+						  struct xdp_umem *umem)
 {
 	while (q->cons_tail != q->cons_head) {
 		struct xdp_rxtx_ring *ring = (struct xdp_rxtx_ring *)q->ring;
 		unsigned int idx = q->cons_tail & q->ring_mask;
 
 		*desc = READ_ONCE(ring->desc[idx]);
-		if (xskq_is_valid_desc(q, desc))
+		if (xskq_is_valid_desc(q, desc, umem))
 			return desc;
 
 		q->cons_tail++;
@@ -247,7 +290,8 @@ static inline struct xdp_desc *xskq_validate_desc(struct xsk_queue *q,
 }
 
 static inline struct xdp_desc *xskq_peek_desc(struct xsk_queue *q,
-					      struct xdp_desc *desc)
+					      struct xdp_desc *desc,
+					      struct xdp_umem *umem)
 {
 	if (q->cons_tail == q->cons_head) {
 		smp_mb(); /* D, matches A */
@@ -258,7 +302,7 @@ static inline struct xdp_desc *xskq_peek_desc(struct xsk_queue *q,
 		smp_rmb(); /* C, matches B */
 	}
 
-	return xskq_validate_desc(q, desc);
+	return xskq_validate_desc(q, desc, umem);
 }
 
 static inline void xskq_discard_desc(struct xsk_queue *q)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
