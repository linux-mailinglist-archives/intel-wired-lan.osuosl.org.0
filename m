Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D0830282A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jan 2021 17:48:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BC8D86004;
	Mon, 25 Jan 2021 16:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p2yKbfxZzXgS; Mon, 25 Jan 2021 16:47:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A6CE85FD6;
	Mon, 25 Jan 2021 16:47:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 69DC61BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 64C2886C2D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3F0wJ26pfiNc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jan 2021 16:47:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 798CE86806
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:47:31 +0000 (UTC)
Date: Mon, 25 Jan 2021 16:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1611593248; bh=PQjqCY1n/n+4wNCpUtWb3rQkV1Ny0cNm6fdbl7f6pik=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=QV6ZOPg0656nfl1DEH/S322UL4+pstgUgCc1D1CKk+HVHLbKEV+ewpATEWp5Q2eyp
 0lsWNC9+XSddJ1LCqgvTPbHc+S6hYcR8A4hVYiJyLTitAeI7WF+1rsWLslrCAGkOX5
 jEkHVWyb1P69/EUyfSsZLxVqP0CyMZ7v7Rm68NXplu9W1/G6howkrSHUKDizycGriX
 bKgyr8xwzvdhUKVpkxSpn5yG1ZaFwioid4sNE2m+1MmTEKHoAbrkxIuQO3CM5rhdD1
 I/HRYbQNpisrempK/yISGDWXVzxypGSshKmbXw98Hv/d4DeohCAi9HLwK50hsgD7G+
 YLKFDroD9T46g==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210125164612.243838-4-alobakin@pm.me>
In-Reply-To: <20210125164612.243838-1-alobakin@pm.me>
References: <20210125164612.243838-1-alobakin@pm.me>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 25 Jan 2021 16:47:55 +0000
Subject: [Intel-wired-lan] [PATCH net-next 3/3] net: page_pool: simplify
 page recycling condition tests
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
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexander Lobakin <alobakin@pm.me>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Aleksandr Nogikh <nogikh@google.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

pool_page_reusable() is a leftover from pre-NUMA-aware times. For now,
this function is just a redundant wrapper over page_is_pfmemalloc(),
so Inline it into its sole call site.

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 net/core/page_pool.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index f3c690b8c8e3..ad8b0707af04 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -350,14 +350,6 @@ static bool page_pool_recycle_in_cache(struct page *page,
 	return true;
 }
 
-/* page is NOT reusable when:
- * 1) allocated when system is under some pressure. (page_is_pfmemalloc)
- */
-static bool pool_page_reusable(struct page_pool *pool, struct page *page)
-{
-	return !page_is_pfmemalloc(page);
-}
-
 /* If the page refcnt == 1, this will try to recycle the page.
  * if PP_FLAG_DMA_SYNC_DEV is set, we'll try to sync the DMA area for
  * the configured size min(dma_sync_size, pool->max_len).
@@ -373,9 +365,11 @@ __page_pool_put_page(struct page_pool *pool, struct page *page,
 	 * regular page allocator APIs.
 	 *
 	 * refcnt == 1 means page_pool owns page, and can recycle it.
+	 *
+	 * page is NOT reusable when allocated when system is under
+	 * some pressure. (page_is_pfmemalloc)
 	 */
-	if (likely(page_ref_count(page) == 1 &&
-		   pool_page_reusable(pool, page))) {
+	if (likely(page_ref_count(page) == 1 && !page_is_pfmemalloc(page))) {
 		/* Read barrier done in page_ref_count / READ_ONCE */
 
 		if (pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
-- 
2.30.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
