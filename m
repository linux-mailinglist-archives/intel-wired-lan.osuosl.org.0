Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F186A3064CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 21:11:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A3EFA861F0;
	Wed, 27 Jan 2021 20:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xCJHYpW0DmUd; Wed, 27 Jan 2021 20:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12086861F2;
	Wed, 27 Jan 2021 20:11:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 638651BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F23486C0F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xiApHU-fA8Mm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 20:11:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 842E286C1A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:35 +0000 (UTC)
Date: Wed, 27 Jan 2021 20:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1611778293; bh=9qyrYwHZiBXvDz842Cw5/bsnWtdqL9n+12n4P+yiMMc=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=f4zd97APJyHcue9fD9L3vZ6ObTvDAUTssdCjkJFUURwJpo26PCZZKFy2l1suO3zVz
 8NNsQtnAaEkc6VyEiMYabnXmIjFugh7vzLUt/ZHQUBGYplrJAw0WE/jH6ruBux/j0J
 04OvKQeW+CcjBPC+F95iJgzpVnAdr90tWgHt29Cn4UgcLXhZXrCE2IrTp91BlVRDhj
 F1M6wnpbadsj3dAwxbGoBMbFmPE/4fIQUF7/PWpstXw/eoUNHlhSOFPybnBQj0SvjA
 BP4f3UBxUnZ9eTZqjzIpcVhlufshszPAf0klO9GAvl9KV5JB4USz1IaKHK3mFxkwmI
 1jDc+G2UaWtqg==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210127201031.98544-5-alobakin@pm.me>
In-Reply-To: <20210127201031.98544-1-alobakin@pm.me>
References: <20210127201031.98544-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 4/4] net: page_pool: simplify
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
Cc: Randy Dunlap <rdunlap@infradead.org>, Alexander Lobakin <alobakin@pm.me>,
 linux-mm@kvack.org, Jakub Sitnicki <jakub@cloudflare.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 David Rientjes <rientjes@google.com>, Willem de Bruijn <willemb@google.com>,
 Salil Mehta <salil.mehta@huawei.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
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
Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
Reviewed-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
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
