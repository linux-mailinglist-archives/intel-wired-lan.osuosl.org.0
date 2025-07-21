Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12660B0BA49
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 04:19:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88F28842B1;
	Mon, 21 Jul 2025 02:19:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rSVhQyxTiLAY; Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA9C784297
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753064346;
	bh=nGHe9kbM2ZJLiy7fXM4+nALIrTX4BQDA5RdK8w8KDQc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5KgaJ2Pbc7A+aVrsKY7aNapa4xPvAj9ot+BNU2Jy2kG2B7xCo1ehV1kj4Jo8BHXwq
	 IJs+sCmtYbG3HiE6ujWej/c1MkxUn2zUJBAF0FGSOpAtnv3tnTKazPCeUuHnMeFffw
	 /JeGzW29Bwi8W7eTjcU4ARDKFbGCzkglCKDJ5CyvtQexNNsrel05wcjIQzN36gvgLN
	 tFztDaBeSNH55B82mhqF1avcacbOzZ4ROo0TJU6RLHyTWIUenjGvtc7TXGMWW2BtGh
	 cNaxtupJUYo0oL6W+IqJe/wswkdnzA4/q3EgT2lmN1aFfc+Z+mPiXbbdbCqukQIEbP
	 zREczclHTsYlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA9C784297;
	Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F0701F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C64940B7B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gp3Xt57CMGhG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 02:19:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 34C9D40B61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34C9D40B61
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34C9D40B61
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:03 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-58-687da38677c2
From: Byungchul Park <byungchul@sk.com>
To: willy@infradead.org,
	netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, kernel_team@skhynix.com,
 almasrymina@google.com, ilias.apalodimas@linaro.org, harry.yoo@oracle.com,
 akpm@linux-foundation.org, andrew+netdev@lunn.ch, asml.silence@gmail.com,
 toke@redhat.com, david@redhat.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
 rppt@kernel.org, surenb@google.com, mhocko@suse.com,
 linux-rdma@vger.kernel.org, bpf@vger.kernel.org, vishal.moola@gmail.com,
 hannes@cmpxchg.org, ziy@nvidia.com, jackmanb@google.com, wei.fang@nxp.com,
 shenwei.wang@nxp.com, xiaoning.wang@nxp.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 sgoutham@marvell.com, gakula@marvell.com, sbhatta@marvell.com,
 hkelam@marvell.com, bbhushan2@marvell.com, tariqt@nvidia.com,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, sdf@fomichev.me, saeedm@nvidia.com,
 leon@kernel.org, mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org,
 nbd@nbd.name, lorenzo@kernel.org, ryder.lee@mediatek.com,
 shayne.chen@mediatek.com, sean.wang@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, aleksander.lobakin@intel.com,
 horms@kernel.org, m-malladi@ti.com, krzysztof.kozlowski@linaro.org,
 matthias.schiffer@ew.tq-group.com, robh@kernel.org, imx@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
Date: Mon, 21 Jul 2025 11:18:26 +0900
Message-Id: <20250721021835.63939-4-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
References: <20250721021835.63939-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0yTdxTG/b93Gpq8qQZfZBtLDdFhhHk/H+Zitiz5L8uWLfrBS7b5brxb
 qy1iS7k4UUTmYoOVOCXA6oaCjlKzkiJQtSB7i4L3Csg6LbeaeS0qIoxSsGsh+/bLeZ6c55yc
 w5Gqv+gFnDYzWzJkijo1o6AUw/Enlx6oLtC8+3hkIVgdZxi4PXqCBvtEHvw+6KKhyybABe8E
 Ada6JgSvQvdYcB70kzDa3sFA9YlxEkL1hyiw3iqmYMwxScI/lwMsdMrTFNidn8LA6QcUuH9q
 JsEzlgKBw50MHCoOk1DR/yMDkbthGlpCz1goctUS0PK0kQVvk4WGo5OnSGguHIxm3e+lofu8
 lYHu/bcR9J+J0PBAjgYGa/0sWOyVCOSLNgaKildAsPEVCy+OtZMwYFkHr8tz4HJVAoxfCyK4
 d+oOARG3i4Wb/X/Q0O5oJqBnKETCeMlxBszDhxHcqThPwPXj9TTUXOshonOsh97IFAE/d1Ux
 cL94AEGXJ0DBL/ssCBytPhpG3NGVwxNWZt0H2BN8TmJXXw3CZ21/E/hR6WsC+1qvEvhcZR+L
 q5wm3FCbiqvdjwls9nWR2Fl3kMHOl0dY7O91M7izPEzhhpq9+FFDBfr8zc2K9zIknTZHMqS/
 v1WhKWv8LOtoUl7jLRddiCwJZhTHCfxK4aF8gDEjboZ/DetiZYZfJPh8ITLG8/hlwmiggzIj
 BUfyN+KFloZyIibM5bcL/7aFZ0wUnyKUeGQmxkp+leB19KDZ/smCvb5txhPHrxYC0ePHWBX1
 BJ+46FmPI04wH3l7lhOFP2t9VClSVqE5dUilzczRi1rdyjRNfqY2L+3bHXonir7b6YKpLS70
 0rteRjyH1PHKLKpAo6LFHGO+XkYCR6rnKXHHLo1KmSHm75IMO742mHSSUUZJHKWer1w+npuh
 4r8Xs6XtkpQlGf5XCS5uQSF6o8QkPU1KlssG05nIb8PGK8dspo8+1rft8e796gvTw9QOsFn1
 Xzo3Tu+cSmyi1d2LN1m/GV77xJN+rt5+1c8O7v5wZEPCpW1Bz8bk7LN9n6wZE3m3qBlaoe3s
 HyraU5k2Z8q/evdk2Vu5CxUFdZd+KEuseUezWd2aMv3dklKxdyJXTRk14rJU0mAU/wMKulQq
 agMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0yTdxTG93/vVKpvCsFXzS5pdCQmosRLThwsun3gn8WZJSzbIltmlTe2
 oSBppQGSRqbdjBWrTGfAlQkBgVKhpFioWC62yMUbt4JFELAEg1u9cpm1ImtN9u138vyS5yTn
 cKTMQa/lVFlHRE2WQi1nJJRk72fHN/1WoVdu6R2VgNl2hYGBuXIarK9zoXrKScOgRYDr/a8J
 MNc2IZgPjrFgPzlOwlxnNwMV5YskBBtOU2DuM1CwYHtDwkyXn4Ue9xIFVvvXMFn1mALXiWYS
 PAsbwH+mh4HThhAJJRO/MrD8IERDa/AZC8ecNQR4SnvD4z8OFvqbTDScf3OZhOaCqXDh9AgN
 Qy1mBoaODyCYuLJMw2N3uDVQM86CyXoRgbvdwsAxw1YIOOZZePFHJwmTpl3wrlgHXWVxsHg7
 gGDs8jAByy4nC/cm6mnotDUT4H0UJGGxsJQB49MzCIZLWgi4U9pAQ+VtLxHeIxVGlt8ScG6w
 jIFpwySCQY+fgj9/MSGwtfloeOkyULu+xJ7AcxI7H1YifNUySuDZs+8I7Gu7ReBrFx+yuMye
 gxtrNuIK1xMCG32DJLbXnmSw/dXvLB4fcTG4pzhE4cbKo3i2sQR989E+SVK6qFbpRM3mz/dL
 lBcce7PPr8t19DnpAmSKMyKOE/htwl8htRFFcQwfL/h8QTLCsXyiMOfvpoxIwpH83WihtbGY
 iAQxfIbwb0fovUTxG4RCj5uJsJTfLvTbvCjCAv+xYG3oeO9E8TsEf/jgEZaFncDfTvoskpSh
 D2pRrCpLl6lQqbcnaDOUeVmq3ISDhzPtKPxMVfq3RU40P5TiRjyH5NHSbEqvlNEKnTYv040E
 jpTHSnF3vlImTVfk5Yuawz9rctSi1o3WcZR8tfSr78X9Mv6Q4oiYIYrZoub/lOCi1hYgyU87
 V37RNq3vpbxTRZZzGea0AzFL6TF7vHy9PvlmWnniivi6pOHkZys6uL4iT3PS+mocTdcVrrJd
 ++5C1yWLuj9vKTV+NnW948eY9g9TH53aMmtfuJHSdndmbKZF/uknKabWS3vyT1Tdb/rWlkwZ
 qwNjz3evsc68fFKgW/lDPW71yymtUpG4kdRoFf8B25VR9UgDAAA=
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v12 03/12] netmem,
 mlx4: access ->pp_ref_count through netmem_desc instead of page
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

To eliminate the use of struct page in page pool, the page pool users
should use netmem descriptor and APIs instead.

Make mlx4 access ->pp_ref_count through netmem_desc instead of page.

While at it, add a helper, pp_page_to_nmdesc() and __pp_page_to_nmdesc(),
that can be used to get netmem_desc from page only if it's a pp page.
For now that netmem_desc overlays on page, it can be achieved by just
casting, and use macro and _Generic to cover const casting as well.

Plus, change page_pool_page_is_pp() to check for 'const struct page *'
instead of 'struct page *' since it doesn't modify data and additionally
covers const type.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/mellanox/mlx4/en_rx.c |  4 +++-
 include/linux/mm.h                         |  4 ++--
 include/net/netmem.h                       | 17 +++++++++++++++++
 3 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/en_rx.c b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
index b33285d755b9..92a16ddb7d86 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
@@ -460,9 +460,11 @@ static int mlx4_en_complete_rx_desc(struct mlx4_en_priv *priv,
 
 		truesize += frag_info->frag_stride;
 		if (frag_info->frag_stride == PAGE_SIZE / 2) {
+			struct netmem_desc *desc = pp_page_to_nmdesc(page);
+
 			frags->page_offset ^= PAGE_SIZE / 2;
 			release = page_count(page) != 1 ||
-				  atomic_long_read(&page->pp_ref_count) != 1 ||
+				  atomic_long_read(&desc->pp_ref_count) != 1 ||
 				  page_is_pfmemalloc(page) ||
 				  page_to_nid(page) != numa_mem_id();
 		} else if (!priv->rx_headroom) {
diff --git a/include/linux/mm.h b/include/linux/mm.h
index fa538feaa8d9..ae50c1641bed 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -4178,12 +4178,12 @@ int arch_lock_shadow_stack_status(struct task_struct *t, unsigned long status);
 #define PP_MAGIC_MASK ~(PP_DMA_INDEX_MASK | 0x3UL)
 
 #ifdef CONFIG_PAGE_POOL
-static inline bool page_pool_page_is_pp(struct page *page)
+static inline bool page_pool_page_is_pp(const struct page *page)
 {
 	return (page->pp_magic & PP_MAGIC_MASK) == PP_SIGNATURE;
 }
 #else
-static inline bool page_pool_page_is_pp(struct page *page)
+static inline bool page_pool_page_is_pp(const struct page *page)
 {
 	return false;
 }
diff --git a/include/net/netmem.h b/include/net/netmem.h
index 097bc74d9555..f7dacc9e75fd 100644
--- a/include/net/netmem.h
+++ b/include/net/netmem.h
@@ -285,6 +285,23 @@ static inline struct net_iov *__netmem_clear_lsb(netmem_ref netmem)
 	return (struct net_iov *)((__force unsigned long)netmem & ~NET_IOV);
 }
 
+/* XXX: How to extract netmem_desc from page must be changed, once
+ * netmem_desc no longer overlays on page and will be allocated through
+ * slab.
+ */
+#define __pp_page_to_nmdesc(p)	(_Generic((p),				\
+	const struct page * :	(const struct netmem_desc *)(p),	\
+	struct page * :		(struct netmem_desc *)(p)))
+
+/* CAUTION: Check if the page is a pp page before calling this helper or
+ * know it's a pp page.
+ */
+#define pp_page_to_nmdesc(p)						\
+({									\
+	DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(p));		\
+	__pp_page_to_nmdesc(p);						\
+})
+
 /**
  * __netmem_get_pp - unsafely get pointer to the &page_pool backing @netmem
  * @netmem: netmem reference to get the pointer from
-- 
2.17.1

