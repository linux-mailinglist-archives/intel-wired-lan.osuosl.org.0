Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DA4309BE3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 13:12:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD28F20131;
	Sun, 31 Jan 2021 12:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ONi95cZF5mUE; Sun, 31 Jan 2021 12:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8A46E203AF;
	Sun, 31 Jan 2021 12:12:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1B881BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EB7898704E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QaAhfkJ+0wWI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 12:12:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2AF848701D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:12:07 +0000 (UTC)
Date: Sun, 31 Jan 2021 12:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612095124; bh=Nu/6gBvwiq6e4Mjd+btfSeTplEIyQm1CxP2gQUuPMl4=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=R6/5tCqA90h411Xwf2Ki2/BQYPnmfsnvdziZFOAyxh8ga+IUCSy9+Il0gsyQXC73R
 JPCACHIxGFFIZPNjXeq8+78Z8eTTEFYPeEWfVsbSHC+bviqbl1UbIloMyiSN28iIwo
 XODYkYG28lbScXaMbXKhKYAdsqh3RNxwAeDp/Jn7qqz8uJXpJTEu3niq5An/xCYgmQ
 6Ro1Pkonn7wEFTdg8GQ6Onhq+tPw1zd08ob9e7tf/1AjlrV8Umv6rigEsMwxyFpfhI
 AV5KbQfV+pDLeUFINUOOrH6zyqWdGkneYxWF0xVzaRU+6pkg/uVyZHraGGVl6z86ar
 UqwXDxqBS2MlA==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210131120844.7529-5-alobakin@pm.me>
In-Reply-To: <20210131120844.7529-1-alobakin@pm.me>
References: <20210131120844.7529-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 4/5] net: use the new
 dev_page_is_reusable() instead of private versions
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
Reply-To: Alexander Lobakin <alobakin@pm.me>
Cc: Randy Dunlap <rdunlap@infradead.org>, Alexander Lobakin <alobakin@pm.me>,
 linux-mm@kvack.org, Jakub Sitnicki <jakub@cloudflare.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 John Hubbard <jhubbard@nvidia.com>, David Rientjes <rientjes@google.com>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now we can remove a bunch of identical functions from the drivers and
make them use common dev_page_is_reusable(). All {,un}likely() checks
are omitted since it's already present in this helper.
Also update some comments near the call sites.

Suggested-by: David Rientjes <rientjes@google.com>
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Cc: John Hubbard <jhubbard@nvidia.com>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 drivers/net/ethernet/hisilicon/hns3/hns3_enet.c | 17 ++++++-----------
 drivers/net/ethernet/intel/fm10k/fm10k_main.c   | 13 ++++---------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c     | 15 +--------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c     | 15 +--------------
 drivers/net/ethernet/intel/ice/ice_txrx.c       | 13 ++-----------
 drivers/net/ethernet/intel/igb/igb_main.c       |  9 ++-------
 drivers/net/ethernet/intel/igc/igc_main.c       |  9 ++-------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c   |  9 ++-------
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c   |  9 ++-------
 drivers/net/ethernet/mellanox/mlx5/core/en_rx.c |  7 +------
 10 files changed, 23 insertions(+), 93 deletions(-)

diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
index 512080640cbc..f39f5b1c4cec 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
@@ -2800,12 +2800,6 @@ static void hns3_nic_alloc_rx_buffers(struct hns3_enet_ring *ring,
 	writel(i, ring->tqp->io_base + HNS3_RING_RX_RING_HEAD_REG);
 }
 
-static bool hns3_page_is_reusable(struct page *page)
-{
-	return page_to_nid(page) == numa_mem_id() &&
-		!page_is_pfmemalloc(page);
-}
-
 static bool hns3_can_reuse_page(struct hns3_desc_cb *cb)
 {
 	return (page_count(cb->priv) - cb->pagecnt_bias) == 1;
@@ -2823,10 +2817,11 @@ static void hns3_nic_reuse_page(struct sk_buff *skb, int i,
 	skb_add_rx_frag(skb, i, desc_cb->priv, desc_cb->page_offset + pull_len,
 			size - pull_len, truesize);
 
-	/* Avoid re-using remote pages, or the stack is still using the page
-	 * when page_offset rollback to zero, flag default unreuse
+	/* Avoid re-using remote and pfmemalloc pages, or the stack is still
+	 * using the page when page_offset rollback to zero, flag default
+	 * unreuse
 	 */
-	if (unlikely(!hns3_page_is_reusable(desc_cb->priv)) ||
+	if (!dev_page_is_reusable(desc_cb->priv) ||
 	    (!desc_cb->page_offset && !hns3_can_reuse_page(desc_cb))) {
 		__page_frag_cache_drain(desc_cb->priv, desc_cb->pagecnt_bias);
 		return;
@@ -3083,8 +3078,8 @@ static int hns3_alloc_skb(struct hns3_enet_ring *ring, unsigned int length,
 	if (length <= HNS3_RX_HEAD_SIZE) {
 		memcpy(__skb_put(skb, length), va, ALIGN(length, sizeof(long)));
 
-		/* We can reuse buffer as-is, just make sure it is local */
-		if (likely(hns3_page_is_reusable(desc_cb->priv)))
+		/* We can reuse buffer as-is, just make sure it is reusable */
+		if (dev_page_is_reusable(desc_cb->priv))
 			desc_cb->reuse_flag = 1;
 		else /* This page cannot be reused so discard it */
 			__page_frag_cache_drain(desc_cb->priv,
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index 99b8252eb969..247f44f4cb30 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -194,17 +194,12 @@ static void fm10k_reuse_rx_page(struct fm10k_ring *rx_ring,
 					 DMA_FROM_DEVICE);
 }
 
-static inline bool fm10k_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool fm10k_can_reuse_rx_page(struct fm10k_rx_buffer *rx_buffer,
 				    struct page *page,
 				    unsigned int __maybe_unused truesize)
 {
-	/* avoid re-using remote pages */
-	if (unlikely(fm10k_page_is_reserved(page)))
+	/* avoid re-using remote and pfmemalloc pages */
+	if (!dev_page_is_reusable(page))
 		return false;
 
 #if (PAGE_SIZE < 8192)
@@ -265,8 +260,8 @@ static bool fm10k_add_rx_frag(struct fm10k_rx_buffer *rx_buffer,
 	if (likely(size <= FM10K_RX_HDR_LEN)) {
 		memcpy(__skb_put(skb, size), va, ALIGN(size, sizeof(long)));
 
-		/* page is not reserved, we can reuse buffer as-is */
-		if (likely(!fm10k_page_is_reserved(page)))
+		/* page is reusable, we can reuse buffer as-is */
+		if (dev_page_is_reusable(page))
 			return true;
 
 		/* this page cannot be reused so discard it */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 2574e78f7597..8d2ea4293d69 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1843,19 +1843,6 @@ static bool i40e_cleanup_headers(struct i40e_ring *rx_ring, struct sk_buff *skb,
 	return false;
 }
 
-/**
- * i40e_page_is_reusable - check if any reuse is possible
- * @page: page struct to check
- *
- * A page is not reusable if it was allocated under low memory
- * conditions, or it's not in the same NUMA node as this CPU.
- */
-static inline bool i40e_page_is_reusable(struct page *page)
-{
-	return (page_to_nid(page) == numa_mem_id()) &&
-		!page_is_pfmemalloc(page);
-}
-
 /**
  * i40e_can_reuse_rx_page - Determine if this page can be reused by
  * the adapter for another receive
@@ -1891,7 +1878,7 @@ static bool i40e_can_reuse_rx_page(struct i40e_rx_buffer *rx_buffer,
 	struct page *page = rx_buffer->page;
 
 	/* Is any reuse possible? */
-	if (unlikely(!i40e_page_is_reusable(page)))
+	if (!dev_page_is_reusable(page))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 256fa07d54d5..ffaf2742a2e0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1141,19 +1141,6 @@ static void iavf_reuse_rx_page(struct iavf_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-/**
- * iavf_page_is_reusable - check if any reuse is possible
- * @page: page struct to check
- *
- * A page is not reusable if it was allocated under low memory
- * conditions, or it's not in the same NUMA node as this CPU.
- */
-static inline bool iavf_page_is_reusable(struct page *page)
-{
-	return (page_to_nid(page) == numa_mem_id()) &&
-		!page_is_pfmemalloc(page);
-}
-
 /**
  * iavf_can_reuse_rx_page - Determine if this page can be reused by
  * the adapter for another receive
@@ -1187,7 +1174,7 @@ static bool iavf_can_reuse_rx_page(struct iavf_rx_buffer *rx_buffer)
 	struct page *page = rx_buffer->page;
 
 	/* Is any reuse possible? */
-	if (unlikely(!iavf_page_is_reusable(page)))
+	if (!dev_page_is_reusable(page))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 2c2de56e2824..8ca63c6a6ba4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -728,15 +728,6 @@ bool ice_alloc_rx_bufs(struct ice_ring *rx_ring, u16 cleaned_count)
 	return !!cleaned_count;
 }
 
-/**
- * ice_page_is_reserved - check if reuse is possible
- * @page: page struct to check
- */
-static bool ice_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 /**
  * ice_rx_buf_adjust_pg_offset - Prepare Rx buffer for reuse
  * @rx_buf: Rx buffer to adjust
@@ -775,8 +766,8 @@ ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf, int rx_buf_pgcnt)
 	unsigned int pagecnt_bias = rx_buf->pagecnt_bias;
 	struct page *page = rx_buf->page;
 
-	/* avoid re-using remote pages */
-	if (unlikely(ice_page_is_reserved(page)))
+	/* avoid re-using remote and pfmemalloc pages */
+	if (!dev_page_is_reusable(page))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 84d4284b8b32..7d8e02b4d092 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8215,18 +8215,13 @@ static void igb_reuse_rx_page(struct igb_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-static inline bool igb_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool igb_can_reuse_rx_page(struct igb_rx_buffer *rx_buffer)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
 
-	/* avoid re-using remote pages */
-	if (unlikely(igb_page_is_reserved(page)))
+	/* avoid re-using remote and pfmemalloc pages */
+	if (!dev_page_is_reusable(page))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 43aec42e6d9d..ae0de7f08568 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1648,18 +1648,13 @@ static void igc_reuse_rx_page(struct igc_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-static inline bool igc_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
 
-	/* avoid re-using remote pages */
-	if (unlikely(igc_page_is_reserved(page)))
+	/* avoid re-using remote and pfmemalloc pages */
+	if (!dev_page_is_reusable(page))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index e08c01525fd2..237e09342f28 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1940,19 +1940,14 @@ static void ixgbe_reuse_rx_page(struct ixgbe_ring *rx_ring,
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 }
 
-static inline bool ixgbe_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool ixgbe_can_reuse_rx_page(struct ixgbe_rx_buffer *rx_buffer,
 				    int rx_buffer_pgcnt)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
 
-	/* avoid re-using remote pages */
-	if (unlikely(ixgbe_page_is_reserved(page)))
+	/* avoid re-using remote and pfmemalloc pages */
+	if (!dev_page_is_reusable(page))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index a14e55e7fce8..449d7d5b280d 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -781,18 +781,13 @@ static void ixgbevf_reuse_rx_page(struct ixgbevf_ring *rx_ring,
 	new_buff->pagecnt_bias = old_buff->pagecnt_bias;
 }
 
-static inline bool ixgbevf_page_is_reserved(struct page *page)
-{
-	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
-}
-
 static bool ixgbevf_can_reuse_rx_page(struct ixgbevf_rx_buffer *rx_buffer)
 {
 	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 	struct page *page = rx_buffer->page;
 
-	/* avoid re-using remote pages */
-	if (unlikely(ixgbevf_page_is_reserved(page)))
+	/* avoid re-using remote and pfmemalloc pages */
+	if (!dev_page_is_reusable(page))
 		return false;
 
 #if (PAGE_SIZE < 8192)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
index 98b56f495b32..e1b4cf506a15 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_rx.c
@@ -213,11 +213,6 @@ static inline u32 mlx5e_decompress_cqes_start(struct mlx5e_rq *rq,
 	return mlx5e_decompress_cqes_cont(rq, wq, 1, budget_rem) - 1;
 }
 
-static inline bool mlx5e_page_is_reserved(struct page *page)
-{
-	return page_is_pfmemalloc(page) || page_to_nid(page) != numa_mem_id();
-}
-
 static inline bool mlx5e_rx_cache_put(struct mlx5e_rq *rq,
 				      struct mlx5e_dma_info *dma_info)
 {
@@ -230,7 +225,7 @@ static inline bool mlx5e_rx_cache_put(struct mlx5e_rq *rq,
 		return false;
 	}
 
-	if (unlikely(mlx5e_page_is_reserved(dma_info->page))) {
+	if (!dev_page_is_reusable(dma_info->page)) {
 		stats->cache_waive++;
 		return false;
 	}
-- 
2.30.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
