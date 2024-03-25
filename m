Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3882B88B455
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 23:41:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D11A4608E3;
	Mon, 25 Mar 2024 22:41:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BTaMISq3vhE5; Mon, 25 Mar 2024 22:41:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51D8F608D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711406486;
	bh=USvPyK9u626bwXElXorrHCrhlTObO81hMaWuzNR3D6E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tw7qP38vOduEabSHdwURkCDFv5/cseIWkf6KhmUJdFii3oe3HXYItduZwnz1Pqqmp
	 t2m+IutiADuij3A9LNofeXNWTRi+JSGgb7PwZxq0gRSj/eYVjeEayL2gNM8fNrGrEn
	 1h7v+ABqnc968lSElFznpSrDDHXzKUjHgJGEZiVZ/wwt8XGDZPdhqdqBWnRGurE7m+
	 UmaD3JLLIFIrYSvNb5/5moefoVvBZJJwqSO+h9wiCz1F31E8G+pI48B0YkN+XpX1cX
	 orib0IUX1C7+nCNTAHds8ciOZhabOV1bckb+gPA3PoNNezJOqKo7l8rNRlLYA5vy+M
	 JWDcfixUR6qTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51D8F608D9;
	Mon, 25 Mar 2024 22:41:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3009F1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 186A4608C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNVoIA-K5aky for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 22:41:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D76E8605D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D76E8605D9
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D76E8605D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 22:41:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E364F6117E;
 Mon, 25 Mar 2024 22:41:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BD3BC433C7;
 Mon, 25 Mar 2024 22:41:20 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Date: Mon, 25 Mar 2024 15:41:14 -0700
Message-ID: <20240325224116.2585741-1-kuba@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711406480;
 bh=kOceSrr9AIihbgFQiIiS9J6QvyxUmRegSK73ntHaHZk=;
 h=From:To:Cc:Subject:Date:From;
 b=ntA9HHKop17/WUeN0pN0k9B9zw6ed/eahY29JpUI1f16n0zzqLUBqRGrZKduklxBy
 5lwVTQ0kofdy+2zhJWBYuzh81ghzt+pVvO7pP91KDHHKzEHtEQ2knaVhqtYley9xa7
 WW4vVbxyhk6XvmXSQovY0dpBd01frq//OEHI47FZ2fTji+C6syu6M1AyHKCSAa2E/z
 VRNdbdNxCQ/DECG+nXLavXGPb4ZZwmCdBj1Ic+tbD7doNn3JzudLQa5CUAJi2u2EBQ
 k0otvzXazdeRywhpzNFvMI6F6iiX+tRH8s3Ccu5S1o4JSGb8/jqQX15rVjwbYKDIpa
 oZg9iCWn/NjRg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ntA9HHKo
Subject: [Intel-wired-lan] [PATCH net-next] net: remove gfp_mask from
 napi_alloc_skb()
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
Cc: siyanteng@loongson.cn, netdev@vger.kernel.org, alexandre.torgue@foss.st.com,
 aleksander.lobakin@intel.com, edumazet@google.com, joabreu@synopsys.com,
 anthony.l.nguyen@intel.com, mcoquelin.stm32@gmail.com,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 pabeni@redhat.com, alexs@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

__napi_alloc_skb() is napi_alloc_skb() with the added flexibility
of choosing gfp_mask. This is a NAPI function, so GFP_ATOMIC is
implied. The only practical choice the caller has is whether to
set __GFP_NOWARN. But that's a false choice, too, allocation failures
in atomic context will happen, and printing warnings in logs,
effectively for a packet drop, is both too much and very likely
non-actionable.

This leads me to a conclusion that most uses of napi_alloc_skb()
are simply misguided, and should use __GFP_NOWARN in the first
place. We also have a "standard" way of reporting allocation
failures via the queue stat API (qstats::rx-alloc-fail).

The direct motivation for this patch is that one of the drivers
used at Meta calls napi_alloc_skb() (so prior to this patch without
__GFP_NOWARN), and the resulting OOM warning is the top networking
warning in our fleet.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
This is changing mostly the Intel drivers, if the choice of
flags is important there, please do let me know, why IDPF
uses bare GFP_ATOMIC, specifically.

CC: alexs@kernel.org
CC: siyanteng@loongson.cn
CC: jesse.brandeburg@intel.com
CC: anthony.l.nguyen@intel.com
CC: alexandre.torgue@foss.st.com
CC: joabreu@synopsys.com
CC: mcoquelin.stm32@gmail.com
CC: aleksander.lobakin@intel.com
CC: intel-wired-lan@lists.osuosl.org
---
 Documentation/mm/page_frags.rst                    | 2 +-
 Documentation/translations/zh_CN/mm/page_frags.rst | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c        | 4 +---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c         | 3 +--
 drivers/net/ethernet/intel/iavf/iavf_txrx.c        | 4 +---
 drivers/net/ethernet/intel/ice/ice_txrx.c          | 3 +--
 drivers/net/ethernet/intel/ice/ice_xsk.c           | 3 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c        | 5 ++---
 drivers/net/ethernet/intel/igc/igc_main.c          | 3 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c       | 3 +--
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 5 ++---
 include/linux/skbuff.h                             | 8 +-------
 net/core/skbuff.c                                  | 8 ++++----
 13 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/Documentation/mm/page_frags.rst b/Documentation/mm/page_frags.rst
index a81617e688a8..503ca6cdb804 100644
--- a/Documentation/mm/page_frags.rst
+++ b/Documentation/mm/page_frags.rst
@@ -25,7 +25,7 @@ to be disabled when executing the fragment allocation.
 The network stack uses two separate caches per CPU to handle fragment
 allocation.  The netdev_alloc_cache is used by callers making use of the
 netdev_alloc_frag and __netdev_alloc_skb calls.  The napi_alloc_cache is
-used by callers of the __napi_alloc_frag and __napi_alloc_skb calls.  The
+used by callers of the __napi_alloc_frag and napi_alloc_skb calls.  The
 main difference between these two calls is the context in which they may be
 called.  The "netdev" prefixed functions are usable in any context as these
 functions will disable interrupts, while the "napi" prefixed functions are
diff --git a/Documentation/translations/zh_CN/mm/page_frags.rst b/Documentation/translations/zh_CN/mm/page_frags.rst
index 20bd3fafdc8c..a5b22486a913 100644
--- a/Documentation/translations/zh_CN/mm/page_frags.rst
+++ b/Documentation/translations/zh_CN/mm/page_frags.rst
@@ -25,7 +25,7 @@ 个CPU的限制，或者每个CPU的限制，并在执行碎片分配时强制
 
 网络堆栈在每个CPU使用两个独立的缓存来处理碎片分配。netdev_alloc_cache被使用
 netdev_alloc_frag和__netdev_alloc_skb调用的调用者使用。napi_alloc_cache
-被调用__napi_alloc_frag和__napi_alloc_skb的调用者使用。这两个调用的主要区别是
+被调用__napi_alloc_frag和napi_alloc_skb的调用者使用。这两个调用的主要区别是
 它们可能被调用的环境。“netdev” 前缀的函数可以在任何上下文中使用，因为这些函数
 将禁用中断，而 ”napi“ 前缀的函数只可以在softirq上下文中使用。
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 0d7177083708..ac2fcc5ac595 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2144,9 +2144,7 @@ static struct sk_buff *i40e_construct_skb(struct i40e_ring *rx_ring,
 	 */
 
 	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
-			       I40E_RX_HDR_SIZE,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = napi_alloc_skb(&rx_ring->q_vector->napi, I40E_RX_HDR_SIZE);
 	if (unlikely(!skb))
 		return NULL;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 11500003af0d..a85b425794df 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -301,8 +301,7 @@ static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
 	net_prefetch(xdp->data_meta);
 
 	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, totalsize,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = napi_alloc_skb(&rx_ring->q_vector->napi, totalsize);
 	if (unlikely(!skb))
 		goto out;
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index b71484c87a84..32bb604a1382 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1334,9 +1334,7 @@ static struct sk_buff *iavf_construct_skb(struct iavf_ring *rx_ring,
 	net_prefetch(va);
 
 	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
-			       IAVF_RX_HDR_SIZE,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = napi_alloc_skb(&rx_ring->q_vector->napi, IAVF_RX_HDR_SIZE);
 	if (unlikely(!skb))
 		return NULL;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 97d41d6ebf1f..8bb743f78fcb 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1051,8 +1051,7 @@ ice_construct_skb(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
 	}
 
 	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, ICE_RX_HDR_SIZE,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = napi_alloc_skb(&rx_ring->q_vector->napi, ICE_RX_HDR_SIZE);
 	if (unlikely(!skb))
 		return NULL;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 1857220d27fe..aa81d1162b81 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -555,8 +555,7 @@ ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
 	}
 	net_prefetch(xdp->data_meta);
 
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, totalsize,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = napi_alloc_skb(&rx_ring->q_vector->napi, totalsize);
 	if (unlikely(!skb))
 		return NULL;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6dd7a66bb897..f940f650cd78 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3005,8 +3005,7 @@ struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
 	/* prefetch first cache line of first page */
 	net_prefetch(va);
 	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rxq->q_vector->napi, IDPF_RX_HDR_SIZE,
-			       GFP_ATOMIC);
+	skb = napi_alloc_skb(&rxq->q_vector->napi, IDPF_RX_HDR_SIZE);
 	if (unlikely(!skb)) {
 		idpf_rx_put_page(rx_buf);
 
@@ -3060,7 +3059,7 @@ static struct sk_buff *idpf_rx_hdr_construct_skb(struct idpf_queue *rxq,
 	struct sk_buff *skb;
 
 	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rxq->q_vector->napi, size, GFP_ATOMIC);
+	skb = napi_alloc_skb(&rxq->q_vector->napi, size);
 	if (unlikely(!skb))
 		return NULL;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 2e1cfbd82f4f..6ba4b8d1f1b1 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2716,8 +2716,7 @@ static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
 
 	net_prefetch(xdp->data_meta);
 
-	skb = __napi_alloc_skb(&ring->q_vector->napi, totalsize,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = napi_alloc_skb(&ring->q_vector->napi, totalsize);
 	if (unlikely(!skb))
 		return NULL;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index d34d715c59eb..397cb773fabb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -220,8 +220,7 @@ static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
 	net_prefetch(xdp->data_meta);
 
 	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, totalsize,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = napi_alloc_skb(&rx_ring->q_vector->napi, totalsize);
 	if (unlikely(!skb))
 		return NULL;
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 24cd80490d19..bcdde68a099a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -5109,9 +5109,8 @@ static struct sk_buff *stmmac_construct_skb_zc(struct stmmac_channel *ch,
 	unsigned int datasize = xdp->data_end - xdp->data;
 	struct sk_buff *skb;
 
-	skb = __napi_alloc_skb(&ch->rxtx_napi,
-			       xdp->data_end - xdp->data_hard_start,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = napi_alloc_skb(&ch->rxtx_napi,
+			     xdp->data_end - xdp->data_hard_start);
 	if (unlikely(!skb))
 		return NULL;
 
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 0c7c67b3a87b..dadd3f55d549 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -3355,13 +3355,7 @@ static inline void *napi_alloc_frag_align(unsigned int fragsz,
 	return __napi_alloc_frag_align(fragsz, -align);
 }
 
-struct sk_buff *__napi_alloc_skb(struct napi_struct *napi,
-				 unsigned int length, gfp_t gfp_mask);
-static inline struct sk_buff *napi_alloc_skb(struct napi_struct *napi,
-					     unsigned int length)
-{
-	return __napi_alloc_skb(napi, length, GFP_ATOMIC);
-}
+struct sk_buff *napi_alloc_skb(struct napi_struct *napi, unsigned int length);
 void napi_consume_skb(struct sk_buff *skb, int budget);
 
 void napi_skb_free_stolen_head(struct sk_buff *skb);
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index b99127712e67..e0e172638c0a 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -775,7 +775,7 @@ struct sk_buff *__netdev_alloc_skb(struct net_device *dev, unsigned int len,
 EXPORT_SYMBOL(__netdev_alloc_skb);
 
 /**
- *	__napi_alloc_skb - allocate skbuff for rx in a specific NAPI instance
+ *	napi_alloc_skb - allocate skbuff for rx in a specific NAPI instance
  *	@napi: napi instance this buffer was allocated for
  *	@len: length to allocate
  *	@gfp_mask: get_free_pages mask, passed to alloc_skb and alloc_pages
@@ -787,9 +787,9 @@ EXPORT_SYMBOL(__netdev_alloc_skb);
  *
  *	%NULL is returned if there is no free memory.
  */
-struct sk_buff *__napi_alloc_skb(struct napi_struct *napi, unsigned int len,
-				 gfp_t gfp_mask)
+struct sk_buff *napi_alloc_skb(struct napi_struct *napi, unsigned int len)
 {
+	gfp_t gfp_mask = GFP_ATOMIC | __GFP_NOWARN;
 	struct napi_alloc_cache *nc;
 	struct sk_buff *skb;
 	bool pfmemalloc;
@@ -860,7 +860,7 @@ struct sk_buff *__napi_alloc_skb(struct napi_struct *napi, unsigned int len,
 skb_fail:
 	return skb;
 }
-EXPORT_SYMBOL(__napi_alloc_skb);
+EXPORT_SYMBOL(napi_alloc_skb);
 
 void skb_add_rx_frag_netmem(struct sk_buff *skb, int i, netmem_ref netmem,
 			    int off, int size, unsigned int truesize)
-- 
2.44.0

