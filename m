Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ED3716616
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:05:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F53C83D0D;
	Tue, 30 May 2023 15:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F53C83D0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685459111;
	bh=WuXQfU+DKUh575z8yzp8vdcppuS2xHzpxy/BcnsAbu4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pSvarQCBq1DZU0TJ624HJeKuChXwXUs5X2JtdJyqrPaPP8jzU3w+tEXeZbJSnCI4H
	 e0Kq3FcoBcuvsqrLyJxNZscGhVXJlgIoFTRhlai7UZJvSbl1Cw+N24apWMpKEyLOfA
	 e7U5klxVmkgiR48YHgG+7nMrbSISkRChTr9YRXqCopPs+z9jZ05fNU7+nzZRgiI5Bg
	 iF+TQBbQDayt55Wscy//vaA5qLPm+KINBKJTqR61f2ZIFoM9yYHCbcbKjWMx97vvO5
	 h8LYMa3kH1mAgAD8aurW47By1xyMzKHCiTq9EtkN8fzgamKiXKreM8XU4TM/2BLOZg
	 rIP1RqgtQnZUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ssNiAyWzIGPW; Tue, 30 May 2023 15:05:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57FB083C80;
	Tue, 30 May 2023 15:05:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57FB083C80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AB261BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 141BA40901
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 141BA40901
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nevKBKd-WRSc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:04:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE98640574
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE98640574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358192682"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358192682"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:03:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796304209"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="796304209"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2023 08:03:45 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 17:00:34 +0200
Message-Id: <20230530150035.1943669-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685459085; x=1716995085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GwVgZzmK6hAs/7H6eK8PN89Rgl6guxNN7+o+ff6EBp4=;
 b=BzgnVWNxqvtjnqj+85maYoa9ue9JMxCf/8/hvxO34GwVR3l5sdvOIh/b
 DVF9o32i4RNlwDXN/bQ1LS/WixazHwcfS43ofg/c/u08R4pWbMu1WeY4W
 EB701hyIuEut6pCq7h8f3u7WS4BfkShlbZY85tA1auB5DEj+eXdcclbUe
 4Vy9/02Bm8SzezWDR+D3PIWYgIm/hA38+E0Hexa5jl2pVPrmUiEEAOzqz
 61QuJzibDr+wIk0oD72g/DFr2vnXujv4LfTWXp3p7o8EV3OXrEfAgR0Y3
 bxprVVC5QCT/ezANdPU2QNuXCKFIQfsyf7o7tjzXt5W2kKRTGrM+VfY/0
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BzgnVWNx
Subject: [Intel-wired-lan] [PATCH net-next v3 11/12] libie: add per-queue
 Page Pool stats
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Expand the libie generic per-queue stats with the generic Page Pool
stats provided by the API itself, when CONFIG_PAGE_POOL is enabled.
When it's not, there'll be no such fields in the stats structure, so
no space wasted.
They are also a bit special in terms of how they are obtained. One
&page_pool accumulates statistics until it's destroyed obviously,
which happens on ifdown. So, in order to not lose any statistics,
get the stats and store in the queue container before destroying
a pool. This container survives ifups/downs, so it basically stores
the statistics accumulated since the very first pool was allocated
on this queue. When it's needed to export the stats, first get the
numbers from this container and then add the "live" numbers -- the
ones that the current active pool returns. The result values will
always represent the actual device-lifetime* stats.
There's a cast from &page_pool_stats to `u64 *` in a couple functions,
but they are guarded with stats asserts to make sure it's safe to do.
FWIW it saves a lot of object code.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libie/internal.h | 23 +++++++
 drivers/net/ethernet/intel/libie/rx.c       | 20 ++++++
 drivers/net/ethernet/intel/libie/stats.c    | 73 ++++++++++++++++++++-
 include/linux/net/intel/libie/rx.h          |  4 ++
 include/linux/net/intel/libie/stats.h       | 39 ++++++++++-
 5 files changed, 156 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libie/internal.h

diff --git a/drivers/net/ethernet/intel/libie/internal.h b/drivers/net/ethernet/intel/libie/internal.h
new file mode 100644
index 000000000000..083398dc37c6
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/internal.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* libie internal declarations not to be used in drivers.
+ *
+ * Copyright(c) 2023 Intel Corporation.
+ */
+
+#ifndef __LIBIE_INTERNAL_H
+#define __LIBIE_INTERNAL_H
+
+struct libie_rq_stats;
+struct page_pool;
+
+#ifdef CONFIG_PAGE_POOL_STATS
+void libie_rq_stats_sync_pp(struct libie_rq_stats *stats,
+			    struct page_pool *pool);
+#else
+static inline void libie_rq_stats_sync_pp(struct libie_rq_stats *stats,
+					  struct page_pool *pool)
+{
+}
+#endif
+
+#endif /* __LIBIE_INTERNAL_H */
diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index d68eab76593c..128f134aca6d 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -3,6 +3,8 @@
 
 #include <linux/net/intel/libie/rx.h>
 
+#include "internal.h"
+
 /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
  * bitfield struct.
  */
@@ -133,6 +135,24 @@ struct page_pool *libie_rx_page_pool_create(struct napi_struct *napi,
 }
 EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_create, LIBIE);
 
+/**
+ * libie_rx_page_pool_destroy - destroy a &page_pool created by libie
+ * @pool: pool to destroy
+ * @stats: RQ stats from the ring (or %NULL to skip updating PP stats)
+ *
+ * As the stats usually has the same lifetime as the device, but PP is usually
+ * created/destroyed on ifup/ifdown, in order to not lose the stats accumulated
+ * during the last ifup, the PP stats need to be added to the driver stats
+ * container. Then the PP gets destroyed.
+ */
+void libie_rx_page_pool_destroy(struct page_pool *pool,
+				struct libie_rq_stats *stats)
+{
+	libie_rq_stats_sync_pp(stats, pool);
+	page_pool_destroy(pool);
+}
+EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_destroy, LIBIE);
+
 MODULE_AUTHOR("Intel Corporation");
 MODULE_DESCRIPTION("Intel(R) Ethernet common library");
 MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/intel/libie/stats.c b/drivers/net/ethernet/intel/libie/stats.c
index 61456842a362..71c7ce14edca 100644
--- a/drivers/net/ethernet/intel/libie/stats.c
+++ b/drivers/net/ethernet/intel/libie/stats.c
@@ -3,6 +3,9 @@
 
 #include <linux/ethtool.h>
 #include <linux/net/intel/libie/stats.h>
+#include <net/page_pool.h>
+
+#include "internal.h"
 
 /* Rx per-queue stats */
 
@@ -14,6 +17,70 @@ static const char * const libie_rq_stats_str[] = {
 
 #define LIBIE_RQ_STATS_NUM	ARRAY_SIZE(libie_rq_stats_str)
 
+#ifdef CONFIG_PAGE_POOL_STATS
+/**
+ * libie_rq_stats_get_pp - get the current stats from a &page_pool
+ * @sarr: local array to add stats to
+ * @pool: pool to get the stats from
+ *
+ * Adds the current "live" stats from an online PP to the stats read from
+ * the RQ container, so that the actual totals will be returned.
+ */
+static void libie_rq_stats_get_pp(u64 *sarr, struct page_pool *pool)
+{
+	struct page_pool_stats *pps;
+	/* Used only to calculate pos below */
+	struct libie_rq_stats tmp;
+	u32 pos;
+
+	/* Validate the libie PP stats array can be casted <-> PP struct */
+	static_assert(sizeof(tmp.pp) == sizeof(*pps));
+
+	if (!pool)
+		return;
+
+	/* Position of the first Page Pool stats field */
+	pos = (u64_stats_t *)&tmp.pp - tmp.raw;
+	pps = (typeof(pps))&sarr[pos];
+
+	page_pool_get_stats(pool, pps);
+}
+
+/**
+ * libie_rq_stats_sync_pp - add the current PP stats to the RQ stats container
+ * @stats: stats structure to update
+ * @pool: pool to read the stats
+ *
+ * Called by libie_rx_page_pool_destroy() to save the stats before destroying
+ * the pool.
+ */
+void libie_rq_stats_sync_pp(struct libie_rq_stats *stats,
+			    struct page_pool *pool)
+{
+	u64_stats_t *qarr = (u64_stats_t *)&stats->pp;
+	struct page_pool_stats pps = { };
+	u64 *sarr = (u64 *)&pps;
+
+	if (!stats)
+		return;
+
+	page_pool_get_stats(pool, &pps);
+
+	u64_stats_update_begin(&stats->syncp);
+
+	for (u32 i = 0; i < sizeof(pps) / sizeof(*sarr); i++)
+		u64_stats_add(&qarr[i], sarr[i]);
+
+	u64_stats_update_end(&stats->syncp);
+}
+#else
+static void libie_rq_stats_get_pp(u64 *sarr, struct page_pool *pool)
+{
+}
+
+/* static inline void libie_rq_stats_sync_pp() is declared in "internal.h" */
+#endif
+
 /**
  * libie_rq_stats_get_sset_count - get the number of Ethtool RQ stats provided
  *
@@ -41,8 +108,10 @@ EXPORT_SYMBOL_NS_GPL(libie_rq_stats_get_strings, LIBIE);
  * libie_rq_stats_get_data - get the RQ stats in Ethtool format
  * @data: reference to the cursor pointing to the output array
  * @stats: RQ stats container from the queue
+ * @pool: &page_pool from the queue (%NULL to ignore PP "live" stats)
  */
-void libie_rq_stats_get_data(u64 **data, const struct libie_rq_stats *stats)
+void libie_rq_stats_get_data(u64 **data, const struct libie_rq_stats *stats,
+			     struct page_pool *pool)
 {
 	u64 sarr[LIBIE_RQ_STATS_NUM];
 	u32 start;
@@ -54,6 +123,8 @@ void libie_rq_stats_get_data(u64 **data, const struct libie_rq_stats *stats)
 			sarr[i] = u64_stats_read(&stats->raw[i]);
 	} while (u64_stats_fetch_retry(&stats->syncp, start));
 
+	libie_rq_stats_get_pp(sarr, pool);
+
 	for (u32 i = 0; i < LIBIE_RQ_STATS_NUM; i++)
 		(*data)[i] += sarr[i];
 
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
index b86cadd281f1..d401feb17928 100644
--- a/include/linux/net/intel/libie/rx.h
+++ b/include/linux/net/intel/libie/rx.h
@@ -160,7 +160,11 @@ static inline void libie_skb_set_hash(struct sk_buff *skb, u32 hash,
 /* Maximum frame size minus LL overhead */
 #define LIBIE_MAX_MTU		(LIBIE_MAX_RX_FRM_LEN - LIBIE_RX_LL_LEN)
 
+struct libie_rq_stats;
+
 struct page_pool *libie_rx_page_pool_create(struct napi_struct *napi,
 					    u32 size);
+void libie_rx_page_pool_destroy(struct page_pool *pool,
+				struct libie_rq_stats *stats);
 
 #endif /* __LIBIE_RX_H */
diff --git a/include/linux/net/intel/libie/stats.h b/include/linux/net/intel/libie/stats.h
index dbbc98bbd3a7..23ca0079a905 100644
--- a/include/linux/net/intel/libie/stats.h
+++ b/include/linux/net/intel/libie/stats.h
@@ -49,6 +49,17 @@
  * fragments: number of processed descriptors carrying only a fragment
  * alloc_page_fail: number of Rx page allocation fails
  * build_skb_fail: number of build_skb() fails
+ * pp_alloc_fast: pages taken from the cache or ring
+ * pp_alloc_slow: actual page allocations
+ * pp_alloc_slow_ho: non-order-0 page allocations
+ * pp_alloc_empty: number of times the pool was empty
+ * pp_alloc_refill: number of cache refills
+ * pp_alloc_waive: NUMA node mismatches during recycling
+ * pp_recycle_cached: direct recyclings into the cache
+ * pp_recycle_cache_full: number of times the cache was full
+ * pp_recycle_ring: recyclings into the ring
+ * pp_recycle_ring_full: number of times the ring was full
+ * pp_recycle_released_ref: pages released due to elevated refcnt
  */
 
 #define DECLARE_LIBIE_RQ_NAPI_STATS(act)		\
@@ -60,9 +71,29 @@
 	act(alloc_page_fail)				\
 	act(build_skb_fail)
 
+#ifdef CONFIG_PAGE_POOL_STATS
+#define DECLARE_LIBIE_RQ_PP_STATS(act)			\
+	act(pp_alloc_fast)				\
+	act(pp_alloc_slow)				\
+	act(pp_alloc_slow_ho)				\
+	act(pp_alloc_empty)				\
+	act(pp_alloc_refill)				\
+	act(pp_alloc_waive)				\
+	act(pp_recycle_cached)				\
+	act(pp_recycle_cache_full)			\
+	act(pp_recycle_ring)				\
+	act(pp_recycle_ring_full)			\
+	act(pp_recycle_released_ref)
+#else
+#define DECLARE_LIBIE_RQ_PP_STATS(act)
+#endif
+
 #define DECLARE_LIBIE_RQ_STATS(act)			\
 	DECLARE_LIBIE_RQ_NAPI_STATS(act)		\
-	DECLARE_LIBIE_RQ_FAIL_STATS(act)
+	DECLARE_LIBIE_RQ_FAIL_STATS(act)		\
+	DECLARE_LIBIE_RQ_PP_STATS(act)
+
+struct page_pool;
 
 struct libie_rq_stats {
 	struct u64_stats_sync	syncp;
@@ -72,6 +103,9 @@ struct libie_rq_stats {
 #define act(s)	u64_stats_t	s;
 			DECLARE_LIBIE_RQ_NAPI_STATS(act);
 			DECLARE_LIBIE_RQ_FAIL_STATS(act);
+			struct_group(pp,
+				DECLARE_LIBIE_RQ_PP_STATS(act);
+			);
 #undef act
 		};
 		DECLARE_FLEX_ARRAY(u64_stats_t, raw);
@@ -110,7 +144,8 @@ libie_rq_napi_stats_add(struct libie_rq_stats *qs,
 
 u32 libie_rq_stats_get_sset_count(void);
 void libie_rq_stats_get_strings(u8 **data, u32 qid);
-void libie_rq_stats_get_data(u64 **data, const struct libie_rq_stats *stats);
+void libie_rq_stats_get_data(u64 **data, const struct libie_rq_stats *stats,
+			     struct page_pool *pool);
 
 /* Tx per-queue stats:
  * packets: packets sent from this queue
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
